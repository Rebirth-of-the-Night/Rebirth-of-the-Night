import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.Burn;

// Log Pile Oresources
val mundaneLogPile = <ore:mundaneLogPile>;
mundaneLogPile.add(
    <pyrotech:log_pile>,
    <contentcreator:spruce_log_pile:*>,
    <contentcreator:birch_log_pile:*>,
    <contentcreator:jungle_log_pile:*>,
    <contentcreator:acacia_log_pile:*>,
    <contentcreator:dark_oak_log_pile:*>,
    <contentcreator:alicio_log_pile:*>,
    <contentcreator:cherry_log_pile:*>,
    <contentcreator:umbran_log_pile:*>,
    <contentcreator:fir_log_pile:*>,
    <contentcreator:mangrove_log_pile:*>,
    <contentcreator:palm_log_pile:*>,
    <contentcreator:redwood_log_pile:*>,
    <contentcreator:willow_log_pile:*>,
    <contentcreator:pine_log_pile:*>,
    <contentcreator:hellbark_log_pile:*>,
    <contentcreator:jacaranda_log_pile:*>,
    <contentcreator:mahogany_log_pile:*>,
    <contentcreator:ebony_log_pile:*>,
    <contentcreator:dead_log_pile:*>,
    <contentcreator:olive_log_pile:*>,
    <contentcreator:skyroot_log_pile:*>,
    <contentcreator:twilight_oak_log_pile:*>,
    <contentcreator:canopy_log_pile:*>,
    <contentcreator:twilight_mangrove_log_pile:*>,
    <contentcreator:darkwood_log_pile:*>
);

//Log Pile Recipes

//Oak
recipes.addShaped("oak_log_pile", <pyrotech:log_pile>,
 [[<minecraft:log>,<minecraft:log>,<minecraft:log>],
  [<minecraft:log>,<minecraft:log>,<minecraft:log>],
  [<minecraft:log>,<minecraft:log>,<minecraft:log>]]);
recipes.addShapeless("oak_pile_to_log",<minecraft:log>*9,[<pyrotech:log_pile>]);
//Spruce
recipes.addShaped("spruce_log_pile", <contentcreator:spruce_log_pile>,
 [[<minecraft:log:1>,<minecraft:log:1>,<minecraft:log:1>],
  [<minecraft:log:1>,<minecraft:log:1>,<minecraft:log:1>],
  [<minecraft:log:1>,<minecraft:log:1>,<minecraft:log:1>]]);
recipes.addShapeless("spruce_pile_to_log",<minecraft:log:1>*9,[<contentcreator:spruce_log_pile>]);
//Birch
recipes.addShaped("birch_log_pile", <contentcreator:birch_log_pile>,
 [[<minecraft:log:2>,<minecraft:log:2>,<minecraft:log:2>],
  [<minecraft:log:2>,<minecraft:log:2>,<minecraft:log:2>],
  [<minecraft:log:2>,<minecraft:log:2>,<minecraft:log:2>]]);
recipes.addShapeless("birch_pile_to_log",<minecraft:log:2>*9,[<contentcreator:birch_log_pile>]);
//Jungle
recipes.addShaped("jungle_log_pile", <contentcreator:jungle_log_pile>,
 [[<minecraft:log:3>,<minecraft:log:3>,<minecraft:log:3>],
  [<minecraft:log:3>,<minecraft:log:3>,<minecraft:log:3>],
  [<minecraft:log:3>,<minecraft:log:3>,<minecraft:log:3>]]);
recipes.addShapeless("jungle_pile_to_log",<minecraft:log:3>*9,[<contentcreator:jungle_log_pile>]);
//Acacia
recipes.addShaped("acacia_log_pile", <contentcreator:acacia_log_pile>,
 [[<minecraft:log2>,<minecraft:log2>,<minecraft:log2>],
  [<minecraft:log2>,<minecraft:log2>,<minecraft:log2>],
  [<minecraft:log2>,<minecraft:log2>,<minecraft:log2>]]);
recipes.addShapeless("acacia_pile_to_log",<minecraft:log2>*9,[<contentcreator:acacia_log_pile>]);
//Dark Oak
recipes.addShaped("dark_oak_log_pile", <contentcreator:dark_oak_log_pile>,
 [[<minecraft:log2:1>,<minecraft:log2:1>,<minecraft:log2:1>],
  [<minecraft:log2:1>,<minecraft:log2:1>,<minecraft:log2:1>],
  [<minecraft:log2:1>,<minecraft:log2:1>,<minecraft:log2:1>]]);
recipes.addShapeless("dark_oak_pile_to_log",<minecraft:log2:1>*9,[<contentcreator:dark_oak_log_pile>]);
//Bloodwood
recipes.addShaped("bloodwood_log_pile", <contentcreator:bloodwood_log_pile>,
 [[<betterwithmods:blood_log>,<betterwithmods:blood_log>,<betterwithmods:blood_log>],
  [<betterwithmods:blood_log>,<betterwithmods:blood_log>,<betterwithmods:blood_log>],
  [<betterwithmods:blood_log>,<betterwithmods:blood_log>,<betterwithmods:blood_log>]]);
recipes.addShapeless("bloodwood_pile_to_log",<betterwithmods:blood_log>*9,[<contentcreator:bloodwood_log_pile>]);
//Alicio
recipes.addShaped("alicio_log_pile", <contentcreator:alicio_log_pile>,
 [[<betterwithaddons:log_luretree>,<betterwithaddons:log_luretree>,<betterwithaddons:log_luretree>],
  [<betterwithaddons:log_luretree>,<betterwithaddons:log_luretree>,<betterwithaddons:log_luretree>],
  [<betterwithaddons:log_luretree>,<betterwithaddons:log_luretree>,<betterwithaddons:log_luretree>]]);
recipes.addShapeless("alicio_pile_to_log",<betterwithaddons:log_luretree>*9,[<contentcreator:alicio_log_pile>]);
//Sacred Oak
recipes.addShaped("sacred_oak_log_pile", <contentcreator:sacred_oak_log_pile>,
 [[<biomesoplenty:log_0:4>,<biomesoplenty:log_0:4>,<biomesoplenty:log_0:4>],
  [<biomesoplenty:log_0:4>,<biomesoplenty:log_0:4>,<biomesoplenty:log_0:4>],
  [<biomesoplenty:log_0:4>,<biomesoplenty:log_0:4>,<biomesoplenty:log_0:4>]]);
recipes.addShapeless("sacred_oak_pile_to_log",<biomesoplenty:log_0:4>*9,[<contentcreator:sacred_oak_log_pile>]);
//Cherry
recipes.addShaped("cherry_log_pile", <contentcreator:cherry_log_pile>,
 [[<biomesoplenty:log_0:5>,<biomesoplenty:log_0:5>,<biomesoplenty:log_0:5>],
  [<biomesoplenty:log_0:5>,<biomesoplenty:log_0:5>,<biomesoplenty:log_0:5>],
  [<biomesoplenty:log_0:5>,<biomesoplenty:log_0:5>,<biomesoplenty:log_0:5>]]);
recipes.addShapeless("cherry_pile_to_log",<biomesoplenty:log_0:5>*9,[<contentcreator:cherry_log_pile>]);
//Umbran
recipes.addShaped("umbran_log_pile", <contentcreator:umbran_log_pile>,
 [[<biomesoplenty:log_0:6>,<biomesoplenty:log_0:6>,<biomesoplenty:log_0:6>],
  [<biomesoplenty:log_0:6>,<biomesoplenty:log_0:6>,<biomesoplenty:log_0:6>],
  [<biomesoplenty:log_0:6>,<biomesoplenty:log_0:6>,<biomesoplenty:log_0:6>]]);
recipes.addShapeless("umbran_pile_to_log",<biomesoplenty:log_0:6>*9,[<contentcreator:umbran_log_pile>]);
//Fir
recipes.addShaped("fir_log_pile", <contentcreator:fir_log_pile>,
 [[<biomesoplenty:log_0:7>,<biomesoplenty:log_0:7>,<biomesoplenty:log_0:7>],
  [<biomesoplenty:log_0:7>,<biomesoplenty:log_0:7>,<biomesoplenty:log_0:7>],
  [<biomesoplenty:log_0:7>,<biomesoplenty:log_0:7>,<biomesoplenty:log_0:7>]]);
recipes.addShapeless("fir_pile_to_log",<biomesoplenty:log_0:7>*9,[<contentcreator:fir_log_pile>]);
//Ethereal
recipes.addShaped("ethereal_log_pile", <contentcreator:ethereal_log_pile>,
 [[<biomesoplenty:log_1:4>,<biomesoplenty:log_1:4>,<biomesoplenty:log_1:4>],
  [<biomesoplenty:log_1:4>,<biomesoplenty:log_1:4>,<biomesoplenty:log_1:4>],
  [<biomesoplenty:log_1:4>,<biomesoplenty:log_1:4>,<biomesoplenty:log_1:4>]]);
recipes.addShapeless("ethereal_pile_to_log",<biomesoplenty:log_1:4>*9,[<contentcreator:ethereal_log_pile>]);
//Magic
recipes.addShaped("magic_log_pile", <contentcreator:magic_log_pile>,
 [[<biomesoplenty:log_1:5>,<biomesoplenty:log_1:5>,<biomesoplenty:log_1:5>],
  [<biomesoplenty:log_1:5>,<biomesoplenty:log_1:5>,<biomesoplenty:log_1:5>],
  [<biomesoplenty:log_1:5>,<biomesoplenty:log_1:5>,<biomesoplenty:log_1:5>]]);
recipes.addShapeless("magic_pile_to_log",<biomesoplenty:log_1:5>*9,[<contentcreator:magic_log_pile>]);
//Mangrove
recipes.addShaped("mangrove_log_pile", <contentcreator:mangrove_log_pile>,
 [[<biomesoplenty:log_1:6>,<biomesoplenty:log_1:6>,<biomesoplenty:log_1:6>],
  [<biomesoplenty:log_1:6>,<biomesoplenty:log_1:6>,<biomesoplenty:log_1:6>],
  [<biomesoplenty:log_1:6>,<biomesoplenty:log_1:6>,<biomesoplenty:log_1:6>]]);
recipes.addShapeless("mangrove_pile_to_log",<biomesoplenty:log_1:6>*9,[<contentcreator:mangrove_log_pile>]);
//Palm
recipes.addShaped("palm_log_pile", <contentcreator:palm_log_pile>,
 [[<biomesoplenty:log_1:7>,<biomesoplenty:log_1:7>,<biomesoplenty:log_1:7>],
  [<biomesoplenty:log_1:7>,<biomesoplenty:log_1:7>,<biomesoplenty:log_1:7>],
  [<biomesoplenty:log_1:7>,<biomesoplenty:log_1:7>,<biomesoplenty:log_1:7>]]);
recipes.addShapeless("palm_pile_to_log",<biomesoplenty:log_1:7>*9,[<contentcreator:palm_log_pile>]);
//Redwood
recipes.addShaped("redwood_log_pile", <contentcreator:redwood_log_pile>,
 [[<biomesoplenty:log_2:4>,<biomesoplenty:log_2:4>,<biomesoplenty:log_2:4>],
  [<biomesoplenty:log_2:4>,<biomesoplenty:log_2:4>,<biomesoplenty:log_2:4>],
  [<biomesoplenty:log_2:4>,<biomesoplenty:log_2:4>,<biomesoplenty:log_2:4>]]);
recipes.addShapeless("redwood_pile_to_log",<biomesoplenty:log_2:4>*9,[<contentcreator:redwood_log_pile>]);
//Willow
recipes.addShaped("willow_log_pile", <contentcreator:willow_log_pile>,
 [[<biomesoplenty:log_2:5>,<biomesoplenty:log_2:5>,<biomesoplenty:log_2:5>],
  [<biomesoplenty:log_2:5>,<biomesoplenty:log_2:5>,<biomesoplenty:log_2:5>],
  [<biomesoplenty:log_2:5>,<biomesoplenty:log_2:5>,<biomesoplenty:log_2:5>]]);
recipes.addShapeless("willow_pile_to_log",<biomesoplenty:log_2:5>*9,[<contentcreator:willow_log_pile>]);
//Pine
recipes.addShaped("pine_log_pile", <contentcreator:pine_log_pile>,
 [[<biomesoplenty:log_2:6>,<biomesoplenty:log_2:6>,<biomesoplenty:log_2:6>],
  [<biomesoplenty:log_2:6>,<biomesoplenty:log_2:6>,<biomesoplenty:log_2:6>],
  [<biomesoplenty:log_2:6>,<biomesoplenty:log_2:6>,<biomesoplenty:log_2:6>]]);
recipes.addShapeless("pine_pile_to_log",<biomesoplenty:log_2:6>*9,[<contentcreator:pine_log_pile>]);
//Hellbark
recipes.addShaped("hellbark_log_pile", <contentcreator:hellbark_log_pile>,
 [[<biomesoplenty:log_2:7>,<biomesoplenty:log_2:7>,<biomesoplenty:log_2:7>],
  [<biomesoplenty:log_2:7>,<biomesoplenty:log_2:7>,<biomesoplenty:log_2:7>],
  [<biomesoplenty:log_2:7>,<biomesoplenty:log_2:7>,<biomesoplenty:log_2:7>]]);
recipes.addShapeless("hellbark_pile_to_log",<biomesoplenty:log_2:7>*9,[<contentcreator:hellbark_log_pile>]);
//Jacaranda
recipes.addShaped("jacaranda_log_pile", <contentcreator:jacaranda_log_pile>,
 [[<biomesoplenty:log_3:4>,<biomesoplenty:log_3:4>,<biomesoplenty:log_3:4>],
  [<biomesoplenty:log_3:4>,<biomesoplenty:log_3:4>,<biomesoplenty:log_3:4>],
  [<biomesoplenty:log_3:4>,<biomesoplenty:log_3:4>,<biomesoplenty:log_3:4>]]);
recipes.addShapeless("jacaranda_pile_to_log",<biomesoplenty:log_3:4>*9,[<contentcreator:jacaranda_log_pile>]);
//Mahogany
recipes.addShaped("mahogany_log_pile", <contentcreator:mahogany_log_pile>,
 [[<biomesoplenty:log_3:5>,<biomesoplenty:log_3:5>,<biomesoplenty:log_3:5>],
  [<biomesoplenty:log_3:5>,<biomesoplenty:log_3:5>,<biomesoplenty:log_3:5>],
  [<biomesoplenty:log_3:5>,<biomesoplenty:log_3:5>,<biomesoplenty:log_3:5>]]);
recipes.addShapeless("mahogany_pile_to_log",<biomesoplenty:log_3:5>*9,[<contentcreator:mahogany_log_pile>]);
//Ebony
recipes.addShaped("ebony_log_pile", <contentcreator:ebony_log_pile>,
 [[<biomesoplenty:log_3:6>,<biomesoplenty:log_3:6>,<biomesoplenty:log_3:6>],
  [<biomesoplenty:log_3:6>,<biomesoplenty:log_3:6>,<biomesoplenty:log_3:6>],
  [<biomesoplenty:log_3:6>,<biomesoplenty:log_3:6>,<biomesoplenty:log_3:6>]]);
recipes.addShapeless("ebony_pile_to_log",<biomesoplenty:log_3:6>*9,[<contentcreator:ebony_log_pile>]);
//Eucalyptus
recipes.addShaped("eucalyptus_log_pile", <contentcreator:eucalyptus_log_pile>,
 [[<biomesoplenty:log_3:7>,<biomesoplenty:log_3:7>,<biomesoplenty:log_3:7>],
  [<biomesoplenty:log_3:7>,<biomesoplenty:log_3:7>,<biomesoplenty:log_3:7>],
  [<biomesoplenty:log_3:7>,<biomesoplenty:log_3:7>,<biomesoplenty:log_3:7>]]);
recipes.addShapeless("eucalyptus_pile_to_log",<biomesoplenty:log_3:7>*9,[<contentcreator:eucalyptus_log_pile>]);
//Dead
recipes.addShaped("dead_log_pile", <contentcreator:dead_log_pile>,
 [[<biomesoplenty:log_4:5>,<biomesoplenty:log_4:5>,<biomesoplenty:log_4:5>],
  [<biomesoplenty:log_4:5>,<biomesoplenty:log_4:5>,<biomesoplenty:log_4:5>],
  [<biomesoplenty:log_4:5>,<biomesoplenty:log_4:5>,<biomesoplenty:log_4:5>]]);
recipes.addShapeless("dead_pile_to_log",<biomesoplenty:log_4:5>*9,[<contentcreator:dead_log_pile>]);
//Tenebra
recipes.addShaped("tenebra_log_pile", <contentcreator:tenebra_log_pile>,
 [[<defiledlands:tenebra_log>,<defiledlands:tenebra_log>,<defiledlands:tenebra_log>],
  [<defiledlands:tenebra_log>,<defiledlands:tenebra_log>,<defiledlands:tenebra_log>],
  [<defiledlands:tenebra_log>,<defiledlands:tenebra_log>,<defiledlands:tenebra_log>]]);
recipes.addShapeless("tenebra_pile_to_log",<defiledlands:tenebra_log>*9,[<contentcreator:tenebra_log_pile>]);
//Olive
recipes.addShaped("olive_log_pile", <contentcreator:olive_log_pile>,
 [[<rustic:log>,<rustic:log>,<rustic:log>],
  [<rustic:log>,<rustic:log>,<rustic:log>],
  [<rustic:log>,<rustic:log>,<rustic:log>]]);
recipes.addShapeless("olive_pile_to_log",<rustic:log>*9,[<contentcreator:olive_log_pile>]);
//Ironwood
recipes.addShaped("ironwood_log_pile", <contentcreator:ironwood_log_pile>,
 [[<rustic:log:1>,<rustic:log:1>,<rustic:log:1>],
  [<rustic:log:1>,<rustic:log:1>,<rustic:log:1>],
  [<rustic:log:1>,<rustic:log:1>,<rustic:log:1>]]);
recipes.addShapeless("ironwood_pile_to_log",<rustic:log:1>*9,[<contentcreator:ironwood_log_pile>]);
//Twilight Oak
recipes.addShaped("twilight_oak_log_pile", <contentcreator:twilight_oak_log_pile>,
 [[<twilightforest:twilight_log>,<twilightforest:twilight_log>,<twilightforest:twilight_log>],
  [<twilightforest:twilight_log>,<twilightforest:twilight_log>,<twilightforest:twilight_log>],
  [<twilightforest:twilight_log>,<twilightforest:twilight_log>,<twilightforest:twilight_log>]]);
recipes.addShapeless("twilight_oak_pile_to_log",<twilightforest:twilight_log>*9,[<contentcreator:twilight_oak_log_pile>]);
//Canopy
recipes.addShaped("canopy_log_pile", <contentcreator:canopy_log_pile>,
 [[<twilightforest:twilight_log:1>,<twilightforest:twilight_log:1>,<twilightforest:twilight_log:1>],
  [<twilightforest:twilight_log:1>,<twilightforest:twilight_log:1>,<twilightforest:twilight_log:1>],
  [<twilightforest:twilight_log:1>,<twilightforest:twilight_log:1>,<twilightforest:twilight_log:1>]]);
recipes.addShapeless("canopy_pile_to_log",<twilightforest:twilight_log:1>*9,[<contentcreator:canopy_log_pile>]);
//Twilight Mangrove
recipes.addShaped("twilight_mangrove_log_pile", <contentcreator:twilight_mangrove_log_pile>,
 [[<twilightforest:twilight_log:2>,<twilightforest:twilight_log:2>,<twilightforest:twilight_log:2>],
  [<twilightforest:twilight_log:2>,<twilightforest:twilight_log:2>,<twilightforest:twilight_log:2>],
  [<twilightforest:twilight_log:2>,<twilightforest:twilight_log:2>,<twilightforest:twilight_log:2>]]);
recipes.addShapeless("twilight_mangrove_pile_to_log",<twilightforest:twilight_log:2>*9,[<contentcreator:twilight_mangrove_log_pile>]);
//Darkwood
recipes.addShaped("darkwood_log_pile", <contentcreator:darkwood_log_pile>,
 [[<twilightforest:twilight_log:3>,<twilightforest:twilight_log:3>,<twilightforest:twilight_log:3>],
  [<twilightforest:twilight_log:3>,<twilightforest:twilight_log:3>,<twilightforest:twilight_log:3>],
  [<twilightforest:twilight_log:3>,<twilightforest:twilight_log:3>,<twilightforest:twilight_log:3>]]);
recipes.addShapeless("darkwood_pile_to_log",<twilightforest:twilight_log:3>*9,[<contentcreator:darkwood_log_pile>]);
//Skyroot
recipes.addShaped("skyroot_log_pile", <contentcreator:skyroot_log_pile>,
 [[<aether_legacy:aether_log>,<aether_legacy:aether_log>,<aether_legacy:aether_log>],
  [<aether_legacy:aether_log>,<aether_legacy:aether_log>,<aether_legacy:aether_log>],
  [<aether_legacy:aether_log>,<aether_legacy:aether_log>,<aether_legacy:aether_log>]]);
recipes.addShapeless("skyroot_pile_to_log",<aether_legacy:aether_log>*9,[<contentcreator:skyroot_log_pile>]);

//Pit Burning Recipes

Burn.createBuilder("charcoal_from_spruce_log_pile", <minecraft:coal:1>*10, "contentcreator:spruce_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_birch_log_pile", <minecraft:coal:1>*10, "contentcreator:birch_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_jungle_log_pile", <minecraft:coal:1>*10, "contentcreator:jungle_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_acacia_log_pile", <minecraft:coal:1>*10, "contentcreator:acacia_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_dark_oak_log_pile", <minecraft:coal:1>*10, "contentcreator:dark_oak_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_bloodwood_log_pile", <minecraft:coal:1>*10, "contentcreator:bloodwood_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_alicio_log_pile", <minecraft:coal:1>*10, "contentcreator:alicio_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_sacred_oak_log_pile", <minecraft:coal:1>*10, "contentcreator:sacred_oak_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_cherry_log_pile", <minecraft:coal:1>*10, "contentcreator:cherry_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_umbran_log_pile", <minecraft:coal:1>*10, "contentcreator:umbran_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_fir_log_pile", <minecraft:coal:1>*10, "contentcreator:fir_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_ethereal_log_pile", <minecraft:coal:1>*10, "contentcreator:ethereal_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_magic_log_pile", <minecraft:coal:1>*10, "contentcreator:magic_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<contenttweaker:material_part:30>) // silver
    .addFailureItem(<contenttweaker:material_part:30> * 6) // silver
    .addFailureItem(<contenttweaker:material_part:30> * 9) // silver
    .addFailureItem(<contenttweaker:vis_speck> * 2) // charcoal flakes
    .addFailureItem(<contenttweaker:vis_speck> * 4) // charcoal flakes
    .addFailureItem(<contenttweaker:vis_speck> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_mangrove_log_pile", <minecraft:coal:1>*10, "contentcreator:mangrove_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_palm_log_pile", <minecraft:coal:1>*10, "contentcreator:palm_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_redwood_log_pile", <minecraft:coal:1>*10, "contentcreator:redwood_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_willow_log_pile", <minecraft:coal:1>*10, "contentcreator:willow_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_pine_log_pile", <minecraft:coal:1>*10, "contentcreator:pine_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_hellbark_log_pile", <minecraft:coal:1>*10, "contentcreator:hellbark_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_jacaranda_log_pile", <minecraft:coal:1>*10, "contentcreator:jacaranda_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_mahogany_log_pile", <minecraft:coal:1>*10, "contentcreator:mahogany_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_ebony_log_pile", <minecraft:coal:1>*10, "contentcreator:ebony_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_eucalyptus_log_pile", <minecraft:coal:1>*10, "contentcreator:eucalyptus_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_dead_log_pile", <minecraft:coal:1>*10, "contentcreator:dead_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_tenebra_log_pile", <minecraft:coal:1>*10, "contentcreator:tenebra_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_olive_log_pile", <minecraft:coal:1>*10, "contentcreator:olive_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_ironwood_log_pile", <minecraft:coal:1>*10, "contentcreator:ironwood_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<contenttweaker:material_part:28>) // iron
    .addFailureItem(<contenttweaker:material_part:28> * 6) // iron
    .addFailureItem(<contenttweaker:material_part:28> * 9) // iron
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_skyroot_log_pile", <minecraft:coal:1>*10, "contentcreator:skyroot_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_twilight_oak_log_pile", <minecraft:coal:1>*10, "contentcreator:twilight_oak_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_canopy_log_pile", <minecraft:coal:1>*10, "contentcreator:canopy_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_twilight_mangrove_log_pile", <minecraft:coal:1>*10, "contentcreator:twilight_mangrove_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("charcoal_from_darkwood_log_pile", <minecraft:coal:1>*10, "contentcreator:darkwood_log_pile:*")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 500)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
