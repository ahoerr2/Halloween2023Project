effect give @a saturation infinite 1 true
execute as @e[type=item_display] at @s if entity @e[type=player,team=Survivors,distance=..2] run function beast_game:escape_items/give_item

execute if block -137 77 130 minecraft:stone_button[face=floor,facing=north,powered=true] run function beast_game:game_status/game_start
setblock -137 77 130 minecraft:stone_button[face=floor,facing=north,powered=false]

execute as @a[team=Beast] if score @s KILLS matches 1 run scoreboard players remove #NUM KILLS 1
execute as @a[team=Beast] if score @s KILLS matches 1 run scoreboard players remove @s KILLS 1

execute if score #NUM SURVIVORS matches 1 run function beast_game:game_status/game_over
execute as @a if score @s DIED matches 1 run function beast_game:teams/ghost_team



scoreboard players add #NUM TIMER 1
execute if score #NUM TIMER matches 21 run scoreboard players set #NUM TIMER 0

execute if score #NUM TIMER matches 20 run function beast_game:game_status/xp_loss
execute if score #NUM XP matches 1 run function beast_game:game_status/game_over