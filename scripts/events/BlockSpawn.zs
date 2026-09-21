#loader crafttweaker reloadable
import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.player.IPlayer;
import mods.contenttweaker.Commands;

events.onBlockBreak(function(event as BlockBreakEvent) {
    var waresPlayer = event.player;
    var waresWorld = event.world;
    var waresBlock = event.block;

    if (!waresWorld.remote && waresBlock.definition.id.startsWith("contenttweaker:lost_cargo")) {
        if (!isNull(waresPlayer) && waresPlayer instanceof IPlayer) {
            if (waresWorld.random.nextInt(1, 100) <= 15) {
                var waresX = event.position.x;
                var waresY = event.position.y;
                var waresZ = event.position.z;
                
                Commands.call("summon mod_lavacow:parasite " ~ waresX ~ " " ~ waresY ~ " " ~ waresZ, waresPlayer, waresWorld);
                Commands.call("particle cloud " ~ waresX ~ " " ~ waresY ~ " " ~ waresZ ~ " 1 1 1 0.1 80 normal", waresPlayer, waresWorld);
                Commands.call("playsound charm:wood_smash player @a " ~ waresX ~ " " ~ waresY ~ " " ~ waresZ, waresPlayer, waresWorld);
            }
        }
    }
});

events.onBlockBreak(function(event as BlockBreakEvent) {
    var cargoPlayer = event.player;
    var cargoWorld = event.world;
    var cargoBlock = event.block;

    if (!cargoWorld.remote && cargoBlock.definition.id == "totf:lost_cargo") {
        if (!isNull(cargoPlayer) && cargoPlayer instanceof IPlayer) {
            if (cargoWorld.random.nextInt(1, 100) <= 25) {
                var cargoX = event.position.x;
                var cargoY = event.position.y;
                var cargoZ = event.position.z;
                
                Commands.call("summon mod_lavacow:parasite " ~ cargoX ~ " " ~ cargoY ~ " " ~ cargoZ, cargoPlayer, cargoWorld);
                Commands.call("particle cloud " ~ cargoX ~ " " ~ cargoY ~ " " ~ cargoZ ~ " 1 1 1 0.1 80 normal", cargoPlayer, cargoWorld);
                Commands.call("playsound charm:wood_smash player @a " ~ cargoX ~ " " ~ cargoY ~ " " ~ cargoZ, cargoPlayer, cargoWorld);
            }
        }
    }
});
