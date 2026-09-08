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










///////////////////////////////////////////////

// Function Syntax:
//
// registerPost(name as string, hardness as float, tool as string, material as BlockMaterial, sound as SoundType, drop as IItemStack);
// example: registerPost("stick", 0.5, "axe", <blockmaterial:Wood>, <soundtype:wood>, <item:minecraft:stick>);
//
// registerArch(name as string, hardness as float, resistance as float, tool as string, material as BlockMaterial, sound as SoundType)
// example: registerArch("brick_red_granite", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>)




//registerPost

registerPost("stick", 0.5, "axe", <blockmaterial:Wood>, <soundtype:wood>, <item:minecraft:stick>);
registerPost("bone", 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>, <item:minecraft:bone>);
registerPost("mythril", 5.0, "pickaxe", <blockmaterial:Iron>, <soundtype:metal>, <item:minecraft:diamond>);

//registerArch

registerArch("brick_red_granite", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_black_granite", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_rhyolite", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_andesite", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_gabbro", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_basalt", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_komatiite", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_dacite", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_gneiss", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_eclogite", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_marble", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_quartzite", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_blue_schist", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_green_schist", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_soapstone", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_migmatite", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_magicked", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_serpentinite", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_limestone", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_chalk", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_shale", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_siltstone", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_lignite", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_dolomite", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_greywacke", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_chert", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_sandstone", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_red_sandstone", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_white_sandstone", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_red_granite_sandstone", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_soul_sandstone", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_clay", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_masonry", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_mud", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_holystone", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_carved_stone", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_angelic_stone", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_hellfire_stone", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);
registerArch("brick_pirani", 5.0, 2.0, "pickaxe", <blockmaterial:Rock>, <soundtype:stone>);