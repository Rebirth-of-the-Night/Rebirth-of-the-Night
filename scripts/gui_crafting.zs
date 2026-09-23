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
.frame("rotn:textures/items/big_nod.png")
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

mods.selectionguicrafting.category.categoryBuilder()
.id("glassblowing")
.trigger(<contenttweaker:blowpipe>, 10.0, 0.1, 10.0)
.background("minecraft:textures/blocks/planks_oak.png")
.backgroundType("TILE")
.border("selectioncrafting:textures/gui/decor/default.png")
.frame("pyrotech:textures/blocks/slag_glass_normal.png")
.bar("selectioncrafting:textures/gui/bar/default.png")
.sound("minecraft:block.wood.break", 16.0, 1.0)
//.soundType("RANDOM") //RANDOM or COMBINED
//.particle("CLOUD", 100, 1.0)
.queueable(true)
.outputType("INVENTORY")
.register();

// whittling
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

mods.selectionguicrafting.recipe.recipeBuilder()
.category("whittling")
.input(<ore:logWood>)
.output(<earthworks:item_timber>*4)
.time(20)
.register();

mods.selectionguicrafting.recipe.recipeBuilder()
.category("whittling")
.input(<earthworks:item_timber>)
.output(<totemexpansion:totem_base>)
.time(60)
.register();

// glassblowing

mods.selectionguicrafting.recipe.recipeBuilder()
.category("glassblowing")
.input(<da:flame_metal_scrap>)
.output(<minecraft:glass>)
.time(2)
.register();
mods.selectionguicrafting.recipe.recipeBuilder()
.category("glassblowing")
.input(<da:flame_metal_scrap>)
.output(<minecraft:glass_pane>)
.time(2)
.register();
mods.selectionguicrafting.recipe.recipeBuilder()
.category("glassblowing")
.input(<da:flame_metal_scrap>)
.output(<minecraft:glass_bottle>*8)
.time(10)
.register();
mods.selectionguicrafting.recipe.recipeBuilder()
.category("glassblowing")
.input(<da:flame_metal_scrap>)
.input(<minecraft:slime_ball>)
.output(<vials:vial_288>*20)
.time(10)
.register();
mods.selectionguicrafting.recipe.recipeBuilder()
.category("glassblowing")
.input(<da:flame_metal_scrap>)
.input(<betterwithmods:aesthetic:10>)
.output(<totf:cleaner>)
.time(10)
.register();
mods.selectionguicrafting.recipe.recipeBuilder()
.category("glassblowing")
.input(<da:flame_metal_scrap>)
.output(<biomesoplenty:jar_empty>*4)
.time(10)
.register();
mods.selectionguicrafting.recipe.recipeBuilder()
.category("glassblowing")
.input(<da:flame_metal_scrap>)
.output(<growthcraft_cellar:culture_jar>*4)
.time(10)
.register();
mods.selectionguicrafting.recipe.recipeBuilder()
.category("glassblowing")
.input(<da:flame_metal_scrap>)
.output(<iceandfire:jar_empty>*4)
.time(10)
.register();
mods.selectionguicrafting.recipe.recipeBuilder()
.category("glassblowing")
.input(<da:flame_metal_scrap>)
.output(<contenttweaker:glass_bead>)
.time(2)
.register();
