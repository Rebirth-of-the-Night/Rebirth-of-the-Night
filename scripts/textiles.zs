#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


val bolt_canvas = <textiles:spindle:17>;
val spindle = <textiles:spindle>;
val spindle_white = <textiles:spindle:1>;
val spindle_orange = <textiles:spindle:2>;
val spindle_magenta = <textiles:spindle:3>;
val spindle_light_blue = <textiles:spindle:4>;
val spindle_yellow = <textiles:spindle:5>;
val spindle_lime = <textiles:spindle:6>;
val spindle_pink = <textiles:spindle:7>;
val spindle_gray = <textiles:spindle:8>;
val spindle_light_gray = <textiles:spindle:9>;
val spindle_cyan = <textiles:spindle:10>;
val spindle_purple = <textiles:spindle:11>;
val spindle_blue = <textiles:spindle:12>;
val spindle_brown = <textiles:spindle:13>;
val spindle_green = <textiles:spindle:14>;
val spindle_red = <textiles:spindle:15>;
val spindle_black = <textiles:spindle:16>;
val white = <minecraft:wool>;
val orange = <minecraft:wool:1>;
val magenta = <minecraft:wool:2>;
val light_blue = <minecraft:wool:3>;
val yellow = <minecraft:wool:4>;
val lime = <minecraft:wool:5>;
val pink = <minecraft:wool:6>;
val gray = <minecraft:wool:7>;
val light_gray = <minecraft:wool:8>;
val cyan = <minecraft:wool:9>;
val purple = <minecraft:wool:10>;
val blue = <minecraft:wool:11>;
val brown = <minecraft:wool:12>;
val green = <minecraft:wool:13>;
val red = <minecraft:wool:14>;
val black = <minecraft:wool:15>;

val durableFabric = <ore:durableFabric>;
val canvas = <betterwithmods:material:4>;
val cushion = <textiles:cushion>;
val durableFiber = <ore:durableFiber>;
val sack = <textiles:sack>;
val burlap = <textiles:material:13>;

JEI.removeAndHide(<textiles:material>);
JEI.removeAndHide(<textiles:material:10>);
JEI.removeAndHide(<textiles:material:11>);
JEI.removeAndHide(<textiles:material:12>);
recipes.removeByRecipeName("textiles:sack");
recipes.removeByRecipeName("textiles:spindle");
recipes.removeByRecipeName("textiles:spindle_white");
recipes.removeByRecipeName("textiles:spindle_orange");
recipes.removeByRecipeName("textiles:spindle_magenta");
recipes.removeByRecipeName("textiles:spindle_light_blue");
recipes.removeByRecipeName("textiles:spindle_yellow");
recipes.removeByRecipeName("textiles:spindle_lime");
recipes.removeByRecipeName("textiles:spindle_pink");
recipes.removeByRecipeName("textiles:spindle_gray");
recipes.removeByRecipeName("textiles:spindle_light_gray");
recipes.removeByRecipeName("textiles:spindle_cyan");
recipes.removeByRecipeName("textiles:spindle_purple");
recipes.removeByRecipeName("textiles:spindle_blue");
recipes.removeByRecipeName("textiles:spindle_brown");
recipes.removeByRecipeName("textiles:spindle_green");
recipes.removeByRecipeName("textiles:spindle_red");
recipes.removeByRecipeName("textiles:spindle_black");

//canvas implementation
recipes.addShaped("bolt_canvas", bolt_canvas*1, [
    [canvas,canvas,canvas],
    [canvas, <ore:stickWood>, canvas],
    [canvas,canvas,canvas]
]);
recipes.addShapeless("bolt_canvas_return", canvas*8, [
    bolt_canvas
]);

recipes.addShaped("canvas_cushion", cushion, [
    [bolt_canvas,bolt_canvas,bolt_canvas],
    [durableFiber, <textiles:feather_block>|<pyrotech:thatch>|<minecraft:hay_block>, durableFiber],
    [bolt_canvas,bolt_canvas,bolt_canvas]
]);

recipes.addShaped("sack", sack, [
    [null,durableFabric,null],
    [durableFabric, durableFiber, durableFabric],
    [durableFabric,durableFabric,durableFabric]
]);

//bolt rebalance
recipes.addShaped("spindle", spindle, [
    [burlap,burlap,burlap],
    [burlap, <ore:stickWood>, burlap],
    [burlap,burlap,burlap]
]);
recipes.addShapeless("bolt_canvas_return", burlap*8, [
    spindle
]);

recipes.addShaped("spindle_white", spindle_white, [
    [white,white,white],
    [white, <ore:stickWood>, white],
    [white,white,white]
]);
recipes.addShapeless("spindle_white_return", white*8, [
    spindle_white
]);

recipes.addShaped("spindle_orange", spindle_orange, [
    [orange,orange,orange],
    [orange, <ore:stickWood>, orange],
    [orange,orange,orange]
]);
recipes.addShapeless("spindle_orange_return", orange*8, [
    spindle_orange
]);

recipes.addShaped("spindle_magenta", spindle_magenta, [
    [magenta,magenta,magenta],
    [magenta, <ore:stickWood>, magenta],
    [magenta,magenta,magenta]
]);
recipes.addShapeless("spindle_magenta_return", magenta*8, [
    spindle_magenta
]);

recipes.addShaped("spindle_light_blue", spindle_light_blue, [
    [light_blue,light_blue,light_blue],
    [light_blue, <ore:stickWood>, light_blue],
    [light_blue,light_blue,light_blue]
]);
recipes.addShapeless("spindle_light_blue_return", light_blue*8, [
    spindle_light_blue
]);

recipes.addShaped("spindle_yellow", spindle_yellow, [
    [yellow,yellow,yellow],
    [yellow, <ore:stickWood>, yellow],
    [yellow,yellow,yellow]
]);
recipes.addShapeless("spindle_yellow_return", yellow*8, [
    spindle_yellow
]);

recipes.addShaped("spindle_lime", spindle_lime, [
    [lime,lime,lime],
    [lime, <ore:stickWood>, lime],
    [lime,lime,lime]
]);
recipes.addShapeless("spindle_lime_return", lime*8, [
    spindle_lime
]);

recipes.addShaped("spindle_pink", spindle_pink, [
    [pink,pink,pink],
    [pink, <ore:stickWood>, pink],
    [pink,pink,pink]
]);
recipes.addShapeless("spindle_pink_return", pink*8, [
    spindle_pink
]);

recipes.addShaped("spindle_gray", spindle_gray, [
    [gray,gray,gray],
    [gray, <ore:stickWood>, gray],
    [gray,gray,gray]
]);
recipes.addShapeless("spindle_gray_return", gray*8, [
    spindle_gray
]);

recipes.addShaped("spindle_light_gray", spindle_light_gray, [
    [light_gray,light_gray,light_gray],
    [light_gray, <ore:stickWood>, light_gray],
    [light_gray,light_gray,light_gray]
]);
recipes.addShapeless("spindle_light_gray_return", light_gray*8, [
    spindle_light_gray
]);

recipes.addShaped("spindle_cyan", spindle_cyan, [
    [cyan,cyan,cyan],
    [cyan, <ore:stickWood>, cyan],
    [cyan,cyan,cyan]
]);
recipes.addShapeless("spindle_cyan_return", cyan*8, [
    spindle_cyan
]);

recipes.addShaped("spindle_purple", spindle_purple, [
    [purple,purple,purple],
    [purple, <ore:stickWood>, purple],
    [purple,purple,purple]
]);
recipes.addShapeless("spindle_purple_return", purple*8, [
    spindle_purple
]);

recipes.addShaped("spindle_blue", spindle_blue, [
    [blue,blue,blue],
    [blue, <ore:stickWood>, blue],
    [blue,blue,blue]
]);
recipes.addShapeless("spindle_blue_return", blue*8, [
    spindle_blue
]);

recipes.addShaped("spindle_brown", spindle_brown, [
    [brown,brown,brown],
    [brown, <ore:stickWood>, brown],
    [brown,brown,brown]
]);
recipes.addShapeless("spindle_brown_return", brown*8, [
    spindle_brown
]);

recipes.addShaped("spindle_green", spindle_green, [
    [green,green,green],
    [green, <ore:stickWood>, green],
    [green,green,green]
]);
recipes.addShapeless("spindle_green_return", green*8, [
    spindle_green
]);

recipes.addShaped("spindle_red", spindle_red, [
    [red,red,red],
    [red, <ore:stickWood>, red],
    [red,red,red]
]);
recipes.addShapeless("spindle_red_return", red*8, [
    spindle_red
]);

recipes.addShaped("spindle_black", spindle_black, [
    [black,black,black],
    [black, <ore:stickWood>, black],
    [black,black,black]
]);
recipes.addShapeless("spindle_black_return", black*8, [
    spindle_black
]);