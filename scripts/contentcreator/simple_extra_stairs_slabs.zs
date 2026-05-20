#loader preinit
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;
////////////////////////
//////// Stairs ////////
////////////////////////
//////// String name, IBlockState block

//// Underground Biomes

/// Cobblestone

var limestone_cobblestone_stairs = GenericBlock.createStairs("limestone_cobblestone_stairs", <blockstate:minecraft:stone_stairs>);
limestone_cobblestone_stairs.setHarvestLevel("pickaxe", 0);
limestone_cobblestone_stairs.setHardness(6.75f);
limestone_cobblestone_stairs.register();

var chalk_cobblestone_stairs = GenericBlock.createStairs("chalk_cobblestone_stairs", <blockstate:minecraft:stone_stairs>);
chalk_cobblestone_stairs.setHarvestLevel("pickaxe", 0);
chalk_cobblestone_stairs.setHardness(6.75f);
chalk_cobblestone_stairs.register();

var shale_cobblestone_stairs = GenericBlock.createStairs("shale_cobblestone_stairs", <blockstate:minecraft:stone_stairs>);
shale_cobblestone_stairs.setHarvestLevel("pickaxe", 0);
shale_cobblestone_stairs.setHardness(6.75f);
shale_cobblestone_stairs.register();

var siltstone_cobblestone_stairs = GenericBlock.createStairs("siltstone_cobblestone_stairs", <blockstate:minecraft:stone_stairs>);
siltstone_cobblestone_stairs.setHarvestLevel("pickaxe", 0);
siltstone_cobblestone_stairs.setHardness(6.75f);
siltstone_cobblestone_stairs.register();

var dolomite_cobblestone_stairs = GenericBlock.createStairs("dolomite_cobblestone_stairs", <blockstate:minecraft:stone_stairs>);
dolomite_cobblestone_stairs.setHarvestLevel("pickaxe", 0);
dolomite_cobblestone_stairs.setHardness(6.75f);
dolomite_cobblestone_stairs.register();

var greywacke_cobblestone_stairs = GenericBlock.createStairs("greywacke_cobblestone_stairs", <blockstate:minecraft:stone_stairs>);
greywacke_cobblestone_stairs.setHarvestLevel("pickaxe", 0);
greywacke_cobblestone_stairs.setHardness(6.75f);
greywacke_cobblestone_stairs.register();

var chert_cobblestone_stairs = GenericBlock.createStairs("chert_cobblestone_stairs", <blockstate:minecraft:stone_stairs>);
chert_cobblestone_stairs.setHarvestLevel("pickaxe", 0);
chert_cobblestone_stairs.setHardness(6.75f);
chert_cobblestone_stairs.register();

/// Brick

var limestone_brick_stairs = GenericBlock.createStairs("limestone_brick_stairs", <blockstate:minecraft:stone_stairs>);
limestone_brick_stairs.setHarvestLevel("pickaxe", 1);
limestone_brick_stairs.setHardness(13.5f);
limestone_brick_stairs.register();

var chalk_brick_stairs = GenericBlock.createStairs("chalk_brick_stairs", <blockstate:minecraft:stone_stairs>);
chalk_brick_stairs.setHarvestLevel("pickaxe", 1);
chalk_brick_stairs.setHardness(13.5f);
chalk_brick_stairs.register();

var shale_brick_stairs = GenericBlock.createStairs("shale_brick_stairs", <blockstate:minecraft:stone_stairs>);
shale_brick_stairs.setHarvestLevel("pickaxe", 1);
shale_brick_stairs.setHardness(13.5f);
shale_brick_stairs.register();

var siltstone_brick_stairs = GenericBlock.createStairs("siltstone_brick_stairs", <blockstate:minecraft:stone_stairs>);
siltstone_brick_stairs.setHarvestLevel("pickaxe", 1);
siltstone_brick_stairs.setHardness(13.5f);
siltstone_brick_stairs.register();

var dolomite_brick_stairs = GenericBlock.createStairs("dolomite_brick_stairs", <blockstate:minecraft:stone_stairs>);
dolomite_brick_stairs.setHarvestLevel("pickaxe", 1);
dolomite_brick_stairs.setHardness(13.5f);
dolomite_brick_stairs.register();

var greywacke_brick_stairs = GenericBlock.createStairs("greywacke_brick_stairs", <blockstate:minecraft:stone_stairs>);
greywacke_brick_stairs.setHarvestLevel("pickaxe", 1);
greywacke_brick_stairs.setHardness(13.5f);
greywacke_brick_stairs.register();

var chert_brick_stairs = GenericBlock.createStairs("chert_brick_stairs", <blockstate:minecraft:stone_stairs>);
chert_brick_stairs.setHarvestLevel("pickaxe", 1);
chert_brick_stairs.setHardness(13.5f);
chert_brick_stairs.register();

//// Content Tweaker
// Blendrein
GenericBlock.createStairs("blendrein_stairs", <blockstate:minecraft:stone_stairs>).register();
// Coade
GenericBlock.createStairs("coade_stone_polished_stairs", <blockstate:minecraft:stone_stairs>).register();
// Corrugated Ferrought
GenericBlock.createStairs("ferrought_corrugated_stairs", <blockstate:minecraft:stone_stairs>).register();
// Electrum Stairs
GenericBlock.createStairs("electrum_stairs", <blockstate:minecraft:stone_stairs>).register();
// Ferrought Plate
GenericBlock.createStairs("ferrought_plate_stairs", <blockstate:minecraft:stone_stairs>).register();
// Sandstone
GenericBlock.createStairs("white_sandstone_brick_stairs", <blockstate:minecraft:stone_stairs>).register();
GenericBlock.createStairs("red_granite_sandstone_brick_stairs", <blockstate:minecraft:stone_stairs>).register();

///////////////////////
//////// Slabs ////////
///////////////////////
//////// IMaterial, string

val rock = Mat.rock();
val iron = Mat.iron();

//// Underground Biomes

/// Cobblestone

var limestone_cobblestone_slab = GenericBlock.createSlab(rock, "limestone_cobblestone_slab");
limestone_cobblestone_slab.setHarvestLevel("pickaxe", 0);
limestone_cobblestone_slab.setHardness(4.5f);
limestone_cobblestone_slab.register();

var chalk_cobblestone_slab = GenericBlock.createSlab(rock, "chalk_cobblestone_slab");
chalk_cobblestone_slab.setHarvestLevel("pickaxe", 0);
chalk_cobblestone_slab.setHardness(4.5f);
chalk_cobblestone_slab.register();

var shale_cobblestone_slab = GenericBlock.createSlab(rock, "shale_cobblestone_slab");
shale_cobblestone_slab.setHarvestLevel("pickaxe", 0);
shale_cobblestone_slab.setHardness(4.5f);
shale_cobblestone_slab.register();

var siltstone_cobblestone_slab = GenericBlock.createSlab(rock, "siltstone_cobblestone_slab");
siltstone_cobblestone_slab.setHarvestLevel("pickaxe", 0);
siltstone_cobblestone_slab.setHardness(4.5f);
siltstone_cobblestone_slab.register();

var dolomite_cobblestone_slab = GenericBlock.createSlab(rock, "dolomite_cobblestone_slab");
dolomite_cobblestone_slab.setHarvestLevel("pickaxe", 0);
dolomite_cobblestone_slab.setHardness(4.5f);
dolomite_cobblestone_slab.register();

var greywacke_cobblestone_slab = GenericBlock.createSlab(rock, "greywacke_cobblestone_slab");
greywacke_cobblestone_slab.setHarvestLevel("pickaxe", 0);
greywacke_cobblestone_slab.setHardness(4.5f);
greywacke_cobblestone_slab.register();

var chert_cobblestone_slab = GenericBlock.createSlab(rock, "chert_cobblestone_slab");
chert_cobblestone_slab.setHarvestLevel("pickaxe", 0);
chert_cobblestone_slab.setHardness(4.5f);
chert_cobblestone_slab.register();

/// Brick

var limestone_brick_slab = GenericBlock.createSlab(rock, "limestone_brick_slab");
limestone_brick_slab.setHarvestLevel("pickaxe", 1);
limestone_brick_slab.setHardness(9.0f);
limestone_brick_slab.register();

var chalk_brick_slab = GenericBlock.createSlab(rock, "chalk_brick_slab");
chalk_brick_slab.setHarvestLevel("pickaxe", 1);
chalk_brick_slab.setHardness(9.0f);
chalk_brick_slab.register();

var shale_brick_slab = GenericBlock.createSlab(rock, "shale_brick_slab");
shale_brick_slab.setHarvestLevel("pickaxe", 1);
shale_brick_slab.setHardness(9.0f);
shale_brick_slab.register();

var siltstone_brick_slab = GenericBlock.createSlab(rock, "siltstone_brick_slab");
siltstone_brick_slab.setHarvestLevel("pickaxe", 1);
siltstone_brick_slab.setHardness(9.0f);
siltstone_brick_slab.register();

var dolomite_brick_slab = GenericBlock.createSlab(rock, "dolomite_brick_slab");
dolomite_brick_slab.setHarvestLevel("pickaxe", 1);
dolomite_brick_slab.setHardness(9.0f);
dolomite_brick_slab.register();

var greywacke_brick_slab = GenericBlock.createSlab(rock, "greywacke_brick_slab");
greywacke_brick_slab.setHarvestLevel("pickaxe", 1);
greywacke_brick_slab.setHardness(9.0f);
greywacke_brick_slab.register();

var chert_brick_slab = GenericBlock.createSlab(rock, "chert_brick_slab");
chert_brick_slab.setHarvestLevel("pickaxe", 1);
chert_brick_slab.setHardness(9.0f);
chert_brick_slab.register();

//// Content Tweaker
// Blendrein
GenericBlock.createSlab(rock, "blendrein_slab").register();
// Coade
GenericBlock.createSlab(rock, "coade_stone_polished_slab").register();
GenericBlock.createSlab(rock, "coade_stone_ornate_slab").register();
// Corrugated Ferrought
GenericBlock.createSlab(iron, "ferrought_corrugated_slab").register();
// Electrum
GenericBlock.createSlab(iron, "electrum_slab").register();
// Ferrought Plate
GenericBlock.createSlab(iron, "ferrought_plate_slab").register();
// Sandstone
GenericBlock.createSlab(rock, "white_sandstone_brick_slab").register();
GenericBlock.createSlab(rock, "red_granite_sandstone_brick_slab").register();