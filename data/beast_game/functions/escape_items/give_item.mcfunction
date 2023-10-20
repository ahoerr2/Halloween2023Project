execute if score #NUM ITEM matches 1 run give @e[type=player,team=Survivors,sort=nearest,limit=1] iron_axe{display:{Name:'{"text":"Iron Axe","color":"gray","bold":true,"italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.0,Operation:1}]} 1
execute if score #NUM ITEM matches 2 run give @e[type=player,team=Survivors,sort=nearest,limit=1] brick{display:{Name:'{"text":"Brick","color":"red","bold":true,"italic":false}'}} 1

scoreboard players set @e[type=player,team=Survivors,sort=nearest,limit=1] ITEM 1
kill @s