execute at @s if score #NUM ITEM matches 1 run summon minecraft:item_display ~ ~1 ~ {item_display:"fixed",item:{id:"minecraft:iron_axe",Count:1b},Glowing:true}
execute at @s if score #NUM ITEM matches 2 run summon minecraft:item_display ~ ~1 ~ {item_display:"fixed",item:{id:"minecraft:brick",Count:1b},Glowing:true}
execute at @s if score #NUM ITEM matches 3 run summon minecraft:item_display ~ ~1 ~ {item_display:"fixed",item:{id:"minecraft:tnt",Count:1b},Glowing:true}
execute at @s if score #NUM ITEM matches 4 run summon minecraft:item_display ~ ~1 ~ {item_display:"fixed",item:{id:"minecraft:lever",Count:1b},Glowing:true}

title @a[team=!Beast] title {"text":"Item dropped!","color":"red"}
title @a[team=Beast] title {"text":"Item dropped!","color":"green"}
scoreboard players set @s ITEM 0
scoreboard players set #NUM ITEM_OBTAINED 0