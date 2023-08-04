local to_match = {
    "minecraft:stairs",
    "minecraft:stone_stairs",
    "minecraft:wooden_stairs"
}
for _, tag in pairs(OAK_STAIRS:getTags()) do
    for i, match in pairs(to_match) do
        if tag == match then
            table.remove(to_match, i)
        end
    end
end

return to_match, {"minecraft:stone_stairs"}