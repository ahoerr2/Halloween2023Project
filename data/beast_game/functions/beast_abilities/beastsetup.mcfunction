function beast_game:beast_abilities/beastitems
scoreboard objectives add VisionTimer dummy "Vision Timer"
scoreboard objectives add VisionDisplayTimer dummy "Vision Display Timer"
scoreboard objectives add TickConversionRate dummy "Tick Conversion Rate"
scoreboard players set @a[team=Beast] VisionTimer 0
scoreboard players set @a[team=Beast] VisionDisplayTimer 0
scoreboard players set @a TickConversionRate 20