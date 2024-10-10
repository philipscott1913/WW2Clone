local library = {}
local G2L = {};
local tempTabStore = {}

local tweenService = game:GetService("TweenService")

local function secureTag(instance)
	local name = ""
	local chars = {"a","A","b","B","c","C","d","D","e","E","f","F","g","G","h","H","i","I","j","J","k","K","l","L","m","M","n","N","o","O","p","P","q","Q","r","R","s","S","t","T","u","U","v","V","w","W","x","X","y","Y","z","Z",}
	for i = 1, 100, 1 do
		local random = chars[math.random(1,#chars)]
		name = name..random
	end
	instance.Name = name
end

local parent = nil

if game:GetService("RunService"):IsStudio() then
	parent = game.Players.LocalPlayer.PlayerGui
else
	parent = game:GetService("CoreGui")
end

G2L["1"] = Instance.new("ScreenGui", parent);
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Global
secureTag(G2L["1"])

function library:Init(Name)
	local self = setmetatable({}, library)
	G2L["2"] = Instance.new("Frame", G2L["1"]);
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(46, 46, 46);
	G2L["2"]["Size"] = UDim2.new(0.35461, 0, 0.51332, 0);
	G2L["2"]["Position"] = UDim2.new(0.32258, 0, 0.24246, 0);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	local Nigga = {};

	-- StarterGui.ScreenGui
	Nigga["1"] = Instance.new("ScreenGui", parent);
	Nigga["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


	-- StarterGui.ScreenGui.TextButton
	Nigga["2"] = Instance.new("TextButton", Nigga["1"]);
	Nigga["2"]["TextWrapped"] = true;
	Nigga["2"]["BorderSizePixel"] = 0;
	Nigga["2"]["TextSize"] = 14;
	Nigga["2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	Nigga["2"]["TextScaled"] = true;
	Nigga["2"]["BackgroundColor3"] = Color3.fromRGB(19, 19, 19);
	Nigga["2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	Nigga["2"]["Size"] = UDim2.new(0.07172, 0, 0.03467, 0);
	Nigga["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	Nigga["2"]["Text"] = [[Fluxion]];
	Nigga["2"]["Position"] = UDim2.new(0.00565, 0, 0.79648, 0);

	Nigga["2"].MouseButton1Down:Connect(function()
		G2L["2"].Visible = not G2L["2"].Visible
	end)

	-- StarterGui.ScreenGui.TextButton.UICorner
	Nigga["3"] = Instance.new("UICorner", Nigga["2"]);



	-- StarterGui.ScreenGui.TextButton.LocalScript
	Nigga["4"] = Instance.new("LocalScript", Nigga["2"]);

	local UserInputService = game:GetService("UserInputService")

	-- Function to run when the "Insert" key is pressed
	local function onInsertPressed()
		G2L["2"].Visible = not G2L["2"].Visible
	end

	-- Detect when a key is pressed
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if not gameProcessed then  -- Ensures the keypress wasn't used by another in-game process
			if input.KeyCode == Enum.KeyCode.Insert then
				onInsertPressed()
			end
		end
	end)

	-- StarterGui.ScreenGui.TextButton.LocalScript
	local function C_4()
		local script = Nigga["4"];
		local text = script.Parent
		local add = 10
		wait(1)
		local k = 1
		while k <= 255 do
			text.TextColor3 = Color3.new(k/255,0/255,0/255)
			k = k + add
			wait()
		end
		while true do
			k = 1
			while k <= 255 do
				text.TextColor3 = Color3.new(255/255,k/255,0/255)
				k = k + add
				wait()
			end
			k = 1
			while k <= 255 do
				text.TextColor3 = Color3.new(255/255 - k/255,255/255,0/255)
				k = k + add
				wait()
			end
			k = 1
			while k <= 255 do
				text.TextColor3 = Color3.new(0/255,255/255,k/255)
				k = k + add
				wait()
			end
			k = 1
			while k <= 255 do
				text.TextColor3 = Color3.new(0/255,255/255 - k/255,255/255)
				k = k + add
				wait()
			end
			k = 1
			while k <= 255 do
				text.TextColor3 = Color3.new(k/255,0/255,255/255)
				k = k + add
				wait()
			end
			k = 1
			while k <= 255 do
				text.TextColor3 = Color3.new(255/255,0/255,255/255 - k/255)
				k = k + add
				wait()
			end
			while k <= 255 do
				text.TextColor3 = Color3.new(255/255 - k/255,0/255,0/255)
				k = k + add
				wait()
			end
		end
	end;
	task.spawn(C_4);

	G2L["3f"] = Instance.new("TextLabel", G2L["2"]);
	G2L["3f"]["TextWrapped"] = true;
	G2L["3f"]["ZIndex"] = 5;
	G2L["3f"]["BorderSizePixel"] = 0;
	G2L["3f"]["TextScaled"] = true;
	G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["3f"]["TextSize"] = 14;
	G2L["3f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	G2L["3f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["3f"]["BackgroundTransparency"] = 1;
	G2L["3f"]["Size"] = UDim2.new(0.64347, 0, 0.05316, 0);
	G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["3f"]["Text"] = [[]];
	G2L["3f"]["Name"] = [[CurrentTab]];
	G2L["3f"]["Position"] = UDim2.new(0.30448, 0, 0.07026, 0);

	local test = Instance.new("UIAspectRatioConstraint", G2L["2"])
	test.AspectRatio = 1.47

	G2L["3"] = Instance.new("Frame", G2L["2"]);
	G2L["3"]["ZIndex"] = 3;
	G2L["3"]["BorderSizePixel"] = 0;
	G2L["3"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
	G2L["3"]["Size"] = UDim2.new(0.24977, 0, 0.8605, 0);
	G2L["3"]["Position"] = UDim2.new(0, 0, 0.1395, 0);
	G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["3"]["Name"] = [[SideBar]];
	G2L["3"]["BackgroundTransparency"] = 0.5;

	G2L["4"] = Instance.new("Frame", G2L["3"]);
	G2L["4"]["ZIndex"] = 3;
	G2L["4"]["BorderSizePixel"] = 0;
	G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["4"]["Size"] = UDim2.new(1, 0, 0.9744, 0);
	G2L["4"]["Position"] = UDim2.new(0, 0, 0.0256, 0);
	G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["4"]["Name"] = [[SideButtonHolder]];
	G2L["4"]["BackgroundTransparency"] = 1;

	G2L["5"] = Instance.new("UIListLayout", G2L["4"]);
	G2L["5"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	G2L["5"]["Padding"] = UDim.new(0.02, 0);
	G2L["5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	G2L["c"] = Instance.new("Frame", G2L["2"]);
	G2L["c"]["ZIndex"] = 3;
	G2L["c"]["BorderSizePixel"] = 0;
	G2L["c"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
	G2L["c"]["Size"] = UDim2.new(1, 0, 0.1395, 0);
	G2L["c"]["Position"] = UDim2.new(0, 0, -0, 0);
	G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["c"]["Name"] = [[TopBar]];
	G2L["c"]["BackgroundTransparency"] = 0.5;

	local TweenService = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")

	local function dragm(frame, topBar)
		local dragging = false
		local dragInput, inputPos, framePos

		local function update(input)
			local delta = input.Position - inputPos
			local newPos = UDim2.new(
				framePos.X.Scale,
				framePos.X.Offset + delta.X,
				framePos.Y.Scale,
				framePos.Y.Offset + delta.Y
			)
			frame.Position = newPos
		end

		topBar.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				inputPos = input.Position
				framePos = frame.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false

						-- Optional: Tween to smooth final position when dragging ends
						local tween = TweenService:Create(frame, TweenInfo.new(0.15), {Position = frame.Position})
						tween:Play()
					end
				end)
			end
		end)

		topBar.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		RunService.RenderStepped:Connect(function()
			if dragging and dragInput then
				update(dragInput)
			end
		end)
	end

	-- Set up the frame and top bar
	local frame = G2L["2"] -- The main frame
	local topBar = G2L["c"] -- The TopBar frame

	-- Call the dragm function to make the top bar draggable on both mobile and desktop
	dragm(frame, topBar)



	-- StarterGui.ScreenGui.Frame.TopBar.UICorner
	G2L["d"] = Instance.new("UICorner", G2L["c"]);



	-- StarterGui.ScreenGui.Frame.TopBar.Visual
	G2L["e"] = Instance.new("Frame", G2L["c"]);
	G2L["e"]["ZIndex"] = 2;
	G2L["e"]["BorderSizePixel"] = 0;
	G2L["e"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
	G2L["e"]["AnchorPoint"] = Vector2.new(0, 1);
	G2L["e"]["Size"] = UDim2.new(1, 0, 0.1, 0);
	G2L["e"]["Position"] = UDim2.new(0, 0, 1, 0);
	G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["e"]["Name"] = [[Visual]];
	G2L["e"]["BackgroundTransparency"] = 0.5;


	-- StarterGui.ScreenGui.Frame.TopBar.GuiTitle
	G2L["f"] = Instance.new("TextLabel", G2L["c"]);
	G2L["f"]["TextWrapped"] = true;
	G2L["f"]["ZIndex"] = 3;
	G2L["f"]["BorderSizePixel"] = 0;
	G2L["f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["f"]["TextScaled"] = true;
	G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["f"]["TextSize"] = 14;
	G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	G2L["f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["f"]["BackgroundTransparency"] = 1;
	G2L["f"]["Size"] = UDim2.new(0.25538, 0, 0.46842, 0);
	G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["f"]["Text"] = Name;
	G2L["f"]["Name"] = [[GuiTitle]];
	G2L["f"]["Position"] = UDim2.new(0.10155, 0, 0.24561, 0);


	-- StarterGui.ScreenGui.Frame.TopBar.PlayerThumbnail
	G2L["10"] = Instance.new("ImageLabel", G2L["c"]);
	G2L["10"]["ZIndex"] = 3;
	G2L["10"]["BorderSizePixel"] = 0;
	G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["10"]["Image"] = game:GetService("Players"):GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size60x60);
	G2L["10"]["AnchorPoint"] = Vector2.new(0,0.5)
	G2L["10"]["Size"] = UDim2.new(0.06837, 0, 0.6, 0);
	G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["10"]["BackgroundTransparency"] = 1;
	G2L["10"]["Name"] = [[PlayerThumbnail]];
	G2L["10"]["Position"] = UDim2.new(0.01831, 0, 0.5, 0);


	-- StarterGui.ScreenGui.Frame.Frame
	G2L["11"] = Instance.new("Frame", G2L["2"]);
	G2L["11"]["ZIndex"] = 2;
	G2L["11"]["BorderSizePixel"] = 0;
	G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
	G2L["11"]["Size"] = UDim2.new(0.24977, 0, 0.86, 0);
	G2L["11"]["Position"] = UDim2.new(0, 0, 0.1395, 0);
	G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["11"]["BackgroundTransparency"] = 0.5;

	G2L["12"] = Instance.new("UIGradient", G2L["11"]);
	G2L["12"]["Rotation"] = -151;
	G2L["12"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.627, 1),NumberSequenceKeypoint.new(1.000, 1)};


	-- StarterGui.ScreenGui.Frame.UICorner
	G2L["13"] = Instance.new("UICorner", G2L["2"]);



	-- StarterGui.ScreenGui.Frame.UIGradient
	G2L["14"] = Instance.new("UIGradient", G2L["2"]);
	G2L["14"]["Rotation"] = 36;
	G2L["14"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(104, 104, 104))};


	-- StarterGui.ScreenGui.Frame.ObjectHolder
	G2L["15"] = Instance.new("Frame", G2L["2"]);
	G2L["15"]["ZIndex"] = 3;
	G2L["15"]["BorderSizePixel"] = 0;
	G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["15"]["Size"] = UDim2.new(0.7454, 0, 0.86, 0);
	G2L["15"]["Position"] = UDim2.new(0.2546, 0, 0.1395, 0);
	G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["15"]["Name"] = [[ObjectHolder]];
	G2L["15"]["BackgroundTransparency"] = 1;

	function self:NewTab(tbName)
		local self1 = setmetatable({}, library)
		local nh = Instance.new("ScrollingFrame", G2L["15"]);
		nh["Name"] = tbName
		nh["Active"] = true;
		nh["ZIndex"] = 3;
		nh["BorderSizePixel"] = 0;
		nh["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		nh["Size"] = UDim2.new(1, 0, 1, 0);
		nh["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
		nh["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		nh["ScrollBarThickness"] = 0;
		nh["BackgroundTransparency"] = 1;
		nh.Visible = false

		local hertbl = Instance.new("UIListLayout", nh);
		hertbl["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
		hertbl["Padding"] = UDim.new(0.01, 0);
		hertbl["SortOrder"] = Enum.SortOrder.LayoutOrder;

		table.insert(tempTabStore, nh)

		local nt = Instance.new("TextButton", G2L["4"]);
		nt["TextWrapped"] = true;
		nt["BorderSizePixel"] = 0;
		nt["TextSize"] = 14;
		nt["TextColor3"] = Color3.fromRGB(255, 255, 255);
		nt["TextScaled"] = true;
		nt["BackgroundColor3"] = Color3.fromRGB(45, 45, 45);
		nt["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
		nt["ZIndex"] = 3;
		nt["Size"] = UDim2.new(0.85, 0, 0.075, 0);
		nt["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		nt["Text"] = tbName;

		Instance.new("UICorner", nt);

		nt.MouseButton1Down:Connect(function(x)
			for _, v : ScrollingFrame in pairs(tempTabStore) do
				v.Visible = false
			end
			G2L["3f"].Text = tbName
			nh.Visible = true
		end)

		function self1:AddLabel(LabelText, Image, Color)
			local self2 = setmetatable({}, library)
			local nl = Instance.new("Frame", nh);
			nl["BorderSizePixel"] = 0;
			nl["BackgroundColor3"] = Color3.fromRGB(45, 45, 45);
			nl["Size"] = UDim2.new(0.893, 0, 0.04981, 0);
			nl["Position"] = UDim2.new(1.29875, 0, 0.17723, 0);
			nl["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			nl["Name"] = [[Label]];


			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.Label.UICorner
			Instance.new("UICorner", nl);



			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.Label.TextLabel
			local ml = Instance.new("TextLabel", nl);
			ml["TextWrapped"] = true;
			ml["BorderSizePixel"] = 0;
			ml["TextScaled"] = true;
			ml["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			ml["TextSize"] = 14;
			ml["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			ml["TextColor3"] = Color
			ml["BackgroundTransparency"] = 1;
			ml["AnchorPoint"] = Vector2.new(0.5, 0.5);
			ml["Size"] = UDim2.new(0.65, 0, 0.75, 0);
			ml["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			ml["Text"] = LabelText;
			ml["Position"] = UDim2.new(0.5, 0, 0.5, 0);


			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.Label.IMG1
			local IMG1 = Instance.new("ImageLabel", nl);
			IMG1["BorderSizePixel"] = 0;
			IMG1["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			IMG1["AnchorPoint"] = Vector2.new(0, 0.5);
			IMG1["Image"] = Image
			IMG1["Size"] = UDim2.new(0.08406, 0, 0.875, 0);
			IMG1["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			IMG1["BackgroundTransparency"] = 1;
			IMG1["Name"] = [[IMG1]];
			IMG1["Position"] = UDim2.new(0.069, 0, 0.5, 0);


			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.Label.IMG2
			local IMG2 = Instance.new("ImageLabel", nl);
			IMG2["BorderSizePixel"] = 0;
			IMG2["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			IMG2["AnchorPoint"] = Vector2.new(0, 0.5);
			IMG2["Image"] = Image
			IMG2["Size"] = UDim2.new(0.08406, 0, 0.875, 0);
			IMG2["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			IMG2["BackgroundTransparency"] = 1;
			IMG2["Name"] = [[IMG2]];
			IMG2["Position"] = UDim2.new(0.847, 0, 0.5, 0);

			function self2:Edit(new, img, clr)
				ml.Text = new
				ml.TextColor3 = clr
				IMG1.Image = img
				IMG2.Image = img
			end

			return self2
		end

		function self1:NewDropDown(Title,Desc,Options,CurrentOption,Callback)
			local self3 = setmetatable({}, library)
			local open = false

			local hldr = Instance.new("Frame", nh);
			hldr["BorderSizePixel"] = 0;
			hldr["BackgroundColor3"] = Color3.fromRGB(45, 45, 45);
			hldr["Size"] = UDim2.new(0.893, 0, 0.09, 0);
			hldr["Position"] = UDim2.new(-0, 0, 0, 0);
			hldr["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			hldr["Name"] = [[DropDown]];

			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.DropDown.UICorner
			Instance.new("UICorner", hldr);



			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.DropDown.Name
			local dn = Instance.new("TextLabel", hldr);
			dn["TextWrapped"] = true;
			dn["BorderSizePixel"] = 0;
			dn["TextXAlignment"] = Enum.TextXAlignment.Left;
			dn["TextScaled"] = true;
			dn["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			dn["TextSize"] = 14;
			dn["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			dn["TextColor3"] = Color3.fromRGB(255, 255, 255);
			dn["BackgroundTransparency"] = 1;
			dn["Size"] = UDim2.new(0.39749, 0, 0.30553, 0);
			dn["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			dn["Text"] = Title;
			dn["Name"] = [[Name]];
			dn["Position"] = UDim2.new(0.03187, 0, 0.14229, 0);


			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.DropDown.Desc
			local ddec = Instance.new("TextLabel", hldr);
			ddec["TextWrapped"] = true;
			ddec["BorderSizePixel"] = 0;
			ddec["TextXAlignment"] = Enum.TextXAlignment.Left;
			ddec["TextScaled"] = true;
			ddec["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			ddec["TextSize"] = 14;
			ddec["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			ddec["TextColor3"] = Color3.fromRGB(255, 255, 255);
			ddec["BackgroundTransparency"] = 1;
			ddec["Size"] = UDim2.new(0.29655, 0, 0.74821, 0);
			ddec["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			ddec["Text"] = Desc;
			ddec["Name"] = [[Desc]];
			ddec["Position"] = UDim2.new(0.67731, 0, 0.14229, 0);


			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.DropDown.Main
			local dddddd = Instance.new("Frame", hldr);
			dddddd["BorderSizePixel"] = 0;
			dddddd["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
			dddddd["Size"] = UDim2.new(0.6056, 0, 0.33715, 0);
			dddddd["Position"] = UDim2.new(0.03187, 0, 0.55335, 0);
			dddddd["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			dddddd["Name"] = [[Main]];



			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.DropDown.Main.TextButton
			local toggleDP = Instance.new("TextButton", dddddd);
			toggleDP["TextWrapped"] = true;
			toggleDP["BorderSizePixel"] = 0;
			toggleDP["TextSize"] = 14;
			toggleDP["TextColor3"] = Color3.fromRGB(255, 255, 255);
			toggleDP["TextScaled"] = true;
			toggleDP["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			toggleDP["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			toggleDP["AnchorPoint"] = Vector2.new(1, 0);
			toggleDP["Size"] = UDim2.new(0.1, 0, 1, 0);
			toggleDP["BackgroundTransparency"] = 1;
			toggleDP["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			toggleDP["Text"] = [[<]];
			toggleDP["Rotation"] = -90;
			toggleDP["Position"] = UDim2.new(1, 0, 0, 0);

			local function getCurrentRot()
				if open then
					return 90
				else
					return -90
				end
			end



			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.DropDown.Main.TextLabel
			local COPT = Instance.new("TextLabel", dddddd);
			COPT["TextWrapped"] = true;
			COPT["BorderSizePixel"] = 0;
			COPT["TextXAlignment"] = Enum.TextXAlignment.Left;
			COPT["TextScaled"] = true;
			COPT["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			COPT["TextSize"] = 14;
			COPT["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			COPT["TextColor3"] = Color3.fromRGB(255, 255, 255);
			COPT["BackgroundTransparency"] = 1;
			COPT["Size"] = UDim2.new(0.86501, 0, 1, 0);
			COPT["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			COPT["Text"] = CurrentOption;
			COPT["Position"] = UDim2.new(0.03499, 0, 0, 0);


			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.DropDown.Main.UICorner
			Instance.new("UICorner", dddddd);



			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.DropDown.ScrollingFrame
			local MAINHOLDER = Instance.new("ScrollingFrame", hldr);
			MAINHOLDER["Visible"] = false;
			MAINHOLDER["Active"] = true;
			MAINHOLDER["ZIndex"] = 4;
			MAINHOLDER["BorderSizePixel"] = 0;
			MAINHOLDER["CanvasSize"] = UDim2.new(0, 0, 3, 0);
			MAINHOLDER["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
			MAINHOLDER["Size"] = UDim2.new(0.606, 0, 1.97726, 0);
			MAINHOLDER["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
			MAINHOLDER["Position"] = UDim2.new(0.03187, 0, 1, 0);
			MAINHOLDER["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			MAINHOLDER["ScrollBarThickness"] = 0;

			toggleDP.MouseButton1Down:Connect(function()
				open = not open
				local tweenInfo = TweenInfo.new(.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
				tweenService:Create(toggleDP, tweenInfo, {Rotation = getCurrentRot()}):Play()
				MAINHOLDER.Visible = open
			end)

			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.DropDown.ScrollingFrame.UIGradient
			local MAINGRAD = Instance.new("UIGradient", MAINHOLDER);
			MAINGRAD["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 0, 0))};


			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.DropDown.ScrollingFrame.UIListLayout
			local LAYOUTDDDDD = Instance.new("UIListLayout", MAINHOLDER);
			LAYOUTDDDDD["Padding"] = UDim.new(0.025, 0);
			LAYOUTDDDDD["SortOrder"] = Enum.SortOrder.LayoutOrder;

			local function selectOption(opt)
				COPT.Text = opt
				Callback(opt)
				MAINHOLDER.Visible = false
				open = false
				tweenService:Create(toggleDP, TweenInfo.new(.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Rotation = -90}):Play()
			end

			for _, opt in pairs(Options) do
				local L2 = Instance.new("TextButton", MAINHOLDER);
				L2["TextWrapped"] = true;
				L2["BorderSizePixel"] = 0;
				L2["TextSize"] = 14;
				L2["TextColor3"] = Color3.fromRGB(255, 255, 255);
				L2["TextScaled"] = true;
				L2["BackgroundColor3"] = Color3.fromRGB(45, 45, 45);
				L2["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				L2["ZIndex"] = 5;
				L2["Size"] = UDim2.new(1, 0, 0.1, 0);
				L2["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				L2["Text"] = opt;
				Instance.new("UICorner", L2);
				L2.MouseButton1Down:Connect(function()
					selectOption(opt)
				end)
			end


			function self3:Edit(newOptions, newCurrent)
				for _, v in pairs(MAINHOLDER:GetChildren()) do
					if v:IsA("TextButton") then
						v:Destroy()
					end
				end

				for _, opt in pairs(newOptions) do
					local L2 = Instance.new("TextButton", MAINHOLDER);
					L2["TextWrapped"] = true;
					L2["BorderSizePixel"] = 0;
					L2["TextSize"] = 14;
					L2["TextColor3"] = Color3.fromRGB(255, 255, 255);
					L2["TextScaled"] = true;
					L2["BackgroundColor3"] = Color3.fromRGB(45, 45, 45);
					L2["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
					L2["ZIndex"] = 5;
					L2["Size"] = UDim2.new(1, 0, 0.1, 0);
					L2["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					L2["Text"] = opt;
					Instance.new("UICorner", L2);
					L2.MouseButton1Down:Connect(function()
						selectOption(opt)
					end)
				end

				COPT.Text = newCurrent
			end

			return self3
		end

		function self1:AddSlider(Title, Desc, Min, Max, Start, Callback)
			local bg = Instance.new("Frame", nh);
			bg["BorderSizePixel"] = 0;
			bg["BackgroundColor3"] = Color3.fromRGB(45, 45, 45);
			bg["Size"] = UDim2.new(0.893, 0, 0.09, 0);
			bg["Position"] = UDim2.new(0.0535, 0, 0.64706, 0);
			bg["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			bg["Name"] = [[Slider]];

			Instance.new("UICorner", bg);

			local title = Instance.new("TextLabel", bg);
			title["TextWrapped"] = true;
			title["BorderSizePixel"] = 0;
			title["TextXAlignment"] = Enum.TextXAlignment.Left;
			title["TextScaled"] = true;
			title["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			title["TextSize"] = 14;
			title["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			title["TextColor3"] = Color3.fromRGB(255, 255, 255);
			title["BackgroundTransparency"] = 1;
			title["Size"] = UDim2.new(0.39749, 0, 0.30553, 0);
			title["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			title["Text"] = Title..": "..tostring(Start)
			title["Name"] = [[Name]];
			title["Position"] = UDim2.new(0.03187, 0, 0.14229, 0);

			local DECA = Instance.new("TextLabel", bg);
			DECA["TextWrapped"] = true;
			DECA["BorderSizePixel"] = 0;
			DECA["TextXAlignment"] = Enum.TextXAlignment.Left;
			DECA["TextScaled"] = true;
			DECA["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			DECA["TextSize"] = 14;
			DECA["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			DECA["TextColor3"] = Color3.fromRGB(255, 255, 255);
			DECA["BackgroundTransparency"] = 1;
			DECA["Size"] = UDim2.new(0.29655, 0, 0.44268, 0);
			DECA["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			DECA["Text"] = Desc
			DECA["Name"] = [[Desc]];
			DECA["Position"] = UDim2.new(0.67731, 0, 0.49525, 0);

			local sliderFrame = Instance.new("Frame", bg);
			sliderFrame["BorderSizePixel"] = 0;
			sliderFrame["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
			sliderFrame["ClipsDescendants"] = true;
			sliderFrame["Size"] = UDim2.new(0.6056, 0, 0.33715, 0);
			sliderFrame["Position"] = UDim2.new(0.03187, 0, 0.55335, 0);
			sliderFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			sliderFrame["Name"] = [[Main]];

			Instance.new("UICorner", sliderFrame);

			local sliderButton = Instance.new("TextButton", sliderFrame);
			sliderButton["BorderSizePixel"] = 0;
			sliderButton["TextSize"] = 14;
			sliderButton["TextColor3"] = Color3.fromRGB(0, 0, 0);
			sliderButton["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
			sliderButton["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			sliderButton["Size"] = UDim2.new((Start - Min) / (Max - Min), 0, 1, 0);  -- Scale the button based on the Start value
			sliderButton["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			sliderButton["Text"] = [[]];

			local UIS = game:GetService("UserInputService")

			local Dragging = false

			sliderButton.MouseButton1Down:Connect(function()
				Dragging = true
			end)

			local function ChangeToValue(Percent)
				local Value = math.floor(Min + (Max - Min) * Percent)  -- Calculate based on min and max
				return Value
			end

			UIS.InputChanged:Connect(function()
				if Dragging then
					local MousePos = UIS:GetMouseLocation() + Vector2.new(0, -36)
					local RelPos = MousePos - sliderFrame.AbsolutePosition
					local Percent = math.clamp(RelPos.X / sliderFrame.AbsoluteSize.X, 0, 1)
					title.Text = Title..": "..tostring(ChangeToValue(Percent))

					-- Adjust slider size
					if Percent < 0.05 then
						sliderButton.Size = UDim2.new(0.05, 0, sliderButton.Size.Y.Scale, 0)
					else
						sliderButton.Size = UDim2.new(Percent, 0, sliderButton.Size.Y.Scale, 0)
					end

					-- Call the callback function with the final value
					local FinalValue = ChangeToValue(Percent)
					if Callback then
						Callback(FinalValue)
					end
				end
			end)

			UIS.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					Dragging = false
				end
			end)

			Instance.new("UICorner", sliderButton);
		end		

		function self1:AddButton(Lbl, Callback)
			local hldr = Instance.new("Frame", nh);
			hldr["BorderSizePixel"] = 0;
			hldr["BackgroundColor3"] = Color3.fromRGB(45, 45, 45);
			hldr["Size"] = UDim2.new(0.893, 0, 0.07755, 0);
			hldr["Position"] = UDim2.new(0.0535, 0, -0, 0);
			hldr["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			hldr["Name"] = [[Button]];


			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.Button.UICorner
			Instance.new("UICorner", hldr);



			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.Button.Desc
			local lllllllllli = Instance.new("TextLabel", hldr);
			lllllllllli["TextWrapped"] = true;
			lllllllllli["BorderSizePixel"] = 0;
			lllllllllli["TextScaled"] = true;
			lllllllllli["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			lllllllllli["TextSize"] = 14;
			lllllllllli["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			lllllllllli["TextColor3"] = Color3.fromRGB(255, 255, 255);
			lllllllllli["BackgroundTransparency"] = 1;
			lllllllllli["Size"] = UDim2.new(0.7959, 0, 0.45147, 0);
			lllllllllli["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			lllllllllli["Text"] = Lbl
			lllllllllli["Name"] = [[Desc]];
			lllllllllli["Position"] = UDim2.new(0.10093, 0, 0.53018, 0);


			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.Button.Main
			local z = Instance.new("TextButton", hldr);
			z["TextWrapped"] = true;
			z["BorderSizePixel"] = 0;
			z["TextSize"] = 14;
			z["TextColor3"] = Color3.fromRGB(255, 255, 255);
			z["TextScaled"] = true;
			z["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
			z["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			z["Size"] = UDim2.new(0.77689, 0, 0.43844, 0);
			z["Name"] = [[Main]];
			z["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			z["Position"] = UDim2.new(0.11156, 0, 0.09174, 0);

			z.MouseButton1Down:Connect(Callback)

			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.Button.Main.UICorner
			Instance.new("UICorner", z);
		end

		function self1:AddToggle(Title, Desc, startValue, Callback)
			local self4 = setmetatable({}, library)
			local val = startValue

			local a = Instance.new("Frame", nh);
			a["BorderSizePixel"] = 0;
			a["BackgroundColor3"] = Color3.fromRGB(45, 45, 45);
			a["Size"] = UDim2.new(0.893, 0, 0.07755, 0);
			a["Position"] = UDim2.new(0.0535, 0, -0, 0);
			a["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			a["Name"] = [[Toggle]];


			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.Toggle.UICorner
			Instance.new("UICorner", a);



			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.Toggle.Name
			local b = Instance.new("TextLabel", a);
			b["TextWrapped"] = true;
			b["BorderSizePixel"] = 0;
			b["TextXAlignment"] = Enum.TextXAlignment.Left;
			b["TextScaled"] = true;
			b["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			b["TextSize"] = 14;
			b["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			b["TextColor3"] = Color3.fromRGB(255, 255, 255);
			b["BackgroundTransparency"] = 1;
			b["Size"] = UDim2.new(0.7959, 0, 0.30553, 0);
			b["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			b["Text"] = Title;
			b["Name"] = [[Name]];
			b["Position"] = UDim2.new(0.03187, 0, 0.14229, 0);


			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.Toggle.Desc
			local c = Instance.new("TextLabel", a);
			c["TextWrapped"] = true;
			c["BorderSizePixel"] = 0;
			c["TextXAlignment"] = Enum.TextXAlignment.Left;
			c["TextScaled"] = true;
			c["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			c["TextSize"] = 14;
			c["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			c["TextColor3"] = Color3.fromRGB(255, 255, 255);
			c["BackgroundTransparency"] = 1;
			c["Size"] = UDim2.new(0.7959, 0, 0.45147, 0);
			c["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			c["Text"] = Desc;
			c["Name"] = [[Desc]];
			c["Position"] = UDim2.new(0.03187, 0, 0.54853, 0);


			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.Toggle.Btn
			local d = Instance.new("TextButton", a);
			d["BorderSizePixel"] = 0;
			d["TextSize"] = 14;
			d["TextColor3"] = Color3.fromRGB(23, 23, 23);
			d["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
			d["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			d["Size"] = UDim2.new(0.1, 0, 0.70429, 0);
			d["Name"] = [[Btn]];
			d["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			d["Text"] = [[]];
			d["Position"] = UDim2.new(0.87386, 0, 0.14229, 0);

			if val == true then
				d.BackgroundColor3 = Color3.fromRGB(255,0,0)
			end

			local function toggleFunction()
				if val then
					val = false
					local tweenInfo = TweenInfo.new(
						.2, -- How long the tween will take
						Enum.EasingStyle.Linear, -- Transition style
						Enum.EasingDirection.InOut -- Direction of the transition
					)
					local tween = tweenService:Create(d, tweenInfo, {BackgroundColor3 = Color3.fromRGB(18,18,18)})
					tween:Play()
				else
					val = true
					local tweenInfo = TweenInfo.new(
						.2, -- How long the tween will take
						Enum.EasingStyle.Linear, -- Transition style
						Enum.EasingDirection.InOut -- Direction of the transition
					)
					local tween = tweenService:Create(d, tweenInfo, {BackgroundColor3 = Color3.fromRGB(255,0,0)})
					tween:Play()
				end

				Callback(val)
			end

			d.MouseButton1Down:Connect(function()
				toggleFunction()
			end)

			-- StarterGui.ScreenGui.Frame.ObjectHolder.ScrollingFrame.Toggle.Btn.UICorner
			Instance.new("UICorner", d);

			function self4:SetValue(value)
				val = value
				if value then
					d.BackgroundColor3 = Color3.fromRGB(255,0,0)
				else
					d["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
				end
			end

			return self4
		end

		function self1:AddSpace(size)
			local d = Instance.new("Frame", nh)
			d.Size = UDim2.new(.1,0,size,0)
			d.BackgroundTransparency = 1
		end

		return self1
	end
	return self
end

return library
