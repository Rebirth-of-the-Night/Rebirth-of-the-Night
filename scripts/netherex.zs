import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.ltt.LootTable;

brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <netherex:rime_crystal>);
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <netherex:frost_powder>, <minecraft:potion>.withTag({Potion: "netherex:freezing"}));

// temporary
recipes.addShaped(<netherex:ghast_queen_tear>,[
[<quark:biotite>, <biomesoplenty:biome_essence>, <quark:biotite>],
[<minecraft:ghast_tear>, <minecraft:nether_star>, <minecraft:ghast_tear>], 
[<minecraft:ender_eye>, <minecraft:ender_eye>, <minecraft:ender_eye>]
]);

JEI.removeAndHide(<netherex:dull_mirror>);
JEI.removeAndHide(<netherex:worn_iron>);

LootTable.removeGlobalItem("netherex:wither_bone");
recipes.remove(<netherex:wither_bone>);
recipes.remove(<netherex:wither_dust>);

LootTable.removeGlobalItem("netherex:rime_crystal");
furnace.remove(<netherex:rime_crystal>);
furnace.remove(<netherex:rime_ore>);
JEI.removeAndHide(<netherex:rime_ore>);
JEI.removeAndHide(<netherex:rime_crystal>);
JEI.removeAndHide(<netherex:rime_block>);

JEI.removeAndHide(<netherex:withered_amedian_sword>);
JEI.removeAndHide(<netherex:withered_amedian_pickaxe>);
JEI.removeAndHide(<netherex:withered_amedian_shovel>);
JEI.removeAndHide(<netherex:withered_amedian_axe>);
JEI.removeAndHide(<netherex:withered_amedian_hoe>);
JEI.removeAndHide(<netherex:withered_amedian_hammer>);
JEI.removeAndHide(<netherex:rime_and_steel>);

JEI.removeAndHide(<netherex:frosted_amedian_sword>);
JEI.removeAndHide(<netherex:frosted_amedian_pickaxe>);
JEI.removeAndHide(<netherex:frosted_amedian_shovel>);
JEI.removeAndHide(<netherex:frosted_amedian_axe>);
JEI.removeAndHide(<netherex:frosted_amedian_hoe>);

JEI.removeAndHide(<netherex:blazed_amedian_sword>);
JEI.removeAndHide(<netherex:blazed_amedian_pickaxe>);
JEI.removeAndHide(<netherex:blazed_amedian_shovel>);
JEI.removeAndHide(<netherex:blazed_amedian_axe>);
JEI.removeAndHide(<netherex:blazed_amedian_hoe>);
JEI.removeAndHide(<netherex:blazed_amedian_hammer>);

JEI.removeAndHide(<netherex:frosted_amedian_hammer>);


JEI.removeAndHide(<netherex:blazed_wither_bone>);

JEI.removeAndHide(<netherex:gloomy_netherbrick>);
JEI.removeAndHide(<netherex:gloomy_netherrack>);
JEI.removeAndHide(<netherex:gloomy_netherrack_path>);
JEI.removeAndHide(<netherex:gloomy_nether_brick>);
JEI.removeAndHide(<netherex:gloomy_nether_brick_slab>);
JEI.removeAndHide(<netherex:gloomy_nether_brick_stairs>);
JEI.removeAndHide(<netherex:gloomy_nether_brick_wall>);
JEI.removeAndHide(<netherex:gloomy_nether_brick_fence>);
JEI.removeAndHide(<netherex:gloomy_nether_brick_fence_gate>);
JEI.removeAndHide(<netherex:lively_netherbrick>);
JEI.removeAndHide(<netherex:lively_netherrack>);
JEI.removeAndHide(<netherex:lively_netherrack_path>);
JEI.removeAndHide(<netherex:lively_nether_brick>);
JEI.removeAndHide(<netherex:lively_nether_brick_slab>);
JEI.removeAndHide(<netherex:lively_nether_brick_stairs>);
JEI.removeAndHide(<netherex:lively_nether_brick_wall>);
JEI.removeAndHide(<netherex:lively_nether_brick_fence_gate>);
JEI.removeAndHide(<netherex:lively_nether_brick_fence>);
recipes.remove(<netherex:fiery_netherbrick>);
JEI.removeAndHide(<netherex:icy_netherbrick>);
JEI.removeAndHide(<netherex:icy_netherrack>);
JEI.removeAndHide(<netherex:icy_netherrack_path>);
JEI.removeAndHide(<netherex:icy_nether_brick>);
JEI.removeAndHide(<netherex:icy_nether_brick_slab>);
JEI.removeAndHide(<netherex:icy_nether_brick_stairs>);
JEI.removeAndHide(<netherex:icy_nether_brick_wall>);
JEI.removeAndHide(<netherex:icy_nether_brick_fence_gate>);
JEI.removeAndHide(<netherex:icy_nether_brick_fence>);
recipes.remove(<netherex:amethyst_crystal>);
JEI.removeAndHide(<netherex:amethyst_block>);
JEI.removeAndHide(<netherex:amethyst_ore>);

JEI.removeAndHide(<netherex:nether_brick_wall>);
JEI.removeAndHide(<netherex:red_nether_brick_wall>);
recipes.removeByRecipeName("netherex:nether_brick");
recipes.removeByRecipeName("netherex:quartz_block");
recipes.removeByRecipeName("netherex:gloomy_nether_brick_2");
recipes.removeByRecipeName("netherex:lively_nether_brick_2");
recipes.removeByRecipeName("netherex:fiery_nether_brick_2");
recipes.removeByRecipeName("netherex:icy_nether_brick_2");
recipes.removeByRecipeName("netherex:basalt_2");
recipes.removeByRecipeName("netherex:smooth_basalt_3");
recipes.removeByRecipeName("netherex:basalt_brick_3");
recipes.removeByRecipeName("netherex:basalt_pillar_2");
recipes.removeByRecipeName("netherex:soul_glass");

recipes.remove(<netherex:soul_glass_pane>);
recipes.addShaped("soul_glass_pane",<netherex:soul_glass_pane>,[
    [<netherex:soul_glass>,<netherex:soul_glass>,<netherex:soul_glass>],
    [<netherex:soul_glass>,<netherex:soul_glass>,<netherex:soul_glass>]
]);

recipes.removeByRecipeName("netherex:basalt");
recipes.addShapeless("black_basalt",<netherex:basalt>,[<netherex:smooth_basalt>]);

recipes.removeByRecipeName("netherex:smooth_basalt_1");
recipes.addShapeless("smooth_black_basalt",<netherex:smooth_basalt>,[<netherex:basalt_brick>]);

recipes.removeByRecipeName("netherex:basalt_brick_1");
recipes.addShapeless("black_basalt_bricks",<netherex:basalt_brick>,[<netherex:basalt_pillar>]);

furnace.remove(<netherex:fiery_nether_brick>);

recipes.addShapeless("fiery_nether_brick_sludge",<contenttweaker:unfired_fiery_brick>,[<contenttweaker:fiery_sludge>]);

recipes.addShapeless("fiery_nether_brick_revert",<contenttweaker:fiery_sludge>,[<contenttweaker:unfired_fiery_brick>]);

var slabArray = [<netherex:red_nether_brick_slab:0>,<netherex:gloomy_nether_brick_slab:0>,<netherex:lively_nether_brick_slab:0>,<netherex:fiery_nether_brick_slab:0>,<netherex:icy_nether_brick_slab:0>,<netherex:basalt_slab:0>,<netherex:smooth_basalt_slab:0>,<netherex:basalt_brick_slab:0>,<netherex:basalt_pillar_slab:0>] as IItemStack[];
var stairArray = [<netherex:red_nether_brick_stairs>,<netherex:gloomy_nether_brick_stairs>,<netherex:lively_nether_brick_stairs>,<netherex:fiery_nether_brick_stairs>,<netherex:icy_nether_brick_stairs>,<netherex:basalt_stairs>,<netherex:smooth_basalt_stairs>,<netherex:basalt_brick_stairs>,<netherex:basalt_pillar_stairs>] as IItemStack[];

for i, output in stairArray{
    recipes.addShapedMirrored(output*4,[
        [slabArray[i],null,null],
        [slabArray[i],slabArray[i],null],
        [slabArray[i],slabArray[i],slabArray[i]]
    ]);
}

brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <netherex:frost_powder>);

brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}), <netherex:rime_crystal>);

brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}), <netherex:rime_crystal>);

brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "netherex:freezing"}), <minecraft:dragon_breath>);

furnace.remove(<netherex:congealed_magma_cream>, <minecraft:magma_cream>);

recipes.remove(<netherex:frosted_amedian_sword>);
recipes.remove(<netherex:frosted_amedian_pickaxe>);
recipes.remove(<netherex:frosted_amedian_shovel>);
recipes.remove(<netherex:frosted_amedian_axe>);
recipes.remove(<netherex:frosted_amedian_hoe>);

recipes.remove(<netherex:wither_bone_helmet>);
recipes.remove(<netherex:wither_bone_chestplate>);
recipes.remove(<netherex:wither_bone_leggings>);
recipes.remove(<netherex:wither_bone_boots>);

recipes.remove(<netherex:wither_dust>);
recipes.remove(<netherex:frosted_wither_bone>);



var frostedwitherbone = <netherex:frosted_wither_bone>;
var obsidian = <minecraft:obsidian>;
var steel = <dungeontactics:steel_ingot>;
var witherbone = <iceandfire:witherbone>;
var frostrod = <netherex:frost_rod>;
var witherash = <quark:black_ash>;
var bone = <minecraft:bone>;


// Armors
recipes.addShaped("wither_bone_helmet", <netherex:wither_bone_helmet>,[
    [null, witherbone, null],
    [null, <minecraft:skull:1>, null]
]);
recipes.addShaped("wither_bone_chestplate", <netherex:wither_bone_chestplate>,[
    [witherbone, null, witherbone],
    [witherbone, witherbone, witherbone],
    [witherbone, witherbone, witherbone]
]);
recipes.addShaped("wither_bone_leggings", <netherex:wither_bone_leggings>,[
    [witherbone, witherbone, witherbone],
    [witherbone, null, witherbone],
    [witherbone, null, witherbone]
]);
recipes.addShaped("wither_bone_boots", <netherex:wither_bone_boots>,[
    [witherbone, null, witherbone],
    [witherbone, null, witherbone]
]);



recipes.addShaped("frosted_wither_bone", <netherex:frosted_wither_bone> * 3,[
    [null, frostrod, null],
    [frostrod, witherbone, frostrod],
    [null, frostrod, null]
]);

recipes.addShaped("wither_bone", <iceandfire:witherbone>,[
    [witherash, witherash, witherash],
    [witherash, bone, witherash],
    [witherash, witherash, witherash]
]);


