import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI;

JEI.removeAndHide(<artisanworktables:mechanical_toolbox>);
JEI.removeAndHide(<artisanworktables:toolbox>);
JEI.removeAndHide(<artisanworktables:design_pattern>);
JEI.removeAndHide(<artisanworkstumps:log_basin>);
JEI.removeAndHide(<artisanworkstumps:stone_basin>);
JEI.removeAndHide(<artisanworktables:artisans_lens_stone>);
JEI.removeAndHide(<artisanworktables:artisans_quill_stone>);
JEI.removeAndHide(<artisanworktables:artisans_carver_gold>);
JEI.removeAndHide(<artisanworktables:worktable>);

recipes.remove(<artisanworktables:artisans_lens_stone>);
recipes.remove(<artisanworktables:artisans_lens_gold>);
recipes.addShaped("artisans_lens_gold", <artisanworktables:artisans_lens_gold>, [
    [null, null, null],
    [<ore:nuggetGold>, <minecraft:glass_pane>, <ore:nuggetGold>], 
    [<ore:stickWood>, null, null]
]);
recipes.remove(<artisanworktables:artisans_lens_iron>);
recipes.addShaped("artisans_lens_iron", <artisanworktables:artisans_lens_iron>, [
    [null, null, null],
    [<ore:nuggetIron>, <minecraft:glass_pane>, <ore:nuggetIron>], 
    [<ore:stickWood>, null, null]
]);

recipes.remove(<artisanworktables:artisans_carver_stone>);
recipes.addShaped("artisans_carver_stone", <artisanworktables:artisans_carver_stone>, [
    [null,<ore:rock>],
    [<ore:stickWood>,null]
]);
recipes.remove(<artisanworktables:artisans_carver_iron>);
recipes.addShaped("artisans_carver_iron", <artisanworktables:artisans_carver_iron>, [
    [null,<ore:genericMetalNuggets>],
    [<ore:stickWood>,null]
]);

var disabledStumps as string[] = [
    "tailor",
    "carpenter",
    "mason",
    "blacksmith",
    "jeweler",
    "basic",
    "engineer",
    "mage",
    "scribe",
    "chemist",
    "farmer",
    "chef",
    "designer",
    "tanner"
] as string[];

var enabledTableMetas as int[] = [
    
] as int[];

var enabledStationMetas as int[] = [
    7, 
    11
] as int[];

for stump in disabledStumps {
    JEI.removeAndHide(itemUtils.getItem("artisanworkstumps:workstump_"~stump));
}

for i in 0 .. 15 {
    if !(enabledTableMetas has i) {
        JEI.removeAndHide(<artisanworktables:worktable>.definition.makeStack(i));
    }

    if !(enabledStationMetas has i) {
        JEI.removeAndHide(<artisanworktables:workstation>.definition.makeStack(i));
    }
}

// Recipe for Tier 2 Mage workstation
recipes.addShaped("mage_workstation", <artisanworktables:workstation:7>, [
    [<minecraft:dye:4>, <minecraft:carpet:11>, <minecraft:dye:4>],
    [<contenttweaker:vis_speck>, <minecraft:crafting_table>, <contenttweaker:vis_speck>], 
    [<ore:stoneSlab>, <ore:stone>, <ore:stoneSlab>]
]);


recipes.remove(<artisanworktables:artisans_quill_stone>);
recipes.remove(<artisanworktables:artisans_quill_iron>);
recipes.remove(<artisanworktables:artisans_quill_gold>);
recipes.remove(<artisanworktables:artisans_quill_brass>);
recipes.addShapeless("quill_iron", <artisanworktables:artisans_quill_iron>, [<ore:feather>,<ore:dye>,<ore:nuggetIron>,<minecraft:glass_bottle>]);
recipes.addShapeless("quill_gold", <artisanworktables:artisans_quill_gold>, [<ore:feather>,<ore:dye>,<ore:nuggetGold>,<minecraft:glass_bottle>]);
recipes.addShapeless("quill_brass", <artisanworktables:artisans_quill_brass>, [<ore:feather>,<ore:dye>,<ore:nuggetBrass>,<minecraft:glass_bottle>]);

// Gemcutter - removed for now because AA gem cutter table doesnt work with tools with durability?
//recipes.remove(<artisanworktables:artisans_gemcutter_gold>);
//recipes.addShapeless(<artisanworktables:artisans_gemcutter_gold>, [<arcanearchives:shaped_quartz>,<betterwithmods:material:3>,<spartanweaponry:material>]);

