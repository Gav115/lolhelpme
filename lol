-- Gui to Lua
-- Version: 3.2

-- Instances:

local CobraKai = Instance.new("ScreenGui")
local ScriptFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Name = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local PushUp = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local SitUp = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

CobraKai.Name = "CobraKai"
CobraKai.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CobraKai.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ScriptFrame.Name = "ScriptFrame"
ScriptFrame.Parent = CobraKai
ScriptFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
ScriptFrame.Position = UDim2.new(0.160743132, 0, 0.332515329, 0)
ScriptFrame.Size = UDim2.new(0, 523, 0, 297)

UICorner.Parent = ScriptFrame

Name.Name = "Name"
Name.Parent = ScriptFrame
Name.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
Name.Size = UDim2.new(0, 523, 0, 50)
Name.Font = Enum.Font.Merriweather
Name.Text = "CobraKai"
Name.TextColor3 = Color3.fromRGB(255, 255, 0)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextWrapped = true

UICorner_2.Parent = Name

PushUp.Name = "PushUp"
PushUp.Parent = ScriptFrame
PushUp.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
PushUp.Position = UDim2.new(0.271510512, 0, 0.333333343, 0)
PushUp.Size = UDim2.new(0, 239, 0, 50)
PushUp.Font = Enum.Font.Merriweather
PushUp.Text = "PushUp"
PushUp.TextColor3 = Color3.fromRGB(0, 0, 0)
PushUp.TextScaled = true
PushUp.TextSize = 14.000
PushUp.TextWrapped = true

UICorner_3.Parent = PushUp

SitUp.Name = "SitUp"
SitUp.Parent = ScriptFrame
SitUp.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
SitUp.Position = UDim2.new(0.271510512, 0, 0.639730692, 0)
SitUp.Size = UDim2.new(0, 239, 0, 50)
SitUp.Font = Enum.Font.Merriweather
SitUp.Text = "SitUp"
SitUp.TextColor3 = Color3.fromRGB(0, 0, 0)
SitUp.TextScaled = true
SitUp.TextSize = 14.000
SitUp.TextWrapped = true

UICorner_4.Parent = SitUp

-- Scripts:

local function QTYDQ_fake_script() -- ScriptFrame.MoveGav 
	local script = Instance.new('LocalScript', ScriptFrame)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
end
coroutine.wrap(QTYDQ_fake_script)()
local function PLXF_fake_script() -- PushUp.PushUp 
	local script = Instance.new('Script', PushUp)

	
		script.parent.MouseButton1Down:Connect(function()
			while wait() do
			game:GetService("ReplicatedStorage").Remotes.PushUp:FireServer()
			end
		end)
end
coroutine.wrap(PLXF_fake_script)()
local function VMYWR_fake_script() -- SitUp.PushUp 
	local script = Instance.new('Script', SitUp)

	
		script.parent.MouseButton1Down:Connect(function()
			while wait() do
			game:GetService("ReplicatedStorage").Remotes.SitUp:FireServer()
			end
		end)
end
coroutine.wrap(VMYWR_fake_script)()
