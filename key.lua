local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, IntroText = KEY, ConfigFolder = "OrionTest"})

local keyTab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

keyTab:AddTextbox({
	Name = "Key",
	Default = "default box input",
	TextDisappear = true,
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
