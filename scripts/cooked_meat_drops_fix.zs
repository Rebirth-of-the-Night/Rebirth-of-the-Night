#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.entity.IEntityItem;
import crafttweaker.oredict.IOreDictEntry;

// Dynamic map of raw food to cooked food
static cookedMeatMap as IItemStack[IItemStack] = {};

// Function to populate the map
function initMeatMap() {
    val rawMeat = <ore:listAllmeatraw>;
    for item in rawMeat.items {
        if (!isNull(item)) {
            val result = furnace.getSmeltingResult(item);
            if (!isNull(result)) {
                cookedMeatMap[item] = result;
            }
        }
    }
}

// Initialize the map
initMeatMap();

// List of weapons that should cook meat on kill
static cookingWeapons as string[] = [
    "iceandfire:dragonsteel_fire_sword",
    "iceandfire:dragonsteel_fire_pickaxe",
    "iceandfire:dragonsteel_fire_axe",
    "iceandfire:dragonsteel_fire_shovel",
    "iceandfire:dragonsteel_fire_hoe",
    "spartanfire:dagger_fire_dragonsteel",
    "spartanfire:longsword_fire_dragonsteel",
    "spartanfire:katana_fire_dragonsteel",
    "spartanfire:saber_fire_dragonsteel",
    "spartanfire:rapier_fire_dragonsteel",
    "spartanfire:greatsword_fire_dragonsteel",
    "spartanfire:hammer_fire_dragonsteel",
    "spartanfire:warhammer_fire_dragonsteel",
    "spartanfire:boomerang_fire_dragonsteel",
    "spartanfire:battleaxe_fire_dragonsteel",
    "spartanfire:mace_fire_dragonsteel",
    "spartanfire:glaive_fire_dragonsteel",
    "spartanfire:staff_fire_dragonsteel",
    "spartanfire:spear_fire_dragonsteel",
    "spartanfire:halberd_fire_dragonsteel",
    "spartanfire:pike_fire_dragonsteel",
    "spartanfire:lance_fire_dragonsteel",
    "spartanfire:longbow_fire_dragonsteel",
    "spartanfire:throwing_knife_fire_dragonsteel",
    "spartanfire:throwing_axe_fire_dragonsteel",
    "spartanfire:javelin_fire_dragonsteel"
];

events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent) {
    if (event.entityLivingBase.world.isRemote()) return;
    
    val source = event.damageSource;
    if (isNull(source)) return;
    
    val attacker = source.trueSource;
    if (isNull(attacker) || !(attacker instanceof IPlayer)) return;
    
    val player as IPlayer = attacker;
    val heldItem = player.currentItem;
    
    if (isNull(heldItem)) return;
    
    // Check if held item is a cooking weapon
    var isCookingWeapon = false;
    for weaponId in cookingWeapons {
        if (heldItem.definition.id == weaponId) {
            isCookingWeapon = true;
            break;
        }
    }
    
    if (!isCookingWeapon) return;
    
    var drops = event.drops;
    var newDrops = [] as IEntityItem[];
    
    for drop in drops {
        val item = drop.item;
        var cooked = false;
        
        for raw, cookedItem in cookedMeatMap {
            if (raw.matches(item)) {
                newDrops += cookedItem.withAmount(item.amount).createEntityItem(drop.world, drop.position);
                cooked = true;
                break;
            }
        }
        
        if (!cooked) {
            newDrops += drop;
        }
    }
    
    event.drops = newDrops;
});
