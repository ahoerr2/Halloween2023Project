execute if block 32 67 79 minecraft:stone_button[facing=south,powered=true] run function beast_game:escape_items/spawn_item
execute if block 32 67 79 minecraft:stone_button[facing=south,powered=true] run function beast_game:game_status/game_start

setblock 32 67 79 minecraft:stone_button[facing=south,powered=false]