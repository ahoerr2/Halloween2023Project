function beast_game:teams/assign_teams

execute as @a run clear
gamemode adventure @a
scoreboard players set #NUM SURVIVORS 0
execute as @a run scoreboard players add #NUM SURVIVORS 1
execute as @a run scoreboard players add #NUM KILLS 1
scoreboard players set @a KILLS 0
scoreboard players set @a DIED 0

execute as @a run xp set @s 300 levels
scoreboard players set @a XP 300
scoreboard players set #NUM XP 300

teleport @a[team=Beast] -377 75 69
teleport @a[team=Survivors] -362 72 72

item replace entity @a[team=Survivors] hotbar.0 with torch{display:{Name:'[{"text": "Survivors Torch","color": "grey","italic": true}]'}} 1 

effect clear @a
effect give @a[team=Survivors] blindness infinite 0 true
effect give @a[team=Survivors] speed infinite 0 true
effect give @a[team=Beast] regeneration infinite 1 true

function beast_game:beast_abilities/beastsetup

title @a[team=Beast] title {"text":"HUNT","color":"dark_red"}
title @a[team=Beast] subtitle {"text":"Kill all the survivors!","color":"dark_red"}

title @a[team=Survivors] title {"text":"ESCAPE","color":"aqua"}
title @a[team=Survivors] subtitle {"text":"Find the item to leave!","color":"aqua"}