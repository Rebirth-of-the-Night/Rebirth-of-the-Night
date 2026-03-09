import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

JEI.removeAndHide(<scalinghealth:crystalore>);
JEI.removeAndHide(<scalinghealth:difficultychanger:*>);
JEI.removeAndHide(<scalinghealth:healingitem>);
JEI.removeAndHide(<scalinghealth:healingitem:1>);

recipes.addShaped("suturing_kit_1", <contenttweaker:suturing_kit>, 
[[null, <ore:genericMetal>, null], 
[<contenttweaker:bandage>, <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Amplifier: 4}]}), <contenttweaker:bandage>], 
[<minecraft:string>, <ore:durableFiber>, <minecraft:string>]]);

recipes.addShaped("suturing_kit_2", <contenttweaker:suturing_kit>, 
[[null, <ore:genericMetal>, null], 
[<contenttweaker:bandage>, <scalinghealth:heartdust>, <contenttweaker:bandage>], 
[<minecraft:string>, <ore:durableFiber>, <minecraft:string>]]);

recipes.addShaped("suturing_kit_3", <contenttweaker:suturing_kit>, 
[[null, <ore:genericMetal>, null], 
[<contenttweaker:bandage>, <aether_legacy:healing_stone>, <contenttweaker:bandage>], 
[<minecraft:string>, <ore:durableFiber>, <minecraft:string>]]);

recipes.addShapeless(<mod_lavacow:cursed_bandage>*10, [<contenttweaker:suturing_kit>]);

recipes.remove(<mod_lavacow:cursed_bandage>);
recipes.addShaped("pet_bandage", <mod_lavacow:cursed_bandage>*20, 
[[<mod_lavacow:cursed_fabric>, <ore:durableFiber>, <mod_lavacow:cursed_fabric>], 
[<mod_lavacow:cursed_fabric>, <ore:durableFiber>, <mod_lavacow:cursed_fabric>], 
[<mod_lavacow:cursed_fabric>, <ore:durableFiber>, <mod_lavacow:cursed_fabric>]]);

// Need to implement "salve" for this. Can be a bottle with the same ingredients of bandage_salve, or a health elixir
//recipes.addShapeless("suturing_kit", <contenttweaker:suturing_kit>,
// [<contenttweaker:bandage>,<ore:durableFiber>,<ore:salve>]);