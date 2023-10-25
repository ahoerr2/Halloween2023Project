scoreboard players reset @a Players

team add Beast
team modify Beast color dark_red
team modify Beast nametagVisibility never

team add Survivors
team modify Survivors color aqua
team modify Survivors nametagVisibility never
team modify Survivors friendlyFire false

team add Ghosts
team modify Ghosts color gray
team modify Ghosts nametagVisibility never

team join Beast @r
scoreboard players set @a[team=Beast] BEAST 1
team join Survivors @a[team=]
scoreboard players set @a[team=Survivors] Players 1