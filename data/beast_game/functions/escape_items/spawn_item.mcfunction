#Randomize spawn location and exit item
execute store result score #NUM SPAWN run random value 1..1
execute store result score #NUM ITEM run random value 1..4

#Spawn item in first floor of house
execute if score #NUM SPAWN matches 1 if score #NUM ITEM matches 1 run summon minecraft:item_display -367 74 48 {item_display:"fixed",item:{id:"minecraft:iron_axe",Count:1b}}
execute if score #NUM SPAWN matches 1 if score #NUM ITEM matches 2 run summon minecraft:item_display -367 74 48 {item_display:"fixed",item:{id:"minecraft:brick",Count:1b}}
execute if score #NUM SPAWN matches 1 if score #NUM ITEM matches 3 run summon minecraft:item_display -367 74 48 {item_display:"fixed",item:{id:"minecraft:tnt",Count:1b}}
execute if score #NUM SPAWN matches 1 if score #NUM ITEM matches 4 run summon minecraft:item_display -367 74 48 {item_display:"fixed",item:{id:"minecraft:lever",Count:1b}}

#Spawn item at bottom of basement stairs


#Spawn item at bottom of cave entrance


#Spawn item at picnic area


#Spawn item in trees


#Spawn item by graveyard


execute if score #NUM ITEM matches 4 run scoreboard players set #NUM LEVER 1