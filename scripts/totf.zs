#loader crafttweaker reloadable

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockDefinition;
import mods.jei.JEI;

recipes.addShapeless("plaque",<totf:plaque>,[<ore:genericMetalNuggets>, <minecraft:sign>]);
recipes.addShaped("telescope", <totf:telescope>, [
    [<earthworks:item_timber>, <ore:ingotBrass>, <contenttweaker:magicked_lens>],
    [null, <ore:gearBrass>, null],
    [<earthworks:item_timber>, null, <earthworks:item_timber>]
]);
