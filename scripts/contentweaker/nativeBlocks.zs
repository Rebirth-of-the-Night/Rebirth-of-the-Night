#loader preinit
#priority 1

import native.net.minecraft.init.Blocks;
import native.net.minecraft.block.Block;
import native.net.minecraft.item.ItemBlock;
import native.net.minecraft.util.ResourceLocation;
import native.net.minecraft.world.World;
import native.net.minecraft.item.Item;
import native.net.minecraft.util.math.BlockPos;
import native.net.minecraft.block.state.IBlockState;
import native.java.util.Random;
import native.net.minecraftforge.event.RegistryEvent;
import native.rustic.common.blocks.BlockChandelier;
import native.rustic.common.blocks.BlockCandle;
import native.rustic.common.blocks.BlockChain;

//copper

static chandelier_copper as Block = BlockChandelier("chandelier_copper");
static chandelier_copper_item as Item = ItemBlock(chandelier_copper).setRegistryName(chandelier_copper.getRegistryName());

static candle_copper as Block = BlockCandle("candle_copper");
static candle_copper_item as Item = ItemBlock(candle_copper).setRegistryName(candle_copper.getRegistryName());

static chain_copper as Block = BlockChain("chain_copper");
static chain_copper_item as Item = ItemBlock(chain_copper).setRegistryName(chain_copper.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_copper);
        event.registry.register(candle_copper);
        event.registry.register(chain_copper);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_copper_item);
        event.registry.register(candle_copper_item);
        event.registry.register(chain_copper_item);
    }
});

//tin

static chandelier_tin as Block = BlockChandelier("chandelier_tin");
static chandelier_tin_item as Item = ItemBlock(chandelier_tin).setRegistryName(chandelier_tin.getRegistryName());

static candle_tin as Block = BlockCandle("candle_tin");
static candle_tin_item as Item = ItemBlock(candle_tin).setRegistryName(candle_tin.getRegistryName());

static chain_tin as Block = BlockChain("chain_tin");
static chain_tin_item as Item = ItemBlock(chain_tin).setRegistryName(chain_tin.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_tin);
        event.registry.register(candle_tin);
        event.registry.register(chain_tin);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_tin_item);
        event.registry.register(candle_tin_item);
        event.registry.register(chain_tin_item);
    }
});

//bronze

static chandelier_bronze as Block = BlockChandelier("chandelier_bronze");
static chandelier_bronze_item as Item = ItemBlock(chandelier_bronze).setRegistryName(chandelier_bronze.getRegistryName());

static candle_bronze as Block = BlockCandle("candle_bronze");
static candle_bronze_item as Item = ItemBlock(candle_bronze).setRegistryName(candle_bronze.getRegistryName());

static chain_bronze as Block = BlockChain("chain_bronze");
static chain_bronze_item as Item = ItemBlock(chain_bronze).setRegistryName(chain_bronze.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_bronze);
        event.registry.register(candle_bronze);
        event.registry.register(chain_bronze);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_bronze_item);
        event.registry.register(candle_bronze_item);
        event.registry.register(chain_bronze_item);
    }
});

//brass

static chandelier_brass as Block = BlockChandelier("chandelier_brass");
static chandelier_brass_item as Item = ItemBlock(chandelier_brass).setRegistryName(chandelier_brass.getRegistryName());

static candle_brass as Block = BlockCandle("candle_brass");
static candle_brass_item as Item = ItemBlock(candle_brass).setRegistryName(candle_brass.getRegistryName());

static chain_brass as Block = BlockChain("chain_brass");
static chain_brass_item as Item = ItemBlock(chain_brass).setRegistryName(chain_brass.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_brass);
        event.registry.register(candle_brass);
        event.registry.register(chain_brass);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_brass_item);
        event.registry.register(candle_brass_item);
        event.registry.register(chain_brass_item);
    }
});

//electrum

static chandelier_electrum as Block = BlockChandelier("chandelier_electrum");
static chandelier_electrum_item as Item = ItemBlock(chandelier_electrum).setRegistryName(chandelier_electrum.getRegistryName());

static candle_electrum as Block = BlockCandle("candle_electrum");
static candle_electrum_item as Item = ItemBlock(candle_electrum).setRegistryName(candle_electrum.getRegistryName());

static chain_electrum as Block = BlockChain("chain_electrum");
static chain_electrum_item as Item = ItemBlock(chain_electrum).setRegistryName(chain_electrum.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_electrum);
        event.registry.register(candle_electrum);
        event.registry.register(chain_electrum);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_electrum_item);
        event.registry.register(candle_electrum_item);
        event.registry.register(chain_electrum_item);
    }
});

//diamond

static chandelier_diamond as Block = BlockChandelier("chandelier_diamond");
static chandelier_diamond_item as Item = ItemBlock(chandelier_diamond).setRegistryName(chandelier_diamond.getRegistryName());

static candle_diamond as Block = BlockCandle("candle_diamond");
static candle_diamond_item as Item = ItemBlock(candle_diamond).setRegistryName(candle_diamond.getRegistryName());

static chain_diamond as Block = BlockChain("chain_diamond");
static chain_diamond_item as Item = ItemBlock(chain_diamond).setRegistryName(chain_diamond.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_diamond);
        event.registry.register(candle_diamond);
        event.registry.register(chain_diamond);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_diamond_item);
        event.registry.register(candle_diamond_item);
        event.registry.register(chain_diamond_item);
    }
});

//alexandrite

static chandelier_alexandrite as Block = BlockChandelier("chandelier_alexandrite");
static chandelier_alexandrite_item as Item = ItemBlock(chandelier_alexandrite).setRegistryName(chandelier_alexandrite.getRegistryName());

static candle_alexandrite as Block = BlockCandle("candle_alexandrite");
static candle_alexandrite_item as Item = ItemBlock(candle_alexandrite).setRegistryName(candle_alexandrite.getRegistryName());

static chain_alexandrite as Block = BlockChain("chain_alexandrite");
static chain_alexandrite_item as Item = ItemBlock(chain_alexandrite).setRegistryName(chain_alexandrite.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_alexandrite);
        event.registry.register(candle_alexandrite);
        event.registry.register(chain_alexandrite);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_alexandrite_item);
        event.registry.register(candle_alexandrite_item);
        event.registry.register(chain_alexandrite_item);
    }
});

//ruby

static chandelier_ruby as Block = BlockChandelier("chandelier_ruby");
static chandelier_ruby_item as Item = ItemBlock(chandelier_ruby).setRegistryName(chandelier_ruby.getRegistryName());

static candle_ruby as Block = BlockCandle("candle_ruby");
static candle_ruby_item as Item = ItemBlock(candle_ruby).setRegistryName(candle_ruby.getRegistryName());

static chain_ruby as Block = BlockChain("chain_ruby");
static chain_ruby_item as Item = ItemBlock(chain_ruby).setRegistryName(chain_ruby.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_ruby);
        event.registry.register(candle_ruby);
        event.registry.register(chain_ruby);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_ruby_item);
        event.registry.register(candle_ruby_item);
        event.registry.register(chain_ruby_item);
    }
});

//sapphire

static chandelier_sapphire as Block = BlockChandelier("chandelier_sapphire");
static chandelier_sapphire_item as Item = ItemBlock(chandelier_sapphire).setRegistryName(chandelier_sapphire.getRegistryName());

static candle_sapphire as Block = BlockCandle("candle_sapphire");
static candle_sapphire_item as Item = ItemBlock(candle_sapphire).setRegistryName(candle_sapphire.getRegistryName());

static chain_sapphire as Block = BlockChain("chain_sapphire");
static chain_sapphire_item as Item = ItemBlock(chain_sapphire).setRegistryName(chain_sapphire.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_sapphire);
        event.registry.register(candle_sapphire);
        event.registry.register(chain_sapphire);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_sapphire_item);
        event.registry.register(candle_sapphire_item);
        event.registry.register(chain_sapphire_item);
    }
});

//cincinnasite

static chandelier_cincinnasite as Block = BlockChandelier("chandelier_cincinnasite");
static chandelier_cincinnasite_item as Item = ItemBlock(chandelier_cincinnasite).setRegistryName(chandelier_cincinnasite.getRegistryName());

static candle_cincinnasite as Block = BlockCandle("candle_cincinnasite");
static candle_cincinnasite_item as Item = ItemBlock(candle_cincinnasite).setRegistryName(candle_cincinnasite.getRegistryName());

static chain_cincinnasite as Block = BlockChain("chain_cincinnasite");
static chain_cincinnasite_item as Item = ItemBlock(chain_cincinnasite).setRegistryName(chain_cincinnasite.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_cincinnasite);
        event.registry.register(candle_cincinnasite);
        event.registry.register(chain_cincinnasite);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_cincinnasite_item);
        event.registry.register(candle_cincinnasite_item);
        event.registry.register(chain_cincinnasite_item);
    }
});

//gravitite

static chandelier_gravitite as Block = BlockChandelier("chandelier_gravitite");
static chandelier_gravitite_item as Item = ItemBlock(chandelier_gravitite).setRegistryName(chandelier_gravitite.getRegistryName());

static candle_gravitite as Block = BlockCandle("candle_gravitite");
static candle_gravitite_item as Item = ItemBlock(candle_gravitite).setRegistryName(candle_gravitite.getRegistryName());

static chain_gravitite as Block = BlockChain("chain_gravitite");
static chain_gravitite_item as Item = ItemBlock(chain_gravitite).setRegistryName(chain_gravitite.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_gravitite);
        event.registry.register(candle_gravitite);
        event.registry.register(chain_gravitite);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_gravitite_item);
        event.registry.register(candle_gravitite_item);
        event.registry.register(chain_gravitite_item);
    }
});

//zanite

static chandelier_zanite as Block = BlockChandelier("chandelier_zanite");
static chandelier_zanite_item as Item = ItemBlock(chandelier_zanite).setRegistryName(chandelier_zanite.getRegistryName());

static candle_zanite as Block = BlockCandle("candle_zanite");
static candle_zanite_item as Item = ItemBlock(candle_zanite).setRegistryName(candle_zanite.getRegistryName());

static chain_zanite as Block = BlockChain("chain_zanite");
static chain_zanite_item as Item = ItemBlock(chain_zanite).setRegistryName(chain_zanite.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_zanite);
        event.registry.register(candle_zanite);
        event.registry.register(chain_zanite);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_zanite_item);
        event.registry.register(candle_zanite_item);
        event.registry.register(chain_zanite_item);
    }
});

//viridium

static chandelier_viridium as Block = BlockChandelier("chandelier_viridium");
static chandelier_viridium_item as Item = ItemBlock(chandelier_viridium).setRegistryName(chandelier_viridium.getRegistryName());

static candle_viridium as Block = BlockCandle("candle_viridium");
static candle_viridium_item as Item = ItemBlock(candle_viridium).setRegistryName(candle_viridium.getRegistryName());

static chain_viridium as Block = BlockChain("chain_viridium");
static chain_viridium_item as Item = ItemBlock(chain_viridium).setRegistryName(chain_viridium.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_viridium);
        event.registry.register(candle_viridium);
        event.registry.register(chain_viridium);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_viridium_item);
        event.registry.register(candle_viridium_item);
        event.registry.register(chain_viridium_item);
    }
});

//mythril

static chandelier_mythril as Block = BlockChandelier("chandelier_mythril");
static chandelier_mythril_item as Item = ItemBlock(chandelier_mythril).setRegistryName(chandelier_mythril.getRegistryName());

static candle_mythril as Block = BlockCandle("candle_mythril");
static candle_mythril_item as Item = ItemBlock(candle_mythril).setRegistryName(candle_mythril.getRegistryName());

static chain_mythril as Block = BlockChain("chain_mythril");
static chain_mythril_item as Item = ItemBlock(chain_mythril).setRegistryName(chain_mythril.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_mythril);
        event.registry.register(candle_mythril);
        event.registry.register(chain_mythril);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_mythril_item);
        event.registry.register(candle_mythril_item);
        event.registry.register(chain_mythril_item);
    }
});

//ferrought

static chandelier_ferrought as Block = BlockChandelier("chandelier_ferrought");
static chandelier_ferrought_item as Item = ItemBlock(chandelier_ferrought).setRegistryName(chandelier_ferrought.getRegistryName());

static candle_ferrought as Block = BlockCandle("candle_ferrought");
static candle_ferrought_item as Item = ItemBlock(candle_ferrought).setRegistryName(candle_ferrought.getRegistryName());

static chain_ferrought as Block = BlockChain("chain_ferrought");
static chain_ferrought_item as Item = ItemBlock(chain_ferrought).setRegistryName(chain_ferrought.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_ferrought);
        event.registry.register(candle_ferrought);
        event.registry.register(chain_ferrought);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_ferrought_item);
        event.registry.register(candle_ferrought_item);
        event.registry.register(chain_ferrought_item);
    }
});

//endorium

static chandelier_endorium as Block = BlockChandelier("chandelier_endorium");
static chandelier_endorium_item as Item = ItemBlock(chandelier_endorium).setRegistryName(chandelier_endorium.getRegistryName());

static candle_endorium as Block = BlockCandle("candle_endorium");
static candle_endorium_item as Item = ItemBlock(candle_endorium).setRegistryName(candle_endorium.getRegistryName());

static chain_endorium as Block = BlockChain("chain_endorium");
static chain_endorium_item as Item = ItemBlock(chain_endorium).setRegistryName(chain_endorium.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_endorium);
        event.registry.register(candle_endorium);
        event.registry.register(chain_endorium);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_endorium_item);
        event.registry.register(candle_endorium_item);
        event.registry.register(chain_endorium_item);
    }
});

//exorite

static chandelier_exorite as Block = BlockChandelier("chandelier_exorite");
static chandelier_exorite_item as Item = ItemBlock(chandelier_exorite).setRegistryName(chandelier_exorite.getRegistryName());

static candle_exorite as Block = BlockCandle("candle_exorite");
static candle_exorite_item as Item = ItemBlock(candle_exorite).setRegistryName(candle_exorite.getRegistryName());

static chain_exorite as Block = BlockChain("chain_exorite");
static chain_exorite_item as Item = ItemBlock(chain_exorite).setRegistryName(chain_exorite.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_exorite);
        event.registry.register(candle_exorite);
        event.registry.register(chain_exorite);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_exorite_item);
        event.registry.register(candle_exorite_item);
        event.registry.register(chain_exorite_item);
    }
});

//garsen

static chandelier_garsen as Block = BlockChandelier("chandelier_garsen");
static chandelier_garsen_item as Item = ItemBlock(chandelier_garsen).setRegistryName(chandelier_garsen.getRegistryName());

static candle_garsen as Block = BlockCandle("candle_garsen");
static candle_garsen_item as Item = ItemBlock(candle_garsen).setRegistryName(candle_garsen.getRegistryName());

static chain_garsen as Block = BlockChain("chain_garsen");
static chain_garsen_item as Item = ItemBlock(chain_garsen).setRegistryName(chain_garsen.getRegistryName());

events.register(function(event as RegistryEvent.Register) {
    val registryName = event.name.toString();
    if (registryName == "minecraft:blocks") {
        event.registry.register(chandelier_garsen);
        event.registry.register(candle_garsen);
        event.registry.register(chain_garsen);
    } else if (registryName == "minecraft:items") {
        event.registry.register(chandelier_garsen_item);
        event.registry.register(candle_garsen_item);
        event.registry.register(chain_garsen_item);
    }
});



