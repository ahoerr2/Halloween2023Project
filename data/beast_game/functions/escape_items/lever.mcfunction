playsound minecraft:block.stone.break block @a -455 74 34 5 0.5
playsound minecraft:block.stone.break block @a -455 74 34 5 0.5
playsound minecraft:block.stone.place block @a -455 74 34 5 0.5
playsound minecraft:block.stone.place block @a -455 74 34 5 0.5
particle block chiseled_polished_blackstone -456.01 74.75 34.01 1 0 0.5 0.01 300 force
fill -455 74 34 -458 74 34 air replace chiseled_polished_blackstone
fill -455 75 34 -458 75 34 air replace polished_blackstone_slab
fill -455 74 32 -458 74 32 chiseled_polished_blackstone replace air
fill -455 75 32 -458 75 32 polished_blackstone_slab replace air

scoreboard players set #NUM LEVER 0