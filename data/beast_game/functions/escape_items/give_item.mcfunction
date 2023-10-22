execute if score #NUM ITEM matches 1 run give @e[type=player,team=Survivors,sort=nearest,limit=1] iron_axe{display:{Name:'{"text":"Iron Axe","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Where could this have been crafted?","color":"gray","italic":false}']},CanDestroy:["minecraft:crafting_table"],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.0,Operation:1}]} 1
execute if score #NUM ITEM matches 2 run give @e[type=player,team=Survivors,sort=nearest,limit=1] brick{display:{Name:'{"text":"Brick","color":"red","bold":true,"italic":false}',Lore:['{"text":"Maybe a window in a tall place could be broken...","color":"gray","italic":false}']}} 1
execute if score #NUM ITEM matches 3 run give @e[type=player,team=Survivors,sort=nearest,limit=1] tnt{display:{Name:'{"text":"Explosives","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Perhaps a wall is crumbling somewhere...","color":"gray","italic":false}']},CanPlaceOn:["minecraft:cracked_stone_bricks"]} 1

title @a[team=Survivors] title {"text":"The item has been found!","color":"green"}
title @a[team=Beast] title {"text":"The item has been found!","color":"red"}
title @a subtitle {"text":""}
scoreboard players set @e[type=player,team=Survivors,sort=nearest,limit=1] ITEM 1
kill @s