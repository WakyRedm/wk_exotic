local VORPcore = {}
local VORPinv

TriggerEvent("getCore", function(core)
    VORPcore = core
end)


VORPinv = exports.vorp_inventory:vorp_inventoryApi()


RegisterServerEvent("wk_exotic:fruits")
AddEventHandler("wk_exotic:fruits", function()
    local _source = source
    local User = VORPcore.getUser(_source) 
    local Character = User.getUsedCharacter         
    local r = Config.fruit[math.random(1, #Config.fruit)]
    local amount = math.random(1, 3)
        
    VORPinv.addItem(_source, r, amount)
        
    local player = Character.source
        
    TriggerClientEvent("vorp:TipRight", _source, "You found " .. amount .. " " .. r .. ".", 5000) 
end)
