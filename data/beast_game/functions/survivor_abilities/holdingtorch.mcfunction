tag @a[nbt={SelectedItem:{id:"minecraft:torch"}}] add HoldingTorch
effect clear @a[team=Survivors,tag=!HoldingTorch] minecraft:darkness
execute as @a[team=Survivors,tag=!HoldingTorch,scores={torch_pull_selector=3}] at @s run stopsound @s master block.campfire.crackle
execute as @a[team=Survivors,tag=!HoldingTorch,scores={torch_pull_selector=3}] at @s run scoreboard players set @s torch_pull_selector 0
execute as @a[team=Survivors,tag=!HoldingTorch,scores={torch_pull_selector=0}] at @s run playsound entity.generic.extinguish_fire master @a ~ ~ ~ 0.3 1.8 0.2
execute as @a[team=Survivors,tag=!HoldingTorch,scores={torch_pull_selector=0}] at @s run effect give @s minecraft:blindness infinite 1 true
execute as @a[team=Survivors,tag=!HoldingTorch,scores={torch_pull_selector=0}] at @s run scoreboard players set @s torch_pull_selector 2

effect clear @a[team=Survivors,tag=HoldingTorch] minecraft:blindness
execute as @a[team=Survivors,tag=HoldingTorch,scores={torch_pull_selector=2}] at @s run scoreboard players set @s torch_pull_selector 0
execute as @a[team=Survivors,tag=HoldingTorch,scores={torch_pull_selector=0}] at @s run playsound entity.blaze.shoot master @a ~ ~ ~ 0.3 0.6 0.2
execute as @a[team=Survivors,tag=HoldingTorch,scores={torch_pull_selector=0}] at @s run effect give @s minecraft:darkness infinite 1 true
execute as @a[team=Survivors,tag=HoldingTorch,scores={torch_pull_selector=0}] at @s run scoreboard players set @s torch_pull_selector 3

execute as @a[team=Survivors,tag=HoldingTorch,scores={torch_pull_selector=3}] at @s run scoreboard players add @s torch_sound_amt 1

execute as @a[team=Survivors,tag=HoldingTorch,scores={torch_pull_selector=3}] at @s run scoreboard players operation @s torch_sound_time = @s torch_sound_amt
execute as @a[team=Survivors,tag=HoldingTorch,scores={torch_pull_selector=3}] at @s run scoreboard players operation @s torch_sound_time %= @s torch_sound_modulo
execute as @a[team=Survivors,tag=HoldingTorch,scores={torch_pull_selector=3,torch_sound_time=0}] at @s run playsound block.campfire.crackle master @s ~ ~ ~ 0.4 0.4 0.2
tag @a[tag=HoldingTorch] remove HoldingTorch