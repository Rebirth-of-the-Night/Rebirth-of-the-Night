#loader mixin
#modloaded hw_inv

import native.net.minecraft.entity.player.EntityPlayer;
import mixin.CallbackInfo;

#mixin {targets: "com.corosus.inv.InvasionManager"}
zenClass MixinInvasionStart {
    #mixin Static
    #mixin Inject
    #{
    #    method: "invasionStart",
    #    at: {
    #        value: "HEAD"
    #    },
    #    cancellable: true
    #}
    function removeStage(player as EntityPlayer, difficultyScale as float, ci as CallbackInfo) as void {
        server.commandManager.executeCommand(server, '/gamestage silentremove ' ~ player.name ~ ' invasionFlag');
    }
}