import crafttweaker.item.IItemStack;
import mods.exalembico.ExAlembico;
import mods.exalembico.Alembic;
import mods.exalembico.Heater;

recipes.addShaped("heater1", <exalembico:heater>, 
[[<betterwithaddons:wrought_bars>, <behgameon:accessory_17>, <betterwithaddons:wrought_bars>], 
[<betterwithaddons:wrought_bars>, <betterwithmods:material:27>, <betterwithaddons:wrought_bars>], 
[null, <aether_legacy:dungeon_block:5>, null]]);

ExAlembico.registerHeatSourceBlock(<minecraft:magma>.asBlock(), 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=north,heated=true>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=east,heated=true>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=west,heated=true>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=south,heated=true>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=north,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=east,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=west,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=south,heated=true>, 2);

Heater.addHeaterRecipe(<minecraft:stick>, 10, 1);
Heater.addHeaterRecipe(<minecraft:coal>, 1600, 3, 10);
Heater.addHeaterRecipe(<minecraft:coal_block>, 16000, 1, 15);

Alembic.beginAlembicRecipe(640)
  .setHeatLevels(2, 3)  
  .setInputItem(<pyrotech:material:36>, <minecraft:redstone>)
  .setInputFluid(<liquid:methanol> * 25)
  .setOutputFluid(<liquid:water> * 25)
  .setOutputItem(<contenttweaker:raw_gold>)
  .setBonusOutputItem(<contenttweaker:raw_gold>, 0.66)
  .addToAlembic();

Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setInputItem(<contenttweaker:moss_patch>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setInputItem(<betteranimalsplus:trillium>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setInputItem(<dynamictreesbop:eucalyptusseed>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setInputItem(<rustic:aloe_vera>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setInputItem(<quark:glowshroom>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(400)
  .setHeatLevels(1, 2)
  .setInputItem(<quark:root>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();