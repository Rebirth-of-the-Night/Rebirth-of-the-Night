#modloaded harvestcrafttweaker

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.harvestcrafttweaker.HarvestCraftTweaker;

// HarvestCraftTweaker.clearAllPressing();
// HarvestCraftTweaker.addPressing(IIngredient input, IItemStack leftOutput, IItemStack rightOutput);
// HarvestCraftTweaker.removePressingByInput(IItemStack input);

HarvestCraftTweaker.clearAllPressing();
HarvestCraftTweaker.addPressing(<harvestcraft:silkentofuitem>, <harvestcraft:firmtofuitem>, <harvestcraft:soymilkitem>);
HarvestCraftTweaker.addPressing(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}), <minecraft:slime_ball>, <harvestcraft:freshwateritem>);

// HarvestCraftTweaker.clearAllGrinding();
// HarvestCraftTweaker.addGrinding(IIngredient input, IItemStack leftOutput, IItemStack rightOutput);
// HarvestCraftTweaker.removeGrindingByInput(IItemStack input);

// HarvestCraftTweaker.addWaterFilter(IIngredient input, IItemStack leftOutput, IItemStack rightOutput);
// HarvestCraftTweaker.removeWaterFilterByInput(IItemStack input);

// HarvestCraftTweaker.addGroundTrap(IIngredient input, IItemStack[] outputs);
// HarvestCraftTweaker.removeGroundTrapByInput(IItemStack input);

// HarvestCraftTweaker.addWaterTrap(IIngredient input, IItemStack[] outputs);
// HarvestCraftTweaker.removeWaterTrapByInput(IItemStack input);

// HarvestCraftTweaker.clearAllMarket();
// HarvestCraftTweaker.addMarket(IItemStack toBuy, IItemStack input, int cost);
// HarvestCraftTweaker.removeMarketByOutput(IItemStack output);

HarvestCraftTweaker.addMarket(<growthcraft_rice:rice>, <minecraft:emerald>, 2);
HarvestCraftTweaker.removeMarketByOutput(<harvestcraft:chilipepperseeditem>);
HarvestCraftTweaker.removeMarketByOutput(<harvestcraft:grapeseeditem>);
HarvestCraftTweaker.removeMarketByOutput(<harvestcraft:greengrapeseeditem>);

//Flowers - temporary until generation is added in
HarvestCraftTweaker.addMarket(<bblsom:wildflowers_west_kraired>*32, <biomesoplenty:gem:2>, 1);
HarvestCraftTweaker.addMarket(<bblsom:wildflowers_north_kraired>*32, <biomesoplenty:gem:2>, 1);
HarvestCraftTweaker.addMarket(<bblsom:wildflowers_atashum>*32, <biomesoplenty:gem:1>, 1);
HarvestCraftTweaker.addMarket(<bblsom:wildflowers_haelat>*32, <biomesoplenty:gem:1>, 1);
HarvestCraftTweaker.addMarket(<bblsom:wildflowers_rising_isles>*32, <biomesoplenty:gem:6>, 1);
HarvestCraftTweaker.addMarket(<bblsom:wildflowers_rymoe>*32, <biomesoplenty:gem:1>, 1);
HarvestCraftTweaker.addMarket(<bblsom:wildflowers_hailakand>*32, <minecraft:diamond>, 1);
HarvestCraftTweaker.addMarket(<bblsom:wildflowers_mortarid>*32, <minecraft:diamond>, 1);
HarvestCraftTweaker.addMarket(<bblsom:wildflowers_prektane>*32, <minecraft:diamond>, 1);
HarvestCraftTweaker.addMarket(<bblsom:wildflowers_wanlonggu>*32, <biomesoplenty:gem:6>, 1);

// HarvestCraftTweaker.addShipping(IItemStack toBuy, IItemStack input, int cost);
// HarvestCraftTweaker.removeShippingByOutput(IItemStack output);

