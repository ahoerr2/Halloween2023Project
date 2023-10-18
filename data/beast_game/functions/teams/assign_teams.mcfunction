team add Beast
team modify Beast prefix "[Beast] "
team modify Beast color dark_red
team modify Beast nametagVisibility never

team add Survivors
team modify Survivors prefix "[Survivor] "
team modify Survivors color aqua
team modify Survivors nametagVisibility never
team modify Survivors friendlyFire false

team add Ghosts
team modify Ghosts prefix "[Ghost] "
team modify Ghosts color gray
team modify Ghosts nametagVisibility never

team join Beast @r
scoreboard players set @a[team=Beast] BEAST 1
team join Survivors @a[team=]