execute as @s at @s if score #NUM ITEM matches 1 run summon minecraft:item_display ~ ~1 ~ {item_display:"fixed",item:{id:"minecraft:iron_axe",Count:1b}}
execute as @s at @s if score #NUM ITEM matches 2 run summon minecraft:item_display ~ ~1 ~ {item_display:"fixed",item:{id:"minecraft:brick",Count:1b}}
execute as @s at @s if score #NUM ITEM matches 3 run summon minecraft:item_display ~ ~1 ~ {item_display:"fixed",item:{id:"minecraft:tnt",Count:1b}}

scoreboard players set @s ITEM 0