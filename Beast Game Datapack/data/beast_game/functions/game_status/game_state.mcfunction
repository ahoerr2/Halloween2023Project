execute if score #NUM SURVIVORS matches 1 run function beast_game:game_status/game_over
execute as @a if score @s DIED matches 1 run function beast_game:teams/ghost_team

scoreboard players add #NUM TIMER 1
execute if score #NUM TIMER matches 21 run scoreboard players set #NUM TIMER 0

execute if score #NUM TIMER matches 20 run function beast_game:game_status/xp_loss
execute if score @r XP matches 1 run function beast_game:game_status/game_over