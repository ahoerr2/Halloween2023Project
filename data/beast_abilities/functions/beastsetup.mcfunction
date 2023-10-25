function beast_abilities:beastitems
scoreboard objectives add VisionTimer dummy "Vision Timer"
scoreboard objectives add VisionDisplayTimer dummy "Vision Display Timer"
scoreboard objectives add TickConversionRate dummy "Tick Conversion Rate"
scoreboard objectives add CarrotUsed minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add DashTimer dummy "Dash Timer"
scoreboard objectives add DashNotification dummy "Dash Notification"
scoreboard players set @a[team=Beast] DashTimer 0
scoreboard players set @a[team=Beast] VisionTimer 0
scoreboard players set @a[team=Beast] VisionDisplayTimer 0
scoreboard players set @a TickConversionRate 20


