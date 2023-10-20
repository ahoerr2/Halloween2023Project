execute at @s if block ~-1 ~ ~ coal_block run scoreboard players add @s Wins 1
execute at @s if block ~-1 ~ ~ coal_block run function beast_game:teams/ghost_team

execute at @s if block ~ ~-1 ~ coal_block run scoreboard players add @s Wins 1
execute at @s if block ~ ~-1 ~ coal_block run function beast_game:teams/ghost_team

execute at @s if block ~ ~ ~-1 coal_block run scoreboard players add @s Wins 1
execute at @s if block ~ ~ ~-1 coal_block run function beast_game:teams/ghost_team