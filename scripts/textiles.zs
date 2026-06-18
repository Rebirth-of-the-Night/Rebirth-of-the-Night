import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


val bolt_canvas = <textiles:spindle:17>;
val durableFabric = <ore:durableFabric>;
val canvas = <betterwithmods:material:4>;
val cushion = <textiles:cushion>;
val durableFiber = <ore:durableFiber>;
val sack = <textiles:sack>;

JEI.removeAndHide(<textiles:material>);
JEI.removeAndHide(<textiles:material:10>);
JEI.removeAndHide(<textiles:material:11>);
JEI.removeAndHide(<textiles:material:12>);
recipes.removeByRecipeName("textiles:sack");

//canvas implementation
recipes.addShaped("bolt_canvas", bolt_canvas*24, [
    [canvas,canvas,canvas],
    [canvas, <ore:stickWood>, canvas],
    [canvas,canvas,canvas]
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