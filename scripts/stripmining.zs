import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;


recipes.remove(<stripmining:excavator_dunland>);
recipes.remove(<stripmining:excavator_shadits>);
recipes.remove(<stripmining:prospecting_pick_amber>);
recipes.remove(<stripmining:prospecting_pick_alexandrite>);
recipes.remove(<stripmining:prospecting_pick_amber_alexandrite>);
JEI.removeAndHide(<stripmining:hammer_strife>);

recipes.addShaped("prospecting_pick_amber", <stripmining:prospecting_pick_amber>,[
	[null, <ore:ingotSteel>, <nyx:fallen_star>],
    [null, <ore:gemAmbrosium>, <ore:ingotSteel>],
    [<ore:stickWood>, null, null]
]);
recipes.addShaped("prospecting_pick_alexandrite", <stripmining:prospecting_pick_alexandrite>,[
	[null, <villagenames:codex>, <contenttweaker:peridot_ingot>],
    [null, <minecraft:blaze_rod>, <cyclicmagic:tool_spelunker>],
    [<minecraft:blaze_rod>, null, null]
]);
recipes.addShapeless("prospecting_pick_amber_alexandrite1", <stripmining:prospecting_pick_amber_alexandrite>,
    [<stripmining:prospecting_pick_alexandrite>, <stripmining:prospecting_pick_amber>]);
recipes.addShaped("prospecting_pick_amber_alexandrite2", <stripmining:prospecting_pick_amber_alexandrite>,[
	[null, <nyx:fallen_star>|<villagenames:codex>, <contenttweaker:peridot_ingot>],
    [null, <ore:ingotSteel>, <ore:gemAmbrosium>|<cyclicmagic:tool_spelunker>],
    [<minecraft:blaze_rod>, null, null]
]);