local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
pTz = Tunnel.getInterface(GetCurrentResourceName())

Citizen.CreateThread(function()
    while true do
        local timeDistance = 15000
        
        for k,v in pairs(rs.fardamentos) do
            local ped = PlayerPedId()
            local blip = v["coords"]
            local distance = #(GetEntityCoords(ped) - blip)

            if distance <= 5 then
                timeDistance = 4
                DrawText3D(blip[1],blip[2],blip[3],"~g~[E] ~w~ABRIR ARMÁRIO")

                if IsControlJustPressed(1,38) and distance <= 2.5 then

                    if pTz.checkPermission(k) then
                        for sex,clothes in pairs(rs.fardamentos[k]["clothes"]) do
                            if GetEntityModel(ped) == `mp_m_freemode_01` and sex == "Masculino" then
                                exports["dynamic"]:SubMenu("Armário","Selecione sua roupa",sex)
                            elseif GetEntityModel(ped) == `mp_f_freemode_01` and sex == "Feminino" then
                                exports["dynamic"]:SubMenu("Armário","Selecione sua roupa",sex)
                            end

                            for prefix,cloth in pairs(clothes) do
                                exports["dynamic"]:AddButton(string.upper(cloth["name"]),cloth["description"],"piitszk:changeCloth",prefix,sex,false)
                            end

                        end
                    end
                end
            end
        end
        Citizen.Wait(timeDistance)
    end
end)

RegisterNetEvent("piitszk:changeCloth")
AddEventHandler("piitszk:changeCloth", function(prefix)
    local ped = PlayerPedId()
    for k,v in pairs(rs.fardamentos) do
        local blip = v["coords"]
        local distance = #(GetEntityCoords(ped) - blip)

        if distance <= 5 then
            if GetEntityModel(ped) == `mp_m_freemode_01` then
                for _,item in pairs(rs.fardamentos[k]["clothes"]["Masculino"][prefix]) do
                    if _ == "preset" then
                        changeClothes(true)
                        Wait(rs.switch_timer)
                        TriggerEvent("updateRoupas",item)
                    end
                end
            elseif GetEntityModel(ped) == `mp_f_freemode_01` then
                for _,item in pairs(rs.fardamentos[k]["clothes"]["Feminino"][prefix]) do
                    if _ == "preset" then
                        changeClothes(true)
                        Wait(rs.switch_timer)
                        TriggerEvent("updateRoupas",item)
                    end
                end
            else
                TriggerEvent("Notify",rs.notify_error_colour,rs.notify_ped_message,rs.notify_timer)
            end
        end
    end
    
end)

function changeClothes()
    Citizen.CreateThread(function()        
        FreezeEntityPosition(ped,true)

        if rs.creative then
            vRP.playAnim(false,rs.anim,false)
        else
            vRP.playAnim(false,{rs.anim},false)
        end
        
        TriggerEvent(rs.progress_event,rs.switch_timer)
        Citizen.Wait(rs.switch_timer)
        
        vRP.stopAnim(false)
        FreezeEntityPosition(ped,false)
    end)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z,text)
	local onScreen,_x,_y = GetScreenCoordFromWorldCoord(x,y,z)

	if onScreen then
		BeginTextCommandDisplayText("STRING")
		AddTextComponentSubstringKeyboardDisplay(text)
		SetTextColour(255,255,255,150)
		SetTextScale(0.35,0.35)
		SetTextFont(4)
		SetTextCentre(1)
		EndTextCommandDisplayText(_x,_y)

		local width = string.len(text) / 160 * 0.45
		DrawRect(_x,_y + 0.0125,width,0.03,38,42,56,200)
	end
end