mods.horsepower.press.removeAll()

mods.horsepower.press.recipeBuilder()
    .input(ore('treeLeaves'))
    .fluidOutput(fluid('water') * 1000)
	.output(item())
    .register()
	
mods.horsepower.press.recipeBuilder()
    .input(item('betterwithmods:hemp'))
    .fluidOutput(fluid('flaxseed_oil') * 100)
	.output(item())
    .register()
	
mods.horsepower.press.recipeBuilder()
    .input(item('textiles:flax_seeds'))
    .fluidOutput(fluid('flaxseed_oil') * 100)
	.output(item())
    .register()