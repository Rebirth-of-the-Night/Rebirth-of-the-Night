import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.data.IData;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.item.IItemStack;
import mods.ltt.LootTable;
import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;

// Slider boss chest
val sliderChest = LootTweaker.getTable("aether_legacy:chests/bronze_dungeon_reward");
val sliderChestMain = sliderChest.getPool("main");
sliderChestMain.addItemEntry(<glaretorch:itemglaretorch>, 1, 0, [{"count": {"min": 5.0, "max": 18.0}, "function": "minecraft:set_count"}], []);
sliderChestMain.addItemEntry(<glaretorch:itemglaretorch>, 2, 0, [{"count": {"min": 1.0, "max": 5.0}, "function": "minecraft:set_count"}], []);
sliderChestMain.addItemEntry(<glaretorch:itemglaretorch>, 1, 40, [{"count": {"min": 24.0, "max": 48.0}, "function": "minecraft:set_count"}], []);

sliderChestMain.addItemEntry(<contenttweaker:block_electrum>, 2, 0, [{"count": {"min": 2.0, "max": 3.0}, "function": "minecraft:set_count"}], []);

// Sun spirit chest
val sunChest = LootTweaker.getTable("aether_legacy:chests/gold_dungeon_reward");
val sunChestMain = sunChest.getPool("main");
sunChestMain.addItemEntry(<arcaneworld:molten_core>, 10);

// Mimics fix
val mimic = LootTweaker.getTable("aether_legacy:entities/chest_mimic");
val mimicMain = mimic.getPool("chest");
mimicMain.addItemEntry(<aether_legacy:ambrosium_torch>, 10, 1, [{"count": {"min": 8.0, "max": 12.0}, "function": "minecraft:set_count"}], []);
mimicMain.addItemEntry(<aether_legacy:ambrosium_shard>, 8, 1, [{"count": {"min": 4.0, "max": 6.0}, "function": "minecraft:set_count"}], []);
mimicMain.addItemEntry(<aether_legacy:zanite_gemstone>, 6, 1, [{"count": {"min": 1.0, "max": 2.0}, "function": "minecraft:set_count"}], []);