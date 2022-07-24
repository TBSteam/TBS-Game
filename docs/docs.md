<!-- omit in toc -->
# TBS Game Documentation

# 1. Overview

## 1.1. Table of Contents

- [1. Overview](#1-overview)
  - [1.1. Table of Contents](#11-table-of-contents)
  - [1.2. Pins](#12-pins)
  - [1.3. To Do](#13-to-do)
  - [1.4. Updates](#14-updates)
  - [1.5. July](#15-july)
  - [1.6. Contact](#16-contact)
- [2. Brainstorming](#2-brainstorming)
  - [2.1. Class Abilities](#21-class-abilities)
  - [2.2. Magic System](#22-magic-system)
  - [2.3. Character Naming](#23-character-naming)
  - [2.4. Attack Scoring](#24-attack-scoring)
  - [2.5. Freeform Movement](#25-freeform-movement)
  - [2.6. Vehicles and Terrain](#26-vehicles-and-terrain)
  - [2.7. Map Design](#27-map-design)
  - [2.8. Session Structure](#28-session-structure)
  - [2.9. Settlements](#29-settlements)
  - [2.10. Loot Collection](#210-loot-collection)
  - [2.11. Crafting](#211-crafting)
  - [2.12. Branching Dialogue](#212-branching-dialogue)
  - [2.13. Save Files](#213-save-files)
  - [2.14. Dialogue History](#214-dialogue-history)
  - [2.15. Minimap](#215-minimap)
  - [2.16. Accessibility](#216-accessibility)
- [3. Narrative](#3-narrative)
  - [3.1. Plot Pitches](#31-plot-pitches)
  - [3.2. Summary](#32-summary)
  - [3.3. Major Factions](#33-major-factions)
  - [3.4. Key Locations](#34-key-locations)
  - [3.5. Party Members](#35-party-members)
  - [3.6. Bosses](#36-bosses)
  - [3.7. Missions](#37-missions)
- [4. Systems](#4-systems)
  - [4.1. Classes](#41-classes)
  - [4.2. Stats](#42-stats)
  - [4.3. Actions](#43-actions)
  - [4.4. Items](#44-items)
  - [4.5. Equipment](#45-equipment)
  - [4.6. Effect Elements](#46-effect-elements)
  - [4.7. Status Effects](#47-status-effects)
  - [4.8. Terrain Conditions](#48-terrain-conditions)
  - [4.9. Squad Formations](#49-squad-formations)
- [5. Engine Notes](#5-engine-notes)
  - [5.1. Godot Platform Compatibility](#51-godot-platform-compatibility)
  - [5.2. Controls](#52-controls)
- [6. Alpha Project Model](#6-alpha-project-model)
  - [6.1. Project Settings](#61-project-settings)
  - [6.2. Control Scheme](#62-control-scheme)
  - [6.3. Directory Layout](#63-directory-layout)
  - [6.4. UI](#64-ui)
  - [6.5. Objects](#65-objects)
- [7. Resources](#7-resources)
  - [7.1. Assets](#71-assets)

## 1.2. Pins

- [Repository](https://github.com/TBSteam/TBS-Game)
- Message @DVDTSB#0838 or @Rachel#3404 your Github username for access
- Popular strategy battle games
  - Disgaea
  - Advance Wars
  - Fire Emblem
  - Final Fantasy Tactics
  - Bravely Default
  - XCOM: Enemy Unknown

## 1.3. To Do

- Design
  - [ ] Level Design
  - [ ] Inventory Database
  - [ ] NPC Scripting
  - [ ] UI & Dialogue
  - [ ] Input Map
- Management
  - [ ] Team Application
  - [ ] Licenses
  - [x] Docs

## 1.4. Updates

## 1.5. July

- 24th
> - Updated To Do
> - Team Orientation

- 23rd
> - Godot project initialization

- 22nd
> - More markdown editing on this documentation.

- 21st
> - Migrated to team account repository and google drive.

- 20th
> - Discord newbie permission poll started
> - Further initial systems brainstorming

- 19th
> - Discord channels trimmed, lurkers kicked
> - Undisclosed narrative work

- 18th
> - Discord roles updated
> - Godot TBS project research & initialization
> - Class brainstorming migrated off of documentation for now

- 17th
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

- 16th
> - Documentation (this) Created with bare bones initial structure
> - Omnivore
> - Classes
> - Magic System
> - Attack Scoring
> - General
> - Scene Structuring
> - Assets
> - Repository Created

## 1.6. Contact

> You can join the development team Discord Server in order to contact one of us directly for the time being.  [Invite Link](https://discord.gg/W65FW6McbY)
> 
> Thanks for reading!  

~Rachel

---

# 2. Brainstorming

## 2.1. Class Abilities

### 2.1.1. Tanks

- Taunt
- Target guarding
- Self buffed damage absorption

### 2.1.2. Mages

- Occasionally succeed instead of failing or missing a spell cast
- Cast an additional spell for free of equal or lesser mana cost each X turns.  X decreases from 5 at lvl 50+ to 1 at level 100
- Maintain spellcasting concentration unless unconscious

## 2.2. Magic System

### 2.2.1. Spell Types

Mage classes cast spells which generally target one or more units from a range with specific unique effects.  Some common damage spells can be cast using different elements i.e. fire and ice.  Spells naturally increase in strength along with the caster via Spell Potency, which ties to the caster’s Magician Class Tier.  Casting spells of the character’s class specialization type (spells can have multiple types) rewards Magic Experience based on the spell and outcome.

### 2.2.2. Mage Class Tiers

- Apprentices gain level based Mana regeneration
- Acolytes gain spell potency tier 2 (think fira / blizzara)
- Magicians gain {}; {Something else cool}
- Archmages gain spell potency tier 3

## 2.3. Character Naming

Give the cast unique names on each save slot

## 2.4. Attack Scoring

Maybe "battles" are short ad-lib plays and opponents perform various skits in competition for crowd favor.  As more "combatants" join the fray, the stage gets filled with more performers.  On an actor's turn, they take the "foreground" of combat to take an action, and the circumstances determine how much audience favor they earn.  Then different actions can bring about various circumstances which define a "class" meta.  That's an idea to escape the stereotype of TBS combat while retaining the strategy.  An actor moves on top of another actor on the map to initiate this "combat" that continues every turn until a clear winner.

## 2.5. Freeform Movement

> Maybe units should be able to move freely instead of being bound to a grid, this removes the issue of having to round down movement, line of sight and the like. This will also make complex attack patterns and formations easier and cooler to implement, giving it a more wargame-like feel.

*\~ Cyberman*

## 2.6. Vehicles and Terrain

Certain tiles are not traversable by all battle units.  Units have various methods of traversal, and some can handle conditions others cannot.  Battlefield map tiles generate a collision tile with preset type tags.

## 2.7. Map Design

Overworld -> Field -> Dungeon

The overworld map is a semi-static artwork which doubles as a quest/objective map.  It may be opened at any time, but using it to fast travel is limited to field maps outside of combat.  Field maps and dungeon maps are where the player spends the majority of the game.  Dungeons have built in mechanics preventing certain actions and keeping track of objectives.  Fields are dynamic, their base form is mostly static but the objects on the field depend on which mission is active.

## 2.8. Session Structure

Each chapter of the story correlates with a mission in the game.  Chapters generally start in a town where the plot is presented and information is presented to the player.  The player then takes this information to the world map and investigates / searches for a dungeon.  The overworld starts out empty and the player collects region maps.  Some small areas have maps of their own which need finding.  Missions can be replayed to unlock other branches of the story, find missed secrets, or grind exp  Certain sequences are omitted from mission replays and others can be replayed outside of missions.

## 2.9. Settlements

Each act of the story has a settlement associated with it.  The settlement is a safe zone with shops and secrets.  Settlements can be upgraded by donating to its growth fund.

## 2.10. Loot Collection

Optionally sell or donate gear (to current act’s settlement growth fund) quickly and immediately at the end of missions.

## 2.11. Crafting

- Blank

## 2.12. Branching Dialogue

- Blank

## 2.13. Save Files

- Blank

## 2.14. Dialogue History

- Blank

## 2.15. Minimap

- Blank

## 2.16. Accessibility

### 2.16.1. Localization

- Blank

### 2.16.2. Subtitles

- Blank

### 2.16.3. Colorblind Filters

- Blank

---

# 3. Narrative

## 3.1. Plot Pitches

### 3.1.1. Omnivore

Two groups of four characters (Omelet and Salad ingredient themed respectively) battle over dietary dominance.  Nature has grown in such a way that gives many forms of non-human wildlife intelligence and character at our level.  Tribes of species have allied under the animal kingdom to fight back against the… aliens?  Regardless of the player’s decisions, the aliens will come to a near complete extinction before a change of heart opportunity arises, allowing the aliens to live on in harmony with the [Earth of another era] species.  Team Omelet: Bacon (pig-man fighter), Egg (bird-man dps mage), Ham (pig-man swindler), Cheese (cow-man utility mage).  Team Salad mirrors team omelet, its members:  Lettuce, Onion, Tomato, and Carrot.

## 3.2. Summary

- Blank

## 3.3. Major Factions

- Blank

## 3.4. Key Locations

- Blank

## 3.5. Party Members

- Blank

## 3.6. Bosses

- Blank

## 3.7. Missions

- Blank

---

# 4. Systems

## 4.1. Classes

Classes Info Database [Link](https://docs.google.com/spreadsheets/d/1P4gEy5Xb9YvJCaCxu7SaTrSerjtiuBwJf7HjGO6uQWs/edit#gid=617169027)

## 4.2. Stats

### 4.2.1. General

- Movement Speed

### 4.2.2. Progression

- Class Level
- Class Experience
- Weapon Level
- Weapon Experience
- Spell Potency

### 4.2.3. Resources

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

### 4.2.4. Damage

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

## 4.3. Actions

### 4.3.1. General

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

### 4.3.2. Weapon Attacks

- Types
  - Bludgeoning
  - Piercing
  - Slashing
- Patterns
  - Standard
  - Feigned
  - Multistrike
  - Plunging

### 4.3.3. Combat Abilities

Units gain access to the different combat ability categories depending on their class, level, and sometimes story progression

- Techniques (Class)
- Specials (Character)
- Abilities (Progression)
- Combos (Group)
- Spells (Magic)
- Skills (Non-magic)

## 4.4. Items

All items including equipment have a weight, value, and rarity

### 4.4.1. Regenerative

Potions and other restorative items like cure-alls and antidotes.  Defensive scrolls count as regeneratives

### 4.4.2. Boosts

Permanent stat bonus

### 4.4.3. Ammunition

Self explanitory, cheap and stacks very high.  Fishing bat counts as ammo

- Arrows
- Bots
- Darts
- Bullets
- Pellets

### 4.4.4. Explosives

Any item which can be used to attack an enemy (and is not a weapon).  Offensive scrolls count as explosives

### 4.4.5. Key Items

- Blank

## 4.5. Equipment

A lot of equipment is class and level locked

### 4.5.1. Weapons

Level up different weapon types by using that weapon.  Weapon level ups may grant stat buffs and active/passive abilities

- Main hand
- Off hand

### 4.5.2. Armors

Each slot has different tendancies, but in general the chest piece provides the most sheer resilience and boots improve movement.

- Head
- Chest
- Legs
- Feet

#### 4.5.2.1. Durability

Bonus Health = Armor = Armor Durability.  Bonus health in the form of equipped armor durability. (Armor durability is reduced when it successfully blocks a portion of incoming damage.  The amount of armor that is reduced is equal to the damage it blocks and is displayed similarly to health.)  Losses may be restored after combat or through consumables.

### 4.5.3. Accessories

Generally provide multiple non-essential stats as well as having a large bonus to one core stat

- Earrings
- Necklaces
- Rings

## 4.6. Effect Elements

The various weapons, abilities, and actions in game can have associated elements which can cause status effects or double down on an elemental weakness.

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

## 4.7. Status Effects

Ranging from spell buffs to weapon poisons.  Effects can have 1 or more types which are potentially referenced by other effects.  For example, a splash spell might douse flames by eliminating effects with the fire type.

- Blank

## 4.8. Terrain Conditions

Surfaces or zones of an area might impose detrimental (or perhaps beneficial) status effects

- Slippery
- Muddy
- Dry
- Foggy
- Flaming

## 4.9. Squad Formations

Use the party window to change the party's squad formation.  Once a formation is chosen, select a location to center it.
Each formation has its advantages and disadvantages.

- Single File
- Shield Wall
- Square
- Diamond

---

# 5. Engine Notes

## 5.1. Godot Platform Compatibility

For now, just export to the most convenient built in platforms for team-wide playtesting.  If the game takes off and further promotion / marketing becomes viable, then seek a publisher.  Finding the right publisher can help immensely, mainly in the PR / Legal fields although some can even localize.  With enough finances, there are third party solutions to export godot projects to Switch, Xbox, and Playstation.  [Global Ratings](https://www.globalratings.com/for-developers.aspx) To get the game rated once it’s ready.

## 5.2. Controls

Do not bind an axis input to the same input as a non-axial input via the godot input map.  It causes a bug that effectively stops reading either of the inputs.

---

# 6. Alpha Project Model

## 6.1. Project Settings

- Blank

## 6.2. Control Scheme

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

## 6.3. Directory Layout

- Blank

---

## 6.4. UI

### 6.4.1. HUD

#### 6.4.1.1. Map Overlays

- Blank

#### 6.4.1.2. Selection Cursor

- Blank

#### 6.4.1.3. Selection Window

- Statically anchored top-left
- Downward overfilling (vertical scrollbar)
- Dim background, hidden when empty
- Clear selection button docked at the top
- Contains active unit details panels

#### 6.4.1.4. Unit Details Panel

Fields which do not apply to the unit are blank and omitted. Unknown fields are marked as such with question marks.

Panel fields outline

- Banner image
- Full name
- Class
- Resources i.e. HP/MP
- Effects
- Inventory
- Actions

#### 6.4.1.5. Dialogue Window

### 6.4.2. Menus

#### 6.4.2.1. Title Screen

#### 6.4.2.2. World Map

- Location Info Panel

#### 6.4.2.3. Pause Menu

- Status
- Items
- Abilities
- Party Setup
- Journal
- File
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
- Settings
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

## 6.5. Objects

### 6.5.1. Controllers

#### 6.5.1.1. Systems Controller

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

#### 6.5.1.2. Story Controller

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

#### 6.5.1.3. Map Controller

- Wave Function Collapse Layers
- Cosmetic Scenery
- Battlefield Environment
- Collision Tiles
- Enemy Squads
- Spawn Zones
- Debug Fallback Map
- Map Matrix Database
- Mission Setup

##### 6.5.1.3.1. Map Zones

### 6.5.2. Units

Select a unit to display a unit details panel which will appear inside the selection window (potentially activating & unhiding it).

Massive units are multiple smaller units comprising a larger entity with shared health in battle.  This is specifically used for boss fights with multiple target points.
  
- Status Manager
  - Receives and reacts to status information sent from the Battle Manager

#### 6.5.2.1. Unit Types

- Beings (dead or alive)
- Obstacles (for moving and breaking)
- Containers
- Inventory items
- Levers
- Signs
- Gateways (changing layers or maps)
- Blank Units (for non-selectibles)

#### 6.5.2.2. Parties

- Playable characters have a button built into their portrait to add that character to the party.
- Parties can be 1 to 10 characters.
- A party engine optimizes actions based on the action itself, the target selection, and the party status.

### 6.5.3. Actions

The action field is unique in that it will only display actions which not only apply to the current unit, but can be performed by a member in the party.  Actions which are not (yet) unlocked on a character do not appear.

- Attack
- Combat Abilities

#### 6.5.3.1. Default Actions

The default action is taken when the player double clicks(double taps) a targetable unit with a non-empty party

---
 
# 7. Resources

## 7.1. Assets

### 7.1.1. Core

Godot Engine *[download](https://godotengine.org/download/)*

#### 7.1.1.1. File Sharing

- [Github Repository](https://github.com/TBSteam/TBS-Game/)
- Google Drive
- Discord Attachments
- [Dropbox](https://www.dropbox.com/)

#### 7.1.1.2. Documentation

- Google Docs
- Github Markdown
- Repository Markdown & Discussions
- Discord Server ([Invite Link](https://discord.gg/WhSMX8dx))
- Dropbox [Paper](https://www.dropbox.com/paper/start)
- [Microsoft Office](https://www.office.com/)
- [Campfire](https://www.campfirewriting.com/) (world building)

---

### 7.1.2. Graphics

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

#### 7.1.2.1. Illustration

- [Adobe Illustrator](https://www.adobe.com/products/illustrator/free-trial-download.html)
- [Gimp](https://www.gimp.org/)
- [Aseprite](https://www.aseprite.org/)
- [Inkscape](https://www.inkscape.org/)
- [Paint.net](https://www.getpaint.net/)

#### 7.1.2.2. Modeling

- [Blender](https://www.blender.org/)
- [Maya](https://www.autodesk.com/products/maya/overview)
- [Blockbench](https://www.blockbench.net)

#### 7.1.2.3. Other

- [Ezgif](https://ezgif.com/)
- [Imgur](https://imgur.com/) (hosting)

---

### 7.1.3. Audio

- UI
- Action
- Ambiance
- Foreground
- Background
- Ambience
- Event
- Character
- Misc

#### 7.1.3.1. DAWs

- [Mixcraft](https://acoustica.com/mixcraft)
- [LMMS](http://itsfoss.com/lmms)
- [Bfxr](https://www.bfxr.net/) (micro DAW)

#### 7.1.3.2. Other

- [Audacity](https://www.audacityteam.org/) (recording & editing)
- [Videolan Media Player](https://www.videolan.org/)

### 7.1.4. Scripts

- Combat Controller
- Camera Director
- Level Generator
- Dialogue Controller
- Game Save File Manager
- Game UI Manager
- Game Options Configuration

#### 7.1.4.1. IDEs

- [Visual Studio](https://visualstudio.microsoft.com/)
- [VSCode](https://code.visualstudio.com/)
- [Eclipse](https://www.eclipse.org/)

### 7.1.5. Other Apps

- [Notepad++](https://notepad-plus-plus.org/downloads/)
- [7zip](https://www.7-zip.org/) (compression)
- [Winrar](https://www.win-rar.com/) (compression)

<!--
[^footnote]: Lorem ipsum
-->