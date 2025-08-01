#loader contenttweaker

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;
import mods.contenttweaker.Color;

/*Recipes for Extra Blocks are handled in the minecraft.zs script
/////////////////////////////////////////////////////////////////
//////////////////////////IMPORTANT//////////////////////////////
/////////////////////////////////////////////////////////////////
When creating a simple block (opaque, same texture on all sides), 
change its blockstate to use cube_all as its model, since the de-
fault model does not cull faces and can decrease performance when
used a lot. DO NOT FORGET to add a new texture key to the textu-
res object like this:

	"all": "contenttweaker:blocks/name_of_your_texture"
	
Otherwise, you will get missing texture blocks. special blocks
(smaller, bigger, unique model, transparent, etc.)can ignore this
rule.
*/

val rotn_b = VanillaFactory.createCreativeTab("rotn_blocks", <item:minecraft:stick>);
rotn_b.register();

// Dormant Ardicite Onyx
var dormant_ardicite_onyx = VanillaFactory.createBlock("dormant_ardicite_onyx", <blockmaterial:Rock>);
dormant_ardicite_onyx.setCreativeTab(<creativetab:rotn_blocks>);
dormant_ardicite_onyx.setBlockSoundType(<soundtype:stone>);
dormant_ardicite_onyx.setToolLevel(99);
dormant_ardicite_onyx.setBlockHardness(9999999999999999.0);
dormant_ardicite_onyx.setBlockResistance(9999999999999999.0);
dormant_ardicite_onyx.setBeaconBase(false);
dormant_ardicite_onyx.register();

// Dormant Onyx
var dormant_onyx = VanillaFactory.createBlock("dormant_onyx", <blockmaterial:Rock>);
dormant_onyx.setCreativeTab(<creativetab:rotn_blocks>);
dormant_onyx.setBlockSoundType(<soundtype:stone>);
dormant_onyx.setToolLevel(99);
dormant_onyx.setBlockHardness(9999999999999999.0);
dormant_onyx.setBlockResistance(9999999999999999.0);
dormant_onyx.setBeaconBase(false);
dormant_onyx.register();

//  Fiery nether sludge
var fiery_nether_sludge = VanillaFactory.createBlock("fiery_nether_sludge", <blockmaterial:Ground>);
fiery_nether_sludge.setCreativeTab(<creativetab:rotn_blocks>);
fiery_nether_sludge.setBlockSoundType(<soundtype:Ground>);
fiery_nether_sludge.setToolClass("none");
fiery_nether_sludge.setToolLevel(0);
fiery_nether_sludge.setBlockHardness(2.0);
fiery_nether_sludge.register();

//  Hardened fiery nether sludge
var hardened_fiery_nether_sludge = VanillaFactory.createBlock("hardened_fiery_nether_sludge", <blockmaterial:Rock>);
hardened_fiery_nether_sludge.setCreativeTab(<creativetab:rotn_blocks>);
hardened_fiery_nether_sludge.setToolLevel(0);
hardened_fiery_nether_sludge.setBlockHardness(2.8);
hardened_fiery_nether_sludge.register();

// Charcoal pile
var charlog = VanillaFactory.createBlock("charcoal_pile", <blockmaterial:Wood>);
charlog.setCreativeTab(<creativetab:rotn_blocks>);
charlog.setBlockSoundType(<soundtype:Ground>);
charlog.setToolClass("axe");
charlog.register();

// Peat
var peat = VanillaFactory.createBlock("peat", <blockmaterial:Ground>);
peat.setCreativeTab(<creativetab:rotn_blocks>);
peat.setBlockSoundType(<soundtype:Ground>);
peat.setToolClass("shovel");
peat.setToolLevel(0);
peat.setBlockHardness(2.7);
peat.register();

// Mossy Peat
var mossy_peat = VanillaFactory.createBlock("mossy_peat", <blockmaterial:Ground>);
mossy_peat.setCreativeTab(<creativetab:rotn_blocks>);
mossy_peat.setBlockSoundType(<soundtype:Ground>);
mossy_peat.setToolClass("shovel");
mossy_peat.setToolLevel(0);
mossy_peat.setBlockHardness(3.0);
mossy_peat.setSlipperiness(0.7f);
mossy_peat.register();

// Mossthane
var charmpeat = VanillaFactory.createBlock("charmpeat", <blockmaterial:Ground>);
charmpeat.setCreativeTab(<creativetab:rotn_blocks>);
charmpeat.setBlockSoundType(<soundtype:Ground>);
charmpeat.setToolClass("shovel");
charmpeat.setToolLevel(0);
charmpeat.setBlockHardness(3.7);
charmpeat.register();

// Halite /salt ore/
var halite = VanillaFactory.createBlock("halite", <blockmaterial:Rock>);
halite.setCreativeTab(<creativetab:rotn_blocks>);
halite.setFullBlock(false);
halite.setBlockSoundType(<soundtype:glass>);
halite.setBlockLayer("TRANSLUCENT");
halite.setTranslucent(true);
halite.setLightOpacity(0);
halite.setToolLevel(0);
halite.register();

// Salt pan
var salt_pan = VanillaFactory.createBlock("salt_pan", <blockmaterial:Grass>);
salt_pan.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    0.1 / 16.0,
    16.0 / 16.0
	);
salt_pan.setBlockHardness(3.0);
salt_pan.setBlockResistance(2.0);
salt_pan.setFullBlock(false);
salt_pan.setLightOpacity(0);
salt_pan.setBlockLayer("CUTOUT");
salt_pan.setBlockSoundType(<soundtype:ground>);
salt_pan.setToolClass("shovel");
salt_pan.register();

// Marmatite
var marmatite = VanillaFactory.createBlock("marmatite", <blockmaterial:Rock>);
marmatite.setCreativeTab(<creativetab:rotn_blocks>);
marmatite.setBlockSoundType(<soundtype:stone>);
marmatite.setToolLevel(1);
marmatite.register();

// Pumice
var pumice = VanillaFactory.createBlock("pumice", <blockmaterial:Rock>);
pumice.setCreativeTab(<creativetab:rotn_blocks>);
pumice.setBlockSoundType(<soundtype:stone>);
pumice.setToolLevel(1);
pumice.setBlockHardness(1.0);
pumice.register();

// Codex junk
var codex_junk = VanillaFactory.createBlock("codex_junk", <blockmaterial:Grass>);
codex_junk.axisAlignedBB = AxisAlignedBB.create(
     2.0 / 16.0,
     0.0 / 16.0,
     2.0 / 16.0,
	14.0 / 16.0,
    0.1 / 16.0,
    14.0 / 16.0
	);
codex_junk.setBlockHardness(0.5);
codex_junk.setBlockResistance(1.0);
codex_junk.setFullBlock(false);
codex_junk.setLightOpacity(0);
codex_junk.setBlockLayer("CUTOUT");
codex_junk.setToolClass("none");
codex_junk.register();

// Rundown cargo cart remains
var lost_cargo = VanillaFactory.createDirectionalBlock("lost_cargo", <blockmaterial:Wood>, "HORIZONTAL", false, true);
lost_cargo.axisAlignedBB = AxisAlignedBB.create(
     2.0 / 16.0,
     0.0 / 16.0,
     2.0 / 16.0,
	16.0 / 16.0,
    9.0 / 16.0,
    16.0 / 16.0
	);
lost_cargo.setCreativeTab(<creativetab:rotn_blocks>);
lost_cargo.setFullBlock(false);
lost_cargo.setToolLevel(0);
lost_cargo.setToolClass("axe");
lost_cargo.register();

// Ender Scythe Statuette
var scythe_statuette = VanillaFactory.createDirectionalBlock("scythe_statuette", <blockmaterial:Iron>, "HORIZONTAL", false, true);
scythe_statuette.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
    15.0 / 16.0,
    12.0 / 16.0
	);
scythe_statuette.setCreativeTab(<creativetab:rotn_blocks>);
scythe_statuette.setFullBlock(false);
scythe_statuette.setToolLevel(0);
scythe_statuette.setBlockLayer("CUTOUT");
scythe_statuette.setToolClass("none");
scythe_statuette.register();

var paper_1 = VanillaFactory.createBlock("paper_1", <blockmaterial:Grass>);
paper_1.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
	1.0 / 16.0,
    16.0 / 16.0
	);
paper_1.setCreativeTab(<creativetab:rotn_blocks>);
paper_1.setBlockHardness(0.1);
paper_1.setBlockResistance(1.0);
paper_1.setFullBlock(false);
paper_1.setLightOpacity(0);
paper_1.setBlockLayer("CUTOUT");
paper_1.setToolClass("none");
paper_1.register();

var paper_2 = VanillaFactory.createBlock("paper_2", <blockmaterial:Grass>);
paper_2.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
	1.0 / 16.0,
    16.0 / 16.0
	);
paper_2.setCreativeTab(<creativetab:rotn_blocks>);
paper_2.setBlockHardness(0.1);
paper_2.setBlockResistance(1.0);
paper_2.setFullBlock(false);
paper_2.setLightOpacity(0);
paper_2.setBlockLayer("CUTOUT");
paper_2.setToolClass("none");
paper_2.register();

var paper_3 = VanillaFactory.createBlock("paper_3", <blockmaterial:Grass>);
paper_3.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
	1.0 / 16.0,
    16.0 / 16.0
	);
paper_3.setCreativeTab(<creativetab:rotn_blocks>);
paper_3.setBlockHardness(0.1);
paper_3.setBlockResistance(1.0);
paper_3.setFullBlock(false);
paper_3.setLightOpacity(0);
paper_3.setBlockLayer("CUTOUT");
paper_3.setToolClass("none");
paper_3.register();

var bowl = VanillaFactory.createBlock("bowl", <blockmaterial:Wood>);
bowl.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
	3.0 / 16.0,
    12.0 / 16.0
	);
bowl.setCreativeTab(<creativetab:rotn_blocks>);
bowl.setBlockHardness(2.0);
bowl.setBlockResistance(1.0);
bowl.setFullBlock(false);
bowl.setLightOpacity(0);
bowl.setBlockLayer("CUTOUT");
bowl.register();

// Bones (add with content creator when possible to take advantage of blockstates and rotations)
// human(?
var bone_1 = VanillaFactory.createBlock("bone_1", <blockmaterial:Wood>);
bone_1.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
	16.0 / 16.0,
    12.0 / 16.0
	);
bone_1.setCreativeTab(<creativetab:rotn_blocks>);
bone_1.setBlockHardness(2.0);
bone_1.setBlockResistance(1.0);
bone_1.setFullBlock(false);
bone_1.setLightOpacity(0);
bone_1.setBlockLayer("CUTOUT");
bone_1.register();

var bone_2 = VanillaFactory.createBlock("bone_2", <blockmaterial:Wood>);
bone_2.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
	16.0 / 16.0,
    12.0 / 16.0
	);
bone_2.setCreativeTab(<creativetab:rotn_blocks>);
bone_2.setBlockHardness(2.0);
bone_2.setBlockResistance(1.0);
bone_2.setFullBlock(false);
bone_2.setLightOpacity(0);
bone_2.setBlockLayer("CUTOUT");
bone_2.register();

var bone_3 = VanillaFactory.createBlock("bone_3", <blockmaterial:Wood>);
bone_3.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
	16.0 / 16.0,
    12.0 / 16.0
	);
bone_3.setCreativeTab(<creativetab:rotn_blocks>);
bone_3.setBlockHardness(2.0);
bone_3.setBlockResistance(1.0);
bone_3.setFullBlock(false);
bone_3.setLightOpacity(0);
bone_3.setBlockLayer("CUTOUT");
bone_3.register();

var bone_4 = VanillaFactory.createBlock("bone_4", <blockmaterial:Wood>);
bone_4.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
	16.0 / 16.0,
    12.0 / 16.0
	);
bone_4.setCreativeTab(<creativetab:rotn_blocks>);
bone_4.setBlockHardness(2.0);
bone_4.setBlockResistance(1.0);
bone_4.setFullBlock(false);
bone_4.setLightOpacity(0);
bone_4.setBlockLayer("CUTOUT");
bone_4.register();
//wither
var wither_bone_1 = VanillaFactory.createBlock("wither_bone_1", <blockmaterial:Wood>);
wither_bone_1.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
	16.0 / 16.0,
    12.0 / 16.0
	);
wither_bone_1.setCreativeTab(<creativetab:rotn_blocks>);
wither_bone_1.setBlockHardness(2.0);
wither_bone_1.setBlockResistance(1.0);
wither_bone_1.setFullBlock(false);
wither_bone_1.setLightOpacity(0);
wither_bone_1.setBlockLayer("CUTOUT");
wither_bone_1.register();

var wither_bone_2 = VanillaFactory.createBlock("wither_bone_2", <blockmaterial:Wood>);
wither_bone_2.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
	16.0 / 16.0,
    12.0 / 16.0
	);
wither_bone_2.setCreativeTab(<creativetab:rotn_blocks>);
wither_bone_2.setBlockHardness(2.0);
wither_bone_2.setBlockResistance(1.0);
wither_bone_2.setFullBlock(false);
wither_bone_2.setLightOpacity(0);
wither_bone_2.setBlockLayer("CUTOUT");
wither_bone_2.register();

var wither_bone_3 = VanillaFactory.createBlock("wither_bone_3", <blockmaterial:Wood>);
wither_bone_3.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
	16.0 / 16.0,
    12.0 / 16.0
	);
wither_bone_3.setCreativeTab(<creativetab:rotn_blocks>);
wither_bone_3.setBlockHardness(2.0);
wither_bone_3.setBlockResistance(1.0);
wither_bone_3.setFullBlock(false);
wither_bone_3.setLightOpacity(0);
wither_bone_3.setBlockLayer("CUTOUT");
wither_bone_3.register();

var wither_bone_4 = VanillaFactory.createBlock("wither_bone_4", <blockmaterial:Wood>);
wither_bone_4.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
	16.0 / 16.0,
    12.0 / 16.0
	);
wither_bone_4.setCreativeTab(<creativetab:rotn_blocks>);
wither_bone_4.setBlockHardness(2.0);
wither_bone_4.setBlockResistance(1.0);
wither_bone_4.setFullBlock(false);
wither_bone_4.setLightOpacity(0);
wither_bone_4.setBlockLayer("CUTOUT");
wither_bone_4.register();

// Speleothems
var dolomite_straws = VanillaFactory.createBlock("dolomite_straws", <blockmaterial:Rock>);
dolomite_straws.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     2.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
    16.0 / 16.0,
    12.0 / 16.0
	);
dolomite_straws.setFullBlock(false);
dolomite_straws.setLightOpacity(0);
dolomite_straws.setCreativeTab(<creativetab:decorations>);
dolomite_straws.setBlockSoundType(<soundtype:stone>);
dolomite_straws.setToolLevel(0);
dolomite_straws.register();

// Wolf Statue
var wolf_statue = VanillaFactory.createDirectionalBlock("wolf_statue", <blockmaterial:Rock>, "HORIZONTAL", false, true);
wolf_statue.axisAlignedBB = AxisAlignedBB.create(
     2.0 / 16.0,
     0.0 / 16.0,
     2.0 / 16.0,
	14.0 / 16.0,
    17.0 / 16.0,
    14.0 / 16.0
	);
wolf_statue.setFullBlock(false);
wolf_statue.setLightOpacity(0.5);
wolf_statue.setCreativeTab(<creativetab:decorations>);
wolf_statue.setBlockSoundType(<soundtype:stone>);
wolf_statue.setToolLevel(0);
wolf_statue.register();

// block_electrum
var block_electrum = VanillaFactory.createBlock("block_electrum", <blockmaterial:Iron>);
block_electrum.setCreativeTab(<creativetab:rotn_blocks>);
block_electrum.setBlockHardness(3.0);
block_electrum.setBlockResistance(12.0);
block_electrum.setBeaconBase(true);
block_electrum.register();

// block_brass
var block_brass = VanillaFactory.createBlock("block_brass", <blockmaterial:Iron>);
block_brass.setCreativeTab(<creativetab:rotn_blocks>);
block_brass.setBlockHardness(4.0);
block_brass.setBlockResistance(15.0);
block_brass.setBeaconBase(true);
block_brass.register();

// block_bronze
var block_bronze = VanillaFactory.createBlock("block_bronze", <blockmaterial:Iron>);
block_bronze.setCreativeTab(<creativetab:rotn_blocks>);
block_bronze.setBlockHardness(4.0);
block_bronze.setBlockResistance(15.0);
block_bronze.setBeaconBase(true);
block_bronze.register();

// voided_rock
var voided_rock = VanillaFactory.createBlock("voided_rock", <blockmaterial:Rock>);
voided_rock.setCreativeTab(<creativetab:rotn_blocks>);
voided_rock.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
voided_rock.setBlockHardness(7.0);
voided_rock.setBlockResistance(3.5);
voided_rock.setSlipperiness(0.7f);
voided_rock.setToolLevel(4);
voided_rock.register();

// vathodermis
var vathodermis = VanillaFactory.createBlock("vathodermis", <blockmaterial:Rock>);
vathodermis.setCreativeTab(<creativetab:rotn_blocks>);
vathodermis.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
    16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
vathodermis.setBlockHardness(100.0);
vathodermis.setBlockResistance(7.5);
vathodermis.setSlipperiness(0.9f);
vathodermis.setLightValue(0.1);
vathodermis.setToolLevel(4);
vathodermis.setToolClass("axe");
vathodermis.register();

// void_block
var void_block = VanillaFactory.createBlock("void_block", <blockmaterial:Fire>);
void_block.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
    16.0 / 16.0,
    12.0 / 16.0
	);
void_block.setBlockSoundType(<soundtype:sand>);
void_block.setFullBlock(false);
void_block.setBlockHardness(0.7);
void_block.setLightOpacity(0);
void_block.setLightValue(1);
void_block.setBlockLayer("CUTOUT");
void_block.setPassable(true);
void_block.setCreativeTab(<creativetab:rotn_blocks>);
void_block.register();

// dimensional_vortex
var dimensional_vortex = VanillaFactory.createBlock("dimensional_vortex", <blockmaterial:Fire>);
dimensional_vortex.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    0.5 / 16.0,
    16.0 / 16.0
	);
dimensional_vortex.setBlockSoundType(<soundtype:sand>);
dimensional_vortex.setFullBlock(false);
dimensional_vortex.setBlockHardness(350.0);
dimensional_vortex.setBlockResistance(3600000.0);
dimensional_vortex.setLightOpacity(0);
dimensional_vortex.setLightValue(1);
dimensional_vortex.setBlockLayer("TRANSLUCENT");
dimensional_vortex.setPassable(true);
dimensional_vortex.setCreativeTab(<creativetab:rotn_blocks>);
dimensional_vortex.setToolClass("pickaxe");
dimensional_vortex.setToolLevel(99);
dimensional_vortex.register();

//bonfire
var bonfire = VanillaFactory.createBlock("bonfire", <blockmaterial:Fire>);
bonfire.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    0.5 / 16.0,
    16.0 / 16.0
	);
bonfire.setBlockSoundType(<soundtype:sand>);
bonfire.setFullBlock(false);
bonfire.setBlockHardness(0);
bonfire.setLightOpacity(0);
bonfire.setLightValue(1.0);
bonfire.setBlockLayer("TRANSLUCENT");
bonfire.setPassable(true);
bonfire.setCreativeTab(<creativetab:rotn_blocks>);
bonfire.register();

//soul bonfire
var soul_bonfire = VanillaFactory.createBlock("soul_bonfire", <blockmaterial:Fire>);
soul_bonfire.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    0.5 / 16.0,
    16.0 / 16.0
	);
soul_bonfire.setBlockSoundType(<soundtype:sand>);
soul_bonfire.setFullBlock(false);
soul_bonfire.setBlockHardness(0);
soul_bonfire.setLightOpacity(0);
soul_bonfire.setLightValue(1.0);
soul_bonfire.setBlockLayer("TRANSLUCENT");
soul_bonfire.setPassable(true);
soul_bonfire.setCreativeTab(<creativetab:rotn_blocks>);
soul_bonfire.register();

//celestial lotus
var celestial_lotus = VanillaFactory.createBlock("celestial_lotus", <blockmaterial:Iron>);
celestial_lotus.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    3.0 / 16.0,
    16.0 / 16.0
	);
celestial_lotus.setFullBlock(false);
celestial_lotus.setBlockHardness(8);
celestial_lotus.setLightOpacity(0);
celestial_lotus.setLightValue(1.0);
celestial_lotus.setBlockLayer("TRANSLUCENT");
celestial_lotus.setToolClass("pickaxe");
celestial_lotus.setCreativeTab(<creativetab:rotn_blocks>);
celestial_lotus.register();

//crystal matrix core
var crystal_matrix_core = VanillaFactory.createBlock("crystal_matrix_core", <blockmaterial:Iron>);
crystal_matrix_core.setFullBlock(false);
crystal_matrix_core.setBlockHardness(8);
crystal_matrix_core.setLightOpacity(0);
crystal_matrix_core.setLightValue(1.0);
crystal_matrix_core.setBlockLayer("TRANSLUCENT");
crystal_matrix_core.setToolClass("pickaxe");
crystal_matrix_core.setCreativeTab(<creativetab:buildingBlocks>);
crystal_matrix_core.register();

//dominion crystal
var dominion_crystal = VanillaFactory.createBlock("dominion_crystal", <blockmaterial:Iron>);
dominion_crystal.setFullBlock(false);
dominion_crystal.setBlockHardness(8);
dominion_crystal.setLightOpacity(0);
dominion_crystal.setLightValue(1.0);
dominion_crystal.setBlockLayer("TRANSLUCENT");
dominion_crystal.setToolClass("pickaxe");
dominion_crystal.setCreativeTab(<creativetab:buildingBlocks>);
dominion_crystal.register();

//matrix_resevoir
var matrix_resevoir = VanillaFactory.createBlock("matrix_resevoir", <blockmaterial:Iron>);
matrix_resevoir.setFullBlock(false);
matrix_resevoir.setBlockHardness(8);
matrix_resevoir.setLightOpacity(0);
matrix_resevoir.setLightValue(1.0);
matrix_resevoir.setBlockLayer("TRANSLUCENT");
matrix_resevoir.setToolClass("pickaxe");
matrix_resevoir.setCreativeTab(<creativetab:buildingBlocks>);
matrix_resevoir.register();

// venerable_stump
var venerable_stump = VanillaFactory.createBlock("venerable_stump", <blockmaterial:Wood>);
venerable_stump.axisAlignedBB = AxisAlignedBB.create(
     -16.0 / 16.0,
     0.0 / 16.0,
     -16.0 / 16.0,
	29.0 / 16.0,
    16.0 / 16.0,
    29.0 / 16.0
	);
venerable_stump.setFullBlock(false);
venerable_stump.setBlockHardness(12);
venerable_stump.setLightOpacity(0);
venerable_stump.setLightValue(1);
venerable_stump.setBlockLayer("CUTOUT");
venerable_stump.setToolClass("axe");
venerable_stump.setCreativeTab(<creativetab:rotn_blocks>);
venerable_stump.register();

// seasoned_stump
var seasoned_stump = VanillaFactory.createBlock("seasoned_stump", <blockmaterial:Wood>);
seasoned_stump.axisAlignedBB = AxisAlignedBB.create(
     -16.0 / 16.0,
     0.0 / 16.0,
     -16.0 / 16.0,
	29.0 / 16.0,
    16.0 / 16.0,
    29.0 / 16.0
	);
seasoned_stump.setFullBlock(false);
seasoned_stump.setBlockHardness(12);
seasoned_stump.setLightOpacity(0);
seasoned_stump.setLightValue(1);
seasoned_stump.setBlockLayer("CUTOUT");
seasoned_stump.setToolClass("axe");
seasoned_stump.setCreativeTab(<creativetab:rotn_blocks>);
seasoned_stump.register();

// cincinnasite chandellier
var cincinnasite_chandelier = VanillaFactory.createBlock("cincinnasite_chandelier", <blockmaterial:Wood>);
cincinnasite_chandelier.axisAlignedBB = AxisAlignedBB.create(
	0.0 / 16.0,
	0.0 / 16.0,
	0.0 / 16.0,
	16.0 / 16.0,
	9.0 / 16.0,
	16.0 / 16.0
	);
cincinnasite_chandelier.setFullBlock(false);
cincinnasite_chandelier.setBlockHardness(8);
cincinnasite_chandelier.setLightOpacity(0);
cincinnasite_chandelier.setLightValue(1);
cincinnasite_chandelier.setBlockLayer("CUTOUT");
cincinnasite_chandelier.setToolClass("pickaxe");
cincinnasite_chandelier.setCreativeTab(<creativetab:rotn_blocks>);
cincinnasite_chandelier.register();

// Raw Ores
// raw_tin
var raw_tin = VanillaFactory.createBlock("raw_tin_block", <blockmaterial:Iron>);
raw_tin.setCreativeTab(<creativetab:rotn_blocks>);
raw_tin.setToolLevel(0);
raw_tin.register();

// raw_copper
var raw_copper = VanillaFactory.createBlock("raw_copper_block", <blockmaterial:Iron>);
raw_copper.setCreativeTab(<creativetab:rotn_blocks>);
raw_copper.setToolLevel(0);
raw_copper.register();

// raw_iron
var raw_iron = VanillaFactory.createBlock("raw_iron_block", <blockmaterial:Iron>);
raw_iron.setCreativeTab(<creativetab:rotn_blocks>);
raw_iron.setToolLevel(0);
raw_iron.register();

// raw_wrought_iron
var raw_wrought_iron = VanillaFactory.createBlock("raw_wrought_iron", <blockmaterial:Iron>);
raw_wrought_iron.setCreativeTab(<creativetab:rotn_blocks>);
raw_wrought_iron.setToolLevel(1);
raw_wrought_iron.register();

// raw_silver
var raw_silver = VanillaFactory.createBlock("raw_silver_block", <blockmaterial:Iron>);
raw_silver.setCreativeTab(<creativetab:rotn_blocks>);
raw_silver.setToolLevel(1);
raw_silver.register();

// raw_gold
var raw_gold = VanillaFactory.createBlock("raw_gold_block", <blockmaterial:Iron>);
raw_gold.setCreativeTab(<creativetab:rotn_blocks>);
raw_gold.setToolLevel(1);
raw_gold.register();

// raw_gravitite
var raw_gravitite = VanillaFactory.createBlock("raw_gravitite_block", <blockmaterial:Iron>);
raw_gravitite.setCreativeTab(<creativetab:rotn_blocks>);
raw_gravitite.setToolLevel(1);
raw_gravitite.register();

// raw_ferrought
var raw_ferrought_block = VanillaFactory.createBlock("raw_ferrought_block", <blockmaterial:Iron>);
raw_ferrought_block.setCreativeTab(<creativetab:rotn_blocks>);
raw_ferrought_block.setToolLevel(1);
raw_ferrought_block.register();

// raw_viridium_block
var raw_viridium_block = VanillaFactory.createBlock("raw_viridium_block", <blockmaterial:Iron>);
raw_viridium_block.setCreativeTab(<creativetab:rotn_blocks>);
raw_viridium_block.setToolLevel(2);
raw_viridium_block.register();

// raw_viridium_vein
var raw_viridium_vein = VanillaFactory.createBlock("raw_viridium_vein", <blockmaterial:Iron>);
raw_viridium_vein.setCreativeTab(<creativetab:rotn_blocks>);
raw_viridium_vein.setToolLevel(3);
raw_viridium_vein.setBlockHardness(10.0);
raw_viridium_vein.setLightValue(0.5);
raw_viridium_vein.register();

// raw_mythril
var raw_mythril = VanillaFactory.createBlock("raw_mythril_block", <blockmaterial:Iron>);
raw_mythril.setCreativeTab(<creativetab:rotn_blocks>);
raw_mythril.setToolLevel(2);
raw_mythril.register();

// The Small Door
var small_door = VanillaFactory.createDirectionalBlock("small_door", <blockmaterial:Iron>, "HORIZONTAL", false, true);
small_door.axisAlignedBB = AxisAlignedBB.create(
     2.0 / 16.0,
     0.0 / 16.0,
     2.0 / 16.0,
	14.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
small_door.setCreativeTab(<creativetab:rotn_blocks>);
small_door.setBlockSoundType(<soundtype:stone>);
small_door.setFullBlock(false);
small_door.setToolLevel(1);
small_door.setToolClass("pickaxe");
small_door.register();

// Arskull
var arskull = VanillaFactory.createDirectionalBlock("arskull", <blockmaterial:Iron>, "HORIZONTAL", false, true);
arskull.axisAlignedBB = AxisAlignedBB.create(
     2.0 / 16.0,
     0.0 / 16.0,
     2.0 / 16.0,
	14.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
arskull.setCreativeTab(<creativetab:rotn_blocks>);
arskull.setBlockSoundType(<soundtype:stone>);
arskull.setFullBlock(false);
arskull.setToolLevel(1);
arskull.setToolClass("pickaxe");
arskull.register();

// Unfired Refractory Crucible
var crucible = VanillaFactory.createBlock("crucible", <blockmaterial:Iron>);
crucible.setCreativeTab(<creativetab:rotn_blocks>);
crucible.setBlockSoundType(<soundtype:ground>);
crucible.setFullBlock(false);
crucible.setToolLevel(0);
crucible.setToolClass("shovel");
crucible.register();

// Crucible of souls
var crucible_of_souls = VanillaFactory.createBlock("crucible_of_souls", <blockmaterial:Iron>);
crucible_of_souls.setCreativeTab(<creativetab:rotn_blocks>);
crucible_of_souls.setBlockSoundType(<soundtype:stone>);
crucible_of_souls.setFullBlock(false);
crucible_of_souls.setLightOpacity(0);
crucible_of_souls.setToolLevel(0);
crucible_of_souls.setToolClass("pickaxe");
crucible_of_souls.register();

// Unfired Rustic Vase
var pot_unfired = VanillaFactory.createBlock("pot_unfired", <blockmaterial:Clay>);
pot_unfired.axisAlignedBB = AxisAlignedBB.create(
     2.0 / 16.0,
     0.0 / 16.0,
     2.0 / 16.0,
	14.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
pot_unfired.setFullBlock(false);
pot_unfired.setLightOpacity(0);
pot_unfired.setCreativeTab(<creativetab:rotn_blocks>);
pot_unfired.setBlockSoundType(<soundtype:ground>);
pot_unfired.setToolLevel(0);
pot_unfired.setToolClass("shovel");
pot_unfired.register();

// Unfired Rustic Basin
var unfired_drying_basin = VanillaFactory.createBlock("unfired_drying_basin", <blockmaterial:Clay>);
unfired_drying_basin.axisAlignedBB = AxisAlignedBB.create(
     1.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	15.0 / 16.0,
    12.0 / 16.0,
    15.0 / 16.0
	);
unfired_drying_basin.setFullBlock(false);
unfired_drying_basin.setLightOpacity(0);
unfired_drying_basin.setCreativeTab(<creativetab:rotn_blocks>);
unfired_drying_basin.setBlockSoundType(<soundtype:ground>);
unfired_drying_basin.setToolLevel(0);
unfired_drying_basin.setToolClass("shovel");
unfired_drying_basin.register();

// Unfired Cooking Pot
var unfired_cooking_pot = VanillaFactory.createBlock("unfired_cooking_pot", <blockmaterial:Clay>);
unfired_cooking_pot.axisAlignedBB = AxisAlignedBB.create(
     2.0 / 16.0,
     0.0 / 16.0,
     2.0 / 16.0,
	14.0 / 16.0,
     9.0 / 16.0,
    14.0 / 16.0
	);
unfired_cooking_pot.setFullBlock(false);
unfired_cooking_pot.setLightOpacity(0);
unfired_cooking_pot.setCreativeTab(<creativetab:rotn_blocks>);
unfired_cooking_pot.setBlockSoundType(<soundtype:ground>);
unfired_cooking_pot.setToolLevel(0);
unfired_cooking_pot.setToolClass("shovel");
unfired_cooking_pot.register();

// Unfired flower Pot
var unfired_flower_pot = VanillaFactory.createBlock("unfired_flower_pot", <blockmaterial:Clay>);
unfired_flower_pot.axisAlignedBB = AxisAlignedBB.create(
     5.0 / 16.0,
     0.0 / 16.0,
     5.0 / 16.0,
	11.0 / 16.0,
    10.0 / 16.0,
    11.0 / 16.0
	);
unfired_flower_pot.setFullBlock(false);
unfired_flower_pot.setLightOpacity(0);
unfired_flower_pot.setCreativeTab(<creativetab:rotn_blocks>);
unfired_flower_pot.setBlockSoundType(<soundtype:ground>);
unfired_flower_pot.setToolLevel(0);
unfired_flower_pot.setToolClass("shovel");
unfired_flower_pot.register();

// Broken Elevator
var elevator = VanillaFactory.createBlock("elevator", <blockmaterial:Ground>);
elevator.setCreativeTab(<creativetab:redstone>);
elevator.setBlockSoundType(<soundtype:stone>);
elevator.setFullBlock(false);
elevator.register();

// Broken Healing Pad
var healing = VanillaFactory.createBlock("healing", <blockmaterial:Ground>);
healing.setCreativeTab(<creativetab:redstone>);
healing.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    8.0 / 16.0,
    16.0 / 16.0
	);
healing.setBlockSoundType(<soundtype:stone>);
healing.setFullBlock(false);
healing.register();

// Grass paver
var grass_paver = VanillaFactory.createBlock("grass_paver", <blockmaterial:Rock>);
grass_paver.setCreativeTab(<creativetab:rotn_blocks>);
grass_paver.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    1.0 / 16.0,
    16.0 / 16.0
	);
grass_paver.setBlockSoundType(<soundtype:stone>);
grass_paver.setFullBlock(false);
grass_paver.setLightOpacity(0);
grass_paver.setBlockHardness(2.0);
grass_paver.register();

// Placeable bricks
// unfired adobe brick
var unfired_adobe_brick = VanillaFactory.createBlock("unfired_adobe_brick", <blockmaterial:Ground>);
unfired_adobe_brick.setCreativeTab(<creativetab:decorations>);
unfired_adobe_brick.setGravity(true);
unfired_adobe_brick.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
unfired_adobe_brick.setBlockSoundType(<soundtype:ground>);
unfired_adobe_brick.setFullBlock(false);
unfired_adobe_brick.setLightOpacity(0);
unfired_adobe_brick.setBlockLayer("TRANSLUCENT");
unfired_adobe_brick.setBlockHardness(1.0);
unfired_adobe_brick.setToolLevel(0);
unfired_adobe_brick.setToolClass("shovel");
unfired_adobe_brick.register();

// unfired mud brick
var unfired_mud_brick = VanillaFactory.createBlock("unfired_mud_brick", <blockmaterial:Ground>);
unfired_mud_brick.setCreativeTab(<creativetab:decorations>);
unfired_mud_brick.setGravity(true);
unfired_mud_brick.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
unfired_mud_brick.setBlockSoundType(<soundtype:ground>);
unfired_mud_brick.setFullBlock(false);
unfired_mud_brick.setLightOpacity(0);
unfired_mud_brick.setBlockLayer("TRANSLUCENT");
unfired_mud_brick.setBlockHardness(1.0);
unfired_mud_brick.setToolLevel(0);
unfired_mud_brick.setToolClass("shovel");
unfired_mud_brick.register();

// unfired porcelain brick
var unfired_porcelain_brick = VanillaFactory.createBlock("unfired_porcelain_brick", <blockmaterial:Ground>);
unfired_porcelain_brick.setCreativeTab(<creativetab:decorations>);
unfired_porcelain_brick.setGravity(true);
unfired_porcelain_brick.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
unfired_porcelain_brick.setBlockSoundType(<soundtype:ground>);
unfired_porcelain_brick.setFullBlock(false);
unfired_porcelain_brick.setLightOpacity(0);
unfired_porcelain_brick.setBlockLayer("TRANSLUCENT");
unfired_porcelain_brick.setBlockHardness(1.0);
unfired_porcelain_brick.setToolLevel(0);
unfired_porcelain_brick.setToolClass("shovel");
unfired_porcelain_brick.register();

// unfired fiery brick
var unfired_fiery_brick = VanillaFactory.createBlock("unfired_fiery_brick", <blockmaterial:Ground>);
unfired_fiery_brick.setCreativeTab(<creativetab:decorations>);
unfired_fiery_brick.setGravity(true);
unfired_fiery_brick.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
unfired_fiery_brick.setBlockSoundType(<soundtype:ground>);
unfired_fiery_brick.setFullBlock(false);
unfired_fiery_brick.setLightOpacity(0);
unfired_fiery_brick.setBlockLayer("TRANSLUCENT");
unfired_fiery_brick.setBlockHardness(1.0);
unfired_fiery_brick.setToolLevel(0);
unfired_fiery_brick.setToolClass("shovel");
unfired_fiery_brick.register();

// unfired refractory brick
var unfired_refractory_brick = VanillaFactory.createBlock("unfired_refractory_brick", <blockmaterial:Ground>);
unfired_refractory_brick.setCreativeTab(<creativetab:decorations>);
unfired_refractory_brick.setGravity(true);
unfired_refractory_brick.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    15.0 / 16.0
	);
unfired_refractory_brick.setBlockSoundType(<soundtype:ground>);
unfired_refractory_brick.setFullBlock(false);
unfired_refractory_brick.setLightOpacity(0);
unfired_refractory_brick.setBlockLayer("TRANSLUCENT");
unfired_refractory_brick.setBlockHardness(1.0);
unfired_refractory_brick.setToolLevel(0);
unfired_refractory_brick.setToolClass("shovel");
unfired_refractory_brick.register();

// ruined masonry brick x1
var masonry_brick = VanillaFactory.createBlock("masonry_brick", <blockmaterial:Rock>);
masonry_brick.setCreativeTab(<creativetab:decorations>);
masonry_brick.setGravity(true);
masonry_brick.axisAlignedBB = AxisAlignedBB.create(
     1.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	15.0 / 16.0,
    8.0 / 16.0,
    15.0 / 16.0
	);
masonry_brick.setFullBlock(false);
masonry_brick.setLightOpacity(0);
masonry_brick.setBlockLayer("TRANSLUCENT");
masonry_brick.setBlockHardness(1.0);
masonry_brick.setToolLevel(1);
masonry_brick.setToolClass("pickaxe");
masonry_brick.register();

// ruined masonry brick x2
var masonry_brick_two = VanillaFactory.createBlock("masonry_brick_two", <blockmaterial:Rock>);
masonry_brick_two.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    return;
});
masonry_brick_two.setCreativeTab(<creativetab:decorations>);
masonry_brick_two.setGravity(true);
masonry_brick_two.axisAlignedBB = AxisAlignedBB.create(
     1.0 / 16.0,
     0.0 / 16.0,
     1.0 / 16.0,
	15.0 / 16.0,
    8.0 / 16.0,
    15.0 / 16.0
	);
masonry_brick_two.setFullBlock(false);
masonry_brick_two.setLightOpacity(0);
masonry_brick_two.setBlockLayer("TRANSLUCENT");
masonry_brick_two.setBlockHardness(1.0);
masonry_brick_two.setToolLevel(1);
masonry_brick_two.setToolClass("pickaxe");
masonry_brick_two.register();

//Unfired clay faucet
var unfired_clay_faucet = VanillaFactory.createBlock("unfired_clay_faucet", <blockmaterial:Ground>);
unfired_clay_faucet.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     5.0 / 16.0,
	12.0 / 16.0,
    6.0 / 16.0,
    11.0 / 16.0
	);
unfired_clay_faucet.setBlockSoundType(<soundtype:ground>);
unfired_clay_faucet.setFullBlock(false);
unfired_clay_faucet.setLightOpacity(0);
unfired_clay_faucet.setBlockHardness(1.0);
unfired_clay_faucet.setToolLevel(0);
unfired_clay_faucet.setToolClass("shovel");
unfired_clay_faucet.register();

//Unfired clay collector
var unfired_clay_collector = VanillaFactory.createBlock("unfired_clay_collector", <blockmaterial:Ground>);
unfired_clay_collector.setBlockSoundType(<soundtype:ground>);
unfired_clay_collector.setFullBlock(false);
unfired_clay_collector.setLightOpacity(0);
unfired_clay_collector.setBlockHardness(1.0);
unfired_clay_collector.setToolLevel(0);
unfired_clay_collector.setToolClass("shovel");
unfired_clay_collector.register();

//Unfired clay drain
var unfired_clay_drain = VanillaFactory.createBlock("unfired_clay_drain", <blockmaterial:Ground>);
unfired_clay_drain.setBlockSoundType(<soundtype:ground>);
unfired_clay_drain.setBlockHardness(1.0);
unfired_clay_drain.setToolLevel(0);
unfired_clay_drain.setToolClass("shovel");
unfired_clay_drain.register();

//Tin Plate
var tin_plate = VanillaFactory.createBlock("tin_plate", <blockmaterial:Iron>);
tin_plate.setCreativeTab(<creativetab:buildingBlocks>);
tin_plate.register();

//Iron Plate
var iron_plate = VanillaFactory.createBlock("iron_plate", <blockmaterial:Iron>);
iron_plate.setCreativeTab(<creativetab:buildingBlocks>);
iron_plate.register();

//Electrum Plate
var electrum_plate = VanillaFactory.createBlock("electrum_plate", <blockmaterial:Iron>);
electrum_plate.setCreativeTab(<creativetab:buildingBlocks>);
electrum_plate.register();

//Bronze Plate
var bronze_plate = VanillaFactory.createBlock("bronze_plate", <blockmaterial:Iron>);
bronze_plate.setCreativeTab(<creativetab:buildingBlocks>);
bronze_plate.register();

//Brass Plate
var brass_plate = VanillaFactory.createBlock("brass_plate", <blockmaterial:Iron>);
brass_plate.setCreativeTab(<creativetab:buildingBlocks>);
brass_plate.register();

// Lunarin blocks
// Iron pillar
var lunarinironpillar = VanillaFactory.createBlock("lunarinironpillar", <blockmaterial:Iron>);
lunarinironpillar.setCreativeTab(<creativetab:buildingBlocks>);
lunarinironpillar.setBlockHardness(15);
lunarinironpillar.register();
// Bronze
var lunarin = VanillaFactory.createBlock("lunarinbronzebrick", <blockmaterial:Iron>);
lunarin.setCreativeTab(<creativetab:buildingBlocks>);
lunarin.setBlockHardness(15);
lunarin.register();
// Silver
var silverlunarin = VanillaFactory.createBlock("lunarinsilverbrick", <blockmaterial:Iron>);
silverlunarin.setCreativeTab(<creativetab:rotn_blocks>);
silverlunarin.setBlockHardness(15);
silverlunarin.register();
// Viridium
var viridiumlunarin = VanillaFactory.createBlock("lunarinviridiumbrick", <blockmaterial:Iron>);
viridiumlunarin.setCreativeTab(<creativetab:rotn_blocks>);
viridiumlunarin.setBlockHardness(20);
viridiumlunarin.setToolLevel(1);
viridiumlunarin.register();
// Mythril
var mythrillunarin = VanillaFactory.createBlock("lunarinmythrilbrick", <blockmaterial:Iron>);
mythrillunarin.setCreativeTab(<creativetab:rotn_blocks>);
mythrillunarin.setBlockHardness(25);
mythrillunarin.setToolLevel(2);
mythrillunarin.register();
// Endorium
var endoriumlunarin = VanillaFactory.createBlock("lunarinendoriumbrick", <blockmaterial:Iron>);
endoriumlunarin.setCreativeTab(<creativetab:rotn_blocks>);
endoriumlunarin.setBlockHardness(15);
endoriumlunarin.register();
// Hearth
var heartlunarin = VanillaFactory.createBlock("lunarinheartbrick", <blockmaterial:Iron>);
heartlunarin.setCreativeTab(<creativetab:rotn_blocks>);
heartlunarin.setBlockHardness(15);
heartlunarin.register();
// Ice Dragon Steel
var icelunarin = VanillaFactory.createBlock("lunarinicebrick", <blockmaterial:Iron>);
icelunarin.setCreativeTab(<creativetab:rotn_blocks>);
icelunarin.setBlockHardness(40);
icelunarin.register();
// Fire Dragon Steel
var firelunarin = VanillaFactory.createBlock("lunarinfirebrick", <blockmaterial:Iron>);
firelunarin.setCreativeTab(<creativetab:rotn_blocks>);
firelunarin.setBlockHardness(40);
firelunarin.register();
// Fiery Metal
var fierylunarin = VanillaFactory.createBlock("lunarinfierybrick", <blockmaterial:Iron>);
fierylunarin.setCreativeTab(<creativetab:rotn_blocks>);
fierylunarin.setBlockHardness(15);
fierylunarin.register();
// Knight Metal
var knightlunarin = VanillaFactory.createBlock("lunarinknightbrick", <blockmaterial:Iron>);
knightlunarin.setCreativeTab(<creativetab:rotn_blocks>);
knightlunarin.setBlockHardness(15);
knightlunarin.register();
// Steel
var steellunarin = VanillaFactory.createBlock("lunarinsteelbrick", <blockmaterial:Iron>);
steellunarin.setCreativeTab(<creativetab:rotn_blocks>);
steellunarin.setToolLevel(2);
steellunarin.setBlockHardness(25);
steellunarin.register();
// Sfs
var sfslunarin = VanillaFactory.createBlock("lunarinsfsbrick", <blockmaterial:Iron>);
sfslunarin.setCreativeTab(<creativetab:rotn_blocks>);
sfslunarin.setToolLevel(3);
sfslunarin.setBlockHardness(40);
sfslunarin.register();
// Mediterranean lunarin mama mia brick block
var BBlunarin = VanillaFactory.createBlock("baguettebrick", <blockmaterial:Rock>);
BBlunarin.setCreativeTab(<creativetab:rotn_blocks>);
BBlunarin.setBlockHardness(25);
BBlunarin.register();

// Farlander Style
// exorite
var exoritefarlander = VanillaFactory.createBlock("farlanderexoritebrick", <blockmaterial:Iron>);
exoritefarlander.setCreativeTab(<creativetab:rotn_blocks>);
exoritefarlander.setBlockSoundType(<soundtype:glass>);
exoritefarlander.setBlockHardness(40);
exoritefarlander.register();
// zanite
var zanitefarlander = VanillaFactory.createBlock("farlanderzanitebrick", <blockmaterial:Iron>);
zanitefarlander.setCreativeTab(<creativetab:rotn_blocks>);
zanitefarlander.setBlockSoundType(<soundtype:glass>);
zanitefarlander.setBlockHardness(20);
zanitefarlander.register();
// diamond
var diamondfarlander = VanillaFactory.createBlock("farlanderdiamondbrick", <blockmaterial:Iron>);
diamondfarlander.setCreativeTab(<creativetab:rotn_blocks>);
diamondfarlander.setBlockSoundType(<soundtype:glass>);
diamondfarlander.setBlockHardness(20);
diamondfarlander.register();

// Storage blocks
var witheredblock = VanillaFactory.createBlock("witheredblock", <blockmaterial:Sand>);
witheredblock.setCreativeTab(<creativetab:rotn_blocks>);
witheredblock.setBlockSoundType(<soundtype:sand>);
witheredblock.setGravity(true);
witheredblock.setToolLevel(1);
witheredblock.setToolClass("shovel");
witheredblock.register();

var ardicite = VanillaFactory.createBlock("ardicite", <blockmaterial:Glass>);
ardicite.setCreativeTab(<creativetab:decorations>);
ardicite.setLightValue(0.8);
ardicite.setBlockSoundType(<soundtype:stone>);
ardicite.setBlockHardness(20);
ardicite.setBlockMaterial(<blockmaterial:fire>);
ardicite.register();

var star_block = VanillaFactory.createBlock("star_block", <blockmaterial:Glass>);
star_block.setCreativeTab(<creativetab:rotn_blocks>);
star_block.setLightValue(1.0);
star_block.setBlockSoundType(<soundtype:stone>);
star_block.setBlockHardness(10);
star_block.setBlockMaterial(<blockmaterial:glass>);
star_block.setToolLevel(1);
star_block.register();

var unfiredrefractory = VanillaFactory.createBlock("unfiredrefractory", <blockmaterial:Ground>);
unfiredrefractory.setCreativeTab(<creativetab:rotn_blocks>);
unfiredrefractory.setBlockSoundType(<soundtype:ground>);
unfiredrefractory.setToolClass("shovel");
unfiredrefractory.setToolLevel(0);
unfiredrefractory.register();

var modelingrefractory = VanillaFactory.createBlock("modelingrefractory", <blockmaterial:Ground>);
modelingrefractory.setCreativeTab(<creativetab:rotn_blocks>);
modelingrefractory.setBlockSoundType(<soundtype:ground>);
modelingrefractory.setGravity(true);
modelingrefractory.setToolClass("shovel");
modelingrefractory.setToolLevel(0);
modelingrefractory.register();

var refracotta = VanillaFactory.createBlock("refracotta", <blockmaterial:Rock>);
refracotta.setCreativeTab(<creativetab:rotn_blocks>);
refracotta.setBlockSoundType(<soundtype:stone>);
refracotta.setToolClass("pickaxe");
refracotta.register();

var refracotta_black = VanillaFactory.createBlock("refracotta_black", <blockmaterial:Rock>);
refracotta_black.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_black.setBlockSoundType(<soundtype:stone>);
refracotta_black.setToolClass("pickaxe");
refracotta_black.register();

var refracotta_red = VanillaFactory.createBlock("refracotta_red", <blockmaterial:Rock>);
refracotta_red.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_red.setBlockSoundType(<soundtype:stone>);
refracotta_red.setToolClass("pickaxe");
refracotta_red.register();

var refracotta_green = VanillaFactory.createBlock("refracotta_green", <blockmaterial:Rock>);
refracotta_green.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_green.setBlockSoundType(<soundtype:stone>);
refracotta_green.setToolClass("pickaxe");
refracotta_green.register();

var refracotta_brown = VanillaFactory.createBlock("refracotta_brown", <blockmaterial:Rock>);
refracotta_brown.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_brown.setBlockSoundType(<soundtype:stone>);
refracotta_brown.setToolClass("pickaxe");
refracotta_brown.register();

var refracotta_blue = VanillaFactory.createBlock("refracotta_blue", <blockmaterial:Rock>);
refracotta_blue.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_blue.setBlockSoundType(<soundtype:stone>);
refracotta_blue.setToolClass("pickaxe");
refracotta_blue.register();

var refracotta_purple = VanillaFactory.createBlock("refracotta_purple", <blockmaterial:Rock>);
refracotta_purple.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_purple.setBlockSoundType(<soundtype:stone>);
refracotta_purple.setToolClass("pickaxe");
refracotta_purple.register();

var refracotta_cyan = VanillaFactory.createBlock("refracotta_cyan", <blockmaterial:Rock>);
refracotta_cyan.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_cyan.setBlockSoundType(<soundtype:stone>);
refracotta_cyan.setToolClass("pickaxe");
refracotta_cyan.register();

var refracotta_light_gray = VanillaFactory.createBlock("refracotta_light_gray", <blockmaterial:Rock>);
refracotta_light_gray.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_light_gray.setBlockSoundType(<soundtype:stone>);
refracotta_light_gray.setToolClass("pickaxe");
refracotta_light_gray.register();

var refracotta_gray = VanillaFactory.createBlock("refracotta_gray", <blockmaterial:Rock>);
refracotta_gray.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_gray.setBlockSoundType(<soundtype:stone>);
refracotta_gray.setToolClass("pickaxe");
refracotta_gray.register();

var refracotta_pink = VanillaFactory.createBlock("refracotta_pink", <blockmaterial:Rock>);
refracotta_pink.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_pink.setBlockSoundType(<soundtype:stone>);
refracotta_pink.setToolClass("pickaxe");
refracotta_pink.register();

var refracotta_lime = VanillaFactory.createBlock("refracotta_lime", <blockmaterial:Rock>);
refracotta_lime.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_lime.setBlockSoundType(<soundtype:stone>);
refracotta_lime.setToolClass("pickaxe");
refracotta_lime.register();

var refracotta_yellow = VanillaFactory.createBlock("refracotta_yellow", <blockmaterial:Rock>);
refracotta_yellow.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_yellow.setBlockSoundType(<soundtype:stone>);
refracotta_yellow.setToolClass("pickaxe");
refracotta_yellow.register();

var refracotta_light_blue = VanillaFactory.createBlock("refracotta_light_blue", <blockmaterial:Rock>);
refracotta_light_blue.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_light_blue.setBlockSoundType(<soundtype:stone>);
refracotta_light_blue.setToolClass("pickaxe");
refracotta_light_blue.register();

var refracotta_magenta = VanillaFactory.createBlock("refracotta_magenta", <blockmaterial:Rock>);
refracotta_magenta.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_magenta.setBlockSoundType(<soundtype:stone>);
refracotta_magenta.setToolClass("pickaxe");
refracotta_magenta.register();

var refracotta_orange = VanillaFactory.createBlock("refracotta_orange", <blockmaterial:Rock>);
refracotta_orange.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_orange.setBlockSoundType(<soundtype:stone>);
refracotta_orange.setToolClass("pickaxe");
refracotta_orange.register();

var refracotta_white = VanillaFactory.createBlock("refracotta_white", <blockmaterial:Rock>);
refracotta_white.setCreativeTab(<creativetab:rotn_blocks>);
refracotta_white.setBlockSoundType(<soundtype:stone>);
refracotta_white.setToolClass("pickaxe");
refracotta_white.register();

// Wood Boards
// oak
var oak_boards = VanillaFactory.createBlock("oak_boards", <blockmaterial:Wood>);
oak_boards.setCreativeTab(<creativetab:rotn_blocks>);
oak_boards.setToolClass("pickaxe");
oak_boards.setBlockHardness(20.0);
oak_boards.setToolLevel(1);
oak_boards.register();
// spruce
var spruce_boards = VanillaFactory.createBlock("spruce_boards", <blockmaterial:Wood>);
spruce_boards.setCreativeTab(<creativetab:rotn_blocks>);
spruce_boards.setToolClass("pickaxe");
spruce_boards.setBlockHardness(20.0);
spruce_boards.setToolLevel(1);
spruce_boards.register();
// birch
var birch_boards = VanillaFactory.createBlock("birch_boards", <blockmaterial:Wood>);
birch_boards.setCreativeTab(<creativetab:rotn_blocks>);
birch_boards.setToolClass("pickaxe");
birch_boards.setBlockHardness(20.0);
birch_boards.setToolLevel(1);
birch_boards.register();
// jungle
var jungle_boards = VanillaFactory.createBlock("jungle_boards", <blockmaterial:Wood>);
jungle_boards.setCreativeTab(<creativetab:rotn_blocks>);
jungle_boards.setToolClass("pickaxe");
jungle_boards.setBlockHardness(20.0);
jungle_boards.setToolLevel(1);
jungle_boards.register();
// acacia
var acacia_boards = VanillaFactory.createBlock("acacia_boards", <blockmaterial:Wood>);
acacia_boards.setCreativeTab(<creativetab:rotn_blocks>);
acacia_boards.setToolClass("pickaxe");
acacia_boards.setBlockHardness(20.0);
acacia_boards.setToolLevel(1);
acacia_boards.register();
// dark oak
var dark_oak_boards = VanillaFactory.createBlock("dark_oak_boards", <blockmaterial:Wood>);
dark_oak_boards.setCreativeTab(<creativetab:rotn_blocks>);
dark_oak_boards.setToolClass("pickaxe");
dark_oak_boards.setBlockHardness(20.0);
dark_oak_boards.setToolLevel(1);
dark_oak_boards.register();
// stalagnate
var stalagnate_boards = VanillaFactory.createBlock("stalagnate_boards", <blockmaterial:Wood>);
stalagnate_boards.setCreativeTab(<creativetab:rotn_blocks>);
stalagnate_boards.setToolClass("pickaxe");
stalagnate_boards.setBlockHardness(20.0);
stalagnate_boards.setToolLevel(1);
stalagnate_boards.register();
// sacred oak
var sacred_oak_boards = VanillaFactory.createBlock("sacred_oak_boards", <blockmaterial:Wood>);
sacred_oak_boards.setCreativeTab(<creativetab:rotn_blocks>);
sacred_oak_boards.setToolClass("pickaxe");
sacred_oak_boards.setBlockHardness(20.0);
sacred_oak_boards.setToolLevel(1);
sacred_oak_boards.register();
// cherry
var cherry_boards = VanillaFactory.createBlock("cherry_boards", <blockmaterial:Wood>);
cherry_boards.setCreativeTab(<creativetab:rotn_blocks>);
cherry_boards.setToolClass("pickaxe");
cherry_boards.setBlockHardness(20.0);
cherry_boards.setToolLevel(1);
cherry_boards.register();
// umbran
var umbran_boards = VanillaFactory.createBlock("umbran_boards", <blockmaterial:Wood>);
umbran_boards.setCreativeTab(<creativetab:rotn_blocks>);
umbran_boards.setToolClass("pickaxe");
umbran_boards.setBlockHardness(20.0);
umbran_boards.setToolLevel(1);
umbran_boards.register();
// fir
var fir_boards = VanillaFactory.createBlock("fir_boards", <blockmaterial:Wood>);
fir_boards.setCreativeTab(<creativetab:rotn_blocks>);
fir_boards.setToolClass("pickaxe");
fir_boards.setBlockHardness(20.0);
fir_boards.setToolLevel(1);
fir_boards.register();
// magic
var magic_boards = VanillaFactory.createBlock("magic_boards", <blockmaterial:Wood>);
magic_boards.setCreativeTab(<creativetab:rotn_blocks>);
magic_boards.setToolClass("pickaxe");
magic_boards.setBlockHardness(20.0);
magic_boards.setToolLevel(1);
magic_boards.register();
// mangrove
var mangrove_boards = VanillaFactory.createBlock("mangrove_boards", <blockmaterial:Wood>);
mangrove_boards.setCreativeTab(<creativetab:rotn_blocks>);
mangrove_boards.setToolClass("pickaxe");
mangrove_boards.setBlockHardness(20.0);
mangrove_boards.setToolLevel(1);
mangrove_boards.register();
// palm
var palm_boards = VanillaFactory.createBlock("palm_boards", <blockmaterial:Wood>);
palm_boards.setCreativeTab(<creativetab:rotn_blocks>);
palm_boards.setToolClass("pickaxe");
palm_boards.setBlockHardness(20.0);
palm_boards.setToolLevel(1);
palm_boards.register();
// redwood
var redwood_boards = VanillaFactory.createBlock("redwood_boards", <blockmaterial:Wood>);
redwood_boards.setCreativeTab(<creativetab:rotn_blocks>);
redwood_boards.setToolClass("pickaxe");
redwood_boards.setBlockHardness(20.0);
redwood_boards.setToolLevel(1);
redwood_boards.register();
// willow
var willow_boards = VanillaFactory.createBlock("willow_boards", <blockmaterial:Wood>);
willow_boards.setCreativeTab(<creativetab:rotn_blocks>);
willow_boards.setToolClass("pickaxe");
willow_boards.setBlockHardness(20.0);
willow_boards.setToolLevel(1);
willow_boards.register();
// pine
var pine_boards = VanillaFactory.createBlock("pine_boards", <blockmaterial:Wood>);
pine_boards.setCreativeTab(<creativetab:rotn_blocks>);
pine_boards.setToolClass("pickaxe");
pine_boards.setBlockHardness(20.0);
pine_boards.setToolLevel(1);
pine_boards.register();
// hellbark
var hellbark_boards = VanillaFactory.createBlock("hellbark_boards", <blockmaterial:Wood>);
hellbark_boards.setCreativeTab(<creativetab:rotn_blocks>);
hellbark_boards.setToolClass("pickaxe");
hellbark_boards.setBlockHardness(20.0);
hellbark_boards.setToolLevel(1);
hellbark_boards.register();
// jacaranda
var jacaranda_boards = VanillaFactory.createBlock("jacaranda_boards", <blockmaterial:Wood>);
jacaranda_boards.setCreativeTab(<creativetab:rotn_blocks>);
jacaranda_boards.setToolClass("pickaxe");
jacaranda_boards.setBlockHardness(20.0);
jacaranda_boards.setToolLevel(1);
jacaranda_boards.register();
// mahogany
var mahogany_boards = VanillaFactory.createBlock("mahogany_boards", <blockmaterial:Wood>);
mahogany_boards.setCreativeTab(<creativetab:rotn_blocks>);
mahogany_boards.setToolClass("pickaxe");
mahogany_boards.setBlockHardness(20.0);
mahogany_boards.setToolLevel(1);
mahogany_boards.register();
// ebony
var ebony_boards = VanillaFactory.createBlock("ebony_boards", <blockmaterial:Wood>);
ebony_boards.setCreativeTab(<creativetab:rotn_blocks>);
ebony_boards.setToolClass("pickaxe");
ebony_boards.setBlockHardness(20.0);
ebony_boards.setToolLevel(1);
ebony_boards.register();
// eucalyptus
var eucalyptus_boards = VanillaFactory.createBlock("eucalyptus_boards", <blockmaterial:Wood>);
eucalyptus_boards.setCreativeTab(<creativetab:rotn_blocks>);
eucalyptus_boards.setToolClass("pickaxe");
eucalyptus_boards.setBlockHardness(20.0);
eucalyptus_boards.setToolLevel(1);
eucalyptus_boards.register();
// tenebra
var tenebra_boards = VanillaFactory.createBlock("tenebra_boards", <blockmaterial:Wood>);
tenebra_boards.setCreativeTab(<creativetab:rotn_blocks>);
tenebra_boards.setToolClass("pickaxe");
tenebra_boards.setBlockHardness(20.0);
tenebra_boards.setToolLevel(1);
tenebra_boards.register();
// dreadwood
var dreadwood_boards = VanillaFactory.createBlock("dreadwood_boards", <blockmaterial:Wood>);
dreadwood_boards.setCreativeTab(<creativetab:rotn_blocks>);
dreadwood_boards.setToolClass("pickaxe");
dreadwood_boards.setBlockHardness(20.0);
dreadwood_boards.setToolLevel(1);
dreadwood_boards.register();
// olive
var olive_boards = VanillaFactory.createBlock("olive_boards", <blockmaterial:Wood>);
olive_boards.setCreativeTab(<creativetab:rotn_blocks>);
olive_boards.setToolClass("pickaxe");
olive_boards.setBlockHardness(20.0);
olive_boards.setToolLevel(1);
olive_boards.register();
// ironwood
var ironwood_boards = VanillaFactory.createBlock("ironwood_boards", <blockmaterial:Wood>);
ironwood_boards.setCreativeTab(<creativetab:rotn_blocks>);
ironwood_boards.setToolClass("pickaxe");
ironwood_boards.setBlockHardness(20.0);
ironwood_boards.setToolLevel(1);
ironwood_boards.register();
// wyrmwood
var wyrmwood_boards = VanillaFactory.createBlock("wyrmwood_boards", <blockmaterial:Wood>);
wyrmwood_boards.setCreativeTab(<creativetab:rotn_blocks>);
wyrmwood_boards.setToolClass("pickaxe");
wyrmwood_boards.setBlockHardness(20.0);
wyrmwood_boards.setToolLevel(1);
wyrmwood_boards.register();
// skywood
var skywood_boards = VanillaFactory.createBlock("skywood_boards", <blockmaterial:Wood>);
skywood_boards.setCreativeTab(<creativetab:rotn_blocks>);
skywood_boards.setToolClass("pickaxe");
skywood_boards.setBlockHardness(20.0);
skywood_boards.setToolLevel(1);
skywood_boards.register();

// Wood lacquered
// oak
var oak_lacquered = VanillaFactory.createBlock("oak_lacquered", <blockmaterial:Rock>);
oak_lacquered.setBlockSoundType(<soundtype:wood>);
oak_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
oak_lacquered.setToolClass("pickaxe");
oak_lacquered.setBlockHardness(29.5);
oak_lacquered.setToolLevel(1);
oak_lacquered.register();
// spruce
var spruce_lacquered = VanillaFactory.createBlock("spruce_lacquered", <blockmaterial:Rock>);
spruce_lacquered.setBlockSoundType(<soundtype:wood>);
spruce_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
spruce_lacquered.setToolClass("pickaxe");
spruce_lacquered.setBlockHardness(29.5);
spruce_lacquered.setToolLevel(1);
spruce_lacquered.register();
// birch
var birch_lacquered = VanillaFactory.createBlock("birch_lacquered", <blockmaterial:Rock>);
birch_lacquered.setBlockSoundType(<soundtype:wood>);
birch_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
birch_lacquered.setToolClass("pickaxe");
birch_lacquered.setBlockHardness(29.5);
birch_lacquered.setToolLevel(1);
birch_lacquered.register();
// jungle
var jungle_lacquered = VanillaFactory.createBlock("jungle_lacquered", <blockmaterial:Rock>);
jungle_lacquered.setBlockSoundType(<soundtype:wood>);
jungle_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
jungle_lacquered.setToolClass("pickaxe");
jungle_lacquered.setBlockHardness(29.5);
jungle_lacquered.setToolLevel(1);
jungle_lacquered.register();
// acacia
var acacia_lacquered = VanillaFactory.createBlock("acacia_lacquered", <blockmaterial:Rock>);
acacia_lacquered.setBlockSoundType(<soundtype:wood>);
acacia_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
acacia_lacquered.setToolClass("pickaxe");
acacia_lacquered.setBlockHardness(29.5);
acacia_lacquered.setToolLevel(1);
acacia_lacquered.register();
// dark oak
var dark_oak_lacquered = VanillaFactory.createBlock("dark_oak_lacquered", <blockmaterial:Rock>);
dark_oak_lacquered.setBlockSoundType(<soundtype:wood>);
dark_oak_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
dark_oak_lacquered.setToolClass("pickaxe");
dark_oak_lacquered.setBlockHardness(29.5);
dark_oak_lacquered.setToolLevel(1);
dark_oak_lacquered.register();
// stalagnate
var stalagnate_lacquered = VanillaFactory.createBlock("stalagnate_lacquered", <blockmaterial:Rock>);
stalagnate_lacquered.setBlockSoundType(<soundtype:wood>);
stalagnate_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
stalagnate_lacquered.setToolClass("pickaxe");
stalagnate_lacquered.setBlockHardness(29.5);
stalagnate_lacquered.setToolLevel(1);
stalagnate_lacquered.register();
// sacred oak
var sacred_oak_lacquered = VanillaFactory.createBlock("sacred_oak_lacquered", <blockmaterial:Rock>);
sacred_oak_lacquered.setBlockSoundType(<soundtype:wood>);
sacred_oak_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
sacred_oak_lacquered.setToolClass("pickaxe");
sacred_oak_lacquered.setBlockHardness(29.5);
sacred_oak_lacquered.setToolLevel(1);
sacred_oak_lacquered.register();
// cherry
var cherry_lacquered = VanillaFactory.createBlock("cherry_lacquered", <blockmaterial:Rock>);
cherry_lacquered.setBlockSoundType(<soundtype:wood>);
cherry_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
cherry_lacquered.setToolClass("pickaxe");
cherry_lacquered.setBlockHardness(29.5);
cherry_lacquered.setToolLevel(1);
cherry_lacquered.register();
// umbran
var umbran_lacquered = VanillaFactory.createBlock("umbran_lacquered", <blockmaterial:Rock>);
umbran_lacquered.setBlockSoundType(<soundtype:wood>);
umbran_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
umbran_lacquered.setToolClass("pickaxe");
umbran_lacquered.setBlockHardness(29.5);
umbran_lacquered.setToolLevel(1);
umbran_lacquered.register();
// fir
var fir_lacquered = VanillaFactory.createBlock("fir_lacquered", <blockmaterial:Rock>);
fir_lacquered.setBlockSoundType(<soundtype:wood>);
fir_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
fir_lacquered.setToolClass("pickaxe");
fir_lacquered.setBlockHardness(29.5);
fir_lacquered.setToolLevel(1);
fir_lacquered.register();
// magic
var magic_lacquered = VanillaFactory.createBlock("magic_lacquered", <blockmaterial:Rock>);
magic_lacquered.setBlockSoundType(<soundtype:wood>);
magic_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
magic_lacquered.setToolClass("pickaxe");
magic_lacquered.setBlockHardness(29.5);
magic_lacquered.setToolLevel(1);
magic_lacquered.register();
// mangrove
var mangrove_lacquered = VanillaFactory.createBlock("mangrove_lacquered", <blockmaterial:Rock>);
mangrove_lacquered.setBlockSoundType(<soundtype:wood>);
mangrove_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
mangrove_lacquered.setToolClass("pickaxe");
mangrove_lacquered.setBlockHardness(29.5);
mangrove_lacquered.setToolLevel(1);
mangrove_lacquered.register();
// palm
var palm_lacquered = VanillaFactory.createBlock("palm_lacquered", <blockmaterial:Rock>);
palm_lacquered.setBlockSoundType(<soundtype:wood>);
palm_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
palm_lacquered.setToolClass("pickaxe");
palm_lacquered.setBlockHardness(29.5);
palm_lacquered.setToolLevel(1);
palm_lacquered.register();
// redwood
var redwood_lacquered = VanillaFactory.createBlock("redwood_lacquered", <blockmaterial:Rock>);
redwood_lacquered.setBlockSoundType(<soundtype:wood>);
redwood_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
redwood_lacquered.setToolClass("pickaxe");
redwood_lacquered.setBlockHardness(29.5);
redwood_lacquered.setToolLevel(1);
redwood_lacquered.register();
// willow
var willow_lacquered = VanillaFactory.createBlock("willow_lacquered", <blockmaterial:Rock>);
willow_lacquered.setBlockSoundType(<soundtype:wood>);
willow_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
willow_lacquered.setToolClass("pickaxe");
willow_lacquered.setBlockHardness(29.5);
willow_lacquered.setToolLevel(1);
willow_lacquered.register();
// pine
var pine_lacquered = VanillaFactory.createBlock("pine_lacquered", <blockmaterial:Rock>);
pine_lacquered.setBlockSoundType(<soundtype:wood>);
pine_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
pine_lacquered.setToolClass("pickaxe");
pine_lacquered.setBlockHardness(29.5);
pine_lacquered.setToolLevel(1);
pine_lacquered.register();
// hellbark
var hellbark_lacquered = VanillaFactory.createBlock("hellbark_lacquered", <blockmaterial:Rock>);
hellbark_lacquered.setBlockSoundType(<soundtype:wood>);
hellbark_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
hellbark_lacquered.setToolClass("pickaxe");
hellbark_lacquered.setBlockHardness(29.5);
hellbark_lacquered.setToolLevel(1);
hellbark_lacquered.register();
// jacaranda
var jacaranda_lacquered = VanillaFactory.createBlock("jacaranda_lacquered", <blockmaterial:Rock>);
jacaranda_lacquered.setBlockSoundType(<soundtype:wood>);
jacaranda_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
jacaranda_lacquered.setToolClass("pickaxe");
jacaranda_lacquered.setBlockHardness(29.5);
jacaranda_lacquered.setToolLevel(1);
jacaranda_lacquered.register();
// mahogany
var mahogany_lacquered = VanillaFactory.createBlock("mahogany_lacquered", <blockmaterial:Rock>);
mahogany_lacquered.setBlockSoundType(<soundtype:wood>);
mahogany_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
mahogany_lacquered.setToolClass("pickaxe");
mahogany_lacquered.setBlockHardness(29.5);
mahogany_lacquered.setToolLevel(1);
mahogany_lacquered.register();
// ebony
var ebony_lacquered = VanillaFactory.createBlock("ebony_lacquered", <blockmaterial:Rock>);
ebony_lacquered.setBlockSoundType(<soundtype:wood>);
ebony_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
ebony_lacquered.setToolClass("pickaxe");
ebony_lacquered.setBlockHardness(29.5);
ebony_lacquered.setToolLevel(1);
ebony_lacquered.register();
// eucalyptus
var eucalyptus_lacquered = VanillaFactory.createBlock("eucalyptus_lacquered", <blockmaterial:Rock>);
eucalyptus_lacquered.setBlockSoundType(<soundtype:wood>);
eucalyptus_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
eucalyptus_lacquered.setToolClass("pickaxe");
eucalyptus_lacquered.setBlockHardness(29.5);
eucalyptus_lacquered.setToolLevel(1);
eucalyptus_lacquered.register();
// tenebra
var tenebra_lacquered = VanillaFactory.createBlock("tenebra_lacquered", <blockmaterial:Rock>);
tenebra_lacquered.setBlockSoundType(<soundtype:wood>);
tenebra_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
tenebra_lacquered.setToolClass("pickaxe");
tenebra_lacquered.setBlockHardness(29.5);
tenebra_lacquered.setToolLevel(1);
tenebra_lacquered.register();
// dreadwood
var dreadwood_lacquered = VanillaFactory.createBlock("dreadwood_lacquered", <blockmaterial:Rock>);
dreadwood_lacquered.setBlockSoundType(<soundtype:wood>);
dreadwood_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
dreadwood_lacquered.setToolClass("pickaxe");
dreadwood_lacquered.setBlockHardness(29.5);
dreadwood_lacquered.setToolLevel(1);
dreadwood_lacquered.register();
// olive
var olive_lacquered = VanillaFactory.createBlock("olive_lacquered", <blockmaterial:Rock>);
olive_lacquered.setBlockSoundType(<soundtype:wood>);
olive_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
olive_lacquered.setToolClass("pickaxe");
olive_lacquered.setBlockHardness(29.5);
olive_lacquered.setToolLevel(1);
olive_lacquered.register();
// ironwood
var ironwood_lacquered = VanillaFactory.createBlock("ironwood_lacquered", <blockmaterial:Rock>);
ironwood_lacquered.setBlockSoundType(<soundtype:wood>);
ironwood_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
ironwood_lacquered.setToolClass("pickaxe");
ironwood_lacquered.setBlockHardness(32.5);
ironwood_lacquered.setToolLevel(1);
ironwood_lacquered.register();
// wyrmwood
var wyrmwood_lacquered = VanillaFactory.createBlock("wyrmwood_lacquered", <blockmaterial:Rock>);
wyrmwood_lacquered.setBlockSoundType(<soundtype:wood>);
wyrmwood_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
wyrmwood_lacquered.setToolClass("pickaxe");
wyrmwood_lacquered.setBlockHardness(29.5);
wyrmwood_lacquered.setToolLevel(1);
wyrmwood_lacquered.register();
// skywood
var skywood_lacquered = VanillaFactory.createBlock("skywood_lacquered", <blockmaterial:Rock>);
skywood_lacquered.setBlockSoundType(<soundtype:wood>);
skywood_lacquered.setCreativeTab(<creativetab:rotn_blocks>);
skywood_lacquered.setToolClass("pickaxe");
skywood_lacquered.setBlockHardness(29.5);
skywood_lacquered.setToolLevel(1);
skywood_lacquered.register();

// Loose Bricks
// Mud
var loose_mud_bricks = VanillaFactory.createBlock("loose_mud_bricks", <blockmaterial:Rock>);
loose_mud_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_mud_bricks.setGravity(true);
loose_mud_bricks.setToolLevel(1);
loose_mud_bricks.register();
// Clay
var loose_clay_bricks = VanillaFactory.createBlock("loose_clay_bricks", <blockmaterial:Rock>);
loose_clay_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_clay_bricks.setGravity(true);
loose_clay_bricks.setToolLevel(1);
loose_clay_bricks.register();
// Adobe
var loose_adobe_bricks = VanillaFactory.createBlock("loose_adobe_bricks", <blockmaterial:Rock>);
loose_adobe_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_adobe_bricks.setGravity(true);
loose_adobe_bricks.setToolLevel(1);
loose_adobe_bricks.register();
// Masonry
var loose_stone_bricks = VanillaFactory.createBlock("loose_stone_bricks", <blockmaterial:Rock>);
loose_stone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_stone_bricks.setGravity(true);
loose_stone_bricks.setToolLevel(1);
loose_stone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_stone_bricks.register();
// Holystone
var loose_holystone_bricks = VanillaFactory.createBlock("loose_holystone_bricks", <blockmaterial:Rock>);
loose_holystone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_holystone_bricks.setGravity(true);
loose_holystone_bricks.setToolLevel(1);
loose_holystone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_holystone_bricks.register();
// Sandstone
var loose_sandstone_bricks = VanillaFactory.createBlock("loose_sandstone_bricks", <blockmaterial:Rock>);
loose_sandstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_sandstone_bricks.setGravity(true);
loose_sandstone_bricks.setToolLevel(1);
loose_sandstone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_sandstone_bricks.register();
// Red Sandstone
var loose_red_sandstone_bricks = VanillaFactory.createBlock("loose_red_sandstone_bricks", <blockmaterial:Rock>);
loose_red_sandstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_red_sandstone_bricks.setGravity(true);
loose_red_sandstone_bricks.setToolLevel(1);
loose_red_sandstone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_red_sandstone_bricks.register();
//White Sandstone
var loose_white_sandstone_bricks = VanillaFactory.createBlock("loose_white_sandstone_bricks", <blockmaterial:Rock>);
loose_white_sandstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_white_sandstone_bricks.setGravity(true);
loose_white_sandstone_bricks.setToolLevel(1);
loose_white_sandstone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_white_sandstone_bricks.register();
//Red Granite Sandstone
var loose_red_granite_sandstone_bricks = VanillaFactory.createBlock("loose_red_granite_sandstone_bricks", <blockmaterial:Rock>);
loose_red_granite_sandstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_red_granite_sandstone_bricks.setGravity(true);
loose_red_granite_sandstone_bricks.setToolLevel(1);
loose_red_granite_sandstone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_red_granite_sandstone_bricks.register();
// Soulsandstone
var loose_soulsandstone_bricks = VanillaFactory.createBlock("loose_soulsandstone_bricks", <blockmaterial:Rock>);
loose_soulsandstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_soulsandstone_bricks.setGravity(true);
loose_soulsandstone_bricks.setToolLevel(1);
loose_soulsandstone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_soulsandstone_bricks.register();
// Nether
var loose_nether_bricks = VanillaFactory.createBlock("loose_nether_bricks", <blockmaterial:Rock>);
loose_nether_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_nether_bricks.setGravity(true);
loose_nether_bricks.setToolLevel(1);
loose_nether_bricks.register();
// Red Nether
var loose_red_nether_bricks = VanillaFactory.createBlock("loose_red_nether_bricks", <blockmaterial:Rock>);
loose_red_nether_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_red_nether_bricks.setGravity(true);
loose_red_nether_bricks.setToolLevel(1);
loose_red_nether_bricks.register();
// Fiery Nether
var loose_fiery_nether_bricks = VanillaFactory.createBlock("loose_fiery_nether_bricks", <blockmaterial:Rock>);
loose_fiery_nether_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_fiery_nether_bricks.setGravity(true);
loose_fiery_nether_bricks.setToolLevel(1);
loose_fiery_nether_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_fiery_nether_bricks.register();
// Basalt Nether
var loose_basalt_nether_bricks = VanillaFactory.createBlock("loose_basalt_nether_bricks", <blockmaterial:Rock>);
loose_basalt_nether_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_basalt_nether_bricks.setGravity(true);
loose_basalt_nether_bricks.setToolLevel(1);
loose_basalt_nether_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_basalt_nether_bricks.register();
// Refractory
var loose_refractory_bricks = VanillaFactory.createBlock("loose_refractory_bricks", <blockmaterial:Rock>);
loose_refractory_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_refractory_bricks.setGravity(true);
loose_refractory_bricks.setToolLevel(1);
loose_refractory_bricks.register();
// Porcelain
var loose_porcelain_bricks = VanillaFactory.createBlock("loose_porcelain_bricks", <blockmaterial:Rock>);
loose_porcelain_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_porcelain_bricks.setGravity(true);
loose_porcelain_bricks.setToolLevel(1);
loose_porcelain_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_porcelain_bricks.register();
// Quartzite
var loose_big_quartzite_bricks = VanillaFactory.createBlock("loose_big_quartzite_bricks", <blockmaterial:Rock>);
loose_big_quartzite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_quartzite_bricks.setGravity(true);
loose_big_quartzite_bricks.setToolLevel(1);
loose_big_quartzite_bricks.register();
// End
var loose_big_end_bricks = VanillaFactory.createBlock("loose_big_end_bricks", <blockmaterial:Rock>);
loose_big_end_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_end_bricks.setGravity(true);
loose_big_end_bricks.setToolLevel(1);
loose_big_end_bricks.register();
// White
var loose_big_white_bricks = VanillaFactory.createBlock("loose_big_white_bricks", <blockmaterial:Rock>);
loose_big_white_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_white_bricks.setGravity(true);
loose_big_white_bricks.setToolLevel(1);
loose_big_white_bricks.register();
// Dreadstone
var loose_big_dreadstone_bricks = VanillaFactory.createBlock("loose_big_dreadstone_bricks", <blockmaterial:Rock>);
loose_big_dreadstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_dreadstone_bricks.setGravity(true);
loose_big_dreadstone_bricks.setToolLevel(1);
loose_big_dreadstone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_big_dreadstone_bricks.register();
// Red Granite
var loose_big_red_granite_bricks = VanillaFactory.createBlock("loose_big_red_granite_bricks", <blockmaterial:Rock>);
loose_big_red_granite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_red_granite_bricks.setGravity(true);
loose_big_red_granite_bricks.setToolLevel(1);
loose_big_red_granite_bricks.register();
// Black Granite
var loose_big_black_granite_bricks = VanillaFactory.createBlock("loose_big_black_granite_bricks", <blockmaterial:Rock>);
loose_big_black_granite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_black_granite_bricks.setGravity(true);
loose_big_black_granite_bricks.setToolLevel(1);
loose_big_black_granite_bricks.register();
// Rhyolite
var loose_big_rhyolite_bricks = VanillaFactory.createBlock("loose_big_rhyolite_bricks", <blockmaterial:Rock>);
loose_big_rhyolite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_rhyolite_bricks.setGravity(true);
loose_big_rhyolite_bricks.setToolLevel(1);
loose_big_rhyolite_bricks.register();
// Andesite
var loose_big_andesite_bricks = VanillaFactory.createBlock("loose_big_andesite_bricks", <blockmaterial:Rock>);
loose_big_andesite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_andesite_bricks.setGravity(true);
loose_big_andesite_bricks.setToolLevel(1);
loose_big_andesite_bricks.register();
// Gabbro
var loose_big_gabbro_bricks = VanillaFactory.createBlock("loose_big_gabbro_bricks", <blockmaterial:Rock>);
loose_big_gabbro_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_gabbro_bricks.setGravity(true);
loose_big_gabbro_bricks.setToolLevel(1);
loose_big_gabbro_bricks.register();
// Basalt
var loose_big_basalt_bricks = VanillaFactory.createBlock("loose_big_basalt_bricks", <blockmaterial:Rock>);
loose_big_basalt_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_basalt_bricks.setGravity(true);
loose_big_basalt_bricks.setToolLevel(1);
loose_big_basalt_bricks.register();
// Komatiite
var loose_big_komatiite_bricks = VanillaFactory.createBlock("loose_big_komatiite_bricks", <blockmaterial:Rock>);
loose_big_komatiite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_komatiite_bricks.setGravity(true);
loose_big_komatiite_bricks.setToolLevel(1);
loose_big_komatiite_bricks.register();
// Dacite
var loose_big_dacite_bricks = VanillaFactory.createBlock("loose_big_dacite_bricks", <blockmaterial:Rock>);
loose_big_dacite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_dacite_bricks.setGravity(true);
loose_big_dacite_bricks.setToolLevel(1);
loose_big_dacite_bricks.register();
// Gneiss
var loose_big_gneiss_bricks = VanillaFactory.createBlock("loose_big_gneiss_bricks", <blockmaterial:Rock>);
loose_big_gneiss_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_gneiss_bricks.setGravity(true);
loose_big_gneiss_bricks.setToolLevel(1);
loose_big_gneiss_bricks.register();
// Eclogite
var loose_big_eclogite_bricks = VanillaFactory.createBlock("loose_big_eclogite_bricks", <blockmaterial:Rock>);
loose_big_eclogite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_eclogite_bricks.setGravity(true);
loose_big_eclogite_bricks.setToolLevel(1);
loose_big_eclogite_bricks.register();
// Marble
var loose_big_marble_bricks = VanillaFactory.createBlock("loose_big_marble_bricks", <blockmaterial:Rock>);
loose_big_marble_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_marble_bricks.setGravity(true);
loose_big_marble_bricks.setToolLevel(1);
loose_big_marble_bricks.register();
// Blueschist
var loose_big_blueschist_bricks = VanillaFactory.createBlock("loose_big_blueschist_bricks", <blockmaterial:Rock>);
loose_big_blueschist_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_blueschist_bricks.setGravity(true);
loose_big_blueschist_bricks.setToolLevel(1);
loose_big_blueschist_bricks.register();
// Greenschist
var loose_big_greenschist_bricks = VanillaFactory.createBlock("loose_big_greenschist_bricks", <blockmaterial:Rock>);
loose_big_greenschist_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_greenschist_bricks.setGravity(true);
loose_big_greenschist_bricks.setToolLevel(1);
loose_big_greenschist_bricks.register();
// Soapstone
var loose_big_soapstone_bricks = VanillaFactory.createBlock("loose_big_soapstone_bricks", <blockmaterial:Rock>);
loose_big_soapstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_soapstone_bricks.setGravity(true);
loose_big_soapstone_bricks.setToolLevel(1);
loose_big_soapstone_bricks.register();
// Migmatite
var loose_big_migmatite_bricks = VanillaFactory.createBlock("loose_big_migmatite_bricks", <blockmaterial:Rock>);
loose_big_migmatite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_migmatite_bricks.setGravity(true);
loose_big_migmatite_bricks.setToolLevel(1);
loose_big_migmatite_bricks.register();
// Serpentinite
var loose_big_serpentinite_bricks = VanillaFactory.createBlock("loose_big_serpentinite_bricks", <blockmaterial:Rock>);
loose_big_serpentinite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_serpentinite_bricks.setGravity(true);
loose_big_serpentinite_bricks.setToolLevel(1);
loose_big_serpentinite_bricks.register();
// Limestone
var loose_big_limestone_bricks = VanillaFactory.createBlock("loose_big_limestone_bricks", <blockmaterial:Rock>);
loose_big_limestone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_limestone_bricks.setGravity(true);
loose_big_limestone_bricks.setToolLevel(1);
loose_big_limestone_bricks.register();
// Chalk
var loose_big_chalk_bricks = VanillaFactory.createBlock("loose_big_chalk_bricks", <blockmaterial:Rock>);
loose_big_chalk_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_chalk_bricks.setGravity(true);
loose_big_chalk_bricks.setToolLevel(1);
loose_big_chalk_bricks.register();
// Shale
var loose_big_shale_bricks = VanillaFactory.createBlock("loose_big_shale_bricks", <blockmaterial:Rock>);
loose_big_shale_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_shale_bricks.setGravity(true);
loose_big_shale_bricks.setToolLevel(1);
loose_big_shale_bricks.register();
// Siltstone
var loose_big_siltstone_bricks = VanillaFactory.createBlock("loose_big_siltstone_bricks", <blockmaterial:Rock>);
loose_big_siltstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_siltstone_bricks.setGravity(true);
loose_big_siltstone_bricks.setToolLevel(1);
loose_big_siltstone_bricks.register();
// Lignite
var loose_big_lignite_bricks = VanillaFactory.createBlock("loose_big_lignite_bricks", <blockmaterial:Rock>);
loose_big_lignite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_lignite_bricks.setGravity(true);
loose_big_lignite_bricks.setToolLevel(1);
loose_big_lignite_bricks.register();
// Dolomite
var loose_big_dolomite_bricks = VanillaFactory.createBlock("loose_big_dolomite_bricks", <blockmaterial:Rock>);
loose_big_dolomite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_dolomite_bricks.setGravity(true);
loose_big_dolomite_bricks.setToolLevel(1);
loose_big_dolomite_bricks.register();
// Greywacke
var loose_big_greywacke_bricks = VanillaFactory.createBlock("loose_big_greywacke_bricks", <blockmaterial:Rock>);
loose_big_greywacke_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_greywacke_bricks.setGravity(true);
loose_big_greywacke_bricks.setToolLevel(1);
loose_big_greywacke_bricks.register();
// Chert
var loose_big_chert_bricks = VanillaFactory.createBlock("loose_big_chert_bricks", <blockmaterial:Rock>);
loose_big_chert_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_chert_bricks.setGravity(true);
loose_big_chert_bricks.setToolLevel(1);
loose_big_chert_bricks.register();
// Purple Slate
var loose_big_purple_slate_bricks = VanillaFactory.createBlock("loose_big_purple_slate_bricks", <blockmaterial:Rock>);
loose_big_purple_slate_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_purple_slate_bricks.setGravity(true);
loose_big_purple_slate_bricks.setToolLevel(1);
loose_big_purple_slate_bricks.register();
// Blue Slate
var loose_big_blue_slate_bricks = VanillaFactory.createBlock("loose_big_blue_slate_bricks", <blockmaterial:Rock>);
loose_big_blue_slate_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_blue_slate_bricks.setGravity(true);
loose_big_blue_slate_bricks.setToolLevel(1);
loose_big_blue_slate_bricks.register();
// Green Slate
var loose_big_green_slate_bricks = VanillaFactory.createBlock("loose_big_green_slate_bricks", <blockmaterial:Rock>);
loose_big_green_slate_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_green_slate_bricks.setGravity(true);
loose_big_green_slate_bricks.setToolLevel(1);
loose_big_green_slate_bricks.register();
// Brimstone
var loose_big_brimstone_bricks = VanillaFactory.createBlock("loose_big_brimstone_bricks", <blockmaterial:Rock>);
loose_big_brimstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_brimstone_bricks.setGravity(true);
loose_big_brimstone_bricks.setToolLevel(1);
loose_big_brimstone_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_big_brimstone_bricks.register();
// Permafrost
var loose_big_permafrost_bricks = VanillaFactory.createBlock("loose_big_permafrost_bricks", <blockmaterial:Rock>);
loose_big_permafrost_bricks.setCreativeTab(<creativetab:rotn_blocks>);
loose_big_permafrost_bricks.setGravity(true);
loose_big_permafrost_bricks.setToolLevel(1);
loose_big_permafrost_bricks.setBlockLayer("CUTOUT_MIPPED");
loose_big_permafrost_bricks.register();

// Sedimentary Bricks
// Limestone
var big_limestone_bricks = VanillaFactory.createBlock("big_limestone_bricks", <blockmaterial:Rock>);
big_limestone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_limestone_bricks.setToolLevel(1);
big_limestone_bricks.setBlockHardness(18);
big_limestone_bricks.register();
// Chalk
var big_chalk_bricks = VanillaFactory.createBlock("big_chalk_bricks", <blockmaterial:Rock>);
big_chalk_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_chalk_bricks.setToolLevel(1);
big_chalk_bricks.setBlockHardness(18);
big_chalk_bricks.register();
// Shale
var big_shale_bricks = VanillaFactory.createBlock("big_shale_bricks", <blockmaterial:Rock>);
big_shale_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_shale_bricks.setToolLevel(1);
big_shale_bricks.setBlockHardness(18);
big_shale_bricks.register();
// Siltstone
var big_siltstone_bricks = VanillaFactory.createBlock("big_siltstone_bricks", <blockmaterial:Rock>);
big_siltstone_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_siltstone_bricks.setToolLevel(1);
big_siltstone_bricks.setBlockHardness(18);
big_siltstone_bricks.register();
// Lignite
var big_lignite_bricks = VanillaFactory.createBlock("big_lignite_bricks", <blockmaterial:Rock>);
big_lignite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_lignite_bricks.setToolLevel(1);
big_lignite_bricks.setBlockHardness(18);
big_lignite_bricks.register();
// Dolomite
var big_dolomite_bricks = VanillaFactory.createBlock("big_dolomite_bricks", <blockmaterial:Rock>);
big_dolomite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_dolomite_bricks.setToolLevel(1);
big_dolomite_bricks.setBlockHardness(18);
big_dolomite_bricks.register();
// Greywacke
var big_greywacke_bricks = VanillaFactory.createBlock("big_greywacke_bricks", <blockmaterial:Rock>);
big_greywacke_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_greywacke_bricks.setToolLevel(1);
big_greywacke_bricks.setBlockHardness(18);
big_greywacke_bricks.register();
// Chert
var big_chert_bricks = VanillaFactory.createBlock("big_chert_bricks", <blockmaterial:Rock>);
big_chert_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_chert_bricks.setToolLevel(1);
big_chert_bricks.setBlockHardness(18);
big_chert_bricks.register();

// Other Bricks
// Serpentinite
var big_serpentinite_bricks = VanillaFactory.createBlock("big_serpentinite_bricks", <blockmaterial:Rock>);
big_serpentinite_bricks.setCreativeTab(<creativetab:rotn_blocks>);
big_serpentinite_bricks.setToolLevel(2);
big_serpentinite_bricks.setBlockHardness(35);
big_serpentinite_bricks.setBlockResistance(50);
big_serpentinite_bricks.register();

// Greatbricks
var greatbrick_terracotta = VanillaFactory.createBlock("greatbrick_terracotta", <blockmaterial:Rock>);
greatbrick_terracotta.setCreativeTab(<creativetab:rotn_blocks>);
greatbrick_terracotta.setBlockSoundType(<soundtype:stone>);
greatbrick_terracotta.setBlockHardness(29.0);
greatbrick_terracotta.setBlockResistance(20.0);
greatbrick_terracotta.setToolLevel(1);
greatbrick_terracotta.register();

var greatbrick_clay_brick = VanillaFactory.createBlock("greatbrick_clay_brick", <blockmaterial:Rock>);
greatbrick_clay_brick.setCreativeTab(<creativetab:rotn_blocks>);
greatbrick_clay_brick.setBlockSoundType(<soundtype:stone>);
greatbrick_clay_brick.setBlockHardness(25.0);
greatbrick_clay_brick.setBlockResistance(10.0);
greatbrick_clay_brick.setToolLevel(1);
greatbrick_clay_brick.register();

var greatbrick_gneiss = VanillaFactory.createBlock("greatbrick_gneiss", <blockmaterial:Rock>);
greatbrick_gneiss.setCreativeTab(<creativetab:rotn_blocks>);
greatbrick_gneiss.setBlockSoundType(<soundtype:stone>);
greatbrick_gneiss.setBlockHardness(29.0);
greatbrick_gneiss.setBlockResistance(20.0);
greatbrick_gneiss.setToolLevel(1);
greatbrick_gneiss.register();

var greatbrick_red_granite = VanillaFactory.createBlock("greatbrick_red_granite", <blockmaterial:Rock>);
greatbrick_red_granite.setCreativeTab(<creativetab:rotn_blocks>);
greatbrick_red_granite.setBlockSoundType(<soundtype:stone>);
greatbrick_red_granite.setBlockHardness(48.0);
greatbrick_red_granite.setBlockResistance(20.0);
greatbrick_red_granite.setToolLevel(1);
greatbrick_red_granite.register();

var greatbrick_bleakseal = VanillaFactory.createBlock("greatbrick_bleakseal", <blockmaterial:Rock>);
greatbrick_bleakseal.setCreativeTab(<creativetab:rotn_blocks>);
greatbrick_bleakseal.setBlockSoundType(<soundtype:stone>);
greatbrick_bleakseal.setBlockHardness(100.0);
greatbrick_bleakseal.setBlockResistance(20.0);
greatbrick_bleakseal.setToolLevel(1);
greatbrick_bleakseal.register();

// Tapestry Wool
var tapestry_purple = VanillaFactory.createBlock("tapestry_purple", <blockmaterial:Ground>);
tapestry_purple.setCreativeTab(<creativetab:rotn_blocks>);
tapestry_purple.setBlockSoundType(<soundtype:cloth>);
tapestry_purple.setBlockHardness(0.8);
tapestry_purple.setBlockResistance(0.8);
tapestry_purple.register();
var tapestry_red = VanillaFactory.createBlock("tapestry_red", <blockmaterial:Ground>);
tapestry_red.setCreativeTab(<creativetab:rotn_blocks>);
tapestry_red.setBlockSoundType(<soundtype:cloth>);
tapestry_red.setBlockHardness(0.8);
tapestry_red.setBlockResistance(0.8);
tapestry_red.register();
var tapestry_orange = VanillaFactory.createBlock("tapestry_orange", <blockmaterial:Ground>);
tapestry_orange.setCreativeTab(<creativetab:rotn_blocks>);
tapestry_orange.setBlockSoundType(<soundtype:cloth>);
tapestry_orange.setBlockHardness(0.8);
tapestry_orange.setBlockResistance(0.8);
tapestry_orange.register();
var tapestry_blue = VanillaFactory.createBlock("tapestry_blue", <blockmaterial:Ground>);
tapestry_blue.setCreativeTab(<creativetab:rotn_blocks>);
tapestry_blue.setBlockSoundType(<soundtype:cloth>);
tapestry_blue.setBlockHardness(0.8);
tapestry_blue.setBlockResistance(0.8);
tapestry_blue.register();
var tapestry_black = VanillaFactory.createBlock("tapestry_black", <blockmaterial:Ground>);
tapestry_black.setCreativeTab(<creativetab:rotn_blocks>);
tapestry_black.setBlockSoundType(<soundtype:cloth>);
tapestry_black.setBlockHardness(0.8);
tapestry_black.setBlockResistance(0.8);
tapestry_black.register();
var tapestry_green = VanillaFactory.createBlock("tapestry_green", <blockmaterial:Ground>);
tapestry_green.setCreativeTab(<creativetab:rotn_blocks>);
tapestry_green.setBlockSoundType(<soundtype:cloth>);
tapestry_green.setBlockHardness(0.8);
tapestry_green.setBlockResistance(0.8);
tapestry_green.register();
var tapestry_cyan = VanillaFactory.createBlock("tapestry_cyan", <blockmaterial:Ground>);
tapestry_cyan.setCreativeTab(<creativetab:rotn_blocks>);
tapestry_cyan.setBlockSoundType(<soundtype:cloth>);
tapestry_cyan.setBlockHardness(0.8);
tapestry_cyan.setBlockResistance(0.8);
tapestry_cyan.register();
var tapestry_white = VanillaFactory.createBlock("tapestry_white", <blockmaterial:Ground>);
tapestry_white.setCreativeTab(<creativetab:rotn_blocks>);
tapestry_white.setBlockSoundType(<soundtype:cloth>);
tapestry_white.setBlockHardness(0.8);
tapestry_white.setBlockResistance(0.8);
tapestry_white.register();

var slime_nesting = VanillaFactory.createBlock("slime_nesting", <blockmaterial:Ground>);
slime_nesting.setBlockSoundType(<soundtype:stone>);
slime_nesting.setLightValue(0.1);
slime_nesting.setBlockLayer("TRANSLUCENT");
slime_nesting.setTranslucent(true);
slime_nesting.setFullBlock(false);
slime_nesting.setSlipperiness(0.89f);
slime_nesting.setLightOpacity(0);
slime_nesting.setCreativeTab(<creativetab:rotn_blocks>);
slime_nesting.setToolClass("shovel");
slime_nesting.setBlockHardness(22.0);
slime_nesting.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    1.0 / 16.0,
    16.0 / 16.0
	);
slime_nesting.register();

var egg_block = VanillaFactory.createBlock("egg_block", <blockmaterial:Dragon_Egg>);
egg_block.setCreativeTab(<creativetab:decorations>);
egg_block.setBlockSoundType(<soundtype:stone>);
egg_block.setToolClass("pickaxe");
egg_block.setFullBlock(false);
egg_block.setGravity(true);
egg_block.setLightOpacity(0);
egg_block.setBlockLayer("CUTOUT");
egg_block.setToolLevel(0);
egg_block.register();

var foundation_micomi = VanillaFactory.createBlock("foundation_micomi", <blockmaterial:Rock>);
foundation_micomi.setCreativeTab(<creativetab:rotn_blocks>);
foundation_micomi.setBlockSoundType(<soundtype:stone>);
foundation_micomi.setBlockHardness(4.0);
foundation_micomi.setBlockResistance(20.0);
foundation_micomi.setToolLevel(0);
foundation_micomi.register();

var coba_star = VanillaFactory.createBlock("coba_star", <blockmaterial:Fire>);
coba_star.setBlockSoundType(<soundtype:cloth>);
coba_star.setLightValue(0.9);
coba_star.setBlockLayer("CUTOUT");
coba_star.setPassable(true);
coba_star.setFullBlock(false);
coba_star.setCreativeTab(<creativetab:rotn_blocks>);
coba_star.register();

var mystic_cincinnasite_lamp = VanillaFactory.createBlock("mystic_cincinnasite_lamp", <blockmaterial:Glass>);
mystic_cincinnasite_lamp.setCreativeTab(<creativetab:rotn_blocks>);
mystic_cincinnasite_lamp.setLightValue(1.0);
mystic_cincinnasite_lamp.setBlockSoundType(<soundtype:stone>);
mystic_cincinnasite_lamp.setBlockHardness(18);
mystic_cincinnasite_lamp.setBlockMaterial(<blockmaterial:glass>);
mystic_cincinnasite_lamp.setToolLevel(1);
mystic_cincinnasite_lamp.register();

var ferrought_cincinnasite_lamp = VanillaFactory.createBlock("ferrought_cincinnasite_lamp", <blockmaterial:Glass>);
ferrought_cincinnasite_lamp.setCreativeTab(<creativetab:rotn_blocks>);
ferrought_cincinnasite_lamp.setLightValue(1.0);
ferrought_cincinnasite_lamp.setBlockSoundType(<soundtype:stone>);
ferrought_cincinnasite_lamp.setBlockHardness(38);
ferrought_cincinnasite_lamp.setBlockMaterial(<blockmaterial:glass>);
ferrought_cincinnasite_lamp.setToolLevel(2);
ferrought_cincinnasite_lamp.register();

var fire_block = VanillaFactory.createBlock("fire_block", <blockmaterial:Fire>);
fire_block.setBlockSoundType(<soundtype:cloth>);
fire_block.setLightValue(1.0);
fire_block.setBlockLayer("CUTOUT");
fire_block.setPassable(true);
fire_block.setCreativeTab(<creativetab:decorations>);
fire_block.register();

var planarspsp2 = VanillaFactory.createBlock("planarspsp2", <blockmaterial:Rock>);
planarspsp2.setCreativeTab(<creativetab:rotn_blocks>);
planarspsp2.setBlockHardness(350.0);
planarspsp2.setBlockResistance(3600000.0);
planarspsp2.setBlockSoundType(<soundtype:stone>);
planarspsp2.setToolClass("pickaxe");
planarspsp2.setToolLevel(99);
planarspsp2.register();

var salty_crust = VanillaFactory.createBlock("salty_crust", <blockmaterial:Ground>);
salty_crust.setCreativeTab(<creativetab:rotn_blocks>);
salty_crust.setBlockSoundType(<soundtype:ground>);
salty_crust.setToolClass("shovel");
salty_crust.setBlockHardness(1.0);
salty_crust.setBlockResistance(5.0);
salty_crust.setToolLevel(0);
salty_crust.register();

var rocky_dirt = VanillaFactory.createBlock("rocky_dirt", <blockmaterial:Ground>);
rocky_dirt.setCreativeTab(<creativetab:rotn_blocks>);
rocky_dirt.setBlockSoundType(<soundtype:ground>);
rocky_dirt.setToolClass("shovel");
rocky_dirt.setBlockHardness(4.0);
rocky_dirt.setBlockResistance(5.0);
rocky_dirt.setToolLevel(1);
rocky_dirt.register();

var weathered_dirt = VanillaFactory.createBlock("weathered_dirt", <blockmaterial:Ground>);
weathered_dirt.setCreativeTab(<creativetab:rotn_blocks>);
weathered_dirt.setBlockSoundType(<soundtype:ground>);
weathered_dirt.setToolClass("shovel");
weathered_dirt.setBlockHardness(4.0);
weathered_dirt.setBlockResistance(5.0);
weathered_dirt.setToolLevel(1);
weathered_dirt.register();

var diatomite = VanillaFactory.createBlock("diatomite", <blockmaterial:Ground>);
diatomite.setCreativeTab(<creativetab:rotn_blocks>);
diatomite.setBlockSoundType(<soundtype:ground>);
diatomite.setToolClass("shovel");
diatomite.setBlockHardness(5.5);
diatomite.setBlockResistance(5.0);
diatomite.setToolLevel(1);
diatomite.register();

var ofuda = VanillaFactory.createBlock("ofuda", <blockmaterial:Plants>);
ofuda.axisAlignedBB = AxisAlignedBB.create(
     4.0 / 16.0,
     0.0 / 16.0,
     4.0 / 16.0,
	12.0 / 16.0,
    16.0 / 16.0,
    12.0 / 16.0
	);
ofuda.setBlockHardness(0.0);
ofuda.setBlockResistance(2.0);
ofuda.setFullBlock(false);
ofuda.setPassable(true);
ofuda.setReplaceable(false);
ofuda.setLightOpacity(0);
ofuda.setLightValue(0.2);
ofuda.setBlockLayer("CUTOUT");
ofuda.setBlockSoundType(<soundtype:plant>);
ofuda.setToolClass("none");
ofuda.register();

var serpentinite = VanillaFactory.createBlock("serpentinite", <blockmaterial:Rock>);
serpentinite.setCreativeTab(<creativetab:rotn_blocks>);
serpentinite.setBlockSoundType(<soundtype:stone>);
serpentinite.setBlockHardness(20.0);
serpentinite.setBlockResistance(20.0);
serpentinite.setToolLevel(2);
serpentinite.register();

var serpentinite_cobblestone = VanillaFactory.createBlock("serpentinite_cobblestone", <blockmaterial:Rock>);
serpentinite_cobblestone.setCreativeTab(<creativetab:rotn_blocks>);
serpentinite_cobblestone.setBlockSoundType(<soundtype:stone>);
serpentinite_cobblestone.setBlockHardness(15.0);
serpentinite_cobblestone.setBlockResistance(20.0);
serpentinite_cobblestone.setToolLevel(2);
serpentinite_cobblestone.register();

var columnar_jointing_red_granite = VanillaFactory.createBlock("columnar_jointing_red_granite", <blockmaterial:Rock>);
columnar_jointing_red_granite.setCreativeTab(<creativetab:rotn_blocks>);
columnar_jointing_red_granite.setBlockHardness(17.0);
columnar_jointing_red_granite.setToolLevel(0);
columnar_jointing_red_granite.register();

// sandstone native copper
var n_copper_sandstone = VanillaFactory.createBlock("n_copper_sandstone", <blockmaterial:Rock>);
n_copper_sandstone.setCreativeTab(<creativetab:rotn_blocks>);
n_copper_sandstone.setBlockSoundType(<soundtype:stone>);
n_copper_sandstone.setBlockHardness(4.0);
n_copper_sandstone.setBlockResistance(15.0);
n_copper_sandstone.setBeaconBase(true);
n_copper_sandstone.setToolLevel(0);
n_copper_sandstone.register();

var n_copper_sandstone_red = VanillaFactory.createBlock("n_copper_sandstone_red", <blockmaterial:Rock>);
n_copper_sandstone_red.setCreativeTab(<creativetab:rotn_blocks>);
n_copper_sandstone_red.setBlockSoundType(<soundtype:stone>);
n_copper_sandstone_red.setBlockHardness(4.0);
n_copper_sandstone_red.setBlockResistance(15.0);
n_copper_sandstone_red.setBeaconBase(true);
n_copper_sandstone_red.setToolLevel(0);
n_copper_sandstone_red.register();

// cobbled pavement
var cobbled_pavement = VanillaFactory.createBlock("cobbled_pavement", <blockmaterial:Rock>);
cobbled_pavement.setCreativeTab(<creativetab:rotn_blocks>);
cobbled_pavement.setBlockSoundType(<soundtype:stone>);
cobbled_pavement.setBlockHardness(10.0);
cobbled_pavement.setBlockResistance(15.0);
cobbled_pavement.setBeaconBase(true);
cobbled_pavement.setToolLevel(1);
cobbled_pavement.register();

// cobblestone paths
// Quartzite
var cobblestone_path_quartzite = VanillaFactory.createBlock("cobblestone_path_quartzite", <blockmaterial:Rock>);
cobblestone_path_quartzite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_quartzite.setFullBlock(false);
cobblestone_path_quartzite.setLightOpacity(254);
cobblestone_path_quartzite.setSlipperiness(0.75f);
cobblestone_path_quartzite.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_quartzite.setToolLevel(0);
cobblestone_path_quartzite.register();
// Red Granite
var cobblestone_path_red_granite = VanillaFactory.createBlock("cobblestone_path_red_granite", <blockmaterial:Rock>);
cobblestone_path_red_granite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_red_granite.setFullBlock(false);
cobblestone_path_red_granite.setLightOpacity(254);
cobblestone_path_red_granite.setSlipperiness(0.75f);
cobblestone_path_red_granite.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_red_granite.setToolLevel(0);
cobblestone_path_red_granite.register();
// Black Granite
var cobblestone_path_black_granite = VanillaFactory.createBlock("cobblestone_path_black_granite", <blockmaterial:Rock>);
cobblestone_path_black_granite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_black_granite.setFullBlock(false);
cobblestone_path_black_granite.setLightOpacity(254);
cobblestone_path_black_granite.setSlipperiness(0.75f);
cobblestone_path_black_granite.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_black_granite.setToolLevel(0);
cobblestone_path_black_granite.register();
// Rhyolite
var cobblestone_path_rhyolite = VanillaFactory.createBlock("cobblestone_path_rhyolite", <blockmaterial:Rock>);
cobblestone_path_rhyolite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_rhyolite.setFullBlock(false);
cobblestone_path_rhyolite.setLightOpacity(254);
cobblestone_path_rhyolite.setSlipperiness(0.75f);
cobblestone_path_rhyolite.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_rhyolite.setToolLevel(0);
cobblestone_path_rhyolite.register();
// Andesite
var cobblestone_path_andesite = VanillaFactory.createBlock("cobblestone_path_andesite", <blockmaterial:Rock>);
cobblestone_path_andesite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_andesite.setFullBlock(false);
cobblestone_path_andesite.setLightOpacity(254);
cobblestone_path_andesite.setSlipperiness(0.75f);
cobblestone_path_andesite.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_andesite.setToolLevel(0);
cobblestone_path_andesite.register();
// Gabbro
var cobblestone_path_gabbro = VanillaFactory.createBlock("cobblestone_path_gabbro", <blockmaterial:Rock>);
cobblestone_path_gabbro.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_gabbro.setFullBlock(false);
cobblestone_path_gabbro.setLightOpacity(254);
cobblestone_path_gabbro.setSlipperiness(0.75f);
cobblestone_path_gabbro.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_gabbro.setToolLevel(0);
cobblestone_path_gabbro.register();
// Basalt
var cobblestone_path_basalt = VanillaFactory.createBlock("cobblestone_path_basalt", <blockmaterial:Rock>);
cobblestone_path_basalt.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_basalt.setFullBlock(false);
cobblestone_path_basalt.setLightOpacity(254);
cobblestone_path_basalt.setSlipperiness(0.75f);
cobblestone_path_basalt.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_basalt.setToolLevel(0);
cobblestone_path_basalt.register();
// Komatiite
var cobblestone_path_komatiite = VanillaFactory.createBlock("cobblestone_path_komatiite", <blockmaterial:Rock>);
cobblestone_path_komatiite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_komatiite.setFullBlock(false);
cobblestone_path_komatiite.setLightOpacity(254);
cobblestone_path_komatiite.setSlipperiness(0.75f);
cobblestone_path_komatiite.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_komatiite.setToolLevel(0);
cobblestone_path_komatiite.register();
// Dacite
var cobblestone_path_dacite = VanillaFactory.createBlock("cobblestone_path_dacite", <blockmaterial:Rock>);
cobblestone_path_dacite.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    15.0 / 16.0,
    16.0 / 16.0
	);
cobblestone_path_dacite.setFullBlock(false);
cobblestone_path_dacite.setLightOpacity(254);
cobblestone_path_dacite.setSlipperiness(0.75f);
cobblestone_path_dacite.setCreativeTab(<creativetab:rotn_blocks>);
cobblestone_path_dacite.setToolLevel(0);
cobblestone_path_dacite.register();

// torch posts / vanilla torch post is BWM's shaft
var glareshaft = VanillaFactory.createBlock("glareshaft_small", <blockmaterial:Rock>);
glareshaft.axisAlignedBB = AxisAlignedBB.create(
     7.0 / 16.0,
     0.0 / 16.0,
     7.0 / 16.0,
	9.0 / 16.0,
    14.0 / 16.0,
    9.0 / 16.0
	);
glareshaft.setFullBlock(false);
glareshaft.setLightOpacity(0);
glareshaft.setBlockLayer("CUTOUT");
glareshaft.setCreativeTab(<creativetab:rotn_blocks>);
glareshaft.setToolLevel(0);
glareshaft.register();

// dry stone building blocks
// conglomerate
var rock_big = VanillaFactory.createBlock("rock_big", <blockmaterial:Rock>);
rock_big.axisAlignedBB = AxisAlignedBB.create(
     1.0 / 16.0,
     0.0 / 16.0,
     2.0 / 16.0,
	15.0 / 16.0,
    3.0 / 16.0,
    14.0 / 16.0
	);
rock_big.setCreativeTab(<creativetab:rotn_blocks>);
rock_big.setBlockSoundType(<soundtype:stone>);
rock_big.setFullBlock(false);
rock_big.setLightOpacity(128);
rock_big.setBlockLayer("CUTOUT");
rock_big.setToolLevel(0);
rock_big.setBlockHardness(2);
rock_big.setBlockResistance(5.0);
rock_big.register();

var dry_slab_rock = VanillaFactory.createBlock("dry_slab_rock", <blockmaterial:Rock>);
dry_slab_rock.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     0.0 / 16.0,
	16.0 / 16.0,
    11.0 / 16.0,
    16.0 / 16.0
	);
dry_slab_rock.setCreativeTab(<creativetab:rotn_blocks>);
dry_slab_rock.setBlockSoundType(<soundtype:stone>);
dry_slab_rock.setFullBlock(false);
dry_slab_rock.setLightOpacity(64);
dry_slab_rock.setBlockLayer("CUTOUT");
dry_slab_rock.setToolLevel(1);
dry_slab_rock.setBlockHardness(18);
dry_slab_rock.setBlockResistance(9.0);
dry_slab_rock.register();

var dry_block_rock = VanillaFactory.createBlock("dry_block_rock", <blockmaterial:Rock>);
dry_block_rock.setCreativeTab(<creativetab:rotn_blocks>);
dry_block_rock.setBlockSoundType(<soundtype:stone>);
dry_block_rock.setFullBlock(false);
dry_block_rock.setBlockLayer("CUTOUT");
dry_block_rock.setToolLevel(1);
dry_block_rock.setBlockHardness(25);
dry_block_rock.setBlockResistance(15.0);
dry_block_rock.register();

// Dhvarā blocks
var dhvara_knot = VanillaFactory.createBlock("dhvara_knot", <blockmaterial:Iron>);
dhvara_knot.setCreativeTab(<creativetab:rotn_blocks>);
dhvara_knot.setToolLevel(2);
dhvara_knot.setBlockHardness(25);
dhvara_knot.register();

// Emberium blocks
var emblem_stone_red = VanillaFactory.createBlock("emblem_stone_red", <blockmaterial:Iron>);
emblem_stone_red.setCreativeTab(<creativetab:rotn_blocks>);
emblem_stone_red.setToolLevel(2);
emblem_stone_red.setBlockHardness(25);
emblem_stone_red.register();

// Sunstone
var sunstone_block = VanillaFactory.createBlock("sunstone_block", <blockmaterial:Iron>);
sunstone_block.setCreativeTab(<creativetab:rotn_blocks>);
sunstone_block.setToolLevel(1);
sunstone_block.setBlockHardness(10.0);
sunstone_block.setLightValue(1.0);
sunstone_block.register();

// Ferrought blocks
var ferrought_plate = VanillaFactory.createBlock("ferrought_plate", <blockmaterial:Iron>);
ferrought_plate.setCreativeTab(<creativetab:rotn_blocks>);
ferrought_plate.setToolLevel(2);
ferrought_plate.setBlockHardness(25);
ferrought_plate.register();
var ferrought_corrugated = VanillaFactory.createBlock("ferrought_corrugated", <blockmaterial:Iron>);
ferrought_corrugated.setCreativeTab(<creativetab:rotn_blocks>);
ferrought_corrugated.setToolLevel(2);
ferrought_corrugated.setBlockHardness(25);
ferrought_corrugated.register();
var ferrought_hammered = VanillaFactory.createBlock("ferrought_hammered", <blockmaterial:Iron>);
ferrought_hammered.setCreativeTab(<creativetab:rotn_blocks>);
ferrought_hammered.setToolLevel(2);
ferrought_hammered.setBlockHardness(25);
ferrought_hammered.register();

// Blendrein
var blendrein_block = VanillaFactory.createBlock("blendrein_block", <blockmaterial:Iron>);
blendrein_block.setCreativeTab(<creativetab:rotn_blocks>);
blendrein_block.setToolLevel(3);
blendrein_block.setBlockHardness(80.0);
blendrein_block.setLightValue(0.1);
blendrein_block.register();
var blendrein_chiseled = VanillaFactory.createBlock("blendrein_chiseled", <blockmaterial:Iron>);
blendrein_chiseled.setCreativeTab(<creativetab:rotn_blocks>);
blendrein_chiseled.setToolLevel(3);
blendrein_chiseled.setBlockHardness(80.0);
blendrein_chiseled.setLightValue(0.2);
blendrein_chiseled.register();
var blendrein_nourished = VanillaFactory.createBlock("blendrein_nourished", <blockmaterial:Iron>);
blendrein_nourished.setCreativeTab(<creativetab:rotn_blocks>);
blendrein_nourished.setToolLevel(3);
blendrein_nourished.setBlockHardness(90.0);
blendrein_nourished.setLightValue(0.1);
blendrein_nourished.register();
var blendrein_reinforced = VanillaFactory.createBlock("blendrein_reinforced", <blockmaterial:Iron>);
blendrein_reinforced.setCreativeTab(<creativetab:rotn_blocks>);
blendrein_reinforced.setToolLevel(3);
blendrein_reinforced.setBlockHardness(300.0);
blendrein_reinforced.register();

// Diagonal Tiles
var tiled_diagonal = VanillaFactory.createBlock("tiled_diagonal", <blockmaterial:Rock>);
tiled_diagonal.setCreativeTab(<creativetab:rotn_blocks>);
tiled_diagonal.setBlockSoundType(<soundtype:stone>);
tiled_diagonal.setBlockHardness(25.0);
tiled_diagonal.setBlockResistance(14.0);
tiled_diagonal.setToolLevel(2);
tiled_diagonal.register();

// Special/Ornate Stone Variants
var fancy_limestone = VanillaFactory.createBlock("fancy_limestone", <blockmaterial:Rock>);
fancy_limestone.setCreativeTab(<creativetab:rotn_blocks>);
fancy_limestone.setToolLevel(1);
fancy_limestone.setBlockHardness(18);
fancy_limestone.register();
var fancy_soapstone = VanillaFactory.createBlock("fancy_soapstone", <blockmaterial:Rock>);
fancy_soapstone.setCreativeTab(<creativetab:rotn_blocks>);
fancy_soapstone.setToolLevel(1);
fancy_soapstone.setBlockHardness(16);
fancy_soapstone.register();

// Extra coade
var coade_stone_polished = VanillaFactory.createBlock("coade_stone_polished", <blockmaterial:Rock>);
coade_stone_polished.setCreativeTab(<creativetab:rotn_blocks>);
coade_stone_polished.setBlockSoundType(<soundtype:stone>);
coade_stone_polished.setBlockHardness(15.0);
coade_stone_polished.setBlockResistance(5.0);
coade_stone_polished.setToolLevel(1);
coade_stone_polished.register();

// Extra concrete
var concrete_gray_chiseled = VanillaFactory.createBlock("concrete_gray_chiseled", <blockmaterial:Rock>);
concrete_gray_chiseled.setCreativeTab(<creativetab:rotn_blocks>);
concrete_gray_chiseled.setBlockSoundType(<soundtype:stone>);
concrete_gray_chiseled.setBlockHardness(28.0);
concrete_gray_chiseled.setBlockResistance(5.0);
concrete_gray_chiseled.setToolLevel(1);
concrete_gray_chiseled.register();

var concrete_gray_brick = VanillaFactory.createBlock("concrete_gray_brick", <blockmaterial:Rock>);
concrete_gray_brick.setCreativeTab(<creativetab:rotn_blocks>);
concrete_gray_brick.setBlockSoundType(<soundtype:stone>);
concrete_gray_brick.setBlockHardness(40.0);
concrete_gray_brick.setBlockResistance(5.0);
concrete_gray_brick.setToolLevel(1);
concrete_gray_brick.register();

//Curtains

var curtain_white = VanillaFactory.createDirectionalBlock("curtain_white", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_white.setBlockHardness(2.0);
curtain_white.setBlockResistance(1.0);
curtain_white.setPassable(true);
curtain_white.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_white.setToolClass("axe");
curtain_white.setFullBlock(false);
curtain_white.setLightOpacity(0);
curtain_white.setLightValue(0);
curtain_white.setBlockSoundType(<soundtype:wood>);
curtain_white.setBlockLayer("CUTOUT_MIPPED");
curtain_white.register();

var curtain_orange = VanillaFactory.createDirectionalBlock("curtain_orange", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_orange.setBlockHardness(2.0);
curtain_orange.setBlockResistance(1.0);
curtain_orange.setPassable(true);
curtain_orange.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_orange.setToolClass("axe");
curtain_orange.setFullBlock(false);
curtain_orange.setLightOpacity(0);
curtain_orange.setLightValue(0);
curtain_orange.setBlockSoundType(<soundtype:wood>);
curtain_orange.setBlockLayer("CUTOUT_MIPPED");
curtain_orange.register();

var curtain_magenta = VanillaFactory.createDirectionalBlock("curtain_magenta", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_magenta.setBlockHardness(2.0);
curtain_magenta.setBlockResistance(1.0);
curtain_magenta.setPassable(true);
curtain_magenta.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_magenta.setToolClass("axe");
curtain_magenta.setFullBlock(false);
curtain_magenta.setLightOpacity(0);
curtain_magenta.setLightValue(0);
curtain_magenta.setBlockSoundType(<soundtype:wood>);
curtain_magenta.setBlockLayer("CUTOUT_MIPPED");
curtain_magenta.register();

var curtain_light_blue = VanillaFactory.createDirectionalBlock("curtain_light_blue", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_light_blue.setBlockHardness(2.0);
curtain_light_blue.setBlockResistance(1.0);
curtain_light_blue.setPassable(true);
curtain_light_blue.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_light_blue.setToolClass("axe");
curtain_light_blue.setFullBlock(false);
curtain_light_blue.setLightOpacity(0);
curtain_light_blue.setLightValue(0);
curtain_light_blue.setBlockSoundType(<soundtype:wood>);
curtain_light_blue.setBlockLayer("CUTOUT_MIPPED");
curtain_light_blue.register();

var curtain_yellow = VanillaFactory.createDirectionalBlock("curtain_yellow", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_yellow.setBlockHardness(2.0);
curtain_yellow.setBlockResistance(1.0);
curtain_yellow.setPassable(true);
curtain_yellow.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_yellow.setToolClass("axe");
curtain_yellow.setFullBlock(false);
curtain_yellow.setLightOpacity(0);
curtain_yellow.setLightValue(0);
curtain_yellow.setBlockSoundType(<soundtype:wood>);
curtain_yellow.setBlockLayer("CUTOUT_MIPPED");
curtain_yellow.register();

var curtain_lime = VanillaFactory.createDirectionalBlock("curtain_lime", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_lime.setBlockHardness(2.0);
curtain_lime.setBlockResistance(1.0);
curtain_lime.setPassable(true);
curtain_lime.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_lime.setToolClass("axe");
curtain_lime.setFullBlock(false);
curtain_lime.setLightOpacity(0);
curtain_lime.setLightValue(0);
curtain_lime.setBlockSoundType(<soundtype:wood>);
curtain_lime.setBlockLayer("CUTOUT_MIPPED");
curtain_lime.register();

var curtain_pink = VanillaFactory.createDirectionalBlock("curtain_pink", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_pink.setBlockHardness(2.0);
curtain_pink.setBlockResistance(1.0);
curtain_pink.setPassable(true);
curtain_pink.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_pink.setToolClass("axe");
curtain_pink.setFullBlock(false);
curtain_pink.setLightOpacity(0);
curtain_pink.setLightValue(0);
curtain_pink.setBlockSoundType(<soundtype:wood>);
curtain_pink.setBlockLayer("CUTOUT_MIPPED");
curtain_pink.register();

var curtain_gray = VanillaFactory.createDirectionalBlock("curtain_gray", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_gray.setBlockHardness(2.0);
curtain_gray.setBlockResistance(1.0);
curtain_gray.setPassable(true);
curtain_gray.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_gray.setToolClass("axe");
curtain_gray.setFullBlock(false);
curtain_gray.setLightOpacity(0);
curtain_gray.setLightValue(0);
curtain_gray.setBlockSoundType(<soundtype:wood>);
curtain_gray.setBlockLayer("CUTOUT_MIPPED");
curtain_gray.register();

var curtain_light_gray = VanillaFactory.createDirectionalBlock("curtain_light_gray", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_light_gray.setBlockHardness(2.0);
curtain_light_gray.setBlockResistance(1.0);
curtain_light_gray.setPassable(true);
curtain_light_gray.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_light_gray.setToolClass("axe");
curtain_light_gray.setFullBlock(false);
curtain_light_gray.setLightOpacity(0);
curtain_light_gray.setLightValue(0);
curtain_light_gray.setBlockSoundType(<soundtype:wood>);
curtain_light_gray.setBlockLayer("CUTOUT_MIPPED");
curtain_light_gray.register();

var curtain_cyan = VanillaFactory.createDirectionalBlock("curtain_cyan", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_cyan.setBlockHardness(2.0);
curtain_cyan.setBlockResistance(1.0);
curtain_cyan.setPassable(true);
curtain_cyan.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_cyan.setToolClass("axe");
curtain_cyan.setFullBlock(false);
curtain_cyan.setLightOpacity(0);
curtain_cyan.setLightValue(0);
curtain_cyan.setBlockSoundType(<soundtype:wood>);
curtain_cyan.setBlockLayer("CUTOUT_MIPPED");
curtain_cyan.register();

var curtain_purple = VanillaFactory.createDirectionalBlock("curtain_purple", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_purple.setBlockHardness(2.0);
curtain_purple.setBlockResistance(1.0);
curtain_purple.setPassable(true);
curtain_purple.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_purple.setToolClass("axe");
curtain_purple.setFullBlock(false);
curtain_purple.setLightOpacity(0);
curtain_purple.setLightValue(0);
curtain_purple.setBlockSoundType(<soundtype:wood>);
curtain_purple.setBlockLayer("CUTOUT_MIPPED");
curtain_purple.register();

var curtain_blue = VanillaFactory.createDirectionalBlock("curtain_blue", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_blue.setBlockHardness(2.0);
curtain_blue.setBlockResistance(1.0);
curtain_blue.setPassable(true);
curtain_blue.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_blue.setToolClass("axe");
curtain_blue.setFullBlock(false);
curtain_blue.setLightOpacity(0);
curtain_blue.setLightValue(0);
curtain_blue.setBlockSoundType(<soundtype:wood>);
curtain_blue.setBlockLayer("CUTOUT_MIPPED");
curtain_blue.register();

var curtain_brown = VanillaFactory.createDirectionalBlock("curtain_brown", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_brown.setBlockHardness(2.0);
curtain_brown.setBlockResistance(1.0);
curtain_brown.setPassable(true);
curtain_brown.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_brown.setToolClass("axe");
curtain_brown.setFullBlock(false);
curtain_brown.setLightOpacity(0);
curtain_brown.setLightValue(0);
curtain_brown.setBlockSoundType(<soundtype:wood>);
curtain_brown.setBlockLayer("CUTOUT_MIPPED");
curtain_brown.register();

var curtain_green = VanillaFactory.createDirectionalBlock("curtain_green", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_green.setBlockHardness(2.0);
curtain_green.setBlockResistance(1.0);
curtain_green.setPassable(true);
curtain_green.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_green.setToolClass("axe");
curtain_green.setFullBlock(false);
curtain_green.setLightOpacity(0);
curtain_green.setLightValue(0);
curtain_green.setBlockSoundType(<soundtype:wood>);
curtain_green.setBlockLayer("CUTOUT_MIPPED");
curtain_green.register();

var curtain_red = VanillaFactory.createDirectionalBlock("curtain_red", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_red.setBlockHardness(2.0);
curtain_red.setBlockResistance(1.0);
curtain_red.setPassable(true);
curtain_red.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_red.setToolClass("axe");
curtain_red.setFullBlock(false);
curtain_red.setLightOpacity(0);
curtain_red.setLightValue(0);
curtain_red.setBlockSoundType(<soundtype:wood>);
curtain_red.setBlockLayer("CUTOUT_MIPPED");
curtain_red.register();

var curtain_black = VanillaFactory.createDirectionalBlock("curtain_black", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_black.setBlockHardness(2.0);
curtain_black.setBlockResistance(1.0);
curtain_black.setPassable(true);
curtain_black.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_black.setToolClass("axe");
curtain_black.setFullBlock(false);
curtain_black.setLightOpacity(0);
curtain_black.setLightValue(0);
curtain_black.setBlockSoundType(<soundtype:wood>);
curtain_black.setBlockLayer("CUTOUT_MIPPED");
curtain_black.register();

var curtain_trans = VanillaFactory.createDirectionalBlock("curtain_trans", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_trans.setBlockHardness(2.0);
curtain_trans.setBlockResistance(1.0);
curtain_trans.setPassable(true);
curtain_trans.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_trans.setToolClass("axe");
curtain_trans.setFullBlock(false);
curtain_trans.setLightOpacity(0);
curtain_trans.setLightValue(0);
curtain_trans.setBlockSoundType(<soundtype:wood>);
curtain_trans.setBlockLayer("CUTOUT_MIPPED");
curtain_trans.register();

var curtain_checkered = VanillaFactory.createDirectionalBlock("curtain_checkered", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_checkered.setBlockHardness(2.0);
curtain_checkered.setBlockResistance(1.0);
curtain_checkered.setPassable(true);
curtain_checkered.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_checkered.setToolClass("axe");
curtain_checkered.setFullBlock(false);
curtain_checkered.setLightOpacity(0);
curtain_checkered.setLightValue(0);
curtain_checkered.setBlockSoundType(<soundtype:wood>);
curtain_checkered.setBlockLayer("CUTOUT_MIPPED");
curtain_checkered.register();

var curtain_eye = VanillaFactory.createDirectionalBlock("curtain_eye", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_eye.setBlockHardness(2.0);
curtain_eye.setBlockResistance(1.0);
curtain_eye.setPassable(true);
curtain_eye.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_eye.setToolClass("axe");
curtain_eye.setFullBlock(false);
curtain_eye.setLightOpacity(0);
curtain_eye.setLightValue(0);
curtain_eye.setBlockSoundType(<soundtype:wood>);
curtain_eye.setBlockLayer("CUTOUT_MIPPED");
curtain_eye.register();

var curtain_peak = VanillaFactory.createDirectionalBlock("curtain_peak", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_peak.setBlockHardness(2.0);
curtain_peak.setBlockResistance(1.0);
curtain_peak.setPassable(true);
curtain_peak.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_peak.setToolClass("axe");
curtain_peak.setFullBlock(false);
curtain_peak.setLightOpacity(0);
curtain_peak.setLightValue(0);
curtain_peak.setBlockSoundType(<soundtype:wood>);
curtain_peak.setBlockLayer("CUTOUT_MIPPED");
curtain_peak.register();

var curtain_royal = VanillaFactory.createDirectionalBlock("curtain_royal", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_royal.setBlockHardness(2.0);
curtain_royal.setBlockResistance(1.0);
curtain_royal.setPassable(true);
curtain_royal.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_royal.setToolClass("axe");
curtain_royal.setFullBlock(false);
curtain_royal.setLightOpacity(0);
curtain_royal.setLightValue(0);
curtain_royal.setBlockSoundType(<soundtype:wood>);
curtain_royal.setBlockLayer("CUTOUT_MIPPED");
curtain_royal.register();

var curtain_patterned = VanillaFactory.createDirectionalBlock("curtain_patterned", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_patterned.setBlockHardness(2.0);
curtain_patterned.setBlockResistance(1.0);
curtain_patterned.setPassable(true);
curtain_patterned.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_patterned.setToolClass("axe");
curtain_patterned.setFullBlock(false);
curtain_patterned.setLightOpacity(0);
curtain_patterned.setLightValue(0);
curtain_patterned.setBlockSoundType(<soundtype:wood>);
curtain_patterned.setBlockLayer("CUTOUT_MIPPED");
curtain_patterned.register();

var curtain_beige = VanillaFactory.createDirectionalBlock("curtain_beige", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_beige.setBlockHardness(2.0);
curtain_beige.setBlockResistance(1.0);
curtain_beige.setPassable(true);
curtain_beige.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_beige.setToolClass("axe");
curtain_beige.setFullBlock(false);
curtain_beige.setLightOpacity(0);
curtain_beige.setLightValue(0);
curtain_beige.setBlockSoundType(<soundtype:wood>);
curtain_beige.setBlockLayer("CUTOUT_MIPPED");
curtain_beige.register();

var curtain_cloud = VanillaFactory.createDirectionalBlock("curtain_cloud", <blockmaterial:Wood>, "HORIZONTAL", false, true);
curtain_cloud.setBlockHardness(2.0);
curtain_cloud.setBlockResistance(1.0);
curtain_cloud.setPassable(true);
curtain_cloud.axisAlignedBB = AxisAlignedBB.create(
     0.0 / 16.0,
     0.0 / 16.0,
     16.0 / 16.0,
	16.0 / 16.0,
    16.0 / 16.0,
    14.0 / 16.0
	);
curtain_cloud.setToolClass("axe");
curtain_cloud.setFullBlock(false);
curtain_cloud.setLightOpacity(0);
curtain_cloud.setLightValue(0);
curtain_cloud.setBlockSoundType(<soundtype:wood>);
curtain_cloud.setBlockLayer("CUTOUT_MIPPED");
curtain_cloud.register();

// Liquids
var ender_slag = VanillaFactory.createFluid("ender_slag", Color.fromHex("fffdd0"));
ender_slag.density = 1900;
ender_slag.temperature = 500;
ender_slag.viscosity = 2000;
ender_slag.stillLocation = "contenttweaker:fluids/ender_slag_still";
ender_slag.flowingLocation = "contenttweaker:fluids/ender_slag_flow";
ender_slag.colorize= true;
ender_slag.register();

var tannin = VanillaFactory.createFluid("tannin", Color.fromHex("df9232"));
tannin.density = 1000;
tannin.temperature = 310;
tannin.viscosity = 1050;
tannin.colorize= true;
tannin.vaporize= true;
tannin.register();

var lifeblood = VanillaFactory.createFluid("lifeblood", Color.fromHex("1ab5eb"));
lifeblood.density = 1500;
lifeblood.gaseous = true;
lifeblood.luminosity = 15;
lifeblood.temperature = 400;
lifeblood.viscosity = 800;
lifeblood.stillLocation = "contenttweaker:fluids/dunamis_still";
lifeblood.flowingLocation = "contenttweaker:fluids/dunamis_flow";
lifeblood.colorize= true;
lifeblood.register();

var residual_mythril = VanillaFactory.createFluid("residual_mythril", Color.fromHex("fffdd0"));
residual_mythril.density = 528;
residual_mythril.luminosity = 3;
residual_mythril.temperature = 2500;
residual_mythril.viscosity = 5500;
residual_mythril.stillLocation = "contenttweaker:fluids/residual_mythril_still";
residual_mythril.flowingLocation = "contenttweaker:fluids/residual_mythril_flow";
residual_mythril.colorize= true;
residual_mythril.register();

var methanol = VanillaFactory.createFluid("methanol", Color.fromHex("efdace"));
methanol.density = 1000;
methanol.temperature = 310;
methanol.viscosity = 1100;
methanol.colorize= true;
methanol.vaporize= true;
methanol.register();