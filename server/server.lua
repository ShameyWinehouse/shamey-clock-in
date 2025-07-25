VorpCore = {}
TriggerEvent("getCore",function(core)
    VorpCore = core
end)
VORPutils = {}
TriggerEvent("getUtils", function(utils)
    VORPutils = utils
	print = VORPutils.Print:initialize(print)
end)

onDuty = false

