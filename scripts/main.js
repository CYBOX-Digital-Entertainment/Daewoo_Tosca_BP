import { world , system } from "@minecraft/server"
system.runInterval(()=>{
    for (const entity of world.getDimension(`overworld`).getEntities()) {
        if (entity.typeId == "cybox:dw_tosca") {
            entity.runCommandAsync(`fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace light_block`)
            entity.runCommandAsync(`setblock ~~~ light_block ["block_light_level":15]`)
        }
    }
})