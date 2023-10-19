execute store result score #NUM ITEM run random value 1..2

execute if score #NUM ITEM matches 1 run summon minecraft:item_display -363 76 59 {item_display:"fixed",item:{id:"minecraft:iron_axe",Count:1b}}
execute if score #NUM ITEM matches 2 run summon minecraft:item_display -363 76 59 {item_display:"fixed",item:{id:"minecraft:brick",Count:1b}}