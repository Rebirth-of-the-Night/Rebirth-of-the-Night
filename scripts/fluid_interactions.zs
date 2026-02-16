#loader crafttweaker reloadable
#reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.fluidintetweaker.FITweaker;
import mods.fluidintetweaker.FBTweaker;
import mods.fluidintetweaker.interaction.Condition;

// Lava touching blood creates netherwrought stone
FITweaker.addRecipe(
  <liquid:lava>, 
  <liquid:blood>,
    FITweaker.outputBuilder()
	  .addEvent(FITweaker.eventBuilder().createSetBlockEvent(<blockstate:quark:polished_netherrack:variant=polished_netherrack_bricks>)
        .setSound("cyclicmagic:fireball_explode")
        .setParticle("explode")
        .addCondition(Condition.dimension, [-1])
		));