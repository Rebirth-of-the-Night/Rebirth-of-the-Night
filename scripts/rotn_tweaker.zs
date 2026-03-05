import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val vessel_source_bronze = <rotntweaker:smelting_vessel>.withTag({storedItems: [{id: "contenttweaker:material_part", Count: 1, Damage: 21}, {id: "contenttweaker:material_part", Count: 3, Damage: 20}]});
val vessel_ingot_bronze = <rotntweaker:smelting_vessel>.withTag({storedItems: [{id: "contenttweaker:material_part", Count: 1, Damage: 0}]});

val clay_ball = <minecraft:clay_ball>;
val dust_copper = <ore:dustCopper>;
val dust_tin = <ore:dustTin>;

recipes.addShapeless("vessel_source_bronze",vessel_source_bronze,[
    dust_tin,dust_copper,dust_copper,dust_copper,clay_ball
]);