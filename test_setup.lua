host:sendChatCommand("execute in minecraft:overworld run tp @s 100 101 100")
host:sendChatCommand("execute positioned 100 100 100 run fill ~-16 ~ ~-16 ~16 ~ ~16 minecraft:stone")
host:sendChatCommand("execute positioned 100 100 100 run fillbiome ~-16 ~-8 ~-16 ~16 ~8 ~16 minecraft:old_growth_birch_forest")

-- blocks to test
host:sendChatCommand("setblock 105 101 105 minecraft:light")
host:sendChatCommand("setblock 105 101 104 minecraft:bedrock")

-- entities to test
host:sendChatCommand("summon cow 105 101 100 {NoAI:1b,UUID:[I;1,2,3,4]}")
-- by uuid
log(world.getEntity("00000001-0000-0002-0000-000300000004"))