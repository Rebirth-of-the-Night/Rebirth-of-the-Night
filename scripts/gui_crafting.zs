import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

mods.selectionguicrafting.category.categoryBuilder()
.id("whittling")
.trigger(<dungeontactics:wooden_knife>)
.trigger(<dungeontactics:bone_knife>)
.trigger(<dungeontactics:stone_knife>)
.trigger(<dungeontactics:iron_knife>)
.trigger(<dungeontactics:silver_knife>)
.trigger(<dungeontactics:golden_knife>)
.trigger(<dungeontactics:steel_knife>)
.trigger(<dungeontactics:diamond_knife>)
.trigger(<dungeontactics:mithril_knife>)
.background("minecraft:textures/blocks/planks_oak.png")
.backgroundType("TILE")
.border("selectioncrafting:textures/gui/decor/default.png")
.frame("rotn:textures/items/big_nod")
.bar("selectioncrafting:textures/gui/bar/default.png")
.sound("minecraft:block.wood.break", 16.0, 1.0)
//.soundType("RANDOM") //RANDOM or COMBINED
//.particle("CLOUD", 100, 1.0)
.queueable(true)
.outputType("INVENTORY")
.register();

mods.selectionguicrafting.category.categoryBuilder()
.id("inspecting")
.trigger(<artisanworktables:artisans_lens_stone>)
.trigger(<artisanworktables:artisans_lens_gold>)
.background("minecraft:textures/blocks/planks_oak.png")
.backgroundType("TILE")
.border("selectioncrafting:textures/gui/decor/default.png")
.frame("selectioncrafting:textures/gui/frame/chest.png")
.bar("selectioncrafting:textures/gui/bar/default.png")
.sound("minecraft:block.wood.break", 16.0, 1.0)
//.soundType("RANDOM") //RANDOM or COMBINED
//.particle("CLOUD", 100, 1.0)
.queueable(true)
.outputType("INVENTORY")
.register();

mods.selectionguicrafting.category.categoryBuilder()
.id("fletching")
.trigger(<futuremc:fletching_table>, 10.0, 0.1, 10.0)
.background("minecraft:textures/blocks/planks_oak.png")
.backgroundType("TILE")
.border("selectioncrafting:textures/gui/decor/default.png")
.frame("selectioncrafting:textures/gui/frame/chest.png")
.bar("selectioncrafting:textures/gui/bar/default.png")
.sound("minecraft:block.wood.break", 16.0, 1.0)
//.soundType("RANDOM") //RANDOM or COMBINED
//.particle("CLOUD", 100, 1.0)
.queueable(true)
.outputType("INVENTORY")
.register();



mods.selectionguicrafting.recipe.recipeBuilder()
.category("whittling")
.input(<doggytalents:throw_stick>)
.output(<minecraft:stick>*2)
.time(10)
.register();

mods.selectionguicrafting.recipe.recipeBuilder()
.category("whittling")
.input(<minecraft:stick>)
.output(<dungeontactics:sharp_stick>)
.time(5)
.register();

mods.selectionguicrafting.recipe.recipeBuilder()
.category("whittling")
.input(<minecraft:painting>)
.output(<betterwithmods:material:4>)
.register();