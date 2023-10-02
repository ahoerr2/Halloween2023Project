execute as @a[tag=!greeted] run tellraw @s ["",{"text":"Hello, ","color":"yellow"},{"selector":"@s","color":"green"},{"text":"! Welcome to the world!","color":"yellow"}]
tag @a add greeted
