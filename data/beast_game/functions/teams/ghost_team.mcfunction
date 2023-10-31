execute as @a[team=Beast] if score @s ITEM matches 1 run function beast_game:escape_items/respawn_item
execute as @s[team=Survivors] run scoreboard players remove #NUM SURVIVORS 1
scoreboard players reset @s Players

effect clear
clear
team join Ghosts
gamemode spectator
scoreboard players set @s DIED 0
tp @r[team=Survivors]