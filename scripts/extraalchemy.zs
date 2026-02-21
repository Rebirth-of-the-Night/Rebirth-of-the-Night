import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.artisanworktables.builder.RecipeBuilder;

JEI.removeAndHide(<minecraft:splash_potion>.withTag({Potion: "extraalchemy:return_normal"}));
JEI.removeAndHide(<minecraft:lingering_potion>.withTag({Potion: "extraalchemy:return_normal"}));

JEI.removeAndHide(<minecraft:lingering_potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}));
JEI.removeAndHide(<minecraft:potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}));
JEI.removeAndHide(<minecraft:splash_potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}));

JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:night_vision"}));

JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:fire_resistance"}));

JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:leech_normal"}));

JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:leech_strong"}));

JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:magnetism_normal"}));

JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:magnetism_strong"}));

JEI.removeAndHide(<extraalchemy:empty_ring>);

JEI.removeAndHide(<extraalchemy:vial_break>);
JEI.removeAndHide(<extraalchemy:empty_ring>);
JEI.removeAndHide(<extraalchemy:modified_potion>);


recipes.removeByRecipeName("extraalchemy:minecraft_strong_regeneration");
recipes.removeByRecipeName("extraalchemy:minecraft_regeneration");

brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:harming"}), <minecraft:speckled_melon>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:harming"}), <minecraft:gunpowder>);
