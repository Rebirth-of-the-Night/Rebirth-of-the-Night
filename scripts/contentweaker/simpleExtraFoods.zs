#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Block;

import mods.contenttweaker.AxisAlignedBB;
//ITEMS
var rat = VanillaFactory.createItemFood("ratatouille", 26);
rat.setSaturation(15.5);
rat.setCreativeTab(<creativetab:food>);
rat.register();

val sprinkles = VanillaFactory.createItem("sprinkles");
sprinkles.setCreativeTab(<creativetab:food>);
sprinkles.register();

val raw_fries = VanillaFactory.createItemFood("raw_fries", 1);
raw_fries.setSaturation(2.5);
raw_fries.setCreativeTab(<creativetab:food>);
raw_fries.register();

val ground_beef = VanillaFactory.createItemFood("ground_beef", 2);
ground_beef.setSaturation(2.5);
ground_beef.setCreativeTab(<creativetab:food>);
ground_beef.register();

val wiener = VanillaFactory.createItemFood("wiener", 1);
wiener.setSaturation(0.5);
wiener.setCreativeTab(<creativetab:food>);
wiener.register();

val grin_kale_leaf = VanillaFactory.createItemFood("grin_kale_leaf", 1);
grin_kale_leaf.setSaturation(0.5);
grin_kale_leaf.setCreativeTab(<creativetab:food>);
grin_kale_leaf.register();

val sheep_intestines = VanillaFactory.createItemFood("sheep_intestines", 1);
sheep_intestines.setSaturation(0.5);
sheep_intestines.setCreativeTab(<creativetab:food>);
sheep_intestines.register();

val patty = VanillaFactory.createItem("patty");
patty.setCreativeTab(<creativetab:food>);
patty.register();

val hydraco = VanillaFactory.createItemFood("hydraco", 24);
hydraco.setSaturation(44.0);
hydraco.setCreativeTab(<creativetab:food>);
hydraco.register();

val abyss_pizza_item = VanillaFactory.createItemFood("abyss_pizza", 32);
abyss_pizza_item.setSaturation(36.0);
abyss_pizza_item.setCreativeTab(<creativetab:food>);
abyss_pizza_item.register();

val dairy_free_cheese_slice = VanillaFactory.createItemFood("dairy_free_cheese_slice", 3);
dairy_free_cheese_slice.setSaturation(2.5);
dairy_free_cheese_slice.setCreativeTab(<creativetab:food>);
dairy_free_cheese_slice.register();

val edible_creephae = VanillaFactory.createItemFood("edible_creephae", 1);
edible_creephae.setSaturation(0.5);
edible_creephae.setCreativeTab(<creativetab:food>);
edible_creephae.register();

val stock = VanillaFactory.createItemFood("stock", 1);
stock.setSaturation(0.5);
stock.setCreativeTab(<creativetab:food>);
stock.register();

//BLOCKS
//Yeast flour
var yeast_flour = VanillaFactory.createBlock("yeast_flour", <blockmaterial:Cloth>);
yeast_flour.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
yeast_flour.setFullBlock(false);
yeast_flour.setLightOpacity(0);
yeast_flour.setBlockLayer("TRANSLUCENT");
yeast_flour.setCreativeTab(<creativetab:food>);
yeast_flour.setBlockSoundType(<soundtype:cloth>);
yeast_flour.setBlockHardness(1.0);
yeast_flour.setToolClass("shovel");
yeast_flour.dropHandler = function(drops, world, pos, state, fortune) {
	drops.clear();
};
yeast_flour.onRandomTick = function(world, pos, state) {
	if ((world.getWorldTime() % 20) == 0) {
		world.setBlockState(<block:contenttweaker:yeast>, pos);
	}
};
yeast_flour.register();

//Yeast
var yeast = VanillaFactory.createBlock("yeast", <blockmaterial:Cloth>);
yeast.axisAlignedBB = AxisAlignedBB.create(
	4.0 / 16.0,
	0.0 / 16.0,
	1.0 / 16.0,
	12.0 / 16.0,
	6.0 / 16.0,
	15.0 / 16.0
);
yeast.setFullBlock(false);
yeast.setLightOpacity(0);
yeast.setBlockLayer("TRANSLUCENT");
yeast.setCreativeTab(<creativetab:food>);
yeast.setBlockSoundType(<soundtype:cloth>);
yeast.setBlockHardness(1.0);
yeast.setToolClass("shovel");
yeast.dropHandler = function(drops, world, pos, state, fortune) {
	drops.clear();
};
yeast.register();

//Plain Pizza
var plain_pizza_block = VanillaFactory.createBlock("plain_pizza_block", <blockmaterial:Cloth>);
plain_pizza_block.axisAlignedBB = AxisAlignedBB.create(
	2.0 / 16.0,
	0.0 / 16.0,
	2.0 / 16.0,
	14.0 / 16.0,
	1.0 / 16.0,
	14.0 / 16.0
);
plain_pizza_block.setFullBlock(false);
plain_pizza_block.setLightOpacity(0);
plain_pizza_block.setBlockLayer("TRANSLUCENT");
plain_pizza_block.setCreativeTab(<creativetab:food>);
plain_pizza_block.setBlockSoundType(<soundtype:cloth>);
plain_pizza_block.setBlockHardness(1.0);
plain_pizza_block.setToolClass("shovel");
plain_pizza_block.register();

//Chicken Pizza
var chicken_pizza_block = VanillaFactory.createBlock("chicken_pizza_block", <blockmaterial:Cloth>);
chicken_pizza_block.axisAlignedBB = AxisAlignedBB.create(
	2.0 / 16.0,
	0.0 / 16.0,
	2.0 / 16.0,
	14.0 / 16.0,
	1.0 / 16.0,
	14.0 / 16.0
);
chicken_pizza_block.setFullBlock(false);
chicken_pizza_block.setLightOpacity(0);
chicken_pizza_block.setBlockLayer("TRANSLUCENT");
chicken_pizza_block.setCreativeTab(<creativetab:food>);
chicken_pizza_block.setBlockSoundType(<soundtype:cloth>);
chicken_pizza_block.setBlockHardness(1.0);
chicken_pizza_block.setToolClass("shovel");
chicken_pizza_block.register();

//Abyss Pizza
var abyss_pizza_block = VanillaFactory.createBlock("abyss_pizza_block", <blockmaterial:Cloth>);
abyss_pizza_block.axisAlignedBB = AxisAlignedBB.create(
	2.0 / 16.0,
	0.0 / 16.0,
	2.0 / 16.0,
	14.0 / 16.0,
	1.0 / 16.0,
	14.0 / 16.0
);
abyss_pizza_block.setFullBlock(false);
abyss_pizza_block.setLightOpacity(0);
abyss_pizza_block.setBlockLayer("TRANSLUCENT");
abyss_pizza_block.setCreativeTab(<creativetab:food>);
abyss_pizza_block.setBlockSoundType(<soundtype:cloth>);
abyss_pizza_block.setBlockHardness(1.0);
abyss_pizza_block.setToolClass("shovel");
abyss_pizza_block.register();