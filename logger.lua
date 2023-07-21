

function logSummary(...)
    if LOG_VERBOSITY >= 0 then
        logJson(...)
    end
end

function logDefault(...)
    if LOG_VERBOSITY >= 1 then
        logJson(...)
    end
end

function logVerbose(...)
    if LOG_VERBOSITY >= 2 then
        logJson(...)
    end
end

function logEverything(...)
    if LOG_VERBOSITY >= 3 then
        log(...)
    end
end