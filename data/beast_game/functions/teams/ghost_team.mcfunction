execute if score @s ITEM matches 1 run function beast_game:escape_items/spawn_item

team join Ghosts
scoreboard players set @s DIED 0
gamemode spectator
scoreboard players remove #NUM SURVIVORS 1
execute as @s run tp @r[team=Survivors]