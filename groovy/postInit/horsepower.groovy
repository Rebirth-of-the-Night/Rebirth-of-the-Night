mods.horsepower.press.removeAll()

mods.horsepower.press.recipeBuilder()
    .input(ore('treeLeaves'))
    .fluidOutput(fluid('water') * 1000)
	.output(item())
    .register()