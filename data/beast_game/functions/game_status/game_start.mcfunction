function beast_game:teams/assign_teams
function beast_game:exit_functions/repair_exits
function beast_game:escape_items/spawn_item

#Replace button title "Start" with "Spectate" and update GAMESTATE variable
kill @e[type=armor_stand,name="Start"]
summon armor_stand -149 149 42 {Invisible:1b,Marker:1b,CustomName:'{"text":"Spectate","color":"gray","bold":true}',CustomNameVisible:1b}
scoreboard players set #NUM GAMESTATE 1

kill @e[type=minecraft:item_display]
clear @a
gamemode adventure @a
scoreboard players set #NUM SURVIVORS 0
execute as @a run scoreboard players add #NUM SURVIVORS 1
execute as @a run scoreboard players add #NUM KILLS 1
scoreboard players set @a KILLS 0
scoreboard players set @a DIED 0
scoreboard players set @a HINT 0

execute as @a run xp set @s 300 levels
scoreboard players set @a XP 300
scoreboard players set #NUM XP 300

teleport @a[team=Beast] -514 67 17 facing -513 67 17
teleport @a[team=Survivors] -363 72 71 facing -364 72 70

item replace entity @a[team=Survivors] hotbar.0 with torch{display:{Name:'[{"text": "Survivor\'s Torch","color":"gray","bold": true,"italic": false}]'}} 1

effect clear @a
effect give @a[team=Survivors] darkness infinite 100 true
effect give @a[team=Survivors] speed infinite 0 true
effect give @a[team=Survivors] weakness infinite 0 true
effect give @a[team=Beast] regeneration infinite 1 true
effect give @a[team=Beast] resistance infinite 1 true

function beast_game:beast_abilities/beastsetup

title @a[team=Beast] title {"text":"HUNT","color":"dark_red"}
title @a[team=Beast] subtitle {"text":"Kill all the survivors!","color":"red"}

title @a[team=Survivors] title {"text":"ESCAPE","color":"dark_aqua"}
title @a[team=Survivors] subtitle {"text":"Find the item to leave!","color":"aqua"}