<!-- omit in toc -->
# TBS Game Documentation

<!-- omit in toc -->
## Table of Contents

- [1. Brainstorming](#1-brainstorming)
  - [1.1. Battle-Stage “Appeal” (Attack Scoring)](#11-battle-stage-appeal-attack-scoring)
  - [1.2. Platform Compatibility in Godot](#12-platform-compatibility-in-godot)
  - [1.3. Freeform Movement](#13-freeform-movement)
  - [1.4. Vehicles & Terrain](#14-vehicles--terrain)
  - [1.5. Magic System](#15-magic-system)
  - [1.6. Class Abilities](#16-class-abilities)
  - [1.7. Map Design](#17-map-design)
  - [1.8. Session structure](#18-session-structure)
  - [1.9. Settlements](#19-settlements)
  - [1.10. Loot Collection](#110-loot-collection)
  - [1.11. Namable main characters](#111-namable-main-characters)
  - [1.12. Weapon Progression](#112-weapon-progression)
  - [1.13. Armor](#113-armor)
  - [1.14. "Omnivore" Plot](#114-omnivore-plot)
- [2. Alpha Project Model](#2-alpha-project-model)
  - [2.1. Controls](#21-controls)
  - [2.2. UI](#22-ui)
  - [2.3. Units](#23-units)
  - [2.4. Selection window](#24-selection-window)
  - [2.5. Unit details Panel](#25-unit-details-panel)
  - [2.6. Default Actions](#26-default-actions)
  - [2.7. Actions](#27-actions)
  - [2.8. Parties](#28-parties)
  - [2.9. Battle Manager](#29-battle-manager)
  - [2.10. Map Controller](#210-map-controller)
  - [2.11. Narrative Controller](#211-narrative-controller)
  - [2.12. Systems Controller](#212-systems-controller)
  - [2.13. Battle Actor](#213-battle-actor)
  - [2.14. Script Nodes](#214-script-nodes)
  - [2.15. Scene Layout](#215-scene-layout)
- [3. Systems](#3-systems)
  - [3.1. Classes](#31-classes)
  - [3.2. Stats](#32-stats)
  - [3.3. Battle Actions](#33-battle-actions)
  - [3.4. Inventory](#34-inventory)
  - [3.5. Effect Elements](#35-effect-elements)
  - [3.6. Status Effects](#36-status-effects)
  - [3.7. Dialogue](#37-dialogue)
  - [3.8. Save Files](#38-save-files)
  - [3.9. Terrain Conditions](#39-terrain-conditions)
  - [3.10. Squad Formations](#310-squad-formations)
- [4. Assets](#4-assets)
  - [4.1. Graphics](#41-graphics)
  - [4.2. Audio](#42-audio)
  - [4.3. Scripts](#43-scripts)
  - [4.4. Apps & Software](#44-apps--software)
  - [4.5. Core](#45-core)
  - [4.6. Graphics Tools](#46-graphics-tools)
  - [4.7. Audio Tools](#47-audio-tools)
  - [4.8. Other Tools](#48-other-tools)
<!-- omit in toc -->
# Overview

<!-- omit in toc -->
## Pins

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
<!-- omit in toc -->
## To-Do

- [ ] Team application Google Form
- [ ] Documentation editing

---
<!-- omit in toc -->
# Updates
<!-- omit in toc -->
## July 22nd

> - More markdown editing on this documentation.

<!-- omit in toc -->
## July 21st

> - Migrated to team account repository and google drive.

<!-- omit in toc -->
## July 20th

> - Discord newbie permission poll started
> - Further initial systems brainstorming

<!-- omit in toc -->
## July 19th

> - Discord channels trimmed, lurkers kicked
> - Undisclosed narrative work

<!-- omit in toc -->
## July 18th

> - Discord roles updated
> - Godot TBS project research & initialization
> - Class brainstorming migrated off of documentation for now

<!-- omit in toc -->
## July 17th

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

<!-- omit in toc -->
## July 16th

> - Documentation (this) Created with bare bones initial structure
> - Omnivore
> - Classes
> - Magic System
> - Attack Scoring
> - General
> - Scene Structuring
> - Assets
> - Repository Created

<!-- omit in toc -->
# Contact

> You can join the development team Discord Server in order to contact one of us directly for the time being.  [Invite Link](https://discord.gg/W65FW6McbY)
> 
> Thanks for reading!  

~Rachel

---

# 1. Brainstorming

## 1.1. Battle-Stage “Appeal” (Attack Scoring)

Maybe "battles" are short ad-lib plays and opponents perform various skits in competition for crowd favor.  As more "combatants" join the fray, the stage gets filled with more performers.  On an actor's turn, they take the "foreground" of combat to take an action, and the circumstances determine how much audience favor they earn.  Then different actions can bring about various circumstances which define a "class" meta.  That's an idea to escape the stereotype of TBS combat while retaining the strategy.  An actor moves on top of another actor on the map to initiate this "combat" that continues every turn until a clear winner.

---

## 1.2. Platform Compatibility in Godot

For now, just export to the most convenient built in platforms for team-wide playtesting.  If the game takes off and further promotion / marketing becomes viable, then seek a publisher.  Finding the right publisher can help immensely, mainly in the PR / Legal fields although some can even localize.  With enough finances, there are third party solutions to export godot projects to Switch, Xbox, and Playstation.  [Global Ratings](https://www.globalratings.com/for-developers.aspx) To get the game rated once it’s ready.

---

## 1.3. Freeform Movement

> Maybe units should be able to move freely instead of being bound to a grid, this removes the issue of having to round down movement, line of sight and the like. This will also make complex attack patterns and formations easier and cooler to implement, giving it a more wargame-like feel.

*\~ Cyberman*

---

## 1.4. Vehicles & Terrain

Certain tiles are not traversable by all battle units.  Units have various methods of traversal, and some can handle conditions others cannot.  Battlefield map tiles generate a collision tile with preset type tags.

---

## 1.5. Magic System

### 1.5.1. Spell Types

Mage classes cast spells which generally target one or more units from a range with specific unique effects.  Some common damage spells can be cast using different elements i.e. fire and ice.  Spells naturally increase in strength along with the caster via Spell Potency, which ties to the caster’s Magician Class Tier.  Casting spells of the character’s class specialization type (spells can have multiple types) rewards Magic Experience based on the spell and outcome.

### 1.5.2. Mage Class Tiers

- Apprentices gain level based Mana regeneration
- Acolytes gain spell potency tier 2 (think fira / blizzara)
- Magicians gain {}; {Something else cool}
- Archmages gain spell potency tier 3

---

## 1.6. Class Abilities

### 1.6.1. Tanks

- Taunt
- Target guarding
- Self buffed damage absorption

### 1.6.2. Mages

- Occasionally succeed instead of failing or missing a spell cast
- Cast an additional spell for free of equal or lesser mana cost each X turns.  X decreases from 5 at lvl 50+ to 1 at level 100
- Maintain spellcasting concentration unless unconscious

---

## 1.7. Map Design

Overworld -> Field -> Dungeon

The overworld map is a semi-static artwork which doubles as a quest/objective map.  It may be opened at any time, but using it to fast travel is limited to field maps outside of combat.  Field maps and dungeon maps are where the player spends the majority of the game.  Dungeons have built in mechanics preventing certain actions and keeping track of objectives.  Fields are dynamic, their base form is mostly static but the objects on the field depend on which mission is active.

---

## 1.8. Session structure

Each chapter of the story correlates with a mission in the game.  Chapters generally start in a town where the plot is presented and information is presented to the player.  The player then takes this information to the world map and investigates / searches for a dungeon.  The overworld starts out empty and the player collects region maps.  Some small areas have maps of their own which need finding.  Missions can be replayed to unlock other branches of the story, find missed secrets, or grind exp  Certain sequences are omitted from mission replays and others can be replayed outside of missions.

---

## 1.9. Settlements

Each act of the story has a settlement associated with it.  The settlement is a safe zone with shops and secrets.  Settlements can be upgraded by donating to its growth fund.

---

## 1.10. Loot Collection

Optionally sell or donate gear (to current act’s settlement growth fund) quickly and immediately at the end of missions.

---

## 1.11. Namable main characters

Give the cast unique names on each save slot

---

## 1.12. Weapon Progression

Level up different weapon types by using that weapon.  Weapon level ups may grant stat buffs and active/passive abilities

---

## 1.13. Armor

Bonus Health = Armor = Armor Durability.  Bonus health in the form of equipped armor durability. (Armor durability is reduced when it successfully blocks a portion of incoming damage.  The amount of armor that is reduced is equal to the damage it blocks and is displayed similarly to health.)  Losses may be restored after combat or through consumables.

---

## 1.14. "Omnivore" Plot

Two groups of four characters (Omelet and Salad ingredient themed respectively) battle over dietary dominance.  Nature has grown in such a way that gives many forms of non-human wildlife intelligence and character at our level.  Tribes of species have allied under the animal kingdom to fight back against the… aliens?  Regardless of the player’s decisions, the aliens will come to a near complete extinction before a change of heart opportunity arises, allowing the aliens to live on in harmony with the [Earth of another era] species.  Team Omelet: Bacon (pig-man fighter), Egg (bird-man dps mage), Ham (pig-man swindler), Cheese (cow-man utility mage).  Team Salad mirrors team omelet, its members:  Lettuce, Onion, Tomato, and Carrot.

---

# 2. Alpha Project Model

## 2.1. Controls

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
## 2.2. UI

- Dialogue box
- Dialogue history
- Campaign map
- Local map
- Subtitle / Closed Captions Zone

---

Select a unit to display a unit details panel which will appear inside the selection window (potentially activating & unhiding it).

## 2.3. Units

Massive units are multiple smaller units comprising a larger entity with shared health in battle.  This is specifically used for boss fights with multiple target points.

- Beings (dead or alive)
- Obstacles (for moving and breaking)
- Containers
- Inventory items
- Levers
- Signs
- Gateways (changing layers or maps)
- Blank Units (for non-selectibles)

---

## 2.4. Selection window

- Statically anchored top-left
- Downward overfilling (vertical scrollbar)
- Dim background, hidden when empty
- Clear selection button docked at the top

---

## 2.5. Unit details Panel

Fields which do not apply to the unit are blank and omitted. Unknown fields are marked as such with question marks.

Panel fields outline

- Banner image
- Full name
- Class
- Resources i.e. HP/MP
- Effects
- Inventory
- Actions

---

## 2.6. Default Actions

The default action is taken when the player right clicks a unit (joy 4 / obj-2tap).

---

## 2.7. Actions

The action field is unique in that it will only display actions which not only apply to the current unit, but can be performed by a member in the party.  Actions which are not (yet) unlocked on a character do not appear.

- Attack
- Combat Abilities

---

## 2.8. Parties

- Playable characters have a button built into their portrait to add that character to the party.
- Parties can be 1 to 10 characters.
- A party engine optimizes actions based on the action itself, the target selection, and the party status.

---

## 2.9. Battle Manager

---

## 2.10. Map Controller

- Wave Function Collapse Layers
- Cosmetic Scenery
- Battlefield Environment
- Collision Tiles
- Enemy Squads
- Spawn Zones
- Debug Fallback Map
- Map Matrix Database

---

## 2.11. Narrative Controller

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

---

## 2.12. Systems Controller

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

---

## 2.13. Battle Actor

---

## 2.14. Script Nodes

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

---

## 2.15. Scene Layout

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

# 3. Systems

## 3.1. [Classes](https://docs.google.com/spreadsheets/d/1P4gEy5Xb9YvJCaCxu7SaTrSerjtiuBwJf7HjGO6uQWs/edit#gid=617169027)

---

## 3.2. Stats

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

## 3.3. Battle Actions

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

## 3.4. Inventory

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

## 3.5. Effect Elements

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

---

## 3.6. Status Effects

Ranging from spell buffs to weapon poisons.  Effects can have 1 or more types which are potentially referenced by other effects.  For example, a splash spell might douse flames by eliminating effects with the fire type.

---

## 3.7. Dialogue

---

## 3.8. Save Files

---

## 3.9. Terrain Conditions

- Slippery
- Muddy
- Dry
- Foggy
- Flaming
- Etc.

---

## 3.10. Squad Formations

- Single File
- Shield Wall
- Square
- Diamond

---

# 4. Assets

## 4.1. Graphics

- Tiles & Characters
  - Miniworld Shade Assets
- UI
  - Theme
  - Backdrops
  - Borders
  - Icons
  - Gadget Parts
- Visual Effects
- Shaders
- Action Animations

---

## 4.2. Audio

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

## 4.3. Scripts

- Combat Controller
- Camera Director
- Level Generator
- Dialogue Controller
- Game Save File Manager
- Game UI Manager
- Game Options Configuration

---

## 4.4. Apps & Software

## 4.5. Core

Godot Engine *[download](https://godotengine.org/download/)*

File Sharing

- [Github Repository](https://github.com/TBSteam/TBS-Game/)
- Google Drive
- Discord Attachments
- [Dropbox](https://www.dropbox.com/)

Documentation

- Google Docs
- Github Markdown
- Repository Markdown & Discussions
- Discord Server ([Invite Link](https://discord.gg/WhSMX8dx))
- Dropbox [Paper](https://www.dropbox.com/paper/start)
- [Microsoft Office](https://www.office.com/)
- [Campfire](https://www.campfirewriting.com/) (world building)

---

## 4.6. Graphics Tools

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

## 4.7. Audio Tools

- [Audacity](https://www.audacityteam.org/) (recording & editing)
- [Videolan Media Player](https://www.videolan.org/)

DAWs

- [Mixcraft](https://acoustica.com/mixcraft)
- [LMMS](http://itsfoss.com/lmms)
- [Bfxr](https://www.bfxr.net/) (micro DAW)

---

## 4.8. Other Tools

IDEs

- [Visual Studio](https://visualstudio.microsoft.com/)
- [VSCode](https://code.visualstudio.com/)
- [Eclipse](https://www.eclipse.org/)

Misc

- [Notepad++](https://notepad-plus-plus.org/downloads/)
- [7zip](https://www.7-zip.org/) (compression)
- [Winrar](https://www.win-rar.com/) (compression)

<!--
[^footnote]: Lorem ipsum
-->