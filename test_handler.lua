-- Registers unit tests from the `tests` directory.
local unit_tests = {}
local n_tests = 0
logSummary("\n\n\n§b§l[DEV] §eLoading tests\n")
local date = client:getDate()
logClipboard(([=[
┌────[Debug report]
└────%s-%s-%s %s:%s
]=]):format(date.year, date.month, date.day, date.hour, date.minute))
for _, path in pairs(listFiles("tests", true)) do
    local api, name = path:gsub("tests.",""):gsub(".lua",""):match("(.*)%.(.*)")
    unit_tests[api] = unit_tests[api] or {}
    unit_tests[api][#unit_tests[api]+1] = {
        name = name,
        path = path,
    }
    n_tests = n_tests + 1
end

local function stringify(variable)
    if type(variable) == "table" then
        return logTable(variable, 3, true)
    else
        return tostring(variable)
    end
end

logSummary("§b§l[DEV] §eFound §b" .. n_tests .. " §etests\n")
local tests_passed = 0
local tests_failed = 0
local n_apis = 0
for api, tests in pairs(unit_tests) do
    n_apis = n_apis + 1
    -- only capture after the final .
    local api_short = api:match(".*%.(.*)")
    logDefault("§b§l[DEV] §eRunning tests for §b" .. api .. "\n")
    logClipboard("\n┌────Running " .. #tests .. " tests for " .. api .. ":\n")
    for i, test in pairs(tests) do
        local result, expected = require(test.path)
        logEverything("§b§l[DEV] §eExpected (" .. type(expected) .. "): §7§o", expected)
        logEverything("§b§l[DEV] §eResult (" .. type(result) .. "): §7§o", result)
        if stringify(result) == stringify(expected) then
            tests_passed = tests_passed + 1
            logDefault("§b§l[DEV] §2— §7" .. test.name .. " §2passed\n")
            logVerbose("§b§l[DEV] §2—— Expected: §7§o" .. stringify(expected) .. "\n")
            logVerbose("§b§l[DEV] §2—— Got: §7§o" .. stringify(result) .. "\n")
            if i == #tests then
                logClipboard("└──PASS──" .. api_short .. ":" .. test.name .. "\n")
            else
                logClipboard("├──PASS──" .. api_short .. ":" .. test.name .. "\n")
            end
        else
            tests_failed = tests_failed + 1
            logDefault("§b§l[DEV] §c— §7" .. test.name .. " §cfailed\n")
            logDefault("§b§l[DEV] §c—— Expected: §7§o" .. stringify(expected) .. "\n")
            logDefault("§b§l[DEV] §c—— Got: §7§o" .. stringify(result) .. "\n")
            
            logClipboard("├──FAIL──" .. api_short .. ":" .. test.name .. "\n")
            logClipboard("│  ├──Expected: (" .. type(expected) .. ") " .. stringify(expected) .. "\n")
            if i == #tests then
                logClipboard("└──└──Got:      (" .. type(result) .. ") " .. stringify(result) .. "\n")
            else
                logClipboard("│  └──Got:      (" .. type(result) .. ") " .. stringify(result) .. "\n")
            end
        end
    end
end
logSummary("§b§l[DEV] §eFinished §b" .. n_tests .. " §etests\n")
logSummary("§b§l[DEV] §a—— Passed: §b" .. tests_passed .. "\n")
logSummary("§b§l[DEV] §c—— Failed: §b" .. tests_failed .. "\n")
logClipboard(([=[

┌──────[Overall Results]
├────Tested: %s across %s APIs
├────Passed: %s (%s%%)
└────Failed: %s (%s%%)
]=]):format(n_tests, n_apis, tests_passed, math.floor(tests_passed/n_tests*100), tests_failed, math.floor(tests_failed/n_tests*100)))
finaliseClipboard()