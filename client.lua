---------------------------------------Mango Melon Starter-------------------------------------------
Citizen.CreateThread(function()
    while true do 
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)

        for k, v in pairs(Config.manmelspots) do 
            local y = v 

            local distance = GetDistanceBetweenCoords(coords, y.Pos.x, y.Pos.y, y.Pos.z, true)
            if distance < 2.0 then  
                if y.picked == false then 
                    DrawText3D(y.Pos.x, y.Pos.y, y.Pos.z, "Press ~o~Enter ~q~to search for some fruit.")
                    if IsControlJustReleased(0, 0xC7B5340A) then
                        search_anim()	
                        TriggerServerEvent('wk_exotic:melonmango')	
                        y.picked = true	
                    end	
                end
            end
        end
        Citizen.Wait(0)
    end
end)

---------------------------------------apple pear Starter-------------------------------------------
Citizen.CreateThread(function()
    while true do 
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)

        for k, v in pairs(Config.appearspots) do 
            local y = v 

            local distance = GetDistanceBetweenCoords(coords, y.Pos.x, y.Pos.y, y.Pos.z, true)
            if distance < 2.0 then  
                if y.picked == false then 
                    DrawText3D(y.Pos.x, y.Pos.y, y.Pos.z, "Press ~o~Enter ~q~to search for some fruit.")
                    if IsControlJustReleased(0, 0xC7B5340A) then
                        search_anim()	
                        TriggerServerEvent('wk_exotic:appear')	
                        y.picked = true	
                    end	
                end
            end
        end
        Citizen.Wait(0)
    end
end)

------------------------------oranges lemon starter -----------------------------------
Citizen.CreateThread(function()
    while true do 
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)

        for k, v in pairs(Config.citrusspots) do 
            local y = v 

            local distance = GetDistanceBetweenCoords(coords, y.Pos.x, y.Pos.y, y.Pos.z, true)
            if distance < 2.0 then  
                if y.picked == false then 
                    DrawText3D(y.Pos.x, y.Pos.y, y.Pos.z, "Press ~o~Enter ~q~to search for some fruit.")
                    if IsControlJustReleased(0, 0xC7B5340A) then
                        search_anim()	
                        TriggerServerEvent('wk_exotic:citrus')	
                        y.picked = true	
                    end	
                end
            end
        end
        Citizen.Wait(0)
    end
end)


--------------------------------------Banana tree start-----------------------------------
Citizen.CreateThread(function()
    while true do 
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)

        for k, v in pairs(Config.bananaspots) do 
            local y = v 
            local distance = GetDistanceBetweenCoords(coords,  y.Pos.x,  y.Pos.y,  y.Pos.z, true)
            if distance < 2 then 
                if  y.picked == false then 
                    DrawText3D( y.Pos.x,  y.Pos.y,  y.Pos.z, "Press ~o~Enter ~q~to search for some Bananas.")
                    if IsControlJustReleased(0, 0xC7B5340A) then
                        search_anim()	
                        TriggerServerEvent('wk_exotic:dropbanana')	
                        y.picked = true	
                    end	
                end
            end 
        end
        Citizen.Wait(0)
    end
end)

------------------------------------CocoNUT tree start -----------------------------------------
Citizen.CreateThread(function()
    while true do 
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)

        for k, v in pairs(Config.cocospots) do 
            local y = v 
            local distance = GetDistanceBetweenCoords(coords, y.Pos.x, y.Pos.y, y.Pos.z, true)
            if distance < 2 then 
                if y.picked == false then 
                    DrawText3D(y.Pos.x, y.Pos.y, y.Pos.z, "Press ~o~Enter ~q~to search for some Coconuts.")
                    if IsControlJustReleased(0, 0xC7B5340A) then
                        search_anim()	
                        TriggerServerEvent('wk_exotic:dropcoconut')	
                        y.picked = true	
                    end	
                end
            end 
        end
        Citizen.Wait(0)
    end
end)

------------------------------------ANANAS Start--------------------------------------------------
Citizen.CreateThread(function()
    while true do 
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)

        for k, v in pairs(Config.ananasspots) do 
            local y = v 
            local distance = GetDistanceBetweenCoords(coords, y.Pos.x, y.Pos.y, y.Pos.z, true)
            if distance < 1 then 
                if y.picked == false then 
                    DrawText3D(y.Pos.x, y.Pos.y, y.Pos.z, "Press ~o~Enter ~q~to search for some Pineapples.")
                    if IsControlJustReleased(0, 0xC7B5340A) then
                        search_anim()	
                        TriggerServerEvent('wk_exotic:dropananas')	
                        y.picked = true	
                    end	
                end
            end 
        end
        Citizen.Wait(0)
    end
end)

------------------------------------Kiwi Start--------------------------------------------------
Citizen.CreateThread(function()
    while true do 
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)

        for k, v in pairs(Config.kiwispots) do 
            local y = v 
            local distance = GetDistanceBetweenCoords(coords, y.Pos.x, y.Pos.y, y.Pos.z, true)
            if distance < 1 then 
                if y.picked == false then 
                    DrawText3D(y.Pos.x, y.Pos.y, y.Pos.z, "Press ~o~Enter ~q~to search for some Kiwi's.")
                    if IsControlJustReleased(0, 0xC7B5340A) then
                        search_anim()	
                        TriggerServerEvent('wk_exotic:dropkiwi')	
                        y.picked = true	
                    end	
                end
            end 
        end
        Citizen.Wait(0)
    end
end)





------------------------------------BLIPS Function-------------------------------

local function addBlipForCoords(blipname,bliphash,coords)
	local blip = Citizen.InvokeNative(0x554D9D53F696D002,1664425300, coords[1], coords[2], coords[3])
	SetBlipSprite(blip,bliphash,true)
	SetBlipScale(blip,0.2)
	Citizen.InvokeNative(0x9CB1A1623062F402, blip, blipname)
end
----------------------------------------blips----------------------------------------
addBlipForCoords("Kiwi Farm",GetHashKey("blip_event_riggs_camp"),{1136.83, -7045.29, 42.44})
addBlipForCoords("Exotics Orchard",GetHashKey("blip_event_riggs_camp"),{1121.05, -7088.13, 48.27})
addBlipForCoords("Pineapple Farm",GetHashKey("blip_event_riggs_camp"),{1320.5, -6942.72, 58.59})
addBlipForCoords("Apple & Pear Orchard",GetHashKey("blip_event_riggs_camp"),{1073.95, -1764.0, 48.59})
addBlipForCoords("Citrus Orchard",GetHashKey("blip_event_riggs_camp"),{2030.14, -842.3, 42.74})

-----------------------------------Functions-------------------------------
function GetPlayers()
	local players = {}
	for i = 0, 256 do
		if NetworkIsPlayerActive(i) then
			table.insert(players, GetPlayerServerId(i))
		end
	end
	return players
end

function playCustomAnim(dict,name, time, flag)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
    end
	TaskPlayAnim(PlayerPedId(), dict, name, 1.0, 1.0, time, flag, 0, true, 0, false, 0, false)  
end

function search_anim()
    local Get_Coords = GetEntityCoords(PlayerPedId())
	local ped = PlayerPedId()
    playCustomAnim("amb_work@world_human_crouch_inspect@male_c@idle_c","idle_h", 10000, 17)
    Citizen.Wait(10500)
end

function DrawText3D(x, y, z, text)
	local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z)
	local px,py,pz=table.unpack(GetGameplayCamCoord())  
	local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
	local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
	if onScreen then
	  SetTextScale(0.30, 0.30)
	  SetTextFontForCurrentCommand(1)
	  SetTextColor(255, 255, 255, 215)
	  SetTextCentre(1)
	  DisplayText(str,_x,_y)
	  local factor = (string.len(text)) / 225

	end
end
