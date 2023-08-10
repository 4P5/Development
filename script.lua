vanilla_model.PLAYER:setVisible(false)

require("logger")
LOG_VERBOSITY = 0
local log_types = {
    [0] = "§7Level 0: §r§lSummary. §rReports only the number of tests that passed and failed.",
    [1] = "§7Level 1: §r§lDefault. §rReports each test's results, with expected values if the test errors.",
    [2] = "§7Level 2: §r§lVerbose. §rReports each test's expected and actual values, even if they match.",
    [3] = "§7Level 3: §r§lEverything. §rReports the input and output before and after stringification, and their types.",
}
local main_page = action_wheel:newPage()
action_wheel:setPage(main_page)
-- main_page:newAction():title("Setup Test Area"):item("stone"):onLeftClick(function ()
--     require("test_setup")
--     require("player_setup")
-- end)
-- main_page:newAction():title("Run Unit Tests (Scroll to modify logging level)"):item("command_block"):onLeftClick(function ()
--     require("test_handler")
-- end):onScroll(function (dir)
--     sounds["block.bamboo.break"]:pos(player:getPos()):pitch(1):subtitle("Logging level changed"):play()
--     LOG_VERBOSITY = LOG_VERBOSITY + dir
--     if LOG_VERBOSITY < 0 then
--         LOG_VERBOSITY = 0
--     elseif LOG_VERBOSITY > 3 then
--         LOG_VERBOSITY = 3
--     end
--     logJson("§b§l[DEV] §eLogging level set to " .. LOG_VERBOSITY .. "\n")
--     logJson(log_types[LOG_VERBOSITY] .. "\n")
-- end)

main_page:newAction():title("Test!"):item("command_block"):onLeftClick(function ()
    local n = 0
    events.TICK:register(function () -- wait a bit for everything to load
        n = n + 1
        if n > 32 then
            require("test_handler")
        elseif n > 30 then
            require("variables")
        elseif n > 10 then
            require("test_area")
        elseif n > 3 then
            require("player_setup")
        -- else
        --     events.TICK:remove("setup_delay")
        end
    end, "setup_delay")
end)