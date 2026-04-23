import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

JEI.removeAndHide(<craftingcraft:portable_crafting_table:1>);
recipes.removeByMod("craftingcraft");

val rock = <pyrotech:rock> | <pyrotech_compat:rock_igneous:5> | <minecraft:flint>;
recipes.addShapeless("crafting_tools", <contenttweaker:crafting_tools>, [<pyrotech:crude_axe:*>|<minecraft:stone_axe:*>, <ore:rock>|<minecraft:flint>, <ore:stickWood>]);
recipes.addShapeless("crafting_tools_1", <contenttweaker:crafting_tools>, [<ore:genericMetalNuggets>, <ore:stickWood>]);

recipes.addShapeless("crafting_mat", <craftingcraft:portable_crafting_table:0>, [<ore:mat>|<betterwithmods:material:31>, <contenttweaker:crafting_tools>]);

recipes.remove(<minecraft:crafting_table>);
recipes.addShapeless("crafting_table", <minecraft:crafting_table>, [<ore:stickMat>, <contenttweaker:crafting_tools>]);

recipes.addShapeless("mythril_block_crafting_table", <randomthings:customworkbench>.withTag({woodName: "simpleores:mythril_block", woodMeta: 0}), [<simpleores:mythril_block>, <contenttweaker:crafting_tools>]);

recipes.addShapeless("cincinnasite_pillar_crafting_table", <randomthings:customworkbench>.withTag({woodName: "betternether:cincinnasite_pillar", woodMeta: 0}), [<betternether:cincinnasite_pillar>, <contenttweaker:crafting_tools>]);

recipes.remove(<aether_legacy:skyroot_crafting_table>);
recipes.addShapeless("skyroot_crafting_table", <aether_legacy:skyroot_crafting_table>, [<aether_legacy:skyroot_plank>, <contenttweaker:crafting_tools>]);

recipes.remove(<arcanearchives:radiant_crafting_table>);
recipes.addShapeless("radiant_crafting_table", <arcanearchives:radiant_crafting_table>, [<arcanearchives:raw_quartz>, <contenttweaker:crafting_tools>]);

//log variants
recipes.addShapeless("crafting_log_spruce", <randomthings:customworkbench>.withTag({woodName: "minecraft:log", woodMeta: 1}), [<minecraft:log:1>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_birch", <randomthings:customworkbench>.withTag({woodName: "minecraft:log", woodMeta: 2}), [<minecraft:log:2>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_jungle", <randomthings:customworkbench>.withTag({woodName: "minecraft:log", woodMeta: 3}), [<minecraft:log:3>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_acacia", <randomthings:customworkbench>.withTag({woodName: "minecraft:log2", woodMeta: 0}), [<minecraft:log2:0>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_dark_oak", <randomthings:customworkbench>.withTag({woodName: "minecraft:log2", woodMeta: 1}), [<minecraft:log2:1>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_cherry", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_0", woodMeta: 5}), [<biomesoplenty:log_0:5>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_umbran", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_0", woodMeta: 6}), [<biomesoplenty:log_0:6>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_fir", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_0", woodMeta: 7}), [<biomesoplenty:log_0:7>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_magical", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_1", woodMeta: 5}), [<biomesoplenty:log_1:5>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_mangrove", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_1", woodMeta: 6}), [<biomesoplenty:log_1:6>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_palm", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_1", woodMeta: 7}), [<biomesoplenty:log_1:7>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_redwood", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_2", woodMeta: 4}), [<biomesoplenty:log_2:4>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_willow", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_2", woodMeta: 5}), [<biomesoplenty:log_2:5>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_pine", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_2", woodMeta: 6}), [<biomesoplenty:log_2:6>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_jacaranda", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_3", woodMeta: 4}), [<biomesoplenty:log_3:4>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_mahogany", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_3", woodMeta: 5}), [<biomesoplenty:log_3:5>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_ebony", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_3", woodMeta: 6}), [<biomesoplenty:log_3:6>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_eucalyptus", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_3", woodMeta: 7}), [<biomesoplenty:log_3:7>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_giant_flower", <randomthings:customworkbench>.withTag({woodName: "biomesoplenty:log_4", woodMeta: 4}), [<biomesoplenty:log_4:4>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_tenebra", <randomthings:customworkbench>.withTag({woodName: "defiledlands:tenebra_log", woodMeta: 0}), [<defiledlands:tenebra_log>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_olive", <randomthings:customworkbench>.withTag({woodName: "rustic:log", woodMeta: 0}), [<rustic:log:0>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_ironwood", <randomthings:customworkbench>.withTag({woodName: "rustic:log", woodMeta: 1}), [<rustic:log:1>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_skyroot", <randomthings:customworkbench>.withTag({woodName: "aether_legacy:aether_log", woodMeta: 0}), [<aether_legacy:aether_log:0>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_golden_oak", <randomthings:customworkbench>.withTag({woodName: "aether_legacy:aether_log", woodMeta: 1}), [<aether_legacy:aether_log:1>, <contenttweaker:crafting_tools>]);

//Add a generic crafting log recipe registered before the default oak one and register it to JEI for showcase (also acts as a fallback for any log without a custom table) 
recipes.addShapeless("crafting_log_jei", <randomthings:customworkbench>.withTag({woodName: "minecraft:log", woodMeta: 0}), [<ore:logWood>, <contenttweaker:crafting_tools>]);
recipes.addShapeless("crafting_log_oak", <randomthings:customworkbench>.withTag({woodName: "minecraft:log", woodMeta: 0}), [<minecraft:log:0>, <contenttweaker:crafting_tools>]);
JEI.addItem(<randomthings:customworkbench>.withTag({woodName: "minecraft:log", woodMeta: 0}));