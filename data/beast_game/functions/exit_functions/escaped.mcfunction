scoreboard players add @s Wins 1
execute as @s run title @a title {"selector":"@s"}
title @a[team=Survivors] subtitle {"text":"has escaped!","color":"green"}
title @a[team=Beast] subtitle {"text":"has escaped!","color":"red"}
function beast_game:teams/ghost_team