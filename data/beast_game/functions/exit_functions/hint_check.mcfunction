#Hint for Axe route
execute at @s if entity @e[type=armor_stand,name="Crafting Table",distance=..4] if score @s HINT matches 0 run tellraw @s {"text":"An axe may be able to chop away this crafting bench...","color":"yellow"}

#Hint and particles for Brick route
execute at @s if entity @e[type=armor_stand,name="Unstable Window",distance=..4] if score @s HINT matches 0 run tellraw @s {"text":"Maybe you can find something to smash this unstable window with...","color":"gold"}

#Hint for TNT route
execute at @s if entity @e[type=armor_stand,name="Cracked Wall",distance=..4] if score @s HINT matches 0 run tellraw @s {"text":"Maybe an explosive could destroy this wall...","color":"red"}

#Hint for Lever route
execute at @s if entity @e[type=armor_stand,name="Crypt Casket",distance=..4] if score @s HINT matches 0 run tellraw @s {"text":"There seems to be a mechanism hidden here...","color":"gray"}

#Activate player hint cooldown timer
execute as @s[scores={HINT=1..}] run scoreboard players remove @s HINT 1
execute at @s if entity @e[type=armor_stand,distance=..4] if score @s HINT matches 0 run scoreboard players set @s HINT 100