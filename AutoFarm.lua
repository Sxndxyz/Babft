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

G2L["4"] = Instance.new("TextButton", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["TextSize"] = 14;
G2L["4"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(58, 58, 58);
G2L["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4"]["Size"] = UDim2.new(0, 87, 0, 27);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Text"] = [[]];
G2L["4"]["Position"] = UDim2.new(0.28905, 0, 0.54832, 0);

G2L["5"] = Instance.new("LocalScript", G2L["4"]);

G2L["6"] = Instance.new("TextLabel", G2L["4"]);
G2L["6"]["TextWrapped"] = true;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["TextSize"] = 14;
G2L["6"]["TextScaled"] = true;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["RichText"] = true;
G2L["6"]["Size"] = UDim2.new(0, 87, 0, 27);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Text"] = [[Start]];
G2L["6"]["Position"] = UDim2.new(-0, 0, 0, 0);

G2L["7"] = Instance.new("UICorner", G2L["4"]);
G2L["7"]["CornerRadius"] = UDim.new(0, 4);

G2L["8"] = Instance.new("TextLabel", G2L["2"]);
G2L["8"]["TextWrapped"] = true;
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["TextSize"] = 22;
G2L["8"]["TextScaled"] = true;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/JosefinSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["Size"] = UDim2.new(0, 208, 0, 48);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Text"] = [[Babft Autofarm]];

G2L["9"] = Instance.new("TextButton", G2L["2"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 14;
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["BackgroundTransparency"] = 0.99;
G2L["9"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[X]];
G2L["9"]["Position"] = UDim2.new(0.9375, 0, 0, 0);

G2L["a"] = Instance.new("LocalScript", G2L["9"]);

G2L["b"] = Instance.new("ImageLabel", G2L["2"]);
G2L["b"]["ZIndex"] = 0;
G2L["b"]["SliceCenter"] = Rect.new(85, 85, 427, 427);
G2L["b"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["b"]["ImageTransparency"] = 0.4;
G2L["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["b"]["Image"] = [[rbxassetid://12817467194]];
G2L["b"]["Size"] = UDim2.new(1, 152, 1, 152);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Name"] = [[FrameShadow]];
G2L["b"]["Position"] = UDim2.new(0.5, 0, 0.5, -1);

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
local function C_5()
local script = G2L["5"];
	local player = game.Players.LocalPlayer
	local TweenService = game:GetService("TweenService")
	local stagesFolder = workspace:WaitForChild("BoatStages"):WaitForChild("NormalStages")
	local darknessPartName = "DarknessPart"
	local finalChestPath = stagesFolder.TheEnd:WaitForChild("GoldenChest")
	local tweenTime = 2.5
	local tweenStyle = Enum.EasingStyle.Quad
	local tweenDirection = Enum.EasingDirection.Out
	local screenGui = player:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")
	local toggleButton = screenGui:WaitForChild("ToggleButton")
	local enabled = false
	local activeThread
	local preChestPos = Vector3.new(-49, 53, 8640)
	
	local function extractStageNumber(name)
		return tonumber(string.match(name, "%d+")) or math.huge
	end
	
	local function tweenTo(target, root)
		local targetCFrame
		if typeof(target) == "Vector3" then
			targetCFrame = CFrame.new(target)
		elseif target:IsA("Model") then
			if not target.PrimaryPart then
				target.PrimaryPart = target:FindFirstChildWhichIsA("BasePart")
			end
			targetCFrame = target.PrimaryPart.CFrame
		else
			targetCFrame = target.CFrame
		end
		local tweenInfo = TweenInfo.new(tweenTime, tweenStyle, tweenDirection)
		local goal = {CFrame = targetCFrame + Vector3.new(0, 4, 0)}
		local tween = TweenService:Create(root, tweenInfo, goal)
		tween:Play()
		tween.Completed:Wait()
	end
	
	local function getStageList()
		local stageList = {}
		for _, stage in pairs(stagesFolder:GetChildren()) do
			if stage:IsA("Model") and stage.Name ~= "TheEnd" then
				table.insert(stageList, stage)
			end
		end
		table.sort(stageList, function(a, b)
			local aNum, bNum = extractStageNumber(a.Name), extractStageNumber(b.Name)
			if aNum ~= bNum then
				return aNum < bNum
			else
				return a.Name < b.Name
			end
		end)
		return stageList
	end
	
	local function runTweenSequence(character)
		local root = character:WaitForChild("HumanoidRootPart")
		for _, stage in ipairs(getStageList()) do
			if not enabled then return end
			local darkPart = stage:FindFirstChild(darknessPartName, true)
			if darkPart then
				tweenTo(darkPart, root)
			end
		end
		if not enabled then return end
		tweenTo(preChestPos, root)
		if not enabled then return end
		tweenTo(finalChestPath, root)
	end
	
	local function handleCharacter(character)
		if activeThread then task.cancel(activeThread) end
		local humanoid = character:WaitForChild("Humanoid")
		activeThread = task.spawn(function()
			while enabled and humanoid.Health > 0 do
				runTweenSequence(character)
				humanoid.Died:Wait()
				task.wait(1)
				if not enabled then break end
			end
		end)
	end
	
	player.CharacterAdded:Connect(function(character)
		task.wait(1)
		if enabled then handleCharacter(character) end
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
task.spawn(C_5);
local function C_a()
local script = G2L["a"];
	script.Parent.MouseButton1Click:Connect(function() 
		script.Parent.Parent.Parent:Destroy()
	end)
end;
task.spawn(C_a);

return G2L["1"], require;
