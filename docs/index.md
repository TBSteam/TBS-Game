# TBS Game Documentation

# Pins

- [Repository](https://github.com/TBSteam/TBS-Game)

- Message @DVDTSB#0838 or @Rachel#3404 your Github username for access

- Use the Outline

- Disable print layout

- Popular strategy battle games
  
   - Disgaea
  
   - Advance Wars
  
   - Fire Emblem
  
   - Final Fantasy Tactics
  
   - Bravely Default
  
   - XCOM: Enemy Unknown

---

# Concepts

## Controls

Make the entire game playable with keyboard/mouse, touchscreen, or standard axial joypads.

Inputs:

- Highlight unit

-  Mouse hover, (cursor move / touchscreen bg-drag)

- Select currently highlighted unit (cursor click / touchscreen obj-tap)

- Selection “undo” (also cancels action)

- Selection “redo/repeat” (also replays actions)

- Focus camera on selected unit (also centers on mass selection)

---

## Battle-Stage “Appeal” (Attack Scoring)

Maybe "battles" are short ad-lib plays and opponents perform various skits in competition for crowd favor.  As more "combatants" join the fray, the stage gets filled with more performers.  On an actor's turn, they take the "foreground" of combat to take an action, and the circumstances determine how much audience favor they earn.  Then different actions can bring about various circumstances which define a "class" meta.  That's an idea to escape the stereotype of TBS combat while retaining the strategy.  An actor moves on top of another actor on the map to initiate this "combat" that continues every turn until a clear winner.

---

## Platform Compatibility in Godot

For now, just export to the most convenient built in platforms for team-wide playtesting.

If the game takes off and further promotion / marketing becomes viable, then seek a publisher.

Finding the right publisher can help immensely, mainly in the PR / Legal fields although some can even localize.

With enough finances, there are third party solutions to export godot projects to Switch, Xbox, and Playstation.

[Global Ratings](https://www.globalratings.com/for-developers.aspx) To get the game rated once it’s ready.

---

## Freeform Movement

> Maybe units should be able to move freely instead of being bound to a grid, this removes the issue of having to round down movement, line of sight and the like. This will also make complex attack patterns and formations easier and cooler to implement, giving it a more wargame-like feel.

*\~ Cyberman*

---

## Vehicles & Terrain

Certain tiles are not traversable by all battle units.  Units have various methods of traversal, and some can handle conditions others cannot.  Battlefield map tiles generate a collision tile with preset type tags 

---

## UI

Select a unit to display a unit details panel which will appear inside the selection window (potentially activating & unhiding it).

### Units

Massive units are multiple smaller units comprising a larger entity with shared health in battle.  This is specifically used for boss fights with multiple target points.

- Beings (dead or alive) 

- Obstacles (for moving and breaking)

- Containers

- Inventory items

- Levers

- Signs

- Gateways (changing layers or maps)

- Blank Units (for non-selectibles)

### Selection window

- Statically anchored top-left

- Downward overfilling (vertical scrollbar)

- Dim background, hidden when empty

- Clear selection button docked at the top

### Unit details Panel

Fields which do not apply to the unit are blank and omitted. Unknown fields are marked as such with question marks.

Panel fields outline

- Banner image

- Full name

- Class

- Resources i.e. HP/MP

- Effects

- Inventory

- Actions

### Default Actions

The default action is taken when the player right clicks a unit (joy 4 / obj-2tap)

### Actions

The action field is unique in that it will only display actions which not only apply to the current unit, but can be performed by a member in the party.  Actions which are not (yet) unlocked on a character do not appear.

- Attack

- Combat Abilities

### Parties

Playable characters have a button built into their portrait to add that character to the party.

Parties can be 1 to 10 characters.

A party engine optimizes actions based on the action itself, the target selection, and the party status.

---

## Magic

### Spell Types

Mage classes cast spells which generally target one or more units from a range with specific unique effects.  Some common damage spells can be cast using different elements i.e. fire and ice.  Spells naturally increase in strength along with the caster via Spell Potency, which ties to the caster’s Magician Class Tier.  Casting spells of the character’s class specialization type (spells can have multiple types) rewards Magic Experience based on the spell and outcome.

### Mage Class Tiers

Apprentices gain level based Mana regeneration

Acolytes gain spell potency tier 2 (think fira / blizzara)

Magicians gain {}; {Something else cool}

Archmages gain spell potency tier 3

---

## Abilities

### Tanks

- Taunt

- Target guarding

- Self buffed damage absorption

### Mages

- Occasionally succeed instead of failing or missing a spell cast

- Cast an additional spell for free of equal or lesser mana cost each X turns.  X decreases from 5 at lvl 50+ to 1 at level 100

- Maintain spellcasting concentration unless unconscious

## Overworld -> Field -> Dungeon

The overworld map is a semi-static artwork which doubles as a quest/objective map.  It may be opened at any time, but using it to fast travel is limited to field maps outside of combat.

Field maps and dungeon maps are where the player spends the majority of the game.  Dungeons have built in mechanics preventing certain actions and keeping track of objectives.  Fields are dynamic

## Session structure

Each chapter of the story correlates with a mission in the game.

Chapters generally start in a town where the plot is presented and information is presented to the player.

The player then takes this information to the world map and investigates / searches for a dungeon.

The overworld map 

Missions can be replayed to unlock other branches of the story, find missed secrets, or grind exp

Certain sequences are omitted from mission replays and others can be replayed outside of missions.

---

## Settlements

Each act of the story has a settlement associated with it.

The settlement is a safe zone with shops and secrets

Settlements can be upgraded by donating to the growth fund

---

## Loot Collection

Optionally sell or donate gear (to current act’s settlement growth fund) quickly and immediately at the end of missions

---

## Namable main characters

---

## Weapon Progression

Level up different weapon types by using that weapon.  Weapon level ups may grant stat buffs and active/passive abilities

---

## Armor

Bonus Health = Armor = Armor Durability.  Bonus health in the form of equipped armor durability. (Armor durability is reduced when it successfully blocks a portion of incoming damage.  The amount of armor that is reduced is equal to the damage it blocks and is displayed similarly to health.)  Losses may be restored after combat or through consumables.

---

## Omnivore

Two groups of four characters (Omelet and Salad ingredient themed respectively) battle over dietary dominance.  Nature has grown in such a way that gives many forms of non-human wildlife intelligence and character at our level.  Tribes of species have allied under the animal kingdom to fight back against the… aliens?  Regardless of the player’s decisions, the aliens will come to a near complete extinction before a change of heart opportunity arises, allowing the aliens to live on in harmony with the [Earth of another era] species.  Team Omelet: Bacon (pig-man fighter), Egg (bird-man dps mage), Ham (pig-man swindler), Cheese (cow-man utility mage).  Team Salad mirrors team omelet, its members:  Lettuce, Onion, Tomato, and Carrot.

~Rachel

---

# ALPHA

## Battle Manager

## Map Controller

- Wave Function Collapse Layers

- Cosmetic Scenery

- Battlefield Environment

- Collision Tiles

- Enemy Squads

- Spawn Zones

- Debug Fallback Map

- Map Matrix Database

## Narrative Controller

- Turn Manager

- Shifts control away from the player and automates NPC actions as scenes.

- Handles event flags, conditions, parameters, etc

- Dialogue Manager

- Interacts with Battle HUD to generate Dialogue windows

- Dialogue History

- Narrative Database

- Theme Manager

- Environment Tileset

- Character Cast

## Systems Controller

- State handler

- Provides callbacks for buff / debuff status effects

- Sends state information to TBA Battle Actor objects

- Sends damage information to Battle HUD

- Battle HUD

- Graphics

- Portraits

- Windows

- Texts

- Supplemental Arts

- Talking Stick

- Handles Audio Effects to synchronize with the graphics and fade on dialogue skips

- Combat Parser

- Cooperates with the state handler to update UI meters and display floating numbers and screen effects during attack animations

- Dialogue Parser

- Handles Dialogue requests from Narrative Controller

- Collision Colonel

- Provides methods used for targeting, line of sight, and movement

- A* Pathfinding

- Provides tiled pathing methods and solutions.

## Battle Actor

## Script Nodes

- Status Manager

- Receives and reacts to status information sent from the Battle Manager

- Max Health

- Remaining health

- Move Speed

- Remaining speed

- Attack Range

- Default 1 tile

- Attack Damage

- Default 1

- Inventory Controller

- Equipment

- Current Inventory

- Graphic Nodes

- Animation Handler

- Sprite

- MicroHUD

- UI Meters

- Details Panel

## Scene Layout

- Title UI Scene

- Level Generator Seed Entry

- Confirm Button

- Fade out and clear screen

- Display a loading screen with progress bar

- Load the Battle Manager

- Run Generation using given Seed (on failure load the fallback)

- Update progress bar graphic, cycle loading screen tips

- Instantiate NPC Battle Actors

- Instantiate Player Battle Actor

- Load UI

- Fade In

- Cursor Interaction Handlers

- Key & Button            UI / Grid Cursor

- Mouse & Joystick        Free Cursor

- Combat Controller

- Actor Status Handler

- Combat State Manager

- Action responses

- Screen UI

- Pause Screen

- Game Menu

---

# BETA

## Priorities

- Title Screen

- Bootup

- Wait for completion before continue

- As they load in, display a progress bar and/or spinner

- Backdrop

- Box Art

- Banner Logo

- Styled Title

- Menu

- New Game

- Load Game

- Opens File Selector gadget

- Disabled if no saves are detected on bootup

- Settings

- Credits

- Quit

- Character

- Dialogue

- Options

---

# Systems

## [Classes](https://docs.google.com/spreadsheets/d/1P4gEy5Xb9YvJCaCxu7SaTrSerjtiuBwJf7HjGO6uQWs/edit#gid=617169027)

## Stats

Movement Speed

### Progression

Class Level

Class Experience

Weapon Level

Weapon Experience

Spell Potency

### Damage

Attack Speed

Concentration (Spellcasting cooldown reduction)

Physical Attack

Physical Defense

Critical Chance

Critical Damage

Magic Attack

Magic Defense

[ Elemental ] Attack

[ Elemental ] Defense

### Resources

Max Health

Health Regen

Max Stamina

Stamina Regen

Max Mana

Mana Regen

Max Energy

Energy Regen

Max Rage

Rage Multiplier

Max Combo

Combo Multiplier

Armor

---

## Battle Actions

### Non-combat

Move

Inspect

Use item

Take item

Wait

Pass

### Weapon Attacks

- Types

- Bludgeoning

- Piercing

- Slashing

- Patterns

- Standard

- Feigned

- Multistrike

- Plunging

### Techniques (Class Skills)

### Specials (Character Skills)

### Abilities (Progression Skills)

### Combos (Group Skills)

### Spells (Magic Skills)

### Skills (Non-magic)

---

## Inventory

All items have a weight, value, and rarity

### Equipment

#### Weapons

##### Main hand

##### Off hand

#### Armors

##### (Armor Slot)

### Consumables

#### Regenerative

#### Boosts

Grant permanent effects

#### Ammunition

#### Explosives

---

## Effect Elements

- Fire

- Ice

- Water

- Electric

- Quake

- Good

- Evil

- Cosmic

- Undead

- Poison

## Status Effects

Ranging from spell buffs to weapon poisons.  Effects can have 1 or more types which are potentially referenced by other effects.  For example, a splash spell might douse flames by eliminating effects with the fire type.

## Dialogue

## Other

### Save Files

### Terrain Conditions

Slippery, muddy, dry, foggy, flaming, etc.

### Squad Formations

Single File, Shield Wall, Square, Diamond

---

# Assets

## Graphics

- Tiles & Characters

   - Miniworld Shade Assets

- UI

- Theme

- Backdrops

- Borders

- Icons

- Gadget Parts

- Visual Effects

- UI Theme

- Shaders

- Action Animations

---

## Audio

- UI            FX

- Action         FX

- Ambiance        FX

- Foreground        Loops

- Background        Loops

- Ambience        Loops

- Event            Melodies

- Character        Melodies

- Misc            FX & Melodies

---

Scene Structure

# UI

- Title Screen

- HUD

- Gameplay systems (combat manager

- Consumables

- Equipment

- Status

- File Selection

- Options (all checkboxes unless stated otherwise)

- Gameplay

- Text rollout speed slider

- Autoplay dialogues

- Wait for voice line

- Dialogue delay slider

- Difficulty presets dropdown

- Custom difficulty settings

- Video

- Windowed Mode

- Borderless

- Resolution

- 21:9 borders

- Brightness

- Contrast

- Accessibility filter presets dropdown

- Custom filter settings

- Audio

- Master slider

- Battle Music slider

- Non-battle Music slider

- Vocal Track slider

- SFX slider

- Controls

- Input Device list

- Detected input devices display as large black outlines here for radio selection

- Dialogue box

- Dialogue history

- Campaign map

- Local map

- Subtitle / Closed Captions Zone

---

# Scripts

- Combat Controller

- Camera Director

- Level Generator

- Dialogue Controller

- Game Save File Manager

- Game UI Manager

- Game Options Configuration

---

# Controls

- General

- Navigate up/down/left/right

- Enter / Confirm action

- Back / Cancel action

- Display action menu

- Display more information

- Dialogue

- Continue

- Display line

- Speed up

- Skip

- Display History

---

Apps & Software

# Core Tools

## Game Engine

Godot

- [Most recent stable windows build](https://godotengine.org/download/windows)

## File Sharing

Github

- [Repository](https://github.com/Cyberman-42/Miniworld-Strategy-RPG)

- [Google Drive](https://accounts.google.com/AccountChooser?service=writely)

- [Dropbox](https://www.dropbox.com/)

- Discord Attachments

## Documentation

Google Docs

Github Markdown

Discord Server ([Invite Link](https://discord.gg/WhSMX8dx))

Repository Markdown & Discussions

Dropbox [Paper](https://www.dropbox.com/paper/start)

[Microsoft Office](https://www.office.com/)

[Campfire](https://www.campfirewriting.com/) (world building)

---

# Graphic Tools

[Ezgif](https://ezgif.com/)

[Imgur](https://imgur.com/) (hosting)

## Illustration

[Adobe Illustrator](https://www.adobe.com/products/illustrator/free-trial-download.html)

[Gimp](https://www.gimp.org/)

[Aseprite](https://www.aseprite.org/)

[Paint.net](https://www.getpaint.net/)

## Modeling

[Blender](https://www.blender.org/)

[Maya](https://www.autodesk.com/products/maya/overview)

[Sketchfab](https://sketchfab.com/)

---

# Audio Tools

[Audacity](https://www.audacityteam.org/) (recording & editing)

[Videolan Media Player](https://www.videolan.org/)

## DAWs

[Mixcraft](https://acoustica.com/mixcraft)

[LMMS](http://itsfoss.com/lmms)

[Bfxr](https://www.bfxr.net/) (micro DAW)

---

# Other Tools

[7zip](https://www.7-zip.org/) (compression)

[Winrar](https://www.win-rar.com/) (compression)

## IDEs

[Visual Studio](https://visualstudio.microsoft.com/)

[VSCode](https://code.visualstudio.com/)

[Eclipse](https://www.eclipse.org/)

[Notepad++](https://notepad-plus-plus.org/downloads/)

---

# To-Do

- Create google form for new team members

- clean up this document.

- merge classes and narrative work into this document

- organize all documentation

# Updates

## July 21st
- Migrated to team account repository and google drive.

## July 20th

- Discord newbie permission poll started

- Further initial systems brainstorming

## July 19th

- Discord channels trimmed, lurkers kicked

- Undisclosed narrative work

## July 18th

- Discord roles updated

- Godot TBS project research & initialization

- Class brainstorming migrated off of documentation for now

## July 17th

- Discord Server Created

- Concepts

- Freeform Movement

- Restructuring to clearly split brainstorming and documentation

- Brainstorming

- Concepts moved from the end of the document to the top

- Systems

- Narrative

- Apps & Software

- Tool Categories

## July 16th

- Documentation (this) Created with bare bones initial structure

- Omnivore

- Classes

- Magic System

- Attack Scoring

- General

- Scene Structuring

- Assets

- Repository Created

Thanks for reading  
~Rachel 
