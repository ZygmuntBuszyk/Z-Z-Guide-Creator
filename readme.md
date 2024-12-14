# RXP Guide Creator

Fork of [GuideCreator](https://github.com/Zarant/GuideCreator) modified to fully support RestedXP (RXP) guide syntax and features.

## Purpose

This fork aims to extend GuideCreator to support all RXP-specific guide features, formatting, and validation to allow creation of fully compatible RXP guides in-game.

## Planned Additions

### 1. Header Tags Support
- Full RXP metadata validation
  - `#version X` - Guide version control
  - `#group Name` - Guide grouping 
  - `#xprate <rate/>rate` - XP rate requirements
  - `#classic/#retail/#som` - Game version tags
  - `#hardcore/#softcore` - Hardcore mode tags
  - `#phase1-4` - Phase requirements
  - `#season 0/1/2` - Season support (None/SoM/SoD)
  - `#fresh/#veteran` - Realm type tags

### 2. Step Control Extensions
- Enhanced step logic
  - `#sticky` - Persistent steps
  - `#label Name` - Step labeling
  - `#requires Label` - Step dependencies
  - `#completewith next/Label` - Dynamic completion
  - Improved step linking and referencing

### 3. RXP Command Support
Basic Commands:
- `.goto Zone,X,Y` - Enhanced waypoint system
- `.zone ZoneName` - Zone transitions
- `.fp/.fly Location` - Flight path handling
- `.hs/.home` - Hearthstone management
- `.accept/.turnin/.complete` - Quest handling

Advanced Commands:  
- `.train spellID` - Spell training
- `.skill Name,Level` - Skill requirements
- `.money <amount` - Gold checks
- `.reputation faction,standing` - Rep requirements
- `.collect itemID,amount` - Item collection
- `.use/.destroy itemID` - Item management
- `.bankwithdraw/.bankdeposit` - Bank operations
- `.unitscan` - Enemy scanning
- `.tame npcID` - Pet taming
- `.vehicle id` - Vehicle handling

### 4. Enhanced Conditions
- Expanded class/race conditions
  - `<< Class/Race` - Requirements
  - `<< !Class` - Exclusions
  - Multiple class support
- Quest state conditions
  - `.isQuestComplete`
  - `.isQuestTurnedIn`
  - `.isQuestAvailable`
  - `.isOnQuest`

### 5. RXP Formatting
- Color codes support
  - `|cRXP_WARN_|r` - Warning text
  - `|cRXP_FRIENDLY_|r` - NPC text
  - `|cRXP_ENEMY_|r` - Enemy text
  - `|cRXP_LOOT_|r` - Loot text
- Icon integration
  - `|T texture:0|t` - Texture icons
  - Quest/item icons
  - Directional arrows

### 6. Validation Framework
- Real-time syntax checking
- RXP compatibility verification
- Error highlighting
- Syntax suggestions
- Auto-completion

## Development Status
- [ ] Header Tags Implementation
- [ ] Step Control System
- [ ] Basic Commands
- [ ] Advanced Commands  
- [ ] Condition System
- [ ] Formatting Support
- [ ] Validation Framework
- [ ] Testing & Documentation

## Installation
[Installation instructions will be added]

## Usage
[Usage instructions will be added]

## Contributing
[Contribution guidelines will be added]

## Tests
[Contribution guidelines will be added]