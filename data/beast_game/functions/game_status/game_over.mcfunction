execute as @a[team=Beast] if score #NUM KILLS matches 1 run scoreboard players add @s Wins 1
scoreboard players reset @a Players
function beast_game:teams/remove_teams
function beast_game:exit_functions/repair_exits

#Replace button title "Start" with "Spectate" and update gamestate variable
kill @e[type=armor_stand,tag=Spectate]
kill @e[type=armor_stand,tag=Start]
summon armor_stand -149 149 42 {Invisible:1b,Marker:1b,CustomName:'{"text":"Start","color":"green","bold":true}',CustomNameVisible:1b,Tags:[Start]}
scoreboard players set #NUM GAMESTATE 0

scoreboard players set #NUM SURVIVORS 0
scoreboard players set #NUM KILLS 0
scoreboard players set #NUM ITEM 0

schedule clear beast_game:game_status/xp_loss
execute as @a run xp set @s 0 levels
scoreboard players set @a XP 0
scoreboard players set #NUM XP 0
scoreboard players set @a HINT 0

scoreboard players set @e[team=Beast] DashTimer 0

kill @e[type=minecraft:item_display]
gamemode adventure @a
clear @a
effect clear @a
effect give @a regeneration infinite 10 true
effect give @a instant_health 1 10 true

title @a times 20 100 20
title @a title {"text":"GAME OVER","color":"red"}
title @a subtitle {"text":""}
setworldspawn -138 146 42 
schedule function beast_game:game_status/lobby_teleport 1s