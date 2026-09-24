#loader preinit
#priority -1
#sideonly client

import native.net.minecraft.client.renderer.block.model.ModelResourceLocation;
import native.net.minecraftforge.client.model.ModelLoader;
import native.net.minecraftforge.client.event.ModelRegistryEvent;
import scripts.contentweaker.nativeBlocks;

// in client only script, register the model of seeds item
//copper
//tin
//bronze
//brass
//electrum
//diamond
//alexandrite
//ruby
//sapphire
//cincinnasite
//gravitite
//zanite
//viridium
//mythril
//ferrought
//endorium
//exorite
//garsen
events.register(function(event as ModelRegistryEvent) {
    //copper
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_copper_item, 0, ModelResourceLocation(nativeBlocks.chandelier_copper_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_copper_item, 0, ModelResourceLocation(nativeBlocks.candle_copper_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_copper_item, 0, ModelResourceLocation(nativeBlocks.chain_copper_item.registryName, "inventory"));
    //tin
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_tin_item, 0, ModelResourceLocation(nativeBlocks.chandelier_tin_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_tin_item, 0, ModelResourceLocation(nativeBlocks.candle_tin_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_tin_item, 0, ModelResourceLocation(nativeBlocks.chain_tin_item.registryName, "inventory"));
    //bronze
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_bronze_item, 0, ModelResourceLocation(nativeBlocks.chandelier_bronze_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_bronze_item, 0, ModelResourceLocation(nativeBlocks.candle_bronze_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_bronze_item, 0, ModelResourceLocation(nativeBlocks.chain_bronze_item.registryName, "inventory"));
    //brass
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_brass_item, 0, ModelResourceLocation(nativeBlocks.chandelier_brass_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_brass_item, 0, ModelResourceLocation(nativeBlocks.candle_brass_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_brass_item, 0, ModelResourceLocation(nativeBlocks.chain_brass_item.registryName, "inventory"));
    //electrum
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_electrum_item, 0, ModelResourceLocation(nativeBlocks.chandelier_electrum_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_electrum_item, 0, ModelResourceLocation(nativeBlocks.candle_electrum_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_electrum_item, 0, ModelResourceLocation(nativeBlocks.chain_electrum_item.registryName, "inventory"));
    //diamond
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_diamond_item, 0, ModelResourceLocation(nativeBlocks.chandelier_diamond_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_diamond_item, 0, ModelResourceLocation(nativeBlocks.candle_diamond_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_diamond_item, 0, ModelResourceLocation(nativeBlocks.chain_diamond_item.registryName, "inventory"));
    //alexandrite
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_alexandrite_item, 0, ModelResourceLocation(nativeBlocks.chandelier_alexandrite_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_alexandrite_item, 0, ModelResourceLocation(nativeBlocks.candle_alexandrite_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_alexandrite_item, 0, ModelResourceLocation(nativeBlocks.chain_alexandrite_item.registryName, "inventory"));
    //ruby
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_ruby_item, 0, ModelResourceLocation(nativeBlocks.chandelier_ruby_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_ruby_item, 0, ModelResourceLocation(nativeBlocks.candle_ruby_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_ruby_item, 0, ModelResourceLocation(nativeBlocks.chain_ruby_item.registryName, "inventory"));
    //sapphire
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_sapphire_item, 0, ModelResourceLocation(nativeBlocks.chandelier_sapphire_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_sapphire_item, 0, ModelResourceLocation(nativeBlocks.candle_sapphire_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_sapphire_item, 0, ModelResourceLocation(nativeBlocks.chain_sapphire_item.registryName, "inventory"));
    //cincinnasite
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_cincinnasite_item, 0, ModelResourceLocation(nativeBlocks.chandelier_cincinnasite_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_cincinnasite_item, 0, ModelResourceLocation(nativeBlocks.candle_cincinnasite_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_cincinnasite_item, 0, ModelResourceLocation(nativeBlocks.chain_cincinnasite_item.registryName, "inventory"));
    //gravitite
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_gravitite_item, 0, ModelResourceLocation(nativeBlocks.chandelier_gravitite_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_gravitite_item, 0, ModelResourceLocation(nativeBlocks.candle_gravitite_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_gravitite_item, 0, ModelResourceLocation(nativeBlocks.chain_gravitite_item.registryName, "inventory"));
    //zanite
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_zanite_item, 0, ModelResourceLocation(nativeBlocks.chandelier_zanite_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_zanite_item, 0, ModelResourceLocation(nativeBlocks.candle_zanite_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_zanite_item, 0, ModelResourceLocation(nativeBlocks.chain_zanite_item.registryName, "inventory"));
    //viridium
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_viridium_item, 0, ModelResourceLocation(nativeBlocks.chandelier_viridium_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_viridium_item, 0, ModelResourceLocation(nativeBlocks.candle_viridium_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_viridium_item, 0, ModelResourceLocation(nativeBlocks.chain_viridium_item.registryName, "inventory"));
    //mythril
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_mythril_item, 0, ModelResourceLocation(nativeBlocks.chandelier_mythril_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_mythril_item, 0, ModelResourceLocation(nativeBlocks.candle_mythril_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_mythril_item, 0, ModelResourceLocation(nativeBlocks.chain_mythril_item.registryName, "inventory"));
    //ferrought
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_ferrought_item, 0, ModelResourceLocation(nativeBlocks.chandelier_ferrought_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_ferrought_item, 0, ModelResourceLocation(nativeBlocks.candle_ferrought_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_ferrought_item, 0, ModelResourceLocation(nativeBlocks.chain_ferrought_item.registryName, "inventory"));
    //endorium
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_endorium_item, 0, ModelResourceLocation(nativeBlocks.chandelier_endorium_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_endorium_item, 0, ModelResourceLocation(nativeBlocks.candle_endorium_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_endorium_item, 0, ModelResourceLocation(nativeBlocks.chain_endorium_item.registryName, "inventory"));
    //exorite
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_exorite_item, 0, ModelResourceLocation(nativeBlocks.chandelier_exorite_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_exorite_item, 0, ModelResourceLocation(nativeBlocks.candle_exorite_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_exorite_item, 0, ModelResourceLocation(nativeBlocks.chain_exorite_item.registryName, "inventory"));
    //garsen
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chandelier_garsen_item, 0, ModelResourceLocation(nativeBlocks.chandelier_garsen_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.candle_garsen_item, 0, ModelResourceLocation(nativeBlocks.candle_garsen_item.registryName, "inventory"));
    ModelLoader.setCustomModelResourceLocation(nativeBlocks.chain_garsen_item, 0, ModelResourceLocation(nativeBlocks.chain_garsen_item.registryName, "inventory"));
});