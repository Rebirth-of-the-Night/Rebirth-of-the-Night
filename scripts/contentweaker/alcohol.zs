#loader contenttweaker

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemFoodEaten;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var tankard = VanillaFactory.createItem("tankard");
tankard.register();

var tankard_beer = VanillaFactory.createItemFood("tankard_beer", 1);
tankard_beer.setSaturation(1.0);
tankard_beer.setAlwaysEdible(true);
tankard_beer.setItemUseAction("DRINK");
tankard_beer.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_beer.register();

var tankard_cider = VanillaFactory.createItemFood("tankard_cider", 1);
tankard_cider.setSaturation(1.0);
tankard_cider.setAlwaysEdible(true);
tankard_cider.setItemUseAction("DRINK");
tankard_cider.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_cider.register();

var tankard_sake = VanillaFactory.createItemFood("tankard_sake", 1);
tankard_sake.setSaturation(1.0);
tankard_sake.setAlwaysEdible(true);
tankard_sake.setItemUseAction("DRINK");
tankard_sake.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_sake.register();

var tankard_red_wine = VanillaFactory.createItemFood("tankard_red_wine", 1);
tankard_red_wine.setSaturation(1.0);
tankard_red_wine.setAlwaysEdible(true);
tankard_red_wine.setItemUseAction("DRINK");
tankard_red_wine.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_red_wine.register();

var tankard_ambrosia_mocktail = VanillaFactory.createItemFood("tankard_ambrosia_mocktail", 1);
tankard_ambrosia_mocktail.setSaturation(1.0);
tankard_ambrosia_mocktail.setAlwaysEdible(true);
tankard_ambrosia_mocktail.setItemUseAction("DRINK");
tankard_ambrosia_mocktail.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_ambrosia_mocktail.register();

var tankard_silken_nectar = VanillaFactory.createItemFood("tankard_silken_nectar", 1);
tankard_silken_nectar.setSaturation(1.0);
tankard_silken_nectar.setAlwaysEdible(true);
tankard_silken_nectar.setItemUseAction("DRINK");
tankard_silken_nectar.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_silken_nectar.register();

var tankard_mythril_energy = VanillaFactory.createItemFood("tankard_mythril_energy", 1);
tankard_mythril_energy.setSaturation(1.0);
tankard_mythril_energy.setAlwaysEdible(true);
tankard_mythril_energy.setItemUseAction("DRINK");
tankard_mythril_energy.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_mythril_energy.register();

var tankard_chemomile = VanillaFactory.createItemFood("tankard_chemomile", 1);
tankard_chemomile.setSaturation(1.0);
tankard_chemomile.setAlwaysEdible(true);
tankard_chemomile.setItemUseAction("DRINK");
tankard_chemomile.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_chemomile.register();
