import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;

recipes.removeByMod("aesthetics");
recipes.removeByRecipeName("simpleores:copper_ingot");
JEI.removeAndHide(<simpleores:copper_bucket>);
JEI.removeAndHide(<simpleores:copper_bucket_water>);
JEI.removeAndHide(<simpleores:copper_block>);

val ingotViri = <simpleores:adamantium_ingot>;
val nuggetViri = <ore:nuggetViridium>.firstItem;
val barViri = <aesthetics:adamantium_bars>;
val ingotMyth = <simpleores:mythril_ingot>;
val nuggetMyth = <ore:nuggetMythril>.firstItem;
val ingotCopp = <simpleores:copper_ingot>;
val nuggetCopp = <ore:nuggetCopper>.firstItem;
val barCopp = <aesthetics:copper_bars>;
val doorCopp = <aesthetics:copper_door>;
val anyBlockCopp = <ore:blockCopper>;
val blockCopp = <rotn_blocks:copper_block>;
val waxBlockCopp = <simpleores:copper_block>;
val ingotTin = <simpleores:tin_ingot>;
val nuggetTin = <ore:nuggetTin>.firstItem;
val barTin = <aesthetics:tin_bars>;
val doorTin = <aesthetics:tin_door>;

//Extra Parts
recipes.addShaped("viridium_nugget_to_ingot",ingotViri, [
[nuggetViri, nuggetViri, nuggetViri],
[nuggetViri, nuggetViri, nuggetViri],
[nuggetViri, nuggetViri, nuggetViri]]);
recipes.addShapeless("viridium_ingot_to_nugget",nuggetViri*9, [ingotViri]);
recipes.addShaped("mythril_nugget_to_ingot",ingotMyth, [
[nuggetMyth,nuggetMyth,nuggetMyth],
[nuggetMyth,nuggetMyth,nuggetMyth],
[nuggetMyth,nuggetMyth,nuggetMyth]]);
recipes.addShapeless("mythril_ingot_to_nugget",nuggetMyth*9, [ingotMyth]);
recipes.addShaped("copper_nugget_to_ingot",ingotCopp, [
[nuggetCopp,nuggetCopp,nuggetCopp],
[nuggetCopp,nuggetCopp,nuggetCopp],
[nuggetCopp,nuggetCopp,nuggetCopp]]);
recipes.addShapeless("copper_ingot_to_nugget",nuggetCopp*9, [ingotCopp]);
recipes.addShaped("copper_ingot_to_block",blockCopp, [
[ingotCopp,ingotCopp,ingotCopp],
[ingotCopp,ingotCopp,ingotCopp],
[ingotCopp,ingotCopp,ingotCopp]]);
recipes.addShaped("waxed_copper_block",waxBlockCopp*8, [
[blockCopp,blockCopp,blockCopp],
[blockCopp,<ore:wax>,blockCopp],
[blockCopp,blockCopp,blockCopp]]);
recipes.addShapeless("copper_block_to_ingot",ingotCopp*9, [anyBlockCopp]);
recipes.addShaped("copper_bars",barCopp*16, [
[ingotCopp, ingotCopp, ingotCopp],
[ingotCopp, ingotCopp, ingotCopp]]);
recipes.addShaped("copper_door",doorCopp*3, [
[ingotCopp,ingotCopp],
[ingotCopp,ingotCopp],
[ingotCopp,ingotCopp]]);
recipes.addShaped("tin_ingot_to_nugget",ingotTin, [
[nuggetTin,nuggetTin,nuggetTin],
[nuggetTin,nuggetTin,nuggetTin],
[nuggetTin,nuggetTin,nuggetTin]]);
recipes.addShapeless("tin_nugget_to_ingot",nuggetTin*9, [ingotTin]);
recipes.addShaped("tin_bars",barTin*16, [
[ingotTin, ingotTin, ingotTin],
[ingotTin, ingotTin, ingotTin]]);
recipes.addShaped("tin_door",doorTin*3, [
[ingotTin,ingotTin],
[ingotTin,ingotTin],
[ingotTin,ingotTin]]);
recipes.addShapedMirrored("iron_brick_stairs", <aesthetics:iron_brick_stairs>*4, [
    [<ore:ingotWroughtIron>, null, null],
    [<ore:ingotWroughtIron>, <ore:ingotWroughtIron>, null], 
    [<ore:ingotWroughtIron>, <ore:ingotWroughtIron>, <ore:ingotWroughtIron>]
]);
recipes.addShaped("iron_brick_stairs_back", <ore:ingotWroughtIron>.firstItem*6, [
    [<aesthetics:iron_brick_stairs>, <aesthetics:iron_brick_stairs>],
    [<aesthetics:iron_brick_stairs>, <aesthetics:iron_brick_stairs>]
]);
recipes.addShaped("viridium_bars", <aesthetics:adamantium_bars>*16, [
    [ingotViri, ingotViri, ingotViri],
    [ingotViri, ingotViri, ingotViri]
]);
// Copper Blocks
var blockCoppA = <rotn_blocks:copper_block>;
var blockCoppB = <rotn_blocks:slightly_weathered_copper_block>;
var blockCoppC = <rotn_blocks:semi_wheatered_copper_block>;
var blockCoppD = <rotn_blocks:weathered_copper_block>;
/*var stairsCoppA = <caves_and_cliffs:copper_stairs>;
var stairsCoppB = <caves_and_cliffs:copper_stairs_stage_1>;
var stairsCoppC = <caves_and_cliffs:copper_stairs_stage_2>;
var stairsCoppD = <caves_and_cliffs:copper_stairs_stage_3>;
var slabCoppA = <caves_and_cliffs:copper_slab>;
var slabCoppB = <caves_and_cliffs:copper_slab_stage_1>;
var slabCoppC = <caves_and_cliffs:copper_slab_stage_2>;
var slabCoppD = <caves_and_cliffs:copper_slab_stage_3>;

recipes.addShapedMirrored("stairsCoppA",stairsCoppA*8, [
[null,null,blockCoppA],
[null,blockCoppA,blockCoppA],
[blockCoppA,blockCoppA,blockCoppA]]);
recipes.addShapeless("stairsCoppA_to_block",blockCoppA*3, [
stairsCoppA,stairsCoppA,stairsCoppA,stairsCoppA]);
recipes.addShaped("slabCoppA",slabCoppA*6, [
[blockCoppA,blockCoppA,blockCoppA]]);
recipes.addShapeless("slabCoppA_to_block",blockCoppA, [
slabCoppA,slabCoppA]);
recipes.addShapedMirrored("stairsCoppB",stairsCoppB*8, [
[null,null,blockCoppB],
[null,blockCoppB,blockCoppB],
[blockCoppB,blockCoppB,blockCoppB]]);
recipes.addShapeless("stairsCoppB_to_block",blockCoppB*3, [
stairsCoppB,stairsCoppB,stairsCoppB,stairsCoppB]);
recipes.addShaped("slabCoppB",slabCoppB*6, [
[blockCoppB,blockCoppB,blockCoppB]]);
recipes.addShapeless("slabCoppB_to_block",blockCoppB, [
slabCoppB,slabCoppB]);
recipes.addShapedMirrored("stairsCoppC",stairsCoppC*8, [
[null,null,blockCoppC],
[null,blockCoppC,blockCoppC],
[blockCoppC,blockCoppC,blockCoppC]]);
recipes.addShapeless("stairsCoppC_to_block",blockCoppC*3, [
stairsCoppC,stairsCoppC,stairsCoppC,stairsCoppC]);
recipes.addShaped("slabCoppC",slabCoppC*6, [
[blockCoppC,blockCoppC,blockCoppC]]);
recipes.addShapeless("slabCoppC_to_block",blockCoppC, [
slabCoppC,slabCoppC]);
recipes.addShapedMirrored("stairsCoppD",stairsCoppD*8, [
[null,null,blockCoppD],
[null,blockCoppD,blockCoppD],
[blockCoppD,blockCoppD,blockCoppD]]);
recipes.addShapeless("stairsCoppD_to_block",blockCoppD*3, [
stairsCoppD,stairsCoppD,stairsCoppD,stairsCoppD]);
recipes.addShaped("slabCoppD",slabCoppD*6, [
[blockCoppD,blockCoppD,blockCoppD]]);
recipes.addShapeless("slabCoppD_to_block",blockCoppD, [
slabCoppD,slabCoppD]);
*/