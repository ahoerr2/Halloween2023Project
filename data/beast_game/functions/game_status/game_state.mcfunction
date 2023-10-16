effect give @a saturation infinite 1 true

execute as @a[team=Beast] if score @s KILLS matches 1 run scoreboard players remove #NUM KILLS 1
execute as @a[team=Beast] if score @s KILLS matches 1 run scoreboard players remove @s KILLS 1

scoreboard players add #NUM TIMER 1
execute if score #NUM TIMER matches 21 run scoreboard players set #NUM TIMER 0

execute if score #NUM SURVIVORS matches 1 run function beast_game:game_status/game_over
execute as @a if score @s DIED matches 1 run function beast_game:teams/ghost_team

execute if score #NUM TIMER matches 20 run function beast_game:game_status/xp_loss
execute if score #NUM XP matches 1 run function beast_game:game_status/game_over