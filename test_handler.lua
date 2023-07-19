-- Registers unit tests from the `tests` directory.
local unit_tests = {}
local n_tests = 0
logJson("\n\n\n§b§l[DEV] §eLoading tests\n")
for _, path in pairs(listFiles("tests", true)) do
    local api, name = path:gsub("tests.",""):gsub(".lua",""):match("(.*)%.(.*)")
    unit_tests[api] = unit_tests[api] or {}
    unit_tests[api][#unit_tests[api]+1] = {
        name = name,
        path = path,
    }
    n_tests = n_tests + 1
end

logJson("§b§l[DEV] §eFound §b" .. n_tests .. " §etests\n")
for api, tests in pairs(unit_tests) do
    logJson("§b§l[DEV] §eRunning tests for §b" .. api .. "\n")
    for i, test in pairs(tests) do
        local result, expected = require(test.path)
        if result == expected then
            logJson("§b§l[DEV] §2— §7" .. test.name .. " §2passed\n")
        else
            logJson("§b§l[DEV] §c— §7" .. test.name .. " §cfailed\n")
            logJson("§b§l[DEV] §c—— §cExpected: §7" .. tostring(expected) .. "\n")
            logJson("§b§l[DEV] §c—— §cGot: §7" .. tostring(result) .. "\n")
        end
    end
end
logJson("§b§l[DEV] §eFinished testing!\n\n\n")