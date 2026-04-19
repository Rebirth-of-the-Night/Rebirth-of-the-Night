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

Alembic.beginAlembicRecipe(640)
  .setHeatLevels(2, 3)  
  .setInputItem(<pyrotech:material:36>, <minecraft:redstone>)
  .setInputFluid(<liquid:methanol> * 25)
  .setOutputFluid(<liquid:water> * 25)
  .setOutputItem(<contenttweaker:raw_gold>)
  .setBonusOutputItem(<contenttweaker:raw_gold>, 0.66)
  .addToAlembic();

Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setInputItem(<contenttweaker:moss_patch>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setInputItem(<betteranimalsplus:trillium>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setInputItem(<dynamictreesbop:eucalyptusseed>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setInputItem(<rustic:aloe_vera>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setInputItem(<quark:glowshroom>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setInputItem(<quark:root>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
  
//Concentrated Bioflow
Alembic.beginAlembicRecipe(200)
  .setHeatLevels(3, 4)
  .setInputItem(<contenttweaker:raw_viridium>)
  .setInputItem(<betterwithmods:material:4>)
  .setOutputFluid(<liquid:concentrated_bioflow>*250)
  .addToAlembic();

//Dread Cold
Alembic.beginAlembicRecipe(200)
  .setHeatLevels(3, 4)
  .setInputItem(<contenttweaker:raw_dread_slate>, <pyrotech:rock:3>)
  .setOutputFluid(<liquid:dread_cold>*250)
  .addToAlembic();

//Artificial Nature  
Alembic.beginAlembicRecipe(200)
  .setHeatLevels(1)  
  .setInputItem(vis)
  .setInputItem(allium)
  .setInputFluid(hotspring * 1000)
  .setOutputItem(artificialNature, bottle)
  .setBonusOutputItem(vis, 0.25)
  .addToAlembic();

//Artificial Nature x3  
Alembic.beginAlembicRecipe(200)
  .setHeatLevels(2)
  .setInputItem(vis)
  .setInputItem(fourclover)
  .setInputFluid(hotspring * 1000)
  .setOutputItem(artificialNature*3, bottle)
  .addToAlembic();

//Fast Haw  
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(2)  
  .setInputItem(horsetail)
  .setInputItem(thistle)
  .setInputFluid(lunarwater * 100)
  .setOutputItem(fasthaw, <biomesoplenty:berries>*4)
  .setBonusOutputItem(fasthaw, 0.33)
  .addToAlembic();
  
//Fast Haw x8 
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(3)  
  .setInputItem(horsetail)
  .setInputItem(alexandrite)
  .setInputFluid(lunarwater * 500)
  .setOutputItem(fasthaw*8, <biomesoplenty:berries>*16)
  .setBonusOutputItem(fasthaw, 0.66)
  .addToAlembic();
  
//Jump Haw
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(2)  
  .setInputItem(horsetail)
  .setInputItem(core)
  .setInputFluid(lunarwater * 100)
  .setOutputItem(jumphaw, <biomesoplenty:berries>*4)
  .setBonusOutputItem(jumphaw, 0.33)
  .addToAlembic();
  
//Jump Haw x4 
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(3)  
  .setInputItem(horsetail)
  .setInputItem(sapphire)
  .setInputFluid(lunarwater * 500)
  .setOutputItem(jumphaw*4, <biomesoplenty:berries>*16)
  .setBonusOutputItem(jumphaw, 0.66)
  .addToAlembic();
  
//Health Haw
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(2)  
  .setInputItem(horsetail)
  .setInputItem(<scalinghealth:crystalshard>)
  .setInputFluid(lunarwater * 100)
  .setOutputItem(healthhaw, <biomesoplenty:berries>*4)
  .setBonusOutputItem(<scalinghealth:heartdust>, 0.33)
  .addToAlembic();
  
//Health Haw x16
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(4)  
  .setInputItem(horsetail)
  .setInputItem(heart)
  .setInputFluid(<liquid:concentrated_bioflow> * 1000)
  .setOutputItem(healthhaw*16, <biomesoplenty:berries>*32)
  .setBonusOutputItem(<scalinghealth:heartdust>, 0.66)
  .addToAlembic();

//Crownmetal Alchemy
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(4)
  .setInputItem(<betterwithmods:material:21>)
  .setInputFluid(<liquid:concentrated_bioflow>*250)
  .setOutputItem(<da:knight_shard>, <contenttweaker:raw_tin>)
  .addToAlembic();