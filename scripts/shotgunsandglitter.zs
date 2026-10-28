#loader crafttweaker reloadable

import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;

import crafttweaker.data.IData;

import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityItem;

import crafttweaker.events.IEventManager;
import crafttweaker.command.ICommandManager;
import crafttweaker.command.ICommand;
import crafttweaker.command.ICommandSender;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import crafttweaker.world.IWorld;

import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

recipes.removeByMod("shotgunsandglitter");

val dunamicArray = {
    <contenttweaker:vis_speck> : "basic",
    <contenttweaker:chaos_rune> : "balefire",
    <contenttweaker:life_rune> : "biotic",
    <contenttweaker:nether_rune> : "draconic",
    <contenttweaker:sol_rune> : "firework",
    <biomesoplenty:biome_essence> : "flash",
    <contenttweaker:water_rune> : "frost",
    <contenttweaker:order_rune> : "gravity_in",
    <contenttweaker:energy_rune> : "gravity_out",
    <contenttweaker:air_rune> : "hookshot",
    <contenttweaker:disint_rune> : "impact",
    <contenttweaker:vis_sliver> : "piercing",
    <contenttweaker:mind_rune> : "psychic",
    <contenttweaker:poison_rune> : "tainted",
    <contenttweaker:holding_rune> : "tranq",
} as string[IItemStack];

val dunamicAmmo = <ore:dunamicAmmo>;
dunamicAmmo.addItems([
    <contenttweaker:vis_speck>,
    <contenttweaker:chaos_rune>,
    <contenttweaker:life_rune>,
    <contenttweaker:nether_rune>,
    <contenttweaker:sol_rune>,
    <biomesoplenty:biome_essence>,
    <contenttweaker:water_rune>,
    <contenttweaker:order_rune>,
    <contenttweaker:energy_rune>,
    <contenttweaker:air_rune>,
    <contenttweaker:disint_rune>,
    <contenttweaker:vis_sliver>,
    <contenttweaker:mind_rune>,
    <contenttweaker:poison_rune>,
    <contenttweaker:holding_rune>
]);

val matrixArray = {
    <contenttweaker:vis_speck> : "basic",
    <contenttweaker:chaos_rune> : "balefire",
    <contenttweaker:life_rune> : "biotic",
    <contenttweaker:nether_rune> : "draconic",
    <contenttweaker:sol_rune> : "firework",
    <biomesoplenty:biome_essence> : "flash",
    <contenttweaker:water_rune> : "frost",
    <contenttweaker:order_rune> : "gravity_in",
    <contenttweaker:energy_rune> : "gravity_out",
    <contenttweaker:air_rune> : "hookshot",
    <contenttweaker:disint_rune> : "impact",
    <contenttweaker:vis_sliver> : "piercing",
    <contenttweaker:mind_rune> : "psychic",
    <contenttweaker:poison_rune> : "tainted",
    <contenttweaker:holding_rune> : "tranq",
} as string[IItemStack];

val matrixAmmo = <ore:matrixAmmo>;
matrixAmmo.addItems([
    <contenttweaker:vis_speck>,
    <contenttweaker:chaos_rune>,
    <contenttweaker:life_rune>,
    <contenttweaker:nether_rune>,
    <contenttweaker:sol_rune>,
    <biomesoplenty:biome_essence>,
    <contenttweaker:water_rune>,
    <contenttweaker:order_rune>,
    <contenttweaker:energy_rune>,
    <contenttweaker:air_rune>,
    <contenttweaker:disint_rune>,
    <contenttweaker:vis_sliver>,
    <contenttweaker:mind_rune>,
    <contenttweaker:poison_rune>,
    <contenttweaker:holding_rune>
]);

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent) {
    //only run on server
    if (event.player.world.isRemote()) { return; }
    //only reload if you are holding a gun while crouching
    if (event.item.matches(<shotgunsandglitter:pistol>.withTag({})) && event.player.isSneaking) {

        var i = 0;
        //allow every instance of ore:dunamicAmmo to be loaded into the gun
        val dAmmo = <ore:dunamicAmmo> as IOreDictEntry;

        //iterate over every hotbar and inventory slot checking for ammo
        while (i < 35) {

        if (!isNull(event.player.getInventoryStack(i)) && event.player.getInventoryStack(i).ores has dAmmo) {
                //get itemstack of current ammo and convert it into the ammo definition
                val currentAmmo = (dunamicArray[event.player.getInventoryStack(i).definition.makeStack(0)]);
                server.commandManager.executeCommand(event.player, "playsound shotgunsandglitter:reload_pistol player @a ~ ~ ~ 0.3");
                //if item has durability, damage item. else, subtract one from the stack
                if (event.player.getInventoryStack(i).mutable().isDamageable) {
                    event.player.getInventoryStack(i).mutable().damageItem(1, event.player);
                } else {
                    event.player.getInventoryStack(i).mutable().shrink(1);
                }
                event.player.setCooldown(event.item, 30);

                //update ammo and reload gun
                event.item.mutable().updateTag({ammo: [currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo]});
                event.cancel();
            break;
        } else {
        //if inventory slot does not contain ore:dunamicAmmo, move on to next inventory slot
        i += 1;
        }
        }
    }
});

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent) {
    //only run on server
    if (event.player.world.isRemote()) { return; }
    //only reload if you are holding a gun while crouching
    if (event.item.matches(<shotgunsandglitter:shotgun>.withTag({})) && event.player.isSneaking) {

        var i = 0;
        //allow every instance of ore:dunamicAmmo to be loaded into the gun
        val mAmmo = <ore:matrixAmmo> as IOreDictEntry;

        //iterate over every hotbar and inventory slot checking for ammo
        while (i < 35) {

        if (!isNull(event.player.getInventoryStack(i)) && event.player.getInventoryStack(i).ores has mAmmo) {
                //get itemstack of current ammo and convert it into the ammo definition
                val currentAmmo = (matrixArray[event.player.getInventoryStack(i).definition.makeStack(0)]);
                server.commandManager.executeCommand(event.player, "playsound shotgunsandglitter:reload_shotgun player @a ~ ~ ~ 0.3");
                //if item has durability, damage item. else, subtract one from the stack
                if (event.player.getInventoryStack(i).mutable().isDamageable) {
                    event.player.getInventoryStack(i).mutable().damageItem(1, event.player);
                } else {
                    event.player.getInventoryStack(i).mutable().shrink(1);
                }
                event.player.setCooldown(event.item, 20);

                //update ammo and reload gun
                event.item.mutable().updateTag({ammo: [currentAmmo]});
                event.cancel();
            break;
        } else {
        //if inventory slot does not contain ore:dunamicAmmo, move on to next inventory slot
        i += 1;
        }
        }
    }
});

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent) {
    //only run on server
    if (event.player.world.isRemote()) { return; }
    //only reload if you are holding a gun while crouching
    if (event.item.matches(<shotgunsandglitter:sniper>.withTag({})) && event.player.isSneaking) {

        var i = 0;
        //allow every instance of ore:dunamicAmmo to be loaded into the gun
        val rAmmo = <ore:rifleAmmo> as IOreDictEntry;

        //iterate over every hotbar and inventory slot checking for ammo
        while (i < 35) {

        if (!isNull(event.player.getInventoryStack(i)) && event.player.getInventoryStack(i).ores has rAmmo) {
                //get itemstack of current ammo and convert it into the ammo definition
                val currentAmmo = (matrixArray[event.player.getInventoryStack(i).definition.makeStack(0)]);
                server.commandManager.executeCommand(event.player, "playsound shotgunsandglitter:reload_sniper player @a ~ ~ ~ 0.3");
                //if item has durability, damage item. else, subtract one from the stack
                if (event.player.getInventoryStack(i).mutable().isDamageable) {
                    event.player.getInventoryStack(i).mutable().damageItem(1, event.player);
                } else {
                    event.player.getInventoryStack(i).mutable().shrink(1);
                }
                event.player.setCooldown(event.item, 40);

                //update ammo and reload gun
                event.item.mutable().updateTag({ammo: [currentAmmo]});
                event.cancel();
            break;
        } else {
        //if inventory slot does not contain ore:dunamicAmmo, move on to next inventory slot
        i += 1;
        }
        }
    }
});

events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent) {
    //only run on server
    if (event.player.world.isRemote()) { return; }
    //only reload if you are holding a gun while crouching
    if (event.item.matches(<shotgunsandglitter:minigun>.withTag({})) && event.player.isSneaking) {

        var i = 0;
        //allow every instance of ore:dunamicAmmo to be loaded into the gun
        val gAmmo = <ore:minigunAmmo> as IOreDictEntry;

        //iterate over every hotbar and inventory slot checking for ammo
        while (i < 35) {

        if (!isNull(event.player.getInventoryStack(i)) && event.player.getInventoryStack(i).ores has gAmmo) {
                //get itemstack of current ammo and convert it into the ammo definition
                val currentAmmo = (matrixArray[event.player.getInventoryStack(i).definition.makeStack(0)]);
                server.commandManager.executeCommand(event.player, "playsound shotgunsandglitter:reload_minigun player @a ~ ~ ~ 0.3");
                //if item has durability, damage item. else, subtract one from the stack
                if (event.player.getInventoryStack(i).mutable().isDamageable) {
                    event.player.getInventoryStack(i).mutable().damageItem(1, event.player);
                } else {
                    event.player.getInventoryStack(i).mutable().shrink(1);
                }
                event.player.setCooldown(event.item, 100);

                //update ammo and reload gun
                event.item.mutable().updateTag({ammo: [
                    currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo,
                    currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo,
                    currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo,
                    currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo,
                    currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo, currentAmmo
                ]});
                event.cancel();
            break;
        } else {
        //if inventory slot does not contain ore:dunamicAmmo, move on to next inventory slot
        i += 1;
        }
        }
    }
});
