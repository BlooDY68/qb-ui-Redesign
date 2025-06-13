local lasttext = {}
local lasticon = {}
local lastbackground = {}

local function DrawText(text, icon)
    lasttext = text
    lasticon = icon
    if icon == "" or icon == nil then
        icon = "fa-solid fa-bells"
    end

    if text == "" or text == nil then
        text = ""
    end

    
    SendNUIMessage({
        type = "open",
        icon = icon,
        text = text,
    })
end

local function DrawText7(text, icon)
    lasttext = text
    lasticon = icon
    if icon == "" or icon == nil then
        icon = "fa-solid fa-bells"
    end

    if text == "" or text == nil then
        text = ""
    end

    
    SendNUIMessage({
        type = "open",
        icon = icon,
        text = text,
    })
end

local function HideText()
    SendNUIMessage({
        type = "close",
        icon = lasticon,
        text = lasttext,
    })
end

local function KeyPressed()
    CreateThread(function() -- Not sure if a thread is needed but why not eh?
        SendNUIMessage({
            action = 'KEY_PRESSED',
        })
        Wait(500)
        HideText()
    end)
end

local function DrawBlackUi(action, text)
    SendNUIMessage({
		action = action,
		text = text,
	})
end

local function HideBlackUi()
	SendNUIMessage({
		action = 'hide'
	})
end

local function DrawText1(text, icon)
    lasttext = text
    lasticon = icon
    if icon == "" or icon == nil then
        icon = "fas fa-lock"
    end

    if text == "" or text == nil then
        text = ""
    end

    
    SendNUIMessage({
        type = "open",
        icon = icon,
        text = text,
    })
end

local function DrawText2(text, icon)
    lasttext = text
    lasticon = icon
    if icon == "" or icon == nil then
        icon = "fas fa-unlock"
    end

    if text == "" or text == nil then
        text = ""
    end

    
    SendNUIMessage({
        type = "open",
        icon = icon,
        text = text,
    })
end

local function DrawText3(text, icon)
    lasttext = text
    lasticon = icon
    if icon == "" or icon == nil then
        icon = "fas fa-building"
    end

    if text == "" or text == nil then
        text = ""
    end

    
    SendNUIMessage({
        type = "open",
        icon = icon,
        text = text,
    })
end

local function DrawText4(text, icon)
    lasttext = text
    lasticon = icon
    if icon == "" or icon == nil then
        icon = "fas fa-tshirt"
    end

    if text == "" or text == nil then
        text = ""
    end

    
    SendNUIMessage({
        type = "open",
        icon = icon,
        text = text,
    })
end



local function DrawText5(text, icon)
    lasttext = text
    lasticon = icon
    if icon == "" or icon == nil then
        icon = "fas fa-clock"
    end

    if text == "" or text == nil then
        text = ""
    end

    
    SendNUIMessage({
        type = "open",
        icon = icon,
        text = text,
    })
end

local function DrawText6(text, icon)
    lasttext = text
    lasticon = icon
    if icon == "" or icon == nil then
        icon = "fas fa-recycle"
    end

    if text == "" or text == nil then
        text = ""
    end

    
    SendNUIMessage({
        type = "open",
        icon = icon,
        text = text,
    })
end


local function DrawText8(text, icon)
    lasttext = text
    lasticon = icon
    if icon == "" or icon == nil then
        icon = "fa-solid fa-x"
    end

    if text == "" or text == nil then
        text = ""
    end

    
    SendNUIMessage({
        type = "open",
        icon = icon,
        text = text,
    })
end

local function DrawText9(text, icon)
    lasttext = text
    lasticon = icon
    if icon == "" or icon == nil then
        icon = "fa-solid fa-f"
    end

    if text == "" or text == nil then
        text = ""
    end

    
    SendNUIMessage({
        type = "open",
        icon = icon,
        text = text,
    })
end

local function DrawText10(text, icon)
    lasttext = text
    lasticon = icon
    if icon == "" or icon == nil then
        icon = "fa-solid fa-e"
    end

    if text == "" or text == nil then
        text = ""
    end

    
    SendNUIMessage({
        type = "open",
        icon = icon,
        text = text,
    })
end



RegisterNetEvent('qb-core:client:DrawText', function(icon, text, letter, position)
    DrawText(icon, text, letter, position)
end)


RegisterNetEvent('qb-core:client:ChangeText', function(icon, text, letter, position)
    changeText(icon, text, letter, position)
end)

RegisterNetEvent('qb-core:client:HideText', function()
    HideText()
end)



RegisterNetEvent('qb-core:client:KeyPressed', function()
    keyPressed()
end)

exports('DrawText', DrawText)
exports('DrawText1', DrawText1)
exports('DrawText2', DrawText2)
exports('DrawText3', DrawText3)
exports('DrawText4', DrawText4)
exports('DrawText5', DrawText5)
exports('DrawText6', DrawText6)
exports('DrawText7', DrawText7)
exports('DrawText8', DrawText8)
exports('DrawText9', DrawText9)
exports('DrawText10', DrawText10)
exports('HideText', HideText)
exports('KeyPressed', KeyPressed)
exports('DrawBlackUi', DrawBlackUi)
exports('HideBlackUi', HideBlackUi)


-- CreateThread(function()
--     Wait(1000)
--     DrawBlackUi('show', "RESPAWN IN: SECONDS") 
--     Wait(3000)
--     HideBlackUi()
--     Wait(1000)
--     DrawBlackUi('show', "RESPAWN IN: SECONDS") 
-- end)

