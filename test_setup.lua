host:sendChatCommand("execute in minecraft:overworld run tp @s 100 101 100 0 0")
host:sendChatCommand("execute positioned 100 100 100 run fill ~-16 ~ ~-16 ~16 ~ ~16 minecraft:stone")
host:sendChatCommand("execute positioned 100 100 100 run fillbiome ~-16 ~-8 ~-16 ~16 ~8 ~16 minecraft:old_growth_birch_forest")
host:sendChatCommand("fill 100 101 100 100 319 100 air")

host:sendChatCommand("time set 24000t")
host:sendChatCommand("weather clear")

-- blocks to test
host:sendChatCommand("setblock 105 101 105 minecraft:light")
host:sendChatCommand("setblock 105 101 104 minecraft:bedrock")
host:sendChatCommand("setblock 105 101 103 minecraft:redstone_block")

-- entities to test
host:sendChatCommand("summon cow 100 102 104 {NoAI:1b,UUID:[I;1,2,3,4]}")