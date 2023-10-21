fill -437 67 62 -434 64 62 air replace tnt
summon minecraft:fireball -435.25 66 61 {ExplosionPower:2,Motion:[0.0,0.0,-10.0]}
fill -437 67 61 -434 64 61 air replace cracked_stone_bricks
clone -598 106 -76 -604 98 -82 to minecraft:overworld -434 74 4

advancement revoke @s only beast_game:tnt_placement