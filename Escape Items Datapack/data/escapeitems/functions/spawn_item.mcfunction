loot insert 33 66 78 loot escapeitems:items
data modify entity @e[type=minecraft:armor_stand,limit=1] ArmorItems[3] merge from block 33 66 78 Items[0]
data modify block 33 66 78 Items[0].id set value "minecraft:air"