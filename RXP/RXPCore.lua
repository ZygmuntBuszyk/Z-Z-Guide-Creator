-- RXP/RXPCore.lua
local _, addon = ...

local RXP = {}
addon.RXP = RXP

-- Core initialization
function RXP:Init()
    self:InitializeValidation()
    self:InitializeCommands()
    self:InitializeFormatting()
    self:InitializeInterface()
end

-- Making functions available globally
_G.RXP = RXP