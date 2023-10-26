# When player is safe 
execute at @e[team=Beast] run scoreboard players add @a[distance=20..,team=Survivors] heartbeat_timer 1
execute at @e[team=Beast] store result score @a[distance=20..,team=Survivors, scores={heartbeat_timer=100..}] heartbeat_amt run random value 60..115
execute at @e[team=Beast] run title @a[distance=20..,team=Survivors] actionbar [{"text":"Monitor BPM: ","color":"green"},{"score":{"name":"*","objective":"heartbeat_amt"}}]

# Runs when player is close by monster
# execute at @e[team=Beast] run title @a[distance=8..20,team=Survivors] actionbar {"text":"Warning","color":"gold"}
execute at @e[team=Beast] run scoreboard players add @a[distance=8..20,team=Survivors] heartbeat_timer 4
execute at @e[team=Beast] store result score @a[distance=8..20,team=Survivors, scores={heartbeat_timer=100..}] heartbeat_amt run random value 125..150
execute at @e[team=Beast] run title @a[distance=8..20,team=Survivors] actionbar [{"text":"Monit","color":"gold"},{"text": "o","strikethrough": true},{"text": "r BPM: ","strikethrough": false},{"score":{"name":"*","objective":"heartbeat_amt"}}]

# Todo make the actionbar alternate between light red and dark red, monster is close so meant to scare the player
# execute at @e[team=Beast] run title @a[distance=..8,team=Survivors] actionbar {"text":"Run!","color":"red"}
execute at @e[team=Beast] run scoreboard players add @a[distance=..7,team=Survivors] heartbeat_timer 16
execute at @e[team=Beast] store result score @a[distance=..7,team=Survivors, scores={heartbeat_timer=100..}] heartbeat_amt run random value 160..430
execute at @e[team=Beast] run title @a[distance=..7,team=Survivors] actionbar [{"text":"Monitor BPM: ","obfuscated": true, "color":"red"},{"score":{"name":"*","objective":"heartbeat_amt"},"obfuscated": false}]


execute at @e[team=Beast] run playsound entity.elder_guardian.curse master @a[distance=..7,team=Survivors,scores={spook_timer=0}] 
execute at @e[team=Beast] run scoreboard players set @a[distance=..7,team=Survivors,scores={spook_timer=0}] spook_timer 600

# Tick down the timer for the spook timer for jumpscare
scoreboard players remove @a[scores={spook_timer=1..}] spook_timer 1

# Reset heartbeat_monitor when its above 20 (1s)
# playsound minecraft:block.note_block.bell ambient @a[scores={heartbeat_timer=40..}] ~ ~ ~ 0.5 0.5 0.5
# playsound minecraft:block.amethyst_block.resonate ambient @a[scores={heartbeat_timer=40..}] ~ ~ ~ 1 1.2 1
playsound minecraft:entity.warden.heartbeat ambient @a[scores={heartbeat_timer=100..,heartbeat_amt=0..116}] ~ ~ ~ 0.4 0.7 0.2
playsound minecraft:entity.warden.heartbeat ambient @a[scores={heartbeat_timer=100..,heartbeat_amt=117..151}] ~ ~ ~ 0.6 0.9 0.5
playsound minecraft:entity.warden.heartbeat ambient @a[scores={heartbeat_timer=100..,heartbeat_amt=152..431}] ~ ~ ~ 0.8 1.2 0.8
scoreboard players reset @a[scores={heartbeat_timer=100..}] heartbeat_timer