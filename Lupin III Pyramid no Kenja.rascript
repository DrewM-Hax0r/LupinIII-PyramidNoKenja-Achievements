// Lupin III: Pyramid no Kenja
// #ID = 20465

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

// $0000A9: [8-bit] Demo Mode
//          0x00 = Demo Mode Not Active
//          0x01 = Demo Mode Active
function DemoMode() => byte(0x0000A9)

// $13E502: [8-bit] Can be used to determine if in game or in menus
//          0x00 = Viewing any menu screen (Including level results, if not opened from Treasure Room)
//          0x01 = Viewing level results screen from Treasure Room
//          0x12 = In Game
function GameState() => byte(0x13E502)

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

// -----------------
// --- Variables ---
// -----------------

// An entity is an NPC character in the game, like enemies or partner characters
entity_memory_location = 0x1B5A30 // The start of contiguous blocks of entity data
entity_memory_size = 0x9C

entity_type_offset = 0x47
entity_partner_friendly_fire_counter_offset = 0x92 // If the entity is a partner character, this offset points to a value that increases each time the player damages this partner

all_entity_slots = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]

// -----------------------
// --- Logic Functions ---
// -----------------------

function NotInDemoMode() => never(DemoMode() == 0x01)

function InGame() => never(GameState() != 0x12)

function PlayingAsLupin() => PlayerCostume() == 0x00 || PlayerCostume() == 0x01 || PlayerCostume() == 0x02 || PlayerCostume() == 0x07

function PlayerIsPunching() => PlayerAnimationSet() == 0x2E || PlayerAnimationSet() == 0x2F ||
               PlayerAnimationSet() == 0x4D || PlayerAnimationSet() == 0x2D || PlayerAnimationSet() == 0x5B || PlayerAnimationSet() == 0x4E ||
               PlayerAnimationSet() == 0x4B || PlayerAnimationSet() == 0x38 || PlayerAnimationSet() == 0x5C

function EntityAddress(slot) => entity_memory_location + (entity_memory_size * slot)

// Using X location value for this check since its the value at the base entity address, and the maps are laid out so that a position of 0 would never be inbounds so it should be safe
function EntityExists(entity_address) => word(entity_address) > 0

function IsEntityAPartner(entity_address) {
    type = byte(entity_address + entity_type_offset)
    return type == 0x0A || type == 0x0B || type == 0x0C || type == 0x0D
}

function IsPlayerDamagingPartner(partner_address) {
    damage_counter_address = partner_address + entity_partner_friendly_fire_counter_offset
    return prev(byte(damage_counter_address)) < byte(damage_counter_address)
}

function IsPlayerDamagingAnyPartner() {
    condition_met = false
    for slot in all_entity_slots {
        address = EntityAddress(slot)
        condition_met = condition_met || (EntityExists(address) && IsEntityAPartner(address) && IsPlayerDamagingPartner(address))
    }
    return condition_met
}

// --------------------
// --- Achievements ---
// --------------------

achievement(
    title = "Friggin' Lupin", points = 1,
    description = "Play as Lupin and land a punch on one of your partners",
    trigger = NotInDemoMode() && InGame() && PlayingAsLupin() && PlayerIsPunching() && IsPlayerDamagingAnyPartner()
)
