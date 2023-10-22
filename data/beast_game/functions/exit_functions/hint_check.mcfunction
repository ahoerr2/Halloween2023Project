#Hint for Axe route
particle minecraft:crit -393 75.75 67 0 0 0 0.25 1 force
execute as @e[type=armor_stand,name="Crafting Table"] at @s if entity @e[type=player,team=Survivors,distance=..4] if score @e[type=player,team=Survivors,distance=..4,limit=1] HINT matches 0 run tellraw @a[team=Survivors,distance=..4] {"text":"An axe may be able to chop away this crafting bench...","color":"yellow"}

#Hint and particles for Brick route
particle block orange_stained_glass -381 104 51 1 1 0 0.25 25 force
execute as @e[type=armor_stand,name="Unstable Window"] at @s if entity @e[type=player,team=Survivors,distance=..4] if score @e[type=player,team=Survivors,distance=..4,limit=1] HINT matches 0 run tellraw @a[team=Survivors,distance=..4] {"text":"Maybe you can find something to smash this unstable window with...","color":"gold"}

#Hint for TNT route
particle minecraft:falling_dust gravel -435.25 68.5 62 -1 0 0 1 1 force
execute as @e[type=armor_stand,name="Cracked Wall"] at @s if entity @e[type=player,team=Survivors,distance=..4] if score @e[type=player,team=Survivors,distance=..4,limit=1] HINT matches 0 run tellraw @a[team=Survivors,distance=..4] {"text":"Maybe an explosive could destroy this wall...","color":"red"}

#Activate player hint cooldown timer
execute as @e[type=player,team=Survivors,scores={HINT=1..}] run scoreboard players remove @s HINT 1
execute as @e[type=armor_stand] at @s if entity @e[type=player,team=Survivors,distance=..4] if score @e[type=player,team=Survivors,distance=..4,limit=1] HINT matches 0 run scoreboard players set @e[type=player,team=Survivors,distance=..4] HINT 5