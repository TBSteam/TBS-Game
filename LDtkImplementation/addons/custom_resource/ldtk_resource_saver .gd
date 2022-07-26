tool
extends ResourceFormatSaver
class_name LDTKResourceSaver

const _JSONResource = preload("res://addons/custom_resource/ldtk_resource.gd")

func get_recognized_extensions(resource: Resource) -> PoolStringArray:
	return PoolStringArray(["ldtk"])


func recognize(resource: Resource) -> bool:
	# Cast instead of using "is" keyword in case is a subclass
	resource = resource as _JSONResource
	
	if resource:
		return true
	
	return false


func save(path: String, resource: Resource, flags: int) -> int:
	var err:int
	var file:File = File.new()
	err = file.open(path, File.WRITE)
	
	if err != OK:
		printerr('Can\'t write file: "%s"! code: %d.' % [path, err])
		return err
	
	file.store_line(JSON.print(resource.get("_data")))
	file.close()
	return OK
