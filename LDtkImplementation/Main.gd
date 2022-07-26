extends Control

#Must be multiple of 16, this is the tile size that is being drawn.
const TILE_SIZE = 32

onready var FilePrompt = $FileDialog

func _ready():
	var path = yield(ask_for_file(), "completed")
	
	var res = ResourceLoader.load(path)
	
	for i in res.levels:
		for u in i.layerInstances.size():
			create_map(FilePrompt.current_dir + "/", i.layerInstances[u], u)

func create_map(path: String, level: Dictionary, layer: int = 0):
	var img_path = level.__tilesetRelPath
	var tiles = level.gridTiles
	
	var img = Image.new()
	img.load("%s%s" % [path, img_path])
	
	for i in tiles:
		var pos = TILE_SIZE / 16 * Vector2(i.px[0], i.px[1])
		var texture = VisualServer.texture_create_from_image(img.get_rect(Rect2(i.src[0], i.src[1], 16, 16)), 1)
		
		var item = VisualServer.canvas_item_create()
		VisualServer.canvas_item_set_parent(item, get_canvas_item())
		VisualServer.canvas_item_add_polygon(item, [pos, pos + Vector2(TILE_SIZE, 0), pos + TILE_SIZE * Vector2.ONE, pos + Vector2(0, TILE_SIZE)], [Color(1, 1, 1)], [Vector2(0, 0), Vector2(1, 0), Vector2(1, 1), Vector2(0, 1)], texture)
		VisualServer.canvas_item_set_z_index(item, -10 * layer)

func ask_for_file():
	FilePrompt.popup_centered(Vector2(750, 400))
	
	yield(FilePrompt, "popup_hide")
	
	if !FilePrompt.current_file:
		return ask_for_file()
	
	return FilePrompt.current_path
