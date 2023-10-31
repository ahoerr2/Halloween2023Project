#Check GAMESTATE variable and either start the game or join the spectator team
execute if score #NUM GAMESTATE matches 0 run function beast_game:game_status/game_start
execute at @e[type=armor_stand,tag=Spectate] as @e[type=player,team=,limit=1] if score #NUM GAMESTATE matches 1 run function beast_game:teams/ghost_team

advancement revoke @s only beast_game:click_button