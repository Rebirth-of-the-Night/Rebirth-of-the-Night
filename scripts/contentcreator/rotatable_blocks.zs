#loader preinit
import contentcreator.block.Block;
import contentcreator.block.GenericBlock;
import crafttweaker.block.IMaterial as Mat;
import crafttweaker.world.IFacing;
import mods.contenttweaker.BlockMaterial;
import contentcreator.block.functions.IStateForPlacement;
import crafttweaker.block.IBlockState;

//Horizontal: IMaterial, name

val rock = Mat.rock();
val metal = Mat.iron();
val north = IFacing.north();
val east = IFacing.east();
val south = IFacing.south();
val west = IFacing.west();

Block.setFacing("facing");
val dwarven_resonator = Block.create(metal, "dwarven_resonator");
dwarven_resonator.setLightValue(14);
dwarven_resonator.setNonOpaque();
dwarven_resonator.setSubItem();

Block.setFacing("facing", north, east, south, west);
val wolf_statue = Block.create(rock, "wolf_statue");
wolf_statue.setNonOpaque();
wolf_statue.setSubItem();
//wolf_statue.setStateForPlacement(function(world, pos, facing, hitX, hitY, hitZ, meta, player) {
//var iblockstate as IBlockState = super.getStateForPlacement(world, pos, facing, hitX, hitY, hitZ, meta, player);
//iblockstate = iblockstate.withProperty("facing", player.getHorizontalFacing());
//return iblockstate;

var rough_raktan = GenericBlock.createPillar(rock, "rough_raktan");
rough_raktan.setHarvestLevel("pickaxe", 1);
rough_raktan.setStrength(2.5, 1.0);
rough_raktan.register();

var raktan_pillar = GenericBlock.createPillar(rock, "raktan_pillar");
raktan_pillar.setHarvestLevel("pickaxe", 1);
raktan_pillar.setStrength(2.5, 1.0);
raktan_pillar.register();

var gilded_raktan_pillar = GenericBlock.createPillar(rock, "gilded_raktan_pillar");
gilded_raktan_pillar.setHarvestLevel("pickaxe", 1);
gilded_raktan_pillar.setStrength(2.5, 1.0);
gilded_raktan_pillar.register();
