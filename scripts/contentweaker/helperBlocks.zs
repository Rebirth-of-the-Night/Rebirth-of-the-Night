#loader contenttweaker 

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.Item;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;
import mods.contenttweaker.Color;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemFoodEaten;
import mods.zenutils.cotx.DirectionalBlock;
import mods.zenutils.cotx.IPlacementFacingFunction;
import mods.jei.JEI;
import mods.contenttweaker.World;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.BlockState;

//
//File intended to store block registry helper functions, their uses, and their recipes.
//

val curtainArray = ["white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black", "trans", "checkered", "eye", "peak", "royal", "patterned", "beige", "cloud"] as string[];

for curtain in curtainArray {

var curtain = VanillaFactory.createDirectionalBlock("curtain_"+curtain, <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain.setBlockHardness(2.0);
curtain.setBlockResistance(1.0);
curtain.setPassable(true);
curtain.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain.setToolClass("axe");
curtain.setFullBlock(false);
curtain.setLightOpacity(0);
curtain.setLightValue(0);
curtain.setBlockSoundType(<soundtype:wood>);
curtain.setBlockLayer("CUTOUT_MIPPED");
curtain.register();
}

function registerPost(name as string, hardness as float, tool as string, material as BlockMaterial, sound as SoundType, drop as IItemStack) {

var post = VanillaFactory.createDirectionalBlock(name+"_post", material, "ALL", false, false);
post.placementFacingFunction = IPlacementFacingFunction.side();
post.setBlockHardness(hardness);
post.setToolClass(tool);
post.setFullBlock(false);
post.setLightOpacity(0);
post.setLightValue(0);
post.setBlockSoundType(sound);
post.setBlockLayer("CUTOUT_MIPPED");
post.axisAlignedBB = AxisAlignedBB.create(
     7.0 / 16.0,
     7.0 / 16.0,
     16.0 / 16.0,
	9.0 / 16.0,
    9.0 / 16.0,
    0.0 / 16.0
	);
post.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(drop);
    return;
});
post.register();

var post_cross = VanillaFactory.createDirectionalBlock(name+"_cross", material, "ALL", false, false);
post_cross.placementFacingFunction = IPlacementFacingFunction.side();
post_cross.setBlockHardness(hardness);
post_cross.setToolClass(tool);
post_cross.setFullBlock(false);
post_cross.setLightOpacity(0);
post_cross.setLightValue(0);
post_cross.setBlockSoundType(sound);
post_cross.setBlockLayer("CUTOUT_MIPPED");
post_cross.axisAlignedBB = AxisAlignedBB.create(
    0.0 / 16.0,
    0.0 / 16.0,
    9.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    7.0 / 16.0
	);
post_cross.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(drop);
    drops.add(drop);
    return;
});
post_cross.register();

var post_brace = VanillaFactory.createBlock(name+"_brace", material);
post_brace.setBlockHardness(hardness);
post_brace.setToolClass(tool);
post_brace.setFullBlock(false);
post_brace.setLightOpacity(0);
post_brace.setLightValue(0);
post_brace.setBlockSoundType(sound);
post_brace.setBlockLayer("CUTOUT_MIPPED");
post_brace.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(drop);
    drops.add(drop);
    drops.add(drop);
    return;
});
post_brace.register();
}

function registerArch(name as string, hardness as float, resistance as float, tool as string, material as BlockMaterial, sound as SoundType) {
    
    var arch = VanillaFactory.createDirectionalBlock("arch_"+name, material, "HORIZONTAL", true, true);
arch.setBlockHardness(hardness);
arch.setBlockResistance(resistance);
arch.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch.setToolClass(tool);
arch.setBlockSoundType(sound);
arch.setFullBlock(false);
arch.setLightOpacity(0);
arch.setLightValue(0);
arch.setBlockLayer("CUTOUT");
arch.register();

var large_arch = VanillaFactory.createDirectionalBlock("arch_large_"+name, material, "HORIZONTAL", true, true);
large_arch.setBlockHardness(hardness);
large_arch.setBlockResistance(resistance);
large_arch.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
large_arch.setToolClass(tool);
large_arch.setBlockSoundType(sound);
large_arch.setFullBlock(false);
large_arch.setLightOpacity(0);
large_arch.setLightValue(0);
large_arch.setBlockLayer("CUTOUT");
large_arch.register();
}

function registerSconce(name as string, material as BlockMaterial, hardness as float, resistance as float, tool as string, sound as SoundType, large as bool, arch as bool) {

    var sconce = VanillaFactory.createDirectionalBlock(name+"_sconce", material, "HORIZONTAL", true, false);
sconce.placementFacingFunction = IPlacementFacingFunction.side();
sconce.setBlockHardness(hardness);
sconce.setBlockResistance(resistance);
sconce.axisAlignedBB = AxisAlignedBB.create(
     6.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	10.0 / 16.0,
    16.0 / 16.0,
    6.0 / 16.0
	);
sconce.setToolClass(tool);
sconce.setFullBlock(false);
sconce.setLightOpacity(0);
sconce.setLightValue(0);
sconce.setBlockSoundType(sound);
sconce.setBlockLayer("CUTOUT_MIPPED");
sconce.register();

if(large == true) {
    var large_sconce = VanillaFactory.createDirectionalBlock("large_"+name+"_sconce", material, "HORIZONTAL", true, false);
large_sconce.placementFacingFunction = IPlacementFacingFunction.side();
large_sconce.setBlockHardness(hardness);
large_sconce.setBlockResistance(resistance);
large_sconce.axisAlignedBB = AxisAlignedBB.create(
     6.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	10.0 / 16.0,
    16.0 / 16.0,
    6.0 / 16.0
	);
large_sconce.setToolClass(tool);
large_sconce.setFullBlock(false);
large_sconce.setLightOpacity(0);
large_sconce.setLightValue(0);
large_sconce.setBlockSoundType(sound);
large_sconce.setBlockLayer("CUTOUT_MIPPED");
large_sconce.register();
}

if(arch==true) {
    var sconce_arch = VanillaFactory.createDirectionalBlock(name+"_sconce_arch", material, "HORIZONTAL", true, false);
sconce_arch.placementFacingFunction = IPlacementFacingFunction.side();
sconce_arch.setBlockHardness(hardness);
sconce_arch.setBlockResistance(resistance);
sconce_arch.axisAlignedBB = AxisAlignedBB.create(
     6.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	10.0 / 16.0,
    16.0 / 16.0,
    0.0 / 16.0
	);
sconce_arch.setToolClass(tool);
sconce_arch.setFullBlock(false);
sconce_arch.setLightOpacity(0);
sconce_arch.setLightValue(0);
sconce_arch.setBlockSoundType(sound);
sconce_arch.setBlockLayer("CUTOUT_MIPPED");
sconce_arch.register();
}
}

//function registerBarrier(name as string) {
//
    //var barrier_base = VanillaFactory.createBlock(name+"_barrier_base", <blockmaterial:Iron>);
//barrier_base.axisAlignedBB = AxisAlignedBB.create(
     //5.0 / 16.0,
     //0.0 / 16.0,
     //5.0 / 16.0,
	//11.0 / 16.0,
    //16.0 / 16.0,
    //11.0 / 16.0
	//);
//barrier_base.setBlockHardness(3);
//barrier_base.setBlockSoundType(<soundtype:metal>);
//barrier_base.setFullBlock(false);
//barrier_base.setLightOpacity(0.5);
//barrier_base.setToolClass("pickaxe");
//barrier_base.onBlockPlace = function(world, blockPos, blockState) {
    //if(world.getBlockState(blockPos.getOffset('up', 1)) == <block:minecraft:air>)
	//{
	    //world.setBlockState(blockState.getBlock("contenttweaker:"+name+"_barrier_top"), blockPos.getOffset('up', 1));
	//}
//};
//barrier_base.onBlockBreak = function(world, blockPos, blockState) {
    //if(world.getBlockState(blockPos.getOffset('up', 1)) == blockState.getBlockState("contenttweaker:"+name+"_barrier_top"))
	//{
	    //world.setBlockState(<block:minecraft:air>, blockPos.getOffset('up', 1));
	//}
//};
//barrier_base.register();
//
//var barrier_top = VanillaFactory.createBlock(name+"_barrier_top", <blockmaterial:Iron>);
//barrier_top.axisAlignedBB = AxisAlignedBB.create(
     //5.0 / 16.0,
     //0.0 / 16.0,
     //5.0 / 16.0,
	//11.0 / 16.0,
    //7.0 / 16.0,
    //11.0 / 16.0
	//);
//barrier_top.setBlockHardness(3);
//barrier_top.setBlockSoundType(<soundtype:metal>);
//barrier_top.setFullBlock(false);
//barrier_top.setLightOpacity(0.5);
//barrier_top.setBlockLayer("CUTOUT_MIPPED");
//barrier_top.setToolClass("pickaxe");
//barrier_top.onBlockPlace = function(world, blockPos, blockState) {
    //if(world.getBlockState(blockPos.getOffset('down', 1)) == <block:minecraft:air>)
	//{
	    //world.setBlockState(blockState.getBlock("contenttweaker:"+name+"_barrier_base"), blockPos.getOffset('down', 1));
	//}
//};
//barrier_top.onBlockBreak = function(world, blockPos, blockState) {
    //if(world.getBlockState(blockPos.getOffset('down', 1)) == blockState.getBlockState("contenttweaker:"+name+"_barrier_base"))
	//{
	    //world.destroyBlock(blockPos.getOffset('down', 1), true);
	//}
//};
//barrier_top.setDropHandler(function(drops, world, position, state, fortune) {
    //drops.clear();
    //return;
//});
//barrier_top.register();
//
//var barrier_ribbon = VanillaFactory.createDirectionalBlock(name+"_barrier_ribbon", <blockmaterial:Cloth>, "HORIZONTAL", false, true);
//barrier_ribbon.axisAlignedBB = AxisAlignedBB.create(
     //7.0 / 16.0,
     //-3.0 / 16.0,
     //-8.0 / 16.0,
	//8.0 / 16.0,
    //6.0 / 16.0,
    //24.0 / 16.0
	//);
//barrier_ribbon.setBlockHardness(0.3);
//barrier_ribbon.setBlockSoundType(<soundtype:cloth>);
//barrier_ribbon.setFullBlock(false);
//barrier_ribbon.setLightOpacity(0.5);
//barrier_ribbon.setBlockLayer("CUTOUT_MIPPED");
//barrier_ribbon.setDropHandler(function(drops, world, position, state, fortune) {
    //drops.clear();
    //return;
//});
//barrier_ribbon.register();
//
//}











///////////////////////////////////////////////

// Function Syntax:
//
// registerPost(name as string, hardness as float, tool as string, material as BlockMaterial, sound as SoundType, drop as IItemStack);
// example: registerPost("stick", 0.5, "axe", <blockmaterial:Wood>, <soundtype:wood>, <item:minecraft:stick>);
//
// registerArch(name as string, hardness as float, resistance as float, tool as string, material as BlockMaterial, sound as SoundType)
// example: registerArch("brick_red_granite", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
//
// registerSconce(name as string, material as BlockMaterial, hardness as float, resistance as float, tool as string, sound as SoundType, large as boolean, arch as boolean)
// example: registerSconce("cincinnasite", <blockmaterial:Iron>, 1.0, 2.0, "pickaxe", <soundtype:metal>, true, true);  P.S. the booleans at the end of the function defines whether or not to generate a large variant and an arch variant of the sconce alongside the small one.
//
// DOES NOT CURRENTLY WORK! registerBarrier(name as string)
// example: registerBarrier("fleshweave");




//registerPost

registerPost("stick", 0.5, "axe", <blockmaterial:Wood>, <soundtype:wood>, <item:minecraft:stick>);
registerPost("bone", 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>, <item:minecraft:bone>);
registerPost("mythril", 5.0, "pickaxe", <blockmaterial:Iron>, <soundtype:metal>, <item:simpleores:mythril_rod>);

//registerArch

registerArch("brick_red_granite", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_black_granite", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_rhyolite", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_andesite", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_gabbro", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_basalt", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_komatiite", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_dacite", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_gneiss", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_eclogite", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_marble", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_quartzite", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_blue_schist", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_green_schist", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_soapstone", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_migmatite", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_magicked", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_serpentinite", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_limestone", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_chalk", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_shale", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_siltstone", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_lignite", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_dolomite", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_greywacke", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_chert", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_sandstone", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_red_sandstone", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_white_sandstone", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_red_granite_sandstone", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_soul_sandstone", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_clay", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_masonry", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_mud", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_holystone", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_carved_stone", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_angelic_stone", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_hellfire_stone", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_pirani", 18, 1.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);

//registerSconce

registerSconce("cincinnasite", <blockmaterial:Iron>, 1.0, 2.0, "pickaxe", <soundtype:metal>, true, true);
registerSconce("raktan", <blockmaterial:Rock>, 1.0, 2.0, "pickaxe", <soundtype:stone>, true, false);

//registerBarrier

//registerBarrier("fleshweave");
//registerBarrier("steel");

