local G2L = {};

G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;

G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(75, 75, 75);
G2L["2"]["Size"] = UDim2.new(0, 208, 0, 87);
G2L["2"]["Position"] = UDim2.new(0.39903, 0, 0.40984, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

G2L["3"] = Instance.new("LocalScript", G2L["2"]);
G2L["3"]["Name"] = [[Dragify]];

G2L["4"] = Instance.new("LocalScript", G2L["2"]);
G2L["4"]["Name"] = [[AntiAfk]];

G2L["5"] = Instance.new("TextButton", G2L["2"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["TextSize"] = 14;
G2L["5"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(58, 58, 58);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["Size"] = UDim2.new(0, 87, 0, 27);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Text"] = [[]];
G2L["5"]["Position"] = UDim2.new(0.28905, 0, 0.54832, 0);

G2L["6"] = Instance.new("LocalScript", G2L["5"]);

G2L["7"] = Instance.new("TextLabel", G2L["5"]);
G2L["7"]["TextWrapped"] = true;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextScaled"] = true;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["RichText"] = true;
G2L["7"]["Size"] = UDim2.new(0, 87, 0, 27);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[Start]];
G2L["7"]["Position"] = UDim2.new(-0, 0, 0, 0);

G2L["8"] = Instance.new("UICorner", G2L["5"]);
G2L["8"]["CornerRadius"] = UDim.new(0, 4);

G2L["9"] = Instance.new("TextLabel", G2L["2"]);
G2L["9"]["TextWrapped"] = true;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 22;
G2L["9"]["TextScaled"] = true;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/JosefinSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Size"] = UDim2.new(0, 208, 0, 48);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[Babft Autofarm]];

G2L["a"] = Instance.new("TextButton", G2L["2"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextSize"] = 14;
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["BackgroundTransparency"] = 0.99;
G2L["a"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[X]];
G2L["a"]["Name"] = [[X]];
G2L["a"]["Position"] = UDim2.new(0.9375, 0, 0, 0);

G2L["b"] = Instance.new("LocalScript", G2L["a"]);

G2L["c"] = Instance.new("ImageLabel", G2L["2"]);
G2L["c"]["ZIndex"] = 0;
G2L["c"]["SliceCenter"] = Rect.new(85, 85, 427, 427);
G2L["c"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["c"]["ImageTransparency"] = 0.4;
G2L["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["c"]["Image"] = [[rbxassetid://12817467194]];
G2L["c"]["Size"] = UDim2.new(1, 152, 1, 152);
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["Name"] = [[FrameShadow]];
G2L["c"]["Position"] = UDim2.new(0.5, 0, 0.51149, -1);

local function C_3()
local script = G2L["3"];
	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end;
task.spawn(C_3);
local function C_4()
local script = G2L["4"];
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local player = Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local hrp = character:WaitForChild("HumanoidRootPart")
	
	spawn(function()
		while true do
			wait(1100)
			if hrp then
				local pos = hrp.Position
				hrp.CFrame = hrp.CFrame * CFrame.new(0,0,0.1)
				wait(0.1)
				hrp.CFrame = CFrame.new(pos)
			end
		end
	end)
	
end;
task.spawn(C_4);
local function C_6()
local script = G2L["6"];
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local player = Players.LocalPlayer
	
	local constantY = 65
	local preChestPos = Vector3.new(-49, constantY, 8640)
	local darknessPartName = "DarknessPart"
	local tweenTime = 1.65
	local tweenStyle = Enum.EasingStyle.Quad
	local tweenDirection = Enum.EasingDirection.InOut
	
	local screenGui = player:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")
	local toggleButton = screenGui:WaitForChild("Frame"):WaitForChild("TextButton")
	
	local enabled = false
	local activeThread = nil
	
	local function findBoatStages()
		if workspace:FindFirstChild("BoatStages") then
			return workspace:FindFirstChild("BoatStages")
		end
		for _, v in pairs(workspace:GetChildren()) do
			if v:IsA("Folder") and v.Name:lower():find("boat") then
				return v
			end
		end
		return nil
	end
	
	local boatRoot = findBoatStages()
	local stagesFolder = boatRoot and (boatRoot:FindFirstChild("NormalStages") or boatRoot:FindFirstChildWhichIsA("Folder") or boatRoot) or nil
	
	local function findTheEnd()
		if stagesFolder and stagesFolder:FindFirstChild("TheEnd") then
			return stagesFolder.TheEnd
		elseif boatRoot and boatRoot:FindFirstChild("TheEnd") then
			return boatRoot.TheEnd
		end
		return nil
	end
	
	local theEnd = findTheEnd()
	local finalChest = nil
	if theEnd then
		finalChest = theEnd:FindFirstChild("GoldenChest") or theEnd:FindFirstChildWhichIsA("BasePart")
		if finalChest and finalChest:IsA("Model") and not finalChest.PrimaryPart then
			finalChest.PrimaryPart = finalChest:FindFirstChildWhichIsA("BasePart")
		end
	end
	
	local function safeTweenTo(root, targetCFrame)
		if not (root and root.Parent) then return end
		pcall(function()
			local tweenInfo = TweenInfo.new(tweenTime, tweenStyle, tweenDirection)
			local tween = TweenService:Create(root, tweenInfo, {CFrame = targetCFrame})
			tween:Play()
			tween.Completed:Wait()
		end)
	end
	
	local function extractStageNumber(name)
		return tonumber(string.match(name, "%d+")) or math.huge
	end
	
	local function getStageList()
		local list = {}
		if stagesFolder then
			for _, child in pairs(stagesFolder:GetChildren()) do
				if child:IsA("Model") and child.Name ~= "TheEnd" then
					table.insert(list, child)
				end
			end
			table.sort(list, function(a, b)
				return extractStageNumber(a.Name) < extractStageNumber(b.Name)
			end)
		end
		return list
	end
	
	local function runTweenSequence(character)
		repeat task.wait() until character and character.Parent and character:FindFirstChild("HumanoidRootPart")
		local root = character:FindFirstChild("HumanoidRootPart")
		if not (root and root:IsA("BasePart")) then return end
	
		for _, stage in ipairs(getStageList()) do
			if not enabled then return end
			local darkPart = stage:FindFirstChild(darknessPartName, true)
			if darkPart and darkPart:IsA("BasePart") then
				local pos = Vector3.new(darkPart.Position.X, constantY, darkPart.Position.Z)
				safeTweenTo(root, CFrame.new(pos))
			end
		end
	
		if not enabled then return end
		safeTweenTo(root, CFrame.new(preChestPos))
	
		if not enabled then return end
		if finalChest then
			local chestCFrame
			if finalChest:IsA("BasePart") then
				chestCFrame = finalChest.CFrame
			elseif finalChest:IsA("Model") and finalChest.PrimaryPart then
				chestCFrame = finalChest.PrimaryPart.CFrame
			end
			if chestCFrame then
				safeTweenTo(root, chestCFrame + Vector3.new(0, 5, 0))
			end
		end
	end
	
	local function handleCharacter(character)
		if activeThread then task.cancel(activeThread) end
		activeThread = task.spawn(function()
			while enabled and character and character.Parent do
				runTweenSequence(character)
				local humanoid = character:FindFirstChild("Humanoid")
				if humanoid then
					humanoid.Died:Wait()
				else
					break
				end
				task.wait(1)
			end
		end)
	end
	
	player.CharacterAdded:Connect(function(char)
		task.wait(0.5)
		if enabled then handleCharacter(char) end
	end)
	
	toggleButton.MouseButton1Click:Connect(function()
		enabled = not enabled
		toggleButton.TextLabel.Text = enabled and "Stop" or "Start"
		if enabled and player.Character then
			handleCharacter(player.Character)
		end
	end)
	
	toggleButton.TextLabel.Text = "Start"
	if enabled and player.Character then
		handleCharacter(player.Character)
		toggleButton.TextLabel.Text = "Stop"
	end
	
end;
task.spawn(C_6);
local function C_b()
local script = G2L["b"];
	script.Parent.MouseButton1Click:Connect(function() 
		script.Parent.Parent.Parent:Destroy()
	end)
end;
task.spawn(C_b);

return G2L["1"], require;
