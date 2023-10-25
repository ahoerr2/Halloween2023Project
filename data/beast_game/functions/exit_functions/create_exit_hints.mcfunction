#Make sure any existing ones are removed
execute as @e[type=armor_stand,name="Crafting Table"] run kill @s
execute as @e[type=armor_stand,name="Unstable Window"] run kill @s
execute as @e[type=armor_stand,name="Cracked Wall"] run kill @s
execute as @e[type=armor_stand,name="Crypt Casket"] run kill @s

#Summon armor stand for Axe hint
summon minecraft:armor_stand -393 75 67 {CustomName:'{"text":"Crafting Table"}',Marker:1,Invisible:1}

#Summon armor stand for Brick hint
summon minecraft:armor_stand -380 103 51 {CustomName:'{"text":"Unstable Window"}',Marker:1,Invisible:1}

#Summon armor stand for TNT hint
summon minecraft:armor_stand -435 64 62 {CustomName:'{"text":"Cracked Wall"}',Marker:1,Invisible:1}

#Summon armor stand for Lever hint
summon minecraft:armor_stand -454 74 34 {CustomName:'{"text":"Crypt Casket"}',Marker:1,Invisible:1}