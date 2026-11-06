import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

import mods.artisanworktables.builder.RecipeBuilder;

import mods.futuremc.Composter;
import mods.futuremc.BlastFurnace;
import mods.futuremc.Smoker;
import mods.futuremc.Campfire;

JEI.removeAndHide(<futuremc:honeycomb>);
JEI.removeAndHide(<futuremc:honey_bottle>);
JEI.removeAndHide(<futuremc:beehive>);

JEI.removeAndHide(<futuremc:suspicious_stew>);

JEI.removeAndHide(<futuremc:smooth_sandstone>);
JEI.removeAndHide(<futuremc:smooth_red_sandstone>);

furnace.remove(<futuremc:smooth_sandstone>);
furnace.remove(<futuremc:smooth_red_sandstone>);

recipes.removeByRecipeName("futuremc:nether_brick_fence");
recipes.removeByRecipeName("futuremc:else/smooth_stonerecipe");
recipes.removeByRecipeName("futuremc:else/scaffolding");
recipes.removeByRecipeName("futuremc:else/stone_slabs_from_smooth_stone");
recipes.addShaped("futuremc_else/smooth_stonerecipe", <minecraft:stone_slab:0>*6, [
  [<futuremc:smooth_stone>,<futuremc:smooth_stone>,<futuremc:smooth_stone>]
]);

recipes.remove(<futuremc:chain>);
recipes.addShaped("lantern_chain", <futuremc:chain>, [
    [null, <ore:genericMetalNuggets>, null],
    [null, <iceandfire:chain_link>, null],
    [null,<ore:genericMetalNuggets>,null,]
]);

recipes.remove(<futuremc:lantern>);
recipes.addShaped("metal_oil_lantern", <futuremc:lantern>, [
    [<ore:genericMetalNuggets>, <iceandfire:chain_link>, <ore:genericMetalNuggets>],
    [<minecraft:stick>, <contenttweaker:seed_oil>.transformReplace(<minecraft:glass_bottle>), <minecraft:stick>],
    [<ore:genericMetalNuggets>,<ore:genericMetalNuggets>,<ore:genericMetalNuggets>,]
]);

recipes.remove(<futuremc:soul_fire_lantern>);
recipes.addShaped("soul_oil_lantern", <futuremc:soul_fire_lantern>, [
    [<dungeontactics:steel_nugget>, <iceandfire:chain_link>, <dungeontactics:steel_nugget>],
    [<dungeontactics:steel_nugget>, <biomesoplenty:jar_filled:1>, <dungeontactics:steel_nugget>],
    [<dungeontactics:steel_nugget>,<dungeontactics:steel_nugget>,<dungeontactics:steel_nugget>,]
]);

// Banner patterns
recipes.addShapeless("banner_pattern_flower", <futuremc:banner_pattern:0>, [<minecraft:paper>, <ore:flower>]);
recipes.addShapeless("banner_pattern_creeper", <futuremc:banner_pattern:1>, [<minecraft:paper>, <minecraft:skull:4> | <harvestcraft:creepercookieitem> | <rats:charged_creeper_chunk>]);
recipes.addShapeless("banner_pattern_skull", <futuremc:banner_pattern:2>, [<minecraft:paper>, <ore:mythicalSkull>]);
recipes.addShapeless("banner_pattern_thing", <futuremc:banner_pattern:3>, [<minecraft:paper>, <minecraft:golden_apple:1>]);

RecipeBuilder.get("mage")
  .setShapeless([<minecraft:paper>, <minecraft:stone>, <minecraft:dirt>, <minecraft:sand>])
  .addTool(<artisanworktables:artisans_quill_gold>, 1)
  .addTool(<contenttweaker:earth_rune>, 1)
  .addOutput(<futuremc:banner_pattern:4>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

//stone cutter recipe in betterwithmods.zs

// Brazier
recipes.remove(<futuremc:campfire>);
recipes.addShaped("brazier", <futuremc:campfire>*4,[
   [null, <minecraft:fire_charge> | <minecraft:flint_and_steel>.anyDamage().transformDamage() | <pyrotech:matchstick>, null],
   [<ore:genericMetalNuggets>, <ore:dustNetherrack>, <ore:genericMetalNuggets>],
   [<ore:genericMetalNuggets>,<ore:genericMetal>, <ore:genericMetalNuggets>]
]);

recipes.remove(<futuremc:suspicious_stew>);

recipes.addShaped("bamboo_to_stick", <minecraft:stick>, [
	[<futuremc:bamboo>],
	[<futuremc:bamboo>]
]);

var honeyBottle = <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}});
var honeyBottleTR = honeyBottle.transformReplace(<minecraft:glass_bottle>);
var honeyComb = <rustic:honeycomb>;

recipes.remove(<futuremc:honey_block>);
recipes.addShaped("rustic_honey_to_honey_block", <futuremc:honey_block>, [
	[honeyBottleTR, honeyBottleTR],
	[honeyBottleTR, honeyBottleTR]
]);
recipes.addShapeless("honey_block_to_rustic_honey", honeyBottle * 4, [<futuremc:honey_block>]);

recipes.remove(<futuremc:honeycomb_block>);
recipes.addShaped("rustic_honeycomb_to_honeycomb_block", <futuremc:honeycomb_block>, [
	[honeyComb, honeyComb],
	[honeyComb, honeyComb]
]);
recipes.addShapeless("honeycomb_block_to_rustic_honeycomb", honeyComb * 3, [<futuremc:honeycomb_block>]);


/*********************************************************************************

Blast Furnace Recipes

**********************************************************************************/

/****** Procedural OSV Ores ******/

var ores as IItemStack[string] = {
	"simpleores_copper_ore" : <simpleores:copper_ingot>,
	"redstone_ore" : <minecraft:redstone>,
	"biomesoplenty_peridot_ore" : <biomesoplenty:gem:2>,
	"coal_ore" : <minecraft:coal>,
	"emerald_ore" : <minecraft:emerald>,
	"diamond_ore" : <minecraft:diamond>,
	"lapis_ore" : <minecraft:dye:4>,
	"biomesoplenty_ruby_ore" : <biomesoplenty:gem:1>,
	"iceandfire_silver_ore" : <iceandfire:silver_ingot>,
	"iron_ore" : <minecraft:iron_ingot>,
	"biomesoplenty_sapphire_ore" : <biomesoplenty:gem:6>,
	"gold_ore" : <minecraft:gold_ingot>,
	"simpleores_mythril_ore" : <simpleores:mythril_ingot>,
	"simpleores_adamantium_ore" : <simpleores:adamantium_ingot>,
	"simpleores_tin_ore" : <simpleores:tin_ingot>
} as IItemStack[string];

for ore, result in ores {
	BlastFurnace.removeRecipeForInput(result);
}

var stones as string[] = [
	"undergroundbiomes_igneous_stone",
	"undergroundbiomes_metamorphic_stone",
	"undergroundbiomes_sedimentary_stone",
	"pyrotech_limestone",
	"quark_elder_prismarine",
	"hardened_clay",
	"stained_hardened_clay",
	"quark_biome_cobblestone",
	"quark_biome_cobblestone_1",
	"quark_biome_cobblestone_2",
	"sandstone",
	"red_sandstone",
	"undergroundbiomes_igneous_stone_4",
	"undergroundbiomes_metamorphic_stone_4",
] as string[];

for i in 1 to 4 {
	stones += "undergroundbiomes_igneous_stone_"~i;
	stones += "undergroundbiomes_metamorphic_stone_"~i;
	stones += "undergroundbiomes_sedimentary_stone_"~i;
}

for i in 5 to 8 {
	stones += "undergroundbiomes_igneous_stone_"~i;
	stones += "undergroundbiomes_metamorphic_stone_"~i;
	stones += "undergroundbiomes_sedimentary_stone_"~i;
}

for meta in 0 .. 8 {
	for stone in stones {
		for ore, result in ores {
			BlastFurnace.addRecipe(itemUtils.getItem("osv:"~ore~"_"~stone, meta), result);
		}									
	}
}

/******** Modded Ores *********/

var moddedBlastFurnaceRecipes as IItemStack[IItemStack] = {
	<biomesoplenty:gem_ore:1> : <biomesoplenty:gem:1>,		// Ruby
	<biomesoplenty:gem_ore:2> : <biomesoplenty:gem:2>,		// Peridot
	<biomesoplenty:gem_ore:6> : <biomesoplenty:gem:6>,		// Sapphire
	<iceandfire:silver_ore> : <iceandfire:silver_ingot>,
	<dungeontactics:enddiamond_ore> : <minecraft:diamond>,
	<dungeontactics:endlapis_ore> : <minecraft:dye:4>,		// Lapis
	<quark:biotite_ore> : <quark:biotite>,
	<simpleores:copper_ore> : <simpleores:copper_ingot>,
	<simpleores:tin_ore> : <simpleores:tin_ingot>,
	<simpleores:mythril_ore> : <simpleores:mythril_ingot>,
	<simpleores:adamantium_ore> : <simpleores:adamantium_ingot>,
	<simpleores:onyx_ore> : <simpleores:onyx_gem>,
	<contenttweaker:raw_tin> : <simpleores:tin_ingot>,
	<contenttweaker:raw_copper> : <simpleores:copper_ingot>,
	<contenttweaker:raw_iron> : <minecraft:iron_ingot>,
	<contenttweaker:raw_silver> : <iceandfire:silver_ingot>,
	<contenttweaker:raw_gold> : <minecraft:gold_ingot>,
	<contenttweaker:raw_viridium> : <simpleores:adamantium_ingot>,
	<contenttweaker:raw_mythril> : <simpleores:mythril_ingot>,
	<contenttweaker:material_part:52> : <contenttweaker:material_part:49>
} as IItemStack[IItemStack];

for ore, result in moddedBlastFurnaceRecipes {
	BlastFurnace.addRecipe(ore, result);
}

BlastFurnace.removeRecipe(<rustic:dust_tiny_iron>);
BlastFurnace.removeRecipeForInput(<biomesoplenty:gem_ore:5>);
BlastFurnace.removeRecipeForInput(<netherex:amethyst_ore>);

// Brick resistance
<contenttweaker:brick_red_granite>.asBlock().definition.resistance = <undergroundbiomes:igneous_brick:0>.asBlock().definition.resistance;

/*********************************************************************************

Smoker Recipes

**********************************************************************************/

var smokerRecipes as IItemStack[IItemStack] = {

	/****** Animania ******/

	<animania:raw_prime_beef> : <animania:cooked_prime_beef>,
	<animania:raw_prime_bacon> : <animania:cooked_prime_bacon>,
	<animania:raw_prime_chevon> : <animania:cooked_prime_chevon>,
	<animania:raw_prime_chicken> : <animania:cooked_prime_chicken>,
	<animania:raw_prime_mutton> : <animania:cooked_prime_mutton>,
	<animania:raw_prime_peacock> : <animania:cooked_prime_peacock>,
	<animania:raw_prime_pork> : <animania:cooked_prime_pork>,
	<animania:raw_prime_rabbit> : <animania:cooked_prime_rabbit>,
	<animania:raw_prime_steak> : <animania:cooked_prime_steak>,
	<animania:raw_frog_legs> : <animania:cooked_frog_legs>,
	<animania:raw_horse> : <animania:cooked_horse>,
	<animania:raw_chevon> : <animania:cooked_chevon>,
	<animania:raw_peacock> : <animania:cooked_peacock>,

	/****** Harvestcraft ******/

	<harvestcraft:musselrawitem> : <harvestcraft:musselcookeditem>,
	<harvestcraft:calamarirawitem> : <harvestcraft:calamaricookeditem>,
	<harvestcraft:clamrawitem> : <harvestcraft:clamcookeditem>,
	<harvestcraft:crabrawitem> : <harvestcraft:crabcookeditem>,
	<harvestcraft:crayfishrawitem> : <harvestcraft:crayfishcookeditem>,
	<harvestcraft:frograwitem> : <harvestcraft:frogcookeditem>,
	<harvestcraft:octopusrawitem> : <harvestcraft:octopuscookeditem>,
	<harvestcraft:scalloprawitem> : <harvestcraft:scallopcookeditem>,
	<harvestcraft:shrimprawitem> : <harvestcraft:shrimpcookeditem>,
	<harvestcraft:snailrawitem> : <harvestcraft:snailcookeditem>,
	<harvestcraft:turtlerawitem> : <harvestcraft:turtlecookeditem>,
	<harvestcraft:oysterrawitem> : <harvestcraft:oystercookeditem>,
	<harvestcraft:turkeyrawitem> : <harvestcraft:turkeycookeditem>,
	<harvestcraft:duckrawitem> : <harvestcraft:duckcookeditem>,
	<harvestcraft:rawtofeakitem> : <harvestcraft:cookedtofeakitem>,
	<harvestcraft:rawtofaconitem> : <harvestcraft:cookedtofaconitem>,
	<harvestcraft:rawtofishitem> : <harvestcraft:cookedtofishitem>,
	<harvestcraft:rawtofeegitem> : <harvestcraft:cookedtofeegitem>,
	<harvestcraft:rawtofuttonitem> : <harvestcraft:cookedtofuttonitem>,
	<harvestcraft:rawtofickenitem> : <harvestcraft:cookedtofickenitem>,
	<harvestcraft:rawtofabbititem> : <harvestcraft:cookedtofabbititem>,
	<harvestcraft:rawtofurkeyitem> : <harvestcraft:cookedtofurkeyitem>,
	<harvestcraft:rawtofenisonitem> : <harvestcraft:cookedtofenisonitem>,
	<harvestcraft:rawtofuduckitem> : <harvestcraft:cookedtofuduckitem>,

	/****** DT Potion Fish ******/

	<dungeontactics:fish_swift> : <dungeontactics:fish_swift_cooked>,
	<dungeontactics:fish_flying> : <dungeontactics:fish_flying_cooked>,
	<dungeontactics:fish_lava> : <dungeontactics:fish_lava_cooked>,
	<dungeontactics:fish_muscle> : <dungeontactics:fish_muscle_cooked>,
	<dungeontactics:fish_lung> : <dungeontactics:fish_lung_cooked>,
	<dungeontactics:fish_obsidian> : <dungeontactics:fish_obsidian_cooked>,
	<dungeontactics:fish_tunnel> : <dungeontactics:fish_tunnel_cooked>,


	/****** LAVACOWWW ******/

	<mod_lavacow:piranha> : <mod_lavacow:piranha_cooked>,
	<mod_lavacow:cheirolepis> : <mod_lavacow:cheirolepis_cooked>,
	<mod_lavacow:zombiepiranha_item> : <mod_lavacow:zombiepiranha_item_cooked>,


	/****** Other ******/

	<primitivemobs:dodo> : <primitivemobs:cooked_dodo>,
	<quark:crab_leg> : <quark:cooked_crab_leg>,
	<aether_legacy:enchanted_cockatrice> : <aether_legacy:cooked_enchanted_cockatrice>,
	<betteranimalsplus:venisonraw> : <betteranimalsplus:venisoncooked>,
	<betteranimalsplus:pheasantraw> : <betteranimalsplus:pheasantcooked>,
	<betteranimalsplus:crab_meat_raw> : <betteranimalsplus:crab_meat_cooked>,
	<betteranimalsplus:turkey_raw> : <betteranimalsplus:turkey_cooked>,
	<betteranimalsplus:turkey_leg_raw> : <betteranimalsplus:turkey_leg_cooked>,
	<betteranimalsplus:eel_meat_raw> : <betteranimalsplus:eel_meat_cooked>,
	<betterwithmods:wolf_chop> : <betterwithmods:cooked_wolf_chop>,
	<betterwithmods:bat_wing> : <betterwithmods:cooked_bat_wing>,
	<minecraft:fish:2> : <betterwithaddons:food_clownfish_cooked>,
	<minecraft:fish:3> : <betterwithaddons:food_pufferfish_baked>,
	<rats:raw_rat> : <rats:cooked_rat>,
	<twilightforest:raw_meef> : <twilightforest:cooked_meef>
} as IItemStack[IItemStack];

var hcfish as IItemStack[] = [
	<harvestcraft:anchovyrawitem>,
	<harvestcraft:bassrawitem>,
	<harvestcraft:carprawitem>,
	<harvestcraft:catfishrawitem>,
	<harvestcraft:charrrawitem>,
	<harvestcraft:eelrawitem>,
	<harvestcraft:grouperrawitem>,
	<harvestcraft:herringrawitem>,
	<harvestcraft:mudfishrawitem>,
	<harvestcraft:perchrawitem>,
	<harvestcraft:snapperrawitem>,
	<harvestcraft:tilapiarawitem>,
	<harvestcraft:troutrawitem>,
	<harvestcraft:tunarawitem>,
	<harvestcraft:walleyerawitem>,
	<harvestcraft:greenheartfishitem>,
	<harvestcraft:sardinerawitem>
] as IItemStack[];

for fish in hcfish {
	smokerRecipes[fish] = <minecraft:cooked_fish:0>;
}

for raw, cooked in smokerRecipes {
	Smoker.addRecipe(raw, cooked);
}

Smoker.removeRecipe(<minecraft:apple>);


/*********************************************************************************

Campfire Recipes

**********************************************************************************/

var campfireRecipes600 as IItemStack[IItemStack] = {

	/****** Animania ******/

	<animania:raw_prime_beef> : <animania:cooked_prime_beef>,
	<animania:raw_prime_bacon> : <animania:cooked_prime_bacon>,
	<animania:raw_prime_chevon> : <animania:cooked_prime_chevon>,
	<animania:raw_prime_chicken> : <animania:cooked_prime_chicken>,
	<animania:raw_prime_mutton> : <animania:cooked_prime_mutton>,
	<animania:raw_prime_peacock> : <animania:cooked_prime_peacock>,
	<animania:raw_prime_pork> : <animania:cooked_prime_pork>,
	<animania:raw_prime_rabbit> : <animania:cooked_prime_rabbit>,
	<animania:raw_prime_steak> : <animania:cooked_prime_steak>,
	<animania:raw_frog_legs> : <animania:cooked_frog_legs>,
	<animania:raw_horse> : <animania:cooked_horse>,
	<animania:raw_chevon> : <animania:cooked_chevon>,
	<animania:raw_peacock> : <animania:cooked_peacock>,

	/****** Harvestcraft ******/

	<harvestcraft:musselrawitem> : <harvestcraft:musselcookeditem>,
	<harvestcraft:calamarirawitem> : <harvestcraft:calamaricookeditem>,
	<harvestcraft:clamrawitem> : <harvestcraft:clamcookeditem>,
	<harvestcraft:crabrawitem> : <harvestcraft:crabcookeditem>,
	<harvestcraft:crayfishrawitem> : <harvestcraft:crayfishcookeditem>,
	<harvestcraft:frograwitem> : <harvestcraft:frogcookeditem>,
	<harvestcraft:octopusrawitem> : <harvestcraft:octopuscookeditem>,
	<harvestcraft:scalloprawitem> : <harvestcraft:scallopcookeditem>,
	<harvestcraft:shrimprawitem> : <harvestcraft:shrimpcookeditem>,
	<harvestcraft:snailrawitem> : <harvestcraft:snailcookeditem>,
	<harvestcraft:turtlerawitem> : <harvestcraft:turtlecookeditem>,
	<harvestcraft:oysterrawitem> : <harvestcraft:oystercookeditem>,
	<harvestcraft:turkeyrawitem> : <harvestcraft:turkeycookeditem>,
	<harvestcraft:duckrawitem> : <harvestcraft:duckcookeditem>,
	<harvestcraft:rawtofeakitem> : <harvestcraft:cookedtofeakitem>,
	<harvestcraft:rawtofaconitem> : <harvestcraft:cookedtofaconitem>,
	<harvestcraft:rawtofishitem> : <harvestcraft:cookedtofishitem>,
	<harvestcraft:rawtofeegitem> : <harvestcraft:cookedtofeegitem>,
	<harvestcraft:rawtofuttonitem> : <harvestcraft:cookedtofuttonitem>,
	<harvestcraft:rawtofickenitem> : <harvestcraft:cookedtofickenitem>,
	<harvestcraft:rawtofabbititem> : <harvestcraft:cookedtofabbititem>,
	<harvestcraft:rawtofurkeyitem> : <harvestcraft:cookedtofurkeyitem>,
	<harvestcraft:rawtofenisonitem> : <harvestcraft:cookedtofenisonitem>,
	<harvestcraft:rawtofuduckitem> : <harvestcraft:cookedtofuduckitem>,
	<harvestcraft:sweetpotatoitem> : <harvestcraft:bakedsweetpotatoitem>,

	/****** DT Potion Fish ******/

	<dungeontactics:fish_swift> : <dungeontactics:fish_swift_cooked>,
	<dungeontactics:fish_flying> : <dungeontactics:fish_flying_cooked>,
	<dungeontactics:fish_lava> : <dungeontactics:fish_lava_cooked>,
	<dungeontactics:fish_muscle> : <dungeontactics:fish_muscle_cooked>,
	<dungeontactics:fish_lung> : <dungeontactics:fish_lung_cooked>,
	<dungeontactics:fish_obsidian> : <dungeontactics:fish_obsidian_cooked>,
	<dungeontactics:fish_tunnel> : <dungeontactics:fish_tunnel_cooked>,


	/****** LAVACOWWW ******/

	<mod_lavacow:piranha> : <mod_lavacow:piranha_cooked>,
	<mod_lavacow:cheirolepis> : <mod_lavacow:cheirolepis_cooked>,
	<mod_lavacow:zombiepiranha_item> : <mod_lavacow:zombiepiranha_item_cooked>,


	/****** Other ******/

	<primitivemobs:dodo> : <primitivemobs:cooked_dodo>,
	<quark:crab_leg> : <quark:cooked_crab_leg>,
	<aether_legacy:enchanted_cockatrice> : <aether_legacy:cooked_enchanted_cockatrice>,
	<betteranimalsplus:venisonraw> : <betteranimalsplus:venisoncooked>,
	<betteranimalsplus:pheasantraw> : <betteranimalsplus:pheasantcooked>,
	<betteranimalsplus:crab_meat_raw> : <betteranimalsplus:crab_meat_cooked>,
	<betteranimalsplus:turkey_raw> : <betteranimalsplus:turkey_cooked>,
	<betteranimalsplus:turkey_leg_raw> : <betteranimalsplus:turkey_leg_cooked>,
	<betteranimalsplus:eel_meat_raw> : <betteranimalsplus:eel_meat_cooked>,
	<betterwithmods:wolf_chop> : <betterwithmods:cooked_wolf_chop>,
	<betterwithmods:bat_wing> : <betterwithmods:cooked_bat_wing>,
	<betterwithmods:mystery_meat> : <betterwithmods:cooked_mystery_meat>,
	<minecraft:fish:2> : <betterwithaddons:food_clownfish_cooked>,
	<minecraft:fish:3> : <betterwithaddons:food_pufferfish_baked>,
	<rats:raw_rat> : <rats:cooked_rat>,
	<twilightforest:raw_meef> : <twilightforest:cooked_meef>
} as IItemStack[IItemStack];

for fish in hcfish {
	campfireRecipes600[fish] = <minecraft:cooked_fish:0>;
}

for raw, cooked in campfireRecipes600 {
	Campfire.addRecipe(raw, cooked, 600);
}
