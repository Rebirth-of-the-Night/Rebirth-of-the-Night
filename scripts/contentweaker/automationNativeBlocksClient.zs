#loader preinit
#priority -1
#sideonly client

    import native.net.minecraft.client.renderer.block.model.ModelResourceLocation;
    import native.net.minecraftforge.client.model.ModelLoader;
    import native.net.minecraftforge.client.event.ModelRegistryEvent;
    import scripts.contentweaker.automationNativeBlocks;

    
    for i in 0 .. 16 {
    events.register(function(event as ModelRegistryEvent) {
    ModelLoader.setCustomModelResourceLocation(automationNativeBlocks.carpet_tapestry_black_item, i, ModelResourceLocation(automationNativeBlocks.carpet_tapestry_black_item.registryName, "inventory"));
    });
    }
    
    for i in 0 .. 16 {
    events.register(function(event as ModelRegistryEvent) {
    ModelLoader.setCustomModelResourceLocation(automationNativeBlocks.carpet_tapestry_blue_item, i, ModelResourceLocation(automationNativeBlocks.carpet_tapestry_blue_item.registryName, "inventory"));
    });
    }
    
    for i in 0 .. 16 {
    events.register(function(event as ModelRegistryEvent) {
    ModelLoader.setCustomModelResourceLocation(automationNativeBlocks.carpet_tapestry_cyan_item, i, ModelResourceLocation(automationNativeBlocks.carpet_tapestry_cyan_item.registryName, "inventory"));
    });
    }
    
    for i in 0 .. 16 {
    events.register(function(event as ModelRegistryEvent) {
    ModelLoader.setCustomModelResourceLocation(automationNativeBlocks.carpet_tapestry_green_item, i, ModelResourceLocation(automationNativeBlocks.carpet_tapestry_green_item.registryName, "inventory"));
    });
    }
    
    for i in 0 .. 16 {
    events.register(function(event as ModelRegistryEvent) {
    ModelLoader.setCustomModelResourceLocation(automationNativeBlocks.carpet_tapestry_orange_item, i, ModelResourceLocation(automationNativeBlocks.carpet_tapestry_orange_item.registryName, "inventory"));
    });
    }
    
    for i in 0 .. 16 {
    events.register(function(event as ModelRegistryEvent) {
    ModelLoader.setCustomModelResourceLocation(automationNativeBlocks.carpet_tapestry_purple_item, i, ModelResourceLocation(automationNativeBlocks.carpet_tapestry_purple_item.registryName, "inventory"));
    });
    }
    
    for i in 0 .. 16 {
    events.register(function(event as ModelRegistryEvent) {
    ModelLoader.setCustomModelResourceLocation(automationNativeBlocks.carpet_tapestry_red_item, i, ModelResourceLocation(automationNativeBlocks.carpet_tapestry_red_item.registryName, "inventory"));
    });
    }
    
    for i in 0 .. 16 {
    events.register(function(event as ModelRegistryEvent) {
    ModelLoader.setCustomModelResourceLocation(automationNativeBlocks.carpet_tapestry_white_item, i, ModelResourceLocation(automationNativeBlocks.carpet_tapestry_white_item.registryName, "inventory"));
    });
    }
    