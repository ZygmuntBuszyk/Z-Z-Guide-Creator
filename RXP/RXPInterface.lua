local _, addon = ...
local RXP = addon.RXP

function RXP:InitializeInterface()
    self:CreateHeaderDropdown()
    -- Other UI initialization possibly?
end

function RXP:CreateHeaderDropdown()
    local dropdown = CreateFrame("Frame", "RXPHeaderDropdown", f, "UIDropDownMenuTemplate")
    dropdown:SetPoint("TOPLEFT", f.Save, "BOTTOMLEFT", 0, -5)
    
    local function AddHeader(self, headerType)
        local value = GetDefaultValue(headerType)
        local headerText = string.format("#%s %s\n", headerType, value)
        f.Text:Insert(headerText)
    end

    local menuTable = {}
    for _, headerType in ipairs(headerTypes) do
        table.insert(menuTable, {
            text = headerType,
            func = function(self) AddHeader(self, headerType) end,
            notCheckable = true
        })
    end

    dropdown.initialize = function(self, level)
        for _, entry in ipairs(menuTable) do
            UIDropDownMenu_AddButton(entry)
        end
    end

    -- Add Header button
    local headerButton = CreateFrame("Button", nil, f, "UIPanelButtonTemplate")
    headerButton:SetText("Add Header")
    headerButton:SetWidth(100)
    headerButton:SetHeight(20)
    headerButton:SetPoint("LEFT", dropdown, "RIGHT", 0, 2)
    headerButton:SetScript("OnClick", function()
        ToggleDropDownMenu(1, nil, dropdown, headerButton, 0, 0)
    end)

    return dropdown
end

-- UI components will go here later on 