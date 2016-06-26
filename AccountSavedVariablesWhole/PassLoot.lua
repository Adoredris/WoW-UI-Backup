
PassLootDB = {
	["global"] = {
		["Modules"] = {
			["Inventory"] = {
				["Version"] = 2,
			},
			["Zone Name"] = {
				["Version"] = 4,
			},
			["Player Name"] = {
				["Version"] = 2,
			},
			["Learned Item"] = {
				["Version"] = 3,
			},
			["Unique"] = {
				["Version"] = 4,
			},
			["Item Name"] = {
				["Version"] = 3,
			},
			["Quality"] = {
				["Version"] = 4,
			},
			["Item Level"] = {
				["Version"] = 3,
			},
			["Confirm DE"] = {
				["Version"] = 1,
			},
			["Required Level"] = {
				["Version"] = 3,
			},
			["Item Price"] = {
				["Version"] = 3,
			},
			["Binds On"] = {
				["Version"] = 4,
			},
			["Guild Group"] = {
				["Version"] = 2,
			},
			["Type / SubType"] = {
				["Version"] = 4,
			},
			["Equipable"] = {
				["Version"] = 2,
			},
			["Zone Type"] = {
				["Version"] = 4,
			},
			["Confirm BoP"] = {
				["Version"] = 1,
			},
			["Equip Slot"] = {
				["Version"] = 4,
			},
			["Group / Raid"] = {
				["Version"] = 4,
			},
			["Class Spec"] = {
				["Version"] = 2,
			},
			["Usable"] = {
				["Version"] = 2,
			},
			["Loot Won"] = {
				["Version"] = 4,
			},
			["Can I Roll"] = {
				["Version"] = 2,
			},
		},
	},
	["DBVersion"] = 12,
	["profileKeys"] = {
		["Jamuel - Frostmourne"] = "Default",
		["Ash - Frostmourne"] = "Default",
		["Murkrow - Frostmourne"] = "Default",
		["Kutzern - Frostmourne"] = "Default",
		["Machoke - Frostmourne"] = "Default",
		["Jemmani - Frostmourne"] = "Default",
		["Zania - Frostmourne"] = "Default",
		["Adoredris - Frostmourne"] = "Default",
		["Seraiska - Frostmourne"] = "Default",
		["Roldiki - Frostmourne"] = "Default",
		["Elaroldikona - Frostmourne"] = "Default",
		["Ikevink - Jubei'Thos"] = "Default",
		["Somsruxi - Frostmourne"] = "Default",
		["Givemesandst - Frostmourne"] = "Default",
		["Tujirujgh - Frostmourne"] = "Default",
		["Govaka - Frostmourne"] = "Default",
		["Janinda - Frostmourne"] = "Default",
		["Balkala - Frostmourne"] = "Default",
		["Gastly - Frostmourne"] = "Default",
		["Zweilous - Frostmourne"] = "Default",
		["Elinarinda - Frostmourne"] = "Default",
		["Eviani - Frostmourne"] = "Default",
		["Yartyxx - Frostmourne"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["Modules"] = {
				["Inventory"] = {
					["Status"] = true,
				},
				["Zone Name"] = {
					["Status"] = true,
				},
				["Player Name"] = {
					["Status"] = true,
				},
				["Learned Item"] = {
					["Status"] = true,
				},
				["Unique"] = {
					["Status"] = true,
				},
				["Item Name"] = {
					["Status"] = true,
				},
				["Quality"] = {
					["Status"] = true,
				},
				["Item Level"] = {
					["Status"] = true,
				},
				["Confirm DE"] = {
					["Status"] = true,
				},
				["Required Level"] = {
					["Status"] = true,
				},
				["Item Price"] = {
					["Status"] = true,
				},
				["Binds On"] = {
					["Status"] = true,
				},
				["Guild Group"] = {
					["Status"] = true,
				},
				["Type / SubType"] = {
					["Status"] = true,
				},
				["Equipable"] = {
					["Status"] = true,
				},
				["Zone Type"] = {
					["Status"] = true,
				},
				["Confirm BoP"] = {
					["Status"] = true,
				},
				["Equip Slot"] = {
					["Status"] = true,
				},
				["Group / Raid"] = {
					["Status"] = true,
				},
				["Class Spec"] = {
					["Status"] = true,
				},
				["Usable"] = {
					["Status"] = true,
				},
				["Loot Won"] = {
					["Status"] = true,
				},
				["Can I Roll"] = {
					["Status"] = true,
				},
			},
			["Rules"] = {
				{
					["Loot"] = {
						"de", -- [1]
						"greed", -- [2]
						"pass", -- [3]
					},
					["Desc"] = "Greens",
					["Bind"] = {
						{
							3, -- [1]
							false, -- [2]
						}, -- [1]
					},
					["ConfirmDE"] = true,
					["ItemLevel"] = {
						{
							5, -- [1]
							"493", -- [2]
							false, -- [3]
						}, -- [1]
					},
					["Quality"] = {
						{
							2, -- [1]
							false, -- [2]
						}, -- [1]
					},
				}, -- [1]
				{
					["Items"] = {
						{
							"Primal Spirit", -- [1]
							"Exact", -- [2]
							false, -- [3]
						}, -- [1]
					},
					["ConfirmBoP"] = true,
					["Loot"] = {
						"greed", -- [1]
						"pass", -- [2]
					},
					["Desc"] = "Primal Spirit",
				}, -- [2]
			},
		},
	},
}
