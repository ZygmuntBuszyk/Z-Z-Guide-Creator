-- RXP/RXPValidation.lua
local _, addon = ...
local RXP = addon.RXP

RXP.headerTypes = {
    "version", "group", "name", "next",
    "xprate", "classic", "retail", "som",
    "hardcore", "softcore", "phase", "season"
}

function RXP:InitializeValidation()
    -- init validation
end

function RXP:ValidateHeader(line)
-- Extract header type and value
    local headerType, value = line:match("^#(%S+)%s*(.*)")
    if not headerType then return false end

    -- Validate version
    if headerType == "version" then
        local version = tonumber(value)
        return version and version > 0
    end

    -- Validate xprate
    if headerType == "xprate" then
        local op, rate = value:match("([<>]?)%s*(%d+%.?%d*)")
        return op and rate and tonumber(rate)
    end

    -- Validate group/name
    if headerType == "group" or headerType == "name" then
        return value and value ~= ""
    end

    -- Validate game version tags
    if headerType == "classic" or headerType == "retail" or 
    headerType == "som" or headerType == "hardcore" or 
    headerType == "softcore" then
        return true
    end

    -- Validate phase
    if headerType == "phase" then
        local phase = tonumber(value)
        return phase and phase >= 1 and phase <= 6
    end

    -- Validate season
    if headerType == "season" then
        local season = tonumber(value)
        return season and season >= 0 and season <= 2
    end

    return false
end

-- More validation functions later on 