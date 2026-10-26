import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val twine = <ore:twine>;
val leather = <ore:leather>;
val cloth = <ore:durableFabric>;

// Uncolored bundle
recipes.remove(<bundles:bundle>);
recipes.addShaped("bundle_pouch", <bundles:bundle>,
    [[null,twine,null],
    [null,cloth,null],
    [null,leather,null]]);

/* val bundlePouch = <ore:bundlePouch>;
bundlePouch.addItems([<bundles:bundle>,<bundles:bundle>.withTag({Color: 0}),<bundles:bundle>.withTag({Color: -1}),<bundles:bundle>.withTag({Color: -2}),<bundles:bundle>.withTag({Color: -3}),<bundles:bundle>.withTag({Color: -4}),<bundles:bundle>.withTag({Color: -5}),<bundles:bundle>.withTag({Color: -6}),<bundles:bundle>.withTag({Color: -7}),<bundles:bundle>.withTag({Color: -8}),<bundles:bundle>.withTag({Color: -9}),<bundles:bundle>.withTag({Color: -10}),<bundles:bundle>.withTag({Color: -11}),<bundles:bundle>.withTag({Color: -12}),<bundles:bundle>.withTag({Color: -13}),<bundles:bundle>.withTag({Color: -14}),<bundles:bundle>.withTag({Color: -15})]);


recipes.addShapeless("black_bundle_pouch", <bundles:bundle>.withTag({Color: 0}), [<bundles:bundle>.withTag({}), <ore:dyeBlack>]);
recipes.addShapeless("red_bundle_pouch", <bundles:bundle>.withTag({Color: -1}), [<bundles:bundle>.withTag({}), <ore:dyeRed>]);
recipes.addShapeless("green_bundle_pouch", <bundles:bundle>.withTag({Color: -2}), [<bundles:bundle>.withTag({}), <ore:dyeGreen>]);
recipes.addShapeless("brown_bundle_pouch", <bundles:bundle>.withTag({Color: -3}), [<bundles:bundle>.withTag({}), <ore:dyeBrown>]);
recipes.addShapeless("blue_bundle_pouch", <bundles:bundle>.withTag({Color: -4}), [<bundles:bundle>.withTag({}), <ore:dyeBlue>]);
recipes.addShapeless("purple_bundle_pouch", <bundles:bundle>.withTag({Color: -5}), [<bundles:bundle>.withTag({}), <ore:dyePurple>]);
recipes.addShapeless("cyan_bundle_pouch", <bundles:bundle>.withTag({Color: -6}), [<bundles:bundle>.withTag({}), <ore:dyeCyan>]);
recipes.addShapeless("lightgray_bundle_pouch", <bundles:bundle>.withTag({Color: -7}), [<bundles:bundle>.withTag({}), <ore:dyeLightGray>]);
recipes.addShapeless("gray_bundle_pouch", <bundles:bundle>.withTag({Color: -8}), [<bundles:bundle>.withTag({}), <ore:dyeGray>]);
recipes.addShapeless("pink_bundle_pouch", <bundles:bundle>.withTag({Color: -9}), [<bundles:bundle>.withTag({}), <ore:dyePink>]);
recipes.addShapeless("lime_bundle_pouch", <bundles:bundle>.withTag({Color: -10}), [<bundles:bundle>.withTag({}), <ore:dyeLime>]);
recipes.addShapeless("yellow_bundle_pouch", <bundles:bundle>.withTag({Color: -11}), [<bundles:bundle>.withTag({}), <ore:dyeYellow>]);
recipes.addShapeless("lightblue_bundle_pouch", <bundles:bundle>.withTag({Color: -12}), [<bundles:bundle>.withTag({}), <ore:dyeLightBlue>]);
recipes.addShapeless("magenta_bundle_pouch", <bundles:bundle>.withTag({Color: -13}), [<bundles:bundle>.withTag({}), <ore:dyeMagenta>]);
recipes.addShapeless("orange_bundle_pouch", <bundles:bundle>.withTag({Color: -14}), [<bundles:bundle>.withTag({}), <ore:dyeOrange>]);
recipes.addShapeless("white_bundle_pouch", <bundles:bundle>.withTag({Color: -15}), [<bundles:bundle>.withTag({}), <ore:dyeWhite>]);
 */

// Remove dye from bundle
recipes.addShapeless("clean_bundle_pouch", <bundles:bundle>, [<bundles:bundle:*>, <ore:soap>]);

// bags for specific items
val bagNails = <contenttweaker:bag_nails>;
val bagNails1 = <contenttweaker:bag_nails:2047>;
val bagCoins = <contenttweaker:bag_coins>;
val bagCoins1 = <contenttweaker:bag_coins:9998>;
val coins1 = <contenttweaker:coint1>;
val coins2 = <contenttweaker:coint2>;
val coins3 = <contenttweaker:coint3>;
val coins4 = <contenttweaker:coint4>;
val coins5 = <contenttweaker:nethercoin>;

recipes.addShapeless("bundle_bag_nails", bagNails1, [<bundles:bundle>.withTag({}), <minetraps:nails>]);
recipes.addShapeless("bundle_bag_coins", bagCoins1, [<bundles:bundle>.withTag({}), coins1]);
recipes.remove(<rats:rat_sack>);
recipes.addShapeless("bundle_bag_rats", <rats:rat_sack>, [<bundles:bundle>.withTag({}), <rats:cheese>]);

//we start normal, by writing the output
recipes.addShapeless("bag_nails_fill",bagNails,

//followed by the input array. One change though - we mark the bag, so we can use it in the function later
[bagNails.anyDamage().marked("mark"),<minetraps:nails>],

//now we start declaring the function.
//It needs 3 parameters, one for the output, one for the inputs and one for crafting info.
//We'll only need the input parameter, though.
function(out, ins, cInfo){

  //now we return the bag with either 0 DMG or Current damage -10, whatever is higher. This is to prevent negative damage values.
  return ins.mark.withDamage(max(0,ins.mark.damage - 10));
},
//We don't need a recipeAction here so just set it to null
null);

recipes.addShapeless("bag_nails_fill1",bagCoins,
[bagCoins.anyDamage().marked("mark"),coins1],
function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 1));},
null);
recipes.addShapeless("bag_nails_fill2",bagCoins,
[bagCoins.anyDamage().marked("mark"),coins2],
function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 5));},
null);
recipes.addShapeless("bag_nails_fill3",bagCoins,
[bagCoins.anyDamage().marked("mark"),coins3],
function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 10));},
null);
recipes.addShapeless("bag_nails_fill4",bagCoins,
[bagCoins.anyDamage().marked("mark"),coins4],
function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},
null);
recipes.addShapeless("bag_nails_fill5",bagCoins,
[bagCoins.anyDamage().marked("mark"),coins5],
function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 60));},
null);