tag @a[nbt={SelectedItem:{id:"minecraft:compass"}}] add HoldingCompass
execute as @a[tag=!HoldingCompass] at @s run function beast_game:survivor_abilities/clearcompass
execute as @a[tag=HoldingCompass] at @s run function beast_game:survivor_abilities/trackingcompass
tag @a[tag=HoldingCompass] remove HoldingCompass

