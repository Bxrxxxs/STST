local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Key sytem", HidePremium = false, SaveConfig = true, IntroText = KEY, ConfigFolder = "OrionTest"})

local keyTab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

keyTab:AddTextbox({
	Name = "Key",
	Default = "Balls",
	TextDisappear = false,
	Callback = function(Value)
		print(Value)
	end	  
})

keyTab:AddButton({
	Name = "Enter",
	Callback = function()
		if keyTab.Key.Value == "Balls" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Bxrxxxs/STST/main/hub.lua"))();
			print("button pressed and correct input")
		else
			print("button pressed but incorrect input")
		end
  	end    
})

OrionLib:Init()
