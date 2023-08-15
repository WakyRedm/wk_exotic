local VORPcore = {}
local VORPinv

TriggerEvent("getCore", function(core)
    VORPcore = core
end)


VORPinv = exports.vorp_inventory:vorp_inventoryApi()

RegisterServerEvent("wk_exotic:dropcoconut")
AddEventHandler("wk_exotic:dropcoconut", function()
    local _source = source 
    local User = VORPcore.getUser(_source)
    local Character = User.getUsedCharacter
    local drop = Config.coconut[math.random(1, #Config.banana)]
    local amount = math.random(1, 1)

    VORPinv.addItem(_source, drop, amount)
    TriggerClientEvent('vorp:TipRight', _source, "You found " .. amount .. " ~d~Coconut .")
end)

RegisterServerEvent("wk_exotic:dropkiwi")
AddEventHandler("wk_exotic:dropkiwi", function()
    local _source = source 
    local User = VORPcore.getUser(_source)
    local Character = User.getUsedCharacter
    local drop = Config.kiwi[math.random(1, #Config.kiwi)]
    local amount = math.random(1, 2)

    VORPinv.addItem(_source, drop, amount)
    TriggerClientEvent('vorp:TipRight', _source, "You found " .. amount .. " ~t6~Kiwi's~q~.")
end)

RegisterServerEvent("wk_exotic:dropbanana")
AddEventHandler("wk_exotic:dropbanana", function()
    local _source = source 
    local User = VORPcore.getUser(_source)
    local Character = User.getUsedCharacter
    local drop = Config.banana[math.random(1, #Config.banana)]
    local amount = math.random(1, 4)

    VORPinv.addItem(_source, drop, amount)
    TriggerClientEvent('vorp:TipRight', _source, "You found " .. amount .. " ~o~Bananas~q~.")
end)

RegisterServerEvent("wk_exotic:dropananas")
AddEventHandler("wk_exotic:dropananas", function()
    local _source = source 
    local User = VORPcore.getUser(_source)
    local Character = User.getUsedCharacter
    local drop = Config.ananas[math.random(1, #Config.ananas)]
    local amount = math.random(1, 1)

    VORPinv.addItem(_source, drop, amount)
    TriggerClientEvent('vorp:TipRight', _source, "You found " .. amount ..  " ~o~Pineapple~q~.")
end)

RegisterServerEvent("wk_exotic:melonmango")
AddEventHandler("wk_exotic:melonmango", function()
    local _source = source
    local User = VORPcore.getUser(_source) 
    local Character = User.getUsedCharacter         
    local r = Config.manmel[math.random(1, #Config.manmel)]
    local amount = math.random(1, 3)
        
    VORPinv.addItem(_source, r, amount)
        
    --local player = Character.source
         
    TriggerClientEvent("vorp:TipRight", _source, "You found " .. amount .. "  ~t4~" .. r .. " ~q~.", 5000) 
end)

RegisterServerEvent("wk_exotic:appear")
AddEventHandler("wk_exotic:appear", function()
    local _source = source
    local User = VORPcore.getUser(_source) 
    local Character = User.getUsedCharacter         
    local r = Config.appear[math.random(1, #Config.appear)]
    local amount = math.random(1, 3)
        
    VORPinv.addItem(_source, r, amount)
        
    --local player = Character.source
         
    TriggerClientEvent("vorp:TipRight", _source, "You found " .. amount .. "  ~t4~" .. r .. " ~q~.", 5000) 
end)

RegisterServerEvent("wk_exotic:citrus")
AddEventHandler("wk_exotic:citrus", function()
    local _source = source
    local User = VORPcore.getUser(_source) 
    local Character = User.getUsedCharacter         
    local r = Config.citrus[math.random(1, #Config.citrus)]
    local amount = math.random(1, 3)
        
    VORPinv.addItem(_source, r, amount)
        
    --local player = Character.source
         
    TriggerClientEvent("vorp:TipRight", _source, "You found " .. amount .. "  ~t4~" .. r .. " ~q~.", 5000) 
end)