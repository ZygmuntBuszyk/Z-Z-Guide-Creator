-- RXP/RXPCommands.lua
local _, addon = ...
local RXP = addon.RXP

RXP.commands = {
    goto = true,
    zone = true,
    complete = true,
    accept = true,
    turnin = true,
    -- todo other commands 
}

function RXP:InitializeCommands()
    -- Command intit
end

-- Command handlers later on 