function beast_game:teams/remove_teams
scoreboard players set #NUM SURVIVORS 0
gamemode adventure @a
schedule clear beast_game:game_status/xp_loss
execute as @a run xp set @s 0 levels
scoreboard players set @a XP 0
execute as @a run clear
title @a title {"text":"GAME OVER","color":"red"}
teleport @a 30 66 85