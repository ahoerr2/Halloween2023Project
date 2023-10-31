#Anything that should happen at any time, even in the lobby
effect give @a saturation infinite 1 true
effect give @a water_breathing infinite 0 true
execute as @e[type=item] run data merge entity @s {PickupDelay:0}

#Check if a player is near the item display for the item
execute as @a[team=Survivors] at @s if entity @e[type=item_display,distance=..2] run function beast_game:escape_items/give_item

#Check conditions for various escape items
execute as @a[scores={AXE=1}] run function beast_game:escape_items/axe
execute as @a[nbt={SelectedItem:{id:"minecraft:brick"}}] at @s if entity @e[type=armor_stand,name="Unstable Window",distance=..2] run function beast_game:escape_items/brick
execute if block -454 74 35 minecraft:lever[face=floor,powered=true] if score #NUM LEVER matches 1 run function beast_game:escape_items/lever

#Check if the beast kills a player for purposes of checking beast win (killing all survivors)
execute as @a[team=Beast] if score @s KILLS matches 1 run scoreboard players remove #NUM KILLS 1
execute as @a[team=Beast] if score @s KILLS matches 1 run scoreboard players remove @s KILLS 1

#Check if all survivors are dead and moves them to the ghost team when they die
execute if score #NUM SURVIVORS matches 1 run function beast_game:game_status/game_over
execute as @a[team=Survivors] if score @s DIED matches 1 run function beast_game:teams/ghost_team

#Check if the player has escaped
execute as @a[team=Survivors] run function beast_game:exit_functions/escape_check

#Timer for the game length and the XP bar display
scoreboard players add #NUM TIMER 1
execute if score #NUM TIMER matches 21 run scoreboard players set #NUM TIMER 0
execute if score #NUM TIMER matches 20 run function beast_game:game_status/xp_loss
execute if score #NUM XP matches 1 run function beast_game:game_status/game_over

# Speed boost if player is hit by beast
execute as @a at @s if entity @s[nbt={HurtTime:10s}] run effect give @s speed 4 3 true

# Functions for Survivors
function beast_game:survivor_abilities/survivorheartbeat
function beast_game:survivor_abilities/survivorvanish
function beast_game:survivor_abilities/holdingcompass
function beast_game:survivor_abilities/holdingtorch

execute as @a[team=Survivors] at @s run function beast_game:survivor_abilities/survivorcompass

# Optional balance change that will give the player with the item permenant glowing [Pro Mode?] 
# effect give @a[team=Survivors,scores={ITEM=1}] minecraft:glowing 1 0 true


#Exit particle effects and display hint if a player is near any of the possible escape routes
function beast_game:exit_functions/exit_particles
execute as @a[team=Survivors] run function beast_game:exit_functions/hint_check


# Horrible code but fixes armor stand duplication bug
execute if score #NUM GAMESTATE matches 0 run kill @e[type=armor_stand,tag=Spectate]
execute if score #NUM GAMESTATE matches 1 run kill @e[type=armor_stand,tag=Start]

# Make sure villager right clicks can be done again
# execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=Tutorial] run say hi

teleport @e[type=villager,tag=Tutorial] -185 75.5 118
teleport @e[type=villager,tag=Church] -144 146 44
teleport @e[type=villager,tag=Credits] -144 146 38