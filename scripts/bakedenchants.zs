import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import mods.jei.JEI;
import mods.ltt.LootTable;

//Removes the two default baked enchants on gold sword and pickaxe
mods.bakedenchants.BakedEnchants.remove(<minecraft:golden_pickaxe:*>);
mods.bakedenchants.BakedEnchants.remove(<minecraft:golden_sword:*>);

//Extinction included on Ender of Worlds by Default
mods.bakedenchants.BakedEnchants.addBakedEnchantment(<msmlegacy:adminium_ark>, <enchantment:msmlegacy:extinction>.makeEnchantment(1));
