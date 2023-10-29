item replace entity @s[scores={compass_windup_time=0..99}] weapon.mainhand with compass{display:{Name:'[{"text":"Tracking Compass: ","color":"green","italic":false},{"text":"[Calibrating]", "color": "red"}]'},Unbreakable:1b,LodestoneDimension:"minecraft:the_nether",LodestoneTracked:0b,LodestonePos:{X:0,Y:0,Z:0}} 1
execute as @s[scores={compass_windup_time=..100}] run scoreboard players add @s compass_windup_time 1
title @s[scores={compass_windup_time=0..99,compass_windup_notifier=0}] times 10 100 20
execute as @s[scores={compass_windup_time=0..99,compass_windup_notifier=0}] at @s run title @s title [{"text": ""}] 
execute as @s[scores={compass_windup_time=0..99,compass_windup_notifier=0}] at @s run title @s subtitle [{"text": "Calibrating...","color": "gold"}] 
execute as @s[scores={compass_windup_time=0..99,compass_windup_notifier=0}] at @s run scoreboard players set @s compass_windup_notifier 1

# Plays the compass ping sound at a constant rate defined by the compass_sound_modulo score (default 10 -> 0.5s)
execute as @s[scores={compass_windup_time=0..99}] at @s run scoreboard players operation @s compass_sound_time = @s compass_windup_time
execute as @s[scores={compass_windup_time=0..99}] at @s run scoreboard players operation @s compass_sound_time %= @s compass_sound_modulo
execute as @s[scores={compass_windup_time=0..99,compass_sound_time=0}] at @s run playsound minecraft:block.note_block.bell block @a ~ ~ ~ 0.7 1.5 0.7


execute if score #NUM SPAWN matches 1 as @s[scores={compass_windup_time=100..}] at @s run item replace entity @s weapon.mainhand with compass{display:{Name:'[{"text":"Tracking Compass: ","color":"green","italic":false},{"text": "[Calibrated]","color": "dark_green"}]'},Unbreakable:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:-372,Y:61,Z:40}} 1
execute if score #NUM SPAWN matches 2 as @s[scores={compass_windup_time=100..}] at @s run item replace entity @s weapon.mainhand with compass{display:{Name:'[{"text":"Tracking Compass: ","color":"green","italic":false},{"text": "[Calibrated]","color": "dark_green"}]'},Unbreakable:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:-417,Y:61,Z:18}} 1
execute if score #NUM SPAWN matches 3 as @s[scores={compass_windup_time=100..}] at @s run item replace entity @s weapon.mainhand with compass{display:{Name:'[{"text":"Tracking Compass: ","color":"green","italic":false},{"text": "[Calibrated]","color": "dark_green"}]'},Unbreakable:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:-328,Y:73,Z:7}} 1
execute if score #NUM SPAWN matches 4 as @s[scores={compass_windup_time=100..}] at @s run item replace entity @s weapon.mainhand with compass{display:{Name:'[{"text":"Tracking Compass: ","color":"green","italic":false},{"text": "[Calibrated]","color": "dark_green"}]'},Unbreakable:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:-407,Y:73,Z:44}} 1
execute if score #NUM SPAWN matches 5 as @s[scores={compass_windup_time=100..}] at @s run item replace entity @s weapon.mainhand with compass{display:{Name:'[{"text":"Tracking Compass: ","color":"green","italic":false},{"text": "[Calibrated]","color": "dark_green"}]'},Unbreakable:1b,LodestoneDimension:"minecraft:overworld",LodestoneTracked:1b,LodestonePos:{X:-445,Y:75,Z:64}} 1


title @s[scores={compass_windup_time=100..,compass_tracking_notifier=0}] times 5 1000000 20
execute as @s[scores={compass_windup_time=100..,compass_tracking_notifier=0}] at @s run title @s title [{"text": ""}] 
execute as @s[scores={compass_windup_time=100..,compass_tracking_notifier=0}] at @s run title @s subtitle [{"text": "Tracking","color": "green"}] 
execute as @s[scores={compass_windup_time=100..,compass_tracking_notifier=0}] at @s run playsound block.note_block.chime block @a ~ ~ ~ 0.7 1 0.7
execute as @s[scores={compass_windup_time=100..,compass_tracking_notifier=0}] at @s run scoreboard players set @s compass_tracking_notifier 1

# Gives players who hold the compass glowing to balance out players who prioritize the compass over limited use
execute as @s[scores={compass_windup_time=0..110}] at @s run effect give @s minecraft:glowing 1 0 true