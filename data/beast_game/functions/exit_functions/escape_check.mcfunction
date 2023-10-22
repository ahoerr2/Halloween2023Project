execute as @a[team=Survivors] at @s if block ~1 ~ ~ coal_block run function beast_game:exit_functions/escaped
execute as @a[team=Survivors] at @s if block ~ ~-1 ~ coal_block run function beast_game:exit_functions/escaped
execute as @a[team=Survivors] at @s if block ~ ~ ~-1 coal_block run function beast_game:exit_functions/escaped
execute as @a[team=Survivors] if entity @s[x=-379.5,y=104,z=50.5,distance=..1] run function beast_game:exit_functions/escaped