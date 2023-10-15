function beast_game:teams/assign_teams

execute as @a run clear
gamemode adventure @a
scoreboard players set #NUM SURVIVORS 0
execute as @a run scoreboard players add #NUM SURVIVORS 1
scoreboard players set @a DIED 0

execute as @a run xp set @s 300 levels
scoreboard players set @a XP 300

give @a[team=Survivors] minecraft:torch 1
effect give @a[team=Survivors] blindness infinite
effect give @a[team=Survivors] speed infinite

title @a[team=Beast] title {"text":"HUNT","color":"dark_red"}
title @a[team=Beast] subtitle {"text":"Kill all the survivors!","color":"dark_red"}

title @a[team=Survivors] title {"text":"ESCAPE","color":"aqua"}
title @a[team=Survivors] subtitle {"text":"Find the item to leave!","color":"aqua"}