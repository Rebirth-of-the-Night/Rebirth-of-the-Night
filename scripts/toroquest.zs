import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import mods.jei.JEI;

// dupe bug with corpse complex
JEI.removeAndHide(<toroquest:ender_idol>);

// hiding unused armor
JEI.removeAndHide(<toroquest:toro_armor_helmet>);
JEI.removeAndHide(<toroquest:toro_armor_chestplate>);
JEI.removeAndHide(<toroquest:toro_armor_leggings>);
JEI.removeAndHide(<toroquest:toro_armor_boots>);
recipes.remove(<toroquest:toro_leather>);
JEI.removeAndHide(<toroquest:toro_leather>);
recipes.remove(<toroquest:recruitment_papers>);

recipes.addShapeless(<toroquest:recruitment_papers>, [<minecraft:iron_sword>,<minecraft:iron_helmet>,<minecraft:iron_chestplate>,<minecraft:iron_leggings>,<minecraft:iron_boots>,<spartanshields:shield_basic_iron>,<minecraft:dye:0>,<minecraft:feather>,<minecraft:paper>]);

val removedScrolls as string[] = [
    "earth",
    "water",
    "moon",
    "fire",
    "null",
    "wind",
    "sun"
] as string[];

for scroll in removedScrolls {
    JEI.removeAndHide(itemUtils.getItem("toroquest:scroll_"~scroll));
}
