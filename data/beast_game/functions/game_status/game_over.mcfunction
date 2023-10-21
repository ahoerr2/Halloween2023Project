execute as @a[team=Beast] if score #NUM KILLS matches 1 run scoreboard players add @s Wins 1
function beast_game:teams/remove_teams
function beast_game:escape_items/repair_exits

scoreboard players set #NUM SURVIVORS 0
scoreboard players set #NUM KILLS 0
scoreboard players set #NUM ITEM 0

schedule clear beast_game:game_status/xp_loss
execute as @a run xp set @s 0 levels
scoreboard players set @a XP 0
scoreboard players set #NUM XP 0

kill @e[type=minecraft:item_display]
gamemode adventure @a
clear @a
effect clear @a
effect give @a regeneration infinite 1 true

title @a title {"text":"GAME OVER","color":"red"}
title @a subtitle {"text":""}
teleport @a -137 76 143