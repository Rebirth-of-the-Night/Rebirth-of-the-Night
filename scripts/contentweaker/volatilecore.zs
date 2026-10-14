#loader contenttweaker

import crafttweaker.item.IItemStack;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Commands;

val volatile_core = VanillaFactory.createItem("volatile_core");
volatile_core.register();

val volatile_powder = VanillaFactory.createItem("volatile_powder");
volatile_powder.register();

val volatile_magic = VanillaFactory.createItem("volatile_magic");
volatile_magic.register();

val magicbomb = VanillaFactory.createItem("magic_bomb");
magicbomb.maxStackSize = 8;
magicbomb.register();
