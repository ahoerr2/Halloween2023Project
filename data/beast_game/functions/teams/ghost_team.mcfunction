execute as @s if score @s ITEM matches 1 run function beast_game:escape_items/respawn_item

execute as @s run clear
execute as @s run team join Ghosts
execute as @s run gamemode spectator
execute as @s run scoreboard players set @s DIED 0
execute as @s run scoreboard players remove #NUM SURVIVORS 1
execute as @s run tp @r[team=Survivors]