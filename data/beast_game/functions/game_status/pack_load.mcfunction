#Initialize all scoreboard objectives
scoreboard objectives add VisionTimer dummy "Vision Timer"
scoreboard objectives add VisionDisplayTimer dummy "Vision Display Timer"
scoreboard objectives add TickConversionRate dummy "Tick Conversion Rate"
scoreboard objectives add CarrotUsed minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add DashTimer dummy "Dash Timer"
scoreboard objectives add DashNotification dummy "Dash Notification"
scoreboard objectives add DIED dummy
scoreboard objectives add KILLS playerKillCount
scoreboard objectives add TIMER dummy
scoreboard objectives add XP dummy
scoreboard objectives add SURVIVORS dummy
scoreboard objectives add Wins dummy 
scoreboard objectives setdisplay below_name Wins
scoreboard objectives add ITEM dummy
scoreboard objectives add HINT dummy
scoreboard objectives add AXE minecraft.mined:minecraft.crafting_table
scoreboard objectives add LEVER dummy
scoreboard objectives add SPAWN dummy
scoreboard objectives add GAMESTATE dummy
scoreboard objectives add Players dummy {"text":"Survivors","color":"dark_red","bold":true}

#Create "Start" hologram above start button and update GAMESTATE variable
kill @e[type=armor_stand,name="Start"]
kill @e[type=armor_stand,name="Spectate"]
summon armor_stand -146 148 42 {Invisible:1b,Marker:1b,CustomName:'{"text":"Start","color":"green","bold":true}',CustomNameVisible:1b}
scoreboard players set #NUM GAMESTATE 0