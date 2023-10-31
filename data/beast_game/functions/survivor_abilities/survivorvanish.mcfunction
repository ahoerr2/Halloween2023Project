execute as @a[team=Survivors,scores={vanish_percent=1..},tag=!VanishRecharge] at @s if predicate beast_game:is_sneaking run effect give @s invisibility 1 0 true
execute as @a[team=Survivors,scores={vanish_percent=1..},tag=!VanishRecharge] at @s if predicate beast_game:is_sneaking run effect give @s slowness 1 4 true
execute as @a[team=Survivors,scores={vanish_percent=1..},tag=!VanishRecharge] at @s if predicate beast_game:is_sneaking run tag @s add Vanished
execute as @a[team=Survivors,scores={vanish_percent=1..,vanish_sneaking_notifier=0},tag=!VanishRecharge] at @s if predicate beast_game:is_sneaking run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 1.5 0.5
execute as @a[team=Survivors,scores={vanish_percent=1..,vanish_sneaking_notifier=0},tag=!VanishRecharge] at @s if predicate beast_game:is_sneaking run particle witch ~ ~ ~ 0.75 0.75 0.75 1 200 normal
execute as @a[team=Survivors,scores={vanish_percent=1..,vanish_sneaking_notifier=0},tag=!VanishRecharge] at @s if predicate beast_game:is_sneaking run particle dragon_breath ~ ~ ~ 0.75 0.75 0.75 1 60 normal
execute as @a[team=Survivors,scores={vanish_percent=1..,vanish_sneaking_notifier=0},tag=!VanishRecharge] at @s if predicate beast_game:is_sneaking run scoreboard players set @s vanish_sneaking_notifier 1

# Updates the display actionbar timer by converting the tickrate of the VisionTimer to seconds
execute as @e[team=Survivors,scores={vanish_percent=1..},tag=!VanishRecharge] run scoreboard players operation @s vanish_display_rate = @s vanish_percent
execute as @e[team=Survivors,scores={vanish_percent=1..},tag=!VanishRecharge] run scoreboard players operation @s vanish_display_rate /= @s vanish_convert_rate
execute as @a[team=Survivors,scores={vanish_percent=1..},tag=!VanishRecharge] at @s if predicate beast_game:is_sneaking run title @s actionbar [{"text":"Vanish Time Remaining ","color": "aqua"},{"text":"[Hold Shift]: ","color": "gold"},{"score":{"name":"*", "objective":"vanish_display_rate"},"color": "green"},{"text":"s","color": "aqua"}]

execute as @a[team=Survivors,scores={vanish_percent=1..},tag=!VanishRecharge] at @s if predicate beast_game:is_sneaking run scoreboard players remove @s vanish_percent 1
execute as @a[team=Survivors,scores={vanish_percent=1..,vanish_sneaking_notifier=1},tag=!VanishRecharge] at @s if predicate beast_game:not_sneaking run scoreboard players set @s vanish_sneaking_notifier 0

execute as @a[tag=Vanished] at @s if predicate beast_game:not_sneaking run effect clear @s slowness
execute as @a[tag=Vanished] at @s if predicate beast_game:not_sneaking run effect give @s slowness infinite 0 true

# Once you unvanish you lose any remaining vanish time
execute as @a[team=Survivors,tag=Vanished,tag=!VanishRecharge] at @s if predicate beast_game:not_sneaking run scoreboard players set @s vanish_percent 0
execute as @a[tag=Vanished,tag=!VanishRecharge] at @s if predicate beast_game:not_sneaking run tag @s remove Vanished

# While you are not vanished you will recharge vanish time and can use it when you are full
execute as @a[team=Survivors,scores={vanish_percent=0},tag=!VanishRecharge] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.5 0.5
execute as @a[team=Survivors,scores={vanish_percent=0},tag=!VanishRecharge] at @s run tag @s remove Vanished
execute as @a[team=Survivors,scores={vanish_percent=0},tag=!VanishRecharge] at @s run tag @s add VanishRecharge
execute as @a[team=Survivors,tag=VanishRecharge] at @s run scoreboard players add @s vanish_percent 1

# Recharge bar that displays when the player is sneaking and in vanish recharge mode
execute as @e[team=Survivors,scores={vanish_percent=1..},tag=VanishRecharge] run scoreboard players operation @s vanish_display_rate = @s vanish_percent
execute as @e[team=Survivors,scores={vanish_percent=1..},tag=VanishRecharge] run scoreboard players operation @s vanish_display_rate /= @s vanish_convert_rate
execute as @a[team=Survivors,scores={vanish_percent=1..},tag=VanishRecharge] at @s if predicate beast_game:is_sneaking run title @s actionbar [{"text":"Vanish Reacharging ","color": "red"},{"text":"[10s full]: ","color": "gold"},{"score":{"name":"*", "objective":"vanish_display_rate"},"color": "green"},{"text":"s","color": "aqua"}]

# Once Recharge is over allow the player to use vanish again [WIP:] Add sound effect
execute as @a[team=Survivors,scores={vanish_percent=600..,vanish_sneaking_notifier=1},tag=VanishRecharge] run scoreboard players set @s vanish_sneaking_notifier 0
execute as @a[team=Survivors,scores={vanish_percent=600..},tag=VanishRecharge] at @s run tag @s add VanishRecharge_Done
execute as @a[team=Survivors,tag=VanishRecharge_Done] at @s run scoreboard players set @s vanish_percent 200
execute as @a[team=Survivors,tag=VanishRecharge_Done] at @s run tag @s remove VanishRecharge
execute as @a[team=Survivors,tag=VanishRecharge_Done] at @s run tag @s remove VanishRecharge_Done
