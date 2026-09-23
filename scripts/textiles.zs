#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val bolt_canvas = <textiles:spindle:17>;
val spindle = <textiles:spindle>;
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

recipes.remove(<textiles:spindle:*>);

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
recipes.addShapeless("bolt_burlap_return", burlap*8, [
    spindle
]);

val colors = ["", "white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"] as string[];

for i in 1 .. 17 {
val wool = itemUtils.getItem("minecraft:wool", i - 1);
recipes.addShaped("spindle_"+colors[i], itemUtils.getItem("textiles:spindle", i), [
    [wool,wool,wool],
    [wool, <ore:stickWood>, wool],
    [wool,wool,wool]
]);
recipes.addShapeless("spindle_"+colors[i]+"return", wool*8, [
    itemUtils.getItem("textiles:spindle", i)
]);

}