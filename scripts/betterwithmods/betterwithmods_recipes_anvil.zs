import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.betterwithmods.Anvil;

//Steel Anvil
recipes.remove(<betterwithmods:steel_anvil>);

var steel = <dungeontactics:steel_ingot>;
var steelblock = <dungeontactics:steel_block>;

recipes.addShaped("Steel Anvil", <betterwithmods:steel_anvil>,[
	[steelblock, steelblock, steelblock],
	[null, steel, null],
	[steel, steel, steel]
]);

<ore:gearSteel>.add(<pyrotech:cog_bone>);

var leatherCord = <pyrotech:material:40>;
var cSteelNugget = <ore:nuggetSteel>;
var cSteelIngot = <ore:ingotSteel>;
var redstoneLatch = <ore:latchRedstone>;
var steelGear = <pyrotech:cog_bone>;
var sfsNugget = <ore:nuggetSoulforgedSteel>;
var sfsIngot = <ore:ingotSoulforgedSteel>;
var vnugg = <ore:nuggetViridium>.firstItem;
var tannedstrap = <betterwithmods:material:8>;
var glue = <ore:glue>;
var tanned = <ore:hideTanned>;
var durafiber = <ore:durableFiber>;
var feralratclaw = <rats:feral_rat_claw>;

Anvil.removeShaped(<betterwithaddons:wrought_bars>);
Anvil.removeShaped(<betterwithaddons:steel_masonpick>); // replaced with content tweaker items for removal of building blocks (craftable only at foundry)

Anvil.removeShaped(<betterwithmods:material:48>);
Anvil.addShaped(steelGear * 2, 
[
   [null, cSteelNugget, cSteelNugget, null],
   [cSteelNugget, cSteelNugget, cSteelNugget, cSteelNugget],
   [cSteelNugget, cSteelNugget, cSteelNugget, cSteelNugget],
   [null, cSteelNugget, cSteelNugget, null]
]);

recipes.removeByRecipeName("betterwithmods:blocks/mech/fix_steel_gearbox");

Anvil.addShaped(<betterwithmods:siding_rock>.withTag({texture: {Properties: {variant: "stonebrick"}, Name: "minecraft:stonebrick"}})*8, [
    [<contenttweaker:brick_minecraft_stone>, null, null, null],
    [<contenttweaker:brick_minecraft_stone>, null, null, null], 
    [<contenttweaker:brick_minecraft_stone>, null, null, null], 
    [<contenttweaker:brick_minecraft_stone>, null, null, null]
]);

// Heart of diamond
Anvil.addShaped(<quark:diamond_heart>, 
[
   [<contenttweaker:vis_shard>, <arcanearchives:shaped_quartz>, <contenttweaker:vis_shard>, <arcanearchives:shaped_quartz>],
   [<arcanearchives:shaped_quartz>, <ore:gemDiamond>, <ore:gemDiamond>, <contenttweaker:vis_shard>],
   [<contenttweaker:vis_shard>, <ore:gemDiamond>, <ore:gemDiamond>, <arcanearchives:shaped_quartz>],
   [<arcanearchives:shaped_quartz>, <contenttweaker:vis_shard>, <arcanearchives:shaped_quartz>, <contenttweaker:vis_shard>]
]);

// Pipes
val paneGlass = <ore:paneGlass>;
val denseRedstone = <pyrotech:material:36>;
val genericMetal = <ore:genericMetal>;
paneGlass.addItems([<betternether:quartz_glass_pane>, <betternether:quartz_glass_framed_pane>,<netherex:soul_glass_pane>,<quark:framed_glass_pane>]);

for item in paneGlass.items{
   Anvil.addShaped(<quark:pipe> * 24, 
   [
      [genericMetal, genericMetal, genericMetal, genericMetal],
      [denseRedstone, item, item, genericMetal],
      [denseRedstone, item, item, genericMetal],
      [genericMetal, genericMetal, genericMetal, genericMetal]
   ]);
}

// Sledgehammer
recipes.remove(<pyrotech:diamond_hammer>);
Anvil.addShaped(<pyrotech:diamond_hammer>, #Refined Sledgehammer
[
   [<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, null, null],
   [<betterwithmods:material:36>, <betterwithmods:material:36>, <betterwithmods:material:36>, <betterwithmods:material:36>],
   [<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, null, null],
   [null, null, null, null]
]);

// Demonic Scythe
Anvil.addShaped(<demonic_scythe:demonic_scythe>,
[
   [null, <ore:ingotSteel>,	null, null],
   [<ore:ingotSteel>, null, null, null],
   [<netherex:wither_bone>, null, <aether_legacy:dungeon_block:4>, <spartanweaponry:material:1>],
   [<ore:ingotSteel>, <aether_legacy:dungeon_block:4>,null, null]
]);

// Broadhead
Anvil.removeShaped(<betterwithmods:material:43>);
Anvil.addShaped(<betterwithmods:material:43>,
[
   [null, null, <dungeontactics:steel_nugget>, null],
   [<dungeontactics:steel_nugget>, <dungeontactics:steel_nugget>, <dungeontactics:steel_nugget>, <dungeontactics:steel_nugget>],
   [null, null, <dungeontactics:steel_nugget>, null]
]);

// Greatarrow Head
Anvil.removeShaped(<betterwithaddons:material:0>);
Anvil.addShaped(<betterwithaddons:material:0>, 
[
   [null, <ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>],
   [<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>, null],
   [null, <ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>]
]);

// Arrows
Anvil.removeShaped(<betterwithaddons:greatarrow>);
Anvil.addShaped(<betterwithaddons:greatarrow>, #Greatarrow
[
   [null, <ore:nuggetSteel>, <ore:nuggetSteel>, null],
   [<ore:arrowSoulforgedSteel>, <betterwithmods:material:36>, <betterwithmods:material:36>, <ore:feather>],
   [null, <ore:nuggetSteel>, <ore:nuggetSteel>, null],
   [null, null, null, null]
]);
Anvil.removeShaped(<betterwithaddons:greatarrow_destruction>);
Anvil.addShaped(<betterwithaddons:greatarrow_destruction>, #Destructive Greatarrow
[
   [<ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, null],
   [null, <ore:arrowSoulforgedSteel>, <betterwithmods:material:36>, <ore:feather>],
   [<ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, null]
]);
Anvil.removeShaped(<betterwithaddons:greatarrow_lightning>);
Anvil.addShaped(<betterwithaddons:greatarrow_lightning>, #Lightning Greatarrow
[
   [<ore:latchRedstone>, <ore:latchRedstone>, <ore:nuggetSoulforgedSteel>, null],
   [null, <ore:arrowSoulforgedSteel>, <betterwithmods:material:36>, <ore:feather>],
   [<ore:latchRedstone>, <ore:latchRedstone>, <ore:nuggetSoulforgedSteel>, null],
   [null, null, null, null]
]);

/* On hold until BWM can accept more methods for recipes
// Brazier
Anvil.addShaped(<futuremc:campfire>*4,
[
   [<ore:genericMetalNuggets>, <ore:genericMetalNuggets>, null, null],
   [<ore:genericMetal>, <ore:dustNetherrack>, <minecraft:fire_charge> | <minecraft:flint_and_steel>.transformDamage() | <pyrotech:flint_and_tinder>.transformDamage() | <pyrotech:bow_drill>.transformDamage(), null],
   [<ore:genericMetalNuggets>, <ore:genericMetalNuggets>, null, null]
]);
*/

Anvil.addShaped(<contenttweaker:steel_crowbar>,
[
   [<dungeontactics:steel_ingot>, <contenttweaker:material_part:49>, null, null],
   [<contenttweaker:material_part:49>, <dungeontactics:steel_ingot>, <contenttweaker:material_part:49>, null],
   [<dungeontactics:steel_ingot>, <contenttweaker:material_part:49>, <dungeontactics:steel_ingot>, <contenttweaker:material_part:49>],
   [null, null, <contenttweaker:material_part:49>, <dungeontactics:steel_ingot>]
]);

Anvil.removeShaped(<betterwithmods:block_dispenser>);
mods.betterwithmods.Anvil.addShapedFixed(<betterwithmods:block_dispenser>, 
[
   [<ore:blockMossy>, <ore:blockMossy>, <ore:blockMossy>, <ore:blockMossy>],
   [<ore:blockMossy>, <betterwithmods:urn:8>, <betterwithmods:urn:8>, <ore:blockMossy>],
   [<ore:stone>, <minecraft:redstone_torch>, <minecraft:redstone_torch>, <ore:stone>],
   [<ore:stone>, <minecraft:redstone>, <minecraft:redstone>, <ore:stone>]
]);

// Climbing Gloves
Anvil.addShaped(<cyclicmagic:glove_climb>,
[
   [vnugg, vnugg, feralratclaw, feralratclaw],
   [vnugg, feralratclaw, tanned, tanned],
   [feralratclaw, tanned, glue, tannedstrap],
   [feralratclaw, tanned, tannedstrap, durafiber]
]);