
DART_Settings = {
	["Zania : Frostmourne"] = "Default",
	["Ikevink : Jubei'Thos"] = "Default",
	["CustomTextures"] = {
		{
			["x1"] = 0,
			["x2"] = 1,
			["file"] = "Interface\\AddOns\\SharedMedia\\background\\perl.tga",
			["height"] = 256,
			["y2"] = 1,
			["y1"] = 0,
			["width"] = 256,
		}, -- [1]
	},
	["Elinarinda : Frostmourne"] = "Default",
	["Tujirujgh : Frostmourne"] = "Default",
	["Elaroldikona : Frostmourne"] = "Default",
	["Jemmani : Frostmourne"] = "Default",
	["Givemesandst : Frostmourne"] = "Default",
	["Janinda : Frostmourne"] = "Default",
	["Ash : Frostmourne"] = "Default",
	["Machoke : Frostmourne"] = "Default",
	["Gastly : Frostmourne"] = "Default",
	["Murkrow : Frostmourne"] = "Default",
	["Seraiska : Frostmourne"] = "Default",
	["Yartyxx : Frostmourne"] = "Default",
	["Zweilous : Frostmourne"] = "Default",
	["Default"] = {
		{
			["bgcolor"] = {
				["r"] = 0.294117647058824,
				["g"] = 0.341176470588235,
				["b"] = 0.72156862745098,
			},
			["borderalpha"] = 1,
			["color"] = {
				["r"] = 0.109803921568627,
				["g"] = 0.176470588235294,
				["b"] = 0.341176470588235,
			},
			["blendmode"] = "DISABLE",
			["battlestate"] = 0,
			["bordertexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["name"] = "ChatFrame1Background",
			["xoffset"] = {
				"-8", -- [1]
				0, -- [2]
				0, -- [3]
				7, -- [4]
			},
			["yoffset"] = {
				-3, -- [1]
				0, -- [2]
				0, -- [3]
				-177, -- [4]
			},
			["strata"] = "BACKGROUND",
			["highlight"] = false,
			["scale"] = 1,
			["coords"] = {
				0.1, -- [1]
				0.2, -- [2]
				0.5, -- [3]
				0.6, -- [4]
				0.3, -- [5]
				0.8, -- [6]
				0.3, -- [7]
				0.7, -- [8]
			},
			["attachframe"] = {
				"ChatFrame1Tab", -- [1]
				[4] = "GeneralDockManager",
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightalpha"] = 1,
			["attachpoint"] = {
				1, -- [1]
				5, -- [2]
				5, -- [3]
				9, -- [4]
			},
			["texture"] = "Interface\\AddOns\\SharedMedia\\background\\perl.tga",
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["r"] = 0.407843137254902,
					["g"] = 1,
					["b"] = 0.854901960784314,
				},
				["attachpoint"] = 2,
				["alpha"] = 1,
				["width"] = 420,
				["text"] = "",
				["xoffset"] = 0,
				["justifyH"] = 4,
				["attachto"] = 2,
				["height"] = 31,
				["fontsize"] = 12,
				["justifyV"] = 5,
				["yoffset"] = 0,
			},
			["drawlayer"] = "ARTWORK",
			["disableMousewheel"] = true,
			["attachto"] = {
				1, -- [1]
				5, -- [2]
				5, -- [3]
				9, -- [4]
			},
			["height"] = 266,
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["alpha"] = 0.5,
			["width"] = 266,
			["scripts"] = {
			},
			["Backdrop"] = {
				["top"] = 1,
				["edgeSize"] = "2",
				["tileSize"] = 8,
				["tile"] = true,
				["right"] = 1,
				["left"] = 1,
				["bottom"] = 1,
			},
			["disablemouse"] = true,
			["bgalpha"] = 0,
			["parent"] = "UIParent",
			["padding"] = 0,
			["bordercolor"] = {
				["b"] = 1,
				["g"] = 0.392156862745098,
				["r"] = 0.290196078431373,
			},
			["hidebg"] = false,
		}, -- [1]
		{
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["borderalpha"] = 1,
			["color"] = {
				["b"] = 0.341176470588235,
				["g"] = 0.176470588235294,
				["r"] = 0.109803921568627,
			},
			["attachpoint"] = {
				2, -- [1]
				4, -- [2]
				6, -- [3]
				5, -- [4]
			},
			["battlestate"] = 0,
			["bordertexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["font"] = "Interface\\AddOns\\Details\\fonts\\Accidental Presidency.ttf",
			["name"] = "ChatFrame1Cover",
			["xoffset"] = {
				"0", -- [1]
				0, -- [2]
				-3, -- [3]
				0, -- [4]
			},
			["yoffset"] = {
				24, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["strata"] = "MEDIUM",
			["highlight"] = true,
			["scale"] = 1,
			["coords"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["attachframe"] = {
				"ChatFrame1Background", -- [1]
				"ChatFrame1Background", -- [2]
				"ChatFrame1Background", -- [3]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["attachto"] = {
				2, -- [1]
				4, -- [2]
				6, -- [3]
				5, -- [4]
			},
			["blendmode"] = "DISABLE",
			["hidebg"] = false,
			["disablemouse"] = true,
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["b"] = 0.854901960784314,
					["g"] = 1,
					["r"] = 0.407843137254902,
				},
				["attachpoint"] = 2,
				["alpha"] = 1,
				["width"] = 420,
				["text"] = "       General                   Log             Loot/Trade",
				["justifyV"] = 5,
				["fontsize"] = 18,
				["attachto"] = 2,
				["xoffset"] = 0,
				["height"] = 31,
				["justifyH"] = 4,
				["yoffset"] = 0,
			},
			["disableMousewheel"] = true,
			["highlightalpha"] = 0.32,
			["height"] = 31,
			["alpha"] = 1,
			["highlightcolor"] = {
				["b"] = 0,
				["g"] = 1,
				["r"] = 1,
			},
			["width"] = 390,
			["scripts"] = {
			},
			["Backdrop"] = {
				["top"] = 1,
				["edgeSize"] = "2",
				["tileSize"] = 8,
				["tile"] = true,
				["right"] = 1,
				["left"] = 1,
				["bottom"] = 1,
			},
			["bordercolor"] = {
				["b"] = 0.729411764705882,
				["g"] = 0.282352941176471,
				["r"] = 0.211764705882353,
			},
			["bgalpha"] = 0,
			["parent"] = "UIParent",
			["padding"] = 1,
			["texture"] = "Interface\\AddOns\\SharedMedia\\background\\perl.tga",
			["drawlayer"] = "ARTWORK",
		}, -- [2]
		{
			["bgcolor"] = {
				["r"] = 0.294117647058824,
				["g"] = 0.341176470588235,
				["b"] = 0.72156862745098,
			},
			["borderalpha"] = 1,
			["color"] = {
				["r"] = 0.109803921568627,
				["g"] = 0.176470588235294,
				["b"] = 0.341176470588235,
			},
			["blendmode"] = "DISABLE",
			["battlestate"] = 0,
			["bordertexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["name"] = "DetailsFrame",
			["xoffset"] = {
				-5, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["yoffset"] = {
				"2", -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["strata"] = "BACKGROUND",
			["highlight"] = false,
			["scale"] = 1,
			["coords"] = {
				0.1, -- [1]
				0.2, -- [2]
				0.5, -- [3]
				0.6, -- [4]
				0.3, -- [5]
				0.8, -- [6]
				0.3, -- [7]
				0.7, -- [8]
			},
			["attachframe"] = {
				"DetailsUpFrameLeftPart2", -- [1]
				[4] = "UIParent",
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["attachto"] = {
				1, -- [1]
				5, -- [2]
				5, -- [3]
				9, -- [4]
			},
			["height"] = 266,
			["hidebg"] = false,
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["r"] = 0.407843137254902,
					["g"] = 1,
					["b"] = 0.854901960784314,
				},
				["attachpoint"] = 2,
				["alpha"] = 1,
				["width"] = 420,
				["justifyV"] = 5,
				["height"] = 31,
				["justifyH"] = 4,
				["attachto"] = 2,
				["xoffset"] = 0,
				["fontsize"] = 12,
				["text"] = "",
				["yoffset"] = 0,
			},
			["scripts"] = {
			},
			["disableMousewheel"] = true,
			["drawlayer"] = "ARTWORK",
			["attachpoint"] = {
				1, -- [1]
				5, -- [2]
				5, -- [3]
				9, -- [4]
			},
			["alpha"] = 0.5,
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["width"] = 266,
			["Backdrop"] = {
				["top"] = 1,
				["edgeSize"] = "2",
				["tileSize"] = 8,
				["tile"] = true,
				["right"] = 1,
				["left"] = 1,
				["bottom"] = 1,
			},
			["highlightalpha"] = 1,
			["disablemouse"] = true,
			["bgalpha"] = 0,
			["bordercolor"] = {
				["b"] = 1,
				["g"] = 0.392156862745098,
				["r"] = 0.290196078431373,
			},
			["padding"] = 0,
			["parent"] = "UIParent",
			["texture"] = "Interface\\AddOns\\SharedMedia\\background\\perl.tga",
		}, -- [3]
		{
			["bgcolor"] = {
				["r"] = 0.294117647058824,
				["g"] = 0.341176470588235,
				["b"] = 0.72156862745098,
			},
			["borderalpha"] = 1,
			["color"] = {
				["r"] = 0.109803921568627,
				["g"] = 0.176470588235294,
				["b"] = 0.341176470588235,
			},
			["blendmode"] = "DISABLE",
			["battlestate"] = 0,
			["bordertexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["name"] = "HugeActionBars",
			["xoffset"] = {
				517, -- [1]
				0, -- [2]
				0, -- [3]
				-519, -- [4]
			},
			["yoffset"] = {
				-944, -- [1]
				0, -- [2]
				0, -- [3]
				"1", -- [4]
			},
			["strata"] = "BACKGROUND",
			["highlight"] = false,
			["scale"] = 1,
			["coords"] = {
				0.5, -- [1]
				0.7, -- [2]
				0.1, -- [3]
				0.9, -- [4]
				0.3, -- [5]
				0.8, -- [6]
				0.3, -- [7]
				0.7, -- [8]
			},
			["attachframe"] = {
				"UIParent", -- [1]
				[4] = "UIParent",
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["scripts"] = {
			},
			["height"] = 266,
			["texture"] = "Interface\\AddOns\\SharedMedia\\background\\perl.tga",
			["text"] = {
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["r"] = 0.407843137254902,
					["g"] = 1,
					["b"] = 0.854901960784314,
				},
				["attachpoint"] = 2,
				["alpha"] = 1,
				["width"] = 420,
				["text"] = "",
				["xoffset"] = 0,
				["justifyH"] = 4,
				["attachto"] = 2,
				["height"] = 31,
				["fontsize"] = 12,
				["justifyV"] = 5,
				["yoffset"] = 0,
			},
			["parent"] = "UIParent",
			["disableMousewheel"] = true,
			["drawlayer"] = "ARTWORK",
			["attachpoint"] = {
				1, -- [1]
				5, -- [2]
				5, -- [3]
				9, -- [4]
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["Backdrop"] = {
				["top"] = 1,
				["edgeSize"] = "2",
				["tileSize"] = 8,
				["tile"] = true,
				["right"] = 1,
				["left"] = 1,
				["bottom"] = 1,
			},
			["width"] = 266,
			["highlightalpha"] = 1,
			["attachto"] = {
				1, -- [1]
				5, -- [2]
				5, -- [3]
				9, -- [4]
			},
			["alpha"] = 0.5,
			["disablemouse"] = true,
			["bgalpha"] = 0,
			["padding"] = 0,
			["bordercolor"] = {
				["b"] = 1,
				["g"] = 0.392156862745098,
				["r"] = 0.290196078431373,
			},
			["hidebg"] = false,
		}, -- [4]
		{
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["borderalpha"] = 1,
			["color"] = {
				["b"] = 0.341176470588235,
				["g"] = 0.176470588235294,
				["r"] = 0.109803921568627,
			},
			["blendmode"] = "DISABLE",
			["battlestate"] = 0,
			["bordertexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["font"] = "Interface\\AddOns\\Details\\fonts\\Accidental Presidency.ttf",
			["name"] = "SexyMapCover",
			["xoffset"] = {
				"0", -- [1]
				0, -- [2]
				"0", -- [3]
				"0", -- [4]
			},
			["yoffset"] = {
				"0", -- [1]
				0, -- [2]
				0, -- [3]
				"0", -- [4]
			},
			["strata"] = "MEDIUM",
			["highlight"] = true,
			["scale"] = 1,
			["coords"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["attachframe"] = {
				"Minimap", -- [1]
				"", -- [2]
				"", -- [3]
				"Minimap", -- [4]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightalpha"] = 0.32,
			["bordercolor"] = {
				["b"] = 0.729411764705882,
				["g"] = 0.282352941176471,
				["r"] = 0.211764705882353,
			},
			["texture"] = "Interface\\AddOns\\SharedMedia\\background\\perl.tga",
			["height"] = 31,
			["disablemouse"] = true,
			["disableMousewheel"] = true,
			["attachpoint"] = {
				1, -- [1]
				4, -- [2]
				6, -- [3]
				9, -- [4]
			},
			["attachto"] = {
				1, -- [1]
				4, -- [2]
				6, -- [3]
				9, -- [4]
			},
			["highlightcolor"] = {
				["b"] = 0,
				["g"] = 1,
				["r"] = 1,
			},
			["Backdrop"] = {
				["top"] = 1,
				["edgeSize"] = "2",
				["tileSize"] = 8,
				["tile"] = true,
				["right"] = 1,
				["left"] = 1,
				["bottom"] = 1,
			},
			["width"] = 390,
			["scripts"] = {
			},
			["bgalpha"] = 0,
			["alpha"] = 0,
			["drawlayer"] = "ARTWORK",
			["hidebg"] = false,
			["padding"] = 0,
			["parent"] = "UIParent",
			["text"] = {
				["yoffset"] = 0,
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["b"] = 0.854901960784314,
					["g"] = 1,
					["r"] = 0.407843137254902,
				},
				["attachpoint"] = 2,
				["alpha"] = 1,
				["width"] = 420,
				["text"] = "",
				["xoffset"] = 0,
				["justifyH"] = 4,
				["attachto"] = 2,
				["height"] = 31,
				["fontsize"] = 18,
				["justifyV"] = 5,
				["hide"] = true,
			},
		}, -- [5]
		["INITIALIZED1.5"] = true,
		["rootpath"] = "",
		["optionsscale"] = 1,
		["Functions"] = {
		},
		["savedroots"] = {
		},
		["INITIALIZED1.6"] = true,
		["INITIALIZED1.0d"] = true,
		["INITIALIZED6"] = true,
		["INITIALIZED1.1"] = true,
		["updatespeed"] = 30,
	},
	["Balkala : Frostmourne"] = "Default",
	["Custom"] = {
		{
			["scripts"] = {
				"", -- [1]
				nil, -- [2]
				"", -- [3]
				"", -- [4]
				[14] = "local bottom = 41 -- 30 can be adjusted to any number depending on the height of your artwork.\nself.ViewportOverlay = WorldFrame:CreateTexture(nil, \"BACKGROUND\")\nself.ViewportOverlay:SetTexture(0, 0, 0, 1)\nself.ViewportOverlay:SetPoint(\"TOPLEFT\", UIParent, \"TOPLEFT\", -1, 1)\nself.ViewportOverlay:SetPoint(\"BOTTOMRIGHT\", UIParent, \"BOTTOMRIGHT\", 1, -1)\nlocal currentXResolution, currentYResolution = 1900 , 1200 -- Your screen resolution.\nbottom = (bottom*(currentYResolution/1200))\nWorldFrame:SetPoint(\"TOPLEFT\", 0, 0)\nWorldFrame:SetPoint(\"BOTTOMRIGHT\", 0, (bottom * (2668 / currentYResolution)))",
			},
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["borderalpha"] = 0,
			["scale"] = 0.6,
			["coords"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["attachframe"] = {
				"Minimap", -- [1]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["alpha"] = 0.99,
			["padding"] = 5,
			["highlightalpha"] = 0.27,
			["xoffset"] = {
				-60, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["texture"] = "MazzleUIMinimapBorder",
			["hidebg"] = 1,
			["parent"] = "UIParent",
			["blendmode"] = "DISABLE",
			["bordercolor"] = {
				["r"] = 0.968627450980392,
				["g"] = 0.349019607843137,
				["b"] = 1,
			},
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = 1,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["text"] = {
				["hide"] = true,
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["justifyV"] = 5,
				["width"] = 100,
				["attachpoint"] = 2,
				["xoffset"] = 0,
				["fontsize"] = 16,
				["attachto"] = 2,
				["height"] = 20,
				["justifyH"] = 5,
				["alpha"] = 1,
				["yoffset"] = 0,
			},
			["highlightcolor"] = {
				["r"] = 0.63921568627451,
				["g"] = 0.792156862745098,
				["b"] = 1,
			},
			["width"] = 404,
			["drawlayer"] = "BORDER",
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["name"] = "Minimap Background",
			["color"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["height"] = 416,
			["Conditions"] = {
				{
					["color"] = {
						["b"] = 0.0470588235294118,
						["g"] = 0,
						["r"] = 0.71764705882353,
					},
					["condition"] = 14,
					["overrides"] = {
					},
					["response"] = 18,
				}, -- [1]
				{
					["color"] = {
						["b"] = 0.0509803921568627,
						["g"] = 0,
						["r"] = 1,
					},
					["condition"] = 14,
					["overrides"] = {
					},
					["response"] = 29,
				}, -- [2]
				{
					["color"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["overrides"] = {
					},
					["condition"] = 17,
					["response"] = 18,
				}, -- [3]
				{
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["overrides"] = {
					},
					["condition"] = 17,
					["response"] = 30,
				}, -- [4]
			},
			["bgalpha"] = 0,
			["yoffset"] = {
				-42.33, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [1]
		{
			["scripts"] = {
			},
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["drawlayer"] = "BACKGROUND",
			["scale"] = 0.6,
			["coords"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["attachframe"] = {
				"Minimap", -- [1]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightcolor"] = {
				["b"] = 0,
				["g"] = 1,
				["r"] = 1,
			},
			["padding"] = 5,
			["highlightalpha"] = 0.3,
			["xoffset"] = {
				-451.67, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["texture"] = "Bottom2",
			["hidebg"] = true,
			["color"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["blendmode"] = "DISABLE",
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["alpha"] = 0.99,
			["bordercolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["text"] = {
				["yoffset"] = 0,
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["text"] = "",
				["justifyV"] = 5,
				["width"] = 100,
				["alpha"] = 1,
				["justifyH"] = 5,
				["fontsize"] = 16,
				["attachto"] = 2,
				["xoffset"] = 0,
				["height"] = 20,
				["attachpoint"] = 2,
				["hide"] = true,
			},
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["width"] = 1214,
			["borderalpha"] = 1,
			["bgalpha"] = 1,
			["name"] = "Left Button Background",
			["parent"] = "UIParent",
			["height"] = 392,
			["Conditions"] = {
				{
					["color"] = {
						["b"] = 0.0470588235294118,
						["g"] = 0,
						["r"] = 0.71764705882353,
					},
					["condition"] = 14,
					["overrides"] = {
					},
					["response"] = 18,
				}, -- [1]
				{
					["color"] = {
						["b"] = 0.0509803921568627,
						["g"] = 0,
						["r"] = 1,
					},
					["condition"] = 14,
					["overrides"] = {
					},
					["response"] = 29,
				}, -- [2]
				{
					["color"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["overrides"] = {
					},
					["condition"] = 17,
					["response"] = 18,
				}, -- [3]
				{
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["overrides"] = {
					},
					["condition"] = 17,
					["response"] = 30,
				}, -- [4]
			},
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["yoffset"] = {
				77.52, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [2]
		{
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["borderalpha"] = 1,
			["scale"] = 0.6,
			["coords"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["attachframe"] = {
				"Minimap", -- [1]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["padding"] = 5,
			["scripts"] = {
				[7] = "",
				[14] = "",
			},
			["xoffset"] = {
				635.67, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["highlightalpha"] = 0.3,
			["hidebg"] = true,
			["texture"] = "Bottom3",
			["color"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["blendmode"] = "DISABLE",
			["bordercolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["highlightcolor"] = {
				["b"] = 0,
				["g"] = 1,
				["r"] = 1,
			},
			["text"] = {
				["yoffset"] = 0,
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["text"] = "",
				["justifyV"] = 5,
				["width"] = 100,
				["alpha"] = 1,
				["fontsize"] = 16,
				["justifyH"] = 5,
				["attachto"] = 2,
				["height"] = 20,
				["xoffset"] = 0,
				["attachpoint"] = 2,
				["hide"] = true,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["alpha"] = 0.99,
			["width"] = 1020,
			["drawlayer"] = "BACKGROUND",
			["bgalpha"] = 1,
			["name"] = "Right Button Background",
			["parent"] = "UIParent",
			["height"] = 392,
			["Conditions"] = {
				{
					["color"] = {
						["b"] = 0.0470588235294118,
						["g"] = 0,
						["r"] = 0.71764705882353,
					},
					["condition"] = 14,
					["overrides"] = {
					},
					["response"] = 18,
				}, -- [1]
				{
					["color"] = {
						["b"] = 0.0509803921568627,
						["g"] = 0,
						["r"] = 1,
					},
					["condition"] = 14,
					["overrides"] = {
					},
					["response"] = 29,
				}, -- [2]
				{
					["color"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["overrides"] = {
					},
					["condition"] = 17,
					["response"] = 18,
				}, -- [3]
				{
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["overrides"] = {
					},
					["condition"] = 17,
					["response"] = 30,
				}, -- [4]
			},
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["yoffset"] = {
				76.01, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [3]
		{
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["borderalpha"] = 1,
			["scale"] = 0.7,
			["coords"] = {
				0, -- [1]
				0.820999979972839, -- [2]
				0, -- [3]
				1, -- [4]
				0.0299999993294478, -- [5]
				0.0299999993294478, -- [6]
			},
			["attachframe"] = {
				"Minimap", -- [1]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["alpha"] = 0.99,
			["padding"] = 5,
			["highlightalpha"] = 1,
			["xoffset"] = {
				-1137.58, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["scripts"] = {
				[7] = "",
			},
			["texture"] = "Bottom1",
			["hidebg"] = 1,
			["parent"] = "UIParent",
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["bordercolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["text"] = {
				["yoffset"] = 0,
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["text"] = "",
				["justifyV"] = 5,
				["width"] = 100,
				["alpha"] = 1,
				["fontsize"] = 16,
				["justifyH"] = 5,
				["attachto"] = 2,
				["height"] = 20,
				["xoffset"] = 0,
				["attachpoint"] = 2,
				["hide"] = true,
			},
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = "16",
				["tileSize"] = "16",
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["width"] = 480,
			["drawlayer"] = "BORDER",
			["blendmode"] = "DISABLE",
			["name"] = "Left Chat Background",
			["color"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["height"] = 340,
			["Conditions"] = {
				{
					["color"] = {
						["b"] = 0.0470588235294118,
						["g"] = 0,
						["r"] = 0.71764705882353,
					},
					["condition"] = 14,
					["overrides"] = {
					},
					["response"] = 18,
				}, -- [1]
				{
					["color"] = {
						["b"] = 0.0509803921568627,
						["g"] = 0,
						["r"] = 1,
					},
					["condition"] = 14,
					["overrides"] = {
					},
					["response"] = 29,
				}, -- [2]
				{
					["color"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["overrides"] = {
					},
					["condition"] = 17,
					["response"] = 18,
				}, -- [3]
				{
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["overrides"] = {
					},
					["condition"] = 17,
					["response"] = 30,
				}, -- [4]
			},
			["bgalpha"] = 1,
			["yoffset"] = {
				67.71, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [4]
		{
			["scripts"] = {
			},
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["borderalpha"] = 1,
			["scale"] = 0.7,
			["coords"] = {
				0.181, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["attachframe"] = {
				"Minimap", -- [1]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["alpha"] = 0.99,
			["padding"] = 5,
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["height"] = 340,
			["highlightalpha"] = 0.3,
			["hidebg"] = true,
			["texture"] = "Bottom4",
			["parent"] = "UIParent",
			["bgalpha"] = 1,
			["bordercolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["text"] = {
				["yoffset"] = 0,
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["text"] = "",
				["justifyV"] = 5,
				["width"] = 100,
				["alpha"] = 1,
				["justifyH"] = 5,
				["fontsize"] = 16,
				["attachto"] = 2,
				["xoffset"] = 0,
				["height"] = 20,
				["attachpoint"] = 2,
				["hide"] = true,
			},
			["highlightcolor"] = {
				["b"] = 0,
				["g"] = 1,
				["r"] = 1,
			},
			["width"] = 450,
			["drawlayer"] = "BORDER",
			["blendmode"] = "DISABLE",
			["name"] = "Right Chat Background",
			["color"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["xoffset"] = {
				1149.39, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["Conditions"] = {
				{
					["color"] = {
						["b"] = 0.0470588235294118,
						["g"] = 0,
						["r"] = 0.71764705882353,
					},
					["condition"] = 14,
					["overrides"] = {
					},
					["response"] = 18,
				}, -- [1]
				{
					["color"] = {
						["b"] = 0.0509803921568627,
						["g"] = 0,
						["r"] = 1,
					},
					["condition"] = 14,
					["overrides"] = {
					},
					["response"] = 29,
				}, -- [2]
				{
					["color"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["overrides"] = {
					},
					["condition"] = 17,
					["response"] = 18,
				}, -- [3]
				{
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["overrides"] = {
					},
					["condition"] = 17,
					["response"] = 30,
				}, -- [4]
			},
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["yoffset"] = {
				65.58, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [5]
		{
			["scripts"] = {
			},
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["borderalpha"] = 1,
			["scale"] = 1.09,
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["attachframe"] = {
				"Minimap", -- [1]
			},
			["framelevel"] = 1,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["blendmode"] = "DISABLE",
			["coords"] = {
				0, -- [1]
				0.125, -- [2]
				0.5, -- [3]
				0.75, -- [4]
			},
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["height"] = 40,
			["drawlayer"] = "OVERLAY",
			["texture"] = "Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Races",
			["hide"] = true,
			["hidebg"] = true,
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["alpha"] = 0.99,
			["text"] = {
				["yoffset"] = 0,
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["text"] = "",
				["justifyV"] = 5,
				["width"] = 100,
				["alpha"] = 1,
				["justifyH"] = 5,
				["fontsize"] = 16,
				["attachto"] = 2,
				["xoffset"] = 0,
				["height"] = 20,
				["attachpoint"] = 2,
				["hide"] = true,
			},
			["bordercolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["highlightcolor"] = {
				["b"] = 0,
				["g"] = 1,
				["r"] = 1,
			},
			["width"] = 40,
			["color"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["highlightalpha"] = 0.3,
			["name"] = "Minimap Overlay",
			["parent"] = "UIParent",
			["xoffset"] = {
				-190.91, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["padding"] = 5,
			["bgalpha"] = 1,
			["yoffset"] = {
				278.9, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [6]
		{
			["highlightalpha"] = 0.3,
			["strata"] = "LOW",
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["drawlayer"] = "OVERLAY",
			["scale"] = 1.09,
			["coords"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["attachframe"] = {
				"Minimap", -- [1]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["Backdrop"] = {
				["top"] = "5",
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["bottom"] = 5,
				["right"] = "5",
				["left"] = "5",
			},
			["padding"] = 5,
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["height"] = 210,
			["scripts"] = {
				"", -- [1]
			},
			["texture"] = "FloatingCave",
			["hidebg"] = 1,
			["parent"] = "UIParent",
			["bgalpha"] = 0,
			["text"] = {
				["yoffset"] = "0",
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["text"] = "",
				["justifyV"] = 5,
				["width"] = 100,
				["alpha"] = 1,
				["fontsize"] = 16,
				["justifyH"] = 5,
				["attachto"] = 2,
				["height"] = 20,
				["xoffset"] = 0,
				["attachpoint"] = 2,
				["hide"] = true,
			},
			["alpha"] = 0.99,
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["bordercolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["highlightcolor"] = {
				["b"] = 0,
				["g"] = 1,
				["r"] = 1,
			},
			["width"] = 195,
			["borderalpha"] = 0,
			["blendmode"] = "DISABLE",
			["name"] = "3D Target Overlay",
			["color"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["xoffset"] = {
				0.45, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["Conditions"] = {
				{
					["color"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["condition"] = 56,
					["overrides"] = {
					},
					["response"] = 2,
				}, -- [1]
				{
					["color"] = {
						["r"] = 0.71764705882353,
						["g"] = 0,
						["b"] = 0.0470588235294118,
					},
					["overrides"] = {
						7, -- [1]
						6, -- [2]
					},
					["condition"] = 14,
					["response"] = 18,
				}, -- [2]
				{
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["overrides"] = {
						7, -- [1]
						6, -- [2]
					},
					["condition"] = 14,
					["response"] = 29,
				}, -- [3]
				{
					["color"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["overrides"] = {
					},
					["condition"] = 17,
					["response"] = 18,
				}, -- [4]
				{
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["overrides"] = {
						5, -- [1]
						6, -- [2]
					},
					["condition"] = 17,
					["response"] = 30,
				}, -- [5]
				{
					["overrides"] = {
					},
					["condition"] = 55,
					["response"] = 30,
				}, -- [6]
				{
					["condition"] = 55,
					["overrides"] = {
					},
					["response"] = 1,
				}, -- [7]
			},
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["yoffset"] = {
				160.36, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [7]
		{
			["strata"] = "LOW",
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["borderalpha"] = 1,
			["parent"] = "UIParent",
			["blendmode"] = "DISABLE",
			["attachframe"] = {
				"Minimap", -- [1]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["coords"] = {
				0.5625, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
				0.0299999993294478, -- [5]
				0.0299999993294478, -- [6]
			},
			["scripts"] = {
				[3] = "DART_TextShow(8)\n",
				[2] = "",
				[7] = "local Calc = _G[\"Calculator_MainFrame\"]\nif Calc:IsVisible() then\n    Calc:Hide()\nelse\n    Calc:Show()\nend\n",
				[4] = "DART_TextHide(8)",
			},
			["scale"] = 0.7,
			["height"] = 32,
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["hidebg"] = true,
			["color"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["highlightcolor"] = {
				["b"] = 0,
				["g"] = 1,
				["r"] = 1,
			},
			["text"] = {
				["hide"] = true,
				["drawlayer"] = "BACKGROUND",
				["color"] = {
					["b"] = 0.866666666666667,
					["g"] = 1,
					["r"] = 0,
				},
				["attachpoint"] = 4,
				["alpha"] = 1,
				["width"] = 100,
				["text"] = "Calculator",
				["justifyV"] = 8,
				["fontsize"] = 18,
				["attachto"] = 6,
				["height"] = 20,
				["xoffset"] = 0,
				["justifyH"] = 4,
				["yoffset"] = 14,
			},
			["alpha"] = 0,
			["width"] = 32,
			["bordercolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["highlightalpha"] = 0.3,
			["name"] = "LeftTopLeft Clicky",
			["drawlayer"] = "BORDER",
			["xoffset"] = {
				-1360, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["padding"] = 5,
			["bgalpha"] = 1,
			["yoffset"] = {
				213.01, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [8]
		{
			["highlightalpha"] = 0.3,
			["strata"] = "LOW",
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["borderalpha"] = 1,
			["scale"] = 0.7,
			["coords"] = {
				0.5625, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
				0.0299999993294478, -- [5]
				0.0299999993294478, -- [6]
			},
			["attachframe"] = {
				"Minimap", -- [1]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["padding"] = 5,
			["scripts"] = {
				[3] = "DART_TextShow(9)",
				[7] = "local Pad = _G[\"TinyPadFrame\"]\nif Pad:IsVisible() then\n    Pad:Hide()\nelse\n    Pad:Show()\nend\n",
				[4] = "DART_TextHide(9)",
			},
			["height"] = 32,
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["hidebg"] = true,
			["parent"] = "UIParent",
			["bgalpha"] = 1,
			["bordercolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["alpha"] = 0,
			["text"] = {
				["yoffset"] = 5,
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["b"] = 0.866666666666667,
					["g"] = 1,
					["r"] = 0,
				},
				["text"] = "TinyPad",
				["justifyV"] = 5,
				["width"] = 100,
				["alpha"] = 1,
				["justifyH"] = 6,
				["fontsize"] = 18,
				["attachto"] = 2,
				["height"] = 20,
				["xoffset"] = -63,
				["attachpoint"] = 2,
				["hide"] = true,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["highlightcolor"] = {
				["b"] = 0,
				["g"] = 1,
				["r"] = 1,
			},
			["width"] = 32,
			["drawlayer"] = "BORDER",
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["name"] = "LeftTopRight Clicky",
			["color"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["xoffset"] = {
				-917, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["Conditions"] = {
				{
					["color"] = {
						["b"] = 0.0470588235294118,
						["g"] = 0,
						["r"] = 0.71764705882353,
					},
					["condition"] = 14,
					["overrides"] = {
					},
					["response"] = 18,
				}, -- [1]
				{
					["color"] = {
						["b"] = 0.0509803921568627,
						["g"] = 0,
						["r"] = 1,
					},
					["condition"] = 14,
					["overrides"] = {
					},
					["response"] = 29,
				}, -- [2]
				{
					["color"] = {
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["overrides"] = {
					},
					["condition"] = 17,
					["response"] = 18,
				}, -- [3]
				{
					["color"] = {
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["overrides"] = {
					},
					["condition"] = 17,
					["response"] = 30,
				}, -- [4]
			},
			["blendmode"] = "DISABLE",
			["yoffset"] = {
				216.01, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [9]
		{
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["drawlayer"] = "BACKGROUND",
			["parent"] = "UIParent",
			["coords"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["attachframe"] = {
				"UIParent", -- [1]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightalpha"] = 0.3,
			["bgalpha"] = 1,
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["scale"] = 1,
			["xoffset"] = {
				-798, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["color"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["hidebg"] = true,
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["bordercolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["text"] = {
				["hide"] = true,
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["justifyV"] = 5,
				["width"] = 100,
				["attachpoint"] = 2,
				["height"] = 20,
				["justifyH"] = 5,
				["attachto"] = 2,
				["xoffset"] = 0,
				["fontsize"] = 16,
				["alpha"] = 1,
				["yoffset"] = 0,
			},
			["alpha"] = 1,
			["width"] = 330,
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["scripts"] = {
			},
			["name"] = "Turret Backdrop Left",
			["borderalpha"] = 1,
			["height"] = 100,
			["padding"] = 5,
			["blendmode"] = "DISABLE",
			["yoffset"] = {
				-413, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [10]
		{
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["drawlayer"] = "BACKGROUND",
			["parent"] = "UIParent",
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["attachframe"] = {
				"UIParent", -- [1]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["scripts"] = {
			},
			["bgalpha"] = 1,
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["scale"] = 1,
			["xoffset"] = {
				817, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["coords"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["color"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["hidebg"] = true,
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["text"] = {
				["hide"] = true,
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["justifyV"] = 5,
				["width"] = 100,
				["attachpoint"] = 2,
				["xoffset"] = 0,
				["fontsize"] = 16,
				["attachto"] = 2,
				["height"] = 20,
				["justifyH"] = 5,
				["alpha"] = 1,
				["yoffset"] = 0,
			},
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["alpha"] = 1,
			["width"] = 330,
			["bordercolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["highlightalpha"] = 0.3,
			["name"] = "Turret Backdrop Right",
			["borderalpha"] = 1,
			["height"] = 100,
			["padding"] = 5,
			["blendmode"] = "DISABLE",
			["yoffset"] = {
				-414, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [11]
		{
			["highlightalpha"] = 0.3,
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["borderalpha"] = 0,
			["scale"] = 1,
			["coords"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["attachframe"] = {
				"UIParent", -- [1]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["padding"] = 5,
			["scripts"] = {
			},
			["height"] = 145,
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["hidebg"] = 1,
			["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["parent"] = "UIParent",
			["bgalpha"] = 1,
			["bordercolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["alpha"] = 1,
			["text"] = {
				["hide"] = true,
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["justifyV"] = 5,
				["width"] = 100,
				["attachpoint"] = 2,
				["xoffset"] = 0,
				["fontsize"] = 16,
				["attachto"] = 2,
				["height"] = 20,
				["justifyH"] = 5,
				["alpha"] = 1,
				["yoffset"] = 0,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["width"] = 135,
			["drawlayer"] = "BACKGROUND",
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["name"] = "Cave Backdrop Top",
			["color"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["xoffset"] = {
				2, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["Conditions"] = {
				{
					["condition"] = 56,
					["overrides"] = {
					},
					["response"] = 2,
				}, -- [1]
				{
					["condition"] = 55,
					["overrides"] = {
					},
					["response"] = 1,
				}, -- [2]
			},
			["blendmode"] = "DISABLE",
			["yoffset"] = {
				-384, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [12]
		{
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["strata"] = "BACKGROUND",
			["bgcolor"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["borderalpha"] = 0,
			["scale"] = 1,
			["coords"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["attachframe"] = {
				"UIParent", -- [1]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["highlightcolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 0,
			},
			["padding"] = 5,
			["highlightalpha"] = 0.3,
			["height"] = 35,
			["scripts"] = {
			},
			["hidebg"] = true,
			["texture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["parent"] = "UIParent",
			["blendmode"] = "DISABLE",
			["bordercolor"] = {
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
			},
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["text"] = {
				["hide"] = true,
				["drawlayer"] = "OVERLAY",
				["color"] = {
					["r"] = 1,
					["g"] = 1,
					["b"] = 1,
				},
				["text"] = "",
				["justifyV"] = 5,
				["width"] = 100,
				["attachpoint"] = 2,
				["height"] = 20,
				["justifyH"] = 5,
				["attachto"] = 2,
				["xoffset"] = 0,
				["fontsize"] = 16,
				["alpha"] = 1,
				["yoffset"] = 0,
			},
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["alpha"] = 1,
			["width"] = 210,
			["drawlayer"] = "BACKGROUND",
			["bgalpha"] = 1,
			["name"] = "Cave Backdrop Bottom",
			["color"] = {
				["r"] = 0,
				["g"] = 0,
				["b"] = 0,
			},
			["xoffset"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["Conditions"] = {
				{
					["condition"] = 56,
					["overrides"] = {
					},
					["response"] = 2,
				}, -- [1]
				{
					["condition"] = 55,
					["overrides"] = {
					},
					["response"] = 1,
				}, -- [2]
			},
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["yoffset"] = {
				-454, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [13]
		{
			["strata"] = "LOW",
			["bgcolor"] = {
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["borderalpha"] = 1,
			["parent"] = "UIParent",
			["attachpoint"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["attachframe"] = {
				"Minimap", -- [1]
			},
			["framelevel"] = 0,
			["bgtexture"] = "Interface\\AddOns\\DiscordLibrary\\PlainBackdrop",
			["attachto"] = {
				5, -- [1]
				5, -- [2]
				5, -- [3]
				5, -- [4]
			},
			["bgalpha"] = 1,
			["highlightalpha"] = 0.3,
			["color"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["height"] = 266,
			["blendmode"] = "DISABLE",
			["texture"] = "Interface\\AddOns\\DiscordArt\\CustomTextures\\suiv4target",
			["scale"] = 0.7,
			["hidebg"] = true,
			["Backdrop"] = {
				["top"] = 5,
				["edgeSize"] = 16,
				["tileSize"] = 16,
				["tile"] = true,
				["right"] = 5,
				["left"] = 5,
				["bottom"] = 5,
			},
			["bordercolor"] = {
				["b"] = 1,
				["g"] = 1,
				["r"] = 1,
			},
			["alpha"] = 0,
			["text"] = {
				["hide"] = true,
				["drawlayer"] = "BACKGROUND",
				["color"] = {
					["b"] = 0.866666666666667,
					["g"] = 1,
					["r"] = 0,
				},
				["text"] = "Frame Stack",
				["justifyV"] = 8,
				["width"] = 110,
				["attachpoint"] = 4,
				["fontsize"] = 18,
				["justifyH"] = 6,
				["attachto"] = 6,
				["xoffset"] = -140,
				["height"] = 20,
				["alpha"] = 1,
				["yoffset"] = 12,
			},
			["highlightcolor"] = {
				["b"] = 0,
				["g"] = 1,
				["r"] = 1,
			},
			["width"] = 266,
			["bordertexture"] = "Interface\\Tooltips\\UI-Tooltip-Border",
			["scripts"] = {
				[3] = "DART_TextShow(14)\n",
				[2] = "",
				[7] = "\n",
				[4] = "DART_TextHide(14)",
			},
			["name"] = "RightTopRight Clicky",
			["drawlayer"] = "BORDER",
			["xoffset"] = {
				1358, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["padding"] = 5,
			["coords"] = {
				0, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
				0.0299999993294478, -- [5]
				0.0299999993294478, -- [6]
			},
			["yoffset"] = {
				214.01, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
		}, -- [14]
		["updatespeed"] = 10,
		["INITIALIZED1.0d"] = true,
		["optionsscale"] = 1,
		["custompaths"] = 1,
		["INITIALIZED1.1"] = true,
		["INITIALIZED1.5"] = true,
		["rootpath"] = "Interface\\AddOns\\FizzleUI\\Textures\\MazzleUI_Default_Skin\\",
	},
	["Swinub : Frostmourne"] = "Default",
	["Adoredris : Frostmourne"] = "Default",
	["Roldiki : Frostmourne"] = "Default",
}
