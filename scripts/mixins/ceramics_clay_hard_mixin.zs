#loader mixin
#modloaded ceramics

import native.net.minecraft.block.Block;

#mixin Mixin
#{targets: "knightminer.ceramics.plugin.bwm.BetterWithModsPlugin"}
zenClass MixinBetterWithModsPlugin {
    #mixin Static
    #mixin Overwrite
    function addKilnBlock(block as Block, meta as int) as void {
        
    }
}