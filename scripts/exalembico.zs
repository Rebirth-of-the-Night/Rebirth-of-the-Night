import mods.exalembico.ExAlembico;
import mods.exalembico.Alembic;
import mods.exalembico.Heater;

ExAlembico.registerHeatSourceBlock(<minecraft:magma>.asBlock(), 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=north,heated=true>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=east,heated=true>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=west,heated=true>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=south,heated=true>, 1);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=north,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=east,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=west,heated=true>, 2);
ExAlembico.registerHeatSourceBlock(<blockstate:exsartagine:hearth:facing=south,heated=true>, 2);

Heater.addHeaterRecipe(<minecraft:stick>, 10, 1, 4);
Heater.addHeaterRecipe(<minecraft:coal>, 1600, 3, 10);
Heater.addHeaterRecipe(<minecraft:coal_block>, 16000, 1, 15);

Alembic.beginAlembicRecipe(2, 640)
  .setInputItem(<pyrotech:material:36>, <minecraft:redstone>)
  .setInputFluid(<liquid:methanol> * 25)
  .setOutputFluid(<liquid:water> * 25)
  .setOutputItem(<contenttweaker:raw_gold>)
  .setBonusOutputItem(<contenttweaker:raw_gold>, 0.66)
  .addToAlembic();

Alembic.beginAlembicRecipe(1, 400)
  .setInputItem(<contenttweaker:moss_patch>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(1, 400)
  .setInputItem(<betteranimalsplus:trillium>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(1, 400)
  .setInputItem(<dynamictreesbop:eucalyptusseed>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(1, 400)
  .setInputItem(<rustic:aloe_vera>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(1, 400)
  .setInputItem(<quark:glowshroom>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
Alembic.beginAlembicRecipe(1, 400)
  .setInputItem(<quark:root>)
  .setOutputItem(<contenttweaker:bandage_salve>, <contenttweaker:bandage>)
  .addToAlembic();
  
//Alembic.beginAlembicRecipe(1, 16)
//  .setInputItem(<minecraft:ice>)
//  .setOutputFluid(<liquid:water> * 1000)
//  .setBonusOutputItem(<minecraft:gold_nugget>, 0.25)
//  .addToAlembic();
//Alembic.beginAlembicRecipe(4, 24)
//  .setInputItem(<ore:ingotIron>)
//  .setInputItem(<ore:dustGlowstone>)
//  .setOutputItem(<minecraft:gold_ingot>)
//  .addToAlembic();
//Alembic.beginAlembicRecipe(8, 24)
//  .setInputItem(<ore:dustGlowstone>, <minecraft:redstone>)
//  .setInputFluid(<liquid:lava> * 1000, <liquid:water> * 1000)
//  .setOutputItem(<minecraft:glowstone>, <ore:blockRedstone>)
//  .addToNetherAlembic();
