


Citizen.CreateThread(function()
	Citizen.Wait(2000)
	while true do
		local sleep = 1000
		if playerCoords and not inMenu then
			
			for k, v in pairs(Config.Jobs) do

				for k2, v2 in pairs(v.jobGrade) do

					local hasJob = RainbowCore.AbsolutelyHasJobAndGradeClient(v.job, v2.grade)
					if hasJob then
						for k3, v3 in pairs(v.locations) do
							local distance = #(playerCoords - v3.coords)
							if distance < Config.Distance then
								sleep = 1
								OfficePromptGroup:ShowGroup(v3.label)
								if OfficePrompt:HasCompleted() then
									if Config.ShameyDebug then print("Office prompt completed") end
									OpenMenu(v3.label)
								end
							end
						end
					end

				end

			end

		end
		Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(Config.Timer * 60 * 1000)
		if onDuty then
			TriggerServerEvent("rainbow_clock_in:GetPaycheck")
		end
	end
end)

