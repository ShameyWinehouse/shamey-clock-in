Config = {}

Config.ShameyDebug = false

Config.Timer = 12

Config.Distance = 1.3

-- Clock-in locations by job
Config.Jobs = {
	{
		job = "lawyer",
		jobGrade = {
			{grade = 1, paycheck = 4, abilities = {}}, -- Paralegel
			{grade = 2, paycheck = 8, abilities = {}}, -- Lawyer
			{grade = 3, paycheck = 12, abilities = {}}, -- District Attorney
			{grade = 4, paycheck = 12, abilities = {}}, -- Judge
		},
		locations = {
			{
				id = "ValentineLawOffice",
				label = "Law Office",
				coords = vector3(-292.7, 775.42, 119.27),
				UseBlip = true,
				BlipSprite = 818727011,
				BlipLabel = "Law Office"
			},
			{
				id = "StDenisLawOffice",
				label = "Law Office",
				coords = vector3(2596.17, -1300.18, 53.02),
				UseBlip = true,
				BlipSprite = 818727011,
				BlipLabel = "Law Office",
			},
			{
				id = "StrawberryLawOffice",
				label = "Law Office",
				coords = vector3(-1817.54, -370.83, 163.3),
				UseBlip = true,
				BlipSprite = 818727011,
				BlipLabel = "Law Office",
			},
			{
				id = "BlackwaterLawOffice",
				label = "Law Office",
				coords = vector3(-811.59, -1193.99, 47.45),
				UseBlip = true,
				BlipSprite = 818727011,
				BlipLabel = "Law Office",
			},
			{
				id = "AnnesburgLawOffice",
				label = "Law Office",
				coords = vector3(2920.3, 1378.8, 56.18),
				UseBlip = true,
				BlipSprite = 818727011,
				BlipLabel = "Law Office",
			},
		}
	},
}
