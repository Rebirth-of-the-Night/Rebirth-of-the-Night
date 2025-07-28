import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

JEI.removeAndHide(<simplewoodenpipes:pump>);
recipes.remove(<simplewoodenpipes:pipe>.withTag({BaseBlock: {id: "minecraft:wooden_planks", Count: 1}}));

mods.jei.JEI.addItem(<simplewoodenpipes:pipe>.withTag({BaseBlock: {id: "simpleores:copper_block", Count: 1}}));
recipes.addShaped("copper_pipe",<simplewoodenpipes:pipe>.withTag({BaseBlock: {id: "simpleores:copper_block", Count: 1}})*10,[
	[<simpleores:copper_ingot>,<simpleores:copper_ingot>,<simpleores:copper_ingot>],
	[null,null,null],
	[<simpleores:copper_ingot>,<simpleores:copper_ingot>,<simpleores:copper_ingot>]
]);

mods.jei.JEI.addItem(<simplewoodenpipes:pipe>.withTag({BaseBlock: {id: "dungeontactics:steel_block", Count: 1}}));
recipes.addShaped("steel_pipe",<simplewoodenpipes:pipe>.withTag({BaseBlock: {id: "dungeontactics:steel_block", Count: 1}})*10,[
	[<dungeontactics:steel_ingot>,<dungeontactics:steel_ingot>,<dungeontactics:steel_ingot>],
	[<contenttweaker:material_part:32>,<contenttweaker:material_part:32>,<contenttweaker:material_part:32>],
	[<dungeontactics:steel_ingot>,<dungeontactics:steel_ingot>,<dungeontactics:steel_ingot>]
]);

mods.jei.JEI.addItem(<simplewoodenpipes:pipe>.withTag({BaseBlock: {id: "pyrotech:refractory_brick_block", Count: 1}}));
recipes.addShaped("refractory_pipe",<simplewoodenpipes:pipe>.withTag({BaseBlock: {id: "pyrotech:refractory_brick_block", Count: 1}})*10,[
	[<pyrotech:material:5>,<pyrotech:material:5>,<pyrotech:material:5>],
	[<pyrotech:material:4>,<pyrotech:material:4>,<pyrotech:material:4>],
	[<pyrotech:material:5>,<pyrotech:material:5>,<pyrotech:material:5>]
]);

mods.jei.JEI.addItem(<simplewoodenpipes:pipe>.withTag({BaseBlock: {id: "contenttweaker:raw_wrought_iron", Count: 1}}));
recipes.addShaped("wrought_pipe",<simplewoodenpipes:pipe>.withTag({BaseBlock: {id: "contenttweaker:raw_wrought_iron", Count: 1}})*10,[
	[<contenttweaker:material_part:49>,<contenttweaker:material_part:49>,<contenttweaker:material_part:49>],
	[<contenttweaker:material_part:32>,<contenttweaker:material_part:32>,<contenttweaker:material_part:32>],
	[<contenttweaker:material_part:49>,<contenttweaker:material_part:49>,<contenttweaker:material_part:49>]
]);

mods.jei.JEI.addItem(<simplewoodenpipes:pipe>.withTag({BaseBlock: {id: "betterwithmods:steel_block", Count: 1}}));
recipes.addShaped("sfs_pipe",<simplewoodenpipes:pipe>.withTag({BaseBlock: {id: "betterwithmods:steel_block", Count: 1}})*10,[
	[<betterwithmods:material:14>,<betterwithmods:material:14>,<betterwithmods:material:14>],
	[null,null,null],
	[<betterwithmods:material:14>,<betterwithmods:material:14>,<betterwithmods:material:14>]
]);