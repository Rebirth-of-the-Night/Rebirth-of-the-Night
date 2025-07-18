import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.rustic.CrushingTub;
import mods.rustic.Condenser;
import mods.rustic.EvaporatingBasin;
import mods.betterwithmods.MiniBlocks;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;

//Define ingredients
var thistle = <rustic:wind_thistle>;
var fasthaw = <cyclicmagic:horse_upgrade_speed>;
var jumphaw = <cyclicmagic:horse_upgrade_jump>;
var ironBerry = <rustic:ironberries>;
var genericNugg = <ore:genericMetalNuggets>;
var goldNugg = <minecraft:gold_nugget>;
var slime = <ore:slimeball>;
var niter = <betterwithmods:material:26>;
var mallow = <rustic:marsh_mallow>;
var cloudsbluff = <rustic:cloudsbluff>;
var cloudgold = <aether_legacy:aercloud:2>;
var cloudblue = <aether_legacy:aercloud:1>;
var cloudwhite = <aether_legacy:aercloud:0>;
var cohosh = <rustic:cohosh>;
var honeycomb = <rustic:honeycomb>;
var chamomile = <rustic:chamomile>;
var bloodorchid = <rustic:blood_orchid>;
var horsetail = <rustic:horsetail>;
var fourclover = <contenttweaker:4leaf_clover>;
var core = <rustic:core_root>;
var ginseng = <rustic:ginseng>;
var spirits = <betterwithaddons:ancestry_bottle>;
var fleshblockR = <charm:rotten_flesh_block>;
var tarblock = <pyrotech:living_tar>;
var tear = <minecraft:ghast_tear>;
var petal = <aether_legacy:aechor_petal>;
var ironW = <contenttweaker:material_part:49>;
var aloe = <rustic:aloe_vera>;
var blazepowder = <minecraft:blaze_powder>;
var cincinnasite = <betternether:cincinnasite>;
var deathstalk = <rustic:deathstalk_mushroom>;
var bronzefeather = <iceandfire:stymphalian_bird_feather>;
var bottle = <minecraft:glass_bottle>;
var cocaine = <iceandfire:pixie_dust>;
var virdust = <contenttweaker:material_part:23>;
var metdust = <nyx:meteor_dust>;
var steeldust = <contenttweaker:material_part:27>;
var zanitegem = <aether_legacy:zanite_gemstone>;
var mooncap = <rustic:mooncap_mushroom>;
var paralex = <contenttweaker:parity_peridot>;
var nethercoin = <contenttweaker:nethercoin>;
var flesh = <biomesoplenty:flesh>;
var plaguehide = <mod_lavacow:pigboarhide>;
var voidflame = <contenttweaker:void_block>;
var angel = <endreborn:item_angel_feather>;
var viridea = <contenttweaker:viridea>;
var voidseen = <contenttweaker:voidseen_exorite>;
var ampfeather = <iceandfire:amphithere_feather>;
var bloodeye = <netherex:wither_bone>;
var soulurn = <betterwithmods:urn:8>;
var earthruby = <contenttweaker:earthen_ruby>;
var heart = <scalinghealth:heartcontainer>;
var biotite = <quark:biotite>;
var scab = <contenttweaker:scab>;
var stomach = <ore:materialStomach>;
var suntouched = <contenttweaker:suntouched_diamond>;
var starblock = <contenttweaker:star_block>;
var redstone = <minecraft:redstone>;
var vis = <contenttweaker:vis_shard>;
var allium = <minecraft:red_flower:2>;
var firetears = <twilightforest:fiery_tears>;
var firedcin = <contenttweaker:flashfired_cincinnasite>;
var rabbitfoot = <minecraft:rabbit_foot>;

//Define liquids
var hotspring = <liquid:hot_spring_water>;
var lunarwater = <liquid:lunar_water>;
var blood = <liquid:blood>;
var spiritfire = <liquid:unstable_spiritfire>;
var poison = <liquid:poison>;
var dreadcold = <liquid:dread_cold>;
var arcmythril = <liquid:residual_mythril>;
var bioflow = <liquid:concentrated_bioflow>;
var gravitite = <liquid:gravitite>; 
var slag = <liquid:ender_slag>;

// Stack sizes
var potions = <minecraft:potion>;
var potions_splash = <minecraft:splash_potion>;
var potions_lingering = <minecraft:lingering_potion>;

potions.maxStackSize = 8;
potions_splash.maxStackSize = 8;
potions_lingering.maxStackSize = 8;
<rustic:elixir>.maxStackSize = 8;

//Change condenser recipes
recipes.remove(<rustic:condenser>);
recipes.remove(<rustic:retort>);

recipes.addShaped(<rustic:condenser>, 
[[null, <minecraft:brick>, null],
[<minecraft:brick>, <pyrotech:bucket_stone>.noReturn(), <minecraft:brick>],
[<minecraft:brick>, <minecraft:hardened_clay>, <minecraft:brick>]]);
recipes.addShaped(<rustic:retort>, [
[null, <minecraft:brick>, null],
[<ore:genericMetal>, <ore:genericMetal>, null],
[null, <minecraft:brick>, null]]);

recipes.remove(<rustic:condenser_advanced>);
recipes.remove(<rustic:retort_advanced>);

//advanced condenser
RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:brick_black_granite>, <simpleores:mythril_ingot>, <contenttweaker:brick_black_granite>],
    [<nyx:fallen_star>, <arcanearchives:radiant_tank>, <nyx:fallen_star>],
    [<contenttweaker:brick_black_granite>, <simpleores:mythril_block>, <contenttweaker:brick_black_granite>]])
  .addTool(<contenttweaker:arcane_rune>, 1)
  .addTool(<contenttweaker:trans_rune>, 1)
  .addOutput(<rustic:condenser_advanced>)
  .create();
//advanced retort
RecipeBuilder.get("mage")
  .setShaped([
    [null, <simpleores:mythril_ingot>, null],
    [<nyx:fallen_star>, <simpleores:mythril_rod>, <nyx:fallen_star>],
    [<contenttweaker:brick_black_granite>, <contenttweaker:brick_black_granite>, <contenttweaker:brick_black_granite>]])
  .addTool(<contenttweaker:arcane_rune>, 1)
  .addTool(<contenttweaker:trans_rune>, 1)
  .addOutput(<rustic:retort_advanced>)
  .create();


//Define elixir vals for removal
val regenerationElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:regeneration", Duration: 900, Amplifier: 0}]});
val regenerationElixirLong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:regeneration", Duration: 1800, Amplifier: 0}]});
val regenerationElixirStrong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:regeneration", Duration: 450, Amplifier: 1}]});
val healthElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 0}]});
val healthElixirStrong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 1}]});
val nightvisionElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]});
val nightvisionExtendedElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:night_vision", Duration: 9600, Amplifier: 0}]});
val nightvisionObsceneExtendedElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:night_vision", Duration: 14400, Amplifier: 0}]});
val ironskinElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "rustic:ironskin", Duration: 3600, Amplifier: 0}]});
val ironskinElixirLong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "rustic:ironskin", Duration: 9600, Amplifier: 0}]});
val ironskinElixirStrong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "rustic:ironskin", Duration: 1800, Amplifier: 1}]});
val witherElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:wither", Duration: 900, Amplifier: 0}]});
val witherElixirLong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:wither", Duration: 1800, Amplifier: 0}]});
val witherElixirStrong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:wither", Duration: 450, Amplifier: 1}]});
val healthboostElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:health_boost", Duration: 3600, Amplifier: 0}]});
val healthboostElixirLong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:health_boost", Duration: 9600, Amplifier: 0}]});
val healthboostElixirStrong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:health_boost", Duration: 1800, Amplifier: 1}]});
val speedElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:speed", Duration: 3600, Amplifier: 0}]});
val speedElixirLong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:speed", Duration: 9600, Amplifier: 0}]});
val speedElixirStrong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:speed", Duration: 1800, Amplifier: 1}]});
val strengthElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:strength", Duration: 3600, Amplifier: 0}]});
val strengthElixirLong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:strength", Duration: 9600, Amplifier: 0}]});
val strengthElixirStrong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:strength", Duration: 1800, Amplifier: 1}]});
val featherElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "rustic:feather", Duration: 3600, Amplifier: 0}]});
val featherElixirLong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "rustic:feather", Duration: 9600, Amplifier: 0}]});
val blazingtrailElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "rustic:blazing_trail", Duration: 3600, Amplifier: 0}]});
val blazingtrailElixirLong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "rustic:blazing_trail", Duration: 9600, Amplifier: 0}]});
val hasteElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:haste", Duration: 3600, Amplifier: 0}]});
val hasteElixirLong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:haste", Duration: 9600, Amplifier: 0}]});
val hasteElixirStrong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:haste", Duration: 1800, Amplifier: 1}]});
val fireresistanceElixir = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:fire_resistance", Duration: 3600, Amplifier: 0}]});
val fireresistanceElixirLong = <rustic:elixir>.withTag({ElixirEffects:[{Effect: "minecraft:fire_resistance", Duration: 9600, Amplifier: 0}]});

//Remove default rustic elixir recipes
Condenser.removeRecipe(regenerationElixir);
Condenser.removeRecipe(regenerationElixirLong);
Condenser.removeRecipe(regenerationElixirStrong);
Condenser.removeRecipe(healthElixir);
Condenser.removeRecipe(healthElixirStrong);
Condenser.removeRecipe(ironskinElixir);
Condenser.removeRecipe(ironskinElixirLong);
Condenser.removeRecipe(ironskinElixirStrong);
Condenser.removeRecipe(nightvisionElixir);
Condenser.removeRecipe(nightvisionExtendedElixir);
Condenser.removeRecipe(witherElixir);
Condenser.removeRecipe(witherElixirLong);
Condenser.removeRecipe(witherElixirStrong);
Condenser.removeRecipe(healthboostElixir);
Condenser.removeRecipe(healthboostElixirLong);
Condenser.removeRecipe(healthboostElixirStrong);
Condenser.removeRecipe(speedElixir);
Condenser.removeRecipe(speedElixirLong);
Condenser.removeRecipe(speedElixirStrong);
Condenser.removeRecipe(strengthElixir);
Condenser.removeRecipe(strengthElixirLong);
Condenser.removeRecipe(strengthElixirStrong);
Condenser.removeRecipe(featherElixir);
Condenser.removeRecipe(featherElixirLong);
Condenser.removeRecipe(blazingtrailElixir);
Condenser.removeRecipe(blazingtrailElixirLong);
Condenser.removeRecipe(hasteElixir);
Condenser.removeRecipe(hasteElixirLong);
Condenser.removeRecipe(hasteElixirStrong);
Condenser.removeRecipe(fireresistanceElixir);
Condenser.removeRecipe(fireresistanceElixirLong);
JEI.removeAndHide(regenerationElixir);
JEI.removeAndHide(regenerationElixirLong);
JEI.removeAndHide(regenerationElixirStrong);

//Define elixirs for addition
val speedElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Speed Elixir"},ElixirEffects:[{Effect: "minecraft:speed", Duration: 9600, Amplifier: 1}]});
val magnetismElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Magnetism Elixir"},ElixirEffects:[{Effect: "extraalchemy:effect.magnetism", Duration: 7200, Amplifier: 1}]});
val bouncyElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Bouncy Elixir"},ElixirEffects:[{Effect: "cyclicmagic:potion.bounce", Duration: 7200, Amplifier: 1}]});
val luckElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Lucky Elixir"},ElixirEffects:[{Effect: "minecraft:luck", Duration: 18000, Amplifier: 1}]});
val featherElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Featherlight Elixir"},ElixirEffects:[{Effect: "rustic:feather", Duration: 9600, Amplifier: 0}]});
val healthboostElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Health Boost Elixir"},ElixirEffects:[{Effect: "minecraft:health_boost", Duration: 7200, Amplifier: 1}]});
val strengthElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Strength Elixir"},ElixirEffects:[{Effect: "minecraft:strength", Duration: 9600, Amplifier: 0}]});
val forcefulElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Forceful Elixir"},ElixirEffects:[{Effect: "elenaidodge2:forceful", Duration: 9600, Amplifier: 0}]});
val fireresElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Fire Resistance Elixir"},ElixirEffects:[{Effect: "minecraft:fire_resistance", Duration: 9600, Amplifier: 3}]});
val healthElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Metabolic Whey"},ElixirEffects:[{Effect: "minecraft:regeneration", Duration: 160, Amplifier: 2},{Effect: "minecraft:hunger", Duration: 160, Amplifier: 29},{Effect: "minecraft:nausea", Duration: 160, Amplifier: 0}]});
val hasteElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Haste Elixir"},ElixirEffects:[{Effect: "minecraft:haste", Duration: 9600, Amplifier: 1}]});

val masteryElixirNether = <rustic:elixir>.withTag({display:{LocName:"Simple Mastery Elixir"},ElixirEffects:[{Effect: "dpt:mastery", Duration: 9600, Amplifier: 1}]});
val healthElixirNether = <rustic:elixir>.withTag({display:{LocName:"Simple Healing Elixir"},ElixirEffects:[{Effect: "minecraft:instant_health", Amplifier: 4}]});
val ironskinElixirNether = <rustic:elixir>.withTag({display:{LocName:"Simple Ironskin Elixir"},ElixirEffects:[{Effect: "rustic:ironskin", Duration: 4800, Amplifier: 1}]});
val enduranceElixirNether = <rustic:elixir>.withTag({display:{LocName:"Simple Endurance Elixir"},ElixirEffects:[{Effect: "elenaidodge2:endurance", Duration: 14400, Amplifier: 0},{Effect: "elenaidodge2:feathers", Duration: 2400, Amplifier: 0}]});

val poisonresElixirAether = <rustic:elixir>.withTag({display:{LocName:"Simple Poison Resistance Elixir"},ElixirEffects:[{Effect: "mowziesmobs:poison_resist", Duration: 9600, Amplifier: 0}]});
val jumpboostElixirAether = <rustic:elixir>.withTag({display:{LocName:"Simple Jump Boost Elixir"},ElixirEffects:[{Effect: "minecraft:jump_boost", Duration: 9600, Amplifier: 1}]});
val featheryElixirAether = <rustic:elixir>.withTag({display:{LocName:"Simple Feathers Elixir"},ElixirEffects:[{Effect: "elenaidodge2:feathers", Duration: 1200, Amplifier: 5}]});
val replenishmentElixirAether = <rustic:elixir>.withTag({display:{LocName:"Simple Replenishment Elixir"},ElixirEffects:[{Effect: "elenaidodge2:replenishment", Duration: 100, Amplifier: 0}]});
val fireresElixirAether = <rustic:elixir>.withTag({display:{LocName:"Empowered Fire Resistance Elixir"},ElixirEffects:[{Effect: "minecraft:fire_resistance", Duration: 12000, Amplifier: 6}]});


val speedElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Speed Elixir"},ElixirEffects:[{Effect: "minecraft:speed", Duration: 18000, Amplifier: 1},{Effect: "elenaidodge2:forceful", Duration: 9600, Amplifier: 1}]});
val magnetismElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Geomancy Elixir"},ElixirEffects:[{Effect: "extraalchemy:effect.magnetism", Duration: 18000, Amplifier: 1},{Effect: "rustic:ironskin", Duration: 18000, Amplifier: 1},{Effect: "potioncore:solid_core", Duration: 18000, Amplifier: 0}]});
val luckElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Lucky Elixir"},ElixirEffects:[{Effect: "minecraft:luck", Duration: 36000, Amplifier: 2},{Effect: "wards:effect_fortune", Duration: 6000, Amplifier: 2}]});
val featherElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Featherlight Elixir"},ElixirEffects:[{Effect: "rustic:feather", Duration: 18000, Amplifier: 0}]});
val healthboostElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Health Boost Elixir"},ElixirEffects:[{Effect: "minecraft:health_boost", Duration: 14400, Amplifier: 3}]});
val strengthElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Strength Elixir"},ElixirEffects:[{Effect: "minecraft:strength", Duration: 12000, Amplifier: 2}]});
val forcefulElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Forceful Elixir"},ElixirEffects:[{Effect: "elenaidodge2:forceful", Duration: 12000, Amplifier: 2},{Effect: "elenaidodge2:feathers", Duration: 1200, Amplifier: 2}]});
val fireResElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Fire Resistance Elixir"},ElixirEffects:[{Effect: "minecraft:fire_resistance", Duration: 18000, Amplifier: 9}]});
val hasteElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Haste Elixir"},ElixirEffects:[{Effect: "minecraft:haste", Duration: 12000, Amplifier: 2}]});


val demonicElixirEnd = <rustic:elixir>.withTag({display:{LocName:"Demonic Strength Elixir"},ElixirEffects:[{Effect: "minecraft:strength", Duration: 12000, Amplifier: 6},{Effect: "demonic_scythe:demonic_corruption", Duration: 12000, Amplifier: 8},{Effect: "potioncore:vulnerable", Duration: 12000, Amplifier: 1}]});
val geomancyElixirEnd = <rustic:elixir>.withTag({display:{LocName:"Earth Master's Elixir"},ElixirEffects:[{Effect: "mowziesmobs:geomancy", Duration: 12000, Amplifier: 1},{Effect: "defiledlands:grounded", Duration: 12000, Amplifier: 2},{Effect: "extraalchemy:effect.magnetism", Duration: 12000, Amplifier: 3},{Effect: "rustic:ironskin", Duration: 12000, Amplifier: 3},{Effect: "potioncore:solid_core", Duration: 12000, Amplifier: 3}]});
val sunElixirEnd = <rustic:elixir>.withTag({display:{LocName:"Elixir of the Solar Master"},ElixirEffects:[{Effect: "mowziesmobs:suns_blessing", Duration: 12000, Amplifier: 0},{Effect: "minecraft:fire_resistance", Duration: 12000, Amplifier: 9},{Effect: "rustic:blazing_trail", Duration: 12000, Amplifier: 0}]});
val nightvisionElixirEnd = <rustic:elixir>.withTag({display:{LocName:"Advanced Night Vision Elixir"},ElixirEffects:[{Effect: "minecraft:night_vision", Duration: 18000, Amplifier: 0}]});
val flightElixirTF = <rustic:elixir>.withTag({display:{LocName:"Air Master's Elixir"},ElixirEffects:[{Effect: "potioncore:flight", Duration: 24000, Amplifier: 0}]});


//Add recipes
//Condenser.addRecipe(output, itemstack[] inputs, modifier, bottle, fluid, time);

/////NON-ELIXIR RECIPES\\\\\
val artificialNature = <contenttweaker:artificial_nature>;
Condenser.addRecipe(artificialNature, [vis, allium], null, bottle, hotspring * 1000);
Condenser.addRecipe(artificialNature*3, [vis, fourclover], null, bottle, hotspring * 2000);

Condenser.addRecipe(fasthaw, [horsetail, thistle], null, <biomesoplenty:berries>*4, lunarwater * 100);
Condenser.addRecipe(fasthaw*8, [horsetail, <biomesoplenty:gem:2>], null, <biomesoplenty:berries>*16, lunarwater * 500);
Condenser.addRecipe(jumphaw, [horsetail, core], null, <biomesoplenty:berries>*4, lunarwater * 100);
Condenser.addRecipe(jumphaw*4, [horsetail, <biomesoplenty:gem:6>], null, <biomesoplenty:berries>*16, lunarwater * 500);
Condenser.addRecipe(<cyclicmagic:horse_upgrade_health>, [horsetail, <scalinghealth:crystalshard>], null, <biomesoplenty:berries>*4, lunarwater * 100);
Condenser.addRecipe(<cyclicmagic:horse_upgrade_health>*16, [horsetail, heart, virdust], <biomesoplenty:gem:1>, <biomesoplenty:berries>*32, lunarwater * 1000);

/////CRAFTABLE IN OVERWORLD\\\\\
Condenser.addRecipe(speedElixirOverworld, [thistle, fasthaw]);
Condenser.addRecipe(magnetismElixirOverworld, [ironBerry, genericNugg]);
Condenser.addRecipe(bouncyElixirOverworld, [slime, mallow]);
Condenser.addRecipe(healthElixirOverworld, [ginseng, stomach]);
Condenser.addRecipe(luckElixirOverworld, [fourclover, goldNugg], null, bottle, hotspring * 125);
Condenser.addRecipe(featherElixirOverworld, [cloudsbluff, cloudgold], null, bottle, lunarwater * 125);
Condenser.addRecipe(healthboostElixirOverworld, [bloodorchid, fleshblockR], null, bottle, hotspring * 125);
Condenser.addRecipe(strengthElixirOverworld, [core, spirits], null, bottle, lunarwater * 125);
Condenser.addRecipe(forcefulElixirOverworld, [core, jumphaw], null, bottle, lunarwater * 125);
Condenser.addRecipe(fireresElixirOverworld, [aloe, scab], null, bottle, lunarwater * 125);
Condenser.addRecipe(hasteElixirOverworld, [cohosh, redstone], null, bottle, lunarwater * 125);

/////CRAFTABLE POST-NETHER\\\\\
Condenser.addRecipe(healthElixirNether, [tear, tarblock], null, bottle, lunarwater * 1000);
Condenser.addRecipe(ironskinElixirNether, [ironW, horsetail], null, bottle, blood * 125);
Condenser.addRecipe(enduranceElixirNether, [horsetail, thistle], null, bottle, spiritfire * 250);
Condenser.addRecipe(masteryElixirNether, [<betterwithmods:material:16>, redstone], null, bottle, spiritfire * 125);

/////CRAFTABLE POST-AETHER\\\\\
Condenser.addRecipe(poisonresElixirAether, [petal, deathstalk], null, bottle, poison * 125);
Condenser.addRecipe(jumpboostElixirAether, [thistle, cloudblue], null, bottle, hotspring * 125);
Condenser.addRecipe(featheryElixirAether, [bronzefeather, cloudwhite], null, bottle, dreadcold * 125);
Condenser.addRecipe(replenishmentElixirAether, [cloudgold, tear], null, bottle, dreadcold * 125);
Condenser.addRecipe(fireresElixirAether, [aloe, blazepowder], null, bottle, dreadcold * 125);


/////CRAFTABLE POST-BENEATH\\\\\
Condenser.addRecipe(speedElixirBeneath, [cocaine, fasthaw, virdust], null, bottle, lunarwater * 250);
Condenser.addRecipe(magnetismElixirBeneath, [metdust, steeldust, mooncap], zanitegem, bottle, arcmythril * 500);
Condenser.addRecipe(luckElixirBeneath, [paralex, rabbitfoot, fourclover], null, bottle, lunarwater * 250);
Condenser.addRecipe(featherElixirBeneath, [cloudsbluff, cloudgold], zanitegem, bottle, lunarwater * 250);
Condenser.addRecipe(healthboostElixirBeneath, [bloodorchid, flesh, plaguehide], null, bottle, bioflow * 250);
Condenser.addRecipe(strengthElixirBeneath, [core, spirits, voidflame], null, bottle, lunarwater * 250);
Condenser.addRecipe(forcefulElixirBeneath, [core, jumphaw, cocaine], null, bottle, lunarwater * 250);
Condenser.addRecipe(fireResElixirBeneath, [aloe, blazepowder, mooncap], null, bottle, dreadcold * 1000);
Condenser.addRecipe(hasteElixirBeneath, [redstone, firedcin, mooncap], null, bottle, spiritfire * 500);


/////CRAFTABLE POST-END\\\\\
Condenser.addRecipe(geomancyElixirEnd, [earthruby, steeldust, mooncap], biotite, bottle, arcmythril * 1000);
Condenser.addRecipe(demonicElixirEnd, [bloodeye, soulurn, core], biotite, bottle, slag * 500);
Condenser.addRecipe(sunElixirEnd, [suntouched, starblock, mooncap], biotite, bottle, arcmythril * 1000);
Condenser.addRecipe(nightvisionElixirEnd, [<mowziesmobs:glowing_jelly>, <rotn_blocks:exorite_crystal>, mooncap], biotite, bottle, arcmythril * 500);


/////CRAFTABLE POST-TWILIGHT FOREST\\\\\
Condenser.addRecipe(flightElixirTF, [heart, angel, firetears], voidseen, bottle, gravitite * 720); //this effect will eventually be moved to a bauble, and the fuel for said bauble will be craftable at this stage instead

/////DYNAMIC TREES POTIONS\\\\\
/*Biochar*/ Condenser.addRecipe(<dynamictrees:dendropotion:0>, [<minecraft:coal:1>], null, <minecraft:potion>.withTag({Potion: "minecraft:water"}), null);
/*Depletion*/ Condenser.addRecipe(<dynamictrees:dendropotion:1>, [<minecraft:slime_ball>], null, <dynamictrees:dendropotion:0>, null);
/*Gigas*/ Condenser.addRecipe(<dynamictrees:dendropotion:2>, [<minecraft:pumpkin_seeds>], null, <dynamictrees:dendropotion:0>, null);
/*Burgeoning*/ Condenser.addRecipe(<dynamictrees:dendropotion:3>, [<minecraft:ghast_tear>], null, <dynamictrees:dendropotion:0>, null);
/*Transformation Base*/ Condenser.addRecipe(<dynamictrees:dendropotion:6>, [<minecraft:prismarine_crystals>], null, <dynamictrees:dendropotion:0>, null);

var transformationTargets as IIngredient[string] = {
    "dynamictrees:apple": <dynamictrees:appleseed>,
    "dynamictrees:oak": <dynamictrees:oakseed>,
    "dynamictrees:spruce": <dynamictrees:spruceseed>,
    "dynamictrees:birch": <dynamictrees:birchseed>,
    "dynamictrees:jungle": <dynamictrees:jungleseed>,
    "dynamictrees:acacia": <dynamictrees:acaciaseed>,
    "dynamictrees:darkoak": <dynamictrees:darkoakseed>,
    "dynamictrees:cactus": <dynamictrees:cactusseed>,
    "dynamictreesbop:floweringoak": <dynamictreesbop:floweringoakseed>,
    "dynamictreesbop:yellowautumn": <dynamictreesbop:yellowautumnseed>,
    "dynamictreesbop:orangeautumn": <dynamictreesbop:orangeautumnseed>,
    "dynamictreesbop:oakdying": <dynamictreesbop:oakdyingseed>,
    "dynamictreesbop:maple": <dynamictreesbop:mapleseed>,
    "dynamictreesbop:persimmon": <dynamictreesbop:persimmonseed>,
    "dynamictreesbop:peach": <dynamictreesbop:peachseed>,
    "dynamictreesbop:pear": <dynamictreesbop:pearseed>,
    "dynamictreesbop:poplar": <dynamictreesbop:poplarseed>,
    "dynamictreesbop:darkpoplar": <dynamictreesbop:darkpoplarseed>,
    "dynamictreesbop:magic": <dynamictreesbop:magicseed>,
    "dynamictreesbop:umbranconifer": <dynamictreesbop:umbranconiferseed>,
    "dynamictreesbop:umbran": <dynamictreesbop:umbranseed>,
    "dynamictreesbop:fir": <dynamictreesbop:firseed>,
    "dynamictreesbop:whitecherry": <dynamictreesbop:whitecherryseed>,
    "dynamictreesbop:pinkcherry": <dynamictreesbop:pinkcherryseed>,
    "dynamictreesbop:jacaranda": <dynamictreesbop:jacarandaseed>,
    "dynamictreesbop:redwood": <dynamictreesbop:redwoodseed>,
    "dynamictreesbop:willow": <dynamictreesbop:willowseed>,
    "dynamictreesbop:hellbark": <dynamictreesbop:hellbarkseed>,
    "dynamictreesbop:pine": <dynamictreesbop:pineseed>,
    "dynamictreesbop:palm": <dynamictreesbop:palmseed>,
    "dynamictreesbop:mahogany": <dynamictreesbop:mahoganyseed>,
    "dynamictreesbop:mangrove": <dynamictreesbop:mangroveseed>,
    "dynamictreesbop:ebony": <dynamictreesbop:ebonyseed>,
    "dynamictreesbop:bamboo": <dynamictreesbop:bambooseed>,
    "dynamictreesbop:eucalyptus": <dynamictreesbop:eucalyptusseed>,
    "dynamictreesphc:papaya" : <dynamictreesphc:papayaseed>,
    "dynamictreesphc:cherry" : <dynamictreesphc:cherryseed>,
    "dynamictreesphc:fig" : <dynamictreesphc:figseed>,
    "dynamictreesphc:soursop" : <dynamictreesphc:soursopseed>,
    "dynamictreesphc:rambutan" : <dynamictreesphc:rambutanseed>,
    "dynamictreesphc:jackfruit" : <dynamictreesphc:jackfruitseed>,
    "dynamictreesphc:lemon" : <dynamictreesphc:lemonseed>,
    "dynamictreesphc:pear" : <dynamictreesphc:pearseed>,
    "dynamictreesphc:olive" : <dynamictreesphc:oliveseed>,
    "dynamictreesphc:spiderweb" : <dynamictreesphc:spiderwebseed>,
    "dynamictreesphc:grapefruit" : <dynamictreesphc:grapefruitseed>,
    "dynamictreesphc:pomegranate" : <dynamictreesphc:pomegranateseed>,
    "dynamictreesphc:cashew" : <dynamictreesphc:cashewseed>,
    "dynamictreesphc:vanillabean" : <dynamictreesphc:vanillabeanseed>,
    "dynamictreesphc:starfruit" : <dynamictreesphc:starfruitseed>,
    "dynamictreesphc:banana" : <dynamictreesphc:bananaseed>,
    "dynamictreesphc:plum" : <dynamictreesphc:plumseed>,
    "dynamictreesphc:avocado" : <dynamictreesphc:avocadoseed>,
    "dynamictreesphc:pecan" : <dynamictreesphc:pecanseed>,
    "dynamictreesphc:pistachio" : <dynamictreesphc:pistachioseed>,
    "dynamictreesphc:hazelnut" : <dynamictreesphc:hazelnutseed>,
    "dynamictreesphc:lime" : <dynamictreesphc:limeseed>,
    "dynamictreesphc:peppercorn" : <dynamictreesphc:peppercornseed>,
    "dynamictreesphc:almond" : <dynamictreesphc:almondseed>,
    "dynamictreesphc:gooseberry" : <dynamictreesphc:gooseberryseed>,
    "dynamictreesphc:peach" : <dynamictreesphc:peachseed>,
    "dynamictreesphc:chestnut" : <dynamictreesphc:chestnutseed>,
    "dynamictreesphc:pawpaw" : <dynamictreesphc:pawpawseed>,
    "dynamictreesphc:coconut" : <dynamictreesphc:coconutseed>,
    "dynamictreesphc:mango" : <dynamictreesphc:mangoseed>,
    "dynamictreesphc:apricot" : <dynamictreesphc:apricotseed>,
    "dynamictreesphc:orange" : <dynamictreesphc:orangeseed>,
    "dynamictreesphc:walnut" : <dynamictreesphc:walnutseed>,
    "dynamictreesphc:lychee" : <dynamictreesphc:lycheeseed>,
    "dynamictreesphc:persimmon" : <dynamictreesphc:persimmonseed>,
    "dynamictreesphc:guava" : <dynamictreesphc:guavaseed>,
    "dynamictreesphc:breadfruit" : <dynamictreesphc:breadfruitseed>,
    "dynamictreesphc:nutmeg" : <dynamictreesphc:nutmegseed>,
    "dynamictreesphc:durian" : <dynamictreesphc:durianseed>,
    "dynamictreesphc:tamarind" : <dynamictreesphc:tamarindseed>,
    "dynamictreesphc:passionfruit" : <dynamictreesphc:passionfruitseed>,
    "dynamictreesphc:cinnamon" : <dynamictreesphc:cinnamonseed>,
    "dynamictreesphc:maple" : <dynamictreesphc:mapleseed>,
    "dynamictreesphc:paperbark" : <dynamictreesphc:paperbarkseed>,
    "dynamictreesphc:date" : <dynamictreesphc:dateseed>,
    "dynamictreesphc:dragonfruit" : <dynamictreesphc:dragonfruitseed>,
    "dynamictreesdefiledlands:tenebra" : <dynamictreesdefiledlands:tenebraseed>,
    "dynamictreesquark:blossoming" : <dynamictreesquark:blossomingseed>,
    "dynamictreesquark:swampoak" : <dynamictreesquark:swampoakseed>,
    "dynamictreestheaether:skyroot" : <dynamictreestheaether:skyrootseed>,
    "dynamictreestheaether:goldenoak" : <dynamictreestheaether:goldenoakseed>,
    "dynamictreestheaether:crystal" : <dynamictreestheaether:crystalseed>,
    "dynamictreestheaether:holiday" : <dynamictreestheaether:holidayseed>,
    "dynamictreesttf:sicklytwilightoak" : <dynamictreesttf:sicklytwilightoakseed>,
    "dynamictreesttf:robusttwilightoak" : <dynamictreesttf:robusttwilightoakseed>,
    "dynamictreesttf:canopy" : <dynamictreesttf:canopyseed>,
    "dynamictreesttf:mangrove" : <dynamictreesttf:mangroveseed>,
    "dynamictreesttf:darkwood" : <dynamictreesttf:darkwoodseed>,
    "dynamictreesttf:treeoftime" : <dynamictreesttf:treeoftimeseed>,
    "dynamictreesttf:treeoftransformation" : <dynamictreesttf:treeoftransformationseed>,
    "dynamictreesttf:minerstree" : <dynamictreesttf:minerstreeseed>,
    "dynamictreesttf:sortingtree" : <dynamictreesttf:sortingtreeseed>,
    "dynamictreesttf:rainbowoak" : <dynamictreesttf:rainbowoakseed>,
    "rustic:olive" : <rustic:oliveseed>,
    "rustic:ironwood" : <rustic:ironwoodseed>
} as IIngredient[string];

for targetTree, seed in transformationTargets{
  Condenser.addRecipe(<dynamictrees:dendropotion:6>.withTag({target:targetTree}), [seed], null, <dynamictrees:dendropotion:6>, null);
}