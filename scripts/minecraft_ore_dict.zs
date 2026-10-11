#priority 101
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

<ore:sourceCopper>.addItems([<contenttweaker:raw_copper>,<simpleores:copper_ingot>]);
<ore:sourceCopper>.addAll(<ore:oreCopper>);
<ore:sourceTin>.addItems([<contenttweaker:raw_tin>,<simpleores:tin_ingot>]);
<ore:sourceTin>.addAll(<ore:oreTin>);
<ore:sourceIron>.addItems([<contenttweaker:raw_iron>,<minecraft:iron_ingot>]);
<ore:sourceIron>.addAll(<ore:oreIron>);
<ore:sourceGold>.addItems([<contenttweaker:raw_gold>,<minecraft:gold_ingot>]);
<ore:sourceGold>.addAll(<ore:oreGold>);
<ore:sourceSilver>.addItems([<contenttweaker:raw_silver>,<iceandfire:silver_ingot>]);
<ore:sourceSilver>.addAll(<ore:oreSilver>);
<ore:sourceGravitite>.addItems([<contenttweaker:raw_gravitite>,<contenttweaker:material_part:40>]);
<ore:sourceGravitite>.addAll(<ore:oreGravitite>);
<ore:sourceZinc>.addAll(<ore:ingotZinc>);
<ore:sourceZinc>.add(<pyrotech:rock:3>);
<ore:sourceEndorium>.add(<endreborn:item_ingot_endorium>);
<ore:sourceBronze>.addAll(<ore:ingotBronze>);
<ore:sourceBrass>.addAll(<ore:ingotBrass>);

val rock_dictionary = <ore:rock>;
rock_dictionary.remove([<pyrotech_compat:rock_sedimentary_sand:11>,<pyrotech_compat:rock_sedimentary_sand:12>,<pyrotech_compat:rock_metamorphic_sand:15>,<pyrotech_compat:rock_metamorphic_sand:14>,<pyrotech_compat:rock_metamorphic_sand:13>,<pyrotech_compat:rock_metamorphic_sand:12>,<pyrotech_compat:rock_metamorphic_sand:11>,<pyrotech_compat:rock_metamorphic_sand:10>,<pyrotech_compat:rock_metamorphic_sand:9>,<pyrotech_compat:rock_igneous_sand:15>,<pyrotech_compat:rock_igneous_sand:14>,<pyrotech_compat:rock_igneous_sand:13>,<pyrotech_compat:rock_igneous_sand:12>,<pyrotech_compat:rock_igneous_sand:11>,<pyrotech_compat:rock_igneous_sand:10>,<pyrotech_compat:rock_igneous_sand:8>,<pyrotech:rock:1>,<pyrotech:rock:2>,<pyrotech:rock:3>,<pyrotech_compat:rock_netherrack>,<pyrotech_compat:rock_sedimentary_sand:15>]);

val dyeBlack = <ore:dyeBlack>;
dyeBlack.remove(<netherex:wither_dust>);

val boneWithered = <ore:boneWithered>;
boneWithered.remove(<netherex:wither_bone>);

val stone = <ore:stone>;
stone.add(<aether_legacy:holystone>);
stone.add(<contenttweaker:serpentinite>);

val ingotEndorium = <ore:ingotEndorium>;
ingotEndorium.add(<endreborn:item_ingot_endorium>);

val ingotSoulforgedSteel = <ore:ingotSoulforgedSteel>;
ingotSoulforgedSteel.add(<betterwithmods:material:14>);

// the oredict for recipes where there are only vanilla variants
// use this for oak, default other non-vanilla variants to this as well
val genericPlanks = <ore:genericPlanks>;
genericPlanks.addAll(<ore:plankWood>);
genericPlanks.remove(<minecraft:planks:1>);
genericPlanks.remove(<minecraft:planks:2>);
genericPlanks.remove(<minecraft:planks:3>);
genericPlanks.remove(<minecraft:planks:4>);
genericPlanks.remove(<minecraft:planks:5>);
val genericFences = <ore:genericFences>;
genericFences.addAll(<ore:fenceWood>);
genericFences.remove(<minecraft:birch_fence>);
genericFences.remove(<minecraft:spruce_fence>);
genericFences.remove(<minecraft:jungle_fence>);
genericFences.remove(<minecraft:acacia_fence>);
genericFences.remove(<minecraft:dark_oak_fence>);
val genericWoodSlabs = <ore:genericWoodSlabs>;
genericWoodSlabs.addAll(<ore:slabWood>);
genericWoodSlabs.remove(<minecraft:wooden_slab:1>);
genericWoodSlabs.remove(<minecraft:wooden_slab:2>);
genericWoodSlabs.remove(<minecraft:wooden_slab:3>);
genericWoodSlabs.remove(<minecraft:wooden_slab:4>);
genericWoodSlabs.remove(<minecraft:wooden_slab:5>);

val mossyStoneBricks = <ore:mossyStoneBricks>;
mossyStoneBricks.add(<minecraft:stonebrick:1>);
mossyStoneBricks.add(<betterwithaddons:whitebrick:1>);
mossyStoneBricks.add(<defiledlands:stone_defiled_decoration:2>);
mossyStoneBricks.add(<iceandfire:dread_stone_bricks_mossy>);

val gbars = <ore:genericMetalBars>;
gbars.add(<minecraft:iron_bars>);
gbars.add(<aesthetics:copper_bars>);
gbars.add(<aesthetics:tin_bars>);
gbars.add(<betterwithaddons:wrought_bars:0>);

val gnugs = <ore:genericMetalNuggets>;
gnugs.addAll(<ore:nuggetCopper>);
gnugs.addAll(<ore:nuggetTin>);
gnugs.addAll(<ore:nuggetIron>);
gnugs.addAll(<ore:nuggetBronze>);
gnugs.addAll(<ore:nuggetSilver>);
gnugs.addAll(<ore:nuggetSteel>);
gnugs.addAll(<ore:nuggetWroughtIron>);

val bars = <ore:bars>;
bars.addAll(<ore:genericMetalBars>);
bars.add(<aesthetics:mythril_bars>);
bars.add(<aesthetics:adamantium_bars>);
bars.add(<aesthetics:onyx_bars>);
bars.add(<aether_legacy:zanite_bars>);
bars.add(<betternether:cincinnasite_bars>);

val rawOreTin = <ore:rawOreTin>;
rawOreTin.add(<contenttweaker:raw_tin>);

val rawOreCopper = <ore:rawOreCopper>;
rawOreCopper.add(<contenttweaker:raw_copper>);

val rawOreIron = <ore:rawOreIron>;
rawOreIron.add(<contenttweaker:raw_iron>);

val rawOreSilver = <ore:rawOreSilver>;
rawOreSilver.add(<contenttweaker:raw_silver>);

val rawOreGold = <ore:rawOreGold>;
rawOreGold.add(<contenttweaker:raw_gold>);

val rawOreGravitite = <ore:rawOreGravitite>;
rawOreGravitite.add(<contenttweaker:raw_gravitite>);

val rawOreViridium = <ore:rawOreViridium>;
rawOreViridium.add(<contenttweaker:raw_viridium>);

val rawOreMythril = <ore:rawOreMythril>;
rawOreMythril.add(<contenttweaker:raw_mythril>);

val rawOreWrought = <ore:rawOreWrought>;
rawOreWrought.add(<contenttweaker:material_part:52>);

val ironIngot = <ore:ingotIron>;
ironIngot.add(<contenttweaker:material_part:49>);


val buckets = <ore:bucket>;
buckets.add(<minecraft:bucket>);
buckets.add(<pyrotech:bucket_wood>);
buckets.add(<pyrotech:bucket_stone>);
buckets.add(<pyrotech:bucket_clay>);
buckets.add(<aether_legacy:skyroot_bucket:0>);

// Ore Dictionary Entries

val ingotableGem = <ore:ingotableGem>;
ingotableGem.add(
  <minecraft:diamond>,
  <biomesoplenty:gem:2>,
  <biomesoplenty:gem:6>,
  <biomesoplenty:gem:1>,
  <aether_legacy:zanite_gemstone>
);

val gemIngot = <ore:gemIngot>;
gemIngot.add(
  <betterwithmods:material:45>,
  <contenttweaker:sapphire_ingot>,
  <contenttweaker:ruby_ingot>,
  <contenttweaker:peridot_ingot>,
  <contenttweaker:zanite_ingot>
);

val stoneWOHolystone = <ore:stoneWithoutHolystone>;
stoneWOHolystone.addAll(<ore:stone>);
stoneWOHolystone.remove(<aether_legacy:holystone>);

<ore:plankWood>.add(<aether_legacy:skyroot_plank>);
<ore:sand>.add(<minecraft:sand:1>);
<ore:ingotCrucibleSteel>.add(<dungeontactics:steel_ingot>);
<ore:hardReed>.addItems([<biomesoplenty:bamboo>,<minecraft:reeds>,<betternether:nether_reed>]);
<ore:hollowReed>.addItems([<biomesoplenty:bamboo>,<biomesoplenty:plant_1:8>,<futuremc:bamboo>]);
<ore:listAllmilk>.addItems([<aether_legacy:skyroot_bucket:4>]);
<ore:listAllmilk>.remove(<aether_legacy:skyroot_bucket>);
<ore:milkBucket>.remove(<aether_legacy:skyroot_bucket>);

<ore:workbench>.addItems([<randomthings:customworkbench:*>,<arcanearchives:radiant_crafting_table>]);

val defileableGrass = <ore:defileableGrass>;
defileableGrass.add(
  <minecraft:grass>,
  <biomesoplenty:grass:3>,
  <biomesoplenty:grass:4>,
  <biomesoplenty:grass:2>,
  <biomesoplenty:grass:7>,
  <aether_legacy:aether_grass>,
  <minecraft:grass_path>,
  <biomesoplenty:grass_path:2>,
  <biomesoplenty:grass_path:1>,
  <biomesoplenty:grass_path>
);

val farmland = <ore:farmland>;
farmland.add(
  <minecraft:farmland>,
  <biomesoplenty:farmland_0:1>,
  <biomesoplenty:farmland_0>,
  <biomesoplenty:farmland_1>
);

<ore:pileDirt>.addItems([<contenttweaker:silty_dirt_pile>,<contenttweaker:loamy_dirt_pile>,<contenttweaker:sandy_dirt_pile>,<contenttweaker:aether_dirt_pile>]);

<ore:dye>.addItems([<biomesoplenty:blue_dye>,<biomesoplenty:brown_dye>,<biomesoplenty:green_dye>,<biomesoplenty:white_dye>,<biomesoplenty:black_dye>]);

<ore:blockGlass>.addItems([<iceandfire:myrmex_desert_resin_glass>,<iceandfire:myrmex_jungle_resin_glass>,<betternether:quartz_glass>,<betternether:quartz_glass_framed>,<betternether:quartz_stained_glass:*>,<betternether:quartz_stained_glass_framed:*>,<dungeontactics:dungeon_glass>,<quark:framed_glass>,<sereneseasons:greenhouse_glass>,<twilightforest:auroralized_glass>]);

<ore:grass>.addItems([<minecraft:grass_path>,<aether_legacy:aether_grass>,<aether_legacy:enchanted_aether_grass>,<betterwithaddons:extra_grass:0>,<betterwithaddons:extra_grass:1>,<betterwithaddons:extra_grass:2>,<betterwithaddons:extra_grass:3>,<biomesoplenty:grass:1>,<biomesoplenty:grass:2>,<biomesoplenty:grass:3>,<biomesoplenty:grass:4>,<biomesoplenty:grass:5>,<biomesoplenty:grass:6>,<biomesoplenty:grass:7>,<biomesoplenty:grass:8>,<biomesoplenty:grass_path:0>,<stygian:endgrass>]);

<ore:lever>.addItems([<minecraft:lever>,<aether_legacy:aether_lever>]);

<ore:buttonStone>.addItems([<minecraft:stone_button>,<undergroundbiomes:igneous_stone_button:*>,<undergroundbiomes:metamorphic_stone_button:*>,<undergroundbiomes:sedimentary_stone_button:*>]);

<ore:mat>.addItems([<harvestcraft:wovencottonitem>]);
<ore:mat>.addAll(<ore:wool>);
<ore:mat>.addAll(<ore:leather>);
<ore:mat>.add(<pyrotech:material:26>);

<ore:nailedWood>.addItems([<contenttweaker:hellbark_boards>,<contenttweaker:tenebra_boards>,<contenttweaker:pine_boards>,<contenttweaker:oak_boards>,<contenttweaker:mangrove_boards>,<contenttweaker:umbran_boards>,<contenttweaker:dark_oak_boards>,<contenttweaker:birch_boards>,<contenttweaker:acacia_boards>,<contenttweaker:magic_boards>,<contenttweaker:dreadwood_boards>,<contenttweaker:fir_boards>,<contenttweaker:ironwood_boards>,<contenttweaker:jungle_boards>,<contenttweaker:wyrmwood_boards>,<contenttweaker:stalagnate_boards>,<contenttweaker:sacred_oak_boards>,<contenttweaker:eucalyptus_boards>,<contenttweaker:cherry_boards>,<contenttweaker:spruce_boards>,<contenttweaker:olive_boards>,<contenttweaker:jacaranda_boards>,<contenttweaker:mahogany_boards>,<contenttweaker:redwood_boards>,<contenttweaker:palm_boards>,<contenttweaker:ebony_boards>,<contenttweaker:willow_boards>,<contenttweaker:skywood_boards>]);

<ore:refractoryBlock>.addItems([<contenttweaker:brick_pyrotech_refractory>,<ceramics:clay_barrel:*>,<ceramics:clay_barrel_stained:*>,<ceramics:clay_barrel_stained_extension:*>,<contenttweaker:refracotta>,<contenttweaker:refracotta_green>,<contenttweaker:refracotta_light_gray>,<contenttweaker:refracotta_light_blue>,<contenttweaker:refracotta_yellow>,<contenttweaker:refracotta_cyan>,<contenttweaker:refracotta_purple>,<contenttweaker:refracotta_pink>,<contenttweaker:refracotta_brown>,<contenttweaker:refracotta_magenta>,<contenttweaker:refracotta_lime>,<contenttweaker:refracotta_white>,<contenttweaker:refracotta_black>,<contenttweaker:refracotta_red>,<contenttweaker:refracotta_orange>,<contenttweaker:refracotta_blue>,<contenttweaker:refracotta_gray>,<pyrotech:refractory_door>,<pyrotech:refractory_glass>,<pyrotech:igniter:1>,<pyrotech:brick_tank>,<pyrotech:faucet_brick>,<pyrotech:tar_collector:1>,<pyrotech:tar_drain:1>]);

val dirt = <ore:dirt>;
dirt.addItems([<biomesoplenty:dirt:1>,<biomesoplenty:dirt:2>,<aether_legacy:aether_dirt>,<minecraft:dirt:1>,<biomesoplenty:dirt:8>,<biomesoplenty:dirt:10>,<biomesoplenty:dirt:9>]);

val brown = <ore:dyeBrown>;
brown.remove(<betterwithmods:material:5>);

<ore:blockCharcoal>.add(<pyrotech:charcoal_block>);

<ore:listAllseed>.addItems([<betterwithmods:hemp>,<rustic:ironwoodseed>, <dynamictreesbop:palmseed>]);
<ore:bookshelf>.addItems([<aether_legacy:skyroot_bookshelf>,<inspirations:bookshelf:*>]);
<ore:bookshelf>.remove([<inspirations:bookshelf>]);

<ore:slabWood>.addItems([<quark:stained_planks_white_slab:*>,<quark:stained_planks_orange_slab:*>,<quark:stained_planks_magenta_slab:*>,<quark:stained_planks_light_blue_slab:*>,<quark:stained_planks_yellow_slab:*>,<quark:stained_planks_lime_slab:*>,<quark:stained_planks_pink_slab:*>,<quark:stained_planks_gray_slab:*>,<quark:stained_planks_silver_slab:*>,<quark:stained_planks_cyan_slab:*>,<quark:stained_planks_purple_slab:*>,<quark:stained_planks_blue_slab:*>,<quark:stained_planks_brown_slab:*>,<quark:stained_planks_green_slab:*>,<quark:stained_planks_red_slab:*>,<quark:stained_planks_black_slab:*>,<quark:bark_oak_slab:*>,<quark:bark_spruce_slab:*>,<quark:bark_birch_slab:*>,<quark:bark_jungle_slab:*>,<quark:bark_acacia_slab:*>,<quark:bark_dark_oak_slab:*>]);

<ore:stairWood>.addItems([<betternether:stalagnate_planks_stairs>,<betternether:reeds_stairs>,<quark:stained_planks_white_stairs>,<quark:stained_planks_orange_stairs>,<quark:stained_planks_magenta_stairs>,<quark:stained_planks_light_blue_stairs>,<quark:stained_planks_yellow_stairs>,<quark:stained_planks_lime_stairs>,<quark:stained_planks_pink_stairs>,<quark:stained_planks_gray_stairs>,<quark:stained_planks_silver_stairs>,<quark:stained_planks_cyan_stairs>,<quark:stained_planks_purple_stairs>,<quark:stained_planks_blue_stairs>,<quark:stained_planks_brown_stairs>,<quark:stained_planks_green_stairs>,<quark:stained_planks_red_stairs>,<quark:stained_planks_black_stairs>,<quark:bark_oak_stairs>,<quark:bark_spruce_stairs>,<quark:bark_birch_stairs>,<quark:bark_jungle_stairs>,<quark:bark_acacia_stairs>,<quark:bark_dark_oak_stairs>]);

<ore:fenceWood>.addItems([<betternether:stalagnate_planks_fence>,<betternether:reeds_fence>,<rustic:fence_olive>,<rustic:fence_ironwood>]);

<ore:fenceGateWood>.addItems([<betternether:stalagnate_planks_gate>,<betternether:reeds_gate>,<rustic:fence_gate_olive>,<rustic:fence_gate_ironwood>]);

val terracotta = <ore:terracotta>;
terracotta.addItems([<minecraft:stained_hardened_clay:1>,<minecraft:stained_hardened_clay:2>,<minecraft:stained_hardened_clay:3>,<minecraft:stained_hardened_clay:4>,<minecraft:stained_hardened_clay:5>,<minecraft:stained_hardened_clay:6>,<minecraft:stained_hardened_clay:7>,<minecraft:stained_hardened_clay:8>,<minecraft:stained_hardened_clay:9>,<minecraft:stained_hardened_clay:10>,<minecraft:stained_hardened_clay:11>,<minecraft:stained_hardened_clay:12>,<minecraft:stained_hardened_clay:12>,<minecraft:stained_hardened_clay:13>,<minecraft:stained_hardened_clay:14>,<minecraft:stained_hardened_clay:15>,<minecraft:hardened_clay>]);

val trapdoorWood = <ore:trapdoorWood>;
trapdoorWood.addItems([<twilightforest:twilight_oak_trapdoor>,<twilightforest:canopy_trapdoor>,<twilightforest:mangrove_trapdoor>,<twilightforest:dark_trapdoor>,<twilightforest:time_trapdoor>,<twilightforest:trans_trapdoor>,<twilightforest:mine_trapdoor>,<twilightforest:sort_trapdoor>,<aether_legacy:skyroot_trapdoor>]);

val pressurePlateWood = <ore:pressurePlateWood>;
pressurePlateWood.addItems([<aether_legacy:skyroot_pressure_plate>,<betternether:stalagnate_planks_plate>,<betternether:reeds_plate>,<twilightforest:twilight_oak_plate>,<twilightforest:canopy_plate>,<twilightforest:mangrove_plate>,<twilightforest:dark_plate>,<twilightforest:time_plate>,<twilightforest:trans_plate>,<twilightforest:mine_plate>,<twilightforest:sort_plate>]);

val buttonWood = <ore:buttonWood>;
buttonWood.addItems([<aether_legacy:skyroot_button>,<betternether:reeds_button>,<betternether:stalagnate_planks_button>,<twilightforest:twilight_oak_button>,<twilightforest:canopy_button>,<twilightforest:mangrove_button>,<twilightforest:dark_button>,<twilightforest:time_button>,<twilightforest:trans_button>,<twilightforest:mine_button>,<twilightforest:sort_button>]);

val allStoneSlab = <ore:stoneSlab>;
allStoneSlab.addItems([<minecraft:stone_slab:*>, <undergroundbiomes:igneous_stone_halfslab:*>, <undergroundbiomes:metamorphic_stone_halfslab:*>, <undergroundbiomes:igneous_cobble_halfslab:*>, <undergroundbiomes:metamorphic_cobble_halfslab:*>, <undergroundbiomes:sedimentary_stone_halfslab:*>, <quark:sandstone_smooth_slab:*>, <quark:red_sandstone_smooth_slab:*>, <biomesoplenty:other_slab:1>, <minecraft:stone_slab2:*>, <aether_legacy:holystone_slab:*>, <aether_legacy:mossy_holystone_slab:*>, <quark:fire_stone_slab:*>, <quark:icy_stone_slab:*>, <quark:cobbed_stone_slab:*>, <quark:soul_sandstone_slab:*>, <minecraft:purpur_slab:*>, <aether_legacy:carved_slab:*>, <aether_legacy:angelic_slab:*>, <aether_legacy:hellfire_slab:*>, <aether_legacy:holystone_brick_slab:*>, <betternether:nether_brick_tile_slab_half:*>, <netherex:red_nether_brick_slab:*>, <netherex:gloomy_nether_brick_slab:*>, <netherex:lively_nether_brick_slab:*>, <netherex:fiery_nether_brick_slab:*>, <netherex:icy_nether_brick_slab:*>, <netherex:basalt_slab:*>, <netherex:smooth_basalt_slab:*>, <netherex:basalt_brick_slab:*>, <netherex:basalt_pillar_slab:*>, <quark:biotite_slab:*>, <quark:fire_stone_brick_slab:*>, <quark:icy_stone_brick_slab:*>, <quark:elder_prismarine_slab:*>, <quark:elder_prismarine_bricks_slab:*>, <quark:elder_prismarine_dark_slab:*>, <quark:sandstone_bricks_slab:*>, <quark:red_sandstone_bricks_slab:*>, <quark:soul_sandstone_smooth_slab:*>, <quark:soul_sandstone_bricks_slab:*>, <quark:sandy_bricks_slab:*>, <quark:stone_granite_slab:*>, <quark:stone_diorite_slab:*>, <quark:stone_andesite_slab:*>, <quark:end_bricks_slab:*>, <quark:prismarine_slab:*>, <quark:prismarine_bricks_slab:*>, <quark:prismarine_dark_slab:*>, <quark:cobblestone_mossy_slab:*>, <quark:stonebrick_mossy_slab:*>, <quark:charred_nether_brick_slab:*>, <quark:stone_granite_bricks_slab:*>, <quark:stone_diorite_bricks_slab:*>, <quark:stone_andesite_bricks_slab:*>, <quark:midori_block_slab:*>, <quark:magma_bricks_slab:*>, <quark:duskbound_block_slab:*>, <quark:polished_netherrack_bricks_slab:*>, <undergroundbiomes:igneous_brick_halfslab:*>, <undergroundbiomes:metamorphic_brick_halfslab:*>, <contentcreator:limestone_cobblestone_slab:*>, <contentcreator:chalk_cobblestone_slab:*>, <contentcreator:shale_cobblestone_slab:*>, <contentcreator:siltstone_cobblestone_slab:*>, <contentcreator:dolomite_cobblestone_slab:*>, <contentcreator:greywacke_cobblestone_slab:*>, <contentcreator:chert_cobblestone_slab:*>, <contentcreator:limestone_brick_slab:*>, <contentcreator:chalk_brick_slab:*>, <contentcreator:shale_brick_slab:*>, <contentcreator:siltstone_brick_slab:*>, <contentcreator:dolomite_brick_slab:*>, <contentcreator:greywacke_brick_slab:*>, <contentcreator:chert_brick_slab:*>, <contentcreator:white_sandstone_brick_slab:*>, <contentcreator:red_granite_sandstone_brick_slab:*>]);

val StoneHugeBrick = <ore:StoneHugeBrick>;
StoneHugeBrick.addItems([<undergroundbiomes:igneous_brick:2>,<undergroundbiomes:igneous_brick:3>,<undergroundbiomes:igneous_brick:4>,<undergroundbiomes:igneous_brick:5>,<undergroundbiomes:igneous_brick:6>,<undergroundbiomes:igneous_brick:7>,<undergroundbiomes:metamorphic_brick>,<undergroundbiomes:metamorphic_brick:2>,<undergroundbiomes:metamorphic_brick:3>,<undergroundbiomes:metamorphic_brick:5>,<undergroundbiomes:metamorphic_brick:6>,<contenttweaker:brick_minecraft_stone>,<quark:biome_brick>,<undergroundbiomes:metamorphic_brick:7>,<quark:biome_brick:1>,<undergroundbiomes:igneous_brick:1>,<undergroundbiomes:metamorphic_brick:1>,<undergroundbiomes:igneous_brick>,<undergroundbiomes:metamorphic_brick:4>]);

val cobblestoneOre = <ore:cobblestone>;
cobblestoneOre.addItems([<contenttweaker:limestone_cobble>,<contenttweaker:siltstone_cobble>,<contenttweaker:chert_cobble>,<contenttweaker:shale_cobble>,<contenttweaker:chalk_cobble>,<contenttweaker:greywacke_cobble>,<contenttweaker:dolomite_cobble>,<contenttweaker:lignite_cobble>,<contenttweaker:serpentinite_cobblestone>]);

val toolAxe = <ore:toolAxe>;
toolAxe.addItems([<minecraft:wooden_axe:*>,<aether_legacy:holystone_axe:*>,<aether_legacy:zanite_axe:*>,<aether_legacy:gravitite_axe:*>,<aether_legacy:valkyrie_axe:*>,<atop:mud_axe:*>,<betterwithmods:steel_axe:*>,<mowziesmobs:wrought_axe:*>,<netherex:frosted_amedian_axe:*>,<simpleores:copper_axe:*>,<simpleores:mythril_axe:*>,<simpleores:adamantium_axe:*>,<simpleores:onyx_axe:*>,<twilightforest:ironwood_axe:*>,<twilightforest:steeleaf_axe:*>,<twilightforest:minotaur_axe_gold:*>,<twilightforest:minotaur_axe:*>,<twilightforest:knightmetal_axe:*>,<spartancompat:battleaxe_onyx:*>,<spartancompat:battleaxe_holystone:*>,<spartancompat:battleaxe_zanite:*>,<spartancompat:battleaxe_gravitite:*>,<spartancompat:battleaxe_soulforged_steel:*>,<spartanfire:battleaxe_dragonbone:*>,<spartanfire:battleaxe_fire_dragonbone:*>,<spartanfire:battleaxe_ice_dragonbone:*>,<spartanfire:battleaxe_jungle:*>,<spartanfire:battleaxe_desert:*>,<spartanfire:battleaxe_jungle_venom:*>,<spartanfire:battleaxe_desert_venom:*>,<spartanfire:battleaxe_ice_dragonsteel:*>,<spartanfire:battleaxe_fire_dragonsteel:*>,<spartanweaponry:battleaxe_stone:*>,<spartanweaponry:battleaxe_iron:*>,<spartanweaponry:battleaxe_gold:*>,<spartanweaponry:battleaxe_diamond:*>,<spartanweaponry:battleaxe_bronze:*>,<spartanweaponry:battleaxe_silver:*>]);

val hammerTool = <ore:hammerTool>;
hammerTool.addItems([<aether_legacy:notch_hammer:*>,<pyrotech:stone_hammer:*>,<pyrotech:iron_hammer:*>,<pyrotech:diamond_hammer:*>,<pyrotech:obsidian_hammer:*>]);

val shears = <ore:shears>;
shears.addItems([<minecraft:shears:*>, <ceramics:clay_shears:*>, <cyclicmagic:shears_obsidian:*>, <simpleores:mythril_shears:*>, <simpleores:adamantium_shears:*>, <simpleores:onyx_shears:*>]);

val anvilAny = <ore:anvilAny>;
anvilAny.addItems([<minecraft:anvil>,<betterwithmods:steel_anvil>,<pyrotech:anvil_granite>]);

val vine = <ore:vine>;
vine.addItems([<biomesoplenty:willow_vine>,<biomesoplenty:ivy>]);

val twine = <ore:twine>;
twine.add(<betterwithmods:material:3>);

val durableFiber = <ore:durableFiber>;
durableFiber.addAll(<ore:fiberHemp>);
durableFiber.add(<betterwithmods:material:3>);
durableFiber.add(<pyrotech:material:26>);
durableFiber.add(<textiles:material:1>);

val durableFabric = <ore:durableFabric>;
durableFabric.add(<betterwithmods:material:4>);
durableFabric.add(<textiles:material:13>);

val genericMetal = <ore:genericMetal>;
genericMetal.addAll(<ore:ingotCopper>);
genericMetal.addAll(<ore:ingotTin>);
genericMetal.addAll(<ore:ingotIron>);
genericMetal.addAll(<ore:ingotBronze>);
genericMetal.addAll(<ore:ingotSilver>);
genericMetal.addAll(<ore:ingotSteel>);
genericMetal.addAll(<ore:ingotWroughtIron>);

val wolfCape = <ore:wolfCape>;
wolfCape.addItems([<betteranimalsplus:wolf_cape_classic:*>,<betteranimalsplus:wolf_cape_timber:*>,<betteranimalsplus:wolf_cape_black:*>,<betteranimalsplus:wolf_cape_arctic:*>,<betteranimalsplus:wolf_cape_red:*>,<betteranimalsplus:wolf_cape_brown:*>]);

val bearCape = <ore:bearCape>;
bearCape.addItems([<betteranimalsplus:bear_cape_brown:*>,<betteranimalsplus:bear_cape_black:*>,<betteranimalsplus:bear_cape_kermode:*>]);

val fang = <ore:fang>;
fang.addItems([<mod_lavacow:sharptooth>,<mowziesmobs:naga_fang>,<iceandfire:sea_serpent_fang>,<netherex:coolmar_spider_fang>]);

val coal = <ore:gemCoal>;
coal.addItems([<minecraft:coal>,<betterwithmods:material:1>]);

val cokedust = <ore:dustCoalCoke>;
cokedust.add(<pyrotech:material:32>);

val fuelcoke = <ore:fuelCoke>;
fuelcoke.add(<pyrotech:material:32>);

val carbon = <ore:dustRichCarbon>;
carbon.add(<pyrotech:material:32>);

val qualityGem = <ore:Gem_highQuality>;
qualityGem.addItems([<aether_legacy:zanite_gemstone>,<quark:biotite>]);
qualityGem.addAll(<ore:gemOnyx>);
qualityGem.add(<rotn_blocks:exorite_crystal>);

val gemAmethyst = <ore:gemAmethyst>;
gemAmethyst.add(<netherex:amethyst_crystal>);

val blockGravitite = <ore:blockGravitite>;
blockGravitite.addAll(<ore:blockEnchantedGravitite>);

val denseRedstoneOre = <ore:denseRedstoneOre>;
denseRedstoneOre.addItems([<pyrotech:dense_redstone_ore_rocks>,<pyrotech:dense_redstone_ore_small>,<pyrotech:dense_redstone_ore_large>]);

val heartCrystalOre = <ore:oreHeartCrystal>;
heartCrystalOre.add(<scalinghealth:crystalore>);

val viridiumOre = <ore:oreViridium>;
viridiumOre.add(<simpleores:adamantium_ore>);
viridiumOre.addAll(<ore:oreAdamantium>);

val viridiumIngot = <ore:ingotViridium>;
viridiumIngot.add(<simpleores:adamantium_ingot>);
viridiumIngot.addAll(<ore:ingotAdamantium>);

val biotiteOre = <ore:oreBiotite>;
biotiteOre.add(<quark:biotite_ore>);

val redstone = <ore:gemRedstone>;
redstone.add(<minecraft:redstone>);

val hellfireIngot = <ore:ingotHellfire>;
hellfireIngot.addAll(<ore:ingotConcentratedHellfire>);

val arrowSfS = <ore:arrowSoulforgedSteel>;
arrowSfS.remove(<betterwithmods:material:43>);
arrowSfS.add(<betterwithaddons:material:0>);

val bamboo = <ore:cropBamboo>;
bamboo.add(<biomesoplenty:bamboo>);

val glue = <ore:glue>;
glue.addItems([<mod_lavacow:silky_sludge>,<mod_lavacow:holy_sludge>]);

val flower = <ore:flower>;
flower.addItems([<biomesoplenty:flower_0:*>,<biomesoplenty:plant_1:10>,<biomesoplenty:double_plant:0>,<iceandfire:fire_lily>,<iceandfire:frost_lily>,<futuremc:lily_of_the_valley>,<futuremc:cornflower>,<aether_legacy:purple_flower>,<aether_legacy:white_flower>,<minecraft:double_plant:0>,<minecraft:double_plant:1>,<minecraft:double_plant:4>,<minecraft:double_plant:5>,<biomesoplenty:flower_1:*>]);

val pixieJar = <ore:jarPixieAny>;
pixieJar.addItems([<iceandfire:jar_pixie>,<iceandfire:jar_pixie:1>,<iceandfire:jar_pixie:2>,<iceandfire:jar_pixie:3>,<iceandfire:jar_pixie:4>]);

val mushroom = <ore:mushroomAny>;
mushroom.addItems([<biomesoplenty:mushroom>,<biomesoplenty:mushroom:1>,<biomesoplenty:mushroom:2>,<biomesoplenty:mushroom:3>,<biomesoplenty:mushroom:4>,<harvestcraft:whitemushroomitem>,<rustic:mooncap_mushroom>,<netherex:brown_elder_mushroom>,<netherex:red_elder_mushroom>,<betternether:orange_mushroom>]);

for item in mushroom.items{
    if(!(<ore:listAllmushroom> has item)){
        <ore:listAllmushroom>.add(item);
    }
}

val cheese = <ore:foodCheese>;
cheese.add(<contenttweaker:dairy_free_cheese_slice>);

val brewerYeast = <ore:yeastBrewers>;
brewerYeast.add(<exsartagine:yeast>);

val PoisonYeast = <ore:yeastPoison>;
PoisonYeast.add(<mod_lavacow:parasite_item>);

val stewCondiment = <ore:listAllStewcondiment>;
stewCondiment.add(<harvestcraft:onionitem>,<harvestcraft:bellpepperitem>,<minecraft:carrot>,<harvestcraft:cornitem>,<harvestcraft:scallionitem>,<harvestcraft:leekitem>);

val foodJelly = <ore:foodJelly>;
foodJelly.addItems([<harvestcraft:grapejellyitem>,<harvestcraft:applejellyitem>,<harvestcraft:blackberryjellyitem>,<harvestcraft:blueberryjellyitem>,<harvestcraft:cherryjellyitem>,<harvestcraft:cranberryjellyitem>,<harvestcraft:kiwijellyitem>,<harvestcraft:lemonjellyitem>,<harvestcraft:limejellyitem>,<harvestcraft:mangojellyitem>,<harvestcraft:orangejellyitem>,<harvestcraft:papayajellyitem>,<harvestcraft:peachjellyitem>,<harvestcraft:pomegranatejellyitem>,<harvestcraft:raspberryjellyitem>,<harvestcraft:starfruitjellyitem>,<harvestcraft:strawberryjellyitem>,<harvestcraft:watermelonjellyitem>,<harvestcraft:apricotjellyitem>,<harvestcraft:figjellyitem>,<harvestcraft:grapefruitjellyitem>,<harvestcraft:persimmonjellyitem>,<harvestcraft:gooseberryjellyitem>,<harvestcraft:pearjellyitem>,<harvestcraft:plumjellyitem>,<harvestcraft:pepperjellyitem>]);

val allFruit = <ore:listAllfruit>;
allFruit.remove([<rustic:olives>,<harvestcraft:mulberryitem>]);
allFruit.add(<betterwithaddons:food_mulberry>);

val cropGrape = <ore:cropGrape>;
cropGrape.add(<growthcraft_grapes:grape:10>,<growthcraft_grapes:grape:13>,<growthcraft_grapes:grape:14>);

val cropGreengrape = <ore:cropGreengrape>;
cropGreengrape.add(<growthcraft_grapes:grape:13>);

val allBerry = <ore:listAllberry>;
allBerry.remove(<harvestcraft:mulberryitem>);
allBerry.add(<betterwithaddons:food_mulberry>);

val tuber = <ore:listAllTuber>;
tuber.addAll(<ore:listAllrootveggie>);
tuber.add(<minecraft:potato>,<harvestcraft:beetitem>,<minecraft:beetroot>,<inspirations:edibles>,<pyrotech:strange_tuber>,<quark:root>,<rustic:marsh_mallow>,<rustic:ginseng>,<rustic:core_root>,<twilightforest:liveroot>);

val rawBeef = <ore:listAllbeefraw>;
rawBeef.add(<twilightforest:raw_meef>);
rawBeef.remove(<harvestcraft:groundbeefitem>);
rawBeef.remove(<animania:raw_prime_beef>);

val cookedBeef = <ore:listAllbeefcooked>;
cookedBeef.add(<twilightforest:cooked_meef>);

val rawChicken = <ore:listAllchickenraw>;
rawChicken.addItems([<primitivemobs:dodo>,<animania:raw_prime_chicken>,<animania:raw_peacock>,<animania:raw_prime_peacock>,<aether_legacy:cockatrice>,<aether_legacy:enchanted_cockatrice>]);
rawChicken.remove(<harvestcraft:groundchickenitem>);

val cookedChicken = <ore:listAllchickencooked>;
cookedChicken.addItems([<primitivemobs:cooked_dodo>,<animania:cooked_prime_chicken>,<animania:cooked_peacock>,<animania:cooked_prime_peacock>,<aether_legacy:cooked_enchanted_cockatrice>]);

val rawMutton = <ore:listAllmuttonraw>;
rawMutton.add(<animania:raw_prime_mutton>);
rawMutton.remove(<harvestcraft:groundmuttonitem>);

val cookedMutton = <ore:listAllmuttoncooked>;
cookedMutton.add(<animania:cooked_prime_mutton>);

val rawFrog = <ore:listAllfrograw>;
rawFrog.addItems([<animania:raw_frog_legs>,<harvestcraft:frograwitem>]);

val cookedFrog = <ore:listAllfrogcooked>;
cookedFrog.addItems([<animania:cooked_frog_legs>,<harvestcraft:frogcookeditem>]);

val rawCrab = <ore:foodCrabraw>;
rawCrab.addItems([<betteranimalsplus:crab_meat_raw>,<mod_lavacow:mimic_claw>,<quark:crab_leg>]);

val cookedCrab = <ore:foodCrabcooked>;
cookedCrab.addItems([<betteranimalsplus:crab_meat_cooked>,<mod_lavacow:mimic_claw_cooked>,<quark:cooked_crab_leg>]);

val rawFish = <ore:listAllfishraw>;
rawFish.addItems([<harvestcraft:crabrawitem>,<mod_lavacow:piranha>,<mod_lavacow:cheirolepis>,<betteranimalsplus:eel_meat_raw>]);
rawFish.addAll(<ore:rawCrab>);
rawFish.remove(<harvestcraft:groundfishitem>);

val cookedFish = <ore:listAllfishcooked>;
cookedFish.addItems([<harvestcraft:crabcookeditem>,<mod_lavacow:piranha_cooked>,<mod_lavacow:cheirolepis_cooked>,<betteranimalsplus:eel_meat_cooked>]);
cookedFish.addAll(<ore:cookedCrab>);
cookedFish.remove(<mod_lavacow:zombiepiranha_item_cooked>);

val fish = <ore:fish>;
fish.addAll(<ore:listAllfishraw>);

val rawDuck = <ore:listAllduckraw>;
rawDuck.remove(<harvestcraft:groundduckitem>);

val rawVenison = <ore:listAllvenisonraw>;
rawVenison.add(<twilightforest:raw_venison>);
rawVenison.add(<betteranimalsplus:venisonraw>);
rawVenison.add(<harvestcraft:venisonrawitem>);
rawVenison.addAll(<ore:rawVenison>);
rawVenison.remove(<harvestcraft:groundvenisonitem>);

val cookedVenison = <ore:listAllvenisoncooked>;
cookedVenison.add(<twilightforest:cooked_venison>);
cookedVenison.add(<betteranimalsplus:venisoncooked>);
cookedVenison.add(<harvestcraft:venisoncookeditem>);
cookedVenison.addAll(<ore:cookedVenison>);

val rawRabbit = <ore:listAllrabbitraw>;
rawRabbit.remove(<harvestcraft:groundrabbititem>);

val rawPork = <ore:listAllporkraw>;
rawPork.remove(<harvestcraft:groundporkitem>,<animania:raw_prime_pork>);

val rawTurkey = <ore:listAllturkeyraw>;
rawTurkey.add(<betteranimalsplus:turkey_leg_raw>);
rawTurkey.remove(<harvestcraft:groundturkeyitem>);

val cookedTurkey = <ore:listAllturkeycooked>;
cookedTurkey.add(<betteranimalsplus:turkey_leg_cooked>);

val egg = <ore:listAllegg>;
egg.addItems([<betterwithmods:raw_egg>,<aether_legacy:moa_egg>]);

val rawMeat = <ore:listAllmeatraw>;
rawMeat.addItems([<betterwithmods:mystery_meat>,<betterwithmods:bat_wing>,<mod_lavacow:mousse>,<mod_lavacow:canepork>,<betterwithmods:wolf_chop>,<betteranimalsplus:eel_meat_raw>]);
rawMeat.addAll(rawBeef);
rawMeat.addAll(rawChicken);
rawMeat.addAll(rawMutton);
rawMeat.addAll(rawFrog);
rawMeat.addAll(rawFish);
rawMeat.addAll(rawVenison);
rawMeat.remove([<mod_lavacow:ptera_wing>,<mod_lavacow:plagued_porkchop>]);

val cookedMeat = <ore:listAllmeatcooked>;
cookedMeat.addItems([<betterwithmods:cooked_mystery_meat>,<betterwithmods:cooked_bat_wing>,<mod_lavacow:meatball>,<betterwithmods:cooked_wolf_chop>,<betteranimalsplus:eel_meat_cooked>]);
cookedMeat.addAll(cookedBeef);
cookedMeat.addAll(cookedChicken);
cookedMeat.addAll(cookedMutton);
cookedMeat.addAll(cookedFrog);
cookedMeat.addAll(cookedFish);
cookedMeat.addAll(cookedVenison);
cookedMeat.remove([<mod_lavacow:moltenbeef>,<mod_lavacow:ptera_wing_cooked>]);

val BaconEggs = <ore:foodBaconandeggs>;
BaconEggs.remove(<mod_lavacow:green_bacon_and_eggs>);

val tallow = <ore:tallow>;
rawBeef.remove(<harvestcraft:groundbeefitem>);

val tomato = <ore:cropTomato>;
tomato.remove(<harvestcraft:tomatoitem>);

val animal_fat = <ore:burnable_fat>;
animal_fat.addItems([<quark:tallow>, <betteranimalsplus:blubber>, <rustic:beeswax>]);

val Mushroom = <ore:listAllmushroom>;
Mushroom.remove([<mod_lavacow:glowshroom>,<mod_lavacow:bloodtooth_shroom>,<mod_lavacow:cordy_shroom>,<mod_lavacow:veil_shroom>,<mod_lavacow:glowshroom_block_stem>,<mod_lavacow:glowshroom_block_cap>]);

val glassShards = <ore:shardGlass>;
glassShards.add(<quark:glass_shards:*>);

val water = <ore:listAllwater>;
water.addItems([<pyrotech:bucket_wood>.withTag({fluids: {FluidName: "water", Amount: 1000}}),<pyrotech:bucket_clay>.withTag({fluids: {FluidName: "water", Amount: 1000}}),<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "water", Amount: 1000}}),<aether_legacy:skyroot_bucket:1>]);

val smallKnife = <ore:smallKnife>;
smallKnife.addItems([<animania:carving_knife:*>,<spartanweaponry:dagger_iron:*>,<spartanweaponry:dagger_bronze:*>,<spartanweaponry:dagger_gold:*>,<spartanweaponry:dagger_silver:*>,<spartanweaponry:dagger_diamond:*>,<spartancompat:dagger_holystone:*>,<spartancompat:dagger_zanite:*>,<spartancompat:dagger_gravitite:*>,<spartancompat:dagger_adamantium:*>,<spartanfire:dagger_dragonbone:*>,<spartanfire:dagger_fire_dragonbone:*>,<spartanfire:dagger_ice_dragonbone:*>,<spartanfire:dagger_jungle:*>,<spartanfire:dagger_desert:*>,<spartanfire:dagger_jungle_venom:*>,<spartanfire:dagger_desert_venom:*>,<spartanfire:dagger_ice_dragonsteel:*>,<spartanfire:dagger_fire_dragonsteel:*>,<mod_lavacow:famine:*>,<iceandfire:stymphalian_bird_dagger:*>]);

val cuttingImplement = <ore:cuttingImplement>;
cuttingImplement.addItems([<contenttweaker:cooking_kit>,<contenttweaker:cooking_kit_quality>,<contenttweaker:cooking_kit_elite>,<contenttweaker:cooking_kit_premium>,<contenttweaker:cooking_kit_master>]);
cuttingImplement.addAll(<ore:smallKnife>);

val nitrogen = <ore:mulchNitrogen>;
nitrogen.addAll(<ore:listAllmeat>);
nitrogen.addAll(<ore:listAllbeefraw>);
nitrogen.addAll(<ore:listAllmeatraw>);

val foundryclay = <ore:foundryClayblock>;
foundryclay.add(<contenttweaker:unfiredrefractory>);

val refracotta = <ore:refracotta>;
refracotta.addItems([<contenttweaker:refracotta>,<contenttweaker:refracotta_gray>,<contenttweaker:refracotta_yellow>,<contenttweaker:refracotta_cyan>,<contenttweaker:refracotta_magenta>,<contenttweaker:refracotta_lime>,<contenttweaker:refracotta_white>,<contenttweaker:refracotta_pink>,<contenttweaker:refracotta_brown>,<contenttweaker:refracotta_light_blue>,<contenttweaker:refracotta_red>,<contenttweaker:refracotta_green>,<contenttweaker:refracotta_blue>,<contenttweaker:refracotta_black>,<contenttweaker:refracotta_purple>,<contenttweaker:refracotta_light_gray>,<contenttweaker:refracotta_orange>]);

val netherrackSludge = <ore:dustNetherrack>;
netherrackSludge.add(<contenttweaker:ground_fiery_netherrack>);

val copperBlock = <ore:blockCopper>;
copperBlock.addItems([<rotn_blocks:copper_block>,<rotn_blocks:slightly_weathered_copper_block>,<rotn_blocks:semi_wheatered_copper_block>,<rotn_blocks:weathered_copper_block>,<simpleores:copper_block>]);

val bronzeBlock = <ore:blockBronze>;
bronzeBlock.add(<contenttweaker:block_bronze>);

val electrumBlock = <ore:blockElectrum>;
electrumBlock.add(<contenttweaker:block_electrum>);

val anyAsh = <ore:dustAsh>;
anyAsh.add(<biomesoplenty:ash>);

val componentWheel = <ore:componentWheel>;
componentWheel.addItems([<astikorcarts:wheel>,<pyrotech:cog_wood>,<pyrotech:cog_bone>,<pyrotech:cog_gold>,<behgameon:accessory_17>,<totf:wheel>]);

val scaleChestplate = <ore:scaleChestplate>;
scaleChestplate.addItems([<iceandfire:armor_red_chestplate:*>,<iceandfire:armor_green_chestplate:*>,<iceandfire:armor_bronze_chestplate:*>,<iceandfire:armor_gray_chestplate:*>]);

val scaleHelmet = <ore:scaleHelmet>;
scaleHelmet.addItems([<iceandfire:armor_red_helmet:*>,<iceandfire:armor_green_helmet:*>,<iceandfire:armor_bronze_helmet:*>,<iceandfire:armor_gray_helmet:*>]);

val scaleLeggings = <ore:scaleLeggings>;
scaleLeggings.addItems([<iceandfire:armor_red_leggings:*>,<iceandfire:armor_green_leggings:*>,<iceandfire:armor_bronze_leggings:*>,<iceandfire:armor_gray_leggings:*>]);

val scaleBoots = <ore:scaleBoots>;
scaleBoots.addItems([<iceandfire:armor_red_boots:*>,<iceandfire:armor_green_boots:*>,<iceandfire:armor_bronze_boots:*>,<iceandfire:armor_gray_boots:*>]);

val scaleLightChestplate = <ore:scaleLightChestplate>;
scaleLightChestplate.addItems([<iceandfire:armor_blue_chestplate:*>,<iceandfire:armor_white_chestplate:*>,<iceandfire:armor_sapphire_chestplate:*>,<iceandfire:armor_silver_chestplate:*>]);

val scaleLightHelmet = <ore:scaleLightHelmet>;
scaleLightHelmet.addItems([<iceandfire:armor_blue_helmet:*>,<iceandfire:armor_white_helmet:*>,<iceandfire:armor_sapphire_helmet:*>,<iceandfire:armor_silver_helmet:*>]);

val scaleLightLeggings = <ore:scaleLightLeggings>;
scaleLightLeggings.addItems([<iceandfire:armor_blue_leggings:*>,<iceandfire:armor_white_leggings:*>,<iceandfire:armor_sapphire_leggings:*>,<iceandfire:armor_silver_leggings:*>]);

val scaleLightBoots = <ore:scaleLightBoots>;
scaleLightBoots.addItems([<iceandfire:armor_blue_boots:*>,<iceandfire:armor_white_boots:*>,<iceandfire:armor_sapphire_boots:*>,<iceandfire:armor_silver_boots:*>]);



val trollChestplate = <ore:trollChestplate>;
trollChestplate.addItems([<iceandfire:mountain_troll_leather_chestplate:*>,<iceandfire:forest_troll_leather_chestplate:*>,<iceandfire:frost_troll_leather_chestplate:*>]);

val trollHelmet = <ore:trollHelmet>;
trollHelmet.addItems([<iceandfire:mountain_troll_leather_helmet:*>,<iceandfire:forest_troll_leather_helmet:*>,<iceandfire:frost_troll_leather_helmet:*>]);

val trollLeggings = <ore:trollLeggings>;
trollLeggings.addItems([<iceandfire:mountain_troll_leather_leggings:*>,<iceandfire:forest_troll_leather_leggings:*>,<iceandfire:frost_troll_leather_leggings:*>]);

val trollBoots = <ore:trollBoots>;
trollBoots.addItems([<iceandfire:mountain_troll_leather_boots:*>,<iceandfire:forest_troll_leather_boots:*>,<iceandfire:frost_troll_leather_boots:*>]);


val deathWormChestplate = <ore:deathWormChestplate>;
deathWormChestplate.addItems([<iceandfire:deathworm_yellow_chestplate:*>,<iceandfire:deathworm_white_chestplate:*>,<iceandfire:deathworm_red_chestplate:*>]);

val deathWormHelmet = <ore:deathWormHelmet>;
deathWormHelmet.addItems([<iceandfire:deathworm_yellow_helmet:*>,<iceandfire:deathworm_white_helmet:*>,<iceandfire:deathworm_red_helmet:*>]);

val deathWormLeggings = <ore:deathWormLeggings>;
deathWormLeggings.addItems([<iceandfire:deathworm_yellow_leggings:*>,<iceandfire:deathworm_white_leggings:*>,<iceandfire:deathworm_red_leggings:*>]);

val deathWormBoots = <ore:deathWormBoots>;
deathWormBoots.addItems([<iceandfire:deathworm_yellow_boots:*>,<iceandfire:deathworm_white_boots:*>,<iceandfire:deathworm_red_boots:*>]);


val tideChestplate = <ore:tideChestplate>;
tideChestplate.addItems([<iceandfire:tide_blue_chestplate:*>,<iceandfire:tide_bronze_chestplate:*>,<iceandfire:tide_green_chestplate:*>,<iceandfire:tide_red_chestplate:*>,<iceandfire:tide_purple_chestplate:*>,<iceandfire:tide_teal_chestplate:*>]);

val tideHelmet = <ore:tideHelmet>;
tideHelmet.addItems([<iceandfire:tide_blue_helmet:*>,<iceandfire:tide_bronze_helmet:*>,<iceandfire:tide_green_helmet:*>,<iceandfire:tide_red_helmet:*>,<iceandfire:tide_purple_helmet:*>,<iceandfire:tide_teal_helmet:*>]);

val tideLeggings = <ore:tideLeggings>;
tideLeggings.addItems([<iceandfire:tide_blue_leggings:*>,<iceandfire:tide_bronze_leggings:*>,<iceandfire:tide_green_leggings:*>,<iceandfire:tide_red_leggings:*>,<iceandfire:tide_purple_leggings:*>,<iceandfire:tide_teal_leggings:*>]);

val tideBoots = <ore:tideBoots>;
tideBoots.addItems([<iceandfire:tide_blue_boots:*>,<iceandfire:tide_bronze_boots:*>,<iceandfire:tide_green_boots:*>,<iceandfire:tide_red_boots:*>,<iceandfire:tide_purple_boots:*>,<iceandfire:tide_teal_boots:*>]);


val myrmexChestplate = <ore:myrmexChestplate>;
myrmexChestplate.addItems([<iceandfire:myrmex_jungle_chestplate:*>,<iceandfire:myrmex_desert_chestplate:*>]);

val myrmexHelmet = <ore:myrmexHelmet>;
myrmexHelmet.addItems([<iceandfire:myrmex_jungle_helmet:*>,<iceandfire:myrmex_desert_helmet:*>]);

val myrmexLeggings = <ore:myrmexLeggings>;
myrmexLeggings.addItems([<iceandfire:myrmex_jungle_leggings:*>,<iceandfire:myrmex_desert_leggings:*>]);

val myrmexBoots = <ore:myrmexBoots>;
myrmexBoots.addItems([<iceandfire:myrmex_jungle_boots:*>,<iceandfire:myrmex_desert_boots:*>]);

val runes = <ore:runeItem>;
runes.addItems([<contenttweaker:fae_rune:*>,<contenttweaker:chaos_rune:*>,<contenttweaker:mind_rune:*>,<contenttweaker:balance_rune:*>,<contenttweaker:water_rune:*>,<contenttweaker:creation_rune:*>,<contenttweaker:holding_rune:*>,<contenttweaker:order_rune:*>,<contenttweaker:nature_rune:*>,<contenttweaker:plague_rune:*>,<contenttweaker:illusion_rune:*>,<contenttweaker:trans_rune:*>,<contenttweaker:air_rune:*>,<contenttweaker:knowledge_rune:*>,<contenttweaker:disint_rune:*>,<contenttweaker:draconic_rune:*>,<contenttweaker:blank_rune:*>,<contenttweaker:strength_rune:*>,<contenttweaker:aether_rune:*>,<contenttweaker:luna_rune:*>,<contenttweaker:poison_rune:*>,<contenttweaker:energy_rune:*>,<contenttweaker:sol_rune:*>,<contenttweaker:nether_rune:*>,<contenttweaker:life_rune:*>,<contenttweaker:time_rune:*>,<contenttweaker:fire_rune:*>,<contenttweaker:soul_rune:*>,<contenttweaker:death_rune:*>,<contenttweaker:earth_rune:*>,<contenttweaker:arcane_rune:*>,<endreborn:item_end_rune:*>,<quark:rune:*>]
);

val runenorain = <ore:runeNoRainbow>;
for number in 0 to 16 {
    runenorain.addItems([<quark:rune>.definition.makeStack(number)]);
}

val mortarPrimitive = <ore:mortarPrimitive>;
mortarPrimitive.addItems([<biomesoplenty:mudball>]);

val mortarCommon = <ore:mortarCommon>;
mortarCommon.addItems([<minecraft:clay_ball>,<minecraft:slime_ball>,<betterslimes:blue_slime>,<betterslimes:red_slime>,<betterslimes:yellow_slime>,<betterslimes:purple_slime>,<betterslimes:black_slime>,<earthworks:item_cob>]);

val mortarRefractory = <ore:mortarRefractory>;
mortarRefractory.addItems([<ceramics:unfired_clay:4>,<pyrotech:material:8>,<pyrotech:material:4>,<contenttweaker:fiery_sludge>,<betterwithmods:material:35>,<da:volatile_orb>]);

val binder = <ore:materialBinding>;
binder.addAll(<ore:treeLeaves>,<ore:flower>,<ore:vine>);
binder.addItems([<biomesoplenty:plant_0:11>,<biomesoplenty:plant_0:12>,<quark:leaf_carpet:*>,<pyrotech:tinder>,<pyrotech:material:12>,<betterwithmods:material:3>,<minecraft:double_plant:3>,<minecraft:tallgrass:2>,<minecraft:double_plant:2>,<minecraft:tallgrass:1>,<biomesoplenty:plant_0:13>,<biomesoplenty:plant_0:14>,<biomesoplenty:plant_0:1>,<biomesoplenty:plant_0>,<biomesoplenty:plant_0:9>,<harvestcraft:barleyitem>,<harvestcraft:ryeitem>,<harvestcraft:oatsitem>,<betterwithmods:material:2>,<contenttweaker:draff>]);
binder.removeItems([<minecraft:sapling>]);