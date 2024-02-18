scoreboard objectives add spd dummy Speed
scoreboard objectives add spdop dummy SpeedOperation
scoreboard objectives add spdg dummy SpeedGoal

execute as @e if score @s spd > @s spdg run scoreboard players remove @s spd 1
execute as @e if score @s spd < @s spdg run scoreboard players add @s spd 1

execute as @e run scoreboard players operation @s spdop = @s spd

execute as @e[scores={spdop=128..}] at @s run tp @s ^^^128
scoreboard players remove @e[scores={spdop=128..}] spdop 128
execute as @e[scores={spdop=64..}] at @s run tp @s ^^^64
scoreboard players remove @e[scores={spdop=64..}] spdop 64
execute as @e[scores={spdop=32..}] at @s run tp @s ^^^32
scoreboard players remove @e[scores={spdop=32..}] spdop 32
execute as @e[scores={spdop=16..}] at @s run tp @s ^^^16
scoreboard players remove @e[scores={spdop=16..}] spdop 16
execute as @e[scores={spdop=8..}] at @s run tp @s ^^^8
scoreboard players remove @e[scores={spdop=8..}] spdop 8
execute as @e[scores={spdop=4..}] at @s run tp @s ^^^4
scoreboard players remove @e[scores={spdop=4..}] spdop 4
execute as @e[scores={spdop=2..}] at @s run tp @s ^^^2
scoreboard players remove @e[scores={spdop=2..}] spdop 2
execute as @e[scores={spdop=1..}] at @s run tp @s ^^^1
scoreboard players remove @e[scores={spdop=1..}] spdop 1