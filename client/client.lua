VORPMenu = {} -- local 
TriggerEvent("menuapi:getData",function(cb)
	VORPMenu = cb
end)
VORPutils = {}
TriggerEvent("getUtils", function(utils)
    VORPutils = utils
	print = VORPutils.Print:initialize(print)
end)

RainbowCore = exports["rainbow-core"]:initiate()

local blips = {}
playerCoords = nil

onDuty = false



Citizen.CreateThread(function()
	Citizen.Wait(2000)
	while true do
		Citizen.Wait(1 * 1000)
		playerCoords = GetEntityCoords(PlayerPedId())
	end
end)



--------

Citizen.CreateThread(function()
	for k,v in pairs(Config.Jobs) do
		for k2,v2 in pairs(v.locations) do
			if v2.UseBlip == true then
				blips[v2.id] = Citizen.InvokeNative(0x554d9d53f696d002, 1664425300, v2.coords)
				SetBlipSprite(blips[v2.id], v2.BlipSprite, 1)
				Citizen.InvokeNative(0x9CB1A1623062F402, blips[v2.id], v2.BlipLabel)
			end
		end
	end
end)

--------


RegisterNetEvent("rainbow_core:Jobs:Client:OnSwitchedJob")
AddEventHandler("rainbow_core:Jobs:Client:OnSwitchedJob", function()
    if onDuty then
        SetDuty(false)
    end
end)

--------


AddEventHandler("onResourceStop", function(resource)
    if resource == GetCurrentResourceName() then
		for k,v in pairs(Config.Jobs) do
			for k2,v2 in pairs(v.locations) do
				if v2.UseBlip == true and blips[v2.id] then
					RemoveBlip(blips[v2.id])
				end
			end
		end
    end
end)

