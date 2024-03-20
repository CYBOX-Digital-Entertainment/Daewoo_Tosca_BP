import { world } from "@minecraft/server"

try {
    const entity = world.getDimension("overworld").spawnEntity(`addon:tr`, { x: 0, y: 0, z: 0 })
    //소환 후 바로 kill시 Trying to access location (0.0, 0.0, 0.0) which is not in a chunk currently loaded and ticking. 에러 발생. 엔티티 소환 실패를 감지하기 위해 변수에 저장하고 킬함.
    entity.kill()


} catch (error) {
    
        const text = {
            "rawtext": [
                {
                    "translate": "import.need.text"
                }
            ]
        }
        world.sendMessage(text)
    

}