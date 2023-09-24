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
//          0x19 = [Unused] CRASH
//          0x1a = Level 15 (Room 2)
//          0x1b = Level 15 (Room 3)
function LevelID() => byte(0x0000E2)

// $13E502: [8-bit] Can be used to determine if in game or in menus
//          0x00 = Viewing any menu screen (Including level results, if not opened from Treasure Room)
//          0x01 = Viewing level results screen from Treasure Room
//          0x12 = In Game
function GameState() => byte(0x13E502)

// $1865AA: [16-bit] Survival mode timer
function SurvivalModeTimer() => word(0x1865AA)

// $18B2D0: [8-bit] Flag for collecting the key to the temple in Level 5
function Level5KeyFlag() => byte(0x18B2D0)
function TrasureCollectedLevel10Flag() => byte(0x18B2D0)

// $18B2D2: [8-bit] The game is paused if this value is greater than 0x00
function GamePaused() => byte(0x18B2D2)

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
entity_animation_set_offset = 0x6E
entity_knock_out_offset = 0x90
entity_damaged_by_player_count_offset = 0x92 // This offset points to a value that increases each time the player damages this entity, does not increase if the entity is damaged from another source besides the player

all_entity_slots = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]

// -----------------------
// --- Logic Functions ---
// -----------------------

// Converts provided number of seconds to frame time (60fps)
function Seconds(seconds) => seconds * 60

function NotInDemoMode() => never(DemoMode() == 0x01)

function InGame() => NotInDemoMode() && never(GameState() != 0x12)

function InMenus() => GameState() == 0x00

function ClearedLevel(min_difficulty, level_id, results_level_id) => NotInDemoMode() && never(PlayerHP() == 0x00) && never(GameDifficulty() < min_difficulty) &&
              once(LevelID() == level_id) && InMenus() && prev(GameState()) == 0x12 && ResultsScreenLevelID() == results_level_id

function PlayingAsLupin() => PlayerCostume() == 0x00 || PlayerCostume() == 0x01 || PlayerCostume() == 0x02 || PlayerCostume() == 0x07

function PlayingAsGoemon() => PlayerCostume() == 0x04

function PlayerIsPunching() => PlayerAnimationSet() == 0x2E || PlayerAnimationSet() == 0x2F ||
               PlayerAnimationSet() == 0x4D || PlayerAnimationSet() == 0x2D || PlayerAnimationSet() == 0x5B || PlayerAnimationSet() == 0x4E ||
               PlayerAnimationSet() == 0x4B || PlayerAnimationSet() == 0x38 || PlayerAnimationSet() == 0x5C

function EntityAddress(slot) => entity_memory_location + (entity_memory_size * slot)

// Using X location value for this check since its the value at the base entity address, and the maps are laid out so that a position of 0 would never be inbounds so it should be safe
function EntityExists(entity_address) => word(entity_address) > 0

function EntityXLocation(entity_address) => word(entity_address)
function EntityZLocation(entity_address) => word(entity_address + entity_z_location_offset)

// 0x01 if knocked out, otherwise 0x00
function EntityKnockOutState(entity_address) => byte(entity_address + entity_knock_out_offset)

// Triggers the moment in time an entity is knocked out
function EntityKnockedOut(entity_address) => prev(EntityKnockOutState(entity_address)) == 0x00 && EntityKnockOutState(entity_address) == 0x01

function EntityAnimationSet(entity_address) => byte(entity_address + entity_animation_set_offset)

function EntityState(entity_address) => byte(entity_address + entity_state_offset)

function IsEntityAlert(entity_address) {
    return EntityState(entity_address) == entity_state_alert
}

function IsEntityAPartner(entity_address) {
    type = byte(entity_address + entity_type_offset)
    return type == 0x0A || type == 0x0B || type == 0x0C || type == 0x0D
}

function IsPlayerDamagingEntity(entity_address) {
    damage_counter_address = entity_address + entity_damaged_by_player_count_offset
    return prev(byte(damage_counter_address)) < byte(damage_counter_address)
}

function IsEntityTakingDamage(entity_address) {
    hp_address = entity_address + entity_hp_offset
    return prev(byte(hp_address)) != byte(hp_address) // Not checking less than here, if an entity is knocked out, sometimes the HP value will be set to 0xFF instead of 0x00 for some reason...
}

function IsPlayerDamagingAnyPartner() {
    condition_met = false
    for slot in all_entity_slots {
        address = EntityAddress(slot)
        condition_met = condition_met || (EntityExists(address) && IsEntityAPartner(address) && IsPlayerDamagingEntity(address))
    }
    return condition_met
}

function IsAnyEnemyAlertAndHitWithArrowTrapLevel3() {
    condition_met = false
    for slot in all_entity_slots {
        address = EntityAddress(slot)
        condition_met = condition_met || (EntityExists(address) && IsEntityAlert(address) && !IsPlayerDamagingEntity(address) && IsEntityTakingDamage(address))
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
        condition_met = condition_met && once(LevelID() == level_10_2 && TrasureCollectedLevel10Flag() == 0x03 && (!valid_to_check || (valid_to_check && EntityZLocation(address) == 0x012B)))
    }
    return condition_met
}

// Detects the moment when the player begins playing a level, either by first load into it or retry after having previously died
function StartOfLevel() => once(PlayerHP() == 0x10) && once((once(prev(word(0x13E502)) == 0) || once(prev(PlayerHP()) == 0)) && PlayerHP() == 0x10)

function Level2AllGlassBroken() => byte(0x0047F6) == 0x00 && byte(0x0057FE) == 0x00 && byte(0x0049AE) == 0x00 && 
              byte(0x004B0A) == 0x00 && byte(0x005E8A) == 0x00 && byte(0x00854C) == 0x00 && byte(0x013246) == 0x00 &&
              byte(0x004ED4) == 0x00 && byte(0x008554) == 0x00 && byte(0x009CFC) == 0x00 && byte(0x011E3E) == 0x00 &&
              byte(0x00F8CC) == 0x00 && byte(0x00FED4) == 0x00

function Level5KeyCollected() => once(once(prev(Level5KeyFlag()) == 0x00) && Level5KeyFlag() == 0x01)

// Once the player has gone higher up than the provided activate_at position, the achivement will reset if the player ever drops below the provided reset_threshold position
function OneWayZPositionCheckpointPassed(activate_at, reset_threshold) => never((once(PlayerZLocation() <= activate_at) && PlayerZLocation() >= reset_threshold))

function ResetIfTimeSpentInLevelExceeds(frame_time, level_id) => never(repeated(frame_time, LevelID() == level_id))

// --------------------
// --- Achievements ---
// --------------------

// For level clear achievements, the level ID used should always be the part of the level that contains the exit teleporter
achievement(
    title = "The Return of Lupin the Third", points = 1,
    description = "Clear Level 1: Pyramid Entrance on Normal difficulty or higher",
    id = 350710, badge = "395420", published = "8/30/2023 1:49:07 AM", modified = "8/30/2023 1:49:07 AM",
    trigger = ClearedLevel(normal_difficulty, level_1, results_level_1)
)

achievement(
    title = "So this is where Dick Clark lives", points = 1,
    description = "Clear Level 2: Underground Fortress on Normal difficulty or higher",
    id = 353504, badge = "398245", published = "9/4/2023 10:13:00 PM", modified = "9/4/2023 10:13:00 PM",
    trigger = ClearedLevel(normal_difficulty, level_2, results_level_2)
)

achievement(
    title = "The friggin' grave robbers here had it made", points = 1,
    description = "Clear Level 3: Desert Tower on Normal difficulty or higher",
    id = 350711, badge = "395421", published = "8/30/2023 1:54:57 AM", modified = "8/30/2023 1:54:57 AM",
    trigger = ClearedLevel(normal_difficulty, level_3, results_level_3)
)

achievement(
    title = "What, are you gonna climb Mt. Everest or something?", points = 2,
    description = "Clear Level 4: Mountain Fortress on Normal difficulty or higher",
    id = 353858, badge = "398628", published = "9/6/2023 1:58:13 AM", modified = "9/9/2023 3:12:58 AM",
    trigger = ClearedLevel(normal_difficulty, level_4_1, results_level_4)
)

achievement(
    title = "Do they replace all those pillars every time someone comes here?", points = 2,
    description = "Clear Level 5: Ancient Ruins on Normal difficulty or higher",
    id = 353859, badge = "398629", published = "9/6/2023 2:06:51 AM", modified = "9/9/2023 3:12:58 AM",
    trigger = ClearedLevel(normal_difficulty, level_5_1, results_level_5)
)

achievement(
    title = "I'd actually rather be in Disneyland", points = 2,
    description = "Clear Level 6: Valley Fortress on Normal difficulty or higher",
    id = 353860, badge = "398630", published = "9/6/2023 2:12:46 AM", modified = "9/6/2023 2:12:46 AM",
    trigger = ClearedLevel(normal_difficulty, level_6, results_level_6)
)

achievement(
    title = "It's time for a round of big bang boomerang", points = 3,
    description = "Clear Level 7: Jungle Temple on Normal difficulty or higher",
    id = 354172, badge = "399086", published = "9/8/2023 12:23:30 AM", modified = "9/9/2023 10:50:05 PM",
    trigger = ClearedLevel(normal_difficulty, level_7_1, results_level_7)
)

achievement(
    title = "I think the jungle's getting to him", points = 3,
    description = "Clear Level 8: Botanical Research Institute on Normal difficulty or higher",
    id = 354173, badge = "399087", published = "9/8/2023 12:29:33 AM", modified = "9/8/2023 12:29:33 AM",
    trigger = ClearedLevel(normal_difficulty, level_8, results_level_8)
)

achievement(
    title = "Dammit, this is very mysterious, and I hate mysteries!", points = 3,
    description = "Clear Level 9: Jungle Watchtower on Normal difficulty or higher",
    id = 354175, badge = "399089", published = "9/8/2023 1:25:54 AM", modified = "9/9/2023 3:12:58 AM",
    trigger = ClearedLevel(normal_difficulty, level_9_2, results_level_9)
)

achievement(
    title = "Better not be those 3 hour tours you hear about on Nick at Night", points = 4,
    description = "Clear Level 10: Artificial Island on Normal difficulty or higher",
    id = 354497, badge = "399421", published = "9/9/2023 12:16:05 AM", modified = "9/11/2023 10:50:15 PM",
    trigger = ClearedLevel(normal_difficulty, level_10_1, results_level_10)
)

achievement(
    title = "Breaking in? I prefer to call it \"dropping by\"", points = 4,
    description = "Clear Level 11: Water Quality Control Center on Normal difficulty or higher",
    id = 354498, badge = "399422", published = "9/9/2023 12:33:16 AM", modified = "9/9/2023 12:33:16 AM",
    trigger = ClearedLevel(normal_difficulty, level_11, results_level_11)
)

achievement(
    title = "This'd be really homey if I were a spider or a corpse", points = 4,
    description = "Clear Level 12: Undersea Base on Normal difficulty or higher",
    id = 354499, badge = "399492", published = "9/9/2023 12:48:44 AM", modified = "9/9/2023 12:48:44 AM",
    trigger = ClearedLevel(normal_difficulty, level_12, results_level_12)
)

achievement(
    title = "Don't blame yourselves, the vault's all mine!", points = 5,
    description = "Clear Level 13: Genetics Laboratory on Normal difficulty or higher",
    id = 354503, badge = "399496", published = "9/9/2023 1:20:28 AM", modified = "9/9/2023 1:20:28 AM",
    trigger = ClearedLevel(normal_difficulty, level_13, results_level_13)
)

achievement(
    title = "They're like damn cockroaches!", points = 5,
    description = "Clear Level 14: Power Reactor on Normal difficulty or higher",
    id = 345652, badge = "391910", published = "8/16/2023 1:32:24 AM", modified = "8/30/2023 1:49:46 AM",
    trigger = ClearedLevel(normal_difficulty, level_14, results_level_14)
)

achievement(
    title = "King Lupin the Third", points = 25,
    description = "Clear Level 15: Power Center on Normal difficulty or higher and successfully steal the pink diamond",
    id = 354509, badge = "399548", published = "9/9/2023 3:10:45 AM", modified = "9/9/2023 3:10:45 AM",
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
    description = "Alert a guard and then lure them into getting hit with an arrow trap in Level 3",
    id = 357455, badge = "402676",
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
    id = 346234, badge = "391911", published = "8/19/2023 2:17:29 AM", modified = "8/20/2023 7:03:57 PM",
    trigger = InGame() && never(PlayerHP() == 0x00) && never(LevelID() != level_6) && never(EntityKnockOutState(EntityAddress(2)) == 0x00) &&
              never(Level6PillarRollingState() == 65426) && never(Level6PillarRollingState() == 65052) && EntityKnockedOut(EntityAddress(2)) &&
              Level6PillarRollingState() < 65172 && Level6PillarRollingState() > 65132
)

achievement(
    title = "The old exploding-bear-trap-in-the-ass trick", points = 3,
    description = "Knock out a giant cat using a land mine in Level 7",
    id = 348928, badge = "394278", published = "8/26/2023 10:24:18 PM", modified = "9/9/2023 10:54:22 PM",
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
    id = 355158, badge = "400251", published = "9/11/2023 11:24:09 PM", modified = "9/11/2023 11:24:09 PM",
    trigger = InGame() && never(LevelID() != level_9_1) && never(PlayerHP() == 0x00) && StartOfLevel() &&
              trigger_when((prev(Level9PuzzleDoorState()) == 0x04 && Level9PuzzleDoorState() == 0x00))
)

achievement(
    title = "Eins!  Zwei!  Drei!  ...And whatever the hell four is in German!", points = 10,
    description = "Drop all guards into the water in a single run of the level in Level 10",
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
    title = "Either I'm loaded, or the ceiling's getting lower", points = 1,
    description = "Get knocked out from being crushed by a piston in Level 12",
    id = 345747, badge = "391909", published = "8/17/2023 2:11:34 AM", modified = "8/26/2023 10:25:52 PM",
    trigger = InGame() && never(LevelID() != level_12) && never(prior(PlayerHP()) == 0x00) && 
              PlayerHP() == 0x00 && PlayerAnimationSet() == 0x07
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
    id = 354505, badge = "399498", published = "9/9/2023 1:25:43 AM", modified = "9/9/2023 1:25:43 AM",
    trigger = InGame() && never(PlayerHP() == 0x00) && PlayerRubberBootsFlag() == 0x01 &&
              PlayerOverElectricFloorFlag() == 0x04 &&
              ((LevelID() == level_6 && PlayerZLocation() == 65535) ||
               (LevelID() == level_12 && PlayerZLocation() == 65526) ||
               (LevelID() == level_13 && PlayerZLocation() == 65455))
)

achievement(
    title = "A 10-minute egg must boil for 10 minutes", points = 10,
    description = "Clear Survival Mode as Goemon in less than 10 minutes on Normal difficulty",
    id = 346458, badge = "391912", published = "8/20/2023 5:16:30 PM", modified = "9/9/2023 12:56:28 AM",
    trigger = never(SurvivalModeRound() == 0x00) && never(SurvivalModeTimer() == 0x00) && never(SurvivalModePlayerHealth() == 0x00) && GameDifficulty() == 0x01 &&
              PlayingAsGoemon() && once(prev(SurvivalModeRound()) == 0x01) && once(prev(SurvivalModeRound()) == 0x26) && 
              SurvivalModeRound() == 0x27 && SurvivalModeEnemyCount() == 0x00 && SurvivalModeTimer() < 12000
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
    id = 346465, badge = "391908", published = "8/20/2023 6:52:10 PM", modified = "8/22/2023 12:27:08 AM",
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
    id = 355176, badge = "400268", published = "9/12/2023 12:23:01 AM", modified = "9/12/2023 12:23:01 AM",
    trigger = repeated(15, ((((DemoMode() == 0x00 && GameState() == 0x12 && PlayerHP() > 0x00 && prev(PlayerAnimationSet()) == 0x20 &&
              PlayerAnimationSet() != 0x20) || prev(PlayerAnimationSet()) == 0x21) && PlayerAnimationSet() != 0x21) ||
              prev(PlayerAnimationSet()) == 0x22) && PlayerAnimationSet() != 0x22)
)

achievement(
    title = "Friggin' Lupin", points = 1,
    description = "Play as Lupin and land a punch on one of your partners",
    id = 354507, badge = "399500", published = "9/9/2023 2:31:26 AM", modified = "9/15/2023 12:56:47 AM",
    trigger = InGame() && PlayingAsLupin() && PlayerIsPunching() && IsPlayerDamagingAnyPartner()
)
