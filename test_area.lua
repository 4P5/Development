function events.TICK()
    for i = 0, 2, 0.1 do
        particles["end_rod"]:pos(95, 101 + i*5, 106):scale(i):lifetime(1):velocity():gravity():spawn()
        particles["flame"]:pos(95, 101 + i*5, 105):scale(i):lifetime(10):velocity():gravity():spawn()
        particles["bubble"]:pos(95, 101 + i*5, 104):scale(i):lifetime(1):velocity():gravity():spawn()
    end
    particles["end_rod"]:pos(95, 101, 103):lifetime(10):velocity(0,1,0):gravity():spawn()
    particles["end_rod"]:pos(95, 101, 103):lifetime(10):velocity(-1,0,0):gravity():spawn()
    particles["end_rod"]:pos(95, 103, 102):lifetime(10):velocity():gravity(1):spawn()
    particles["end_rod"]:pos(95, 101, 101):lifetime(10):velocity():gravity(-1):spawn()
end

-- test area
host:sendChatCommand("execute positioned 100 100 100 run fill ~-29 ~-24 ~-29 ~29 ~-16 ~29 minecraft:air")
host:sendChatCommand("execute positioned 100 100 100 run fill ~-29 ~-16 ~-29 ~29 ~-8 ~29 minecraft:air")
host:sendChatCommand("execute positioned 100 100 100 run fill ~-29 ~-8 ~-29 ~29 ~0 ~29 minecraft:air")
host:sendChatCommand("execute positioned 100 100 100 run fill ~-29 ~0 ~-29 ~29 ~8 ~29 minecraft:air")
host:sendChatCommand("execute positioned 100 100 100 run fill ~-29 ~8 ~-29 ~29 ~16 ~29 minecraft:air")
host:sendChatCommand("execute positioned 100 100 100 run fill ~-29 ~16 ~-29 ~29 ~24 ~29 minecraft:air")

host:sendChatCommand("execute positioned 100 100 100 run fill ~-16 ~-1 ~-16 ~16 ~0 ~16 minecraft:stone")

host:sendChatCommand("execute positioned 100 100 100 run fillbiome ~-16 ~-8 ~-16 ~16 ~8 ~16 minecraft:old_growth_birch_forest")
host:sendChatCommand("execute in minecraft:overworld run tp @s 100 101 100 0 0") -- second teleport in case the floor didn't generate in time

host:sendChatCommand("fill 100 101 100 100 319 100 air") -- skylight access

-- test blocks
host:sendChatCommand("setblock 105 101 106 minecraft:cave_air")
host:sendChatCommand("setblock 105 101 105 minecraft:light")
host:sendChatCommand("setblock 105 101 104 minecraft:bedrock")
host:sendChatCommand("setblock 105 101 103 minecraft:redstone_block")
host:sendChatCommand("setblock 105 101 102 minecraft:oak_stairs[facing=east,half=top,shape=outer_left]")
host:sendChatCommand("setblock 105 101 101 minecraft:oak_sign[rotation=4]{back_text:{color:\"black\",messages:['{\"text\":\"\"}','{\"text\":\"\"}','{\"text\":\"\"}','{\"text\":\"\"}']},front_text:{color:\"black\",messages:['{\"text\":\"Test\"}','{\"text\":\"\"}','{\"text\":\"\"}','{\"text\":\"\"}']}}")
host:sendChatCommand("setblock 105 100 100 minecraft:water")
host:sendChatCommand("setblock 105 101 99 minecraft:blue_ice")
host:sendChatCommand("setblock 105 101 98 minecraft:cake[bites=3]")
host:sendChatCommand("setblock 105 101 97 minecraft:honey_block")
host:sendChatCommand("setblock 105 101 96 minecraft:sea_lantern")
host:sendChatCommand("setblock 105 101 95 minecraft:grass_block")
host:sendChatCommand("setblock 105 101 94 minecraft:magma_block")


-- world
host:sendChatCommand("time set 24000t")
host:sendChatCommand("gamerule doDaylightCycle false")
host:sendChatCommand("weather clear")

-- entities
host:sendChatCommand("summon cow 100 102 104 {NoAI:1b,UUID:[I;1,2,3,4],Silent:1b}")