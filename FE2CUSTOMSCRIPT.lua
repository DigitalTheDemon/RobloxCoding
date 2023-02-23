if game.CoreGui:FindFirstChild("ExploitGuiMenu") ~= nil then

	game.CoreGui['ExploitGuiMenu']:Destroy()

end
--[[function _StorePlayers()
	for i, v in pairs(game.Players:GetChildren()) do
		if v:IsA("Player") then
			print(v)
			v.Character.Parent = game.Workspace:FindFirstChild("CharactersFolder")
		end
	end
end

if game.Workspace:FindFirstChild("CharactersFolder") == nil then
	local CharFolder = Instance.new("Folder", game.workspace)
	CharFolder.Name = "CharactersFolder"
	_StorePlayers()
end--]]

--DECLAIRING GLOBAL VARIABLE FUNCTIONS
local mouse = game.Players.LocalPlayer:GetMouse()
local OldMouseX = 0
local OldMouseY = 0
local toggleMovement = false
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local tweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local InfJSwitch = false
local VALUE = 0.1-- 1 is invisible, 0 is normal. goes by nearest tenth
------------------------------------------------------

local MainScreen = Instance.new("ScreenGui", game.CoreGui)
MainScreen.Name = "ExploitGuiMenu"

local Main = Instance.new("Frame", MainScreen)
Main.Name = "DigitalDemonFE2Script"
Main.Size = UDim2.new(0.001, 0, 0.001, 0)
Main.BackgroundColor3 = Color3.fromRGB(54, 23, 23)
Main.Position = UDim2.new(0.01, 0, 0.763, 0)
Main.ClipsDescendants = true

local ScriptLabelMain = Instance.new("TextLabel", Main)
ScriptLabelMain.Size = UDim2.new(0.9, 0, 0.177, 0)
ScriptLabelMain.BackgroundColor3 = Color3.fromRGB(208, 32, 35)
ScriptLabelMain.Text = "DigitalDemon Flood Escape 2 Script"
ScriptLabelMain.TextScaled = true
ScriptLabelMain.Name = "TopBar"
ScriptLabelMain.TextSize = 19
ScriptLabelMain.Position = UDim2.new(0.1, 0, 0, 0)
--ScriptLabelMain.FontFace = "Nunito"

local SidePanelSelectorMain = Instance.new("ScrollingFrame", Main)
SidePanelSelectorMain.Size = UDim2.new(0.365, 0, 0.75, 0)
SidePanelSelectorMain.BackgroundColor3 = Color3.fromRGB(108, 37, 37)
SidePanelSelectorMain.ScrollBarThickness = 5
SidePanelSelectorMain.CanvasSize = UDim2.new(0, 0, 0, 0)
SidePanelSelectorMain.Position = UDim2.new(0, 0, 0.177, 0)
SidePanelSelectorMain.BorderSizePixel = 0
SidePanelSelectorMain.AutomaticCanvasSize = "Y"


local SideSelectionPanelMain = Instance.new("ScrollingFrame", Main)
SideSelectionPanelMain.Size = UDim2.new(0.635, 0, 0.75, 0)
SideSelectionPanelMain.BackgroundColor3 = Color3.fromRGB(54, 23, 23)
SideSelectionPanelMain.ScrollBarThickness = 5
SideSelectionPanelMain.CanvasSize = UDim2.new(0, 0, 0, 0)
SideSelectionPanelMain.Position = UDim2.new(0.365, 0, 0.177, 0)
SideSelectionPanelMain.BorderSizePixel = 0
SideSelectionPanelMain.AutomaticCanvasSize = "Y"


local ExitProgramButton = Instance.new("TextButton", Main)
ExitProgramButton.Size = UDim2.new(0.098, 0, 0.177, 0)
ExitProgramButton.Position = UDim2.new(0, 0, 0, 0)
ExitProgramButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ExitProgramButton.Text = "X"
ExitProgramButton.TextScaled = true
ExitProgramButton.TextSize = 5
ExitProgramButton.Name = "Exit"

--////////////////////////////////////////////////////////////////////--

local ExitProgramButtonRoundUI = Instance.new("UICorner", ExitProgramButton)
ExitProgramButtonRoundUI.CornerRadius = UDim.new(0, 10)

local SidePanelSelectorMainRoundUI = Instance.new("UICorner", SidePanelSelectorMain)
SidePanelSelectorMainRoundUI.CornerRadius = UDim.new(0, 10)

local SideSelectionPanelMainListUI = Instance.new("UIListLayout", SideSelectionPanelMain)
SideSelectionPanelMainListUI.Padding = UDim.new(0, 2)
SideSelectionPanelMainListUI.SortOrder = Enum.SortOrder.LayoutOrder

local SidePanelSelectorMainRoundUI = Instance.new("UIListLayout", SidePanelSelectorMain)
SidePanelSelectorMainRoundUI.Padding = UDim.new(0, 2)
SidePanelSelectorMainRoundUI.SortOrder = Enum.SortOrder.LayoutOrder

local ScriptLabelMainRoundUI = Instance.new("UICorner", ScriptLabelMain)
ScriptLabelMainRoundUI.CornerRadius = UDim.new(0, 10)

local MainRoundUI = Instance.new("UICorner", Main)
MainRoundUI.CornerRadius = UDim.new(0.08, 0)



----INITIALIZE ANIMATIONS----
function _INITIALIZEUI()
	SidePanelSelectorMainRoundUI:ApplyLayout()

	local MainTweenInfo = TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	local tween = tweenService:Create(Main, MainTweenInfo, {Size = UDim2.new(0.216, 0, 0., 0)} )
	tween:Play()
	wait(1)
	local MainTweenInfo2 = TweenInfo.new(2, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	local tween = tweenService:Create(Main, MainTweenInfo2, {Size = UDim2.new(0.216, 0, 0.226, 0)} )
	tween:Play()
	wait(2)
	--UDim2.new(0.216, 0, 0.226, 0)	
end


-------FUNCTIONS BEGIN HERE--------
ScriptLabelMain.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1) then
		print("Input Started")
		--Main.Position = UDim2.new(0, mouse.X, 0, mouse.Y)
		OldMouseX = mouse.X
		OldMouseY = mouse.Y
		XposChange = Main.Position.X.Offset - OldMouseX
		YposChange = Main.Position.Y.Offset - OldMouseY
		print(OldMouseX)
		print(OldMouseY)
		toggleMovement = true
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End and toggleMovement then
		
				--Main.Position = UDim2.new(0, mouse.X, 0, mouse.Y)
				toggleMovement = false
				print("Input Ended")
			end
		end)
	end

end)

RunService.Heartbeat:Connect(function()
	if toggleMovement then
		local MoveAnim = TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
		--Main.Position = UDim2.new(0, mouse.X + XposChange, 0, mouse.Y + YposChange)
		local tween = tweenService:Create(Main, MoveAnim, { Position = UDim2.new(0, mouse.X + XposChange, 0, mouse.Y + YposChange) } )
		tween:Play()
	end	
end)

ExitProgramButton.MouseButton1Click:Connect(function()
	local MainUIScale = Instance.new("UIScale", Main)
	local ShrinkAnim = TweenInfo.new(1.5, Enum.EasingStyle.Back, Enum.EasingDirection.InOut)
	local tween = tweenService:Create(MainUIScale, ShrinkAnim, {Scale = 0} )
	tween:Play()
	wait(1.5)
	game.CoreGui.ExploitGuiMenu:Destroy()
end)

--////////CREATE UI HERE/////////////////--

function CreatePanelButton(nameB, OrderNum)
	
	local CreateSidePanelButton = Instance.new("TextButton", SidePanelSelectorMain)
	CreateSidePanelButton.Size = UDim2.new(0.88, 0, 0.165, 0)
	--CreateSidePanelButton.Position = UDim2.new(0, 0, 0, 0)
	CreateSidePanelButton.BackgroundColor3 = Color3.fromRGB(54, 23, 23)
	CreateSidePanelButton.Text = nameB
	CreateSidePanelButton.TextScaled = true
	CreateSidePanelButton.TextSize = 5
	CreateSidePanelButton.Name = nameB
	CreateSidePanelButton.TextColor3 = Color3.fromRGB(200, 100, 100)
	CreateSidePanelButton.LayoutOrder = OrderNum

	local ScriptLabelMainRoundUI = Instance.new("UICorner", CreateSidePanelButton)
	ScriptLabelMainRoundUI.CornerRadius = UDim.new(0, 10)
	return CreateSidePanelButton

end


function CreateButton(nameB, OrderNum)
	
	local CreatePanelButton = Instance.new("TextButton", SideSelectionPanelMain)
	CreatePanelButton.Size = UDim2.new(0.88, 0, 0.165, 0)
	CreatePanelButton.Position = UDim2.new(0.062, 0, 0, 0)
	CreatePanelButton.BackgroundColor3 = Color3.fromRGB(108, 37, 37)
	CreatePanelButton.Text = nameB
	CreatePanelButton.TextScaled = true
	CreatePanelButton.TextSize = 5
	CreatePanelButton.Name = nameB
	CreatePanelButton.TextColor3 = Color3.fromRGB(200, 100, 100)
	CreatePanelButton.LayoutOrder = OrderNum

	local ScriptLabelMainRoundUI = Instance.new("UICorner", CreatePanelButton)
	ScriptLabelMainRoundUI.CornerRadius = UDim.new(0, 10)
	return CreatePanelButton

end


function _ORGANIZEUI()
	
	SideSelectionPanelMainListUI:ApplyLayout()	

end

function _ClearCanvas()
	for i, v in pairs(SideSelectionPanelMain:GetChildren()) do
		if not v:IsA("UIListLayout") then
			v:Destroy()
		end
	end
end

CreatePanelButton("FARMING", 1).MouseButton1Click:Connect(function() -- put everything in here that is connected to button

	_ClearCanvas() -- CLEARS THE CANVAS SO THAT NEW UI CAN BE ADDED

	CreateButton("PRESS ALL BUTTONS (POSSABILITY OF GETTNG KICKED)", 1).MouseButton1Click:Connect(function()
		
		local player = game.Players.LocalPlayer
		local char = player.Character
		local skip = 0
		local TAmount = 0
		local on = true
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

		print("finished Collecting all buttons, Now finding exit") -- Starting to find exit. if no exit found, then your screwed!
		wait(3)

		if workspace.Multiplayer.Map:FindFirstChild("ExitRegion", true) ~= nil then
			print("FOUND")
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
	CreateButton("Press Current Button (POSSABILITY OF GETTNG KICKED)", 1).MouseButton1Click:Connect(function()
		
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
							char.HumanoidRootPart.CFrame = item.CFrame --+ Vector3.new(0, 1, 0)
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
			print("finished Collecting all buttons, Now finding exit") -- Starting to find exit. if no exit found, then your screwed!
			wait(2)

			if workspace.Multiplayer.Map:FindFirstChild("ExitRegion", true) ~= nil then
				print("FOUND")
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
	
	CreateButton("Infinite Jump", 2).MouseButton1Click:Connect(function()
		if InfJSwitch then
			InfJSwitch = false
			RunINFJ()
		else
			InfJSwitch = true
			RunINFJ()
		end

	end)

	_ORGANIZEUI()
end)

CreatePanelButton("Quality of life", 1).MouseButton1Click:Connect(function()
	_ClearCanvas()
	
	CreateButton("Make Players Transparent (turn see players to all)", 1).MouseButton1Click:Connect(function()


	end)

	CreateButton("Make Map Transparent", 2).MouseButton1Click:Connect(function()
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
					if item.Transparency < 0.9 then
						item.Transparency = VALUE
					end
					
				end
			end

		end
	end)
	_ORGANIZEUI()
end)

CreatePanelButton("Teleport To Players", 1).MouseButton1Click:Connect(function()
	_ClearCanvas()
	
	for i, v in pairs(game.Players:GetChildren()) do
		local player = game.Players.LocalPlayer
		if not v:IsA("Humanoid") then
				
			if player.UserId == v.UserId then

			else
				
				CreateButton(v.Name, 2).MouseButton1Click:Connect(function()
					player.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild(v.Name).HumanoidRootPart.CFrame
				end)
			end
		end
	end
	_ORGANIZEUI()
end)

function onPlayerAdded(player)
	local Localplayer = game.Players.LocalPlayer
	if player.UserId == Localplayer.UserId then -- all only local player stuff
		
		RunINFJ()
	end --localplayer ends
	--_StorePlayers() -- BANS USER
end

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

Players.PlayerAdded:Connect(onPlayerAdded)
_INITIALIZEUI() -- AT THE END OF UI. DOES NOT NEED TO BE AT THE END OF ALL SCRIPTS

--[[

CreateButton("Remove all effects (ALL OF THEM)", 1).MouseButton1Click:Connect(function()

end)
--UI REFERENCE]]