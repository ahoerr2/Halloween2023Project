playsound minecraft:block.glass.break block @a -380 105 51
particle block orange_stained_glass -380.01 105 51 0.5 0.5 0 0.01 100 force
fill -380 105 51 -380 104 51 air replace orange_stained_glass_pane
fill -380 104 50 -380 104 50 orange_stained_glass_pane replace air
scoreboard players set @s ITEM 0
clear @s brick