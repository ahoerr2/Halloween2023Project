#Anything that should happen at any time, even in the lobby
effect give @a saturation infinite 1 true
execute as @e[type=item] run data merge entity @s {PickupDelay:0}

#Check if the button is pressed to start the game
execute if block -137 77 130 minecraft:stone_button[face=floor,facing=north,powered=true] run function beast_game:game_status/game_start
setblock -137 77 130 minecraft:stone_button[face=floor,facing=north,powered=false]

#Check if a player is near the item display for the item
execute as @e[type=item_display] at @s if entity @e[type=player,team=Survivors,distance=..2] run function beast_game:escape_items/give_item

#Check if the beast kills a player for purposes of checking beast win (killing all survivors)
execute as @a[team=Beast] if score @s KILLS matches 1 run scoreboard players remove #NUM KILLS 1
execute as @a[team=Beast] if score @s KILLS matches 1 run scoreboard players remove @s KILLS 1

#Check if all survivors are dead and moves them to the ghost team when they die
execute if score #NUM SURVIVORS matches 1 run function beast_game:game_status/game_over
execute as @a[team=Survivors] if score @s DIED matches 1 run function beast_game:teams/ghost_team

#Track if a player escapes through any of the routes
execute as @a[team=Survivors] at @s if block ~1 ~ ~ coal_block run function beast_game:game_status/escaped
execute as @a[team=Survivors] at @s if block ~ ~-1 ~ coal_block run function beast_game:game_status/escaped
execute as @a[team=Survivors] at @s if block ~ ~ ~-1 coal_block run function beast_game:game_status/escaped

#Timer for the game length and the XP bar display
scoreboard players add #NUM TIMER 1
execute if score #NUM TIMER matches 21 run scoreboard players set #NUM TIMER 0
execute if score #NUM TIMER matches 20 run function beast_game:game_status/xp_loss
execute if score #NUM XP matches 1 run function beast_game:game_status/game_over

#Display hint if a player is near any of the possible escape routes
execute if score #NUM TIMER matches 20 run function beast_game:exit_functions/hint_check