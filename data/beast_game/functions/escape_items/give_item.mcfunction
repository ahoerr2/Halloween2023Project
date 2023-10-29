execute if score #NUM ITEM matches 1 run give @s iron_axe{display:{Name:'{"text":"Iron Axe","color":"gray","bold":true,"italic":false}',Lore:['{"text":"Where could this have been crafted?","color":"gray","italic":false}']},CanDestroy:["minecraft:crafting_table"],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.0,Operation:1}]} 1
execute if score #NUM ITEM matches 2 run give @s brick{display:{Name:'{"text":"Brick","color":"red","bold":true,"italic":false}',Lore:['{"text":"Maybe a window in a tall place could be broken...","color":"gray","italic":false}']}} 1
execute if score #NUM ITEM matches 3 run give @s tnt{display:{Name:'{"text":"Explosives","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"Perhaps a wall is crumbling somewhere...","color":"gray","italic":false}']},CanPlaceOn:["minecraft:cracked_stone_bricks"]} 1
execute if score #NUM ITEM matches 4 run give @s lever{display:{Name:'{"text":"Lever","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Seems like the key to a mechanism somewhere...","color":"gray","italic":false}']},CanPlaceOn:["minecraft:gilded_blackstone"]} 1

title @a times 20 100 20
execute if score #NUM ITEM matches 1 run title @a[team=!Beast] title {"text":"Iron Axe","color":"gray"}
execute if score #NUM ITEM matches 1 run title @a[team=!Beast] subtitle {"text":"has been found!","color":"green"}
execute if score #NUM ITEM matches 2 run title @a[team=!Beast] title {"text":"Brick","color":"red"}
execute if score #NUM ITEM matches 2 run title @a[team=!Beast] subtitle {"text":"has been found!","color":"green"}
execute if score #NUM ITEM matches 3 run title @a[team=!Beast] title {"text":"Explosives","color":"dark_red"}
execute if score #NUM ITEM matches 3 run title @a[team=!Beast] subtitle {"text":"have been found!","color":"green"}
execute if score #NUM ITEM matches 4 run title @a[team=!Beast] title {"text":"Lever","color":"gold"}
execute if score #NUM ITEM matches 4 run title @a[team=!Beast] subtitle {"text":"has been found!","color":"green"}

title @a[team=Beast] title {"text":"Item found!","color":"red"}
title @a[team=Beast] subtitle {"text":""}
scoreboard players set @s ITEM 1
scoreboard players set #NUM ITEM_OBTAINED 1
kill @e[type=item_display]