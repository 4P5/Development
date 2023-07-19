-- player
host:sendChatCommand("execute in minecraft:overworld run tp @s 100 101 100 0 0")
host:sendChatCommand("effect clear")

-- test area
host:sendChatCommand("execute positioned 100 100 100 run fill ~-32 ~-24 ~-32 ~32 ~-16 ~32 minecraft:air")
host:sendChatCommand("execute positioned 100 100 100 run fill ~-32 ~-16 ~-32 ~32 ~-8 ~32 minecraft:air")
host:sendChatCommand("execute positioned 100 100 100 run fill ~-32 ~-8 ~-32 ~32 ~-0 ~32 minecraft:air")
host:sendChatCommand("execute positioned 100 100 100 run fill ~-32 ~0 ~-32 ~32 ~8 ~32 minecraft:air")
host:sendChatCommand("execute positioned 100 100 100 run fill ~-32 ~8 ~-32 ~32 ~16 ~32 minecraft:air")
host:sendChatCommand("execute positioned 100 100 100 run fill ~-32 ~16 ~-32 ~32 ~24 ~32 minecraft:air")

host:sendChatCommand("execute positioned 100 100 100 run fill ~-16 ~ ~-16 ~16 ~ ~16 minecraft:stone")
host:sendChatCommand("execute positioned 100 100 100 run fillbiome ~-16 ~-8 ~-16 ~16 ~8 ~16 minecraft:old_growth_birch_forest")

host:sendChatCommand("fill 100 101 100 100 319 100 air") -- skylight access

-- test blocks
host:sendChatCommand("setblock 105 101 105 minecraft:light")
host:sendChatCommand("setblock 105 101 104 minecraft:bedrock")
host:sendChatCommand("setblock 105 101 103 minecraft:redstone_block")

-- world
host:sendChatCommand("time set 24000t")
host:sendChatCommand("weather clear")

-- entities
host:sendChatCommand("summon cow 100 102 104 {NoAI:1b,UUID:[I;1,2,3,4]}")

-- globals
LIGHT = world.getBlockState(105,101,105)
BEDROCK = world.getBlockState(105,101,104)
REDSTONE_BLOCK = world.getBlockState(105,101,103)
COW = world.getEntity("00000001-0000-0002-0000-000300000004")


