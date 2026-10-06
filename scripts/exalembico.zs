import crafttweaker.item.IItemStack;
import mods.exalembico.ExAlembico;
import mods.exalembico.Alembic;
import mods.exalembico.Heater;

//Define ingredients
val thistle = <rustic:wind_thistle>;
val fasthaw = <cyclicmagic:horse_upgrade_speed>;
val jumphaw = <cyclicmagic:horse_upgrade_jump>;
val healthhaw = <cyclicmagic:horse_upgrade_health>;
val ironBerry = <rustic:ironberries>;
val genericNugg = <ore:genericMetalNuggets>;
val goldNugg = <minecraft:gold_nugget>;
val slime = <ore:slimeball>;
val niter = <betterwithmods:material:26>;
val mallow = <rustic:marsh_mallow>;
val cloudsbluff = <rustic:cloudsbluff>;
val cloudgold = <aether_legacy:aercloud:2>;
val cloudblue = <aether_legacy:aercloud:1>;
val cloudwhite = <aether_legacy:aercloud:0>;
val cohosh = <rustic:cohosh>;
val honeycomb = <rustic:honeycomb>;
val chamomile = <rustic:chamomile>;
val bloodorchid = <rustic:blood_orchid>;
val horsetail = <rustic:horsetail>;
val fourclover = <contenttweaker:4leaf_clover>;
val core = <rustic:core_root>;
val ginseng = <rustic:ginseng>;
val spirits = <betterwithaddons:ancestry_bottle>;
val fleshblockR = <charm:rotten_flesh_block>;
val tarblock = <pyrotech:living_tar>;
val tear = <minecraft:ghast_tear>;
val petal = <aether_legacy:aechor_petal>;
val ironW = <contenttweaker:material_part:49>;
val aloe = <rustic:aloe_vera>;
val blazepowder = <minecraft:blaze_powder>;
val cincinnasite = <betternether:cincinnasite>;
val deathstalk = <rustic:deathstalk_mushroom>;
val bronzefeather = <iceandfire:stymphalian_bird_feather>;
val bottle = <minecraft:glass_bottle>;
val cocaine = <iceandfire:pixie_dust>;
val virdust = <contenttweaker:material_part:23>;
val metdust = <nyx:meteor_dust>;
val steeldust = <contenttweaker:material_part:27>;
val zanitegem = <aether_legacy:zanite_gemstone>;
val mooncap = <rustic:mooncap_mushroom>;
val paralex = <contenttweaker:parity_peridot>;
val nethercoin = <contenttweaker:nethercoin>;
val flesh = <biomesoplenty:flesh>;
val plaguehide = <mod_lavacow:pigboarhide>;
val voidflame = <contenttweaker:void_block>;
val angel = <endreborn:item_angel_feather>;
val viridea = <contenttweaker:viridea>;
val voidseen = <contenttweaker:voidseen_exorite>;
val ampfeather = <iceandfire:amphithere_feather>;
val bloodeye = <netherex:wither_bone>;
val soulurn = <betterwithmods:urn:8>;
val earthruby = <contenttweaker:earthen_ruby>;
val heart = <scalinghealth:heartcontainer>;
val biotite = <quark:biotite>;
val scab = <contenttweaker:scab>;
val stomach = <ore:materialStomach>;
val suntouched = <contenttweaker:suntouched_diamond>;
val starblock = <contenttweaker:star_block>;
val redstone = <minecraft:redstone>;
val vis = <contenttweaker:vis_shard>;
val allium = <minecraft:red_flower:2>;
val firetears = <twilightforest:fiery_tears>;
val firedcin = <contenttweaker:flashfired_cincinnasite>;
val artificialNature = <contenttweaker:artificial_nature>;
val alexandrite = <biomesoplenty:gem:2>;
val sapphire = <biomesoplenty:gem:6>;
val groundRrack = <betterwithmods:material:15>;
val groundFiery = <contenttweaker:ground_fiery_netherrack>;
val nethCoal = <betterwithmods:material:1>;
val nethCoalBlock = <betterwithmods:aesthetic:13>;
val flowerPot = <minecraft:flower_pot>;
val refractoryMaterial = <pyrotech:material:4>;
val genericMetal = <ore:genericMetal>;
val shadeSpeck = <da:dark_mana>;
val nightShard = <contenttweaker:shard_of_night>;
val garsenShard = <da:knight_shard>;
val glassShard = <ore:shardGlass>;
val goort = <da:volatile_orb>;

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

recipes.addShaped("heater1", <exalembico:heater>, 
[[<betterwithaddons:wrought_bars>, <behgameon:accessory_17>, <betterwithaddons:wrought_bars>], 
[<betterwithaddons:wrought_bars>, <betterwithmods:material:27>, <betterwithaddons:wrought_bars>], 
[null, <aether_legacy:dungeon_block:5>, null]]);

recipes.addShaped("alembic1", <exalembico:alembic>, 
[[refractoryMaterial, null, null], 
[flowerPot, refractoryMaterial, flowerPot],
[genericMetal, null, genericMetal]]);

ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=north,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=east,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=west,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=south,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=north,heated=false>, 0);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=east,heated=false>, 0);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=west,heated=false>, 0);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=south,heated=false>, 0);

ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth_extended_lit:facing=north>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth_extended_lit:facing=east>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth_extended_lit:facing=west>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth_extended_lit:facing=south>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth_extended:facing=north>, 0);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth_extended:facing=east>, 0);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth_extended:facing=west>, 0);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth_extended:facing=south>, 0);

ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range:facing=north,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range:facing=east,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range:facing=west,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range:facing=south,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range:facing=north,heated=false>, 0);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range:facing=east,heated=false>, 0);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range:facing=west,heated=false>, 0);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range:facing=south,heated=false>, 0);

ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range_extended_lit:facing=north>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range_extended_lit:facing=east>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range_extended_lit:facing=west>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range_extended_lit:facing=south>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range_extended:facing=north>, 0);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range_extended:facing=east>, 0);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range_extended:facing=west>, 0);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:range_extended:facing=south>, 0);

ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=0,variant=normal>,0,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=1,variant=normal>,0,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=2,variant=normal>,0,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=3,variant=normal>,0,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=4,variant=normal>,0,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=5,variant=normal>,0,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=6,variant=normal>,0,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=7,variant=normal>,0,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=8,variant=normal>,0,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=0,variant=lit>,1,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=1,variant=lit>,1,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=2,variant=lit>,1,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=3,variant=lit>,1,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=4,variant=lit>,1,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=5,variant=lit>,1,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=6,variant=lit>,1,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=7,variant=lit>,1,true);
ExAlembico.registerHeatSourceBlock(<blockstate:pyrotech:campfire:ash=8,variant=lit>,1,true);

Heater.addHeaterRecipe(<minecraft:coal>, 1600, 1, 2); //coal, most basic for alchemy
Heater.addHeaterRecipe(<minecraft:coal_block>, 16000, 1, 2); //coal, most basic for alchemy
Heater.addHeaterRecipe(<minecraft:coal:1>, 800, 1, 2); //charcoal, fast burning renewable
Heater.addHeaterRecipe(<pyrotech:charcoal_block>, 8000, 1, 2); //charcoal block, fast burning renewable
Heater.addHeaterRecipe(<pyrotech:material:1>, 800, 1, 2, 3); //coke, most important base fuel
Heater.addHeaterRecipe(<pyrotech:coal_coke_block>, 8000, 1, 2, 3); //coke block, most important base fuel
Heater.addHeaterRecipe(<contenttweaker:charmpeat>, 4000, 3); //pressurized fuel that always burn at 3
Heater.addHeaterRecipe(nethCoal, 1600, 1, 2, 3, 4); //nether coal most versatile fuel
Heater.addHeaterRecipe(nethCoalBlock, 16000, 1, 2, 3, 4); //nether coal block most versatile fuel
Heater.addHeaterRecipe(groundRrack, 180000, 1); //ground netherrack, two and a half hours of dim light
Heater.addHeaterRecipe(groundFiery, 180000, 1); //ground fiery netherrack, two and a half hours of dim light

/*
  .setHeatLevels(vararg heatLevels: Int)
  .setHeatLevelRange(minHeatLevel: Int, maxHeatLevel: Int)
  .setLeftInputItems(ing1: IIngredient, @Optional ing2: IIngredient?)
  .setRightOutputItem(ingredient: IIngredient)
  .setLeftInputFluid(fluid: ILiquidStack)
  .setRightInputFluid(fluid: ILiquidStack)
  .setLeftOutputItems(stack1: IItemStack, @Optional stack2: IItemStack?)
  .setRightInputItem(stack: IItemStack)
  .setLeftOutputFluid(fluid: ILiquidStack)fun setRightOutputFluid(fluid: ILiquidStack)
  .setBonusOutputItem(stack: IItemStack, @Optional(valueDouble = 1.0) odds: Float)
  .addToAlembic()
  .addToNetherAlembic()
*/

Alembic.beginAlembicRecipe(640)
  .setHeatLevels(2, 3)  
  .setLeftInputItems(<pyrotech:material:36>)
  .setLeftOutputItems(<minecraft:redstone>)
  .setLeftInputFluid(<liquid:methanol> * 25)
  .setRightInputFluid(<liquid:water> * 25)
  .setRightOutputItem(<contenttweaker:raw_gold>)
  .setBonusOutputItem(<contenttweaker:raw_gold>, 0.66)
  .addToAlembic();

Alembic.beginAlembicRecipe(640)
  .setHeatLevels(1, 2)  
  .setLeftInputItems(<da:volatile_orb>)
  .setLeftOutputItems(<minecraft:slime_ball>)
  .setRightOutputItem(<mod_lavacow:silky_sludge>)
  .setLeftInputFluid(<liquid:methanol> * 250)
  .addToAlembic();
Alembic.beginAlembicRecipe(1200)
  .setHeatLevels(1)
  .setLeftInputItems(<da:volatile_orb>, <primitivemobs:wonder_sap>)
  .setLeftOutputItems(<minecraft:slime_ball>)
  .setRightOutputItem(<betterwithmods:material:12> * 3)
  .setLeftInputFluid(<liquid:methanol> * 250)
  .addToAlembic();
  
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setLeftInputItems(<contenttweaker:moss_patch>)
  .setRightInputItem(<contenttweaker:bandage>)
  .setRightOutputItem(<contenttweaker:bandage_salve>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setLeftInputItems(<betteranimalsplus:trillium>)
  .setRightInputItem(<contenttweaker:bandage>)
  .setRightOutputItem(<contenttweaker:bandage_salve>)
  .addToAlembic();

Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setLeftInputItems(<dynamictreesbop:eucalyptusseed>)
  .setRightInputItem(<contenttweaker:bandage>)
  .setRightOutputItem(<contenttweaker:bandage_salve>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setLeftInputItems(<rustic:aloe_vera>)
  .setRightInputItem(<contenttweaker:bandage>)
  .setRightOutputItem(<contenttweaker:bandage_salve>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setLeftInputItems(<quark:glowshroom>)
  .setRightInputItem(<contenttweaker:bandage>)
  .setRightOutputItem(<contenttweaker:bandage_salve>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setLeftInputItems(<quark:root>)
  .setRightInputItem(<contenttweaker:bandage>)
  .setRightOutputItem(<contenttweaker:bandage_salve>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setLeftInputItems(<da:volatile_orb>)
  .setRightInputItem(<contenttweaker:bandage>)
  .setRightOutputItem(<contenttweaker:bandage_salve>)
  .addToAlembic();
  
//Concentrated Bioflow
Alembic.beginAlembicRecipe(200)
  .setHeatLevels(3, 4)
  .setLeftInputItems(<contenttweaker:raw_viridium>, <betterwithmods:material:4>)
  .setRightOutputFluid(<liquid:concentrated_bioflow>*250)
  .addToAlembic();

//Dread Cold
Alembic.beginAlembicRecipe(200)
  .setHeatLevels(3, 4)
  .setLeftInputItems(<contenttweaker:raw_dread_slate>)
  .setRightInputFluid(<liquid:dread_cold>*250)
  .setLeftOutputItems(<pyrotech:rock:3>)
  .addToAlembic();

//Artificial Nature  
Alembic.beginAlembicRecipe(200)
  .setHeatLevels(1)  
  .setLeftInputItems(vis, allium)
  .setLeftInputFluid(hotspring * 1000)
  .setRightInputItem(bottle)
  .setRightOutputItem(artificialNature)
  .setBonusOutputItem(vis, 0.25)
  .addToAlembic();

//Artificial Nature x3  
Alembic.beginAlembicRecipe(200)
  .setHeatLevels(2)
  .setLeftInputItems(vis, fourclover)
  .setLeftInputFluid(hotspring * 1000)
  .setRightInputItem(bottle)
  .setRightOutputItem(artificialNature*3)
  .addToAlembic();

//Fast Haw  
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(2)  
  .setLeftInputItems(horsetail, thistle)
  .setLeftInputFluid(lunarwater * 100)
  .setRightInputItem(<biomesoplenty:berries>*4)
  .setRightOutputItem(fasthaw)
  .setBonusOutputItem(fasthaw, 0.33)
  .addToAlembic();
  
//Fast Haw x8 
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(3)  
  .setLeftInputItems(horsetail, alexandrite)
  .setLeftInputFluid(lunarwater * 500)
  .setRightInputItem(<biomesoplenty:berries>*16)
  .setRightOutputItem(fasthaw*8)
  .setBonusOutputItem(fasthaw, 0.66)
  .addToAlembic();
  
//Jump Haw
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(2)  
  .setLeftInputItems(horsetail, core)
  .setLeftInputFluid(lunarwater * 100)
  .setRightInputItem(<biomesoplenty:berries>*4)
  .setRightOutputItem(jumphaw)
  .setBonusOutputItem(jumphaw, 0.33)
  .addToAlembic();
  
//Jump Haw x4 
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(3)  
  .setLeftInputItems(horsetail, sapphire)
  .setLeftInputFluid(lunarwater * 500)
  .setRightInputItem(<biomesoplenty:berries>*16)
  .setRightOutputItem(jumphaw*4)
  .setBonusOutputItem(jumphaw, 0.66)
  .addToAlembic();
  
//Health Haw
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(2)  
  .setLeftInputItems(horsetail, <scalinghealth:crystalshard>)
  .setLeftInputFluid(lunarwater * 100)
  .setRightInputItem(<biomesoplenty:berries>*4)
  .setRightOutputItem(healthhaw)
  .setBonusOutputItem(<scalinghealth:heartdust>, 0.33)
  .addToAlembic();
  
//Health Haw x16
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(4)  
  .setLeftInputItems(horsetail, heart)
  .setLeftInputFluid(<liquid:concentrated_bioflow> * 1000)
  .setRightInputItem(<biomesoplenty:berries>*32)
  .setRightOutputItem(healthhaw*16)
  .setBonusOutputItem(<scalinghealth:heartdust>, 0.66)
  .addToAlembic();

//Crownmetal Alchemy
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(4)
  .setLeftInputItems(<betterwithmods:material:21>)
  .setLeftInputFluid(<liquid:concentrated_bioflow>*250)
  .setRightInputItem(<contenttweaker:raw_tin>)
  .setRightOutputItem(garsenShard)
  .addToAlembic();
  
//Shade Alchemy
Alembic.beginAlembicRecipe(20)
  .setHeatLevels(3)
  .setLeftInputItems(shadeSpeck)
  .setRightInputItem(glassShard)
  .setRightOutputItem(nightShard)
  .addToAlembic();