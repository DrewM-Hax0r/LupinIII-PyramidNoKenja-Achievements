// Lupin III: Pyramid no Kenja
// #ID = 20465

// $000012: [8-bit] Current Game Level setting
//          0x00 = Easy
//          0x01 = Normal
//          0x02 = Hard
//          0x03 = Super
//          0x04 = Hyper
function GameDifficulty() => byte(0x000012)

// $000014: [8-bit] Lupin Color (costume) setting
//          0x00 = Part I
//          0x01 = Part II
//          0x02 = Part III
//          0x03 = Jigen
//          0x04 = Goemon
//          0x05 = Fujiko (not accessible normally, might be a secret unlockable?)
//          0x06 = Zenigata
//          0x07 = Shadow Swap
//          0x08 = Debug Mode
//          0x09 = Princess (not accessible normally, might be a secret unlockable?)
function PlayerCostume() => byte(0x000014)

// $00001E: [8-bit] Progression Flag
//          0x01 = At title screen
//          0x02 = Start New Game
//          0x03 = Level 1 Cleared, Levels 2,3 unlocked
//          0x04 = Levels 2,3 Cleared, Levels 4,5,6 unlocked
function ProgressionFlag() => byte(0x00001E)

// $000050: [8-bit] Most recent total score earned for Level 1
function MostRecentClearScoreLevel1() => byte(0x000050)

// $000053: [8-bit] Most recent total score earned for Level 2
function MostRecentClearScoreLevel2() => byte(0x000053)

// $000052: [8-bit] Most recent total score earned for Level 3
function MostRecentClearScoreLevel3() => byte(0x000052)

// $000055: [8-bit] Most recent total score earned for Level 4
function MostRecentClearScoreLevel4() => byte(0x000055)

// $000054: [8-bit] Most recent total score earned for Level 5
function MostRecentClearScoreLevel5() => byte(0x000054)

// $000057: [8-bit] Most recent total score earned for Level 6
function MostRecentClearScoreLevel6() => byte(0x000057)

// $000056: [8-bit] Most recent total score earned for Level 7
function MostRecentClearScoreLevel7() => byte(0x000056)

// $000059: [8-bit] Most recent total score earned for Level 8
function MostRecentClearScoreLevel8() => byte(0x000059)

// $000058: [8-bit] Most recent total score earned for Level 9
function MostRecentClearScoreLevel9() => byte(0x000058)

// $00005B: [8-bit] Most recent total score earned for Level 10
function MostRecentClearScoreLevel10() => byte(0x00005B)

// $00005A: [8-bit] Most recent total score earned for Level 11
function MostRecentClearScoreLevel11() => byte(0x00005A)

// $00005D: [8-bit] Most recent total score earned for Level 12
function MostRecentClearScoreLevel12() => byte(0x00005D)

// $00005C: [8-bit] Most recent total score earned for Level 13
function MostRecentClearScoreLevel13() => byte(0x00005C)

// $00005F: [8-bit] Most recent total score earned for Level 14
function MostRecentClearScoreLevel14() => byte(0x00005F)

// $00005E: [8-bit] Most recent total score earned for Level 15
function MostRecentClearScoreLevel15() => byte(0x00005E)

// $0000A1: [8-bit] The level ID on the level results screen
//          0x01 = Level 1 (Pyramid Entrance)
//          0x02 = Level 2 (Underground Fortress)
//          0x03 = Level 3 (Desert Tower)
//          0x04 = Level 4 (Mountain Fortress)
//          0x05 = Level 5 (Ancient Ruins)
//          0x06 = Level 6 (Valley Fortress)
//          0x07 = Level 7 (Jungle Temple)
//          0x08 = Level 8 (Botanical Research Institute)
//          0x09 = Level 9 (Jungle Watchtower)
//          0x0a = Level 10 (Artificial Island)
//          0x0b = Level 11 (Water Quality Control Center)
//          0x0c = Level 12 (Undersea Base)
//          0x0d = Level 13 (Genetics Laboratory)
//          0x0e = Level 14 (Power Reactor)
//          0x0f = Level 15 (Power Center)
function ResultsScreenLevelID() => byte(0x0000A1)

// $0000A3: [8-bit] Number of times spotted by the enemy (hidden value for level results screen, effects score calculation)
//          This value only counts times seen by unique enemies, so being seen by the same enemy 2 different times will only count for 1
//          Additionally, some enemy types in some levels do not count towards this value when spotted (like spiders, since they need to be aggro'd to be defeated)
function ResultsScreenTimesAlertedEnemies() => byte(0x0000A3)

// $0000A4: [8-bit] Total Score Value on the level results screen
function ResultsScreenTotalScore() => byte(0x0000A4)

// $0000A9: [8-bit] Demo Mode
//          0x00 = Demo Mode Not Active
//          0x01 = Demo Mode Active
function DemoMode() => byte(0x0000A9)

// $0000E2: [8-bit] Flag that specifies next area to load into. Only updates right before being used.
//          0x00 = Level 1
//          0x01 = Level 2
//          0x02 = [Unused] Alt Level 2
//          0x03 = Level 3
//          0x04 = Level 4 (Room 1)
//          0x05 = Level 4 (Room 2)
//          0x06 = Level 5 (Room 1)
//          0x07 = Level 5 (Room 2)
//          0x08 = Level 6
//          0x09 = [Unused] CRASH
//          0x0a = Level 7 (Room 1)
//          0x0b = Level 7 (Room 2)
//          0x0c = Level 8
//          0x0d = Level 9 (Room 1)
//          0x0e = Level 9 (Room 2)
//          0x0f = Level 10 (Room 1)
//          0x10 = Level 10 (Room 2)
//          0x11 = [Unused] CRASH
//          0x12 = Level 11
//          0x13 = [Unused] CRASH
//          0x14 = Level 12
//          0x15 = Level 13
//          0x16 = Level 14
//          0x17 = [Unused] Test Room?
//          0x18 = Level 15 (Room 1)
//          0x19 = Level 15 (Transition from Room 1 to Room 2)
//          0x1a = Level 15 (Room 2)
//          0x1b = Level 15 (Room 3)
function LevelID() => byte(0x0000E2)

// $13E502: [8-bit] Can be used to determine if in game or in menus
//          0x00 = Viewing any menu screen (Including level results, if not opened from Treasure Room)
//          0x01 = Viewing level results screen from Treasure Room
//          0x12 = In Game
//          0xdc = Survival Mode
function GameState() => byte(0x13E502)

// $13E509: [8-bit] Current Menu Screen
//          0x01 = Load Screen (only when accessed from the Title Screen)
//          0x02 = Stage Select
//          0x03 = Options Screen
//          0x04 = Level Preview Screen
//          0x05 = Loading into level
//          0x06 = Main Menu (Next Stage, Save, Load, etc)
//          0x07 = Save Screen
//          0x08 = Load Screen (only when accessed from the Main Menu)
//          0x09 = Level Results Screen
//          0x0a = Treasure Room
function CurrentMenuScreen() => byte(0x13E509)

// $1452C2: [8-bit] Load/Save Trigger Flag
//          Changes from 0x00 to 0x01 when a file is loaded, or saved
function LoadSaveTriggerFlag() => byte(0x1452C2)

// $186255: [8-bit] Current number of land mines held by the player (Survival Mode)
function SurvivalModeLandMinesHeld() => byte(0x186255)

// $186257: [8-bit] Current number of flash grenades held by player (Survival Mode)
function SurvivalModeFlashGrenadesHeld() => byte(0x186257)

// $1865AA: [16-bit] Survival mode timer
function SurvivalModeTimer() => word(0x1865AA)

// $18B2D0: [8-bit] Flag for collecting the key to the temple in Level 5
function Level5KeyFlag() => byte(0x18B2D0)
function TrasureCollectedLevelFlag() => byte(0x18B2D0)

// $18B2D2: [8-bit] The game is paused if this value is greater than 0x00
function GamePaused() => byte(0x18B2D2)

// $18B2D5: [8-bit] Disguise flag - used in conjunction with address 0x19fa86 (disguise timer)
//          0x00 = Disguise not active
//          0x01 = Disguise active
function DisguiseStatus() => byte(0x18B2D5)

// $1913C6: [8-bit] Flash grenade timer - decreases by 1 each game tick, when value reaches 0x00 flash grenade effect wares off
//          0x00 = Flash grenade not active
//          0x0e6 = Value set when using a flash grenade item
function FlashGrenadeTimer() => byte(0x1913C6)

// $1955A1: [8-bit] Current players health (Survival Mode)
function SurvivalModePlayerHealth() => byte(0x1955A1)

// $19F3BD: [8-bit] [Level 9] Puzzle door flag
//          0x00 = Initial state
//          0x01 = 1 correct button pushed
//          0x02 = 2 correct buttons pushed
//          0x03 = 3 correct buttons pushed
//          0x04 = Puzzle solved
function Level9PuzzleDoorState() => byte(0x19F3BD)

// $19F7F2: [8-bit] Flag for opening puzzle door in Level 15.2, activates when any of the four doors are opened
//          0x00 = CLOSED
//          0x01 = OPEN
function Level15DoorPuzzleState() => byte(0x19F7F2)

// $19F89D: [8-bit] Current number of land mines held by the player
function PlayerHeldLandMines() => byte(0x19F89D)

// $19F89F: [8-bit] Current number of flash grenades held by the player
function PlayerHeldFlashGrenades() => byte(0x19F89F)

// $19F8A1: [8-bit] Whether or not the player currently has the rubber boots
//          0x00 = Does not have rubber boots
//          0x01 = Has rubber boots
function PlayerRubberBootsFlag() => byte(0x19F8A1)

// $19F8A3: [8-bit] Current number of disguise items currently held by the player
function PlayerHeldDisguises() => byte(0x19F8A3)

// $19F8A6: [8-bit] Current ammo for player's gun
function PlayerHeldSpecialAttackAmmo() => byte(0x19F8A6)

// $19F8A8: [8-bit] Current number of gold healing items held by the player
function PlayerHeldGoldHealItems() => byte(0x19F8A8)

// $19F8A9: [8-bit] Current number of blue healing items held by the player
function PlayerHeldBlueHealItems() => byte(0x19F8A9)

// $19F8AF: [8-bit] Currently selected item in players inventory
function CurrentlySelectedItem() => byte(0x19F8AF)

// $19FC5E: [8-bit] Number of times spotted by the enemy, in game, updates in real time
function TimesSpottedByUniqueEnemiesInGame() => byte(0x19FC5E)

// $19FC80: [8-bit] Current round in survival mode (0 based)
function SurvivalModeRound() => byte(0x19FC80)

// $1A0EFA: [8-bit] Number of enemies in the round in survival mode
//          If set to 0x00, survival mode is cleared
function SurvivalModeEnemyCount() => byte(0x1A0EFA)

// $1AEBC0: [16-bit] Player X Location
function PlayerXLocation() => word(0x1AEBC0)

// $1AEBC4: [16-bit] Player Y Location
function PlayerYLocation() => word(0x1AEBC4)

// $1AEBD6: [8-bit] Flag identifying the current animation set the player character is in
//          0x00 = Standing Idle (Lupin)
//          0x56 = Standing Idle (Jigen)
//          0x53 = Standing Idle (Goemon)
//          0x5f = Standing Idle (Zenigata)
//          
//          0x03 = Smoking
//          0x23 = Getting Crushed
//          0x07 = Crushed
//          0x27 = Electrocuted
//          0x16 = Swimming in Air
//          0x32 = Balancing on edge of cliff
//          0x35 = Balancing on edge of cliff 2
//          0x33 = Recovering from balancing on edge of cliff
//          0x33 = Recovering from balancing on edge of cliff 2
//          
//          0x3d = Slow Walk
//          0x06 = Fast Walk
//          0x08 = The Lupin Run
//          0x09 = Sprinting
//          
//          0x20 = Bending Dodge
//          0x21 = Sidestep Dodge
//          0x22 = Jumping Dodge
//          
//          0x1f = Prepare to Dodge
//          
//          0x11 = Idle Jumping
//          0x12 = Moving In-Air
//          0x05 = Land From Height
//          
//          0x38 = Slide Kick
//          0x3a = Sprinting Jump
//          
//          0x02 = Fists Raised
//          0x5c = 1st Punch
//          0x2e = 2nd Punch (3-hit combo)
//          0x2f = 3rd Punch (3-hit combo)
//          0x4d = 2nd Punch (5-hit combo)
//          0x2d = 3nd Punch (5-hit combo)
//          0x5b = 4nd Punch (5-hit combo)
//          0x4e = 5nd Punch (5-hit combo)
//          0x2c = Recovery (5-hit combo)
//          0x4b = Sprint Charge Attack
//          0x38 = Sprint Slide Attack
//
//          0x42 = Gun Fire (Lupin)
//          0x43 = Gun Finished Firing (Lupin)
//          0x54 = Gun Fire (Jigen)
//          0x61 = Gun Dive Fire (Lupin, Jigen)
//          0x51 = Zantetsuken Attack (Goemon)
//          0x5a = Zantetsuken Running Attack (Goemon)
function PlayerAnimationSet() => byte(0x1AEBD6)

// $1AEBE4: [8-bit] Can be used to determine if the character is positioned over an electric floor (ignores Z location)
//          0x04 when the player is over an electric floor  
function PlayerOverElectricFloorFlag() => byte(0x1AEBE4)

// $1AEC0C: [16-bit] Player Z Location
function PlayerZLocation() => word(0x1AEC0C)

// $1AEC11: [8-bit] Current value of players HP
function PlayerHP() => byte(0x1AEC11)

// $1B3C48: [16-bit] [Level 6] Pillar Rolling State
//          0xff92 = Initial state
//          0xfe94 = Right before hitting bottom of hill
//          0xfe6c = After crushing stationary enemy
//          0xfe1c = Final state
function Level6PillarRollingState() => word(0x1B3C48)

// $1B3C72: [8-bit] Flag for opening puzzle door in Level 15.2 (J Tetromino)
//          0x00 = OPEN
//          0x01 = CLOSED
function Level15DoorPuzzleJTetrominoState() => byte(0x1B3C72)

// $1B3CB2: [8-bit] Flag for opening puzzle door in Level 15.2 (T Tetromino)
//          0x00 = OPEN
//          0x01 = CLOSED
function Level15DoorPuzzleTTetrominoState() => byte(0x1B3CB2)

// $1B3CF2: [8-bit] Flag for opening puzzle door in Level 15.2 (S Tetromino)
//          0x00 = OPEN
//          0x01 = CLOSED
function Level15DoorPuzzleSTetrominoState() => byte(0x1B3CF2)

// $1B3D32: [8-bit] Flag for opening puzzle door in Level 15.2 (O Tetromino)
//          0x00 = OPEN
//          0x01 = CLOSED
function Level15DoorPuzzleOTetrominoState() => byte(0x1B3D32)

// $1B402E: [16-bit] [Level 12] Piston A Timer
function Level12PistonATimer() => word(0x1B402E)

// $1B406E: [16-bit] [Level 12] Piston B Timer
function Level12PistonBTimer() => word(0x1B406E)

// -----------------
// --- Variables ---
// -----------------

easy_difficulty = 0x00
normal_difficulty = 0x01
hard_difficulty = 0x02
super_difficulty = 0x03
hyper_difficulty = 0x04

level_1 = 0x00
level_2 = 0x01
level_3 = 0x03
level_4_1 = 0x04
level_4_2 = 0x05
level_5_1 = 0x06
level_5_2 = 0x07
level_6 = 0x08
level_7_1 = 0x0A
level_7_2 = 0x0B
level_8 = 0x0C
level_9_1 = 0x0D
level_9_2 = 0x0E
level_10_1 = 0x0F
level_10_2 = 0x10
level_11 = 0x12
level_12 = 0x14
level_13 = 0x15
level_14 = 0x16
level_15_1 = 0x18
level_15_transition = 0x19
level_15_2 = 0x1A
level_15_3 = 0x1B

results_level_1 = 0x01
results_level_2 = 0x02
results_level_3 = 0x03
results_level_4 = 0x04
results_level_5 = 0x05
results_level_6 = 0x06
results_level_7 = 0x07
results_level_8 = 0x08
results_level_9 = 0x09
results_level_10 = 0x0A
results_level_11 = 0x0B
results_level_12 = 0x0C
results_level_13 = 0x0D
results_level_14 = 0x0E
results_level_15 = 0x0F

// An entity is an NPC character in the game, like enemies or partner characters
entity_memory_location = 0x1B5A30 // The start of contiguous blocks of entity data (same as Player X Location)
entity_memory_size = 0x9C

entity_z_location_offset = 0x08

entity_hp_offset = 0x44

entity_state_offset = 0x46
entity_state_suspended = 0x01
entity_state_alert = 0x0A

entity_type_offset = 0x47
entity_knock_out_by_player_offset = 0x6B
entity_animation_set_offset = 0x6E
entity_activation_offset = 0x8C
entity_damaged_by_player_count_offset = 0x92 // This offset points to a value that increases each time the player damages this entity, does not increase if the entity is damaged from another source besides the player

all_entity_slots = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]

partner_jigen = 0x0A
partner_goemon = 0x0B
partner_zenigata = 0x0C
partner_lupin = 0x0D
enemy_final_boss = 0x08
enemy_spider = 0x06

animation_gun_lupin = 0x42
animation_gun_jigen = 0x54
animation_gun_dive = 0x61
animation_zantetsuken_goemon = 0x51
animation_zantetsuken_running_goemon = 0x5A

selected_item_land_mine = 0x00
selected_item_flash_grenade = 0x02
selected_item_disguise = 0x06
selected_item_ammo = 0x0B
selected_item_blue_heal = 0x0C
selected_item_gold_heal = 0x0D

// -----------------------
// --- Logic Functions ---
// -----------------------

// Converts provided number of seconds to frame time (60fps)
function Seconds(seconds) => seconds * 60

function NotInDemoMode() => never(DemoMode() == 0x01)

function PauseInDemoMode() => unless(DemoMode() == 0x01)

function GameDifficultyIs(difficulty) => GameDifficulty() == difficulty

function StartedNewGame() => prev(ProgressionFlag()) == 0x01 && ProgressionFlag() == 0x02

function InGame() => NotInDemoMode() && never(GameState() != 0x12)

function PauseIfNotInGame() => PauseInDemoMode() && unless(GameState() != 0x12)

function InSurvivalMode() => never(GameState() != 0xDC)

function InMenus() => GameState() == 0x00

function GameSaveIsLoaded() => GameState() == 0x00 && CurrentMenuScreen() == 0x08 && prev(LoadSaveTriggerFlag()) == 0x00 && LoadSaveTriggerFlag() == 0x01

function CancelNewGame() => ProgressionFlag() == 0x02 && prev(CurrentMenuScreen()) == 0x02 && CurrentMenuScreen() == 0x00

function ResetIfCancelNewGame() => never(CancelNewGame())

function ResetIfGameSaveIsLoaded() => never(GameSaveIsLoaded())

function IsTreasureCollected() => TrasureCollectedLevelFlag() == 0x03

function ClearedLevel(min_difficulty, level_id, results_level_id) => NotInDemoMode() && never(PlayerHP() == 0x00) && never(GameDifficulty() < min_difficulty) &&
              once(LevelID() == level_id) && InMenus() && prev(GameState()) == 0x12 && ResultsScreenLevelID() == results_level_id
              
function AtLevelResultsScreenNotTreasureRoom() => InMenus() && CurrentMenuScreen() == 0x09

function PlayingAsLupin() => PlayerCostume() == 0x00 || PlayerCostume() == 0x01 || PlayerCostume() == 0x02 || PlayerCostume() == 0x07
function PlayingAsJigen() => PlayerCostume() == 0x03
function PlayingAsGoemon() => PlayerCostume() == 0x04
function PlayingAsZenigata() => PlayerCostume() == 0x06

function PlayerIsPunching() => PlayerAnimationSet() == 0x2E || PlayerAnimationSet() == 0x2F ||
               PlayerAnimationSet() == 0x4D || PlayerAnimationSet() == 0x2D || PlayerAnimationSet() == 0x5B || PlayerAnimationSet() == 0x4E ||
               PlayerAnimationSet() == 0x4B || PlayerAnimationSet() == 0x38 || PlayerAnimationSet() == 0x5C

function CurrentTotalGameScore() => MostRecentClearScoreLevel1() + MostRecentClearScoreLevel2() + MostRecentClearScoreLevel3() + MostRecentClearScoreLevel4() + MostRecentClearScoreLevel5()
                                    + MostRecentClearScoreLevel6() + MostRecentClearScoreLevel7() + MostRecentClearScoreLevel8() + MostRecentClearScoreLevel9() + MostRecentClearScoreLevel10()
                                    + MostRecentClearScoreLevel11() + MostRecentClearScoreLevel12() + MostRecentClearScoreLevel13() + MostRecentClearScoreLevel14() + MostRecentClearScoreLevel15()

function EntityAddress(slot) => entity_memory_location + (entity_memory_size * slot)

// Using X location value for this check since its the value at the base entity address, and the maps are laid out so that a position of 0 would never be inbounds so it should be safe
function EntityExists(entity_address) => word(entity_address) > 0

function EntityXLocation(entity_address) => word(entity_address)
function EntityZLocation(entity_address) => word(entity_address + entity_z_location_offset)

// 0x01 if knocked out, otherwise 0x00
function EntityKnockOutByPlayerState(entity_address) => byte(entity_address + entity_knock_out_by_player_offset)

// Triggers the moment in time an entity is knocked out by the player
function EntityKnockedOutByPlayer(entity_address) => prev(EntityKnockOutByPlayerState(entity_address)) == 0x00 && EntityKnockOutByPlayerState(entity_address) == 0x01

function EntityAnimationSet(entity_address) => byte(entity_address + entity_animation_set_offset)

function EntityState(entity_address) => byte(entity_address + entity_state_offset)

function EntityActivation(entity_address) => byte(entity_address + entity_activation_offset)

function IsEntityAlert(entity_address) {
    return EntityState(entity_address) == entity_state_alert
}

function IsEntityAPartner(entity_address) {
    type = byte(entity_address + entity_type_offset)
    return type == partner_jigen || type == partner_goemon || type == partner_zenigata || type == partner_lupin
}

function IsEntity(entity_address, required_type) {
    type = byte(entity_address + entity_type_offset)
    return type == required_type
}

function IsPlayerDamagingEntity(entity_address) {
    damage_counter_address = entity_address + entity_damaged_by_player_count_offset
    return prev(byte(damage_counter_address)) < byte(damage_counter_address)
}

function IsEntityHealthDepleted(entity_address) {
    hp_address = entity_address + entity_hp_offset
    current_hp = byte(hp_address)
    // Accounting for some underflow that happens sometimes when enemy HP drops below 0
    return !(current_hp > 0x00 && current_hp < 0xF9)
}

function IsEntityHealthDepletedOnThisFrame(entity_address) {
    hp_address = entity_address + entity_hp_offset
    current_hp = byte(hp_address)
    prev_hp = prev(byte(hp_address))
    // Accounting for some underflow that happens sometimes when enemy HP drops below 0
    return (prev_hp > 0x00 && prev_hp < 0xF9) && !(current_hp > 0x00 && current_hp < 0xF9)
}

function IsFinalBossLoadedIn() => EntityExists(0x1B5B68) && IsEntity(0x1B5B68, enemy_final_boss)

function IsFinalBossHealthDepletedOnThisFrame() => IsEntityHealthDepletedOnThisFrame(0x1B5B68)

function IsPlayerDamagingAnyPartner() {
    condition_met = false
    for slot in all_entity_slots {
        address = EntityAddress(slot)
        condition_met = condition_met || (EntityExists(address) && IsEntityAPartner(address) && EntityActivation(address) != 0x23 && IsPlayerDamagingEntity(address))
    }
    return condition_met
}

function EnemiesKnockedOutInThisFrame() {
    result = []
    for slot in all_entity_slots {
        address = EntityAddress(slot)
        array_push(result, EntityExists(address) && !IsEntityAPartner(address) && IsEntityHealthDepletedOnThisFrame(address))
    }
    return result
}

function EnemiesHitInThisFrameByGun(attack_animation) {
    result = []
    for slot in all_entity_slots {
        address = EntityAddress(slot)
        array_push(result, EntityExists(address) && !IsEntityAPartner(address) && IsPlayerDamagingEntity(address) && (PlayerAnimationSet() == attack_animation || PlayerAnimationSet() == animation_gun_dive))
    }
    return result
}

function EnemiesHitInThisFrameByZantetsuken() {
    result = []
    for slot in all_entity_slots {
        address = EntityAddress(slot)
        array_push(result, EntityExists(address) && !IsEntityAPartner(address) && IsPlayerDamagingEntity(address) && (PlayerAnimationSet() == animation_zantetsuken_goemon || PlayerAnimationSet() == animation_zantetsuken_running_goemon))
    }
    return result
}

function IsAnyEnemyHealthDepleted() {
    condition_met = false
    for slot in all_entity_slots {
        address = EntityAddress(slot)
        condition_met = condition_met || (EntityExists(address) && !IsEntityAPartner(address) && IsEntityHealthDepleted(address))
    }
    return condition_met
}

function FinalBossFightAllPartnersExistAndStillAlive() {
    jigen = 0x1B5D3C
    jigen_alive = EntityExists(jigen) && IsEntity(jigen, partner_jigen) && !IsEntityHealthDepleted(jigen)
    goemon = 0x1B5DD8
    goemon_alive = EntityExists(goemon) && IsEntity(goemon, partner_goemon) && !IsEntityHealthDepleted(goemon)
    lupin = 0x1B5E74
    lupin_alive = EntityExists(lupin) && IsEntity(lupin, partner_lupin) && !IsEntityHealthDepleted(lupin)
    return jigen_alive && goemon_alive && lupin_alive
}

function AreAllEnemiesAlert() {
    condition_met = true
    for slot in all_entity_slots {
        address = EntityAddress(slot)
        valid_to_check = EntityExists(address) && !IsEntityAPartner(address)
        condition_met = condition_met && (!valid_to_check || (valid_to_check && IsEntityAlert(address)))
    }
    return condition_met
}

function SpidersCrushedOnThisFrame() {
    result = []
    for slot in all_entity_slots {
        address = EntityAddress(slot)
        array_push(result, EntityExists(address) && IsEntity(address, enemy_spider) && prev(EntityAnimationSet(address)) != 0x0E && EntityAnimationSet(address) == 0x0E && IsEntityHealthDepleted(address))
    }
    return result
}

function IsAnyEnemyAlertAndHitWithArrowTrapLevel3() {
    condition_met = false
    for slot in all_entity_slots {
        address = EntityAddress(slot)
        condition_met = condition_met || (EntityExists(address) && IsEntityAlert(address) && IsEntityHealthDepletedOnThisFrame(address) && EntityKnockOutByPlayerState(address) == 0x00)
    }
    return condition_met
}

function AreAllMainAreaEnemiesInWaterLevel10() {
    condition_met = LevelID() == level_10_1
    for slot in all_entity_slots {
        address = EntityAddress(slot)
        valid_to_check = EntityExists(address) && !IsEntityAPartner(address)
        condition_met = condition_met && (!valid_to_check || (valid_to_check && EntityZLocation(address) == 0x012B))
    }
    return condition_met
}

function AreAllTreasureRoomEnemiesInWaterLevel10() {
    condition_met = true
    for slot in all_entity_slots {
        address = EntityAddress(slot)
        // Including X position out-of-bounds check in this condition... this level seems to have an unused enemy placed out of bounds?!?!?!!?
        valid_to_check = EntityExists(address) && EntityXLocation(address) < 0x0256 && !IsEntityAPartner(address) && EntityState(address) != entity_state_suspended
        condition_met = condition_met && once(LevelID() == level_10_2 && IsTreasureCollected() && (!valid_to_check || (valid_to_check && EntityZLocation(address) == 0x012B)))
    }
    return condition_met
}

function PistonTrapReset(timer) {
    return prev(timer) == 0x00 && timer > 0x00
}

// Detects the moment when the player begins playing a level, either by first load into it or retry after having previously died
function StartOfLevel() => once(prev(GameState()) == 0x00 && GameState() == 0x12) || once(prev(PlayerHP()) == 0x00 && PlayerHP() == 0x10)

function RollingBoulderInDefaultStateLevel4() => byte(0x0068B1) == 0x00
function StartOfLevel4() => once(prev(GameState()) == 0x00 && GameState() == 0x12) || once(prev(PlayerHP()) == 0x00 && PlayerHP() == 0x10) || once(RollingBoulderInDefaultStateLevel4())

function Level2AllGlassBroken() => byte(0x0047F6) == 0x00 && byte(0x0057FE) == 0x00 && byte(0x0049AE) == 0x00 && 
              byte(0x004B0A) == 0x00 && byte(0x005E8A) == 0x00 && byte(0x00854C) == 0x00 && byte(0x013246) == 0x00 &&
              byte(0x004ED4) == 0x00 && byte(0x008554) == 0x00 && byte(0x009CFC) == 0x00 && byte(0x011E3E) == 0x00 &&
              byte(0x00F8CC) == 0x00 && byte(0x00FED4) == 0x00

function Level5KeyCollected() => once(once(prev(Level5KeyFlag()) == 0x00) && Level5KeyFlag() == 0x01)

function Level15StolePinkDiamond() => LevelID() == level_15_3 && PlayerAnimationSet() == 0x28 && PlayerYLocation() > 0x0328

// Once the player has gone higher up than the provided activate_at position, the achivement will reset if the player ever drops below the provided reset_threshold position
function OneWayZPositionCheckpointPassed(activate_at, reset_threshold) => never((once(PlayerZLocation() > 0x0100 && PlayerZLocation() <= activate_at) && PlayerZLocation() >= reset_threshold))

function ResetIfTimeExceeds(frame_time) => never(repeated(frame_time, ProgressionFlag() > 0x01))

function ResetIfTimeSpentInLevelExceeds(frame_time, level_id) => never(repeated(frame_time, LevelID() == level_id))

function ResetIfTimeAfterFirstItemUseExceeds(frame_time) => never(repeated(frame_time, GameState() == 0x12 && once(UsedItem(PlayerHeldLandMines()) || UsedItem(PlayerHeldFlashGrenades()) || UsedItem(PlayerHeldDisguises()) || UsedItem(PlayerHeldSpecialAttackAmmo()) || UsedItem(PlayerHeldGoldHealItems()) || UsedItem(PlayerHeldBlueHealItems()))))

function ItemPickedUp(item_ref) {
    item_val = dword(item_ref)
    return once(prev(item_val) > 0x00000000 && item_val == 0x00000000)
}

function UsedItem(player_held_item) {
    return prev(player_held_item) > player_held_item
}

function UsedLandMine() {
    return CurrentlySelectedItem() == selected_item_land_mine && UsedItem(PlayerHeldLandMines())
}

function UsedFlashGrenade() {
    return CurrentlySelectedItem() == selected_item_flash_grenade && UsedItem(PlayerHeldFlashGrenades())
}

function UsedDisguise() {
    return CurrentlySelectedItem() == selected_item_disguise && UsedItem(PlayerHeldDisguises())
}

function UsedSpecialAttackAmmo() {
    return CurrentlySelectedItem() == selected_item_ammo && UsedItem(PlayerHeldSpecialAttackAmmo())
}

function UsedBlueHealItem() {
    return CurrentlySelectedItem() == selected_item_blue_heal && UsedItem(PlayerHeldBlueHealItems())
}

function UsedGoldHealItem() {
    return CurrentlySelectedItem() == selected_item_gold_heal && UsedItem(PlayerHeldGoldHealItems())
}

// --------------------
// --- Achievements ---
// --------------------

// For level clear achievements, the level ID used should always be the part of the level that contains the exit teleporter
achievement(
    title = "The Return of Lupin the Third", points = 1,
    description = "Clear Level 1: Pyramid Entrance on Normal difficulty or higher",
    id = 350710, badge = "411214", published = "8/30/2023 1:49:07 AM", modified = "10/19/2023 12:52:55 AM",
    trigger = ClearedLevel(normal_difficulty, level_1, results_level_1)
)

achievement(
    title = "So This Is Where Dick Clark Lives", points = 1,
    description = "Clear Level 2: Underground Fortress on Normal difficulty or higher",
    id = 353504, badge = "411215", published = "9/4/2023 10:13:00 PM", modified = "10/19/2023 12:52:57 AM",
    trigger = ClearedLevel(normal_difficulty, level_2, results_level_2)
)

achievement(
    title = "The Friggin’ Grave Robbers Here Had It Made", points = 1,
    description = "Clear Level 3: Desert Tower on Normal difficulty or higher",
    id = 350711, badge = "411216", published = "8/30/2023 1:54:57 AM", modified = "10/19/2023 12:52:59 AM",
    trigger = ClearedLevel(normal_difficulty, level_3, results_level_3)
)

achievement(
    title = "What, Are You Gonna Climb Mt. Everest or Something?", points = 2,
    description = "Clear Level 4: Mountain Fortress on Normal difficulty or higher",
    id = 353858, badge = "411217", published = "9/6/2023 1:58:13 AM", modified = "10/19/2023 12:53:00 AM",
    trigger = ClearedLevel(normal_difficulty, level_4_1, results_level_4)
)

achievement(
    title = "Do They Replace All Those Pillars Every Time Someone Comes Here?", points = 2,
    description = "Clear Level 5: Ancient Ruins on Normal difficulty or higher",
    id = 353859, badge = "411218", published = "9/6/2023 2:06:51 AM", modified = "10/19/2023 12:53:03 AM",
    trigger = ClearedLevel(normal_difficulty, level_5_1, results_level_5)
)

achievement(
    title = "I’d Actually Rather Be in Disneyland", points = 2,
    description = "Clear Level 6: Valley Fortress on Normal difficulty or higher",
    id = 353860, badge = "411219", published = "9/6/2023 2:12:46 AM", modified = "10/19/2023 12:53:06 AM",
    trigger = ClearedLevel(normal_difficulty, level_6, results_level_6)
)

achievement(
    title = "It’s Time for a Round of Big Bang Boomerang", points = 3,
    description = "Clear Level 7: Jungle Temple on Normal difficulty or higher",
    id = 354172, badge = "411220", published = "9/8/2023 12:23:30 AM", modified = "10/19/2023 12:53:08 AM",
    trigger = ClearedLevel(normal_difficulty, level_7_1, results_level_7)
)

achievement(
    title = "I Think the Jungle’s Getting to Him", points = 3,
    description = "Clear Level 8: Botanical Research Institute on Normal difficulty or higher",
    id = 354173, badge = "411221", published = "9/8/2023 12:29:33 AM", modified = "10/19/2023 12:53:09 AM",
    trigger = ClearedLevel(normal_difficulty, level_8, results_level_8)
)

achievement(
    title = "Dammit, This Is Very Mysterious, and I Hate Mysteries!", points = 3,
    description = "Clear Level 9: Jungle Watchtower on Normal difficulty or higher",
    id = 354175, badge = "411222", published = "9/8/2023 1:25:54 AM", modified = "10/19/2023 12:53:10 AM",
    trigger = ClearedLevel(normal_difficulty, level_9_2, results_level_9)
)

achievement(
    title = "One of Those Three Hour Tours You Hear About on Nick at Nite", points = 4,
    description = "Clear Level 10: Artificial Island on Normal difficulty or higher",
    id = 354497, badge = "411223", published = "9/9/2023 12:16:05 AM", modified = "10/19/2023 12:53:11 AM",
    trigger = ClearedLevel(normal_difficulty, level_10_1, results_level_10)
)

achievement(
    title = "Breaking In? I Prefer to Call It \"Dropping By\"", points = 4,
    description = "Clear Level 11: Water Quality Control Center on Normal difficulty or higher",
    id = 354498, badge = "411224", published = "9/9/2023 12:33:16 AM", modified = "10/19/2023 12:53:13 AM",
    trigger = ClearedLevel(normal_difficulty, level_11, results_level_11)
)

achievement(
    title = "This’d Be Really Homey if I Were a Spider or a Corpse", points = 4,
    description = "Clear Level 12: Undersea Base on Normal difficulty or higher",
    id = 354499, badge = "411225", published = "9/9/2023 12:48:44 AM", modified = "10/19/2023 12:53:14 AM",
    trigger = ClearedLevel(normal_difficulty, level_12, results_level_12)
)

achievement(
    title = "Don’t Blame Yourselves, the Vault’s All Mine!", points = 5,
    description = "Clear Level 13: Genetics Laboratory on Normal difficulty or higher",
    id = 354503, badge = "411226", published = "9/9/2023 1:20:28 AM", modified = "10/19/2023 12:53:16 AM",
    trigger = ClearedLevel(normal_difficulty, level_13, results_level_13)
)

achievement(
    title = "They’re Like Damn Cockroaches!", points = 5,
    description = "Clear Level 14: Power Reactor on Normal difficulty or higher",
    id = 345652, badge = "411227", published = "8/16/2023 1:32:24 AM", modified = "10/19/2023 12:53:17 AM",
    trigger = ClearedLevel(normal_difficulty, level_14, results_level_14)
)

achievement(
    title = "King Lupin the Third", points = 25,
    description = "Clear Level 15: Power Center on Normal difficulty or higher and successfully steal the pink diamond",
    id = 354509, badge = "411228", published = "9/9/2023 3:10:45 AM", modified = "10/19/2023 12:53:18 AM",
    trigger = ClearedLevel(normal_difficulty, level_15_3, results_level_15)
)

achievement(
    title = "He Has All the Subtly and Nuance of an Electrocuted Baboon", points = 0,
    description = "Miss the last jump and get electrocuted in Level 1",
    id = 348926, badge = "411229", published = "8/26/2023 8:51:57 PM", modified = "10/19/2023 12:53:19 AM",
    trigger = InGame() && PlayerHP() == 0x00 && LevelID() == level_1 && 
              PlayerAnimationSet() == 0x27 && PlayerZLocation() > 0xFF40
)

achievement(
    title = "A String of Crimes Longer Than That Chin of Yours", points = 3,
    description = "Break every pane of glass in Level 2",
    id = 346839, badge = "411230", published = "8/22/2023 2:20:27 AM", modified = "10/21/2023 8:52:15 PM",
    trigger = InGame() && never(PlayerHP() == 0x00) && never(LevelID() != level_2) && Level2AllGlassBroken()
)

achievement(
    title = "Ya Any Good at Darts?", points = 4,
    description = "Alert an enemy and then lure them into getting knocked out with an arrow trap in Level 3",
    id = 357455, badge = "411231", published = "9/21/2023 10:54:01 PM", modified = "10/19/2023 12:53:21 AM",
    trigger = InGame() && never(PlayerHP() == 0x00) && never(LevelID() != level_3) && trigger_when(IsAnyEnemyAlertAndHitWithArrowTrapLevel3())
)

achievement(
    title = "Punks Thought They Were Dealing With Amateurs", points = 5,
    description = "Climb to the top of the mountain without ever falling back down to a previous section in Level 4",
    id = 354689, badge = "411232", published = "9/9/2023 10:41:36 PM", modified = "10/19/2023 12:53:23 AM",
    trigger = InGame() && never(LevelID() != level_4_1) && never(PlayerHP() == 0) && StartOfLevel4() && once(PlayerZLocation() > 0xFFF0) &&
              OneWayZPositionCheckpointPassed(0xFFB2, 0xFFCD) && OneWayZPositionCheckpointPassed(0xFEFD, 0xFF1C) &&
              OneWayZPositionCheckpointPassed(0xFE9A, 0xFEAB) && OneWayZPositionCheckpointPassed(0xFE0E, 0xFE34) &&
              OneWayZPositionCheckpointPassed(0xFDBB, 0xFDED) &&
              trigger_when(PlayerZLocation() > 0x0100 && PlayerZLocation() < 0xFD88)
)

achievement(
    title = "Hey, I Wonder What Gas Station They Stole This Key From", points = 5,
    description = "Get the key to the temple within 2 minutes and 10 seconds from starting in Level 5",
    id = 354699, badge = "411233", published = "9/9/2023 11:51:09 PM", modified = "10/19/2023 12:53:24 AM",
    trigger = InGame() && never(PlayerHP() == 0x00) && once(PlayerHP() == 0x10) && LevelID() == level_5_1 && StartOfLevel() &&
              ResetIfTimeSpentInLevelExceeds(Seconds(130), level_5_1) && unless(GamePaused() > 0x00) && trigger_when(Level5KeyCollected())
)

achievement(
    title = "Holy Humpty Mc-Dumpty", points = 3,
    description = "Knock out an unaware enemy with the pillar trap in Level 6",
    id = 346234, badge = "411234", published = "8/19/2023 2:17:29 AM", modified = "10/19/2023 12:53:25 AM",
    trigger = InGame() && never(PlayerHP() == 0x00) && never(LevelID() != level_6) && never(EntityKnockOutByPlayerState(EntityAddress(2)) == 0x00) &&
              never(Level6PillarRollingState() == 65426) && never(Level6PillarRollingState() == 65052) && EntityKnockedOutByPlayer(EntityAddress(2)) &&
              Level6PillarRollingState() < 65172 && Level6PillarRollingState() > 65132
)

achievement(
    title = "The Old Exploding-Bear-Trap-In-The-Ass Trick", points = 3,
    description = "Knock out a giant cat using a land mine in Level 7",
    id = 348928, badge = "411235", published = "8/26/2023 10:24:18 PM", modified = "10/19/2023 12:53:26 AM",
    trigger = InGame() && never(PlayerHP() == 0) && LevelID() == level_7_2 &&
              ((trigger_when(EntityAnimationSet((EntityAddress(0))) == 0x18)) || (trigger_when(EntityAnimationSet((EntityAddress(1))) == 0x18)))
)

achievement(
    title = "I’m Good Through, Well, Pretty Much the Rest of My Friggin’ Life", points = 5,
    description = "Stay on the conveyor belt without falling off for 3 minutes straight in Level 8",
    id = 346499, badge = "411236", published = "8/21/2023 1:08:47 AM", modified = "10/21/2023 8:53:46 PM",
    trigger = InGame() && never(PlayerHP() == 0) && LevelID() == level_8 &&
              unless(GamePaused() > 0) && never((PlayerXLocation() > 607 || PlayerXLocation() < 571)) && 
              never((PlayerYLocation() < 743 || PlayerYLocation() > 1139)) && never(PlayerZLocation() > 65498) && 
              trigger_when(repeated(Seconds(180), LevelID() == level_8))
)

achievement(
    title = "You Just Keep Diddling Your Damn Riddle!", points = 2,
    description = "Solve the door puzzle and then reset it before entering the watchtower in Level 9",
    id = 355158, badge = "411237", published = "9/11/2023 11:24:09 PM", modified = "10/19/2023 12:53:29 AM",
    trigger = InGame() && never(LevelID() != level_9_1) && never(PlayerHP() == 0x00) && StartOfLevel() &&
              trigger_when((prev(Level9PuzzleDoorState()) == 0x04 && Level9PuzzleDoorState() == 0x00))
)

achievement(
    title = "Eins! Zwei! Drei! ...And Whatever the Hell Four Is in German!", points = 10,
    description = "Drop all enemies into the water in a single run of the level in Level 10",
    id = 357897, badge = "411238", published = "9/24/2023 2:11:50 AM", modified = "10/19/2023 12:53:30 AM",
    trigger = InGame() && never(LevelID() != level_10_1 && LevelID() != level_10_2) && never(PlayerHP() == 0x00) &&
              trigger_when(AreAllTreasureRoomEnemiesInWaterLevel10() && AreAllMainAreaEnemiesInWaterLevel10())
)

achievement(
    title = "The \"Lupin Run\"", points = 4,
    description = "Begin running down the top slope and don't stop until reaching the very bottom of the level in Level 11",
    id = 347191, badge = "411239", published = "8/23/2023 12:44:17 AM", modified = "10/19/2023 12:53:31 AM",
    trigger = InGame() && never(PlayerHP() == 0x00) && never(LevelID() != level_11) &&
               never((PlayerAnimationSet() != 0x3A && PlayerAnimationSet() != 0x08)) && once(PlayerZLocation() < 64275 &&
               PlayerAnimationSet() == 0x08) && PlayerZLocation() > 65509
)

achievement(
    title = "Either I’m Loaded, or the Ceiling’s Getting Lower", points = 5,
    description = "Crush two spiders at the same time with a piston trap in Level 12",
    id = 362140, badge = "411240", published = "10/8/2023 12:36:07 AM", modified = "10/19/2023 12:53:32 AM",
    trigger = InGame() && never(LevelID() != level_12) && never(PlayerHP() == 0x00) &&
              never(PistonTrapReset(Level12PistonATimer())) && never(PistonTrapReset(Level12PistonBTimer())) && tally(2, SpidersCrushedOnThisFrame())
)

achievement(
    title = "He Thrives on Chaos!", points = 10,
    description = "Have every single enemy in an alert state at the same time after collecting the treasure in Level 13",
    id = 357899, badge = "411241", published = "9/24/2023 3:08:44 AM", modified = "10/19/2023 12:53:36 AM",
    trigger = InGame() && never(LevelID() != level_13) && never(PlayerHP() == 0x00) && never(!IsTreasureCollected()) &&
              never(IsAnyEnemyHealthDepleted()) && trigger_when(AreAllEnemiesAlert())
)

achievement(
    title = "Don’t Turn Around!", points = 10,
    description = "Knock out 5 enemies after using a single flash grenade before it's effect wears off in Level 14",
    id = 358173, badge = "411242", published = "9/24/2023 4:52:36 PM", modified = "10/19/2023 12:53:38 AM",
    trigger = InGame() && never(LevelID() != level_14) && never(PlayerHP() == 0x00) && never(FlashGrenadeTimer() == 0x00) &&
              never(prev(FlashGrenadeTimer()) < FlashGrenadeTimer()) && tally(5, EnemiesKnockedOutInThisFrame())
)

achievement(
    title = "They Just Helped Us Help Ourselves", points = 5,
    description = "Open all four tetromino puzzle doors in a single run of the level in Level 15",
    id = 366004, badge = "412051", published = "10/21/2023 8:48:06 PM", modified = "10/21/2023 8:48:06 PM",
    trigger = InGame() && never(LevelID() != level_15_2) && never(PlayerHP() == 0x00) &&
              trigger_when(once(Level15DoorPuzzleState() == 0x01 && Level15DoorPuzzleJTetrominoState() == 0x00) &&
              once(Level15DoorPuzzleState() == 0x01 && Level15DoorPuzzleTTetrominoState() == 0x00) &&
              once(Level15DoorPuzzleState() == 0x01 && Level15DoorPuzzleSTetrominoState() == 0x00) &&
              once(Level15DoorPuzzleState() == 0x01 && Level15DoorPuzzleOTetrominoState() == 0x00))
)

achievement(
    title = "And Not Just Shot, but Shot! And Then Shot a Couple More Times!", points = 5,
    description = "In a single session, play as Lupin and hit enemies with gunshots from his Walther P38 a total of 15 times (excludes Survival Mode)",
    id = 358249, badge = "411244", published = "9/25/2023 1:10:34 AM", modified = "10/19/2023 12:53:40 AM",
    trigger = PauseIfNotInGame() && never(!PlayingAsLupin()) && measured(tally(15, EnemiesHitInThisFrameByGun(animation_gun_lupin)), always_true())
)

achievement(
    title = "Show’s Over, Eat Lead", points = 5,
    description = "In a single session, play as Jigen and hit enemies with gunshots from his revolver a total of 15 times (excludes Survival Mode)",
    id = 358251, badge = "411245", published = "9/25/2023 1:40:33 AM", modified = "10/19/2023 12:53:41 AM",
    trigger = PauseIfNotInGame() && never(!PlayingAsJigen()) && measured(tally(15, EnemiesHitInThisFrameByGun(animation_gun_jigen)), always_true())
)

achievement(
    title = "Once Again, I’ve Cut Another Worthless Object", points = 5,
    description = "In a single session, play as Goemon and hit enemies with the Zantetsuken's blade a total of 15 times (excludes Survival Mode)",
    id = 359063, badge = "411246", published = "9/27/2023 12:00:26 AM", modified = "10/19/2023 12:53:41 AM",
    trigger = PauseIfNotInGame() && never(!PlayingAsGoemon()) && measured(tally(15, EnemiesHitInThisFrameByZantetsuken()), always_true())
)

achievement(
    title = "Allergic to Death", points = 4,
    description = "With 1 HP remaining, heal yourself completely using a gold healing item (excludes Survival Mode)",
    id = 347600, badge = "411247", published = "8/24/2023 12:33:58 AM", modified = "10/19/2023 12:53:42 AM",
    trigger = InGame() && once(PlayerHP() == 0x01) && never((PlayerHP() > 0x01 && PlayerHP() < 0x10)) &&
              (prev(PlayerHeldGoldHealItems()) - PlayerHeldGoldHealItems()) == 0x01
)

achievement(
    title = "A Conman Is a Better Actor Than an Actor Is a Conman", points = 3,
    description = "In a single session, spend a total of at least 60 seconds in various disguises",
    id = 361123, badge = "411248", published = "10/3/2023 10:39:59 PM", modified = "10/19/2023 12:53:43 AM",
    trigger = GameState() == 0x12 && repeated(Seconds(60), DisguiseStatus() == 0x01)
)

achievement(
    title = "The Problem Is, He Watches Too Many Damn Cartoons", points = 3,
    description = "Walk across electrified terrain using the rubber boots",
    id = 354505, badge = "411249", published = "9/9/2023 1:25:43 AM", modified = "10/19/2023 12:53:43 AM",
    trigger = InGame() && never(PlayerHP() == 0x00) && PlayerRubberBootsFlag() == 0x01 &&
              PlayerOverElectricFloorFlag() == 0x04 &&
              ((LevelID() == level_6 && PlayerZLocation() == 65535) ||
               (LevelID() == level_12 && PlayerZLocation() == 65526) ||
               (LevelID() == level_13 && PlayerZLocation() == 65455))
)

achievement(
    title = "I Just Love It When Our Victims Are Punctual", points = 5,
    description = "In a single Survival Mode run, place a total of 5 land mines",
    id = 361126, badge = "411250", published = "10/3/2023 11:41:59 PM", modified = "10/21/2023 8:56:53 PM",
    trigger = InSurvivalMode() && never(SurvivalModePlayerHealth() == 0x00) && repeated(5, prev(SurvivalModeLandMinesHeld()) > SurvivalModeLandMinesHeld())
)

achievement(
    title = "It’s Torture! Get Me Some Asprin!", points = 5,
    description = "In a single Survival Mode run, use a total of 5 flash grenades",
    id = 361125, badge = "411251", published = "10/3/2023 11:33:18 PM", modified = "10/21/2023 8:57:00 PM",
    trigger = InSurvivalMode() && never(SurvivalModePlayerHealth() == 0x00) && repeated(5, prev(SurvivalModeFlashGrenadesHeld()) > SurvivalModeFlashGrenadesHeld())
)

achievement(
    title = "I Always Wanted to Master the Funky Pharaoh", points = 5,
    description = "In a single session, dodge enemy attacks a total of 15 times (excludes Survival Mode)",
    id = 355176, badge = "411252", published = "9/12/2023 12:23:01 AM", modified = "10/19/2023 12:53:45 AM",
    trigger = measured(repeated(15, ((((DemoMode() == 0x00 && GameState() == 0x12 && PlayerHP() > 0x00 && prev(PlayerAnimationSet()) == 0x20 &&
              PlayerAnimationSet() != 0x20) || prev(PlayerAnimationSet()) == 0x21) && PlayerAnimationSet() != 0x21) ||
              prev(PlayerAnimationSet()) == 0x22) && PlayerAnimationSet() != 0x22), always_true(), "raw")
)

achievement(
    title = "Floating Through the Air Like Pixies", points = 2,
    description = "Avoid falling by swimming through the air",
    id = 346465, badge = "411253", published = "8/20/2023 6:52:10 PM", modified = "10/21/2023 8:58:54 PM",
    trigger = InGame() && never((prev(PlayerAnimationSet()) == 86 || prev(PlayerAnimationSet()) == 83 ||
               prev(PlayerAnimationSet()) == 0x5F || prev(PlayerAnimationSet()) == 0x00)) && once(PlayerAnimationSet() == 0x16) &&
              ((prev(PlayerAnimationSet()) == 0x11 && (PlayerAnimationSet() == 0x56 || PlayerAnimationSet() == 0x53 || PlayerAnimationSet() == 0x5F || PlayerAnimationSet() == 0x00)) ||
               (once(PlayerAnimationSet() == 0x11) && once(PlayerAnimationSet() == 0x32) && prev(PlayerAnimationSet()) == 0x33 && 
                (PlayerAnimationSet() == 0x56 || PlayerAnimationSet() == 0x53 || PlayerAnimationSet() == 0x5F || PlayerAnimationSet() == 0x00)) ||
               (once(PlayerAnimationSet() == 0x11) && once(PlayerAnimationSet() == 0x35) && prev(PlayerAnimationSet()) == 0x36 && 
                (PlayerAnimationSet() == 0x56 || PlayerAnimationSet() == 0x53 || PlayerAnimationSet() == 0x5F || PlayerAnimationSet() == 0x00)))
)

achievement(
    title = "Those’ll Kill Ya... Gimme One", points = 1,
    description = "Take a 3 minute smoke break",
    id = 346484, badge = "411254", published = "8/21/2023 12:08:18 AM", modified = "10/19/2023 12:53:46 AM",
    trigger = InGame() && never(PlayerAnimationSet() != 0x03) && 
              unless(GamePaused() > 0) && trigger_when(repeated(Seconds(180), PlayerAnimationSet() == 0x03))
)

achievement(
    title = "Friggin' Lupin", points = 2,
    description = "Play as Lupin and land a punch on one of your partners",
    id = 354507, badge = "411255", published = "9/9/2023 2:31:26 AM", modified = "10/21/2023 8:59:03 PM",
    trigger = InGame() && PlayingAsLupin() && PlayerIsPunching() && IsPlayerDamagingAnyPartner()
)

achievement(
    title = "The Guy’s Possessed, He Could Probably Bench Press Shaq", points = 25,
    description = "Clear Survival Mode as Lupin in less than 25 minutes on Hard difficulty",
    id = 360746, badge = "411256", published = "10/3/2023 12:19:54 AM", modified = "10/19/2023 12:53:47 AM",
    trigger = InSurvivalMode() && never(SurvivalModeTimer() == 0x00) && never(SurvivalModePlayerHealth() == 0x00) &&
              GameDifficulty() == hard_difficulty && PlayingAsLupin() && never(SurvivalModeTimer() >= 30000) && once(prev(SurvivalModeTimer()) == 0 && SurvivalModeTimer() == 1) &&
              trigger_when(once(prev(SurvivalModeRound()) == 0x01) && once(prev(SurvivalModeRound()) == 0x3A) && SurvivalModeRound() == 0x3B && SurvivalModeEnemyCount() == 0x00)
)

achievement(
    title = "Gettin’ Jigen With It", points = 10,
    description = "Clear Survival Mode as Jigen in less than 7 minutes on Easy difficulty",
    id = 360728, badge = "411257", published = "10/2/2023 11:29:21 PM", modified = "10/19/2023 12:53:48 AM",
    trigger = InSurvivalMode() && never(SurvivalModeTimer() == 0x00) && never(SurvivalModePlayerHealth() == 0x00) &&
              GameDifficulty() == easy_difficulty && PlayingAsJigen() && never(SurvivalModeTimer() >= 8400) && once(prev(SurvivalModeTimer()) == 0 && SurvivalModeTimer() == 1) &&
              trigger_when(once(prev(SurvivalModeRound()) == 0x01) && once(prev(SurvivalModeRound()) == 0x26) && SurvivalModeRound() == 0x27 && SurvivalModeEnemyCount() == 0x00)
)

achievement(
    title = "GOEMON ISHIKAWA IS IN THE HOUSE!!!", points = 25,
    description = "Clear Survival Mode as Goemon in less than 15 minutes on Normal difficulty",
    id = 346458, badge = "411258", published = "8/20/2023 5:16:30 PM", modified = "10/19/2023 12:53:48 AM",
    trigger = InSurvivalMode() && never(SurvivalModeTimer() == 0x00) && never(SurvivalModePlayerHealth() == 0x00) &&
              GameDifficulty() == normal_difficulty && PlayingAsGoemon() && never(SurvivalModeTimer() >= 18000) && once(prev(SurvivalModeTimer()) == 0 && SurvivalModeTimer() == 1) &&
              trigger_when(once(prev(SurvivalModeRound()) == 0x01) && once(prev(SurvivalModeRound()) == 0x26) && SurvivalModeRound() == 0x27 && SurvivalModeEnemyCount() == 0x00)
)

achievement(
    title = "A Three-Minute Egg Must Boil for Three Minutes", points = 10,
    description = "Play as Goemon and collect all 6 items in less than 3 minutes in Level 3",
    id = 364399, badge = "411259", published = "10/15/2023 9:33:19 PM", modified = "10/19/2023 12:53:49 AM",
    trigger = InGame() && PlayingAsGoemon() && never(LevelID() != level_3) && once(PlayerHP() == 0x10) && StartOfLevel() && never(PlayerHP() == 0x00) &&
              ResetIfTimeSpentInLevelExceeds(Seconds(180), level_3) && unless(GamePaused() > 0x00) &&
              trigger_when(ItemPickedUp(0x1B3B64) && ItemPickedUp(0x1B3B6C) && ItemPickedUp(0x1B3B70) && ItemPickedUp(0x1B3B74) && ItemPickedUp(0x1B3B78) && ItemPickedUp(0x1B3B7C))
)

achievement(
    title = "I Would Have to Say He Dug up the Treasure and Hid It in His Ass", points = 10,
    description = "Play as Goemon and collect the treasure without alerting any of the enemies in Level 4",
    id = 364778, badge = "411260", published = "10/17/2023 1:08:10 AM", modified = "10/19/2023 12:53:49 AM",
    trigger = InGame() && PlayingAsGoemon() && never(LevelID() != level_4_1 && LevelID() != level_4_2) && never(PlayerHP() == 0x00) &&
              never(TimesSpottedByUniqueEnemiesInGame() > 0x00) &&
              trigger_when(prev(TrasureCollectedLevelFlag()) == 0x00 && TrasureCollectedLevelFlag() == 0x03)
)

achievement(
    title = "Inspector Origami", points = 1,
    description = "Play as Zenigata and get crushed by a piston trap in Level 12",
    id = 345747, badge = "411262", published = "8/17/2023 2:11:34 AM", modified = "10/19/2023 12:53:50 AM",
    trigger = InGame() && PlayingAsZenigata() && never(LevelID() != level_12) && never(prior(PlayerHP()) == 0x00) &&
              PlayerHP() == 0x00 && PlayerAnimationSet() == 0x07
)

achievement(
    title = "Temporary Interim Alliance Agreement", points = 10,
    description = "Play as Zenigata and defeat the final boss in Level 15 after having freed Lupin, Jigen, and Goemon and having them all survive the final boss fight on Hard difficulty",
    id = 360311, badge = "411261", published = "10/1/2023 10:34:00 PM", modified = "10/19/2023 12:53:50 AM",
    trigger = InGame() && PlayingAsZenigata() && GameDifficultyIs(hard_difficulty) && never(LevelID() != level_15_3) && never(!IsFinalBossLoadedIn()) && FinalBossFightAllPartnersExistAndStillAlive() &&
              trigger_when(IsFinalBossHealthDepletedOnThisFrame())
)

achievement(
    title = "I Bet They Don’t Have Problems With Drunk Drivers Around Here", points = 10,
    description = "Reach the control room after crossing the moving bridge in Level 15 on Hyper difficulty",
    id = 358195, badge = "411243", published = "9/24/2023 5:36:08 PM", modified = "10/21/2023 9:00:34 PM",
    trigger = InGame() && never(LevelID() != level_15_1 && LevelID() != level_15_transition && LevelID() != level_15_2)  && GameDifficultyIs(hyper_difficulty) &&
              once(LevelID() == level_15_1) && trigger_when(LevelID() == level_15_2)
)

achievement(
    title = "Lemme Check My Wallet", points = 5,
    description = "Use 3 different items from your inventory within a span of 5 seconds (excludes Survival Mode)",
    id = 364434, badge = "411263", published = "10/16/2023 12:44:01 AM", modified = "10/19/2023 2:12:25 AM",
    trigger = InGame() && never(PlayerHP() == 0x00) && never(word(0x191358) != 0xe200) && ResetIfTimeAfterFirstItemUseExceeds(Seconds(5)) && unless(GamePaused() > 0x00) &&
              ((once(UsedLandMine()) && once(UsedFlashGrenade()) && once(UsedDisguise())) ||
              (once(UsedLandMine()) && once(UsedFlashGrenade()) && once(UsedSpecialAttackAmmo())) ||
              (once(UsedLandMine()) && once(UsedFlashGrenade()) && once(UsedBlueHealItem())) ||
              (once(UsedLandMine()) && once(UsedFlashGrenade()) && once(UsedGoldHealItem())) ||
              (once(UsedLandMine()) && once(UsedDisguise()) && once(UsedSpecialAttackAmmo())) ||
              (once(UsedLandMine()) && once(UsedDisguise()) && once(UsedBlueHealItem())) ||
              (once(UsedLandMine()) && once(UsedDisguise()) && once(UsedGoldHealItem())) ||
              (once(UsedLandMine()) && once(UsedSpecialAttackAmmo()) && once(UsedBlueHealItem())) ||
              (once(UsedLandMine()) && once(UsedSpecialAttackAmmo()) && once(UsedGoldHealItem())) ||
              (once(UsedLandMine()) && once(UsedBlueHealItem()) && once(UsedGoldHealItem())) ||
              (once(UsedFlashGrenade()) && once(UsedDisguise()) && once(UsedSpecialAttackAmmo())) ||
              (once(UsedFlashGrenade()) && once(UsedDisguise()) && once(UsedBlueHealItem())) ||
              (once(UsedFlashGrenade()) && once(UsedDisguise()) && once(UsedGoldHealItem())) ||
              (once(UsedFlashGrenade()) && once(UsedSpecialAttackAmmo()) && once(UsedBlueHealItem())) ||
              (once(UsedFlashGrenade()) && once(UsedSpecialAttackAmmo()) && once(UsedGoldHealItem())) ||
              (once(UsedFlashGrenade()) && once(UsedBlueHealItem()) && once(UsedGoldHealItem())) ||
              (once(UsedDisguise()) && once(UsedSpecialAttackAmmo()) && once(UsedBlueHealItem())) ||
              (once(UsedDisguise()) && once(UsedSpecialAttackAmmo()) && once(UsedGoldHealItem())) ||
              (once(UsedDisguise()) && once(UsedBlueHealItem()) && once(UsedGoldHealItem())) ||
              (once(UsedSpecialAttackAmmo()) && once(UsedBlueHealItem()) && once(UsedGoldHealItem())))
)

achievement(
    title = "Red’s Probably Not the Best Color for Being Inconspicuous", points = 5,
    description = "Play as Part I Lupin or Part III Lupin and complete any level without alerting a single enemy",
    id = 361369, badge = "411264", published = "10/5/2023 12:30:54 AM", modified = "10/19/2023 12:53:51 AM",
    trigger = (PlayerCostume() == 0x00 || PlayerCostume() == 0x02 ) && AtLevelResultsScreenNotTreasureRoom() && ResultsScreenTimesAlertedEnemies() == 0
)

achievement(
    title = "Dammit, I'm Good", points = 10,
    description = "Achieve a perfect score of 100 in any level on Hyper difficulty",
    id = 360041, badge = "411265", published = "10/1/2023 1:53:50 AM", modified = "10/19/2023 12:53:52 AM",
    trigger = AtLevelResultsScreenNotTreasureRoom() && GameDifficulty() == hyper_difficulty && ResultsScreenTotalScore() == 100
)

achievement(
    title = "Are We Too Career-Oriented?", points = 25,
    description = "After clearing a level, have a current combined total score of 1400 or more across all levels",
    id = 360312, badge = "411266", published = "10/1/2023 10:38:26 PM", modified = "10/19/2023 12:53:52 AM",
    trigger = GameState() == 0x00 && measured(CurrentTotalGameScore() >= 1400, ProgressionFlag() > 0x02, "raw") && prev(CurrentMenuScreen()) == 0x09 && (CurrentMenuScreen() == 0x06 || CurrentMenuScreen() == 0x07)
)

achievement(
    title = "Exceeding the Speed Limit", points = 50,
    description = "Begin a New Game and complete a single-segment speedrun in under 1 hour, with any character, on any difficulty",
    id = 359320, badge = "411267", published = "9/28/2023 12:11:27 AM", modified = "10/19/2023 12:53:53 AM",
    trigger = once(StartedNewGame()) && ResetIfTimeExceeds(Seconds(3600)) && never(ProgressionFlag() < 0x02) && ResetIfCancelNewGame() && ResetIfGameSaveIsLoaded() &&
              trigger_when(Level15StolePinkDiamond())
)

// --------------------
// --- Leaderboards ---
// --------------------

function LeaderboardSurvivalModeComplete(difficulty) {
    prereq = InSurvivalMode() && GameDifficulty() == difficulty && SurvivalModePlayerHealth() > 0x00 && SurvivalModeEnemyCount() == 0x00
    if(difficulty == easy_difficulty || difficulty == normal_difficulty) {
        prereq = prereq && SurvivalModeRound() == 0x27
    } else if(difficulty == hard_difficulty) {
        prereq = prereq && SurvivalModeRound() == 0x3B
    }
    return prereq
}

function SurvivalModeTimerInMilliseconds() => (SurvivalModeTimer() * 100) / 20

leaderboard(
    title = "Single-Segment Speedrun (Normal Difficulty, Lupin Only)",
    description = "Fastest time for starting a new game and beating it in a single session, playing as Lupin on Normal Difficulty",
    start = StartedNewGame(),
    cancel = CancelNewGame() || GameSaveIsLoaded() || GameDifficulty() != normal_difficulty || !PlayingAsLupin() || ProgressionFlag() < 0x02,
    submit = Level15StolePinkDiamond(),
    value = measured(tally(0, ProgressionFlag() > 0x01)),
    format = "FRAMES",
    lower_is_better = true,
    id = 79076
)

leaderboard(
    title = "Survival Mode (Easy Difficulty)",
    description = "Fastest time on Survival Mode, Easy difficulty, playing as any character of your choosing",
    start = LeaderboardSurvivalModeComplete(easy_difficulty),
    cancel = GameState() != 0xDC,
    submit = LeaderboardSurvivalModeComplete(easy_difficulty),
    value = SurvivalModeTimerInMilliseconds(),
    format = "MILLISECS",
    lower_is_better = true,
    id = 78944
)

leaderboard(
    title = "Survival Mode (Normal Difficulty)",
    description = "Fastest time on Survival Mode, Normal difficulty, playing as any character of your choosing",
    start = LeaderboardSurvivalModeComplete(normal_difficulty),
    cancel = GameState() != 0xDC,
    submit = LeaderboardSurvivalModeComplete(normal_difficulty),
    value = SurvivalModeTimerInMilliseconds(),
    format = "MILLISECS",
    lower_is_better = true,
    id = 78945
)

leaderboard(
    title = "Survival Mode (Hard Difficulty)",
    description = "Fastest time on Survival Mode, Hard difficulty, playing as any character of your choosing",
    start = LeaderboardSurvivalModeComplete(hard_difficulty),
    cancel = GameState() != 0xDC,
    submit = LeaderboardSurvivalModeComplete(hard_difficulty),
    value = SurvivalModeTimerInMilliseconds(),
    format = "MILLISECS",
    lower_is_better = true,
    id = 78946
)