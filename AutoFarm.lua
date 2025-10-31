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

G2L["8"] = Instance.new("LocalScript", G2L["7"]);

G2L["9"] = Instance.new("UICorner", G2L["5"]);
G2L["9"]["CornerRadius"] = UDim.new(0, 4);

G2L["a"] = Instance.new("TextLabel", G2L["2"]);
G2L["a"]["TextWrapped"] = true;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextSize"] = 22;
G2L["a"]["TextScaled"] = true;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/JosefinSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Size"] = UDim2.new(0, 208, 0, 48);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[Babft Autofarm]];

G2L["b"] = Instance.new("TextButton", G2L["2"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextSize"] = 14;
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b"]["BackgroundTransparency"] = 0.99;
G2L["b"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[X]];
G2L["b"]["Name"] = [[X]];
G2L["b"]["Position"] = UDim2.new(0.9375, 0, 0, 0);

G2L["c"] = Instance.new("LocalScript", G2L["b"]);

G2L["d"] = Instance.new("ImageLabel", G2L["2"]);
G2L["d"]["ZIndex"] = 0;
G2L["d"]["SliceCenter"] = Rect.new(85, 85, 427, 427);
G2L["d"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["d"]["ImageTransparency"] = 0.4;
G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["d"]["Image"] = [[rbxassetid://12817467194]];
G2L["d"]["Size"] = UDim2.new(1, 152, 1, 152);
G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["Name"] = [[FrameShadow]];
G2L["d"]["Position"] = UDim2.new(0.5, 0, 0.51149, -1);

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
	local RunService = game:GetService("RunService")
	local player = Players.LocalPlayer
	
	local constantY = 65
	local preChestPos = Vector3.new(-49, constantY, 8640)
	local darknessPartName = "DarknessPart"
	local tweenTime = 2.5
	local tweenStyle = Enum.EasingStyle.Quad
	local tweenDirection = Enum.EasingDirection.InOut
	
	local toggleButton = script.Parent
	local isTweening = false
	
	local function findBoatStages()
		if workspace:FindFirstChild("BoatStages") then return workspace.BoatStages end
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
		if stagesFolder and stagesFolder:FindFirstChild("TheEnd") then return stagesFolder.TheEnd
		elseif boatRoot and boatRoot:FindFirstChild("TheEnd") then return boatRoot.TheEnd end
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
	
	local function safeTweenToDummy(root, targetCFrame)
		local dummy = Instance.new("Part")
		dummy.Size = Vector3.new(1,1,1)
		dummy.Transparency = 1
		dummy.Anchored = true
		dummy.CanCollide = false
		dummy.CFrame = root.CFrame
		dummy.Parent = workspace
	
		local tweenInfo = TweenInfo.new(tweenTime, tweenStyle, tweenDirection)
		local tween = TweenService:Create(dummy, tweenInfo, {CFrame = targetCFrame})
		tween:Play()
	
		local conn
		conn = RunService.Heartbeat:Connect(function()
			if root.Parent then
				root.CFrame = dummy.CFrame
			else
				conn:Disconnect()
				dummy:Destroy()
			end
		end)
	
		tween.Completed:Wait()
		conn:Disconnect()
		dummy:Destroy()
	end
	
	local function runTweenSequence(character)
		repeat task.wait() until character and character.Parent and character:FindFirstChild("HumanoidRootPart")
		local root = character:FindFirstChild("HumanoidRootPart")
		if not root then return end
	
		while isTweening and root.Parent do
			for _, stage in ipairs(getStageList()) do
				if not isTweening then return end
				local darkPart = stage:FindFirstChild(darknessPartName, true)
				if darkPart then
					local pos = Vector3.new(darkPart.Position.X, constantY, darkPart.Position.Z)
					safeTweenToDummy(root, CFrame.new(pos))
				end
			end
			if not isTweening then return end
			safeTweenToDummy(root, CFrame.new(preChestPos))
			if finalChest and finalChest.PrimaryPart and isTweening then
				safeTweenToDummy(root, finalChest.PrimaryPart.CFrame + Vector3.new(0,5,0))
			end
		end
	end
	
	toggleButton.MouseButton1Click:Connect(function()
		isTweening = not isTweening
		if isTweening and player.Character then
			task.spawn(runTweenSequence, player.Character)
		end
	end)
	
	player.CharacterAdded:Connect(function(char)
		task.wait(0.5)
		if isTweening then
			runTweenSequence(char)
		end
	end)
	
end;
task.spawn(C_6);
local function C_8()
local script = G2L["8"];
	local b = script.Parent.Parent
	local tl = script.Parent
	local enabled = false
	
	b.MouseButton1Click:Connect(function()
		enabled = not enabled
		if enabled then
			tl.Text = "Stop"
		else
			tl.Text = "Start"
		end
		
	end)
end;
task.spawn(C_8);
local function C_c()
local script = G2L["c"];
	script.Parent.MouseButton1Click:Connect(function() 
		script.Parent.Parent.Parent:Destroy()
	end)
end;
task.spawn(C_c);

return G2L["1"], require;
