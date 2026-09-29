#loader preinit
#priority 100

    import native.net.minecraft.init.Blocks;
    import native.net.minecraft.block.Block;
    import native.net.minecraft.item.ItemBlock;
    import native.net.minecraft.util.ResourceLocation;
    import native.net.minecraft.world.World;
    import native.net.minecraft.item.Item;
    import native.net.minecraft.util.math.BlockPos;
    import native.net.minecraft.block.state.IBlockState;
    import native.net.minecraft.block.state.BlockStateContainer;
    import native.net.minecraft.block.properties.PropertyEnum;
    import native.java.util.Random;
    import native.net.minecraftforge.event.RegistryEvent;
    import native.knightminer.inspirations.tweaks.block.BlockFittedCarpet;

    
    //tapestry_black carpet
    static carpet_tapestry_black as Block = BlockFittedCarpet().setTranslationKey("crafttweaker.carpet_tapestry_black").setRegistryName("crafttweaker", "carpet_tapestry_black");
    static carpet_tapestry_black_item as Item = ItemBlock(carpet_tapestry_black).setRegistryName("crafttweaker", "carpet_tapestry_black");
        events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(carpet_tapestry_black);
    } else if (registryName == "minecraft:items") {
        event.registry.register(carpet_tapestry_black_item);
    }
    });
    
    //tapestry_blue carpet
    static carpet_tapestry_blue as Block = BlockFittedCarpet().setTranslationKey("crafttweaker.carpet_tapestry_blue").setRegistryName("crafttweaker", "carpet_tapestry_blue");
    static carpet_tapestry_blue_item as Item = ItemBlock(carpet_tapestry_blue).setRegistryName("crafttweaker", "carpet_tapestry_blue");
        events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(carpet_tapestry_blue);
    } else if (registryName == "minecraft:items") {
        event.registry.register(carpet_tapestry_blue_item);
    }
    });
    
    //tapestry_cyan carpet
    static carpet_tapestry_cyan as Block = BlockFittedCarpet().setTranslationKey("crafttweaker.carpet_tapestry_cyan").setRegistryName("crafttweaker", "carpet_tapestry_cyan");
    static carpet_tapestry_cyan_item as Item = ItemBlock(carpet_tapestry_cyan).setRegistryName("crafttweaker", "carpet_tapestry_cyan");
        events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(carpet_tapestry_cyan);
    } else if (registryName == "minecraft:items") {
        event.registry.register(carpet_tapestry_cyan_item);
    }
    });
    
    //tapestry_green carpet
    static carpet_tapestry_green as Block = BlockFittedCarpet().setTranslationKey("crafttweaker.carpet_tapestry_green").setRegistryName("crafttweaker", "carpet_tapestry_green");
    static carpet_tapestry_green_item as Item = ItemBlock(carpet_tapestry_green).setRegistryName("crafttweaker", "carpet_tapestry_green");
        events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(carpet_tapestry_green);
    } else if (registryName == "minecraft:items") {
        event.registry.register(carpet_tapestry_green_item);
    }
    });
    
    //tapestry_orange carpet
    static carpet_tapestry_orange as Block = BlockFittedCarpet().setTranslationKey("crafttweaker.carpet_tapestry_orange").setRegistryName("crafttweaker", "carpet_tapestry_orange");
    static carpet_tapestry_orange_item as Item = ItemBlock(carpet_tapestry_orange).setRegistryName("crafttweaker", "carpet_tapestry_orange");
        events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(carpet_tapestry_orange);
    } else if (registryName == "minecraft:items") {
        event.registry.register(carpet_tapestry_orange_item);
    }
    });
    
    //tapestry_purple carpet
    static carpet_tapestry_purple as Block = BlockFittedCarpet().setTranslationKey("crafttweaker.carpet_tapestry_purple").setRegistryName("crafttweaker", "carpet_tapestry_purple");
    static carpet_tapestry_purple_item as Item = ItemBlock(carpet_tapestry_purple).setRegistryName("crafttweaker", "carpet_tapestry_purple");
        events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(carpet_tapestry_purple);
    } else if (registryName == "minecraft:items") {
        event.registry.register(carpet_tapestry_purple_item);
    }
    });
    
    //tapestry_red carpet
    static carpet_tapestry_red as Block = BlockFittedCarpet().setTranslationKey("crafttweaker.carpet_tapestry_red").setRegistryName("crafttweaker", "carpet_tapestry_red");
    static carpet_tapestry_red_item as Item = ItemBlock(carpet_tapestry_red).setRegistryName("crafttweaker", "carpet_tapestry_red");
        events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(carpet_tapestry_red);
    } else if (registryName == "minecraft:items") {
        event.registry.register(carpet_tapestry_red_item);
    }
    });
    
    //tapestry_white carpet
    static carpet_tapestry_white as Block = BlockFittedCarpet().setTranslationKey("crafttweaker.carpet_tapestry_white").setRegistryName("crafttweaker", "carpet_tapestry_white");
    static carpet_tapestry_white_item as Item = ItemBlock(carpet_tapestry_white).setRegistryName("crafttweaker", "carpet_tapestry_white");
        events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(carpet_tapestry_white);
    } else if (registryName == "minecraft:items") {
        event.registry.register(carpet_tapestry_white_item);
    }
    });
    