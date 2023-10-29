#Initialize all scoreboard objectives
scoreboard objectives add VisionTimer dummy "Vision Timer"
scoreboard objectives add VisionDisplayTimer dummy "Vision Display Timer"
scoreboard objectives add TickConversionRate dummy "Tick Conversion Rate"
scoreboard objectives add CarrotUsed minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add HitSurvivor dummy "Survivor Hit Rate"
scoreboard objectives add DashTimer dummy "Dash Timer"
scoreboard objectives add DashNotification dummy "Dash Notification"
scoreboard objectives add spook_timer dummy "Spook Timer"
scoreboard objectives add heartbeat_amt dummy "Heartbeat Amt"
scoreboard objectives add heartbeat_timer dummy "Heartbeat Timer"
scoreboard objectives add vanish_sneaking_notifier dummy "Vanish Sneaking Notifier"
scoreboard objectives add vanish_am_walking custom:minecraft.walk_one_cm "Vanish Am Walking" 
scoreboard objectives add vanish_percent dummy "Vanish Percent"
scoreboard objectives add vanish_convert_rate dummy "Vanish Convert Rate"
scoreboard objectives add vanish_display_rate dummy "Vanish Display Rate"
scoreboard objectives add compass_windup_time dummy "Compass Windup Time"
scoreboard objectives add compass_windup_notifier dummy "Compass Windup Notifier"
scoreboard objectives add compass_tracking_notifier dummy "Compass Tracking Notifier"
scoreboard objectives add compass_sound_time dummy "Compass Sound Time"
scoreboard objectives add compass_sound_modulo dummy "Compass Sound Modulo"
scoreboard objectives add torch_pull_selector dummy "Torch Pull Selector"
scoreboard objectives add torch_sound_amt dummy "Torch Sound Amt"
scoreboard objectives add torch_sound_time dummy "Torch Sound Time"
scoreboard objectives add torch_sound_modulo dummy "Torch Sound Modulo"
scoreboard objectives add am_carrying_item dummy "Am Carrying Item"
scoreboard objectives add DIED dummy
scoreboard objectives add KILLS playerKillCount
scoreboard objectives add TIMER dummy
scoreboard objectives add XP dummy
scoreboard objectives add SURVIVORS dummy
scoreboard objectives add Wins dummy 
scoreboard objectives setdisplay below_name Wins
scoreboard objectives add ITEM dummy
scoreboard objectives add ITEM_OBTAINED dummy
scoreboard objectives add HINT dummy
scoreboard objectives add AXE minecraft.mined:minecraft.crafting_table
scoreboard objectives add LEVER dummy
scoreboard objectives add SPAWN dummy
scoreboard objectives add GAMESTATE dummy
scoreboard objectives add Players dummy {"text":"Survivors","color":"dark_red","bold":true}

#Create "Start" hologram above start button and update GAMESTATE variable
kill @e[type=armor_stand,name="Start"]
kill @e[type=armor_stand,name="Spectate"]
summon armor_stand -149 149 42 {Invisible:1b,Marker:1b,CustomName:'{"text":"Start","color":"green","bold":true}',CustomNameVisible:1b}
scoreboard players set #NUM GAMESTATE 0