execute as @a[team=Survivors,scores={vanish_percent=1..}] at @s if predicate beast_game:is_sneaking run effect give @s invisibility 1 0 true
execute as @a[team=Survivors,scores={vanish_percent=1..,vanish_sneaking_notifier=0}] at @s if predicate beast_game:is_sneaking run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 1.5 0.5
execute as @a[team=Survivors,scores={vanish_percent=1..,vanish_sneaking_notifier=0}] at @s if predicate beast_game:is_sneaking run particle witch ~ ~ ~ 0.75 0.75 0.75 1 200 normal
execute as @a[team=Survivors,scores={vanish_percent=1..,vanish_sneaking_notifier=0}] at @s if predicate beast_game:is_sneaking run particle dragon_breath ~ ~ ~ 0.75 0.75 0.75 1 60 normal
execute as @a[team=Survivors,scores={vanish_percent=1..,vanish_sneaking_notifier=0}] at @s if predicate beast_game:is_sneaking run scoreboard players set @s vanish_sneaking_notifier 1

# Updates the display actionbar timer by converting the tickrate of the VisionTimer to seconds
execute as @e[scores={vanish_percent=1..}] run scoreboard players operation @s vanish_display_rate = @s vanish_percent
execute as @e[scores={vanish_percent=1..}] run scoreboard players operation @s vanish_display_rate /= @s vanish_convert_rate
execute as @a[scores={vanish_percent=1..}] at @s if predicate beast_game:is_sneaking run title @s actionbar [{"text":"Vanish Time Remaining ","color": "aqua"},{"text":"[Hold Shift]: ","color": "gold"},{"score":{"name":"*", "objective":"vanish_display_rate"},"color": "green"},{"text":"s","color": "aqua"}]

execute as @a[team=Survivors,scores={vanish_percent=1..}] at @s if predicate beast_game:is_sneaking run scoreboard players remove @s vanish_percent 1
execute as @a[team=Survivors,scores={vanish_percent=1..,vanish_sneaking_notifier=1}] at @s if predicate beast_game:not_sneaking run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.5 0.5
execute as @a[team=Survivors,scores={vanish_percent=1..,vanish_sneaking_notifier=1}] at @s if predicate beast_game:not_sneaking run scoreboard players set @s vanish_sneaking_notifier 0

