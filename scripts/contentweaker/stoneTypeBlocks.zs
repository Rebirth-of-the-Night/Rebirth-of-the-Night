#loader contenttweaker 

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;
import mods.zenutils.cotx.DirectionalBlock;
import mods.zenutils.cotx.IPlacementFacingFunction;
import mods.jei.JEI;

//Red Granite
var arch_brick_red_granite = VanillaFactory.createDirectionalBlock("arch_brick_red_granite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_red_granite.setBlockHardness(2.0);
arch_brick_red_granite.setBlockResistance(1.0);
arch_brick_red_granite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_red_granite.setToolClass("pickaxe");
arch_brick_red_granite.setFullBlock(false);
arch_brick_red_granite.setLightOpacity(0);
arch_brick_red_granite.setLightValue(0);
arch_brick_red_granite.setBlockLayer("CUTOUT");
arch_brick_red_granite.register();

var arch_large_brick_red_granite = VanillaFactory.createDirectionalBlock("arch_large_brick_red_granite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_red_granite.setBlockHardness(2.0);
arch_large_brick_red_granite.setBlockResistance(1.0);
arch_large_brick_red_granite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_red_granite.setToolClass("pickaxe");
arch_large_brick_red_granite.setFullBlock(false);
arch_large_brick_red_granite.setLightOpacity(0);
arch_large_brick_red_granite.setLightValue(0);
arch_large_brick_red_granite.setBlockLayer("CUTOUT");
arch_large_brick_red_granite.register();

//Black Granite
var arch_brick_black_granite = VanillaFactory.createDirectionalBlock("arch_brick_black_granite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_black_granite.setBlockHardness(2.0);
arch_brick_black_granite.setBlockResistance(1.0);
arch_brick_black_granite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_black_granite.setToolClass("pickaxe");
arch_brick_black_granite.setFullBlock(false);
arch_brick_black_granite.setLightOpacity(0);
arch_brick_black_granite.setLightValue(0);
arch_brick_black_granite.setBlockLayer("CUTOUT");
arch_brick_black_granite.register();

var arch_large_brick_black_granite = VanillaFactory.createDirectionalBlock("arch_large_brick_black_granite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_black_granite.setBlockHardness(2.0);
arch_large_brick_black_granite.setBlockResistance(1.0);
arch_large_brick_black_granite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_black_granite.setToolClass("pickaxe");
arch_large_brick_black_granite.setFullBlock(false);
arch_large_brick_black_granite.setLightOpacity(0);
arch_large_brick_black_granite.setLightValue(0);
arch_large_brick_black_granite.setBlockLayer("CUTOUT");
arch_large_brick_black_granite.register();

//Rhyolite
var arch_brick_rhyolite = VanillaFactory.createDirectionalBlock("arch_brick_rhyolite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_rhyolite.setBlockHardness(2.0);
arch_brick_rhyolite.setBlockResistance(1.0);
arch_brick_rhyolite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_rhyolite.setToolClass("pickaxe");
arch_brick_rhyolite.setFullBlock(false);
arch_brick_rhyolite.setLightOpacity(0);
arch_brick_rhyolite.setLightValue(0);
arch_brick_rhyolite.setBlockLayer("CUTOUT");
arch_brick_rhyolite.register();

var arch_large_brick_rhyolite = VanillaFactory.createDirectionalBlock("arch_large_brick_rhyolite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_rhyolite.setBlockHardness(2.0);
arch_large_brick_rhyolite.setBlockResistance(1.0);
arch_large_brick_rhyolite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_rhyolite.setToolClass("pickaxe");
arch_large_brick_rhyolite.setFullBlock(false);
arch_large_brick_rhyolite.setLightOpacity(0);
arch_large_brick_rhyolite.setLightValue(0);
arch_large_brick_rhyolite.setBlockLayer("CUTOUT");
arch_large_brick_rhyolite.register();

//Andesite
var arch_brick_andesite = VanillaFactory.createDirectionalBlock("arch_brick_andesite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_andesite.setBlockHardness(2.0);
arch_brick_andesite.setBlockResistance(1.0);
arch_brick_andesite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_andesite.setToolClass("pickaxe");
arch_brick_andesite.setFullBlock(false);
arch_brick_andesite.setLightOpacity(0);
arch_brick_andesite.setLightValue(0);
arch_brick_andesite.setBlockLayer("CUTOUT");
arch_brick_andesite.register();

var arch_large_brick_andesite = VanillaFactory.createDirectionalBlock("arch_large_brick_andesite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_andesite.setBlockHardness(2.0);
arch_large_brick_andesite.setBlockResistance(1.0);
arch_large_brick_andesite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_andesite.setToolClass("pickaxe");
arch_large_brick_andesite.setFullBlock(false);
arch_large_brick_andesite.setLightOpacity(0);
arch_large_brick_andesite.setLightValue(0);
arch_large_brick_andesite.setBlockLayer("CUTOUT");
arch_large_brick_andesite.register();

//Gabbro
var arch_brick_gabbro = VanillaFactory.createDirectionalBlock("arch_brick_gabbro", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_gabbro.setBlockHardness(2.0);
arch_brick_gabbro.setBlockResistance(1.0);
arch_brick_gabbro.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_gabbro.setToolClass("pickaxe");
arch_brick_gabbro.setFullBlock(false);
arch_brick_gabbro.setLightOpacity(0);
arch_brick_gabbro.setLightValue(0);
arch_brick_gabbro.setBlockLayer("CUTOUT");
arch_brick_gabbro.register();

var arch_large_brick_gabbro = VanillaFactory.createDirectionalBlock("arch_large_brick_gabbro", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_gabbro.setBlockHardness(2.0);
arch_large_brick_gabbro.setBlockResistance(1.0);
arch_large_brick_gabbro.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_gabbro.setToolClass("pickaxe");
arch_large_brick_gabbro.setFullBlock(false);
arch_large_brick_gabbro.setLightOpacity(0);
arch_large_brick_gabbro.setLightValue(0);
arch_large_brick_gabbro.setBlockLayer("CUTOUT");
arch_large_brick_gabbro.register();

//Basalt
var arch_brick_basalt = VanillaFactory.createDirectionalBlock("arch_brick_basalt", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_basalt.setBlockHardness(2.0);
arch_brick_basalt.setBlockResistance(1.0);
arch_brick_basalt.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_basalt.setToolClass("pickaxe");
arch_brick_basalt.setFullBlock(false);
arch_brick_basalt.setLightOpacity(0);
arch_brick_basalt.setLightValue(0);
arch_brick_basalt.setBlockLayer("CUTOUT");
arch_brick_basalt.register();

var arch_large_brick_basalt = VanillaFactory.createDirectionalBlock("arch_large_brick_basalt", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_basalt.setBlockHardness(2.0);
arch_large_brick_basalt.setBlockResistance(1.0);
arch_large_brick_basalt.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_basalt.setToolClass("pickaxe");
arch_large_brick_basalt.setFullBlock(false);
arch_large_brick_basalt.setLightOpacity(0);
arch_large_brick_basalt.setLightValue(0);
arch_large_brick_basalt.setBlockLayer("CUTOUT");
arch_large_brick_basalt.register();

//Komatiite
var arch_brick_komatiite = VanillaFactory.createDirectionalBlock("arch_brick_komatiite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_komatiite.setBlockHardness(2.0);
arch_brick_komatiite.setBlockResistance(1.0);
arch_brick_komatiite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_komatiite.setToolClass("pickaxe");
arch_brick_komatiite.setFullBlock(false);
arch_brick_komatiite.setLightOpacity(0);
arch_brick_komatiite.setLightValue(0);
arch_brick_komatiite.setBlockLayer("CUTOUT");
arch_brick_komatiite.register();

var arch_large_brick_komatiite = VanillaFactory.createDirectionalBlock("arch_large_brick_komatiite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_komatiite.setBlockHardness(2.0);
arch_large_brick_komatiite.setBlockResistance(1.0);
arch_large_brick_komatiite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_komatiite.setToolClass("pickaxe");
arch_large_brick_komatiite.setFullBlock(false);
arch_large_brick_komatiite.setLightOpacity(0);
arch_large_brick_komatiite.setLightValue(0);
arch_large_brick_komatiite.setBlockLayer("CUTOUT");
arch_large_brick_komatiite.register();

//Dacite
var arch_brick_dacite = VanillaFactory.createDirectionalBlock("arch_brick_dacite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_dacite.setBlockHardness(2.0);
arch_brick_dacite.setBlockResistance(1.0);
arch_brick_dacite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_dacite.setToolClass("pickaxe");
arch_brick_dacite.setFullBlock(false);
arch_brick_dacite.setLightOpacity(0);
arch_brick_dacite.setLightValue(0);
arch_brick_dacite.setBlockLayer("CUTOUT");
arch_brick_dacite.register();

var arch_large_brick_dacite = VanillaFactory.createDirectionalBlock("arch_large_brick_dacite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_dacite.setBlockHardness(2.0);
arch_large_brick_dacite.setBlockResistance(1.0);
arch_large_brick_dacite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_dacite.setToolClass("pickaxe");
arch_large_brick_dacite.setFullBlock(false);
arch_large_brick_dacite.setLightOpacity(0);
arch_large_brick_dacite.setLightValue(0);
arch_large_brick_dacite.setBlockLayer("CUTOUT");
arch_large_brick_dacite.register();

//Gneiss
var arch_brick_gneiss = VanillaFactory.createDirectionalBlock("arch_brick_gneiss", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_gneiss.setBlockHardness(2.0);
arch_brick_gneiss.setBlockResistance(1.0);
arch_brick_gneiss.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_gneiss.setToolClass("pickaxe");
arch_brick_gneiss.setFullBlock(false);
arch_brick_gneiss.setLightOpacity(0);
arch_brick_gneiss.setLightValue(0);
arch_brick_gneiss.setBlockLayer("CUTOUT");
arch_brick_gneiss.register();

var arch_large_brick_gneiss = VanillaFactory.createDirectionalBlock("arch_large_brick_gneiss", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_gneiss.setBlockHardness(2.0);
arch_large_brick_gneiss.setBlockResistance(1.0);
arch_large_brick_gneiss.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_gneiss.setToolClass("pickaxe");
arch_large_brick_gneiss.setFullBlock(false);
arch_large_brick_gneiss.setLightOpacity(0);
arch_large_brick_gneiss.setLightValue(0);
arch_large_brick_gneiss.setBlockLayer("CUTOUT");
arch_large_brick_gneiss.register();

//Eclogite
var arch_brick_eclogite = VanillaFactory.createDirectionalBlock("arch_brick_eclogite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_eclogite.setBlockHardness(2.0);
arch_brick_eclogite.setBlockResistance(1.0);
arch_brick_eclogite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_eclogite.setToolClass("pickaxe");
arch_brick_eclogite.setFullBlock(false);
arch_brick_eclogite.setLightOpacity(0);
arch_brick_eclogite.setLightValue(0);
arch_brick_eclogite.setBlockLayer("CUTOUT");
arch_brick_eclogite.register();

var arch_large_brick_eclogite = VanillaFactory.createDirectionalBlock("arch_large_brick_eclogite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_eclogite.setBlockHardness(2.0);
arch_large_brick_eclogite.setBlockResistance(1.0);
arch_large_brick_eclogite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_eclogite.setToolClass("pickaxe");
arch_large_brick_eclogite.setFullBlock(false);
arch_large_brick_eclogite.setLightOpacity(0);
arch_large_brick_eclogite.setLightValue(0);
arch_large_brick_eclogite.setBlockLayer("CUTOUT");
arch_large_brick_eclogite.register();

//Marble
var arch_brick_marble = VanillaFactory.createDirectionalBlock("arch_brick_marble", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_marble.setBlockHardness(2.0);
arch_brick_marble.setBlockResistance(1.0);
arch_brick_marble.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_marble.setToolClass("pickaxe");
arch_brick_marble.setFullBlock(false);
arch_brick_marble.setLightOpacity(0);
arch_brick_marble.setLightValue(0);
arch_brick_marble.setBlockLayer("CUTOUT");
arch_brick_marble.register();

var arch_large_brick_marble = VanillaFactory.createDirectionalBlock("arch_large_brick_marble", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_marble.setBlockHardness(2.0);
arch_large_brick_marble.setBlockResistance(1.0);
arch_large_brick_marble.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_marble.setToolClass("pickaxe");
arch_large_brick_marble.setFullBlock(false);
arch_large_brick_marble.setLightOpacity(0);
arch_large_brick_marble.setLightValue(0);
arch_large_brick_marble.setBlockLayer("CUTOUT");
arch_large_brick_marble.register();

//Quartzite
var arch_brick_quartzite = VanillaFactory.createDirectionalBlock("arch_brick_quartzite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_quartzite.setBlockHardness(2.0);
arch_brick_quartzite.setBlockResistance(1.0);
arch_brick_quartzite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_quartzite.setToolClass("pickaxe");
arch_brick_quartzite.setFullBlock(false);
arch_brick_quartzite.setLightOpacity(0);
arch_brick_quartzite.setLightValue(0);
arch_brick_quartzite.setBlockLayer("CUTOUT");
arch_brick_quartzite.register();

var arch_large_brick_quartzite = VanillaFactory.createDirectionalBlock("arch_large_brick_quartzite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_quartzite.setBlockHardness(2.0);
arch_large_brick_quartzite.setBlockResistance(1.0);
arch_large_brick_quartzite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_quartzite.setToolClass("pickaxe");
arch_large_brick_quartzite.setFullBlock(false);
arch_large_brick_quartzite.setLightOpacity(0);
arch_large_brick_quartzite.setLightValue(0);
arch_large_brick_quartzite.setBlockLayer("CUTOUT");
arch_large_brick_quartzite.register();

//Blue Schist
var arch_brick_blue_schist = VanillaFactory.createDirectionalBlock("arch_brick_blue_schist", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_blue_schist.setBlockHardness(2.0);
arch_brick_blue_schist.setBlockResistance(1.0);
arch_brick_blue_schist.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_blue_schist.setToolClass("pickaxe");
arch_brick_blue_schist.setFullBlock(false);
arch_brick_blue_schist.setLightOpacity(0);
arch_brick_blue_schist.setLightValue(0);
arch_brick_blue_schist.setBlockLayer("CUTOUT");
arch_brick_blue_schist.register();

var arch_large_brick_blue_schist = VanillaFactory.createDirectionalBlock("arch_large_brick_blue_schist", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_blue_schist.setBlockHardness(2.0);
arch_large_brick_blue_schist.setBlockResistance(1.0);
arch_large_brick_blue_schist.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_blue_schist.setToolClass("pickaxe");
arch_large_brick_blue_schist.setFullBlock(false);
arch_large_brick_blue_schist.setLightOpacity(0);
arch_large_brick_blue_schist.setLightValue(0);
arch_large_brick_blue_schist.setBlockLayer("CUTOUT");
arch_large_brick_blue_schist.register();

//Green Schist
var arch_brick_green_schist = VanillaFactory.createDirectionalBlock("arch_brick_green_schist", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_green_schist.setBlockHardness(2.0);
arch_brick_green_schist.setBlockResistance(1.0);
arch_brick_green_schist.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_green_schist.setToolClass("pickaxe");
arch_brick_green_schist.setFullBlock(false);
arch_brick_green_schist.setLightOpacity(0);
arch_brick_green_schist.setLightValue(0);
arch_brick_green_schist.setBlockLayer("CUTOUT");
arch_brick_green_schist.register();

var arch_large_brick_green_schist = VanillaFactory.createDirectionalBlock("arch_large_brick_green_schist", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_green_schist.setBlockHardness(2.0);
arch_large_brick_green_schist.setBlockResistance(1.0);
arch_large_brick_green_schist.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_green_schist.setToolClass("pickaxe");
arch_large_brick_green_schist.setFullBlock(false);
arch_large_brick_green_schist.setLightOpacity(0);
arch_large_brick_green_schist.setLightValue(0);
arch_large_brick_green_schist.setBlockLayer("CUTOUT");
arch_large_brick_green_schist.register();

//Soapstone
var arch_brick_soapstone = VanillaFactory.createDirectionalBlock("arch_brick_soapstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_soapstone.setBlockHardness(2.0);
arch_brick_soapstone.setBlockResistance(1.0);
arch_brick_soapstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_soapstone.setToolClass("pickaxe");
arch_brick_soapstone.setFullBlock(false);
arch_brick_soapstone.setLightOpacity(0);
arch_brick_soapstone.setLightValue(0);
arch_brick_soapstone.setBlockLayer("CUTOUT");
arch_brick_soapstone.register();

var arch_large_brick_soapstone = VanillaFactory.createDirectionalBlock("arch_large_brick_soapstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_soapstone.setBlockHardness(2.0);
arch_large_brick_soapstone.setBlockResistance(1.0);
arch_large_brick_soapstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_soapstone.setToolClass("pickaxe");
arch_large_brick_soapstone.setFullBlock(false);
arch_large_brick_soapstone.setLightOpacity(0);
arch_large_brick_soapstone.setLightValue(0);
arch_large_brick_soapstone.setBlockLayer("CUTOUT");
arch_large_brick_soapstone.register();

//Migmatite
var arch_brick_migmatite = VanillaFactory.createDirectionalBlock("arch_brick_migmatite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_migmatite.setBlockHardness(2.0);
arch_brick_migmatite.setBlockResistance(1.0);
arch_brick_migmatite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_migmatite.setToolClass("pickaxe");
arch_brick_migmatite.setFullBlock(false);
arch_brick_migmatite.setLightOpacity(0);
arch_brick_migmatite.setLightValue(0);
arch_brick_migmatite.setBlockLayer("CUTOUT");
arch_brick_migmatite.register();

var arch_large_brick_migmatite = VanillaFactory.createDirectionalBlock("arch_large_brick_migmatite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_migmatite.setBlockHardness(2.0);
arch_large_brick_migmatite.setBlockResistance(1.0);
arch_large_brick_migmatite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_migmatite.setToolClass("pickaxe");
arch_large_brick_migmatite.setFullBlock(false);
arch_large_brick_migmatite.setLightOpacity(0);
arch_large_brick_migmatite.setLightValue(0);
arch_large_brick_migmatite.setBlockLayer("CUTOUT");
arch_large_brick_migmatite.register();

//Serpentinite
var arch_brick_serpentinite = VanillaFactory.createDirectionalBlock("arch_brick_serpentinite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_serpentinite.setBlockHardness(2.0);
arch_brick_serpentinite.setBlockResistance(1.0);
arch_brick_serpentinite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_serpentinite.setToolClass("pickaxe");
arch_brick_serpentinite.setFullBlock(false);
arch_brick_serpentinite.setLightOpacity(0);
arch_brick_serpentinite.setLightValue(0);
arch_brick_serpentinite.setBlockLayer("CUTOUT");
arch_brick_serpentinite.register();

var arch_large_brick_serpentinite = VanillaFactory.createDirectionalBlock("arch_large_brick_serpentinite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_serpentinite.setBlockHardness(2.0);
arch_large_brick_serpentinite.setBlockResistance(1.0);
arch_large_brick_serpentinite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_serpentinite.setToolClass("pickaxe");
arch_large_brick_serpentinite.setFullBlock(false);
arch_large_brick_serpentinite.setLightOpacity(0);
arch_large_brick_serpentinite.setLightValue(0);
arch_large_brick_serpentinite.setBlockLayer("CUTOUT");
arch_large_brick_serpentinite.register();

//Limestone
var arch_brick_limestone = VanillaFactory.createDirectionalBlock("arch_brick_limestone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_limestone.setBlockHardness(2.0);
arch_brick_limestone.setBlockResistance(1.0);
arch_brick_limestone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_limestone.setToolClass("pickaxe");
arch_brick_limestone.setFullBlock(false);
arch_brick_limestone.setLightOpacity(0);
arch_brick_limestone.setLightValue(0);
arch_brick_limestone.setBlockLayer("CUTOUT");
arch_brick_limestone.register();

var arch_large_brick_limestone = VanillaFactory.createDirectionalBlock("arch_large_brick_limestone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_limestone.setBlockHardness(2.0);
arch_large_brick_limestone.setBlockResistance(1.0);
arch_large_brick_limestone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_limestone.setToolClass("pickaxe");
arch_large_brick_limestone.setFullBlock(false);
arch_large_brick_limestone.setLightOpacity(0);
arch_large_brick_limestone.setLightValue(0);
arch_large_brick_limestone.setBlockLayer("CUTOUT");
arch_large_brick_limestone.register();

//Chalk
var arch_brick_chalk = VanillaFactory.createDirectionalBlock("arch_brick_chalk", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_chalk.setBlockHardness(2.0);
arch_brick_chalk.setBlockResistance(1.0);
arch_brick_chalk.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_chalk.setToolClass("pickaxe");
arch_brick_chalk.setFullBlock(false);
arch_brick_chalk.setLightOpacity(0);
arch_brick_chalk.setLightValue(0);
arch_brick_chalk.setBlockLayer("CUTOUT");
arch_brick_chalk.register();

var arch_large_brick_chalk = VanillaFactory.createDirectionalBlock("arch_large_brick_chalk", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_chalk.setBlockHardness(2.0);
arch_large_brick_chalk.setBlockResistance(1.0);
arch_large_brick_chalk.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_chalk.setToolClass("pickaxe");
arch_large_brick_chalk.setFullBlock(false);
arch_large_brick_chalk.setLightOpacity(0);
arch_large_brick_chalk.setLightValue(0);
arch_large_brick_chalk.setBlockLayer("CUTOUT");
arch_large_brick_chalk.register();

//Shale
var arch_brick_shale = VanillaFactory.createDirectionalBlock("arch_brick_shale", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_shale.setBlockHardness(2.0);
arch_brick_shale.setBlockResistance(1.0);
arch_brick_shale.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_shale.setToolClass("pickaxe");
arch_brick_shale.setFullBlock(false);
arch_brick_shale.setLightOpacity(0);
arch_brick_shale.setLightValue(0);
arch_brick_shale.setBlockLayer("CUTOUT");
arch_brick_shale.register();

var arch_large_brick_shale = VanillaFactory.createDirectionalBlock("arch_large_brick_shale", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_shale.setBlockHardness(2.0);
arch_large_brick_shale.setBlockResistance(1.0);
arch_large_brick_shale.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_shale.setToolClass("pickaxe");
arch_large_brick_shale.setFullBlock(false);
arch_large_brick_shale.setLightOpacity(0);
arch_large_brick_shale.setLightValue(0);
arch_large_brick_shale.setBlockLayer("CUTOUT");
arch_large_brick_shale.register();

//Siltstone
var arch_brick_siltstone = VanillaFactory.createDirectionalBlock("arch_brick_siltstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_siltstone.setBlockHardness(2.0);
arch_brick_siltstone.setBlockResistance(1.0);
arch_brick_siltstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_siltstone.setToolClass("pickaxe");
arch_brick_siltstone.setFullBlock(false);
arch_brick_siltstone.setLightOpacity(0);
arch_brick_siltstone.setLightValue(0);
arch_brick_siltstone.setBlockLayer("CUTOUT");
arch_brick_siltstone.register();

var arch_large_brick_siltstone = VanillaFactory.createDirectionalBlock("arch_large_brick_siltstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_siltstone.setBlockHardness(2.0);
arch_large_brick_siltstone.setBlockResistance(1.0);
arch_large_brick_siltstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_siltstone.setToolClass("pickaxe");
arch_large_brick_siltstone.setFullBlock(false);
arch_large_brick_siltstone.setLightOpacity(0);
arch_large_brick_siltstone.setLightValue(0);
arch_large_brick_siltstone.setBlockLayer("CUTOUT");
arch_large_brick_siltstone.register();

//Lignite
var arch_brick_lignite = VanillaFactory.createDirectionalBlock("arch_brick_lignite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_lignite.setBlockHardness(2.0);
arch_brick_lignite.setBlockResistance(1.0);
arch_brick_lignite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_lignite.setToolClass("pickaxe");
arch_brick_lignite.setFullBlock(false);
arch_brick_lignite.setLightOpacity(0);
arch_brick_lignite.setLightValue(0);
arch_brick_lignite.setBlockLayer("CUTOUT");
arch_brick_lignite.register();

var arch_large_brick_lignite = VanillaFactory.createDirectionalBlock("arch_large_brick_lignite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_lignite.setBlockHardness(2.0);
arch_large_brick_lignite.setBlockResistance(1.0);
arch_large_brick_lignite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_lignite.setToolClass("pickaxe");
arch_large_brick_lignite.setFullBlock(false);
arch_large_brick_lignite.setLightOpacity(0);
arch_large_brick_lignite.setLightValue(0);
arch_large_brick_lignite.setBlockLayer("CUTOUT");
arch_large_brick_lignite.register();

//Dolomite
var arch_brick_dolomite = VanillaFactory.createDirectionalBlock("arch_brick_dolomite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_dolomite.setBlockHardness(2.0);
arch_brick_dolomite.setBlockResistance(1.0);
arch_brick_dolomite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_dolomite.setToolClass("pickaxe");
arch_brick_dolomite.setFullBlock(false);
arch_brick_dolomite.setLightOpacity(0);
arch_brick_dolomite.setLightValue(0);
arch_brick_dolomite.setBlockLayer("CUTOUT");
arch_brick_dolomite.register();

var arch_large_brick_dolomite = VanillaFactory.createDirectionalBlock("arch_large_brick_dolomite", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_dolomite.setBlockHardness(2.0);
arch_large_brick_dolomite.setBlockResistance(1.0);
arch_large_brick_dolomite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_dolomite.setToolClass("pickaxe");
arch_large_brick_dolomite.setFullBlock(false);
arch_large_brick_dolomite.setLightOpacity(0);
arch_large_brick_dolomite.setLightValue(0);
arch_large_brick_dolomite.setBlockLayer("CUTOUT");
arch_large_brick_dolomite.register();

//Greywacke
var arch_brick_greywacke = VanillaFactory.createDirectionalBlock("arch_brick_greywacke", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_greywacke.setBlockHardness(2.0);
arch_brick_greywacke.setBlockResistance(1.0);
arch_brick_greywacke.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_greywacke.setToolClass("pickaxe");
arch_brick_greywacke.setFullBlock(false);
arch_brick_greywacke.setLightOpacity(0);
arch_brick_greywacke.setLightValue(0);
arch_brick_greywacke.setBlockLayer("CUTOUT");
arch_brick_greywacke.register();

var arch_large_brick_greywacke = VanillaFactory.createDirectionalBlock("arch_large_brick_greywacke", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_greywacke.setBlockHardness(2.0);
arch_large_brick_greywacke.setBlockResistance(1.0);
arch_large_brick_greywacke.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_greywacke.setToolClass("pickaxe");
arch_large_brick_greywacke.setFullBlock(false);
arch_large_brick_greywacke.setLightOpacity(0);
arch_large_brick_greywacke.setLightValue(0);
arch_large_brick_greywacke.setBlockLayer("CUTOUT");
arch_large_brick_greywacke.register();

//Chert
var arch_brick_chert = VanillaFactory.createDirectionalBlock("arch_brick_chert", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_chert.setBlockHardness(2.0);
arch_brick_chert.setBlockResistance(1.0);
arch_brick_chert.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_chert.setToolClass("pickaxe");
arch_brick_chert.setFullBlock(false);
arch_brick_chert.setLightOpacity(0);
arch_brick_chert.setLightValue(0);
arch_brick_chert.setBlockLayer("CUTOUT");
arch_brick_chert.register();

var arch_large_brick_chert = VanillaFactory.createDirectionalBlock("arch_large_brick_chert", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_chert.setBlockHardness(2.0);
arch_large_brick_chert.setBlockResistance(1.0);
arch_large_brick_chert.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_chert.setToolClass("pickaxe");
arch_large_brick_chert.setFullBlock(false);
arch_large_brick_chert.setLightOpacity(0);
arch_large_brick_chert.setLightValue(0);
arch_large_brick_chert.setBlockLayer("CUTOUT");
arch_large_brick_chert.register();

//Sandstone
var arch_brick_sandstone = VanillaFactory.createDirectionalBlock("arch_brick_sandstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_sandstone.setBlockHardness(2.0);
arch_brick_sandstone.setBlockResistance(1.0);
arch_brick_sandstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_sandstone.setToolClass("pickaxe");
arch_brick_sandstone.setFullBlock(false);
arch_brick_sandstone.setLightOpacity(0);
arch_brick_sandstone.setLightValue(0);
arch_brick_sandstone.setBlockLayer("CUTOUT");
arch_brick_sandstone.register();

var arch_large_brick_sandstone = VanillaFactory.createDirectionalBlock("arch_large_brick_sandstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_sandstone.setBlockHardness(2.0);
arch_large_brick_sandstone.setBlockResistance(1.0);
arch_large_brick_sandstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_sandstone.setToolClass("pickaxe");
arch_large_brick_sandstone.setFullBlock(false);
arch_large_brick_sandstone.setLightOpacity(0);
arch_large_brick_sandstone.setLightValue(0);
arch_large_brick_sandstone.setBlockLayer("CUTOUT");
arch_large_brick_sandstone.register();

//Red Sandstone
var arch_brick_red_sandstone = VanillaFactory.createDirectionalBlock("arch_brick_red_sandstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_red_sandstone.setBlockHardness(2.0);
arch_brick_red_sandstone.setBlockResistance(1.0);
arch_brick_red_sandstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_red_sandstone.setToolClass("pickaxe");
arch_brick_red_sandstone.setFullBlock(false);
arch_brick_red_sandstone.setLightOpacity(0);
arch_brick_red_sandstone.setLightValue(0);
arch_brick_red_sandstone.setBlockLayer("CUTOUT");
arch_brick_red_sandstone.register();

var arch_large_brick_red_sandstone = VanillaFactory.createDirectionalBlock("arch_large_brick_red_sandstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_red_sandstone.setBlockHardness(2.0);
arch_large_brick_red_sandstone.setBlockResistance(1.0);
arch_large_brick_red_sandstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_red_sandstone.setToolClass("pickaxe");
arch_large_brick_red_sandstone.setFullBlock(false);
arch_large_brick_red_sandstone.setLightOpacity(0);
arch_large_brick_red_sandstone.setLightValue(0);
arch_large_brick_red_sandstone.setBlockLayer("CUTOUT");
arch_large_brick_red_sandstone.register();

//White Sandstone
var arch_brick_white_sandstone = VanillaFactory.createDirectionalBlock("arch_brick_white_sandstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_white_sandstone.setBlockHardness(2.0);
arch_brick_white_sandstone.setBlockResistance(1.0);
arch_brick_white_sandstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_white_sandstone.setToolClass("pickaxe");
arch_brick_white_sandstone.setFullBlock(false);
arch_brick_white_sandstone.setLightOpacity(0);
arch_brick_white_sandstone.setLightValue(0);
arch_brick_white_sandstone.setBlockLayer("CUTOUT");
arch_brick_white_sandstone.register();

var arch_large_brick_white_sandstone = VanillaFactory.createDirectionalBlock("arch_large_brick_white_sandstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_white_sandstone.setBlockHardness(2.0);
arch_large_brick_white_sandstone.setBlockResistance(1.0);
arch_large_brick_white_sandstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_white_sandstone.setToolClass("pickaxe");
arch_large_brick_white_sandstone.setFullBlock(false);
arch_large_brick_white_sandstone.setLightOpacity(0);
arch_large_brick_white_sandstone.setLightValue(0);
arch_large_brick_white_sandstone.setBlockLayer("CUTOUT");
arch_large_brick_white_sandstone.register();

//Red Granite Sandstone
var arch_brick_red_granite_sandstone = VanillaFactory.createDirectionalBlock("arch_brick_red_granite_sandstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_red_granite_sandstone.setBlockHardness(2.0);
arch_brick_red_granite_sandstone.setBlockResistance(1.0);
arch_brick_red_granite_sandstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_red_granite_sandstone.setToolClass("pickaxe");
arch_brick_red_granite_sandstone.setFullBlock(false);
arch_brick_red_granite_sandstone.setLightOpacity(0);
arch_brick_red_granite_sandstone.setLightValue(0);
arch_brick_red_granite_sandstone.setBlockLayer("CUTOUT");
arch_brick_red_granite_sandstone.register();

var arch_large_brick_red_granite_sandstone = VanillaFactory.createDirectionalBlock("arch_large_brick_red_granite_sandstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_red_granite_sandstone.setBlockHardness(2.0);
arch_large_brick_red_granite_sandstone.setBlockResistance(1.0);
arch_large_brick_red_granite_sandstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_red_granite_sandstone.setToolClass("pickaxe");
arch_large_brick_red_granite_sandstone.setFullBlock(false);
arch_large_brick_red_granite_sandstone.setLightOpacity(0);
arch_large_brick_red_granite_sandstone.setLightValue(0);
arch_large_brick_red_granite_sandstone.setBlockLayer("CUTOUT");
arch_large_brick_red_granite_sandstone.register();

//Soul Sandstone
var arch_brick_soul_sandstone = VanillaFactory.createDirectionalBlock("arch_brick_soul_sandstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_soul_sandstone.setBlockHardness(2.0);
arch_brick_soul_sandstone.setBlockResistance(1.0);
arch_brick_soul_sandstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_soul_sandstone.setToolClass("pickaxe");
arch_brick_soul_sandstone.setFullBlock(false);
arch_brick_soul_sandstone.setLightOpacity(0);
arch_brick_soul_sandstone.setLightValue(0);
arch_brick_soul_sandstone.setBlockLayer("CUTOUT");
arch_brick_soul_sandstone.register();

var arch_large_brick_soul_sandstone = VanillaFactory.createDirectionalBlock("arch_large_brick_soul_sandstone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_soul_sandstone.setBlockHardness(2.0);
arch_large_brick_soul_sandstone.setBlockResistance(1.0);
arch_large_brick_soul_sandstone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_soul_sandstone.setToolClass("pickaxe");
arch_large_brick_soul_sandstone.setFullBlock(false);
arch_large_brick_soul_sandstone.setLightOpacity(0);
arch_large_brick_soul_sandstone.setLightValue(0);
arch_large_brick_soul_sandstone.setBlockLayer("CUTOUT");
arch_large_brick_soul_sandstone.register();

//Clay
var arch_brick_clay = VanillaFactory.createDirectionalBlock("arch_brick_clay", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_clay.setBlockHardness(2.0);
arch_brick_clay.setBlockResistance(1.0);
arch_brick_clay.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_clay.setToolClass("pickaxe");
arch_brick_clay.setFullBlock(false);
arch_brick_clay.setLightOpacity(0);
arch_brick_clay.setLightValue(0);
arch_brick_clay.setBlockLayer("CUTOUT");
arch_brick_clay.register();

var arch_large_brick_clay = VanillaFactory.createDirectionalBlock("arch_large_brick_clay", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_clay.setBlockHardness(2.0);
arch_large_brick_clay.setBlockResistance(1.0);
arch_large_brick_clay.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_clay.setToolClass("pickaxe");
arch_large_brick_clay.setFullBlock(false);
arch_large_brick_clay.setLightOpacity(0);
arch_large_brick_clay.setLightValue(0);
arch_large_brick_clay.setBlockLayer("CUTOUT");
arch_large_brick_clay.register();

//Masonry
var arch_brick_masonry = VanillaFactory.createDirectionalBlock("arch_brick_masonry", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_masonry.setBlockHardness(2.0);
arch_brick_masonry.setBlockResistance(1.0);
arch_brick_masonry.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_masonry.setToolClass("pickaxe");
arch_brick_masonry.setFullBlock(false);
arch_brick_masonry.setLightOpacity(0);
arch_brick_masonry.setLightValue(0);
arch_brick_masonry.setBlockLayer("CUTOUT");
arch_brick_masonry.register();

var arch_large_brick_masonry = VanillaFactory.createDirectionalBlock("arch_large_brick_masonry", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_masonry.setBlockHardness(2.0);
arch_large_brick_masonry.setBlockResistance(1.0);
arch_large_brick_masonry.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_masonry.setToolClass("pickaxe");
arch_large_brick_masonry.setFullBlock(false);
arch_large_brick_masonry.setLightOpacity(0);
arch_large_brick_masonry.setLightValue(0);
arch_large_brick_masonry.setBlockLayer("CUTOUT");
arch_large_brick_masonry.register();

//Mud
var arch_brick_mud = VanillaFactory.createDirectionalBlock("arch_brick_mud", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_mud.setBlockHardness(2.0);
arch_brick_mud.setBlockResistance(1.0);
arch_brick_mud.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_mud.setToolClass("pickaxe");
arch_brick_mud.setFullBlock(false);
arch_brick_mud.setLightOpacity(0);
arch_brick_mud.setLightValue(0);
arch_brick_mud.setBlockLayer("CUTOUT");
arch_brick_mud.register();

var arch_large_brick_mud = VanillaFactory.createDirectionalBlock("arch_large_brick_mud", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_mud.setBlockHardness(2.0);
arch_large_brick_mud.setBlockResistance(1.0);
arch_large_brick_mud.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_mud.setToolClass("pickaxe");
arch_large_brick_mud.setFullBlock(false);
arch_large_brick_mud.setLightOpacity(0);
arch_large_brick_mud.setLightValue(0);
arch_large_brick_mud.setBlockLayer("CUTOUT");
arch_large_brick_mud.register();

//Holystone

var arch_brick_holystone = VanillaFactory.createDirectionalBlock("arch_brick_holystone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_holystone.setBlockHardness(2.0);
arch_brick_holystone.setBlockResistance(1.0);
arch_brick_holystone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_holystone.setToolClass("pickaxe");
arch_brick_holystone.setFullBlock(false);
arch_brick_holystone.setLightOpacity(0);
arch_brick_holystone.setLightValue(0);
arch_brick_holystone.setBlockLayer("CUTOUT");
arch_brick_holystone.register();

var arch_large_brick_holystone = VanillaFactory.createDirectionalBlock("arch_large_brick_holystone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_holystone.setBlockHardness(2.0);
arch_large_brick_holystone.setBlockResistance(1.0);
arch_large_brick_holystone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_holystone.setToolClass("pickaxe");
arch_large_brick_holystone.setFullBlock(false);
arch_large_brick_holystone.setLightOpacity(0);
arch_large_brick_holystone.setLightValue(0);
arch_large_brick_holystone.setBlockLayer("CUTOUT");
arch_large_brick_holystone.register();

//Carved Stone 

var arch_brick_carved_stone = VanillaFactory.createDirectionalBlock("arch_brick_carved_stone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_carved_stone.setBlockHardness(2.0);
arch_brick_carved_stone.setBlockResistance(1.0);
arch_brick_carved_stone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_carved_stone.setToolClass("pickaxe");
arch_brick_carved_stone.setFullBlock(false);
arch_brick_carved_stone.setLightOpacity(0);
arch_brick_carved_stone.setLightValue(0);
arch_brick_carved_stone.setBlockLayer("CUTOUT");
arch_brick_carved_stone.register();

var arch_large_brick_carved_stone = VanillaFactory.createDirectionalBlock("arch_large_brick_carved_stone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_carved_stone.setBlockHardness(2.0);
arch_large_brick_carved_stone.setBlockResistance(1.0);
arch_large_brick_carved_stone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_carved_stone.setToolClass("pickaxe");
arch_large_brick_carved_stone.setFullBlock(false);
arch_large_brick_carved_stone.setLightOpacity(0);
arch_large_brick_carved_stone.setLightValue(0);
arch_large_brick_carved_stone.setBlockLayer("CUTOUT");
arch_large_brick_carved_stone.register();

//Angelic Stone 

var arch_brick_angelic_stone = VanillaFactory.createDirectionalBlock("arch_brick_angelic_stone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_angelic_stone.setBlockHardness(2.0);
arch_brick_angelic_stone.setBlockResistance(1.0);
arch_brick_angelic_stone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_angelic_stone.setToolClass("pickaxe");
arch_brick_angelic_stone.setFullBlock(false);
arch_brick_angelic_stone.setLightOpacity(0);
arch_brick_angelic_stone.setLightValue(0);
arch_brick_angelic_stone.setBlockLayer("CUTOUT");
arch_brick_angelic_stone.register();

var arch_large_brick_angelic_stone = VanillaFactory.createDirectionalBlock("arch_large_brick_angelic_stone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_angelic_stone.setBlockHardness(2.0);
arch_large_brick_angelic_stone.setBlockResistance(1.0);
arch_large_brick_angelic_stone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_angelic_stone.setToolClass("pickaxe");
arch_large_brick_angelic_stone.setFullBlock(false);
arch_large_brick_angelic_stone.setLightOpacity(0);
arch_large_brick_angelic_stone.setLightValue(0);
arch_large_brick_angelic_stone.setBlockLayer("CUTOUT");
arch_large_brick_angelic_stone.register();

//Hellfire Stone 

var arch_brick_hellfire_stone = VanillaFactory.createDirectionalBlock("arch_brick_hellfire_stone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_hellfire_stone.setBlockHardness(2.0);
arch_brick_hellfire_stone.setBlockResistance(1.0);
arch_brick_hellfire_stone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_hellfire_stone.setToolClass("pickaxe");
arch_brick_hellfire_stone.setFullBlock(false);
arch_brick_hellfire_stone.setLightOpacity(0);
arch_brick_hellfire_stone.setLightValue(0);
arch_brick_hellfire_stone.setBlockLayer("CUTOUT");
arch_brick_hellfire_stone.register();

var arch_large_brick_hellfire_stone = VanillaFactory.createDirectionalBlock("arch_large_brick_hellfire_stone", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_hellfire_stone.setBlockHardness(2.0);
arch_large_brick_hellfire_stone.setBlockResistance(1.0);
arch_large_brick_hellfire_stone.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_hellfire_stone.setToolClass("pickaxe");
arch_large_brick_hellfire_stone.setFullBlock(false);
arch_large_brick_hellfire_stone.setLightOpacity(0);
arch_large_brick_hellfire_stone.setLightValue(0);
arch_large_brick_hellfire_stone.setBlockLayer("CUTOUT");
arch_large_brick_hellfire_stone.register();

//Pirani 

var arch_brick_pirani = VanillaFactory.createDirectionalBlock("arch_brick_pirani", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_brick_pirani.setBlockHardness(2.0);
arch_brick_pirani.setBlockResistance(1.0);
arch_brick_pirani.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_brick_pirani.setToolClass("pickaxe");
arch_brick_pirani.setFullBlock(false);
arch_brick_pirani.setLightOpacity(0);
arch_brick_pirani.setLightValue(0);
arch_brick_pirani.setBlockLayer("CUTOUT");
arch_brick_pirani.register();

var arch_large_brick_pirani = VanillaFactory.createDirectionalBlock("arch_large_brick_pirani", <blockmaterial:Rock>, "HORIZONTAL", true, true);
arch_large_brick_pirani.setBlockHardness(2.0);
arch_large_brick_pirani.setBlockResistance(1.0);
arch_large_brick_pirani.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arch_large_brick_pirani.setToolClass("pickaxe");
arch_large_brick_pirani.setFullBlock(false);
arch_large_brick_pirani.setLightOpacity(0);
arch_large_brick_pirani.setLightValue(0);
arch_large_brick_pirani.setBlockLayer("CUTOUT");
arch_large_brick_pirani.register();