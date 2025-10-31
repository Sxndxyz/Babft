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
G2L["2"]["Position"] = UDim2.new(0.00777, 0, 0.29508, 0);
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

G2L["9"] = Instance.new("ImageLabel", G2L["2"]);
G2L["9"]["ZIndex"] = 0;
G2L["9"]["SliceCenter"] = Rect.new(85, 85, 427, 427);
G2L["9"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["9"]["ImageTransparency"] = 0.4;

G2L["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["9"]["Image"] = [[rbxassetid://12817467194]];
G2L["9"]["Size"] = UDim2.new(1, 152, 1, 152);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Name"] = [[FrameShadow]];
G2L["9"]["Position"] = UDim2.new(0.5, 0, 0.5, -1);

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
G2L["a"]["Position"] = UDim2.new(0.9375, 0, 0, 0);

G2L["b"] = Instance.new("LocalScript", G2L["a"]);

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
	local tweenTime = 1.2
	local tweenStyle = Enum.EasingStyle.Quad
	local tweenDirection = Enum.EasingDirection.Out
	local screenGui = player:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")
	local toggleButton = screenGui:WaitForChild("Frame"):WaitForChild("TextButton")
	local enabled = false
	local activeThread
	
	local function extractStageNumber(name)
		return tonumber(string.match(name, "%d+")) or math.huge
	end
	
	local function tweenTo(target, root)
		local targetCFrame
		if target:IsA("Model") then
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
		if enabled then
			tweenTo(finalChestPath, root)
		end
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

local function C_b()
local script = G2L["b"];
	script.Parent.MouseButton1Click:Connect(function() 
		script.Parent.Parent.Parent:Destroy()
	end)
end;
task.spawn(C_b);

return G2L["1"], require;
