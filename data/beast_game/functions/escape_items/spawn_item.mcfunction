#Randomize spawn location and exit item
execute store result score #NUM SPAWN run random value 1..5
execute store result score #NUM ITEM run random value 1..4

#Set lever value if the item is the lever to prevent multiple uses
execute if score #NUM ITEM matches 4 run scoreboard players set #NUM LEVER 1

#Spawn item at bottom of basement stairs
execute if score #NUM SPAWN matches 2 if score #NUM ITEM matches 1 run summon minecraft:item_display -372 61 40 {item_display:"fixed",item:{id:"minecraft:iron_axe",Count:1b}}
execute if score #NUM SPAWN matches 2 if score #NUM ITEM matches 2 run summon minecraft:item_display -372 61 40 {item_display:"fixed",item:{id:"minecraft:brick",Count:1b}}
execute if score #NUM SPAWN matches 2 if score #NUM ITEM matches 3 run summon minecraft:item_display -372 61 40 {item_display:"fixed",item:{id:"minecraft:tnt",Count:1b}}
execute if score #NUM SPAWN matches 2 if score #NUM ITEM matches 4 run summon minecraft:item_display -372 61 40 {item_display:"fixed",item:{id:"minecraft:lever",Count:1b}}

#Spawn item at bottom of cave entrance
execute if score #NUM SPAWN matches 3 if score #NUM ITEM matches 1 run summon minecraft:item_display -417 61 18 {item_display:"fixed",item:{id:"minecraft:iron_axe",Count:1b}}
execute if score #NUM SPAWN matches 3 if score #NUM ITEM matches 2 run summon minecraft:item_display -417 61 18 {item_display:"fixed",item:{id:"minecraft:brick",Count:1b}}
execute if score #NUM SPAWN matches 3 if score #NUM ITEM matches 3 run summon minecraft:item_display -417 61 18 {item_display:"fixed",item:{id:"minecraft:tnt",Count:1b}}
execute if score #NUM SPAWN matches 3 if score #NUM ITEM matches 4 run summon minecraft:item_display -417 61 18 {item_display:"fixed",item:{id:"minecraft:lever",Count:1b}}

#Spawn item at picnic area
execute if score #NUM SPAWN matches 4 if score #NUM ITEM matches 1 run summon minecraft:item_display -328 73 7 {item_display:"fixed",item:{id:"minecraft:iron_axe",Count:1b}}
execute if score #NUM SPAWN matches 4 if score #NUM ITEM matches 2 run summon minecraft:item_display -328 73 7 {item_display:"fixed",item:{id:"minecraft:brick",Count:1b}}
execute if score #NUM SPAWN matches 4 if score #NUM ITEM matches 3 run summon minecraft:item_display -328 73 7 {item_display:"fixed",item:{id:"minecraft:tnt",Count:1b}}
execute if score #NUM SPAWN matches 4 if score #NUM ITEM matches 4 run summon minecraft:item_display -328 73 7 {item_display:"fixed",item:{id:"minecraft:lever",Count:1b}}

#Spawn item in trees
execute if score #NUM SPAWN matches 5 if score #NUM ITEM matches 1 run summon minecraft:item_display -407 73 44 {item_display:"fixed",item:{id:"minecraft:iron_axe",Count:1b}}
execute if score #NUM SPAWN matches 5 if score #NUM ITEM matches 2 run summon minecraft:item_display -407 73 44 {item_display:"fixed",item:{id:"minecraft:brick",Count:1b}}
execute if score #NUM SPAWN matches 5 if score #NUM ITEM matches 3 run summon minecraft:item_display -407 73 44 {item_display:"fixed",item:{id:"minecraft:tnt",Count:1b}}
execute if score #NUM SPAWN matches 5 if score #NUM ITEM matches 4 run summon minecraft:item_display -407 73 44 {item_display:"fixed",item:{id:"minecraft:lever",Count:1b}}

#Spawn item by graveyard
execute if score #NUM SPAWN matches 5 if score #NUM ITEM matches 1 run summon minecraft:item_display -445 75 64 {item_display:"fixed",item:{id:"minecraft:iron_axe",Count:1b}}
execute if score #NUM SPAWN matches 5 if score #NUM ITEM matches 2 run summon minecraft:item_display -445 75 64 {item_display:"fixed",item:{id:"minecraft:brick",Count:1b}}
execute if score #NUM SPAWN matches 5 if score #NUM ITEM matches 3 run summon minecraft:item_display -445 75 64 {item_display:"fixed",item:{id:"minecraft:tnt",Count:1b}}
execute if score #NUM SPAWN matches 5 if score #NUM ITEM matches 4 run summon minecraft:item_display -445 75 64 {item_display:"fixed",item:{id:"minecraft:lever",Count:1b}}