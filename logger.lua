
local clipboard_string = ""
function logClipboard(...)
    for i, v in ipairs({...}) do
        clipboard_string = clipboard_string .. v
    end
end

function finaliseClipboard()
    host:setClipboard(clipboard_string)
    host:setActionbar("§b§l[DEV] §eCopied report to clipboard")
end

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