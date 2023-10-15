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

// $19F8A1: [8-bit] Whether or not the player currently has the rubber boots
//          0x00 = Does not have rubber boots
//          0x01 = Has rubber boots
function PlayerRubberBootsFlag() => byte(0x19F8A1)

// $19F8A8: [8-bit] Current number of gold healing items held by the player
function PlayerHeldGoldHealItems() => byte(0x19F8A8)

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
        condition_met = condition_met || (EntityExists(address) && IsEntityAPartner(address) && IsPlayerDamagingEntity(address))
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

function Level2AllGlassBroken() => byte(0x0047F6) == 0x00 && byte(0x0057FE) == 0x00 && byte(0x0049AE) == 0x00 && 
              byte(0x004B0A) == 0x00 && byte(0x005E8A) == 0x00 && byte(0x00854C) == 0x00 && byte(0x013246) == 0x00 &&
              byte(0x004ED4) == 0x00 && byte(0x008554) == 0x00 && byte(0x009CFC) == 0x00 && byte(0x011E3E) == 0x00 &&
              byte(0x00F8CC) == 0x00 && byte(0x00FED4) == 0x00

function Level5KeyCollected() => once(once(prev(Level5KeyFlag()) == 0x00) && Level5KeyFlag() == 0x01)

function Level15StolePinkDiamond() => LevelID() == level_15_3 && PlayerAnimationSet() == 0x28 && PlayerYLocation() > 0x0328

// Once the player has gone higher up than the provided activate_at position, the achivement will reset if the player ever drops below the provided reset_threshold position
function OneWayZPositionCheckpointPassed(activate_at, reset_threshold) => never((once(PlayerZLocation() <= activate_at) && PlayerZLocation() >= reset_threshold))

function ResetIfTimeExceeds(frame_time) => never(repeated(frame_time, ProgressionFlag() > 0x01))

function ResetIfTimeSpentInLevelExceeds(frame_time, level_id) => never(repeated(frame_time, LevelID() == level_id))

function ItemPickedUp(item_ref) {
    item_val = dword(item_ref)
    return once(prev(item_val) > 0x00000000 && item_val == 0x00000000)
}

// --------------------
// --- Achievements ---
// --------------------

// For level clear achievements, the level ID used should always be the part of the level that contains the exit teleporter
achievement(
    title = "The Return of Lupin the Third", points = 1,
    description = "Clear Level 1: Pyramid Entrance on Normal difficulty or higher",
    id = 350710, badge = "395420", published = "8/30/2023 1:49:07 AM", modified = "9/16/2023 8:18:20 PM",
    trigger = ClearedLevel(normal_difficulty, level_1, results_level_1)
)

achievement(
    title = "So this is where Dick Clark lives", points = 1,
    description = "Clear Level 2: Underground Fortress on Normal difficulty or higher",
    id = 353504, badge = "398245", published = "9/4/2023 10:13:00 PM", modified = "9/16/2023 8:18:20 PM",
    trigger = ClearedLevel(normal_difficulty, level_2, results_level_2)
)

achievement(
    title = "The friggin' grave robbers here had it made", points = 1,
    description = "Clear Level 3: Desert Tower on Normal difficulty or higher",
    id = 350711, badge = "395421", published = "8/30/2023 1:54:57 AM", modified = "9/16/2023 8:18:21 PM",
    trigger = ClearedLevel(normal_difficulty, level_3, results_level_3)
)

achievement(
    title = "What, are you gonna climb Mt. Everest or something?", points = 2,
    description = "Clear Level 4: Mountain Fortress on Normal difficulty or higher",
    id = 353858, badge = "398628", published = "9/6/2023 1:58:13 AM", modified = "9/16/2023 8:18:21 PM",
    trigger = ClearedLevel(normal_difficulty, level_4_1, results_level_4)
)

achievement(
    title = "Do they replace all those pillars every time someone comes here?", points = 2,
    description = "Clear Level 5: Ancient Ruins on Normal difficulty or higher",
    id = 353859, badge = "398629", published = "9/6/2023 2:06:51 AM", modified = "9/16/2023 8:18:21 PM",
    trigger = ClearedLevel(normal_difficulty, level_5_1, results_level_5)
)

achievement(
    title = "I'd actually rather be in Disneyland", points = 2,
    description = "Clear Level 6: Valley Fortress on Normal difficulty or higher",
    id = 353860, badge = "398630", published = "9/6/2023 2:12:46 AM", modified = "9/16/2023 8:18:22 PM",
    trigger = ClearedLevel(normal_difficulty, level_6, results_level_6)
)

achievement(
    title = "It's time for a round of big bang boomerang", points = 3,
    description = "Clear Level 7: Jungle Temple on Normal difficulty or higher",
    id = 354172, badge = "399086", published = "9/8/2023 12:23:30 AM", modified = "9/16/2023 8:18:22 PM",
    trigger = ClearedLevel(normal_difficulty, level_7_1, results_level_7)
)

achievement(
    title = "I think the jungle's getting to him", points = 3,
    description = "Clear Level 8: Botanical Research Institute on Normal difficulty or higher",
    id = 354173, badge = "399087", published = "9/8/2023 12:29:33 AM", modified = "9/16/2023 8:18:22 PM",
    trigger = ClearedLevel(normal_difficulty, level_8, results_level_8)
)

achievement(
    title = "Dammit, this is very mysterious, and I hate mysteries!", points = 3,
    description = "Clear Level 9: Jungle Watchtower on Normal difficulty or higher",
    id = 354175, badge = "399089", published = "9/8/2023 1:25:54 AM", modified = "9/16/2023 8:18:23 PM",
    trigger = ClearedLevel(normal_difficulty, level_9_2, results_level_9)
)

achievement(
    title = "One of those three hour tours you hear about on Nick At Nite", points = 4,
    description = "Clear Level 10: Artificial Island on Normal difficulty or higher",
    id = 354497, badge = "399421", published = "9/9/2023 12:16:05 AM", modified = "9/16/2023 8:18:23 PM",
    trigger = ClearedLevel(normal_difficulty, level_10_1, results_level_10)
)

achievement(
    title = "Breaking in? I prefer to call it \"dropping by\"", points = 4,
    description = "Clear Level 11: Water Quality Control Center on Normal difficulty or higher",
    id = 354498, badge = "399422", published = "9/9/2023 12:33:16 AM", modified = "9/16/2023 8:18:23 PM",
    trigger = ClearedLevel(normal_difficulty, level_11, results_level_11)
)

achievement(
    title = "This'd be really homey if I were a spider or a corpse", points = 4,
    description = "Clear Level 12: Undersea Base on Normal difficulty or higher",
    id = 354499, badge = "399492", published = "9/9/2023 12:48:44 AM", modified = "9/16/2023 8:18:23 PM",
    trigger = ClearedLevel(normal_difficulty, level_12, results_level_12)
)

achievement(
    title = "Don't blame yourselves, the vault's all mine!", points = 5,
    description = "Clear Level 13: Genetics Laboratory on Normal difficulty or higher",
    id = 354503, badge = "399496", published = "9/9/2023 1:20:28 AM", modified = "9/16/2023 8:18:24 PM",
    trigger = ClearedLevel(normal_difficulty, level_13, results_level_13)
)

achievement(
    title = "They're like damn cockroaches!", points = 5,
    description = "Clear Level 14: Power Reactor on Normal difficulty or higher",
    id = 345652, badge = "391910", published = "8/16/2023 1:32:24 AM", modified = "9/16/2023 8:18:24 PM",
    trigger = ClearedLevel(normal_difficulty, level_14, results_level_14)
)

achievement(
    title = "King Lupin the Third", points = 25,
    description = "Clear Level 15: Power Center on Normal difficulty or higher and successfully steal the pink diamond",
    id = 354509, badge = "399548", published = "9/9/2023 3:10:45 AM", modified = "9/16/2023 8:18:24 PM",
    trigger = ClearedLevel(normal_difficulty, level_15_3, results_level_15)
)

achievement(
    title = "He has all the subtly and nuance of an electrocuted baboon", points = 0,
    description = "Miss the last jump and get electrocuted in Level 1",
    id = 348926, badge = "394173", published = "8/26/2023 8:51:57 PM", modified = "8/26/2023 8:51:57 PM",
    trigger = InGame() && PlayerHP() == 0x00 && LevelID() == level_1 && 
              PlayerAnimationSet() == 0x27 && PlayerZLocation() > 0xFF40
)

achievement(
    title = "A string of crimes longer than that chin of yours", points = 2,
    description = "Break every pane of glass in Level 2",
    id = 346839, badge = "392203", published = "8/22/2023 2:20:27 AM", modified = "8/22/2023 11:49:44 PM",
    trigger = InGame() && never(PlayerHP() == 0x00) && never(LevelID() != level_2) && Level2AllGlassBroken()
)

achievement(
    title = "Ya any good at darts?", points = 4,
    description = "Alert a guard and then lure them into getting knocked out with an arrow trap in Level 3",
    id = 357455, badge = "402676", published = "9/21/2023 10:54:01 PM", modified = "9/21/2023 10:54:01 PM",
    trigger = InGame() && never(PlayerHP() == 0x00) && never(LevelID() != level_3) && trigger_when(IsAnyEnemyAlertAndHitWithArrowTrapLevel3())
)

achievement(
    title = "Punks thought they were dealing with amateurs", points = 5,
    description = "Climb to the top of the mountain without ever falling back down to a previous section in Level 4",
    id = 354689, badge = "399668", published = "9/9/2023 10:41:36 PM", modified = "9/11/2023 10:53:38 PM",
    trigger = InGame() && never(LevelID() != level_4_1) && never(PlayerHP() == 0) && StartOfLevel() &&
              OneWayZPositionCheckpointPassed(0xFFB2, 0xFFCD) && OneWayZPositionCheckpointPassed(0xFEFD, 0xFF1C) &&
              OneWayZPositionCheckpointPassed(0xFE9A, 0xFEAB) && OneWayZPositionCheckpointPassed(0xFE0E, 0xFE34) &&
              OneWayZPositionCheckpointPassed(0xFDBB, 0xFDED) &&
              trigger_when(once(PlayerZLocation() < 0xFD88)) && unless(PlayerZLocation() < 0x10)
)

achievement(
    title = "Hey, I wonder what gas station they stole this key from", points = 5,
    description = "Get the key to the temple within 2 minutes and 10 seconds from starting in Level 5",
    id = 354699, badge = "399690", published = "9/9/2023 11:51:09 PM", modified = "9/9/2023 11:51:09 PM",
    trigger = InGame() && never(PlayerHP() == 0x00) && once(PlayerHP() == 0x10) && LevelID() == level_5_1 && StartOfLevel() &&
              ResetIfTimeSpentInLevelExceeds(Seconds(130), level_5_1) && unless(GamePaused() > 0x00) && trigger_when(Level5KeyCollected())
)

achievement(
    title = "Holy Humpty Mc-Dumpty", points = 3,
    description = "Knock out an unaware guard with the pillar trap in Level 6",
    id = 346234, badge = "391911", published = "8/19/2023 2:17:29 AM", modified = "9/19/2023 10:25:38 PM",
    trigger = InGame() && never(PlayerHP() == 0x00) && never(LevelID() != level_6) && never(EntityKnockOutByPlayerState(EntityAddress(2)) == 0x00) &&
              never(Level6PillarRollingState() == 65426) && never(Level6PillarRollingState() == 65052) && EntityKnockedOutByPlayer(EntityAddress(2)) &&
              Level6PillarRollingState() < 65172 && Level6PillarRollingState() > 65132
)

achievement(
    title = "The old exploding-bear-trap-in-the-ass trick", points = 3,
    description = "Knock out a giant cat using a land mine in Level 7",
    id = 348928, badge = "394278", published = "8/26/2023 10:24:18 PM", modified = "9/19/2023 10:35:32 PM",
    trigger = InGame() && never(PlayerHP() == 0) && LevelID() == level_7_2 &&
              ((trigger_when(EntityAnimationSet((EntityAddress(0))) == 0x18)) || (trigger_when(EntityAnimationSet((EntityAddress(1))) == 0x18)))
)

achievement(
    title = "I'm good through, well, pretty much the rest of my friggin' life", points = 3,
    description = "Stay on the conveyor belt without falling off for 3 minutes straight in Level 8",
    id = 346499, badge = "391957", published = "8/21/2023 1:08:47 AM", modified = "9/9/2023 11:54:39 PM",
    trigger = InGame() && never(PlayerHP() == 0) && LevelID() == level_8 &&
              unless(GamePaused() > 0) && never((PlayerXLocation() > 607 || PlayerXLocation() < 571)) && 
              never((PlayerYLocation() < 743 || PlayerYLocation() > 1139)) && never(PlayerZLocation() > 65498) && 
              trigger_when(repeated(Seconds(180), LevelID() == level_8))
)

achievement(
    title = "You just keep diddling your damn riddle!", points = 2,
    description = "Solve the door puzzle and then reset it before entering the watchtower in Level 9",
    id = 355158, badge = "400251", published = "9/11/2023 11:24:09 PM", modified = "9/19/2023 10:45:12 PM",
    trigger = InGame() && never(LevelID() != level_9_1) && never(PlayerHP() == 0x00) && StartOfLevel() &&
              trigger_when((prev(Level9PuzzleDoorState()) == 0x04 && Level9PuzzleDoorState() == 0x00))
)

achievement(
    title = "Eins!  Zwei!  Drei!  ...And whatever the hell four is in German!", points = 10,
    description = "Drop all guards into the water in a single run of the level in Level 10",
    id = 357897, badge = "403119", published = "9/24/2023 2:11:50 AM", modified = "9/24/2023 2:13:29 AM",
    trigger = InGame() && never(LevelID() != level_10_1 && LevelID() != level_10_2) && never(PlayerHP() == 0x00) &&
              trigger_when(AreAllTreasureRoomEnemiesInWaterLevel10() && AreAllMainAreaEnemiesInWaterLevel10())
)

achievement(
    title = "The \"Lupin Run\"", points = 4,
    description = "Begin running down the top slope and don't stop until reaching the very bottom of the level in Level 11",
    id = 347191, badge = "392530", published = "8/23/2023 12:44:17 AM", modified = "9/9/2023 11:58:56 PM",
    trigger = InGame() && never(PlayerHP() == 0x00) && never(LevelID() != level_11) &&
               never((PlayerAnimationSet() != 0x3A && PlayerAnimationSet() != 0x08)) && once(PlayerZLocation() < 64275 &&
               PlayerAnimationSet() == 0x08) && PlayerZLocation() > 65509
)

achievement(
    title = "Either I'm loaded, or the ceiling's getting lower", points = 5,
    description = "Crush two spiders at the same time with a piston trap in Level 12",
    id = 362140, badge = "407708",
    trigger = InGame() && never(LevelID() != level_12) && never(PlayerHP() == 0x00) &&
              never(PistonTrapReset(Level12PistonATimer())) && never(PistonTrapReset(Level12PistonBTimer())) && tally(2, SpidersCrushedOnThisFrame())
)

achievement(
    title = "He thrives on chaos!", points = 10,
    description = "Have every single guard in an alert state at the same time after collecting the treasure in Level 13",
    id = 357899, badge = "403121", published = "9/24/2023 3:08:44 AM", modified = "9/24/2023 3:08:44 AM",
    trigger = InGame() && never(LevelID() != level_13) && never(PlayerHP() == 0x00) && never(!IsTreasureCollected()) &&
              never(IsAnyEnemyHealthDepleted()) && trigger_when(AreAllEnemiesAlert())
)

achievement(
    title = "Don't turn around!", points = 10,
    description = "Knock out 5 guards after using a single flash grenade before it's effect wears off in Level 14",
    id = 358173, badge = "403382",
    trigger = InGame() && never(LevelID() != level_14) && never(PlayerHP() == 0x00) && never(FlashGrenadeTimer() == 0x00) &&
              never(prev(FlashGrenadeTimer()) < FlashGrenadeTimer()) && tally(5, EnemiesKnockedOutInThisFrame())
)

achievement(
    title = "I bet they don't have problems with drunk drivers around here", points = 10,
    description = "Play on Hyper difficulty and reach the control room after crossing the moving bridge in Level 15",
    id = 358195, badge = "403422",
    trigger = InGame() && never(LevelID() != level_15_1 && LevelID() != level_15_transition && LevelID() != level_15_2) && GameDifficultyIs(hyper_difficulty) &&
              once(LevelID() == level_15_1) && trigger_when(LevelID() == level_15_2)
)

achievement(
    title = "And not just shot, but shot!  And then shot a couple more times!", points = 5,
    description = "In a single session, play as Lupin and hit enemies with gunshots from his Walther P38 a total of 15 times (excludes Survival Mode)",
    id = 358249, badge = "403580",
    trigger = PauseIfNotInGame() && PlayingAsLupin() && measured(tally(15, EnemiesHitInThisFrameByGun(animation_gun_lupin)))
)

achievement(
    title = "Show's over, eat lead", points = 5,
    description = "In a single session, play as Jigen and hit enemies with gunshots from his revolver a total of 15 times (excludes Survival Mode)",
    id = 358251, badge = "403582",
    trigger = PauseIfNotInGame() && PlayingAsJigen() && measured(tally(15, EnemiesHitInThisFrameByGun(animation_gun_jigen)))
)

achievement(
    title = "Once again, I've cut another worthless object", points = 5,
    description = "In a single session, play as Goemon and hit enemies with the Zantetsuken's blade a total of 15 times (excludes Survival Mode)",
    id = 359063, badge = "404479",
    trigger = PauseIfNotInGame() && PlayingAsGoemon() && measured(tally(15, EnemiesHitInThisFrameByZantetsuken()), always_true())
)

achievement(
    title = "Allergic to death", points = 3,
    description = "With 1 HP remaining, heal yourself completely using a gold healing item (excludes Survival Mode)",
    id = 347600, badge = "393057", published = "8/24/2023 12:33:58 AM", modified = "8/30/2023 2:05:51 AM",
    trigger = InGame() && once(PlayerHP() == 0x01) && never((PlayerHP() > 0x01 && PlayerHP() < 0x10)) &&
              (prev(PlayerHeldGoldHealItems()) - PlayerHeldGoldHealItems()) == 0x01
)

achievement(
    title = "The problem is, he watches too many damn cartoons", points = 3,
    description = "Walk across electrified terrain using the rubber boots",
    id = 354505, badge = "399498", published = "9/9/2023 1:25:43 AM", modified = "9/19/2023 10:55:52 PM",
    trigger = InGame() && never(PlayerHP() == 0x00) && PlayerRubberBootsFlag() == 0x01 &&
              PlayerOverElectricFloorFlag() == 0x04 &&
              ((LevelID() == level_6 && PlayerZLocation() == 65535) ||
               (LevelID() == level_12 && PlayerZLocation() == 65526) ||
               (LevelID() == level_13 && PlayerZLocation() == 65455))
)

achievement(
    title = "A conman is a better actor than an actor is a conman", points = 3,
    description = "In a single session, spend a total of at least 60 seconds in various disguises",
    id = 361123, badge = "406556",
    trigger = GameState() == 0x12 && repeated(Seconds(60), DisguiseStatus() == 0x01)
)

achievement(
    title = "I just love it when our victims are punctual", points = 3,
    description = "In a single Survival Mode run, place a total of 10 land mines",
    id = 361126, badge = "406558",
    trigger = InSurvivalMode() && never(SurvivalModePlayerHealth() == 0x00) && repeated(10, prev(SurvivalModeLandMinesHeld()) > SurvivalModeLandMinesHeld())
)

achievement(
    title = "It's torture!  Get me some asprin!", points = 3,
    description = "In a single Survival Mode run, use a total of 10 flash grenades",
    id = 361125, badge = "406557",
    trigger = InSurvivalMode() && never(SurvivalModePlayerHealth() == 0x00) && repeated(10, prev(SurvivalModeFlashGrenadesHeld()) > SurvivalModeFlashGrenadesHeld())
)

achievement(
    title = "The guy's possessed, he could probably bench press Shaq", points = 10,
    description = "Clear Survival Mode as Lupin in less than 25 minutes on Hard difficulty",
    id = 360746, badge = "406222",
    trigger = InSurvivalMode() && never(SurvivalModeTimer() == 0x00) && never(SurvivalModePlayerHealth() == 0x00) &&
              GameDifficulty() == hard_difficulty && PlayingAsLupin() && never(SurvivalModeTimer() >= 30000) && once(prev(SurvivalModeTimer()) == 0 && SurvivalModeTimer() == 1) &&
              trigger_when(once(prev(SurvivalModeRound()) == 0x01) && once(prev(SurvivalModeRound()) == 0x3A) && SurvivalModeRound() == 0x3B && SurvivalModeEnemyCount() == 0x00)
)

achievement(
    title = "Gettin' Jigen with it", points = 10,
    description = "Clear Survival Mode as Jigen in less than 7 minutes on Easy difficulty",
    id = 360728, badge = "406212",
    trigger = InSurvivalMode() && never(SurvivalModeTimer() == 0x00) && never(SurvivalModePlayerHealth() == 0x00) &&
              GameDifficulty() == easy_difficulty && PlayingAsJigen() && never(SurvivalModeTimer() >= 8400) && once(prev(SurvivalModeTimer()) == 0 && SurvivalModeTimer() == 1) &&
              trigger_when(once(prev(SurvivalModeRound()) == 0x01) && once(prev(SurvivalModeRound()) == 0x26) && SurvivalModeRound() == 0x27 && SurvivalModeEnemyCount() == 0x00)
)

achievement(
    title = "It's like a letter-opener with balls, this Zantetsu thing!", points = 10,
    description = "Clear Survival Mode as Goemon in less than 15 minutes on Normal difficulty",
    id = 346458, badge = "391912", published = "8/20/2023 5:16:30 PM", modified = "9/9/2023 12:56:28 AM",
    trigger = InSurvivalMode() && never(SurvivalModeTimer() == 0x00) && never(SurvivalModePlayerHealth() == 0x00) &&
              GameDifficulty() == normal_difficulty && PlayingAsGoemon() && never(SurvivalModeTimer() >= 18000) && once(prev(SurvivalModeTimer()) == 0 && SurvivalModeTimer() == 1) &&
              trigger_when(once(prev(SurvivalModeRound()) == 0x01) && once(prev(SurvivalModeRound()) == 0x26) && SurvivalModeRound() == 0x27 && SurvivalModeEnemyCount() == 0x00)
)

achievement(
    title = "Temporary Interim Alliance Agreement", points = 10,
    description = "Play as Zenigata and defeat the final boss in Level 15 after having freed Lupin, Jigen, and Goemon and having them all survive the final boss fight on Hard difficulty",
    id = 360311, badge = "405779",
    trigger = InGame() && PlayingAsZenigata() && GameDifficultyIs(hard_difficulty) && never(LevelID() != level_15_3) && never(!IsFinalBossLoadedIn()) && FinalBossFightAllPartnersExistAndStillAlive() &&
              trigger_when(IsFinalBossHealthDepletedOnThisFrame())
)

achievement(
    title = "Dammit, I'm good", points = 10,
    description = "Achieve a perfect score of 100 in any level on Hyper difficulty",
    id = 360041, badge = "405387",
    trigger = AtLevelResultsScreenNotTreasureRoom() && GameDifficulty() == hyper_difficulty && ResultsScreenTotalScore() == 100
)

achievement(
    title = "Are we too career-oriented?", points = 25,
    description = "After clearing a level, have a current combined total score of 1400 or more across all levels",
    id = 360312, badge = "405780",
    trigger = GameState() == 0x00 && measured(CurrentTotalGameScore() >= 1400, ProgressionFlag() > 0x02, "raw") && prev(CurrentMenuScreen()) == 0x09 && (CurrentMenuScreen() == 0x06 || CurrentMenuScreen() == 0x07)
)

achievement(
    title = "Exceeding the speed limit", points = 50,
    description = "Begin a New Game and complete a single-segment speedrun in under 1 hour, on any difficulty",
    id = 359320, badge = "405803",
    trigger = once(StartedNewGame()) && ResetIfTimeExceeds(Seconds(3600)) && never(ProgressionFlag() < 0x02) && ResetIfGameSaveIsLoaded() &&
              trigger_when(Level15StolePinkDiamond())
)

achievement(
    title = "Those'll kill ya... gimme one", points = 1,
    description = "Take a 3 minute smoke break",
    id = 346484, badge = "391944", published = "8/21/2023 12:08:18 AM", modified = "9/9/2023 10:46:49 PM",
    trigger = InGame() && never(PlayerAnimationSet() != 0x03) && 
              unless(GamePaused() > 0) && trigger_when(repeated(Seconds(180), PlayerAnimationSet() == 0x03))
)

achievement(
    title = "Floating through the air like pixies", points = 1,
    description = "Avoid falling by swimming through the air",
    id = 346465, badge = "391908", published = "8/20/2023 6:52:10 PM", modified = "9/19/2023 11:10:34 PM",
    trigger = InGame() && never((prev(PlayerAnimationSet()) == 86 || prev(PlayerAnimationSet()) == 83 ||
               prev(PlayerAnimationSet()) == 0x5F || prev(PlayerAnimationSet()) == 0x00)) && once(PlayerAnimationSet() == 0x16) &&
              ((prev(PlayerAnimationSet()) == 0x11 && (PlayerAnimationSet() == 0x56 || PlayerAnimationSet() == 0x53 || PlayerAnimationSet() == 0x5F || PlayerAnimationSet() == 0x00)) ||
               (once(PlayerAnimationSet() == 0x11) && once(PlayerAnimationSet() == 0x32) && prev(PlayerAnimationSet()) == 0x33 && 
                (PlayerAnimationSet() == 0x56 || PlayerAnimationSet() == 0x53 || PlayerAnimationSet() == 0x5F || PlayerAnimationSet() == 0x00)) ||
               (once(PlayerAnimationSet() == 0x11) && once(PlayerAnimationSet() == 0x35) && prev(PlayerAnimationSet()) == 0x36 && 
                (PlayerAnimationSet() == 0x56 || PlayerAnimationSet() == 0x53 || PlayerAnimationSet() == 0x5F || PlayerAnimationSet() == 0x00)))
)

achievement(
    title = "I always wanted to master the Funky Pharaoh", points = 5,
    description = "In a single session, dodge enemy attacks a total of 15 times",
    id = 355176, badge = "404483", published = "9/12/2023 12:23:01 AM", modified = "9/12/2023 12:23:01 AM",
    trigger = measured(repeated(15, ((((DemoMode() == 0x00 && GameState() == 0x12 && PlayerHP() > 0x00 && prev(PlayerAnimationSet()) == 0x20 &&
              PlayerAnimationSet() != 0x20) || prev(PlayerAnimationSet()) == 0x21) && PlayerAnimationSet() != 0x21) ||
              prev(PlayerAnimationSet()) == 0x22) && PlayerAnimationSet() != 0x22), always_true(), "raw")
)

achievement(
    title = "Friggin' Lupin", points = 1,
    description = "Play as Lupin and land a punch on one of your partners",
    id = 354507, badge = "399500", published = "9/9/2023 2:31:26 AM", modified = "9/15/2023 12:56:47 AM",
    trigger = InGame() && PlayingAsLupin() && PlayerIsPunching() && IsPlayerDamagingAnyPartner()
)

achievement(
    title = "Red's probably not the best color for trying to be inconspicuous", points = 3,
    description = "Play as Part I Lupin or Part III Lupin and complete any level without alerting a single enemy",
    id = 361369, badge = "406723",
    trigger = (PlayerCostume() == 0x00 || PlayerCostume() == 0x02 ) && AtLevelResultsScreenNotTreasureRoom() && ResultsScreenTimesAlertedEnemies() == 0
)

achievement(
    title = "Inspector Origami", points = 1,
    description = "Play as Zenigata and get crushed by a piston trap in Level 12",
    id = 345747, badge = "407707", published = "8/17/2023 2:11:34 AM", modified = "8/26/2023 10:25:52 PM",
    trigger = InGame() && PlayingAsZenigata() && never(LevelID() != level_12) && never(prior(PlayerHP()) == 0x00) &&
              PlayerHP() == 0x00 && PlayerAnimationSet() == 0x07
)

achievement(
    title = "A three-minute egg must boil for three minutes", points = 5,
    description = "Play as Goemon and collect all 6 items in less than 3 minutes in Level 3",
    id = 364399, badge = "410034",
    trigger = InGame() && PlayingAsGoemon() && never(LevelID() != level_3) && once(PlayerHP() == 0x10) && StartOfLevel() && never(PlayerHP() == 0x00) &&
              ResetIfTimeSpentInLevelExceeds(Seconds(180), level_3) && unless(GamePaused() > 0x00) &&
              trigger_when(ItemPickedUp(0x1B3B64) && ItemPickedUp(0x1B3B6C) && ItemPickedUp(0x1B3B70) && ItemPickedUp(0x1B3B74) && ItemPickedUp(0x1B3B78) && ItemPickedUp(0x1B3B7C))
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
    cancel = GameSaveIsLoaded() || GameDifficulty() != normal_difficulty || !PlayingAsLupin() || ProgressionFlag() < 0x02,
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