# Detects if the player is holding a glowstone block and is on the Beast team, then runs check for the beast eye ability
execute as @a[nbt={SelectedItem:{id:"minecraft:glowstone"}}, team=Beast,scores={VisionTimer=0}] at @s run function beast_abilities:beasteye

# For any beasts with vision abiblity timers remove one from the timer
scoreboard players remove @e[scores={VisionTimer=1..}] VisionTimer 1

# Updates the display actionbar timer by converting the tickrate of the VisionTimer to seconds
execute as @e[scores={VisionTimer=1..}] run scoreboard players operation @s VisionDisplayTimer = @s VisionTimer
execute as @e[scores={VisionTimer=1..}] run scoreboard players operation @s VisionDisplayTimer /= @s TickConversionRate
title @a[scores={VisionTimer=1..}] actionbar [{"text":"Cooldown: ","color": "white"},{"score":{"name":"*", "objective":"VisionDisplayTimer"},"color": "red"},{"text":"s","color": "red"}]
