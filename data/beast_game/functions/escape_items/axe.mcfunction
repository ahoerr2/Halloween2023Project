kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:crafting_table"}}]
scoreboard players set @s ITEM 0
scoreboard players set @s AXE 0
clear @s iron_axe

advancement revoke @s only beast_game:tnt_placement