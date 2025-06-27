import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val twine = <ore:twine>;
val leather = <ore:leather>;
val cloth = <ore:fabricHemp>;

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

// Remove dye from bundle
recipes.addShapeless("clean_bundle_pouch", <bundles:bundle>, [bundlePouch, <betterwithaddons:decomat>]); */