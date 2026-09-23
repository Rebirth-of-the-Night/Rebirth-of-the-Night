#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.futuremc.Stonecutter;


function archRecipe(arch as string, block as IItemStack) {
    var archItem = itemUtils.getItem("contenttweaker:arch_"+arch);
    var archItemLarge = itemUtils.getItem("contenttweaker:arch_large_"+arch);
    Stonecutter.addOutputs(block,
    archItem,
    archItemLarge
    );
}
archRecipe("brick_red_granite", <undergroundbiomes:igneous_brick>);
archRecipe("brick_black_granite", <undergroundbiomes:igneous_brick:1>);
archRecipe("brick_rhyolite", <undergroundbiomes:igneous_brick:2>);
archRecipe("brick_andesite", <undergroundbiomes:igneous_brick:3>);
archRecipe("brick_gabbro", <undergroundbiomes:igneous_brick:4>);
archRecipe("brick_basalt", <undergroundbiomes:igneous_brick:5>);
archRecipe("brick_komatiite", <undergroundbiomes:igneous_brick:6>);
archRecipe("brick_dacite", <undergroundbiomes:igneous_brick:7>);
archRecipe("brick_gneiss", <undergroundbiomes:metamorphic_brick>);
archRecipe("brick_eclogite", <undergroundbiomes:metamorphic_brick:1>);
archRecipe("brick_marble", <undergroundbiomes:metamorphic_brick:2>);
archRecipe("brick_quartzite", <undergroundbiomes:metamorphic_brick:3>);
archRecipe("brick_blue_schist", <undergroundbiomes:metamorphic_brick:4>);
archRecipe("brick_green_schist", <undergroundbiomes:metamorphic_brick:5>);
archRecipe("brick_soapstone", <undergroundbiomes:metamorphic_brick:6>);
archRecipe("brick_migmatite", <undergroundbiomes:metamorphic_brick:7>);
archRecipe("brick_magicked", <contenttweaker:big_magicked_bricks>);
archRecipe("brick_serpentinite", <contenttweaker:big_serpentinite_bricks>);
archRecipe("brick_limestone", <contenttweaker:big_limestone_bricks>);
archRecipe("brick_chalk",<contenttweaker:big_chalk_bricks>);
archRecipe("brick_shale", <contenttweaker:big_shale_bricks>);
archRecipe("brick_siltstone", <contenttweaker:big_siltstone_bricks>);
archRecipe("brick_lignite", <contenttweaker:big_lignite_bricks>);
archRecipe("brick_dolomite", <contenttweaker:big_dolomite_bricks>);
archRecipe("brick_greywacke", <contenttweaker:big_greywacke_bricks>);
archRecipe("brick_chert", <contenttweaker:big_chert_bricks>);
archRecipe("brick_sandstone", <contenttweaker:brick_quark_sandstone>);
archRecipe("brick_red_sandstone", <contenttweaker:brick_quark_red_sandstone>);
archRecipe("brick_white_sandstone", <contenttweaker:brick_white_sandstone>);
archRecipe("brick_red_granite_sandstone", <contenttweaker:brick_red_granite_sandstone>);
archRecipe("brick_soul_sandstone", <contenttweaker:brick_quark_soul_sandstone>);
archRecipe("brick_clay", <contenttweaker:brick_minecraft_clay>);
archRecipe("brick_masonry", <contenttweaker:brick_pyrotech_masonry>);
archRecipe("brick_mud", <contenttweaker:brick_biomesoplenty_mud>);
archRecipe("brick_holystone", <contenttweaker:brick_aether_legacy_holystone>);
archRecipe("brick_carved_stone", <aether_legacy:dungeon_block>);
archRecipe("brick_angelic_stone", <aether_legacy:dungeon_block:2>);
archRecipe("brick_hellfire_stone", <aether_legacy:dungeon_block:4>);
archRecipe("brick_pirani", <da:city_brick>);

val colors = ["", "white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"] as string[];

recipes.remove(<minecraft:banner:*>);
recipes.remove(<minecraft:carpet:*>);

for i in 1 .. 16 {
recipes.addShaped("curtain_"+colors[i], itemUtils.getItem("contenttweaker:curtain_"+colors[i])*12, [
    [<ore:stickWood>],
    [itemUtils.getItem("textiles:spindle", i)],
    [itemUtils.getItem("textiles:spindle", i)]
]);
}

for i in 1 .. 17 {

recipes.addShaped("banner_"+colors[16-i], itemUtils.getItem("minecraft:banner", 16-i)*12, [
    [itemUtils.getItem("textiles:spindle", i)],
    [itemUtils.getItem("textiles:spindle", i)],
    [<ore:stickWood>]
]);

recipes.addShaped("carpet_"+colors[i], itemUtils.getItem("minecraft:carpet", i - 1)*32, [
    [itemUtils.getItem("textiles:spindle", i), itemUtils.getItem("textiles:spindle", i)],
]);

}
