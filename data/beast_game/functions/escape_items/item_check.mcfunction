execute as @e[type=item,name="Iron Axe"] if entity @p[scores={BEAST=0},distance=..2] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,name="Brick"] if entity @p[scores={BEAST=0},distance=..2] run data merge entity @s {PickupDelay:0}

execute as @e[type=item,name="Iron Axe"] if entity @p[scores={BEAST=1},distance=..2] run data merge entity @s {PickupDelay:32767}
execute as @e[type=item,name="Brick"] if entity @p[scores={BEAST=1},distance=..2] run data merge entity @s {PickupDelay:32767}