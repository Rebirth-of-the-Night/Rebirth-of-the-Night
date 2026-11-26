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
JEI.removeAndHide(<iceandfire:copper_ingot>);
JEI.removeAndHide(<iceandfire:copper_nugget>);
JEI.removeAndHide(<iceandfire:copper_sword:*>);
JEI.removeAndHide(<iceandfire:copper_shovel:*>);
JEI.removeAndHide(<iceandfire:copper_pickaxe:*>);
JEI.removeAndHide(<iceandfire:copper_axe:*>);
JEI.removeAndHide(<iceandfire:copper_hoe:*>);

JEI.removeAndHide(<iceandfire:dread_key>);
JEI.removeAndHide(<iceandfire:amethyst_gem>);
JEI.removeAndHide(<iceandfire:tower_key>);
JEI.removeAndHide(<iceandfire:tower_access_key>);
JEI.removeAndHide(<iceandfire:queen_key>);
JEI.removeAndHide(<iceandfire:library_key>);
JEI.removeAndHide(<iceandfire:special_key>);
JEI.removeAndHide(<iceandfire:treasury_key>);

JEI.removeAndHide(<iceandfire:charred_branch>);
JEI.removeAndHide(<iceandfire:crackled_branch>);
JEI.removeAndHide(<iceandfire:frozen_branch>);
JEI.removeAndHide(<iceandfire:dread_single_spawner_lich>);
JEI.removeAndHide(<iceandfire:dread_single_spawner_queen>);
JEI.removeAndHide(<iceandfire:dread_single_spawner_dragon>);
JEI.removeAndHide(<iceandfire:dread_single_spawner_ballista>);
JEI.removeAndHide(<iceandfire:dread_single_spawner_final_ballista>);

JEI.removeAndHide(<iceandfire:ectoplasm>);
JEI.removeAndHide(<iceandfire:ghost_ingot>);
JEI.removeAndHide(<iceandfire:ghost_sword>);

JEI.removeAndHide(<iceandfire:dragonsteel_lightning_ingot:*>);
JEI.removeAndHide(<iceandfire:dragonsteel_lightning_sword:*>);
JEI.removeAndHide(<iceandfire:dragonsteel_lightning_pickaxe:*>);
JEI.removeAndHide(<iceandfire:dragonsteel_lightning_axe:*>);
JEI.removeAndHide(<iceandfire:dragonsteel_lightning_shovel:*>);
JEI.removeAndHide(<iceandfire:dragonsteel_lightning_hoe:*>);
JEI.removeAndHide(<iceandfire:dragonsteel_lightning_helmet:*>);
JEI.removeAndHide(<iceandfire:dragonsteel_lightning_chestplate:*>);
JEI.removeAndHide(<iceandfire:dragonsteel_lightning_leggings:*>);
JEI.removeAndHide(<iceandfire:dragonsteel_lightning_boots:*>);
JEI.removeAndHide(<iceandfire:dragonbone_sword_lightning:*>);
JEI.removeAndHide(<iceandfire:dragonarmor_dragonsteel_lightning:*>);
JEI.removeAndHide(<iceandfire:summoning_crystal_lightning:*>);
JEI.removeAndHide(<iceandfire:lightning_dragon_flesh>);
JEI.removeAndHide(<iceandfire:lightning_dragon_heart>);
JEI.removeAndHide(<iceandfire:lightning_dragon_blood>);
JEI.removeAndHide(<iceandfire:lightning_stew>);
JEI.removeAndHide(<iceandfire:dragonscales_electric>);
JEI.removeAndHide(<iceandfire:dragonscales_amethyst>);
JEI.removeAndHide(<iceandfire:dragonscales_copper>);
JEI.removeAndHide(<iceandfire:dragonscales_black>);
JEI.removeAndHide(<iceandfire:dragonegg_electric>);
JEI.removeAndHide(<iceandfire:dragonegg_amethyst>);
JEI.removeAndHide(<iceandfire:dragonegg_copper>);
JEI.removeAndHide(<iceandfire:dragonegg_black>);
JEI.removeAndHide(<iceandfire:armor_electric_helmet>);
JEI.removeAndHide(<iceandfire:armor_electric_chestplate>);
JEI.removeAndHide(<iceandfire:armor_electric_leggings>);
JEI.removeAndHide(<iceandfire:armor_electric_boots>);
JEI.removeAndHide(<iceandfire:armor_amethyst_helmet>);
JEI.removeAndHide(<iceandfire:armor_amethyst_chestplate>);
JEI.removeAndHide(<iceandfire:armor_amethyst_leggings>);
JEI.removeAndHide(<iceandfire:armor_amethyst_boots>);
JEI.removeAndHide(<iceandfire:armor_copper_helmet>);
JEI.removeAndHide(<iceandfire:armor_copper_chestplate>);
JEI.removeAndHide(<iceandfire:armor_copper_leggings>);
JEI.removeAndHide(<iceandfire:armor_copper_boots>);
JEI.removeAndHide(<iceandfire:armor_black_helmet>);
JEI.removeAndHide(<iceandfire:armor_black_chestplate>);
JEI.removeAndHide(<iceandfire:armor_black_leggings>);
JEI.removeAndHide(<iceandfire:armor_black_boots>);
JEI.removeAndHide(<iceandfire:armor_electric_helmet_shocked>);
JEI.removeAndHide(<iceandfire:armor_electric_chestplate_shocked>);
JEI.removeAndHide(<iceandfire:armor_electric_leggings_shocked>);
JEI.removeAndHide(<iceandfire:armor_electric_boots_shocked>);
JEI.removeAndHide(<iceandfire:armor_amethyst_helmet_shocked>);
JEI.removeAndHide(<iceandfire:armor_amethyst_chestplate_shocked>);
JEI.removeAndHide(<iceandfire:armor_amethyst_leggings_shocked>);
JEI.removeAndHide(<iceandfire:armor_amethyst_boots_shocked>);
JEI.removeAndHide(<iceandfire:armor_copper_helmet_shocked>);
JEI.removeAndHide(<iceandfire:armor_copper_chestplate_shocked>);
JEI.removeAndHide(<iceandfire:armor_copper_leggings_shocked>);
JEI.removeAndHide(<iceandfire:armor_copper_boots_shocked>);
JEI.removeAndHide(<iceandfire:armor_black_helmet_shocked>);
JEI.removeAndHide(<iceandfire:armor_black_chestplate_shocked>);
JEI.removeAndHide(<iceandfire:armor_black_leggings_shocked>);
JEI.removeAndHide(<iceandfire:armor_black_boots_shocked>);
JEI.removeAndHide(<iceandfire:dragonforge_lightning_brick>);
JEI.removeAndHide(<iceandfire:dragonforge_lightning_input>);
JEI.removeAndHide(<iceandfire:dragonforge_lightning_core_disabled>);
JEI.removeAndHide(<iceandfire:dragonforge_lightning_core>);
JEI.removeAndHide(<iceandfire:lightning_lily>);
JEI.removeAndHide(<iceandfire:dragonscale_electric>);
JEI.removeAndHide(<iceandfire:dragonscale_amethyst>);
JEI.removeAndHide(<iceandfire:dragonscale_copper>);
JEI.removeAndHide(<iceandfire:dragonscale_black>);
JEI.removeAndHide(<iceandfire:copper_ore>);
JEI.removeAndHide(<iceandfire:amethyst_ore>);
JEI.removeAndHide(<iceandfire:copper_block>);
JEI.removeAndHide(<iceandfire:amethyst_block>);
JEI.removeAndHide(<iceandfire:dragonsteel_lightning_block>);

JEI.removeAndHide(<iceandfire:tower_keyhole>);
JEI.removeAndHide(<iceandfire:tower_access_keyhole>);
JEI.removeAndHide(<iceandfire:queen_keyhole>);
JEI.removeAndHide(<iceandfire:library_keyhole>);
JEI.removeAndHide(<iceandfire:special_keyhole>);
JEI.removeAndHide(<iceandfire:treasury_keyhole>);
JEI.removeAndHide(<iceandfire:graveyard_soil>);
JEI.removeAndHide(<iceandfire:ghost_chest>);
 
JEI.removeAndHide(<iceandfire:dragon_horn_ice>);
JEI.removeAndHide(<iceandfire:dragon_horn_fire>);

LootTweaker.getTable("iceandfire:mausoleum_chest").getPool("mausoleum_chest").removeEntry("iceandfire:sapphire_gem");

recipes.remove(<iceandfire:earplugs>);
recipes.addShapeless("earplugs", <iceandfire:earplugs>, [<ore:buttonWood>, <ore:buttonWood>, <betterwithmods:material:4>, <betterwithmods:material:4>]);

recipes.remove(<iceandfire:armor_copper_metal_helmet>);
recipes.remove(<iceandfire:armor_copper_metal_chestplate>);
recipes.remove(<iceandfire:armor_copper_metal_leggings>);
recipes.remove(<iceandfire:armor_copper_metal_boots>);

recipes.remove(<iceandfire:dragon_horn>);
/*recipes.addShaped("dragon_horn",<iceandfire:dragon_horn>,[
  [null,null,<iceandfire:dragonbone>],
  [null,<iceandfire:dragonbone>,<iceandfire:dragonbone>],
  [<ore:stickWood>,<iceandfire:dragonbone>,null]
]);*/

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
    [<ore:twine>,<ore:fabricBoltSturdy>,<ore:twine>],
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