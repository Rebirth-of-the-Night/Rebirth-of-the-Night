import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.futuremc.Stonecutter;

function archRecipe(arch as IItemStack, archLarge as IItemStack, block as IItemStack) {
    Stonecutter.addOutputs(block,
    arch,
    archLarge
    );
}
archRecipe(<contenttweaker:arch_brick_red_granite>, <contenttweaker:arch_large_brick_red_granite>, <undergroundbiomes:igneous_brick>);
archRecipe(<contenttweaker:arch_brick_black_granite>, <contenttweaker:arch_large_brick_black_granite>, <undergroundbiomes:igneous_brick:1>);
archRecipe(<contenttweaker:arch_brick_rhyolite>, <contenttweaker:arch_large_brick_rhyolite>, <undergroundbiomes:igneous_brick:1>);
archRecipe(<contenttweaker:arch_brick_andesite>, <contenttweaker:arch_large_brick_andesite>, <undergroundbiomes:igneous_brick:1>);
archRecipe(<contenttweaker:arch_brick_gabbro>, <contenttweaker:arch_large_brick_gabbro>, <undergroundbiomes:igneous_brick:1>);
archRecipe(<contenttweaker:arch_brick_basalt>, <contenttweaker:arch_large_brick_basalt>, <undergroundbiomes:igneous_brick:1>);
archRecipe(<contenttweaker:arch_brick_komatiite>, <contenttweaker:arch_large_brick_komatiite>, <undergroundbiomes:igneous_brick:1>);
archRecipe(<contenttweaker:arch_brick_dacite>, <contenttweaker:arch_large_brick_dacite>, <undergroundbiomes:igneous_brick:1>);
archRecipe(<contenttweaker:arch_brick_gneiss>, <contenttweaker:arch_large_brick_gneiss>, <undergroundbiomes:metamorphic_brick>);
archRecipe(<contenttweaker:arch_brick_eclogite>, <contenttweaker:arch_large_brick_eclogite>, <undergroundbiomes:metamorphic_brick:1>);
archRecipe(<contenttweaker:arch_brick_marble>, <contenttweaker:arch_large_brick_marble>, <undergroundbiomes:metamorphic_brick:1>);
archRecipe(<contenttweaker:arch_brick_quartzite>, <contenttweaker:arch_large_brick_quartzite>, <undergroundbiomes:metamorphic_brick:1>);
archRecipe(<contenttweaker:arch_brick_blue_schist>, <contenttweaker:arch_large_brick_blue_schist>, <undergroundbiomes:metamorphic_brick:1>);
archRecipe(<contenttweaker:arch_brick_green_schist>, <contenttweaker:arch_large_brick_green_schist>, <undergroundbiomes:metamorphic_brick:1>);
archRecipe(<contenttweaker:arch_brick_soapstone>, <contenttweaker:arch_large_brick_soapstone>, <undergroundbiomes:metamorphic_brick:1>);
archRecipe(<contenttweaker:arch_brick_migmatite>, <contenttweaker:arch_large_brick_migmatite>, <undergroundbiomes:metamorphic_brick:1>);
archRecipe(<contenttweaker:arch_brick_magicked>, <contenttweaker:arch_large_brick_magicked>, <contenttweaker:big_magicked_bricks>);
archRecipe(<contenttweaker:arch_brick_serpentinite>, <contenttweaker:arch_large_brick_serpentinite>, <contenttweaker:big_serpentinite_bricks>);
archRecipe(<contenttweaker:arch_brick_limestone>, <contenttweaker:arch_large_brick_limestone>, <contenttweaker:big_limestone_bricks>);
archRecipe(<contenttweaker:arch_brick_chalk>, <contenttweaker:arch_large_brick_chalk>,<contenttweaker:big_chalk_bricks>);
archRecipe(<contenttweaker:arch_brick_shale>, <contenttweaker:arch_large_brick_shale>, <contenttweaker:big_shale_bricks>);
archRecipe(<contenttweaker:arch_brick_siltstone>, <contenttweaker:arch_large_brick_siltstone>, <contenttweaker:big_siltstone_bricks>);
archRecipe(<contenttweaker:arch_brick_lignite>, <contenttweaker:arch_large_brick_lignite>, <contenttweaker:big_lignite_bricks>);
archRecipe(<contenttweaker:arch_brick_dolomite>, <contenttweaker:arch_large_brick_dolomite>, <contenttweaker:big_dolomite_bricks>);
archRecipe(<contenttweaker:arch_brick_greywacke>, <contenttweaker:arch_large_brick_greywacke>, <contenttweaker:big_greywacke_bricks>);
archRecipe(<contenttweaker:arch_brick_chert>, <contenttweaker:arch_large_brick_chert>, <contenttweaker:big_chert_bricks>);
archRecipe(<contenttweaker:arch_brick_sandstone>, <contenttweaker:arch_large_brick_sandstone>, <contenttweaker:brick_quark_sandstone>);
archRecipe(<contenttweaker:arch_brick_red_sandstone>, <contenttweaker:arch_large_brick_red_sandstone>, <contenttweaker:brick_quark_red_sandstone>);
archRecipe(<contenttweaker:arch_brick_white_sandstone>, <contenttweaker:arch_large_brick_white_sandstone>, <contenttweaker:brick_white_sandstone>);
archRecipe(<contenttweaker:arch_brick_red_granite_sandstone>, <contenttweaker:arch_large_brick_red_granite_sandstone>, <contenttweaker:brick_red_granite_sandstone>);
archRecipe(<contenttweaker:arch_brick_soul_sandstone>, <contenttweaker:arch_large_brick_soul_sandstone>, <contenttweaker:brick_quark_soul_sandstone>);
archRecipe(<contenttweaker:arch_brick_clay>, <contenttweaker:arch_large_brick_clay>, <contenttweaker:brick_minecraft_clay>);
archRecipe(<contenttweaker:arch_brick_masonry>, <contenttweaker:arch_large_brick_masonry>, <contenttweaker:brick_pyrotech_masonry>);
archRecipe(<contenttweaker:arch_brick_mud>, <contenttweaker:arch_large_brick_mud>, <contenttweaker:brick_biomesoplenty_mud>);
archRecipe(<contenttweaker:arch_brick_holystone>, <contenttweaker:arch_large_brick_holystone>, <contenttweaker:brick_aether_legacy_holystone>);
archRecipe(<contenttweaker:arch_brick_carved_stone>, <contenttweaker:arch_large_brick_carved_stone>, <aether_legacy:dungeon_block>);
archRecipe(<contenttweaker:arch_brick_angelic_stone>, <contenttweaker:arch_large_brick_angelic_stone>, <aether_legacy:dungeon_block:2>);
archRecipe(<contenttweaker:arch_brick_hellfire_stone>, <contenttweaker:arch_large_brick_hellfire_stone>, <aether_legacy:dungeon_block:4>);
archRecipe(<contenttweaker:arch_brick_pirani>, <contenttweaker:arch_large_brick_pirani>, <da:city_brick>);