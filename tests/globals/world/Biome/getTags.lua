local to_match = {
    "minecraft:has_structure/stronghold", 
    "minecraft:is_nether", 
    "minecraft:is_forest",
    "minecraft:has_structure/mineshaft",
    "minecraft:has_structure/ruined_portal_standard",
    "minecraft:is_overworld",
    "minecraft:stronghold_biased_to",
}
for _, tag in pairs(BIRCH_FOREST:getTags()) do
    for i, match in pairs(to_match) do
        if tag == match then
            table.remove(to_match, i)
        end
    end
end

return to_match, {"minecraft:is_nether"}