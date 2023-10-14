loot spawn ~ ~ ~ loot my_datapack:custom/loot_table_example
execute as @e[type=minecraft:armor_stand,limit=1,tag=spawn_item] store result entity @s HandItems[0] byte 0 run data get block ~ ~ ~ Items[0].id 1
execute as @e[type=minecraft:armor_stand,limit=1,tag=spawn_item] run data modify block ~ ~ ~ Items[0].id set value "minecraft:air"