import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei. JEI;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

JEI.removeAndHide(<biomesoplenty:ricebowl>);

JEI.removeAndHide(<biomesoplenty:biome_finder>);

JEI.removeAndHide(<biomesoplenty:gem:7>);
JEI.removeAndHide(<biomesoplenty:gem_ore:7>);
JEI.removeAndHide(<biomesoplenty:gem_block:7>);

JEI.removeAndHide(<biomesoplenty:gem:3>);
JEI.removeAndHide(<biomesoplenty:gem_ore:3>);
JEI.removeAndHide(<biomesoplenty:gem_block:3>);

JEI.removeAndHide(<biomesoplenty:gem:4>);
JEI.removeAndHide(<biomesoplenty:gem_ore:4>);
JEI.removeAndHide(<biomesoplenty:gem_block:4>);

JEI.removeAndHide(<biomesoplenty:gem:0>);
JEI.removeAndHide(<biomesoplenty:gem_ore:0>);

JEI.removeAndHide(<biomesoplenty:gem_ore:5>); // Benelyte

JEI.removeAndHide(<biomesoplenty:honey_block>);
JEI.removeAndHide(<biomesoplenty:honeycomb>);
JEI.removeAndHide(<biomesoplenty:filled_honeycomb>);
JEI.removeAndHide(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "honey", Amount: 1000}}));
JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "honey", Amount: 1000}));
JEI.removeAndHide(<pyrotech:bucket_wood>.withTag({fluids: {FluidName: "honey", Amount: 1000}}));
JEI.removeAndHide(<pyrotech:bucket_clay>.withTag({fluids: {FluidName: "honey", Amount: 1000}}));
JEI.removeAndHide(<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "honey", Amount: 1000}}));

JEI.removeAndHide(<biomesoplenty:mushroom:5>);
JEI.removeAndHide(<biomesoplenty:grass>);
JEI.removeAndHide(<biomesoplenty:grass:8>);
JEI.removeAndHide(<biomesoplenty:grass:6>);

<ore:foodFilledhoneycomb>.remove(<biomesoplenty:filled_honeycomb>);

recipes.remove(<biomesoplenty:terrestrial_artifact>);
recipes.remove(<biomesoplenty:hive:1>);
recipes.remove(<biomesoplenty:hive:3>);

recipes.remove(<biomesoplenty:flesh>);

furnace.setFuel(<biomesoplenty:ash>, 15);
furnace.setFuel(<biomesoplenty:ash_block>, 150);

recipes.remove(<biomesoplenty:mud>);
recipes.addShaped("mudblock", <biomesoplenty:mud>, [
    [<biomesoplenty:mudball>,<biomesoplenty:mudball>],
    [<biomesoplenty:mudball>,<biomesoplenty:mudball>]
]);
recipes.addShaped("sandy_dirt", <biomesoplenty:dirt:1>*4, [
    [<minecraft:dirt>,<ore:sand>],
    [<ore:sand>,<minecraft:dirt>]
]);
recipes.addShaped("silty_dirt", <biomesoplenty:dirt:2>*4, [
    [<minecraft:dirt>,<ore:sand>],
    [<ore:gravel>,<minecraft:dirt>]
]);
recipes.addShaped("loamy_dirt", <biomesoplenty:dirt>*4, [
    [<minecraft:dirt>,<ore:sand>],
    [<minecraft:clay_ball>,<minecraft:dirt>]
]);

recipes.removeByRecipeName("biomesoplenty:biome_finder");

recipes.remove(<biomesoplenty:gem_block:0>);
recipes.addShaped("exorite_to_block", <biomesoplenty:gem_block:0>, [
    [<rotn_blocks:exorite_crystal>,<rotn_blocks:exorite_crystal>,<rotn_blocks:exorite_crystal>],
    [<rotn_blocks:exorite_crystal>,<rotn_blocks:exorite_crystal>,<rotn_blocks:exorite_crystal>],
    [<rotn_blocks:exorite_crystal>,<rotn_blocks:exorite_crystal>,<rotn_blocks:exorite_crystal>]
]);

recipes.removeByRecipeName("biomesoplenty:amethyst");
recipes.addShapeless("block_to_exorite",<rotn_blocks:exorite_crystal>*9,[<biomesoplenty:gem_block:0>]);

recipes.remove(<biomesoplenty:gem_block:5>);
recipes.addShaped("benelyte_to_block", <biomesoplenty:gem_block:5>, [
    [<biomesoplenty:gem:5>,<biomesoplenty:gem:5>,<biomesoplenty:gem:5>],
    [<biomesoplenty:gem:5>,<biomesoplenty:gem:5>,<biomesoplenty:gem:5>],
    [<biomesoplenty:gem:5>,<biomesoplenty:gem:5>,<biomesoplenty:gem:5>]
]);

recipes.removeByRecipeName("biomesoplenty:malachite");
recipes.addShapeless("block_to_benelyte",<biomesoplenty:gem:5>*9,[<biomesoplenty:gem_block:5>]);

recipes.addShapeless("unfired_mud_bricks",<contenttweaker:unfired_mud_brick>,[<biomesoplenty:mudball>]);

recipes.addShapeless("mud_brick_revert",<biomesoplenty:mudball>,[<contenttweaker:unfired_mud_brick>]);

furnace.addRecipe(<minecraft:clay_ball>, <biomesoplenty:mud_brick>, 0.3);

recipes.addShaped("overgrown_stone",<biomesoplenty:grass:1>*8,[
    [<ore:stone>,<ore:stone>,<ore:stone>],
    [<ore:stone>,<minecraft:vine>,<ore:stone>],
    [<ore:stone>,<ore:stone>,<ore:stone>]
]);

recipes.addShaped("white_sand",<biomesoplenty:white_sand>*8,[
    [<ore:sand>,<ore:sand>,<ore:sand>],
    [<ore:sand>,<ore:dyeWhite>,<ore:sand>],
    [<ore:sand>,<ore:sand>,<ore:sand>]
]);

recipes.addShapeless("mud_bricks_from_stairs",<biomesoplenty:mud_brick_block:0>*3,[<biomesoplenty:mud_brick_stairs:0>,<biomesoplenty:mud_brick_stairs:0>,<biomesoplenty:mud_brick_stairs:0>,<biomesoplenty:mud_brick_stairs:0>]);

recipes.removeByRecipeName("biomesoplenty:white_sandstone_stairs");
recipes.addShapedMirrored("white_sandstone_stairs",<biomesoplenty:white_sandstone_stairs:0>*8,[
    [<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,null,null],
    [<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,null],
    [<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>,<biomesoplenty:white_sandstone:0>|<biomesoplenty:white_sandstone:1>|<biomesoplenty:white_sandstone:2>]
]);
recipes.addShapeless("white_sandstone_from_stairs",<biomesoplenty:white_sandstone:0>*3,[<biomesoplenty:white_sandstone_stairs:0>,<biomesoplenty:white_sandstone_stairs:0>,<biomesoplenty:white_sandstone_stairs:0>,<biomesoplenty:white_sandstone_stairs:0>]);

recipes.remove(<biomesoplenty:terrarium:7>);
recipes.addShapeless("beach_terrarium",<biomesoplenty:terrarium:7>,[<ore:sand>,<biomesoplenty:double_plant:3>,<biomesoplenty:jar_empty>]);

////ash

recipes.removeByRecipeName("biomesoplenty:coal_from_ash");
recipes.remove(<biomesoplenty:ash_block>);

recipes.addShaped("ashblock",<biomesoplenty:ash_block>,[
    [<biomesoplenty:ash>,<biomesoplenty:ash>,<biomesoplenty:ash>],
    [<biomesoplenty:ash>,<biomesoplenty:ash>,<biomesoplenty:ash>],
    [<biomesoplenty:ash>,<biomesoplenty:ash>,<biomesoplenty:ash>]
]);

recipes.addShaped("ashblock_compression",<minecraft:coal>,[
    [<biomesoplenty:ash_block>,<biomesoplenty:ash_block>,<biomesoplenty:ash_block>],
    [<biomesoplenty:ash_block>,<biomesoplenty:ash_block>,<biomesoplenty:ash_block>],
    [<biomesoplenty:ash_block>,<biomesoplenty:ash_block>,<biomesoplenty:ash_block>]
]);

recipes.addShaped("red_giant_petal", <biomesoplenty:leaves_6:8>, [
    [<contenttweaker:giant_red_flower_petal>,<contenttweaker:giant_red_flower_petal>],
    [<contenttweaker:giant_red_flower_petal>,<contenttweaker:giant_red_flower_petal>]
]);

recipes.addShaped("yellow_giant_petal", <biomesoplenty:leaves_6:9>, [
    [<contenttweaker:giant_yellow_flower_petal>,<contenttweaker:giant_yellow_flower_petal>],
    [<contenttweaker:giant_yellow_flower_petal>,<contenttweaker:giant_yellow_flower_petal>]
]);

recipes.addShaped("blue_giant_petal", <contenttweaker:petal_blue_big_flower>, [
    [<contenttweaker:giant_blue_flower_petal>,<contenttweaker:giant_blue_flower_petal>],
    [<contenttweaker:giant_blue_flower_petal>,<contenttweaker:giant_blue_flower_petal>]
]);

//amethyst
furnace.remove(<biomesoplenty:gem:0>);
furnace.remove(<biomesoplenty:gem:0>*2);
furnace.remove(<biomesoplenty:gem:5>); //Benelyte
furnace.addRecipe(<rotn_blocks:exorite_crystal>, <osv:biomesoplenty_amethyst_ore_end_stone>, 1);
furnace.addRecipe(<rotn_blocks:exorite_crystal>, <osv:biomesoplenty_amethyst_ore_obsidian>, 1);
furnace.addRecipe(<rotn_blocks:exorite_crystal>*2, <osv:biomesoplenty_amethyst_ore_end_stone:1>, 1);
furnace.addRecipe(<rotn_blocks:exorite_crystal>*2, <osv:biomesoplenty_amethyst_ore_obsidian:1>, 1);