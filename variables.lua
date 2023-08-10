-- particles
FLAME = particles["flame"]:pos(101,101,101.123):lifetime(9995):color(0.5,0.6,0.7):velocity(0.1,0.1,0.1):spawn()
BUBBLE = particles["bubble"]:spawn()

-- globals
CAVE_AIR = world.getBlockState(105,101,106)
LIGHT = world.getBlockState(105,101,105)
BEDROCK = world.getBlockState(105,101,104)
REDSTONE_BLOCK = world.getBlockState(105,101,103)
OAK_STAIRS = world.getBlockState(105,101,102)
SIGN = world.getBlockState(105,101,101)
WATER = world.getBlockState(105,100,100)
BLUE_ICE = world.getBlockState(105,101,99)
CAKE = world.getBlockState(105,101,98)
HONEY_BLOCK = world.getBlockState(105,101,97)
SEA_LANTERN = world.getBlockState(105,101,96)
GRASS_BLOCK = world.getBlockState(105,101,95)
MAGMA_BLOCK = world.getBlockState(105,101,94)

BIRCH_FOREST = world.getBiome(100,100,100)

COW = world.getEntity("00000001-0000-0002-0000-000300000004")

-- items
STICKS = host:getSlot(0)
ELYTRA = host:getSlot(1)
IRON_LEGGINGS = host:getSlot(5)
KELP = host:getSlot(7)
EGG = host:getSlot(8)
DIAMOND_SWORD = host:getSlot(9)
SEEDS = host:getSlot(10)