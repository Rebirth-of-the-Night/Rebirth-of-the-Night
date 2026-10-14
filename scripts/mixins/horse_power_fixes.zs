#loader mixin

import native.net.minecraft.item.ItemStack;
import native.net.minecraftforge.fluids.FluidStack;
import native.se.gory_moon.horsepower.jei.press.PressRecipeWrapper;

//Press fluid JEI registration null error fix

#mixin { targets = "se.gory_moon.horsepower.jei.press.PressRecipeMaker" }
zenClass PressRecipeMakerMixin {
    #mixin Static
    #mixin Redirect { method = "getPressFluidRecipes", at = { value = "NEW", target = "(Ljava/util/List;Lnet/minecraft/item/ItemStack;Lnet/minecraftforge/fluids/FluidStack;)Lse/gory_moon/horsepower/jei/press/PressRecipeWrapper;" } }
    function fix(inputs as [any], output as ItemStack, fluidOutput as FluidStack) as PressRecipeWrapper {
        return PressRecipeWrapper(inputs, ItemStack.EMPTY, fluidOutput);
    }
}