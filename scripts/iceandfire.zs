import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import crafttweaker.item.IItemCondition;
import mods.betterwithaddons.Infuser;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

recipes.removeByRecipeName("iceandfire:dragonmeal_alternate");

JEI.removeAndHide(<iceandfire:sapphire_ore>);
JEI.removeAndHide(<iceandfire:sapphire_block>);
JEI.removeAndHide(<iceandfire:sapphire_gem>);
JEI.removeAndHide(<iceandfire:egginice>);
JEI.removeAndHide(<iceandfire:dread_portal>);
JEI.removeAndHide(<iceandfire:dragonforge_ice_core>);
JEI.removeAndHide(<iceandfire:dragonforge_fire_core>);
JEI.removeAndHide(<iceandfire:dread_stone_slab_double>);
JEI.removeAndHide(<iceandfire:dragon_debug_stick>);
JEI.removeAndHide(<iceandfire:stone_statue>);
JEI.removeAndHide(<iceandfire:stymphalian_bird_dagger>);

JEI.removeAndHide(<iceandfire:dragon_horn_ice>);
JEI.removeAndHide(<iceandfire:dragon_horn_fire>);

LootTweaker.getTable("iceandfire:mausoleum_chest").getPool("mausoleum_chest").removeEntry("iceandfire:sapphire_gem");

recipes.remove(<iceandfire:earplugs>);
recipes.addShapeless("earplugs", <iceandfire:earplugs>, [<ore:buttonWood>, <ore:buttonWood>, <betterwithmods:material:4>, <betterwithmods:material:4>]);

recipes.remove(<iceandfire:dragon_horn>);
/*recipes.addShaped("dragon_horn",<iceandfire:dragon_horn>,[
  [null,null,<iceandfire:dragonbone>],
  [null,<iceandfire:dragonbone>,<iceandfire:dragonbone>],
  [<ore:stickWood>,<iceandfire:dragonbone>,null]
]);*/

var woodenPodiumMat = <biomesoplenty:planks_0:0>|<biomesoplenty:planks_0:1>|<biomesoplenty:planks_0:2>|<biomesoplenty:planks_0:3>|<biomesoplenty:planks_0:4>|<biomesoplenty:planks_0:5>|<biomesoplenty:planks_0:6>|<biomesoplenty:planks_0:7>|<biomesoplenty:planks_0:8>|<biomesoplenty:planks_0:9>|<biomesoplenty:planks_0:10>|<biomesoplenty:planks_0:11>|<biomesoplenty:planks_0:12>|<biomesoplenty:planks_0:13>|<biomesoplenty:planks_0:14>|<biomesoplenty:planks_0:15>|<betternether:stalagnate_planks>|<betternether:reeds_block>|<rustic:planks>|<rustic:planks:1>|<stygian:endplanks>|<quark:stained_planks:*>|<quark:vertical_planks:*>|<quark:vertical_stained_planks:*>|<twilightforest:tower_wood:*>|<twilightforest:twilight_oak_planks>|<twilightforest:canopy_planks>|<twilightforest:mangrove_planks>|<twilightforest:dark_planks>|<twilightforest:time_planks>|<twilightforest:trans_planks>|<twilightforest:mine_planks>|<twilightforest:sort_planks>|<aether_legacy:skyroot_plank>|<betterwithaddons:planks_sakura>|<betterwithaddons:planks_mulberry>;

recipes.addShaped("wooden_podium",<iceandfire:podium:0>,[
    [<minecraft:wooden_slab>,woodenPodiumMat,<minecraft:wooden_slab>],
    [null,woodenPodiumMat,null],
    [<minecraft:wooden_slab>,woodenPodiumMat,<minecraft:wooden_slab>]
]);

recipes.remove(<iceandfire:tide_trident>);
recipes.addShaped("tide_trident",<iceandfire:tide_trident>,[
  [<iceandfire:sea_serpent_fang>,<iceandfire:sea_serpent_fang>,<iceandfire:sea_serpent_fang>],
  [<ore:seaSerpentScale>,<ore:ingotableGem>,<ore:seaSerpentScale>],
  [null,<iceandfire:witherbone>,null]
]);

recipes.removeByRecipeName("iceandfire:summoning_crystal_fire");
recipes.addShapeless("fire_dragon_summoning_crystal",<iceandfire:summoning_crystal_fire>,[<iceandfire:fire_dragon_blood>,<minecraft:ender_pearl>,<minecraft:diamond>,<biomesoplenty:gem:1>]);

recipes.removeByRecipeName("iceandfire:dragon_ice_spikes");
recipes.addShaped("icicles",<iceandfire:dragon_ice_spikes>,[
  [null,null,null],
  [<minecraft:ice>,null,<minecraft:ice>],
  [<minecraft:ice>,null,<minecraft:ice>]
]);

recipes.removeByRecipeName("iceandfire:deathworm_gauntlet_white");
recipes.addShaped("deathworm_gauntlet_white",<iceandfire:deathworm_gauntlet_white>,[
    [null,<iceandfire:deathworm_tounge>,null],
    [<iceandfire:deathworm_chitin:1>,<ore:slimeball>,<iceandfire:deathworm_chitin:1>],
    [<iceandfire:deathworm_chitin:1>,<iceandfire:deathworm_chitin:1>,<iceandfire:deathworm_chitin:1>]
]);
recipes.removeByRecipeName("iceandfire:deathworm_gauntlet_yellow");
recipes.addShaped("deathworm_gauntlet_yellow",<iceandfire:deathworm_gauntlet_yellow>,[
    [null,<iceandfire:deathworm_tounge>,null],
    [<iceandfire:deathworm_chitin>,<ore:slimeball>,<iceandfire:deathworm_chitin>],
    [<iceandfire:deathworm_chitin>,<iceandfire:deathworm_chitin>,<iceandfire:deathworm_chitin>]
]);
recipes.removeByRecipeName("iceandfire:deathworm_gauntlet_red");
recipes.addShaped("deathworm_gauntlet_red",<iceandfire:deathworm_gauntlet_red>,[
    [null,<iceandfire:deathworm_tounge>,null],
    [<iceandfire:deathworm_chitin:2>,<ore:slimeball>,<iceandfire:deathworm_chitin:2>],
    [<iceandfire:deathworm_chitin:2>,<iceandfire:deathworm_chitin:2>,<iceandfire:deathworm_chitin:2>]
]);

// Pixie Wand
recipes.remove(<iceandfire:pixie_wand>);

RecipeBuilder.get("mage")
  .setShaped([
    [null, null, <iceandfire:pixie_dust>],
    [null, <iceandfire:pixie_wings>, null],
    [<contenttweaker:wand_base_mystical>, null, null]])
  .addTool(<contenttweaker:fae_rune>, 1)
  .addOutput(<iceandfire:pixie_wand>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Siren Flute
recipes.remove(<iceandfire:siren_flute>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <iceandfire:siren_tear>, <contenttweaker:vis_shard>],
    [<iceandfire:shiny_scales>, <iceandfire:dragon_flute>, <iceandfire:shiny_scales>],
    [<contenttweaker:vis_shard>, <iceandfire:shiny_scales>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:fae_rune>, 1)
  .addTool(<contenttweaker:water_rune>, 1)
  .addOutput(<iceandfire:siren_flute>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

recipes.remove(<iceandfire:dread_stone>);
recipes.addShaped("dread_stone",<iceandfire:dread_stone>,[
    [<ore:stone>,<ore:stone>,<ore:stone>],
    [<ore:stone>,<iceandfire:dread_shard>,<ore:stone>],
    [<ore:stone>,<ore:stone>,<ore:stone>]
]);

recipes.remove(<iceandfire:dragon_stick>);
recipes.addShaped("dragon_command_staff",<iceandfire:dragon_stick>,[
    [<iceandfire:dragon_skull:*>],
    [<spartanweaponry:material:1>]
]);

recipes.remove(<iceandfire:myrmex_desert_swarm>);
recipes.addShaped("desert_myrmex_swarm",<iceandfire:myrmex_desert_swarm>*6,[
    [<iceandfire:myrmex_desert_resin>,<iceandfire:myrmex_desert_resin>,<iceandfire:myrmex_desert_resin>],
    [<iceandfire:myrmex_desert_resin>,<iceandfire:myrmex_desert_egg:4>,<iceandfire:myrmex_desert_resin>],
    [<iceandfire:myrmex_desert_resin>,<ore:stickWood>,<iceandfire:myrmex_desert_resin>]
]);

recipes.remove(<iceandfire:myrmex_jungle_swarm>);
recipes.addShaped("jungle_myrmex_swarm",<iceandfire:myrmex_jungle_swarm>*6,[
    [<iceandfire:myrmex_jungle_resin>,<iceandfire:myrmex_jungle_resin>,<iceandfire:myrmex_jungle_resin>],
    [<iceandfire:myrmex_jungle_resin>,<iceandfire:myrmex_jungle_egg:4>,<iceandfire:myrmex_jungle_resin>],
    [<iceandfire:myrmex_jungle_resin>,<ore:stickWood>,<iceandfire:myrmex_jungle_resin>]
]);

recipes.remove(<iceandfire:blindfold>);
recipes.addShaped("inf_blindfold",<iceandfire:blindfold>,[
    [null,null,null],
    [<ore:twine>,<betterwithmods:material:4>|<mod_lavacow:curseweave_cloth>,<ore:twine>],
    [null,null,null]
]);

// Dread Lich Staff

# Change durability
<iceandfire:lich_staff>.maxDamage = 32;

# Recipe
RecipeBuilder.get("mage")
  .setShaped([
    [null, <minecraft:ice>, <contenttweaker:shard_of_night>],
    [<contenttweaker:vis_speck>, <contenttweaker:scepter_base_mundane>, <minecraft:skull>],
    [<contenttweaker:abyssal_sapphire>, <contenttweaker:vis_speck>, null]])
  .addTool(<contenttweaker:luna_rune>, 1)
  .addOutput(<iceandfire:lich_staff:32>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# Spirit charging
Infuser.addShapeless(<iceandfire:lich_staff>,
[<iceandfire:lich_staff>.anyDamage(),<contenttweaker:vis_speck>], 32);

# Apertures
recipes.remove(<iceandfire:dragonforge_fire_input>);
recipes.remove(<iceandfire:dragonforge_ice_input>);
recipes.addShaped("dragonforge_fire_input", <iceandfire:dragonforge_fire_input>,[
  [<iceandfire:dragonforge_fire_brick>, <ore:ingotSteel>, <iceandfire:dragonforge_fire_brick>],
  [<ore:ingotSteel>, null, <ore:ingotSteel>],
  [<iceandfire:dragonforge_fire_brick>, <ore:ingotSteel>, <iceandfire:dragonforge_fire_brick>]
]);
recipes.addShaped("dragonforge_ice_input", <iceandfire:dragonforge_ice_input>,[
  [<iceandfire:dragonforge_ice_brick>, <ore:ingotSteel>, <iceandfire:dragonforge_ice_brick>],
  [<ore:ingotSteel>, null, <ore:ingotSteel>],
  [<iceandfire:dragonforge_ice_brick>, <ore:ingotSteel>, <iceandfire:dragonforge_ice_brick>]
]);