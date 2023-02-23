loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalTheDemon/Digital-Ui-Library-Roblox/main/CustomUILib.lua",true))()


local player = game.Players.LocalPlayer
local RunService = game:GetService("RunService")
local HideInfo = false
local HideEsp = true

__CREATELIB__("FE2 SCRIPT", 1, true)

CreatePanelButton("FARMING", 1).MouseButton1Click:Connect(function() -- put everything in here that is connected to button

	_ClearCanvas() -- CLEARS THE CANVAS SO THAT NEW UI CAN BE ADDED

	CreateLabel("UNFINISHED FARMING UTIL", 1)

	CreateButton("PRESS ALL BUTTONS (POSSABILITY OF GETTNG KICKED)", 1, "").MouseButton1Click:Connect(function()
		
		local player = game.Players.LocalPlayer
		local char = player.Character
		local skip = 0
		local TAmount = 0
		local on = true
		local ButtonDistance = 0
		local AuraEnabled = true
		--local CF = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)


		--/////////SETTING VARIABLES ABOVE//////////--
		--/////////RUN ONCE SCRIPT///////////--
		char.HumanoidRootPart.Transparency = 0
		if workspace:FindFirstChild("SafeSpot") == nil then
			local p = Instance.new("Part", workspace)
			p.Name = "SafeSpot"
			p.Anchored = true
			p.Position = Vector3.new(100, 100, 100)
			p.Size = Vector3.new(100, 100, 100)
		end


		char.HumanoidRootPart.Anchored = true
		wait(0.05)
		--/////////////FIND AND PRESS ALL BUTTONS//////////////--
		while on do
			ButtonDistance = 1
			for num, item in pairs(workspace.Multiplayer.Map:GetDescendants()) do
				if skip == 0 then
					if item:IsA("Part") then
						TAmount = 0
						for i, v in pairs(item:GetChildren()) do
							if v:IsA("TouchTransmitter") then
								TAmount = TAmount + 1

							end
							if TAmount == 2 then
								char.HumanoidRootPart.Anchored = false
								wait(0.05)
								ButtonDistance = math.abs((char.HumanoidRootPart.Position - item.Position).Magnitude) -- edit
								char.HumanoidRootPart.CFrame = item.CFrame --+ Vector3.new(0, 1, 0)
								CreateAlert("Teleported to Active Button", 1, 1, 1)
								--char.HumanoidRootPart.Orientation = item.Orientation
								skip = 1
							end
						end
					end
				end

				--[[if item:IsA("TouchTransmitter") then
					firetouchinterest(char.Head, item, 1)
				end]]

			end
			--wait(0.5)
			--char.HumanoidRootPart.Position = Vector3.new(-25.5, -144.445, 51.5) -- safe spot
			wait(0.1)
			if workspace:FindFirstChild("Explosion") ~= nil then
				workspace['Explosion']:Destroy()
			end
			if skip == 0 then
				on = false
			end
			skip = 0
			print(ButtonDistance)
			wait(0.5)
			char.HumanoidRootPart.Anchored = true
			--char.HumanoidRootPart.Position = workspace.SafeSpot.Position + Vector3.new(0, 1000, 0)
			wait(ButtonDistance / 15 + 1)

		end

		CreateAlert("finished Collecting all buttons, Now finding exit", 1, 3, 1) -- Starting to find exit. if no exit found, then your screwed!
		wait(3)

		if workspace.Multiplayer.Map:FindFirstChild("ExitRegion", true) ~= nil then
			CreateAlert("FOUND (Can bug out)", 1, 1, 1)
			char.HumanoidRootPart.Anchored = false
			wait(0.05)
			char.HumanoidRootPart.CFrame = workspace.Multiplayer.Map:FindFirstChild("ExitRegion", true).CFrame --+ Vector3.new(0, 9, 2)
			print(workspace.Multiplayer.Map:FindFirstChild("ExitRegion", true).Position)
			wait(1)
			char.HumanoidRootPart.CFrame = workspace.Multiplayer.Map:FindFirstChild("ExitRegion", true).CFrame --+ Vector3.new(0, 5, 0)
		end

	end)

	_ORGANIZEUI() --PUT RIGHT BEFORE THE CLOSING OF BUTTON. ORGINIZES THE UI BASED ON LOWEST(TOP) TO HIGHEST(Bottom)
end) -- closes the button argument. anything outside is not attached to the button

CreatePanelButton("BLATANT", 1).MouseButton1Click:Connect(function() -- put everything in here that is connected to button
	_ClearCanvas()
	 -- CLEARS THE CANVAS SO THAT NEW UI CAN BE ADDED
	CreateLabel("DO NOT SPAM OR YOU MIGHT GET KICKED", 1)

	CreateButton("Press Current Button", 2, "").MouseButton1Click:Connect(function()
		CreateAlert("Tping to active button", 1, 1, 1)
		
		local player = game.Players.LocalPlayer
		local char = player.Character
		local skip = 0
		local TAmount = 0
		local on = false
		local ButtonDistance = 0
		--local CF = CFrame.new(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)


		--/////////SETTING VARIABLES ABOVE//////////--
		--/////////RUN ONCE SCRIPT///////////--
		char.HumanoidRootPart.Transparency = 0
		if workspace:FindFirstChild("SafeSpot") == nil then
			local p = Instance.new("Part", workspace)
			p.Name = "SafeSpot"
			p.Anchored = true
			p.Position = Vector3.new(100, 100, 100)
			p.Size = Vector3.new(100, 100, 100)
		end


		char.HumanoidRootPart.Anchored = true
		wait(0.05)
		--/////////////FIND AND PRESS ALL BUTTONS//////////////--
	
		ButtonDistance = 1
		for num, item in pairs(workspace.Multiplayer.Map:GetDescendants()) do
			if skip == 0 then
				if item:IsA("Part") then
					TAmount = 0
					for i, v in pairs(item:GetChildren()) do
						if v:IsA("TouchTransmitter") then
							TAmount = TAmount + 1

						end
						if TAmount == 2 then
							char.HumanoidRootPart.Anchored = false
							wait(0.05)
							ButtonDistance = math.abs((char.HumanoidRootPart.Position - item.Position).Magnitude) -- edit
							char.HumanoidRootPart.CFrame = item.CFrame + Vector3.new(0, 5, 0)
							--char.HumanoidRootPart.Orientation = item.Orientation
							skip = 1
						end
					end
				end
			end

			--[[if item:IsA("TouchTransmitter") then
				firetouchinterest(char.Head, item, 1)
			end]]
		end
			--wait(0.5)
			--char.HumanoidRootPart.Position = Vector3.new(-25.5, -144.445, 51.5) -- safe spot
		wait(0.1)
		if workspace:FindFirstChild("Explosion") ~= nil then
			workspace['Explosion']:Destroy()
		end
		if skip == 0 then
			on = true
		end
		skip = 0
		print(ButtonDistance)
		
		if on then
			CreateAlert("Finished Getting buttons. Trying to find exit", 1, 3, 1) -- Starting to find exit. if no exit found, then your screwed!
			wait(3)

			if workspace.Multiplayer.Map:FindFirstChild("ExitRegion", true) ~= nil then
				CreateAlert("FOUND EXIT", 1, 1, 1)
				char.HumanoidRootPart.Anchored = false
				wait(0.05)
				char.HumanoidRootPart.CFrame = workspace.Multiplayer.Map:FindFirstChild("ExitRegion", true).CFrame --+ Vector3.new(0, 9, 2)
				print(workspace.Multiplayer.Map:FindFirstChild("ExitRegion", true).Position)
				wait(1)
				char.HumanoidRootPart.CFrame = workspace.Multiplayer.Map:FindFirstChild("ExitRegion", true).CFrame --+ Vector3.new(0, 5, 0)
			end
		end
		char.HumanoidRootPart.Anchored = false

	end)

	CreateLabel("Safe to use", 3)

	CreateButton("Infinite Jump", 4, "Z", "RABDIN").MouseButton1Click:Connect(function ()
		
		if InfJSwitch then
			InfJSwitch = false
			RunINFJ()
			CreateAlert("Infinite Jump Off", 1, 1, 1)
		else
			InfJSwitch = true
			RunINFJ()
			CreateAlert("Infinite Jump On", 1, 1, 1)
		end

	end)

	_ORGANIZEUI()
end)

CreatePanelButton("Quality of life", 1, "").MouseButton1Click:Connect(function()
	_ClearCanvas()
	CreateLabel("UNFINISHED", 1)
	CreateButton("Make Players Transparent (turn see players to all)", 1, "").MouseButton1Click:Connect(function()


	end)

	CreateLabel("Finished", 1)

	CreateButton("Make Map Transparent", 2, "").MouseButton1Click:Connect(function()
		local MakeVisible = true
		for num, item in pairs(workspace.Multiplayer.Map:GetDescendants()) do
			
			if item:IsA("Part") or item:IsA("Union") then
				if item:FindFirstChild("StoredTransparency") == nil then
					MakeVisible = false
					
					print("nil value")
				end
				if MakeVisible then
					
					item.Transparency = item.StoredTransparency
					

					item.StoredTransparency:Destroy()
				else
				
					local temp = Instance.new("IntValue", item)
					temp.Name = "StoredTransparency"
					temp.Value = item.Transparency
					if item.Transparency == 0 then
						item.Transparency = VALUE
					end
					
				end
			end

		end
		if MakeVisible then
			CreateAlert("Map Transparency to back to normal", 1, 2, 1)
		else
			CreateAlert("Made Map Transparent", 1, 2, 1)
		end
	end)

	CreateButton("Clear Fog", 3, "").MouseButton1Click:Connect(function()

		game.Lighting.FogEnd = 100000
		CreateAlert("Got Rid of fog", 1, 2, 1)

	end)

	CreateButton("Disable/Enable Aura Effects", 4, "").MouseButton1Click:Connect(function()
		if AuraEnabled then
			CreateAlert("Disabled Auras", 1, 1, 1)
			AuraEnabled = false
			AuraEffect()
		else
			CreateAlert("Enabled Auras", 1, 1, 1)
			AuraEnabled = true
			AuraEffect()
		end
	end)

	_ORGANIZEUI()
end)--////////////////////////////////////////////////////////////

CreatePanelButton("ESP", 2, "").MouseButton1Click:Connect(function()

	_ClearCanvas()

	CreateButton("ENABLE INFO TAG", 2, "").MouseButton1Click:Connect(function()
		if HideInfo then
			CreateAlert("Disabled Info ESP", 1, 1, 0)
			HideInfo = false
		else
			CreateAlert("Enabled Info ESP", 1, 1, 0)
			HideInfo = true
		end		
	end)

	CreateButton("ENABLE ESP BODY", 1, "").MouseButton1Click:Connect(function()
		if HideEsp then
			CreateAlert("Enabled ESP Body", 1, 1, 0)
			HideEsp = false
		else
			CreateAlert("Disabled ESP Body", 1, 1, 0)
			HideEsp = true
		end		
	end)

	_ORGANIZEUI()
end)

function RunINFJ()

	local player = game.Players.LocalPlayer
	local char = player.Character
	local Humanoid = char:WaitForChild("Humanoid")
	local UIS = game:GetService("UserInputService")
	UIS.InputBegan:Connect(function(input)
		if InfJSwitch then
			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode == Enum.KeyCode.Space then
					Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				end
			end
		end
	end)
end

function AuraEffect()
	
	local player = game.Players.LocalPlayer
	local particle = AuraEnabled
	for num, selPlayer in pairs(game.Players:GetChildren()) do
		if selPlayer:IsA("Humanoid") then

		else
			if selPlayer.UserId ~= player.UserId then
				for i, v in pairs(selPlayer.Character:GetDescendants()) do
					
					if v:IsA("ParticleEmitter") or v:IsA("Trail") then
						v.Enabled = particle
					end
				end
			end
		end
	end
	for num, buddy in pairs(workspace.Buddies:GetChildren()) do
		if buddy:IsA("Script") then

		else
			for i, v in pairs(buddy:GetDescendants()) do
				
				if v:IsA("ParticleEmitter") or v:IsA("Trail") then
					v.Enabled = particle
				end
			end

		end
	end

end


--/////////////////////////--

game:GetService("Players")



for i, v in pairs(game.Players:GetChildren()) do
	
	if v:IsA("Player") and v.UserId ~= player.UserId and v.Name ~= "nil" or v.Name ~= "Humanoid" then
		local PlayerName = v.Name
		--AddEspToPlayer(PlayerName)
		local SelectedPlayer = v.Character
		--print(SelectedPlayer)

		----------------------------Hardest part below----------------------------------
		
		local BodyOutline = Instance.new("BillboardGui", SelectedPlayer)
		BodyOutline.Size = UDim2.new(5, 0, 7, 0)
		BodyOutline.AlwaysOnTop = true
		BodyOutline.Name = "BodyOutline"
		BodyOutline.Enabled = true

		local BodyOutlineFrame = Instance.new("Frame", BodyOutline)
		BodyOutlineFrame.Transparency = 1
		BodyOutlineFrame.Size = UDim2.new(0.85, 0, 0.85, 0)
		BodyOutlineFrame.Position = UDim2.new(0.1, 0, 0.1, 0)

		local BodyOutlineFrameBorder = Instance.new("UIStroke", BodyOutlineFrame)
		BodyOutlineFrameBorder.Color = Color3.fromRGB(255, 0, 0)
		BodyOutlineFrameBorder.Thickness = 5
		BodyOutlineFrameBorder.Transparency = 0.3

		--------------------------------------------------------------------------------

		local NameOutline = Instance.new("BillboardGui", SelectedPlayer)
		NameOutline.Size = UDim2.new(10, 100, 2, 40)
		NameOutline.AlwaysOnTop = true
		NameOutline.ExtentsOffsetWorldSpace = Vector3.new(0, 2, 0)
		NameOutline.Name = "PlayerInfo"
		NameOutline.Enabled = true

		local NameOutlineFrame = Instance.new("Frame", NameOutline)
		NameOutlineFrame.Transparency = 1
		NameOutlineFrame.Size = UDim2.new(0.9, 0, 0.9, 0)
		NameOutlineFrame.Position = UDim2.new(0.05, 0, 0.05, 0)

		local NameOutlineFrameBorder = Instance.new("UIStroke", NameOutlineFrame)
		NameOutlineFrameBorder.Color = Color3.fromRGB(0, 0, 0)
		NameOutlineFrameBorder.Thickness = 2
		NameOutlineFrameBorder.Transparency = 0.3


		local DistanceLabel = Instance.new("TextLabel", NameOutlineFrame)
		DistanceLabel.Transparency = 0.3
		DistanceLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		DistanceLabel.TextScaled = true
		DistanceLabel.Text = "Distance: NaN"
		DistanceLabel.Position = UDim2.new(0, 0, 0.5, 0)
		DistanceLabel.Size = UDim2.new(0.5, 0, 0.5, 0)
		DistanceLabel.Name = "Distance"

		local NameLabel = Instance.new("TextLabel", NameOutlineFrame)
		NameLabel.Transparency = 0.3
		NameLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		NameLabel.TextScaled = true
		NameLabel.Text = PlayerName
		NameLabel.Position = UDim2.new(0, 0, 0, 0)
		NameLabel.Size = UDim2.new(1, 0, 0.5, 0)
		NameLabel.Name = "Name"

		local HealthLabel = Instance.new("TextLabel", NameOutlineFrame)
		HealthLabel.Transparency = 0.3
		HealthLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		HealthLabel.TextScaled = true
		HealthLabel.Text = "Health: 100"
		HealthLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
		HealthLabel.Size = UDim2.new(0.5, 0, 0.5, 0)
		HealthLabel.Name = "Health"
	end

end



RunService.Heartbeat:Connect(function()

	for i, v in pairs(game.Players:GetChildren()) do

		if v:IsA("Player") and v ~= nil then

			if v.Character:FindFirstChild("BodyOutline") == nil and v.Character:FindFirstChild("PlayerInfo") == nil then
				if v:IsA("Player") and v.UserId ~= player.UserId and v.Name ~= "nil" and not v:IsA("Humanoid") then --if v.UserId ~= player.UserId then
					AddEspToPlayer(v, v.Name)
				end
			elseif v.Character:FindFirstChild("BodyOutline") ~= nil and v.Character:FindFirstChild("PlayerInfo") ~= nil then
				
				--print("Not nil")
				local otherPlayer = v.Character.HumanoidRootPart
				local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - otherPlayer.Position).Magnitude
				v.Character.PlayerInfo.Frame.Distance.Text = "Distance: " .. math.round(distance)

				v.Character.PlayerInfo.Frame.Health.Text = "Health: " .. math.round(v.Character.Humanoid.Health)

				if HideInfo then
					v.Character:FindFirstChild("PlayerInfo").Enabled = true

				else
					v.Character:FindFirstChild("PlayerInfo").Enabled = false
				end

				if HideEsp then
					v.Character:FindFirstChild("BodyOutline").Enabled = false
				else
					v.Character:FindFirstChild("BodyOutline").Enabled = true
				end

			end
		end
	end

end)





function AddEspToPlayer(Player, PlayerName)
	
		local SelectedPlayer = Player.Character
		
		--print(SelectedPlayer)

		----------------------------Hardest part below----------------------------------
		
		local BodyOutline = Instance.new("BillboardGui", SelectedPlayer)
		BodyOutline.Size = UDim2.new(5, 0, 7, 0)
		BodyOutline.AlwaysOnTop = true
		BodyOutline.Name = "BodyOutline"
		BodyOutline.Enabled = true

		local BodyOutlineFrame = Instance.new("Frame", BodyOutline)
		BodyOutlineFrame.Transparency = 1
		BodyOutlineFrame.Size = UDim2.new(0.85, 0, 0.85, 0)
		BodyOutlineFrame.Position = UDim2.new(0.1, 0, 0.1, 0)

		local BodyOutlineFrameBorder = Instance.new("UIStroke", BodyOutlineFrame)
		BodyOutlineFrameBorder.Color = Color3.fromRGB(255, 0, 0)
		BodyOutlineFrameBorder.Thickness = 5
		BodyOutlineFrameBorder.Transparency = 0.3

		--------------------------------------------------------------------------------

		local NameOutline = Instance.new("BillboardGui", SelectedPlayer)
		NameOutline.Size = UDim2.new(10, 100, 2, 40)
		NameOutline.AlwaysOnTop = true
		NameOutline.ExtentsOffsetWorldSpace = Vector3.new(0, 2, 0)
		NameOutline.Name = "PlayerInfo"
		NameOutline.Enabled = true

		local NameOutlineFrame = Instance.new("Frame", NameOutline)
		NameOutlineFrame.Transparency = 1
		NameOutlineFrame.Size = UDim2.new(0.9, 0, 0.9, 0)
		NameOutlineFrame.Position = UDim2.new(0.05, 0, 0.05, 0)

		local NameOutlineFrameBorder = Instance.new("UIStroke", NameOutlineFrame)
		NameOutlineFrameBorder.Color = Color3.fromRGB(0, 0, 0)
		NameOutlineFrameBorder.Thickness = 2
		NameOutlineFrameBorder.Transparency = 0.3


		local DistanceLabel = Instance.new("TextLabel", NameOutlineFrame)
		DistanceLabel.Transparency = 0.3
		DistanceLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		DistanceLabel.TextScaled = true
		DistanceLabel.Text = "Distance: NaN"
		DistanceLabel.Position = UDim2.new(0, 0, 0.5, 0)
		DistanceLabel.Size = UDim2.new(0.5, 0, 0.5, 0)
		DistanceLabel.Name = "Distance"

		local NameLabel = Instance.new("TextLabel", NameOutlineFrame)
		NameLabel.Transparency = 0.3
		NameLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		NameLabel.TextScaled = true
		NameLabel.Text = PlayerName
		NameLabel.Position = UDim2.new(0, 0, 0, 0)
		NameLabel.Size = UDim2.new(1, 0, 0.5, 0)
		NameLabel.Name = "Name"

		local HealthLabel = Instance.new("TextLabel", NameOutlineFrame)
		HealthLabel.Transparency = 0.3
		HealthLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		HealthLabel.TextScaled = true
		HealthLabel.Text = "Health: 100"
		HealthLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
		HealthLabel.Size = UDim2.new(0.5, 0, 0.5, 0)
		HealthLabel.Name = "Health"

end

--UIS.InputBegan:Connect(function(input)

--end)


--Players.PlayerAdded:Connect(onPlayerAdded)
--function GetAndRunFunction(FUNCTION)

_INITIALIZEUI() -- AT THE END OF UI. DOES NOT NEED TO BE AT THE END OF ALL SCRIPTS
