#loader contenttweaker

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemFoodEaten;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var keg_info = VanillaFactory.createItem("keg_info");
keg_info.register();

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

var tankard_rum = VanillaFactory.createItemFood("tankard_rum", 1);
tankard_rum.setSaturation(1.0);
tankard_rum.setAlwaysEdible(true);
tankard_rum.setItemUseAction("DRINK");
tankard_rum.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_rum.register();

var tankard_ognovoda = VanillaFactory.createItemFood("tankard_ognovoda", 1);
tankard_ognovoda.setSaturation(1.0);
tankard_ognovoda.setAlwaysEdible(true);
tankard_ognovoda.setItemUseAction("DRINK");
tankard_ognovoda.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_ognovoda.register();

var tankard_mead = VanillaFactory.createItemFood("tankard_mead", 1);
tankard_mead.setSaturation(1.0);
tankard_mead.setAlwaysEdible(true);
tankard_mead.setItemUseAction("DRINK");
tankard_mead.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_mead.register();

var tankard_dragon_daquiri = VanillaFactory.createItemFood("tankard_dragon_daquiri", 1);
tankard_dragon_daquiri.setSaturation(1.0);
tankard_dragon_daquiri.setAlwaysEdible(true);
tankard_dragon_daquiri.setItemUseAction("DRINK");
tankard_dragon_daquiri.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_dragon_daquiri.register();

var tankard_ironberry_stout = VanillaFactory.createItemFood("tankard_ironberry_stout", 1);
tankard_ironberry_stout.setSaturation(1.0);
tankard_ironberry_stout.setAlwaysEdible(true);
tankard_ironberry_stout.setItemUseAction("DRINK");
tankard_ironberry_stout.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_ironberry_stout.register();

var tankard_twinned_spirit = VanillaFactory.createItemFood("tankard_twinned_spirit", 1);
tankard_twinned_spirit.setSaturation(1.0);
tankard_twinned_spirit.setAlwaysEdible(true);
tankard_twinned_spirit.setItemUseAction("DRINK");
tankard_twinned_spirit.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_twinned_spirit.register();

var tankard_billowing_tonic = VanillaFactory.createItemFood("tankard_billowing_tonic", 1);
tankard_billowing_tonic.setSaturation(1.0);
tankard_billowing_tonic.setAlwaysEdible(true);
tankard_billowing_tonic.setItemUseAction("DRINK");
tankard_billowing_tonic.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_billowing_tonic.register();

var tankard_enchanted_mead = VanillaFactory.createItemFood("tankard_enchanted_mead", 1);
tankard_enchanted_mead.setSaturation(1.0);
tankard_enchanted_mead.setAlwaysEdible(true);
tankard_enchanted_mead.setItemUseAction("DRINK");
tankard_enchanted_mead.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_enchanted_mead.register();

var tankard_blastem_brandy = VanillaFactory.createItemFood("tankard_blastem_brandy", 1);
tankard_blastem_brandy.setSaturation(1.0);
tankard_blastem_brandy.setAlwaysEdible(true);
tankard_blastem_brandy.setItemUseAction("DRINK");
tankard_blastem_brandy.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_blastem_brandy.register();

var tankard_rose_tequila = VanillaFactory.createItemFood("tankard_rose_tequila", 1);
tankard_rose_tequila.setSaturation(1.0);
tankard_rose_tequila.setAlwaysEdible(true);
tankard_rose_tequila.setItemUseAction("DRINK");
tankard_rose_tequila.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_rose_tequila.register();

var tankard_sanguine_remedy = VanillaFactory.createItemFood("tankard_sanguine_remedy", 1);
tankard_sanguine_remedy.setSaturation(1.0);
tankard_sanguine_remedy.setAlwaysEdible(true);
tankard_sanguine_remedy.setItemUseAction("DRINK");
tankard_sanguine_remedy.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_sanguine_remedy.register();

var tankard_tzarma = VanillaFactory.createItemFood("tankard_tzarma", 1);
tankard_tzarma.setSaturation(1.0);
tankard_tzarma.setAlwaysEdible(true);
tankard_tzarma.setItemUseAction("DRINK");
tankard_tzarma.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_tzarma.register();

var tankard_melon_chareau = VanillaFactory.createItemFood("tankard_melon_chareau", 1);
tankard_melon_chareau.setSaturation(1.0);
tankard_melon_chareau.setAlwaysEdible(true);
tankard_melon_chareau.setItemUseAction("DRINK");
tankard_melon_chareau.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_melon_chareau.register();

var tankard_blue_ribbon = VanillaFactory.createItemFood("tankard_blue_ribbon", 1);
tankard_blue_ribbon.setSaturation(1.0);
tankard_blue_ribbon.setAlwaysEdible(true);
tankard_blue_ribbon.setItemUseAction("DRINK");
tankard_blue_ribbon.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:contenttweaker:tankard>);
    }
};
tankard_blue_ribbon.register();