local to_match = {
    "minecraft:trimmable_armor",
	"minecraft:armor",
}

for _, tag in pairs(IRON_LEGGINGS:getTags()) do
    for i, match in pairs(to_match) do
        if tag == match then
            table.remove(to_match, i)
        end
    end
end

return to_match, {"minecraft:armor"}