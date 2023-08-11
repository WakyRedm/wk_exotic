Citizen.CreateThread(function()
    while true do 
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)

        for k, v in pairs(Config.treespots) do 
            local y = v 

            local distance = GetDistanceBetweenCoords(coords, y.Pos.x, y.Pos.y, y.Pos.z, true)
            if distance < 2.0 then  
                if y.picked == false then 
                    DrawText3D(y.Pos.x, y.Pos.y, y.Pos.z, "Press Enter to search for some fruit.")
                    if IsControlJustReleased(0, 0xC7B5340A) then
                        search_anim()	
                        TriggerServerEvent('wk_exotic:fruits')	
                        y.picked = true	
                    end	
                end
            end
        end
        Citizen.Wait(0)
    end
end)

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