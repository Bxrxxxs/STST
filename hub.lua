local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
  Name = "Steep Steps GUI",
  HidePremium = false,
  IntroText = "Steep Steps GUI",
  SaveConfig = true,
  ConfigFolder = "STEEP_STEPS_FOLDER"
})

local LadderTab = Window:MakeTab({
  Name = "Main",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

local waitTime = 0.5

LadderTab:AddButton({
  Name = "Retrieve Ladder",
  Callback = function()
    local ladder = game.Players.LocalPlayer.Backpack:FindFirstChild("Ladder")
    if ladder then
      ladder.Parent = game.Players.LocalPlayer.Character
      local CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").playerPlaced[game.Players.LocalPlayer.Name.."_ladder"]:FindFirstChildOfClass("Part").CFrame
      wait(waitTime)
      workspace.live[game.Players.LocalPlayer.Name].Ladder.Event:FireServer("Destroy", game:GetService("Workspace").playerPlaced[game.Players.LocalPlayer.Name.."_ladder"])
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF
      game.Players.LocalPlayer.Character.Humanoid:ChangeState(7)
      game.StarterGui:SetCore("SendNotification", {
        Title = "Ladder",
        Text = "Ladder retrieved successfully.",
        Duration = 2
      })
    else
      game.StarterGui:SetCore("SendNotification", {
        Title = "Ladder",
        Text = "Ladder not found in backpack.",
        Duration = 2
      })
    end
  end
})

LadderTab:AddButton({
  Name = "Remove Fog",
  Callback = function()
    game.Lighting.Fog:Destroy()
  end
})

OrionLib:Init()
