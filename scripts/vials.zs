import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

recipes.remove(<vials:vial_288>);
recipes.addShapedMirrored(<vials:vial_288>, [
    [null, <ore:slimeball>],
    [<ore:paneGlass>, null]
]);

recipes.remove(<vials:vial_432>);
recipes.addShapeless("bottle_to_measure>",<minecraft:glass_bottle>, 
	[<vials:vial_432>]);
recipes.addShapeless("measure_to_bottle>",<vials:vial_432>, 
	[<minecraft:glass_bottle>]);
	
recipes.remove(<vials:vial_576>);
recipes.addShapeless("bottles_to_measure>",<minecraft:glass_bottle>*2, 
	[<vials:vial_576>]);
recipes.addShapeless("measure_to_bottles>",<vials:vial_576>, 
	[<minecraft:glass_bottle>,<minecraft:glass_bottle>]);