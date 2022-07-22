<!-- omit in toc -->
# TBS Game Documentation

<!-- omit in toc -->
## Table of Contents

- [1. Overview](#1-overview)
  - [1.1. Pins](#11-pins)
  - [1.2. To-Do](#12-to-do)
- [2. Brainstorming](#2-brainstorming)
  - [2.2. Battle-Stage “Appeal” (Attack Scoring)](#22-battle-stage-appeal-attack-scoring)
  - [2.3. Platform Compatibility in Godot](#23-platform-compatibility-in-godot)
  - [2.4. Freeform Movement](#24-freeform-movement)
  - [2.5. Vehicles & Terrain](#25-vehicles--terrain)
  - [2.6. Magic System](#26-magic-system)
    - [2.6.1. Spell Types](#261-spell-types)
    - [2.6.2. Mage Class Tiers](#262-mage-class-tiers)
  - [2.7. Class Abilities](#27-class-abilities)
    - [2.7.1. Tanks](#271-tanks)
    - [2.7.2. Mages](#272-mages)
  - [2.8. Map Design](#28-map-design)
  - [2.9. Session structure](#29-session-structure)
  - [2.10. Settlements](#210-settlements)
  - [2.11. Loot Collection](#211-loot-collection)
  - [2.12. Namable main characters](#212-namable-main-characters)
  - [2.13. Weapon Progression](#213-weapon-progression)
  - [2.14. Armor](#214-armor)
  - [2.15. "Omnivore" Plot](#215-omnivore-plot)
- [3. Project Model](#3-project-model)
  - [3.1. Units](#31-units)
  - [3.2. Selection window](#32-selection-window)
  - [3.3. Unit details Panel](#33-unit-details-panel)
  - [3.4. Default Actions](#34-default-actions)
  - [3.5. Actions](#35-actions)
  - [3.6. Parties](#36-parties)
- [4. Alpha](#4-alpha)
  - [4.1. Battle Manager](#41-battle-manager)
  - [4.2. Map Controller](#42-map-controller)
  - [4.3. Narrative Controller](#43-narrative-controller)
  - [4.4. Systems Controller](#44-systems-controller)
  - [4.5. Battle Actor](#45-battle-actor)
  - [4.6. Script Nodes](#46-script-nodes)
  - [4.7. Scene Layout](#47-scene-layout)
- [5. Systems](#5-systems)
  - [5.1. Classes](#51-classes)
  - [5.2. Stats](#52-stats)
  - [5.3. Battle Actions](#53-battle-actions)
  - [5.4. Inventory](#54-inventory)
  - [5.5. Effect Elements](#55-effect-elements)
  - [5.6. Status Effects](#56-status-effects)
  - [5.7. Dialogue](#57-dialogue)
  - [5.8. Save Files](#58-save-files)
  - [5.9. Terrain Conditions](#59-terrain-conditions)
  - [5.10. Squad Formations](#510-squad-formations)
- [6. Assets](#6-assets)
  - [6.1. Graphics](#61-graphics)
  - [6.2. Audio](#62-audio)
- [7. UI](#7-ui)
- [8. Scripts](#8-scripts)
- [9. Controls](#9-controls)
  - [9.1. Apps & Software](#91-apps--software)
    - [9.1.1. Engine](#911-engine)
    - [9.1.2. File Sharing](#912-file-sharing)
    - [9.1.3. Documentation](#913-documentation)
    - [9.1.4. Graphics Tools](#914-graphics-tools)
    - [9.1.5. Audio Tools](#915-audio-tools)
    - [Other Tools](#other-tools)
  - [9.2. Updates](#92-updates)
- [10. Contact](#10-contact)

# 1. Overview

## 1.1. Pins

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

## 1.2. To-Do

- [ ] Team application Google Form
- [ ] Documentation editing

---

# 2. Brainstorming

## 2.2. Battle-Stage “Appeal” (Attack Scoring)

Maybe "battles" are short ad-lib plays and opponents perform various skits in competition for crowd favor.  As more "combatants" join the fray, the stage gets filled with more performers.  On an actor's turn, they take the "foreground" of combat to take an action, and the circumstances determine how much audience favor they earn.  Then different actions can bring about various circumstances which define a "class" meta.  That's an idea to escape the stereotype of TBS combat while retaining the strategy.  An actor moves on top of another actor on the map to initiate this "combat" that continues every turn until a clear winner.

---

## 2.3. Platform Compatibility in Godot

For now, just export to the most convenient built in platforms for team-wide playtesting.  If the game takes off and further promotion / marketing becomes viable, then seek a publisher.  Finding the right publisher can help immensely, mainly in the PR / Legal fields although some can even localize.  With enough finances, there are third party solutions to export godot projects to Switch, Xbox, and Playstation.  [Global Ratings](https://www.globalratings.com/for-developers.aspx) To get the game rated once it’s ready.

---

## 2.4. Freeform Movement

> Maybe units should be able to move freely instead of being bound to a grid, this removes the issue of having to round down movement, line of sight and the like. This will also make complex attack patterns and formations easier and cooler to implement, giving it a more wargame-like feel.

*\~ Cyberman*

---

## 2.5. Vehicles & Terrain

Certain tiles are not traversable by all battle units.  Units have various methods of traversal, and some can handle conditions others cannot.  Battlefield map tiles generate a collision tile with preset type tags.

---

## 2.6. Magic System

### 2.6.1. Spell Types

Mage classes cast spells which generally target one or more units from a range with specific unique effects.  Some common damage spells can be cast using different elements i.e. fire and ice.  Spells naturally increase in strength along with the caster via Spell Potency, which ties to the caster’s Magician Class Tier.  Casting spells of the character’s class specialization type (spells can have multiple types) rewards Magic Experience based on the spell and outcome.

### 2.6.2. Mage Class Tiers

- Apprentices gain level based Mana regeneration
- Acolytes gain spell potency tier 2 (think fira / blizzara)
- Magicians gain {}; {Something else cool}
- Archmages gain spell potency tier 3

---

## 2.7. Class Abilities

### 2.7.1. Tanks

- Taunt
- Target guarding
- Self buffed damage absorption

### 2.7.2. Mages

- Occasionally succeed instead of failing or missing a spell cast
- Cast an additional spell for free of equal or lesser mana cost each X turns.  X decreases from 5 at lvl 50+ to 1 at level 100
- Maintain spellcasting concentration unless unconscious

---

## 2.8. Map Design

Overworld -> Field -> Dungeon

The overworld map is a semi-static artwork which doubles as a quest/objective map.  It may be opened at any time, but using it to fast travel is limited to field maps outside of combat.  Field maps and dungeon maps are where the player spends the majority of the game.  Dungeons have built in mechanics preventing certain actions and keeping track of objectives.  Fields are dynamic, their base form is mostly static but the objects on the field depend on which mission is active.

---

## 2.9. Session structure

Each chapter of the story correlates with a mission in the game.  Chapters generally start in a town where the plot is presented and information is presented to the player.  The player then takes this information to the world map and investigates / searches for a dungeon.  The overworld starts out empty and the player collects region maps.  Some small areas have maps of their own which need finding.  Missions can be replayed to unlock other branches of the story, find missed secrets, or grind exp  Certain sequences are omitted from mission replays and others can be replayed outside of missions.

---

## 2.10. Settlements

Each act of the story has a settlement associated with it.  The settlement is a safe zone with shops and secrets.  Settlements can be upgraded by donating to its growth fund.

---

## 2.11. Loot Collection

Optionally sell or donate gear (to current act’s settlement growth fund) quickly and immediately at the end of missions.

---

## 2.12. Namable main characters

Give the cast unique names on each save slot

---

## 2.13. Weapon Progression

Level up different weapon types by using that weapon.  Weapon level ups may grant stat buffs and active/passive abilities

---

## 2.14. Armor

Bonus Health = Armor = Armor Durability.  Bonus health in the form of equipped armor durability. (Armor durability is reduced when it successfully blocks a portion of incoming damage.  The amount of armor that is reduced is equal to the damage it blocks and is displayed similarly to health.)  Losses may be restored after combat or through consumables.

---

## 2.15. "Omnivore" Plot

Two groups of four characters (Omelet and Salad ingredient themed respectively) battle over dietary dominance.  Nature has grown in such a way that gives many forms of non-human wildlife intelligence and character at our level.  Tribes of species have allied under the animal kingdom to fight back against the… aliens?  Regardless of the player’s decisions, the aliens will come to a near complete extinction before a change of heart opportunity arises, allowing the aliens to live on in harmony with the [Earth of another era] species.  Team Omelet: Bacon (pig-man fighter), Egg (bird-man dps mage), Ham (pig-man swindler), Cheese (cow-man utility mage).  Team Salad mirrors team omelet, its members:  Lettuce, Onion, Tomato, and Carrot.

---

# 3. Project Model

Select a unit to display a unit details panel which will appear inside the selection window (potentially activating & unhiding it).

## 3.1. Units

Massive units are multiple smaller units comprising a larger entity with shared health in battle.  This is specifically used for boss fights with multiple target points.

- Beings (dead or alive)
- Obstacles (for moving and breaking)
- Containers
- Inventory items
- Levers
- Signs
- Gateways (changing layers or maps)
- Blank Units (for non-selectibles)

## 3.2. Selection window

- Statically anchored top-left
- Downward overfilling (vertical scrollbar)
- Dim background, hidden when empty
- Clear selection button docked at the top

## 3.3. Unit details Panel

Fields which do not apply to the unit are blank and omitted. Unknown fields are marked as such with question marks.

Panel fields outline

- Banner image
- Full name
- Class
- Resources i.e. HP/MP
- Effects
- Inventory
- Actions

## 3.4. Default Actions

The default action is taken when the player right clicks a unit (joy 4 / obj-2tap).

## 3.5. Actions

The action field is unique in that it will only display actions which not only apply to the current unit, but can be performed by a member in the party.  Actions which are not (yet) unlocked on a character do not appear.

- Attack
- Combat Abilities

## 3.6. Parties

- Playable characters have a button built into their portrait to add that character to the party.
- Parties can be 1 to 10 characters.
- A party engine optimizes actions based on the action itself, the target selection, and the party status.

---

# 4. Alpha

## 4.1. Battle Manager

## 4.2. Map Controller

- Wave Function Collapse Layers
- Cosmetic Scenery
- Battlefield Environment
- Collision Tiles
- Enemy Squads
- Spawn Zones
- Debug Fallback Map
- Map Matrix Database

## 4.3. Narrative Controller

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

## 4.4. Systems Controller

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

## 4.5. Battle Actor

## 4.6. Script Nodes

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

## 4.7. Scene Layout

- Title Screen
  - HUD
    - File Selection
      - New File
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
- Options (all checkboxes unless stated otherwise)
  - Gameplay
    - Dialogue delay slider
    - Difficulty presets dropdown
      - Custom difficulty settings
  - Dialogue
    - Text rollout speed slider
    - Autoplay dialogues
    - Wait for voice line
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

---

# 5. Systems

## 5.1. [Classes](https://docs.google.com/spreadsheets/d/1P4gEy5Xb9YvJCaCxu7SaTrSerjtiuBwJf7HjGO6uQWs/edit#gid=617169027)

---

## 5.2. Stats

- General
  - Movement Speed
- Progression
  - Class Level
  - Class Experience
  - Weapon Level
  - Weapon Experience
  - Spell Potency
- Damage
  - Attack Speed
  - Concentration (Spellcasting cooldown reduction)
  - Physical Attack
  - Physical Defense
  - Critical Chance
  - Critical Damage
  - Magic Attack
  - Magic Defense
  - [ Elemental ] Attack
  - [ Elemental ] Defense
- Resources
  - Max Health
  - Health Regen
  - Max Stamina
  - Stamina Regen
  - Max Mana
  - Mana Regen
  - Max Energy
  - Energy Regen
  - Max Rage
  - Rage Multiplier
  - Max Combo
  - Combo Multiplier
  - Armor

---

## 5.3. Battle Actions

- General
  - Move
  - Open
  - Unlock
  - Inspect
  - Use item
  - Take item
  - Activate unit
  - Move unit
  - Wait
  - Pass
- Weapon Attacks
  - Types
  - Bludgeoning
  - Piercing
  - Slashing
  - Patterns
  - Standard
  - Feigned
  - Multistrike
  - Plunging
- Combat Abilities
  - Techniques (Class Skills)
  - Specials (Character Skills)
  - Abilities (Progression Skills)
  - Combos (Group Skills)
  - Spells (Magic Skills)
  - Skills (Non-magic)

---

## 5.4. Inventory

All items have a weight, value, and rarity

- Equipment
  - Weapons
    - Main hand
    - Off hand
  - Armors
    - (Armor Slots)
  - Accessories
    - (Accessory Slots)
- Consumables
    - Regenerative
    - Boosts
      - Permanent stat bonus
    - Ammunition
    - Explosives

---

## 5.5. Effect Elements

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

## 5.6. Status Effects

Ranging from spell buffs to weapon poisons.  Effects can have 1 or more types which are potentially referenced by other effects.  For example, a splash spell might douse flames by eliminating effects with the fire type.

## 5.7. Dialogue

## 5.8. Save Files

## 5.9. Terrain Conditions

- Slippery
- Muddy
- Dry
- Foggy
- Flaming
- Etc.

## 5.10. Squad Formations

- Single File
- Shield Wall
- Square
- Diamond

---

# 6. Assets

## 6.1. Graphics

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

## 6.2. Audio

- UI
- Action
- Ambiance
- Foreground
- Background
- Ambience
- Event
- Character
- Misc

---

# 7. UI

- Dialogue box
- Dialogue history
- Campaign map
- Local map
- Subtitle / Closed Captions Zone

---

# 8. Scripts

- Combat Controller
- Camera Director
- Level Generator
- Dialogue Controller
- Game Save File Manager
- Game UI Manager
- Game Options Configuration

---

# 9. Controls

Make the entire game playable with keyboard/mouse, touchscreen, or standard axial joypads.

Inputs:

- Battlefield
  - Highlight unit
  - Mouse hover, (cursor move / touchscreen bg-drag)
  - Select currently highlighted unit (cursor click / touchscreen obj-tap)
  - Selection “undo” (also cancels action)
  - Selection “redo/repeat” (also replays actions)
  - Focus camera on selected unit (also centers on mass selection)
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

## 9.1. Apps & Software

### 9.1.1. Engine

Godot

*[download](https://godotengine.org/download/)*

### 9.1.2. File Sharing

Github

- [Repository](https://github.com/Cyberman-42/Miniworld-Strategy-RPG)
- [Google Drive](https://accounts.google.com/AccountChooser?service=writely)
- [Dropbox](https://www.dropbox.com/)
- Discord Attachments

### 9.1.3. Documentation

Google Docs

Github Markdown

Discord Server ([Invite Link](https://discord.gg/WhSMX8dx))

Repository Markdown & Discussions

Dropbox [Paper](https://www.dropbox.com/paper/start)

[Microsoft Office](https://www.office.com/)

[Campfire](https://www.campfirewriting.com/) (world building)

---

### 9.1.4. Graphics Tools

- [Ezgif](https://ezgif.com/)
- [Imgur](https://imgur.com/) (hosting)

Illustration

- [Adobe Illustrator](https://www.adobe.com/products/illustrator/free-trial-download.html)
- [Gimp](https://www.gimp.org/)
- [Aseprite](https://www.aseprite.org/)
- [Paint.net](https://www.getpaint.net/)

Modeling

- [Blender](https://www.blender.org/)
- [Maya](https://www.autodesk.com/products/maya/overview)
- [Blockbench](https://www.blockbench.net)

---

### 9.1.5. Audio Tools

- [Audacity](https://www.audacityteam.org/) (recording & editing)
- [Videolan Media Player](https://www.videolan.org/)

DAWs

- [Mixcraft](https://acoustica.com/mixcraft)
- [LMMS](http://itsfoss.com/lmms)
- [Bfxr](https://www.bfxr.net/) (micro DAW)

---

### Other Tools

IDEs

- [Visual Studio](https://visualstudio.microsoft.com/)
- [VSCode](https://code.visualstudio.com/)
- [Eclipse](https://www.eclipse.org/)

Misc

- [Notepad++](https://notepad-plus-plus.org/downloads/)
- [7zip](https://www.7-zip.org/) (compression)
- [Winrar](https://www.win-rar.com/) (compression)

---

## 9.2. Updates

> ### 4.2.1. July 22nd
> 
> - More markdown editing on this documentation.

> ### 4.2.2. July 21st
> 
> - Migrated to team account repository and google drive.

> ### 4.2.3. July 20th
> 
> - Discord newbie permission poll started
> - Further initial systems brainstorming

> ### 4.2.4. July 19th
> 
> - Discord channels trimmed, lurkers kicked
> - Undisclosed narrative work

> ### 4.2.5. July 18th
> - Discord roles updated
> - Godot TBS project research & initialization
> - Class brainstorming migrated off of documentation for now

> ### 4.2.6. July 17th
> 
> - Discord Server Created
> - Concepts
> - Freeform Movement
> - Restructuring to clearly split brainstorming and documentation
> - Brainstorming
> - Concepts moved from the end of the document to the top
> - Systems
> - Narrative
> - Apps & Software
> - Tool Categories

> ### 4.2.7. July 16th
> 
> - Documentation (this) Created with bare bones initial structure
> - Omnivore
> - Classes
> - Magic System
> - Attack Scoring
> - General
> - Scene Structuring
> - Assets
> - Repository Created

# 10. Contact

> You can join the development team Discord Server in order to contact one of us directly for the time being.  [Invite Link](https://discord.gg/W65FW6McbY)
> 
> Thanks for reading!  

~Rachel

<!--
[^footnote]: Lorem ipsum
-->