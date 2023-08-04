local to_match = {
    "minecraft:water",
    "minecraft:lava",
}
for _, tag in pairs(WATER:getFluidTags()) do
    for i, match in pairs(to_match) do
        if tag == match then
            table.remove(to_match, i)
        end
    end
end

return to_match, {"minecraft:lava"}