# Detects if the player is holding a glowstone block and is on the Beast team, then runs check for the beast eye ability
execute as @a[nbt={SelectedItem:{id:"minecraft:glowstone"}}, team=Beast,scores={VisionTimer=0}] at @s run function beast_game:beast_abilities/beasteye

# For any beasts with vision abiblity timers remove one from the timer
scoreboard players remove @e[team=Beast,scores={VisionTimer=1..}] VisionTimer 1

# Updates the display actionbar timer by converting the tickrate of the VisionTimer to seconds
execute as @e[team=Beast,scores={VisionTimer=1..}] run scoreboard players operation @s VisionDisplayTimer = @s VisionTimer
execute as @e[team=Beast,scores={VisionTimer=1..}] run scoreboard players operation @s VisionDisplayTimer /= @s TickConversionRate
title @a[team=Beast,scores={VisionTimer=1..}] actionbar [{"text":"Vision Cooldown: ","color": "white"},{"score":{"name":"*", "objective":"VisionDisplayTimer"},"color": "red"},{"text":"s","color": "red"}]

# Beast Boost Ability
execute as @a[team=Beast,scores={CarrotUsed=1..,DashTimer=..0}] at @s run playsound entity.illusioner.mirror_move master @s 
execute as @a[team=Beast,scores={CarrotUsed=1..,DashTimer=..0}] run effect give @s minecraft:speed 1 5 true
scoreboard players set @a[team=Beast,scores={CarrotUsed=1..,DashTimer=..0}] DashNotification 1
scoreboard players set @a[team=Beast,scores={CarrotUsed=1..,DashTimer=..0}] DashParticleTime 20
scoreboard players set @a[team=Beast,scores={CarrotUsed=1..,DashTimer=..0}] DashTimer 240 
scoreboard players reset @a[team=Beast,scores={CarrotUsed=1..}] CarrotUsed

# Emit Particles for the Beast Boost Ability
execute as @a[team=Beast,scores={DashParticleTime=1..}] at @s run particle minecraft:lava ~ ~ ~ 0.2 0 0.2 0.1 5 force

scoreboard players remove @e[team=Beast,scores={DashTimer=1..}] DashTimer 1
scoreboard players remove @e[team=Beast,scores={DashParticleTime=1..}] DashParticleTime 1

execute as @e[team=Beast,scores={DashTimer=..0,DashNotification=1}] at @s run playsound entity.illusioner.prepare_blindness master @s ~ ~ ~ 0.2 1.2 0.2
execute as @e[team=Beast,scores={DashTimer=..0,DashNotification=1}] run title @s title {"text":"","color":"red"} 
execute as @e[team=Beast,scores={DashTimer=..0,DashNotification=1}] run title @s subtitle {"text":"Dash Ready","color":"red"} 
execute as @e[team=Beast,scores={DashTimer=..0,DashNotification=1}] run scoreboard players set @s DashNotification 0
