if not game:IsLoaded() then
	game.Loaded:Wait()
end

repeat
	wait()
until game.Players

repeat
	wait()
until game.Players.LocalPlayer

repeat
	wait()
until game.ReplicatedStorage

repeat
	wait()
until game.ReplicatedStorage:FindFirstChild("Remotes");

repeat
	wait()
until game.Players.LocalPlayer:FindFirstChild("PlayerGui");

repeat
	wait()
until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");

local v0_args = game.Players.LocalPlayer

local v1_args = game.ReplicatedStorage.Remotes["CommF_"]

local v2_args = game:GetService("HttpService")

r0_0arg = require(game.ReplicatedStorage.Util.CameraShaker) 

r0_0arg:Stop()

if game.PlaceId == 2753915549 then
	r1_1arg = true

elseif game.PlaceId == 4442272183 then
	r2_2arg = true

elseif game.PlaceId == 7449423635 then
	r3_3arg = true

else
	game:GetService("Players").LocalPlayer:Kick("check discord for see game support")

end

local v3_args = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ahmad0x02/0X02V072/main/Source.lua%20(2).txt?raw=true"))()

local v4_args = v3_args:MakeNotify({

	["Title"] = "Rise Hub |",

	["Description"] = "Free Scripts",

	["Color"] = Color3.fromRGB(255, 0, 111),

	["Content"] = "SCRIPT LOADING....",

	["Time"] = 1,

	["Delay"] = 5

})

repeat
	local v133_args = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("ChooseTeam", true)
	local v134_args = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UIController", true)
	if v134_args and v133_args then
		if v133_args.Visible then
			for v135_args, v136_args in pairs(getgc()) do
				if type(v136_args) == "function" and getfenv(v136_args).script == v134_args then
					local v137_args = getconstants(v136_args)
					pcall(function()
						if (v137_args[1] == "Pirates" or v137_args[1] == "Marines") and # v137_args == 1 then
							local v138_args = getgenv().Team or "Pirates"
							if v137_args[1] == v138_args then
								v136_args(v138_args)
							end
						end
					end)
				end
			end
		end
	end
	wait(1)

until game.Players.LocalPlayer.Team

repeat
	wait()

until game.Players.LocalPlayer.Character

------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------

function r4_4arg()
	local v139_args = game.PlaceId
	local v140_args = {}
	local v141_args = ""
	local v142_args = os.date("!*t").hour
	local v143_args = false
	function r5_5arg()
		local v144_args;
		if v141_args == "" then
			v144_args = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. v139_args .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			v144_args = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. v139_args .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. v141_args))
		end
		local v145_args = ""
		if v144_args.nextPageCursor and v144_args.nextPageCursor ~= "null" and v144_args.nextPageCursor ~= nil then
			v141_args = v144_args.nextPageCursor
		end
		local v146_args = 0;
		for v147_args, v148_args in pairs(v144_args.data) do
			local v149_args = true
			v145_args = tostring(v148_args.id)
			if tonumber(v148_args.maxPlayers) > tonumber(v148_args.playing) then
				for v150_args, v151_args in pairs(v140_args) do
					if v146_args ~= 0 then
						if v145_args == tostring(v151_args) then
							v149_args = false
						end
					else
						if tonumber(v142_args) ~= tonumber(v151_args) then
							local v152_args = pcall(function()
								v140_args = {}
								table.insert(v140_args, v142_args)
							end)
						end
					end
					v146_args = v146_args + 1
				end
				if v149_args == true then
					table.insert(v140_args, v145_args)
					wait()
					pcall(function()
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(v139_args, v145_args, game.Players.LocalPlayer)
					end)
					wait(4)
				end
			end
		end
	end
	function r6_6arg()
		while wait() do
			pcall(function()
				r5_5arg()
				if v141_args ~= "" then
					r5_5arg()
				end
			end)
		end
	end
	r6_6arg()
end   

function r7_7arg()
	if r8_8arg.SeliMarteriel == "Radioactive Material" then
		r9_9arg = "Factory Staff"
		r10_10arg = CFrame.new(- 507.7895202636719, 72.99479675292969, - 126.45632934570312)
		r11_11arg = "Bar"
	elseif r8_8arg.SeliMarteriel == "Mystic Droplet" then
		r9_9arg = "Water Fighter"
		r10_10arg = CFrame.new(- 3214.218017578125, 298.69952392578125, - 10543.685546875)
		r11_11arg = "ForgottenIsland"
	elseif r8_8arg.SeliMarteriel == "Magma Ore" then
		if game.PlaceId == 2753915549 then
			r9_9arg = "Military Spy"
			r10_10arg = CFrame.new(- 5850.2802734375, 77.28675079345703, 8848.6748046875)
			r11_11arg = "Magma"
		elseif game.PlaceId == 4442272183 then
			r9_9arg = "Lava Pirate"
			r10_10arg = CFrame.new(- 5234.60595703125, 51.953372955322266, - 4732.27880859375)
			r11_11arg = "CircleIslandFire"
		end
	elseif r8_8arg.SeliMarteriel == "Angel Wings" then
		r9_9arg = "Royal Soldier"
		r10_10arg = CFrame.new(- 7827.15625, 5606.912109375, - 1705.5833740234375)
		r11_11arg = "Sky2"
	elseif r8_8arg.SeliMarteriel == "Leather" then
		if game.PlaceId == 2753915549 then
			r9_9arg = "Pirate"
			r10_10arg = CFrame.new(- 1211.8792724609375, 4.787090301513672, 3916.83056640625)
			r11_11arg = "Pirate"
		elseif game.PlaceId == 4442272183 then
			r9_9arg = "Marine Captain"
			r10_10arg = CFrame.new(- 2010.5059814453125, 73.00115966796875, - 3326.620849609375)
			r11_11arg = "Greenb"
		elseif game.PlaceId == 7449423635 then
			r9_9arg = "Jungle Pirate"
			r10_10arg = CFrame.new(- 11975.78515625, 331.7734069824219, - 10620.0302734375)
			r11_11arg = "PineappleTown"
		end
	elseif r8_8arg.SeliMarteriel == "Scrap Metal" then
		if game.PlaceId == 2753915549 then
			r9_9arg = "Brute"
			r10_10arg = CFrame.new(- 1132.4202880859375, 14.844913482666016, 4293.30517578125)
			r11_11arg = "Pirate"
		elseif game.PlaceId == 4442272183 then
			r9_9arg = "Mercenary"
			r10_10arg = CFrame.new(- 972.307373046875, 73.04473876953125, 1419.2901611328125)
			r11_11arg = "DressTown"
		elseif game.PlaceId == 7449423635 then
			r9_9arg = "Pirate Millionaire"
			r10_10arg = CFrame.new(- 289.6311950683594, 43.8282470703125, 5583.66357421875)
			r11_11arg = "Default"
		end
	elseif r8_8arg.SeliMarteriel == "Demonic Wisp" then
		r9_9arg = "Demonic Soul"
		r10_10arg = CFrame.new(- 9503.388671875, 172.139892578125, 6143.0634765625)
		r11_11arg = "HauntedCastle"
	elseif r8_8arg.SeliMarteriel == "Vampire Fang" then
		r9_9arg = "Vampire"
		r10_10arg = CFrame.new(- 5999.20458984375, 6.437741279602051, - 1290.059326171875)
		r11_11arg = "Graveyard"
	elseif r8_8arg.SeliMarteriel == "Conjured Cocoa" then
		r9_9arg = "Chocolate Bar Battler"
		r10_10arg = CFrame.new(744.7930908203125, 24.76934242248535, - 12637.7255859375)
		r11_11arg = "Chocolate"
	elseif r8_8arg.SeliMarteriel == "Dragon Scale" then
		r9_9arg = "Dragon Crew Warrior"
		r10_10arg = CFrame.new(5824.06982421875, 51.38640213012695, - 1106.694580078125)
		r11_11arg = "Hydra1"
	elseif r8_8arg.SeliMarteriel == "Gunpowder" then
		r9_9arg = "Pistol Billionaire"
		r10_10arg = CFrame.new(- 379.6134338378906, 73.84449768066406, 5928.5263671875)
		r11_11arg = "Default"
	elseif r8_8arg.SeliMarteriel == "Fish Tail" then
		r9_9arg = "Fishman Captain"
		r10_10arg = CFrame.new(- 10961.0126953125, 331.7977600097656, - 8914.29296875)
		r11_11arg = "PineappleTown"
	elseif r8_8arg.SeliMarteriel == "Mini Tusk" then
		r9_9arg = "Mythological Pirate"
		r10_10arg = CFrame.new(- 13516.0458984375, 469.8182373046875, - 6899.16064453125)
		r11_11arg = "BigMansion"
	end

end

------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------
function r12_12arg()
	for v153_args, v154_args in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if v154_args.Name ~= "Sea" then
					if not v154_args:FindFirstChild('NameEsp') then
						local v155_args = Instance.new('BillboardGui', v154_args)
						v155_args.Name = 'NameEsp'
						v155_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v155_args.Size = UDim2.new(1, 200, 1, 30)
						v155_args.Adornee = v154_args
						v155_args.AlwaysOnTop = true
						local v156_args = Instance.new('TextLabel', v155_args)
						v156_args.Font = "GothamBold"
						v156_args.FontSize = "Size14"
						v156_args.TextWrapped = true
						v156_args.Size = UDim2.new(1, 0, 1, 0)
						v156_args.TextYAlignment = 'Top'
						v156_args.BackgroundTransparency = 1
						v156_args.TextStrokeTransparency = 0.5
						v156_args.TextColor3 = Color3.fromRGB(255, 255, 255)
					else
						v154_args['NameEsp'].TextLabel.Text = (v154_args.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v154_args.Position).Magnitude / 3) .. ' Distance')
					end
				end
			else
				if v154_args:FindFirstChild('NameEsp') then
					v154_args:FindFirstChild('NameEsp'):Destroy()
				end
			end
		end)
	end
end

------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------

function r12_12arg()
	for v157_args, v158_args in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if v158_args.Name ~= "Sea" then
					if not v158_args:FindFirstChild('NameEsp') then
						local v159_args = Instance.new('BillboardGui', v158_args)
						v159_args.Name = 'NameEsp'
						v159_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v159_args.Size = UDim2.new(1, 200, 1, 30)
						v159_args.Adornee = v158_args
						v159_args.AlwaysOnTop = true
						local v160_args = Instance.new('TextLabel', v159_args)
						v160_args.Font = "GothamBold"
						v160_args.FontSize = "Size14"
						v160_args.TextWrapped = true
						v160_args.Size = UDim2.new(1, 0, 1, 0)
						v160_args.TextYAlignment = 'Top'
						v160_args.BackgroundTransparency = 1
						v160_args.TextStrokeTransparency = 0.5
						v160_args.TextColor3 = Color3.fromRGB(8, 0, 0)
					else
						v158_args['NameEsp'].TextLabel.Text = (v158_args.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v158_args.Position).Magnitude / 3) .. ' Distance')
					end
				end
			else
				if v158_args:FindFirstChild('NameEsp') then
					v158_args:FindFirstChild('NameEsp'):Destroy()
				end
			end
		end)
	end

end



function r13_13arg(v161_args)
	return (v161_args == nil)

end

local function v5_args(v162_args)
	return math.floor(tonumber(v162_args) + 0.5)

end

r14_14arg = math.random(1, 1000000)

function r15_15arg()
	for v163_args, v164_args in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not r13_13arg(v164_args.Character) then
				if ESPPlayer then
					if not r13_13arg(v164_args.Character.Head) and not v164_args.Character.Head:FindFirstChild('NameEsp' .. r14_14arg) then
						local v165_args = Instance.new('BillboardGui', v164_args.Character.Head)
						v165_args.Name = 'NameEsp' .. r14_14arg
						v165_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v165_args.Size = UDim2.new(1, 200, 1, 30)
						v165_args.Adornee = v164_args.Character.Head
						v165_args.AlwaysOnTop = true
						local v166_args = Instance.new('TextLabel', v165_args)
						v166_args.Font = Enum.Font.GothamSemibold
						v166_args.FontSize = "Size10"
						v166_args.TextWrapped = true
						v166_args.Text = (v164_args.Name .. ' \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v164_args.Character.Head.Position).Magnitude / 3) .. ' Distance')
						v166_args.Size = UDim2.new(1, 0, 1, 0)
						v166_args.TextYAlignment = 'Top'
						v166_args.BackgroundTransparency = 1
						v166_args.TextStrokeTransparency = 0.5
						if v164_args.Team == game.Players.LocalPlayer.Team then
							v166_args.TextColor3 = Color3.new(0, 0, 254)
						else
							v166_args.TextColor3 = Color3.new(255, 0, 0)
						end
					else
						v164_args.Character.Head['NameEsp' .. r14_14arg].TextLabel.Text = (v164_args.Name .. ' | ' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v164_args.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. v5_args(v164_args.Character.Humanoid.Health * 100 / v164_args.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v164_args.Character.Head:FindFirstChild('NameEsp' .. r14_14arg) then
						v164_args.Character.Head:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
					end
				end
			end
		end)
	end

end

function r16_16arg()
	for v167_args, v168_args in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v168_args.Name, "Chest") then
				if ChestESP then
					if string.find(v168_args.Name, "Chest") then
						if not v168_args:FindFirstChild('NameEsp' .. r14_14arg) then
							local v169_args = Instance.new('BillboardGui', v168_args)
							v169_args.Name = 'NameEsp' .. r14_14arg
							v169_args.ExtentsOffset = Vector3.new(0, 1, 0)
							v169_args.Size = UDim2.new(1, 200, 1, 30)
							v169_args.Adornee = v168_args
							v169_args.AlwaysOnTop = true
							local v170_args = Instance.new('TextLabel', v169_args)
							v170_args.Font = Enum.Font.GothamSemibold
							v170_args.FontSize = "Size14"
							v170_args.TextWrapped = true
							v170_args.Size = UDim2.new(1, 0, 1, 0)
							v170_args.TextYAlignment = 'Top'
							v170_args.BackgroundTransparency = 1
							v170_args.TextStrokeTransparency = 0.5
							if v168_args.Name == "Chest1" then
								v170_args.TextColor3 = Color3.fromRGB(109, 109, 109)
								v170_args.Text = ("Chest 1" .. ' \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v168_args.Position).Magnitude / 3) .. ' Distance')
							end
							if v168_args.Name == "Chest2" then
								v170_args.TextColor3 = Color3.fromRGB(173, 158, 21)
								v170_args.Text = ("Chest 2" .. ' \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v168_args.Position).Magnitude / 3) .. ' Distance')
							end
							if v168_args.Name == "Chest3" then
								v170_args.TextColor3 = Color3.fromRGB(85, 255, 255)
								v170_args.Text = ("Chest 3" .. ' \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v168_args.Position).Magnitude / 3) .. ' Distance')
							end
						else
							v168_args['NameEsp' .. r14_14arg].TextLabel.Text = (v168_args.Name .. '   \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v168_args.Position).Magnitude / 3) .. ' Distance')
						end
					end
				else
					if v168_args:FindFirstChild('NameEsp' .. r14_14arg) then
						v168_args:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
					end
				end
			end
		end)
	end

end

function r17_17arg()
	for v171_args, v172_args in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if r18_18arg then
				if string.find(v172_args.Name, "Fruit") then
					if not v172_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
						local v173_args = Instance.new('BillboardGui', v172_args.Handle)
						v173_args.Name = 'NameEsp' .. r14_14arg
						v173_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v173_args.Size = UDim2.new(1, 200, 1, 30)
						v173_args.Adornee = v172_args.Handle
						v173_args.AlwaysOnTop = true
						local v174_args = Instance.new('TextLabel', v173_args)
						v174_args.Font = Enum.Font.GothamSemibold
						v174_args.FontSize = "Size14"
						v174_args.TextWrapped = true
						v174_args.Size = UDim2.new(1, 0, 1, 0)
						v174_args.TextYAlignment = 'Top'
						v174_args.BackgroundTransparency = 1
						v174_args.TextStrokeTransparency = 0.5
						v174_args.TextColor3 = Color3.fromRGB(255, 255, 255)
						v174_args.Text = (v172_args.Name .. ' \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v172_args.Handle.Position).Magnitude / 3) .. ' Distance')
					else
						v172_args.Handle['NameEsp' .. r14_14arg].TextLabel.Text = (v172_args.Name .. '   \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v172_args.Handle.Position).Magnitude / 3) .. ' Distance')
					end
				end
			else
				if v172_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					v172_args.Handle:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
				end
			end
		end)
	end

end

function r19_19arg()
	for v175_args, v176_args in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v176_args.Name == "Flower2" or v176_args.Name == "Flower1" then
				if FlowerESP then
					if not v176_args:FindFirstChild('NameEsp' .. r14_14arg) then
						local v177_args = Instance.new('BillboardGui', v176_args)
						v177_args.Name = 'NameEsp' .. r14_14arg
						v177_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v177_args.Size = UDim2.new(1, 200, 1, 30)
						v177_args.Adornee = v176_args
						v177_args.AlwaysOnTop = true
						local v178_args = Instance.new('TextLabel', v177_args)
						v178_args.Font = Enum.Font.GothamSemibold
						v178_args.FontSize = "Size14"
						v178_args.TextWrapped = true
						v178_args.Size = UDim2.new(1, 0, 1, 0)
						v178_args.TextYAlignment = 'Top'
						v178_args.BackgroundTransparency = 1
						v178_args.TextStrokeTransparency = 0.5
						v178_args.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v176_args.Name == "Flower1" then
							v178_args.Text = ("Blue Flower" .. ' \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v176_args.Position).Magnitude / 3) .. ' Distance')
							v178_args.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v176_args.Name == "Flower2" then
							v178_args.Text = ("Red Flower" .. ' \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v176_args.Position).Magnitude / 3) .. ' Distance')
							v178_args.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v176_args['NameEsp' .. r14_14arg].TextLabel.Text = (v176_args.Name .. '   \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v176_args.Position).Magnitude / 3) .. ' Distance')
					end
				else
					if v176_args:FindFirstChild('NameEsp' .. r14_14arg) then
						v176_args:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
					end
				end
			end
		end)
	end

end

function r20_20arg()
	for v179_args, v180_args in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v180_args:IsA("Tool") then
			if RealFruitESP then
				if not v180_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					local v181_args = Instance.new('BillboardGui', v180_args.Handle)
					v181_args.Name = 'NameEsp' .. r14_14arg
					v181_args.ExtentsOffset = Vector3.new(0, 1, 0)
					v181_args.Size = UDim2.new(1, 200, 1, 30)
					v181_args.Adornee = v180_args.Handle
					v181_args.AlwaysOnTop = true
					local v182_args = Instance.new('TextLabel', v181_args)
					v182_args.Font = Enum.Font.GothamSemibold
					v182_args.FontSize = "Size14"
					v182_args.TextWrapped = true
					v182_args.Size = UDim2.new(1, 0, 1, 0)
					v182_args.TextYAlignment = 'Top'
					v182_args.BackgroundTransparency = 1
					v182_args.TextStrokeTransparency = 0.5
					v182_args.TextColor3 = Color3.fromRGB(255, 0, 0)
					v182_args.Text = (v180_args.Name .. ' \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v180_args.Handle.Position).Magnitude / 3) .. ' Distance')
				else
					v180_args.Handle['NameEsp' .. r14_14arg].TextLabel.Text = (v180_args.Name .. ' ' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v180_args.Handle.Position).Magnitude / 3) .. ' Distance')
				end
			else
				if v180_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					v180_args.Handle:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
				end
			end
		end
	end
	for v183_args, v184_args in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v184_args:IsA("Tool") then
			if RealFruitESP then
				if not v184_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					local v185_args = Instance.new('BillboardGui', v184_args.Handle)
					v185_args.Name = 'NameEsp' .. r14_14arg
					v185_args.ExtentsOffset = Vector3.new(0, 1, 0)
					v185_args.Size = UDim2.new(1, 200, 1, 30)
					v185_args.Adornee = v184_args.Handle
					v185_args.AlwaysOnTop = true
					local v186_args = Instance.new('TextLabel', v185_args)
					v186_args.Font = Enum.Font.GothamSemibold
					v186_args.FontSize = "Size14"
					v186_args.TextWrapped = true
					v186_args.Size = UDim2.new(1, 0, 1, 0)
					v186_args.TextYAlignment = 'Top'
					v186_args.BackgroundTransparency = 1
					v186_args.TextStrokeTransparency = 0.5
					v186_args.TextColor3 = Color3.fromRGB(255, 174, 0)
					v186_args.Text = (v184_args.Name .. ' \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v184_args.Handle.Position).Magnitude / 3) .. ' Distance')
				else
					v184_args.Handle['NameEsp' .. r14_14arg].TextLabel.Text = (v184_args.Name .. ' ' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v184_args.Handle.Position).Magnitude / 3) .. ' Distance')
				end
			else
				if v184_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					v184_args.Handle:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
				end
			end
		end
	end
	for v187_args, v188_args in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v188_args:IsA("Tool") then
			if RealFruitESP then
				if not v188_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					local v189_args = Instance.new('BillboardGui', v188_args.Handle)
					v189_args.Name = 'NameEsp' .. r14_14arg
					v189_args.ExtentsOffset = Vector3.new(0, 1, 0)
					v189_args.Size = UDim2.new(1, 200, 1, 30)
					v189_args.Adornee = v188_args.Handle
					v189_args.AlwaysOnTop = true
					local v190_args = Instance.new('TextLabel', v189_args)
					v190_args.Font = Enum.Font.GothamSemibold
					v190_args.FontSize = "Size14"
					v190_args.TextWrapped = true
					v190_args.Size = UDim2.new(1, 0, 1, 0)
					v190_args.TextYAlignment = 'Top'
					v190_args.BackgroundTransparency = 1
					v190_args.TextStrokeTransparency = 0.5
					v190_args.TextColor3 = Color3.fromRGB(251, 255, 0)
					v190_args.Text = (v188_args.Name .. ' \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v188_args.Handle.Position).Magnitude / 3) .. ' Distance')
				else
					v188_args.Handle['NameEsp' .. r14_14arg].TextLabel.Text = (v188_args.Name .. ' ' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v188_args.Handle.Position).Magnitude / 3) .. ' Distance')
				end
			else
				if v188_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					v188_args.Handle:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
				end
			end
		end
	end

end



function r12_12arg()
	for v191_args, v192_args in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
		pcall(function()
			if IslandESP then
				if v192_args.Name ~= "Sea" then
					if not v192_args:FindFirstChild('NameEsp') then
						local v193_args = Instance.new('BillboardGui', v192_args)
						v193_args.Name = 'NameEsp'
						v193_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v193_args.Size = UDim2.new(1, 200, 1, 30)
						v193_args.Adornee = v192_args
						v193_args.AlwaysOnTop = true
						local v194_args = Instance.new('TextLabel', v193_args)
						v194_args.Font = "GothamBold"
						v194_args.FontSize = "Size14"
						v194_args.TextWrapped = true
						v194_args.Size = UDim2.new(1, 0, 1, 0)
						v194_args.TextYAlignment = 'Top'
						v194_args.BackgroundTransparency = 1
						v194_args.TextStrokeTransparency = 0.5
						v194_args.TextColor3 = Color3.fromRGB(7, 236, 240)
					else
						v192_args['NameEsp'].TextLabel.Text = (v192_args.Name .. '   \n' .. v5_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v192_args.Position).Magnitude / 3) .. ' Distance')
					end
				end
			else
				if v192_args:FindFirstChild('NameEsp') then
					v192_args:FindFirstChild('NameEsp'):Destroy()
				end
			end
		end)
	end

end



function r13_13arg(v195_args)
	return (v195_args == nil)

end

local function v6_args(v196_args)
	return math.floor(tonumber(v196_args) + 0.5)

end

r14_14arg = math.random(1, 1000000)

function r15_15arg()
	for v197_args, v198_args in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not r13_13arg(v198_args.Character) then
				if ESPPlayer then
					if not r13_13arg(v198_args.Character.Head) and not v198_args.Character.Head:FindFirstChild('NameEsp' .. r14_14arg) then
						local v199_args = Instance.new('BillboardGui', v198_args.Character.Head)
						v199_args.Name = 'NameEsp' .. r14_14arg
						v199_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v199_args.Size = UDim2.new(1, 200, 1, 30)
						v199_args.Adornee = v198_args.Character.Head
						v199_args.AlwaysOnTop = true
						local v200_args = Instance.new('TextLabel', v199_args)
						v200_args.Font = Enum.Font.GothamSemibold
						v200_args.FontSize = "Size14"
						v200_args.TextWrapped = true
						v200_args.Text = (v198_args.Name .. ' \n' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v198_args.Character.Head.Position).Magnitude / 3) .. ' Distance')
						v200_args.Size = UDim2.new(1, 0, 1, 0)
						v200_args.TextYAlignment = 'Top'
						v200_args.BackgroundTransparency = 1
						v200_args.TextStrokeTransparency = 0.5
						if v198_args.Team == game.Players.LocalPlayer.Team then
							v200_args.TextColor3 = Color3.new(0, 255, 0)
						else
							v200_args.TextColor3 = Color3.new(255, 0, 0)
						end
					else
						v198_args.Character.Head['NameEsp' .. r14_14arg].TextLabel.Text = (v198_args.Name .. ' | ' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v198_args.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth : ' .. v6_args(v198_args.Character.Humanoid.Health * 100 / v198_args.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if v198_args.Character.Head:FindFirstChild('NameEsp' .. r14_14arg) then
						v198_args.Character.Head:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
					end
				end
			end
		end)
	end

end

function r16_16arg()
	for v201_args, v202_args in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if string.find(v202_args.Name, "Chest") then
				if ChestESP then
					if string.find(v202_args.Name, "Chest") then
						if not v202_args:FindFirstChild('NameEsp' .. r14_14arg) then
							local v203_args = Instance.new('BillboardGui', v202_args)
							v203_args.Name = 'NameEsp' .. r14_14arg
							v203_args.ExtentsOffset = Vector3.new(0, 1, 0)
							v203_args.Size = UDim2.new(1, 200, 1, 30)
							v203_args.Adornee = v202_args
							v203_args.AlwaysOnTop = true
							local v204_args = Instance.new('TextLabel', v203_args)
							v204_args.Font = Enum.Font.GothamSemibold
							v204_args.FontSize = "Size14"
							v204_args.TextWrapped = true
							v204_args.Size = UDim2.new(1, 0, 1, 0)
							v204_args.TextYAlignment = 'Top'
							v204_args.BackgroundTransparency = 1
							v204_args.TextStrokeTransparency = 0.5
							if v202_args.Name == "Chest1" then
								v204_args.TextColor3 = Color3.fromRGB(109, 109, 109)
								v204_args.Text = ("Chest 1" .. ' \n' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v202_args.Position).Magnitude / 3) .. ' Distance')
							end
							if v202_args.Name == "Chest2" then
								v204_args.TextColor3 = Color3.fromRGB(173, 158, 21)
								v204_args.Text = ("Chest 2" .. ' \n' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v202_args.Position).Magnitude / 3) .. ' Distance')
							end
							if v202_args.Name == "Chest3" then
								v204_args.TextColor3 = Color3.fromRGB(85, 255, 255)
								v204_args.Text = ("Chest 3" .. ' \n' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v202_args.Position).Magnitude / 3) .. ' Distance')
							end
						else
							v202_args['NameEsp' .. r14_14arg].TextLabel.Text = (v202_args.Name .. '   \n' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v202_args.Position).Magnitude / 3) .. ' Distance')
						end
					end
				else
					if v202_args:FindFirstChild('NameEsp' .. r14_14arg) then
						v202_args:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
					end
				end
			end
		end)
	end

end

function r17_17arg()
	for v205_args, v206_args in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if r18_18arg then
				if string.find(v206_args.Name, "Fruit") then
					if not v206_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
						local v207_args = Instance.new('BillboardGui', v206_args.Handle)
						v207_args.Name = 'NameEsp' .. r14_14arg
						v207_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v207_args.Size = UDim2.new(1, 200, 1, 30)
						v207_args.Adornee = v206_args.Handle
						v207_args.AlwaysOnTop = true
						local v208_args = Instance.new('TextLabel', v207_args)
						v208_args.Font = Enum.Font.GothamSemibold
						v208_args.FontSize = "Size14"
						v208_args.TextWrapped = true
						v208_args.Size = UDim2.new(1, 0, 1, 0)
						v208_args.TextYAlignment = 'Top'
						v208_args.BackgroundTransparency = 1
						v208_args.TextStrokeTransparency = 0.5
						v208_args.TextColor3 = Color3.fromRGB(255, 255, 255)
						v208_args.Text = (v206_args.Name .. ' \n' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v206_args.Handle.Position).Magnitude / 3) .. ' Distance')
					else
						v206_args.Handle['NameEsp' .. r14_14arg].TextLabel.Text = (v206_args.Name .. '   \n' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v206_args.Handle.Position).Magnitude / 3) .. ' Distance')
					end
				end
			else
				if v206_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					v206_args.Handle:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
				end
			end
		end)
	end

end

function r19_19arg()
	for v209_args, v210_args in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v210_args.Name == "Flower2" or v210_args.Name == "Flower1" then
				if FlowerESP then
					if not v210_args:FindFirstChild('NameEsp' .. r14_14arg) then
						local v211_args = Instance.new('BillboardGui', v210_args)
						v211_args.Name = 'NameEsp' .. r14_14arg
						v211_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v211_args.Size = UDim2.new(1, 200, 1, 30)
						v211_args.Adornee = v210_args
						v211_args.AlwaysOnTop = true
						local v212_args = Instance.new('TextLabel', v211_args)
						v212_args.Font = Enum.Font.GothamSemibold
						v212_args.FontSize = "Size14"
						v212_args.TextWrapped = true
						v212_args.Size = UDim2.new(1, 0, 1, 0)
						v212_args.TextYAlignment = 'Top'
						v212_args.BackgroundTransparency = 1
						v212_args.TextStrokeTransparency = 0.5
						v212_args.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v210_args.Name == "Flower1" then
							v212_args.Text = ("Blue Flower" .. ' \n' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v210_args.Position).Magnitude / 3) .. ' Distance')
							v212_args.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v210_args.Name == "Flower2" then
							v212_args.Text = ("Red Flower" .. ' \n' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v210_args.Position).Magnitude / 3) .. ' Distance')
							v212_args.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v210_args['NameEsp' .. r14_14arg].TextLabel.Text = (v210_args.Name .. '   \n' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v210_args.Position).Magnitude / 3) .. ' Distance')
					end
				else
					if v210_args:FindFirstChild('NameEsp' .. r14_14arg) then
						v210_args:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
					end
				end
			end
		end)
	end

end

function r20_20arg()
	for v213_args, v214_args in pairs(game.Workspace.AppleSpawner:GetChildren()) do
		if v214_args:IsA("Tool") then
			if RealFruitESP then
				if not v214_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					local v215_args = Instance.new('BillboardGui', v214_args.Handle)
					v215_args.Name = 'NameEsp' .. r14_14arg
					v215_args.ExtentsOffset = Vector3.new(0, 1, 0)
					v215_args.Size = UDim2.new(1, 200, 1, 30)
					v215_args.Adornee = v214_args.Handle
					v215_args.AlwaysOnTop = true
					local v216_args = Instance.new('TextLabel', v215_args)
					v216_args.Font = Enum.Font.GothamSemibold
					v216_args.FontSize = "Size14"
					v216_args.TextWrapped = true
					v216_args.Size = UDim2.new(1, 0, 1, 0)
					v216_args.TextYAlignment = 'Top'
					v216_args.BackgroundTransparency = 1
					v216_args.TextStrokeTransparency = 0.5
					v216_args.TextColor3 = Color3.fromRGB(255, 0, 0)
					v216_args.Text = (v214_args.Name .. ' \n' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v214_args.Handle.Position).Magnitude / 3) .. ' Distance')
				else
					v214_args.Handle['NameEsp' .. r14_14arg].TextLabel.Text = (v214_args.Name .. ' ' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v214_args.Handle.Position).Magnitude / 3) .. ' Distance')
				end
			else
				if v214_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					v214_args.Handle:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
				end
			end
		end
	end
	for v217_args, v218_args in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
		if v218_args:IsA("Tool") then
			if RealFruitESP then
				if not v218_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					local v219_args = Instance.new('BillboardGui', v218_args.Handle)
					v219_args.Name = 'NameEsp' .. r14_14arg
					v219_args.ExtentsOffset = Vector3.new(0, 1, 0)
					v219_args.Size = UDim2.new(1, 200, 1, 30)
					v219_args.Adornee = v218_args.Handle
					v219_args.AlwaysOnTop = true
					local v220_args = Instance.new('TextLabel', v219_args)
					v220_args.Font = Enum.Font.GothamSemibold
					v220_args.FontSize = "Size14"
					v220_args.TextWrapped = true
					v220_args.Size = UDim2.new(1, 0, 1, 0)
					v220_args.TextYAlignment = 'Top'
					v220_args.BackgroundTransparency = 1
					v220_args.TextStrokeTransparency = 0.5
					v220_args.TextColor3 = Color3.fromRGB(255, 174, 0)
					v220_args.Text = (v218_args.Name .. ' \n' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v218_args.Handle.Position).Magnitude / 3) .. ' Distance')
				else
					v218_args.Handle['NameEsp' .. r14_14arg].TextLabel.Text = (v218_args.Name .. ' ' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v218_args.Handle.Position).Magnitude / 3) .. ' Distance')
				end
			else
				if v218_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					v218_args.Handle:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
				end
			end
		end
	end
	for v221_args, v222_args in pairs(game.Workspace.BananaSpawner:GetChildren()) do
		if v222_args:IsA("Tool") then
			if RealFruitESP then
				if not v222_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					local v223_args = Instance.new('BillboardGui', v222_args.Handle)
					v223_args.Name = 'NameEsp' .. r14_14arg
					v223_args.ExtentsOffset = Vector3.new(0, 1, 0)
					v223_args.Size = UDim2.new(1, 200, 1, 30)
					v223_args.Adornee = v222_args.Handle
					v223_args.AlwaysOnTop = true
					local v224_args = Instance.new('TextLabel', v223_args)
					v224_args.Font = Enum.Font.GothamSemibold
					v224_args.FontSize = "Size14"
					v224_args.TextWrapped = true
					v224_args.Size = UDim2.new(1, 0, 1, 0)
					v224_args.TextYAlignment = 'Top'
					v224_args.BackgroundTransparency = 1
					v224_args.TextStrokeTransparency = 0.5
					v224_args.TextColor3 = Color3.fromRGB(251, 255, 0)
					v224_args.Text = (v222_args.Name .. ' \n' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v222_args.Handle.Position).Magnitude / 3) .. ' Distance')
				else
					v222_args.Handle['NameEsp' .. r14_14arg].TextLabel.Text = (v222_args.Name .. ' ' .. v6_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v222_args.Handle.Position).Magnitude / 3) .. ' Distance')
				end
			else
				if v222_args.Handle:FindFirstChild('NameEsp' .. r14_14arg) then
					v222_args.Handle:FindFirstChild('NameEsp' .. r14_14arg):Destroy()
				end
			end
		end
	end

end



spawn(function()
	while wait() do
		pcall(function()
			if MobESP then
				for v225_args, v226_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v226_args:FindFirstChild('HumanoidRootPart') then
						if not v226_args:FindFirstChild("MobEap") then
							local v228_args = Instance.new("BillboardGui")
							local v229_args = Instance.new("TextLabel")
							v228_args.Parent = v226_args
							v228_args.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
							v228_args.Active = true
							v228_args.Name = "MobEap"
							v228_args.AlwaysOnTop = true
							v228_args.LightInfluence = 1.000
							v228_args.Size = UDim2.new(0, 200, 0, 50)
							v228_args.StudsOffset = Vector3.new(0, 2.5, 0)
							v229_args.Parent = v228_args
							v229_args.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v229_args.BackgroundTransparency = 1.000
							v229_args.Size = UDim2.new(0, 200, 0, 50)
							v229_args.Font = Enum.Font.GothamBold
							v229_args.TextColor3 = Color3.fromRGB(7, 236, 240)
							v229_args.Text.Size = 35
						end
						local v227_args = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v226_args.HumanoidRootPart.Position).Magnitude)
						v226_args.MobEap.TextLabel.Text = v226_args.Name .. " - " .. v227_args .. " Distance"
					end
				end
			else
				for v230_args, v231_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v231_args:FindFirstChild("MobEap") then
						v231_args.MobEap:Destroy()
					end
				end
			end
		end)
	end

end)



spawn(function()
	while wait() do
		pcall(function()
			if SeaESP then
				for v232_args, v233_args in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
					if v233_args:FindFirstChild('HumanoidRootPart') then
						if not v233_args:FindFirstChild("Seaesps") then
							local v235_args = Instance.new("BillboardGui")
							local v236_args = Instance.new("TextLabel")
							v235_args.Parent = v233_args
							v235_args.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
							v235_args.Active = true
							v235_args.Name = "Seaesps"
							v235_args.AlwaysOnTop = true
							v235_args.LightInfluence = 1.000
							v235_args.Size = UDim2.new(0, 200, 0, 50)
							v235_args.StudsOffset = Vector3.new(0, 2.5, 0)
							v236_args.Parent = v235_args
							v236_args.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v236_args.BackgroundTransparency = 1.000
							v236_args.Size = UDim2.new(0, 200, 0, 50)
							v236_args.Font = Enum.Font.GothamBold
							v236_args.TextColor3 = Color3.fromRGB(7, 236, 240)
							v236_args.Text.Size = 35
						end
						local v234_args = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v233_args.HumanoidRootPart.Position).Magnitude)
						v233_args.Seaesps.TextLabel.Text = v233_args.Name .. " - " .. v234_args .. " Distance"
					end
				end
			else
				for v237_args, v238_args in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
					if v238_args:FindFirstChild("Seaesps") then
						v238_args.Seaesps:Destroy()
					end
				end
			end
		end)
	end

end)



spawn(function()
	while wait() do
		pcall(function()
			if NpcESP then
				for v239_args, v240_args in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
					if v240_args:FindFirstChild('HumanoidRootPart') then
						if not v240_args:FindFirstChild("NpcEspes") then
							local v242_args = Instance.new("BillboardGui")
							local v243_args = Instance.new("TextLabel")
							v242_args.Parent = v240_args
							v242_args.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
							v242_args.Active = true
							v242_args.Name = "NpcEspes"
							v242_args.AlwaysOnTop = true
							v242_args.LightInfluence = 1.000
							v242_args.Size = UDim2.new(0, 200, 0, 50)
							v242_args.StudsOffset = Vector3.new(0, 2.5, 0)
							v243_args.Parent = v242_args
							v243_args.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v243_args.BackgroundTransparency = 1.000
							v243_args.Size = UDim2.new(0, 200, 0, 50)
							v243_args.Font = Enum.Font.GothamBold
							v243_args.TextColor3 = Color3.fromRGB(7, 236, 240)
							v243_args.Text.Size = 35
						end
						local v241_args = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v240_args.HumanoidRootPart.Position).Magnitude)
						v240_args.NpcEspes.TextLabel.Text = v240_args.Name .. " - " .. v241_args .. " Distance"
					end
				end
			else
				for v244_args, v245_args in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
					if v245_args:FindFirstChild("NpcEspes") then
						v245_args.NpcEspes:Destroy()
					end
				end
			end
		end)
	end

end)



function r13_13arg(v246_args)
	return (v246_args == nil)

end

local function v7_args(v247_args)
	return math.floor(tonumber(v247_args) + 0.5)

end

r14_14arg = math.random(1, 1000000)



function r21_21arg()
	for v248_args, v249_args in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
		pcall(function()
			if MirageIslandESP then
				if v249_args.Name == "Mirage Island" then
					if not v249_args:FindFirstChild('NameEsp') then
						local v250_args = Instance.new('BillboardGui', v249_args)
						v250_args.Name = 'NameEsp'
						v250_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v250_args.Size = UDim2.new(1, 200, 1, 30)
						v250_args.Adornee = v249_args
						v250_args.AlwaysOnTop = true
						local v251_args = Instance.new('TextLabel', v250_args)
						v251_args.Font = "Code"
						v251_args.FontSize = "Size14"
						v251_args.TextWrapped = true
						v251_args.Size = UDim2.new(1, 0, 1, 0)
						v251_args.TextYAlignment = 'Top'
						v251_args.BackgroundTransparency = 1
						v251_args.TextStrokeTransparency = 0.5
						v251_args.TextColor3 = Color3.fromRGB(80, 245, 245)
					else
						v249_args['NameEsp'].TextLabel.Text = (v249_args.Name .. '   \n' .. v7_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v249_args.Position).Magnitude / 3) .. ' M')
					end
				end
			else
				if v249_args:FindFirstChild('NameEsp') then
					v249_args:FindFirstChild('NameEsp'):Destroy()
				end
			end
		end)
	end

end



function r13_13arg(v252_args)
	return (v252_args == nil)

end

local function v8_args(v253_args)
	return math.floor(tonumber(v253_args) + 0.5)

end

r14_14arg = math.random(1, 1000000)



function r22_22arg()
	for v254_args, v255_args in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
		pcall(function()
			if AfdESP then
				if v255_args.Name == "Advanced Fruit Dealer" then
					if not v255_args:FindFirstChild('NameEsp') then
						local v256_args = Instance.new('BillboardGui', v255_args)
						v256_args.Name = 'NameEsp'
						v256_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v256_args.Size = UDim2.new(1, 200, 1, 30)
						v256_args.Adornee = v255_args
						v256_args.AlwaysOnTop = true
						local v257_args = Instance.new('TextLabel', v256_args)
						v257_args.Font = "Code"
						v257_args.FontSize = "Size14"
						v257_args.TextWrapped = true
						v257_args.Size = UDim2.new(1, 0, 1, 0)
						v257_args.TextYAlignment = 'Top'
						v257_args.BackgroundTransparency = 1
						v257_args.TextStrokeTransparency = 0.5
						v257_args.TextColor3 = Color3.fromRGB(80, 245, 245)
					else
						v255_args['NameEsp'].TextLabel.Text = (v255_args.Name .. '   \n' .. v8_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v255_args.Position).Magnitude / 3) .. ' M')
					end
				end
			else
				if v255_args:FindFirstChild('NameEsp') then
					v255_args:FindFirstChild('NameEsp'):Destroy()
				end
			end
		end)
	end

end



function r23_23arg()
	for v258_args, v259_args in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
		pcall(function()
			if AuraESP then
				if v259_args.Name == "Master of Enhancement" then
					if not v259_args:FindFirstChild('NameEsp') then
						local v260_args = Instance.new('BillboardGui', v259_args)
						v260_args.Name = 'NameEsp'
						v260_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v260_args.Size = UDim2.new(1, 200, 1, 30)
						v260_args.Adornee = v259_args
						v260_args.AlwaysOnTop = true
						local v261_args = Instance.new('TextLabel', v260_args)
						v261_args.Font = "Code"
						v261_args.FontSize = "Size14"
						v261_args.TextWrapped = true
						v261_args.Size = UDim2.new(1, 0, 1, 0)
						v261_args.TextYAlignment = 'Top'
						v261_args.BackgroundTransparency = 1
						v261_args.TextStrokeTransparency = 0.5
						v261_args.TextColor3 = Color3.fromRGB(80, 245, 245)
					else
						v259_args['NameEsp'].TextLabel.Text = (v259_args.Name .. '   \n' .. v8_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v259_args.Position).Magnitude / 3) .. ' M')
					end
				end
			else
				if v259_args:FindFirstChild('NameEsp') then
					v259_args:FindFirstChild('NameEsp'):Destroy()
				end
			end
		end)
	end

end



function r24_24arg()
	for v262_args, v263_args in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
		pcall(function()
			if LADESP then
				if v263_args.Name == "Legendary Sword Dealer" then
					if not v263_args:FindFirstChild('NameEsp') then
						local v264_args = Instance.new('BillboardGui', v263_args)
						v264_args.Name = 'NameEsp'
						v264_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v264_args.Size = UDim2.new(1, 200, 1, 30)
						v264_args.Adornee = v263_args
						v264_args.AlwaysOnTop = true
						local v265_args = Instance.new('TextLabel', v264_args)
						v265_args.Font = "Code"
						v265_args.FontSize = "Size14"
						v265_args.TextWrapped = true
						v265_args.Size = UDim2.new(1, 0, 1, 0)
						v265_args.TextYAlignment = 'Top'
						v265_args.BackgroundTransparency = 1
						v265_args.TextStrokeTransparency = 0.5
						v265_args.TextColor3 = Color3.fromRGB(80, 245, 245)
					else
						v263_args['NameEsp'].TextLabel.Text = (v263_args.Name .. '   \n' .. v8_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v263_args.Position).Magnitude / 3) .. ' M')
					end
				end
			else
				if v263_args:FindFirstChild('NameEsp') then
					v263_args:FindFirstChild('NameEsp'):Destroy()
				end
			end
		end)
	end

end



function r25_25arg()
	for v266_args, v267_args in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
		pcall(function()
			if GearESP then
				if v267_args.Name == "MeshPart" then
					if not v267_args:FindFirstChild('NameEsp') then
						local v268_args = Instance.new('BillboardGui', v267_args)
						v268_args.Name = 'NameEsp'
						v268_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v268_args.Size = UDim2.new(1, 200, 1, 30)
						v268_args.Adornee = v267_args
						v268_args.AlwaysOnTop = true
						local v269_args = Instance.new('TextLabel', v268_args)
						v269_args.Font = "Code"
						v269_args.FontSize = "Size14"
						v269_args.TextWrapped = true
						v269_args.Size = UDim2.new(1, 0, 1, 0)
						v269_args.TextYAlignment = 'Top'
						v269_args.BackgroundTransparency = 1
						v269_args.TextStrokeTransparency = 0.5
						v269_args.TextColor3 = Color3.fromRGB(80, 245, 245)
					else
						v267_args['NameEsp'].TextLabel.Text = (v267_args.Name .. '   \n' .. v8_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v267_args.Position).Magnitude / 3) .. ' M')
					end
				end
			else
				if v267_args:FindFirstChild('NameEsp') then
					v267_args:FindFirstChild('NameEsp'):Destroy()
				end
			end
		end)
	end

end

local v9_args = "Rise Hub Update 1"

local v10_args = v9_args .. "/Setting.json"

function r26_26arg()
	local v270_args = game:GetService("HttpService")
	local v271_args = v270_args:JSONEncode(r8_8arg)
	if true then
		if isfolder(v9_args) then
			if isfile(v10_args) then
				writefile(v10_args, v271_args)
			else
				writefile(v10_args, v271_args)
			end
		else
			makefolder(v9_args)
		end
	end

end

function r27_27arg()
	local v272_args = game:GetService("HttpService")
	if isfolder(v9_args) then
		if isfile(v10_args) then
			r8_8arg = v272_args:JSONDecode(readfile(v10_args))
		end
	end

end
function r28_28arg()
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
end
function r29_29arg(v273_args)
	if game.Players.LocalPlayer.Character:FindFirstChild(v273_args) then
		r8_8arg.NotAutoEquip = true
		wait(.5)
		game.Players.LocalPlayer.Character:FindFirstChild(v273_args).Parent = game.Players.LocalPlayer.Backpack
		wait(.1)
		r8_8arg.NotAutoEquip = false
	end
end
function r30_30arg(v274_args)
	if not game.Players.LocalPlayer.Character:FindFirstChild(v274_args) then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(v274_args) then
			r31_31arg = game.Players.LocalPlayer.Backpack:FindFirstChild(v274_args)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(r31_31arg)
		end
	end
end

function r32_32arg()
	pcall(function()
		for v275_args, v276_args in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v276_args:IsA('Tool') and not (v276_args.Name == "Summon Sea Beast" or v276_args.Name == "Water Body" or v276_args.Name == "Awakening") then
				local v277_args = game.Players.LocalPlayer.Backpack:FindFirstChild(v276_args.Name)
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v277_args)
				wait(1)
			end
		end
	end)
end    

function r7_7arg()
	if r8_8arg.SeliMarteriel == "Radioactive Material" then
		r9_9arg = "Factory Staff"
		r10_10arg = CFrame.new(- 507.7895202636719, 72.99479675292969, - 126.45632934570312)
		r11_11arg = "Bar"
	elseif r8_8arg.SeliMarteriel == "Mystic Droplet" then
		r9_9arg = "Water Fighter"
		r10_10arg = CFrame.new(- 3214.218017578125, 298.69952392578125, - 10543.685546875)
		r11_11arg = "ForgottenIsland"
	elseif r8_8arg.SeliMarteriel == "Magma Ore" then
		if game.PlaceId == 2753915549 then
			r9_9arg = "Military Spy"
			r10_10arg = CFrame.new(- 5850.2802734375, 77.28675079345703, 8848.6748046875)
			r11_11arg = "Magma"
		elseif game.PlaceId == 4442272183 then
			r9_9arg = "Lava Pirate"
			r10_10arg = CFrame.new(- 5234.60595703125, 51.953372955322266, - 4732.27880859375)
			r11_11arg = "CircleIslandFire"
		end
	elseif r8_8arg.SeliMarteriel == "Angel Wings" then
		r9_9arg = "Royal Soldier"
		r10_10arg = CFrame.new(- 7827.15625, 5606.912109375, - 1705.5833740234375)
		r11_11arg = "Sky2"
	elseif r8_8arg.SeliMarteriel == "Leather" then
		if game.PlaceId == 2753915549 then
			r9_9arg = "Pirate"
			r10_10arg = CFrame.new(- 1211.8792724609375, 4.787090301513672, 3916.83056640625)
			r11_11arg = "Pirate"
		elseif game.PlaceId == 4442272183 then
			r9_9arg = "Marine Captain"
			r10_10arg = CFrame.new(- 2010.5059814453125, 73.00115966796875, - 3326.620849609375)
			r11_11arg = "Greenb"
		elseif game.PlaceId == 7449423635 then
			r9_9arg = "Jungle Pirate"
			r10_10arg = CFrame.new(- 11975.78515625, 331.7734069824219, - 10620.0302734375)
			r11_11arg = "PineappleTown"
		end
	elseif r8_8arg.SeliMarteriel == "Scrap Metal" then
		if game.PlaceId == 2753915549 then
			r9_9arg = "Brute"
			r10_10arg = CFrame.new(- 1132.4202880859375, 14.844913482666016, 4293.30517578125)
			r11_11arg = "Pirate"
		elseif game.PlaceId == 4442272183 then
			r9_9arg = "Mercenary"
			r10_10arg = CFrame.new(- 972.307373046875, 73.04473876953125, 1419.2901611328125)
			r11_11arg = "DressTown"
		elseif game.PlaceId == 7449423635 then
			r9_9arg = "Pirate Millionaire"
			r10_10arg = CFrame.new(- 289.6311950683594, 43.8282470703125, 5583.66357421875)
			r11_11arg = "Default"
		end
	elseif r8_8arg.SeliMarteriel == "Demonic Wisp" then
		r9_9arg = "Demonic Soul"
		r10_10arg = CFrame.new(- 9503.388671875, 172.139892578125, 6143.0634765625)
		r11_11arg = "HauntedCastle"
	elseif r8_8arg.SeliMarteriel == "Vampire Fang" then
		r9_9arg = "Vampire"
		r10_10arg = CFrame.new(- 5999.20458984375, 6.437741279602051, - 1290.059326171875)
		r11_11arg = "Graveyard"
	elseif r8_8arg.SeliMarteriel == "Conjured Cocoa" then
		r9_9arg = "Chocolate Bar Battler"
		r10_10arg = CFrame.new(744.7930908203125, 24.76934242248535, - 12637.7255859375)
		r11_11arg = "Chocolate"
	elseif r8_8arg.SeliMarteriel == "Dragon Scale" then
		r9_9arg = "Dragon Crew Warrior"
		r10_10arg = CFrame.new(5824.06982421875, 51.38640213012695, - 1106.694580078125)
		r11_11arg = "Hydra1"
	elseif r8_8arg.SeliMarteriel == "Gunpowder" then
		r9_9arg = "Pistol Billionaire"
		r10_10arg = CFrame.new(- 379.6134338378906, 73.84449768066406, 5928.5263671875)
		r11_11arg = "Default"
	elseif r8_8arg.SeliMarteriel == "Fish Tail" then
		r9_9arg = "Fishman Captain"
		r10_10arg = CFrame.new(- 10961.0126953125, 331.7977600097656, - 8914.29296875)
		r11_11arg = "PineappleTown"
	elseif r8_8arg.SeliMarteriel == "Mini Tusk" then
		r9_9arg = "Mythological Pirate"
		r10_10arg = CFrame.new(- 13516.0458984375, 469.8182373046875, - 6899.16064453125)
		r11_11arg = "BigMansion"
	end

end



local v11_args = game.Players

local v12_args = v11_args.LocalPlayer

local v13_args = v12_args.Character

local v14_args = v13_args.HumanoidRootPart

r33_33arg = game.Players



r34_34arg = 0



r35_35arg = r3_3arg and 3 or r2_2arg and 2 or r1_1arg and 1 or v12_args:Kick("Didn't update this Sea")

r36_36arg = {
	{
		["Sky3"] = Vector3.new(-7894, 5547, -380),
		["Sky3Exit"] = Vector3.new(-4607, 874, -1667),
		["UnderWater"] = Vector3.new(61163, 11, 1819),
		["UnderwaterExit"] = Vector3.new(4050, -1, -1814),
	},
	{
		["Swan Mansion"] = Vector3.new(-390, 332, 673),
		["Swan Room"] = Vector3.new(2285, 15, 905),
		["Cursed Ship"] = Vector3.new(923, 126, 32852),
		["Zombie Island"] = Vector3.new(-6509, 83, -133),
	},
	{
		["Floating Turtle"] = Vector3.new(-12462, 375, -7552),
		["Hydra Island"] = Vector3.new(5745, 610, -267),
		["Mansion"] = Vector3.new(-12462, 375, -7552),
		["Castle"] = Vector3.new(-5036, 315, -3179),
		["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
		["Beautiful Room"] = Vector3.new(5314.58203, 22.5364361, - 125.942276, 1, 2.14762768e-08, - 1.99111154e-13, - 2.14762768e-08, 1, - 3.0510602e-08, 1.98455903e-13, 3.0510602e-08, 1),
		["Temple of Time"] = Vector3.new(28286, 14897, 103),
	}

}



r37_37arg = function(v278_args, v279_args, v280_args)
	local v281_args = Vector3.new(v278_args.X, not v280_args and v278_args.Y or 0, v278_args.Z)
	local v282_args, v283_args = pcall(function()
		if not v279_args then
			while true do
				local v285_args = v12_args.Character and v12_args.Character:FindFirstChild("HumanoidRootPart")
				if v285_args and v285_args.Position then
					v279_args = v285_args.Position
					break
				end
				wait(.5)
			end
		end
		local v284_args = Vector3.new(v279_args.X, not v280_args and v279_args.Y or 0, v279_args.Z)
		return (v281_args - v284_args).magnitude
	end)
	if v282_args then
		return v283_args
	else
		warn("Dist", v283_args)
		return nil
	end

end



r38_38arg = function(v286_args, v287_args)
	local v288_args, v289_args = nil, 0
	if v287_args then
		if r37_37arg(v286_args, v287_args.Position, true) <= (v287_args.Mesh.Scale.X / 2) + 500 then
			return v287_args
		end
	end
	for v290_args, v291_args in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
		if r37_37arg(v286_args, v291_args.Position, true) <= (v291_args.Mesh.Scale.X / 2) + 500 then
			if v289_args < v291_args.Mesh.Scale.X then
				v289_args = v291_args.Mesh.Scale.X
				v288_args = v291_args
			end
		end
	end
	return v288_args

end



function r39_39arg()
	return v12_args.PlayerGui.Main.Timer.Visible or StartingRaid

end



function r40_40arg()
	local v292_args = v12_args.Backpack:GetChildren()
	for v294_args = 1, # v292_args do
		local v295_args = v292_args[v294_args]
		if v295_args.Name:lower():find("fruit") then
			return true
		end
	end
	local v293_args = v12_args.Character:GetChildren()
	for v296_args = 1, # v293_args do
		local v297_args = v293_args[v296_args]
		if v297_args:IsA("Tool") and v297_args.Name:lower():find("fruit") then
			return true
		end
	end

end



local v15_args = loadstring(game:HttpGet('https://raw.githubusercontent.com/hajibeza/Module/main/network.lua'))()



r41_41arg = game:GetService("CollectionService")



r42_42arg = function(...)
	local v298_args = {
		...
	}
	local v299_args = v15_args:Send("CommF_", ...)
	if v298_args[1] == "requestEntrance" then
		r41_41arg:AddTag(v12_args, "Teleporting")
		task.delay(3, function()
			r41_41arg:RemoveTag(v12_args, "Teleporting")
		end)
		wait(.25)
	end
	return v299_args

end



function r43_43arg(...)
	local function v300_args(v305_args)
		if typeof(v305_args) == "Vector3" then
			return CFrame.new(v305_args)
		elseif typeof(v305_args) == "CFrame" then
			return v305_args
		else
			return nil
		end
	end
	local v301_args = v300_args(...)
	if not v12_args.Character:FindFirstChild("HumanoidRootPart") then
		return
	end
	if r44_44arg then
		return
	end
	local v302_args
	local v303_args, v304_args = pcall(function()
		local v306_args, v307_args, v308_args = r37_37arg(v301_args, nil, true), 1 / 0
		if v12_args.Character:FindFirstChild("HumanoidRootPart") and v306_args >= 2000 and tick() - r34_34arg > 5 then
			for v309_args, v310_args in pairs(r36_36arg[r35_35arg]) do
				local v311_args = r37_37arg(v310_args, v301_args, true)
				if v311_args < r37_37arg(v301_args, nil, true) and v311_args < v307_args then
					v307_args, v308_args = v311_args, v310_args
				end
			end
			if v308_args and r38_38arg(v12_args.Character.HumanoidRootPart.Position) ~= r38_38arg(v308_args) and not r39_39arg() then
				r42_42arg("requestEntrance", v308_args)
			end
			if v12_args.Character:FindFirstChild("HumanoidRootPart") and not r39_39arg() and not r40_40arg() and r8_8arg.ResetTP then
				local v312_args = r38_38arg(v301_args.p)
				local v313_args = r38_38arg(v12_args.Character.HumanoidRootPart.Position)
				local v314_args = workspace["_WorldOrigin"].PlayerSpawns[v12_args.Team.Name]:GetChildren()
				local v315_args, v316_args, v317_args, v318_args = 2000, 9000
				for v320_args, v321_args in pairs(v314_args) do
					local v322_args = v321_args:GetPivot().p
					local v323_args = r37_37arg(v301_args.p, v322_args, true)
					if v323_args <= v315_args then
						v317_args = r37_37arg(v322_args, nil, true)
						v315_args, v318_args = v323_args, v321_args
					end
				end
				wait(.5)
				local v319_args = r37_37arg(v301_args, nil, true)
				if v318_args and (v317_args <= 9200) and v319_args >= 2000 then
					if not v12_args.Character:FindFirstChild("Humanoid") then
						return
					end
					if not v12_args.Character:FindFirstChild("HumanoidRootPart") then
						return
					end
					if v12_args.Character.HumanoidRootPart:FindFirstChild("Died") then
						v12_args.Character.HumanoidRootPart.Died:Destroy()
					end
					repeat
						task.wait(0.01)
						pcall(task.spawn, r42_42arg, "SetLastSpawnPoint", v318_args.Name)
					until v12_args.Data.LastSpawnPoint.Value == v318_args.Name
					pcall(function()
						v12_args.Character.Humanoid:ChangeState(15)
					end)
					repeat
						wait(.1)
					until v12_args.Character.HumanoidRootPart.Parent
				end
			end
		end
		if r45_45arg and r46_46arg and (r37_37arg(v301_args, r46_46arg) < 10 or r37_37arg(r46_46arg) >= 10) then
			return
		end
		r47_47arg = (r47_47arg or 0) + 1
		r46_46arg = v301_args
		v302_args = r47_47arg
		r48_48arg = require(game:GetService("ReplicatedStorage").Util)
		if r48_48arg.FPSTracker.FPS > 60 then
			setfpscap(200)
		end
		task.spawn(pcall, function()
			r49_49arg = {
				tick(),
				v301_args
			}
			local v324_args = r37_37arg(v12_args.Character.HumanoidRootPart.Position, v301_args, true)
			local v325_args = v324_args
			v12_args.Character.Humanoid:SetStateEnabled(13, false)
			if getgenv().TweenPosY then
				if v324_args > 60 then
					v12_args.Character.HumanoidRootPart.CFrame = CFrame.new(v12_args.Character.HumanoidRootPart.Position.X, v12_args.Character.HumanoidRootPart.Position.Y + 200, v12_args.Character.HumanoidRootPart.Position.Z)
				else
					v12_args.Character.HumanoidRootPart.CFrame = CFrame.new(v301_args.Position.X, v301_args.Position.Y, v301_args.Position.Z)
				end
			else
				v12_args.Character.HumanoidRootPart.CFrame = CFrame.new(v12_args.Character.HumanoidRootPart.CFrame.X, v301_args.Y, v12_args.Character.HumanoidRootPart.CFrame.Z)
			end
			while v12_args.Character:FindFirstChild("HumanoidRootPart") and v324_args > 75 and v302_args == r47_47arg and v12_args.Character.Humanoid.Health > 0 do
				local v326_args = (58 / math.clamp(r48_48arg.FPSTracker.FPS, 0, 60))
				local v327_args = 6 * v326_args
				local v328_args = v12_args.Character.HumanoidRootPart.Position
				local v329_args = Vector3.new(v301_args.X, 0, v301_args.Z) - Vector3.new(v328_args.X, 0, v328_args.Z)
				local v330_args = (v329_args.X < 0 and -1 or 1) * v327_args
				local v331_args = (v329_args.Z < 0 and -1 or 1) * v327_args
				local v332_args = math.abs(v329_args.X) < v330_args and v329_args.X or v330_args
				local v333_args = math.abs(v329_args.Z) < v331_args and v329_args.Z or v331_args
				task.spawn(function()
					v324_args = r37_37arg(v12_args.Character.HumanoidRootPart.Position, v301_args, true)
					if v324_args > v325_args + 10 then
						r47_47arg = -1
						r44_44arg = true
						v12_args.Character.HumanoidRootPart.Anchored = true
						wait(1)
						r44_44arg = false
						v12_args.Character.HumanoidRootPart.Anchored = false
					end
					v325_args = v324_args
				end)
				v12_args.Character.HumanoidRootPart.CFrame = v12_args.Character.HumanoidRootPart.CFrame + Vector3.new(math.abs(v333_args) < (5 * v326_args) and v332_args or v332_args / 1.5, 0, math.abs(v332_args) < (5 * v326_args) and v333_args or v333_args / 1.5)
				r45_45arg = true
				task.wait()
			end
			v12_args.Character.Humanoid:SetStateEnabled(13, true)
			r45_45arg = false
			if v324_args <= 100 and v302_args == r47_47arg then
				v12_args.Character.HumanoidRootPart.CFrame = v301_args
			end
		end)
	end)
	if not v303_args then
		warn("TP :", v304_args)
	end
	return v302_args

end

function r50_50arg(v334_args)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v334_args
end
spawn(function()
	while task.wait() do
		pcall(function()
			if getgenv().AutoRipChan or r8_8arg.FimiMarteriu or r51_51arg or r8_8arg.AutoAdvanceDungeon or r8_8arg.RaceCua or r8_8arg.TweenToKitsune or getgenv().NormalFarm or r8_8arg.ChichKatane or getgenv().NearMob or r8_8arg.Trylux or r8_8arg.Pray or r8_8arg.LetV4 or r8_8arg.AutuTouchHaki or getgenv().AutoKata or r8_8arg.Auto_DungeonMobAura or r8_8arg.AutoFarmChest or r8_8arg.AutoFarmBossHallow or r8_8arg.AutoFarmSwanGlasses or r8_8arg.AutoLongSword or r8_8arg.AutoBlackSpikeycoat or r8_8arg.AutoElectricClaw or r8_8arg.AutoFarmGunMastery or getgenv().touchbad or r8_8arg.AutoLawRaid or r8_8arg.AutoFarmBoss or r8_8arg.AutoTwinHooks or r8_8arg.AutoOpenSwanDoor or r8_8arg.AutoDragon_Trident or r52_52arg or r8_8arg.NOCLIP or r8_8arg.AutoFarmFruitMastery or r8_8arg.AutoFarmGunMastery or r8_8arg.TeleportIsland or r8_8arg.Auto_EvoRace or r8_8arg.AutoFarmAllMsBypassType or r8_8arg.AutoObservationv2 or r8_8arg.AutoMusketeerHat or r8_8arg.AutoEctoplasm or r8_8arg.AutoRengoku or r8_8arg.Auto_Rainbow_Haki or r8_8arg.AutoObservation or r8_8arg.KillFishCrew or r8_8arg.KillTerrorShark or r8_8arg.KillShark or r8_8arg.KillPiranha or r8_8arg.RipIndraKill or r8_8arg.Safe_Mode or r8_8arg.MasteryFruit or r8_8arg.AutoBudySword or r8_8arg.AutoOderSword or r8_8arg.AutoBounty or r8_8arg.AutoAllBoss or r8_8arg.Auto_Bounty or r8_8arg.AutoSharkman or r8_8arg.Auto_Mastery_Fruit or r8_8arg.Auto_Mastery_Gun or r8_8arg.Auto_Dungeon or r8_8arg.Auto_Cavender or r8_8arg.AutoSeaBest or r8_8arg.Auto_Pole or r8_8arg.Auto_Kill_Ply or r8_8arg.Auto_Factory or r8_8arg.AutoSecondSea or r8_8arg.TeleportPly or r8_8arg.AutoBartilo or r8_8arg.UnknownBoss or r8_8arg.GrabChest or r8_8arg.AutoFarmBounty or r8_8arg.Holy_Torch or getgenv().NormalFarm or r8_8arg.Clip or r8_8arg.AutoElitehunter or r8_8arg.AutoThirdSea or r8_8arg.Auto_Bone or PirateShip or r8_8arg.Autoheart or r8_8arg.Autodoughking or r8_8arg.AutoFarmMaterial or r8_8arg.QuestSoulGuitar or r8_8arg.Auto_Dragon_Trident or r8_8arg.Autotushita or r8_8arg.d or r8_8arg.Autowaden or r8_8arg.Autogay or r8_8arg.Autopole or r8_8arg.Autosaw or r8_8arg.AutoObservationHakiV2 or r8_8arg.AutoFarmNearest or AutoFarmChest or r8_8arg.AutoCarvender or r8_8arg.AutoTwinHook or AutoMobAura or r8_8arg.Tweenfruit or r8_8arg.AutoKai or r8_8arg.TeleportNPC or r8_8arg.Leather or r8_8arg.Auto_Wing or r8_8arg.Umm or r8_8arg.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or r8_8arg.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or r8_8arg.AutoFarmMob or getgenv().secretis or r8_8arg.AutoFarmDungeon or r8_8arg.AutoRaidPirate or r8_8arg.AutoQuestRace or getgenv().HeyGearComeHere or getgenv().AutoFarm or r8_8arg.RaidPirate or r8_8arg.AutoPlayerHunter or r8_8arg.AutoFactory or Grab_Chest or r53_53arg or KillPlayer or KillPlayerSpam or r8_8arg.SeaBeasts1 then
				if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local v335_args = Instance.new("BodyVelocity")
					v335_args.Name = "BodyClip"
					v335_args.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
					v335_args.MaxForce = Vector3.new(100000, 100000, 100000)
					v335_args.Velocity = Vector3.new(0, 0, 0)
				end
			else
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
			end
		end)
	end
end)

spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if getgenv().AutoRipChan or r8_8arg.FimiMarteriu or r51_51arg or r8_8arg.AutoAdvanceDungeon or r8_8arg.RaceCua or r8_8arg.TweenToKitsune or r8_8arg.ChichKatane or getgenv().NormalFarm or getgenv().NearMob or r8_8arg.Trylux or r8_8arg.Pray or r8_8arg.LetV4 or r8_8arg.AutuTouchHaki or getgenv().AutoKata or r8_8arg.Auto_DungeonMobAura or r8_8arg.AutoFarmChest or r8_8arg.AutoFarmBossHallow or r8_8arg.AutoFarmSwanGlasses or r8_8arg.AutoLongSword or r8_8arg.AutoBlackSpikeycoat or r8_8arg.AutoElectricClaw or r8_8arg.AutoFarmGunMastery or getgenv().touchbad or r8_8arg.AutoLawRaid or r8_8arg.AutoFarmBoss or r8_8arg.AutoTwinHooks or r8_8arg.AutoOpenSwanDoor or r8_8arg.AutoDragon_Trident or r52_52arg or r8_8arg.NOCLIP or r8_8arg.AutoFarmFruitMastery or r8_8arg.AutoFarmGunMastery or r8_8arg.TeleportIsland or r8_8arg.Auto_EvoRace or r8_8arg.AutoFarmAllMsBypassType or r8_8arg.AutoObservationv2 or r8_8arg.AutoMusketeerHat or r8_8arg.AutoEctoplasm or r8_8arg.KillFishCrew or r8_8arg.KillTerrorShark or r8_8arg.KillShark or r8_8arg.KillPiranha or r8_8arg.AutoRengoku or r8_8arg.Auto_Rainbow_Haki or r8_8arg.AutoObservation or r8_8arg.RipIndraKill or r8_8arg.Safe_Mode or r8_8arg.MasteryFruit or r8_8arg.AutoBudySword or r8_8arg.AutoOderSword or r8_8arg.AutoBounty or r8_8arg.AutoAllBoss or r8_8arg.Auto_Bounty or r8_8arg.AutoSharkman or r8_8arg.Auto_Mastery_Fruit or r8_8arg.Auto_Mastery_Gun or r8_8arg.Auto_Dungeon or r8_8arg.Auto_Cavender or r8_8arg.AutoSeaBest or r8_8arg.Auto_Pole or r8_8arg.Auto_Kill_Ply or r8_8arg.Auto_Factory or r8_8arg.AutoSecondSea or r8_8arg.TeleportPly or r8_8arg.AutoBartilo or r8_8arg.UnknownBoss or r8_8arg.GrabChest or r8_8arg.AutoFarmBounty or r8_8arg.Holy_Torch or getgenv().NormalFarm or r8_8arg.Clip or r8_8arg.AutoElitehunter or r8_8arg.AutoThirdSea or r8_8arg.Auto_Bone or r8_8arg.Autoheart or PirateShip or r8_8arg.Autodoughking or r8_8arg.AutoFarmMaterial or r8_8arg.QuestSoulGuitar or r8_8arg.Auto_Dragon_Trident or r8_8arg.Autotushita or r8_8arg.d or r8_8arg.Autowaden or r8_8arg.Autogay or r8_8arg.Autopole or r8_8arg.Autosaw or r8_8arg.AutoObservationHakiV2 or r8_8arg.AutoFarmNearest or AutoFarmChest or r8_8arg.AutoCarvender or r8_8arg.AutoTwinHook or AutoMobAura or r8_8arg.Tweenfruit or r8_8arg.AutoKai or r8_8arg.TeleportNPC or r8_8arg.Leather or r8_8arg.Auto_Wing or r8_8arg.Umm or r8_8arg.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or r8_8arg.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or r8_8arg.AutoFarmMob or getgenv().secretis or r8_8arg.AutoFarmDungeon or r8_8arg.AutoRaidPirate or r8_8arg.AutoQuestRace or getgenv().HeyGearComeHere or getgenv().AutoFarm or r8_8arg.RaidPirate or r8_8arg.AutoPlayerHunter or r8_8arg.AutoFactory or Grab_Chest or r53_53arg or KillPlayer or KillPlayerSpam or r8_8arg.SeaBeasts1 then
				for v336_args, v337_args in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
					if v337_args:IsA("BasePart") then
						v337_args.CanCollide = false
					end
				end
			end
		end)
	end)
end)

r54_54arg = 50

spawn(function()
	while wait() do
		if getgenv().UocDuocChichChi2 then
			r55_55arg = CFrame.new(0, r54_54arg, -50)
			task.wait(0.1)
			r55_55arg = CFrame.new(-50, r54_54arg, 0)
			task.wait(0.1)
			r55_55arg = CFrame.new(0, r54_54arg, 50)
			task.wait(0.1)
			r55_55arg = CFrame.new(50, r54_54arg, 0)
		else
			r55_55arg = CFrame.new(0, r54_54arg, 0)
		end
	end
end)

-- dont care
local v16_args = game:GetService("Players").LocalPlayer
spawn(function()
	pcall(function()
		while wait() do
			for v338_args, v339_args in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
				if v339_args:IsA("Tool") then
					if v339_args:FindFirstChild("RemoteFunctionShoot") then
						r56_56arg = v339_args.Name
					end
				end
			end
		end
	end)
end)

function r57_57arg()
	for v340_args, v341_args in pairs(thelocal.Backpack:GetChildren()) do
		if v341_args:IsA("Tool") and string.find(v341_args.Name, "Fruit") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", v341_args:GetAttribute("OriginalName"), v341_args)
		end
	end

end



function r58_58arg(v342_args)
	return v342_args

end



function r59_59arg(v343_args)
	return v343_args

end

if game.PlaceId == 2753915549 then
	r1_1arg = true

elseif game.PlaceId == 4442272183 then
	r2_2arg = true

elseif game.PlaceId == 7449423635 then
	r3_3arg = true

end

r60_60arg = true

local v17_args = game:GetService("ReplicatedStorage").Assets.GUI:WaitForChild("DamageCounter")

local v18_args = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)

local v19_args = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)

local v20_args = v19_args.wrapAttackAnimationAsync



v19_args.wrapAttackAnimationAsync = function(v344_args, v345_args, v346_args, v347_args, v348_args)
	if not r60_60arg then
		return v20_args(v344_args, v345_args, v346_args, 60, v348_args)
	end
	local v349_args = {}
	local v350_args = game.Players.LocalPlayer
	local v351_args = game:GetService("Workspace").Characters:GetChildren()
	for v353_args, v354_args in pairs(v351_args) do
		local v355_args = v354_args:FindFirstChildOfClass("Humanoid")
		if v354_args.Name ~= game.Players.LocalPlayer.Name and v355_args and v355_args.RootPart and v355_args.Health > 0 then
			local v356_args = v355_args.RootPart.Position
			if v356_args and v350_args:DistanceFromCharacter(v356_args) < 65 then
				table.insert(v349_args, v355_args.RootPart)
			end
		end
	end
	local v352_args = game:GetService("Workspace").Enemies:GetChildren()
	for v357_args, v358_args in pairs(v352_args) do
		local v359_args = v358_args:FindFirstChildOfClass("Humanoid")
		if v359_args and v359_args.RootPart and v359_args.Health > 0 then
			local v360_args = v359_args.RootPart.Position
			if v360_args and v350_args:DistanceFromCharacter(v360_args) < 65 then
				table.insert(v349_args, v359_args.RootPart)
			end
		end
	end
	v344_args:Play(0.01, 0.01, 0.01)
	pcall(v348_args, v349_args)

end



r61_61arg = r58_58arg(function(v361_args)
	local v362_args = {}
	local v363_args = game.Players.LocalPlayer
	local v364_args = game:GetService("Workspace").Enemies:GetChildren()
	for v365_args, v366_args in pairs(v364_args) do
		local v367_args = v366_args:FindFirstChildOfClass("Humanoid")
		if v367_args and v367_args.RootPart and v367_args.Health > 0 then
			local v368_args = v367_args.RootPart.Position
			if v368_args and v363_args:DistanceFromCharacter(v368_args) < v361_args + 5 then
				table.insert(v362_args, v367_args.RootPart)
			end
		end
	end
	return v362_args

end)



r62_62arg = r58_58arg(function(v369_args)
	local v370_args = {}
	local v371_args = game.Players.LocalPlayer
	local v372_args = game:GetService("Workspace").Characters:GetChildren()
	for v373_args, v374_args in pairs(v372_args) do
		local v375_args = v374_args:FindFirstChildOfClass("Humanoid")
		if v374_args.Name ~= game.Players.LocalPlayer.Name and v375_args and v375_args.RootPart and v375_args.Health > 0 then
			local v376_args = v375_args.RootPart.Position
			if v376_args and v371_args:DistanceFromCharacter(v376_args) < v369_args + 5 then
				table.insert(v370_args, v375_args.RootPart)
			end
		end
	end
	return v370_args

end)



local v21_args = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))

local v22_args = getupvalues(v21_args)[2]

local v23_args = game:GetService("ReplicatedStorage").RigControllerEvent

local v24_args = Instance.new("Animation")

local v25_args = 0

local v26_args = 0

local v27_args = 1000

local v28_args = 0

local v29_args = 0

local v30_args = {}



r63_63arg = r59_59arg(function()
	local v377_args = v22_args.activeController
	if v377_args and v377_args.equipped then
		v25_args = tick() + (v28_args or 0.288) + ((v29_args / v27_args) * 0.3)
		v23_args.FireServer(v23_args, "weaponChange", v377_args.currentWeaponModel.Name)
		v29_args = v29_args + 1
		task.delay((v28_args or 0) + ((v29_args + 0.3 / v27_args) * 0.3), function()
			v29_args = v29_args - 1
		end)
	end

end)



r64_64arg = r59_59arg(function(v378_args)
	local v379_args = v22_args.activeController
	if v379_args and v379_args.equipped then
		local v380_args = {}
		if v378_args == 1 then
			v380_args = r61_61arg(60)
		elseif v378_args == 2 then
			v380_args = r62_62arg(65)
		else
			for v381_args, v382_args in pairs(r61_61arg(55)) do
				table.insert(v380_args, v382_args)
			end
			for v383_args, v384_args in pairs(r62_62arg(55)) do
				table.insert(v380_args, v384_args)
			end
		end
		if # v380_args > 0 then
			pcall(task.spawn, v379_args.attack, v379_args)
			if tick() > v25_args then
				r63_63arg()
			end
			if tick() - v26_args > 0.5 then
				v379_args.timeToNextAttack = 0
				v379_args.hitboxMagnitude = 60
				pcall(task.spawn, v379_args.attack, v379_args)
				v26_args = tick()
			end
			local v385_args = v379_args.anims.basic[3]
			local v386_args = v379_args.anims.basic[2]
			local v387_args = v385_args or v386_args
			v24_args.AnimationId = v387_args
			local v388_args = v379_args.humanoid:LoadAnimation(v24_args)
			v388_args:Play(0, 0, 0)
			v23_args.FireServer(v23_args, "hit", v380_args, v385_args and 3 or 2, "")
			task.delay(0, function()
				v388_args:Stop()
			end)
		end
	end

end)



function r65_65arg()
	if game:GetService('Players').LocalPlayer.Character:FindFirstChild("Stun") then
		return game:GetService('Players').LocalPlayer.Character.Stun.Value ~= 0
	end
	return false

end



r59_59arg(function()
	spawn(function()
		while game:GetService("RunService").Stepped:Wait() do
			local v389_args = v22_args.activeController
			if v389_args and v389_args.equipped and not r65_65arg() then
				if r66_66arg and r67_67arg then
					task.spawn(function()
						pcall(task.spawn, r64_64arg, 1)
					end)
				elseif r68_68arg then
					task.spawn(function()
						pcall(task.spawn, r64_64arg, 3)
					end)
				elseif r69_69arg and r67_67arg then
					task.spawn(function()
						pcall(task.spawn, r64_64arg, 2)
					end)
				elseif r66_66arg and r67_67arg == false then
					if v389_args.hitboxMagnitude ~= 60 then
						v389_args.hitboxMagnitude = 60
					end
					pcall(task.spawn, v389_args.attack, v389_args)
				end
			end
		end
	end)

end)()



r58_58arg(function()

	function r70_70arg()

		game:GetService("VirtualUser"):CaptureController()

		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))

	end

end)()



task.delay(15, function()
	if hookfunction and not islclosure(hookfunction) then
		workspace._WorldOrigin.ChildAdded:Connect(function(v390_args)
			if v390_args.Name == 'DamageCounter' then
				v390_args.Enabled = false
			end
		end)
		hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function()
		end)
		hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function()
		end)
		hookfunction(require(game:GetService("ReplicatedStorage"):WaitForChild("GuideModule")).ChangeDisplayedNPC, function()
		end)
		task.spawn(function()
			local v391_args, v392_args
			repeat
				v391_args, v392_args = pcall(function()
					for v393_args, v394_args in pairs(getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.data) do
						if typeof(v394_args) == 'function' then
							hookfunction(v394_args, function()
							end)
						end
					end
				end)
				task.wait(1.5)
			until v391_args
		end)
	end 

end)

r71_71arg = true

task.spawn(function()
	local v395_args = game.Players.LocalPlayer
	local v396_args = require(v395_args.PlayerScripts.CombatFramework.Particle)
	local v397_args = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
	if not shared.orl then
		shared.orl = v397_args.wrapAttackAnimationAsync
	end
	if not shared.cpc then
		shared.cpc = v396_args.play
	end
	if r71_71arg then
		pcall(function()
			v397_args.wrapAttackAnimationAsync = function(v398_args, v399_args, v400_args, v401_args, v402_args)
				local v403_args = v397_args.getBladeHits(

                    v395_args.Character, {
					v395_args.Character.HumanoidRootPart
				}, 60)
				if v403_args then
					v396_args.play = function()
					end
					v398_args:Play(0.1, 0.1, 0.1)
					v402_args(v403_args)
					v396_args.play = shared.cpc
					wait(.5)
					v398_args:Stop()
				end
			end
		end)
	end

end)



print("Idle")
spawn(function()
	while wait(.1) do
		if r8_8arg.AUTOHAKI then
			if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				local v404_args = {
					[1] = "Buso"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v404_args))
			end
		end
	end

end)

task.spawn(function()
	while wait() do
		pcall(function()
			local v405_args = game.Players.LocalPlayer
			local v406_args = v405_args.Backpack
			local v407_args = v405_args.Character
			if r8_8arg.SelectWeapon == "Melee" or r8_8arg.SelectWeapon == "Sword" then
				for v408_args, v409_args in pairs(v406_args:GetChildren()) do
					if v409_args.ToolTip == r8_8arg.SelectWeapon then
						if v406_args:FindFirstChild(v409_args.Name) then
							r8_8arg.SelectWeapon = v409_args.Name
							if not v407_args:FindFirstChild(v409_args.Name) then
								v405_args.Character.Humanoid:EquipTool(v409_args)
							end
						end
					end
				end
			end
		end)
	end

end)



spawn(function()
	while wait() do
		pcall(function()
			if r8_8arg.AUTOKen then
				repeat
					task.wait()
					if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
						game:GetService('VirtualUser'):CaptureController()
						game:GetService('VirtualUser'):SetKeyDown('0x65')
						wait(2)
						game:GetService('VirtualUser'):SetKeyUp('0x65')
					end
				until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not r8_8arg.AUTOKen
			end
		end)
	end
end)    



local function v31_args(v410_args)

	if v410_args == "Normal Attack" then

		v28_args = 0.1

	elseif v410_args == "Fast Attack" then

		v28_args = 0.07

	elseif v410_args == "Super Fast Attack" then

		v28_args = 0

	end

end

spawn(function()
	while wait() do
		if r72_72arg then
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
		else
			game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
		end
	end
end)

   

task.spawn(

    function()
	while task.wait() do
		if r8_8arg.BringMonster then
			pcall(

                    function()
				for v411_args, v412_args in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v412_args.Name, "Boss") and v412_args.Name == r73_73arg and (v412_args.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then
						if r74_74arg(v412_args.HumanoidRootPart) then
							if r74_74arg(v412_args.HumanoidRootPart) then
								v412_args.HumanoidRootPart.CFrame = r75_75arg
								v412_args.HumanoidRootPart.CanCollide = false
								v412_args.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
								if v412_args.Humanoid:FindFirstChild("Animator") then
									v412_args.Humanoid.Animator:Destroy()
								end
								task.wait(0.1)
							end
						end
					end
				end
			end)
		end
	end
end)



spawn(function()

	while task.wait() do

		pcall(function()

			for v413_args, v414_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

				if r8_8arg.BringMonster then

					if StartBring and v414_args.Name == r73_73arg or v414_args.Name == Mon and v414_args:FindFirstChild("Humanoid") and v414_args:FindFirstChild("HumanoidRootPart") and v414_args.Humanoid.Health > 0 and (v414_args.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= r8_8arg.BringMode then

						if v414_args.Name == "Factory Staff" then

							if (v414_args.HumanoidRootPart.Position - r75_75arg.Position).Magnitude <= 5000 then

								v414_args.Head.CanCollide = false

								v414_args.HumanoidRootPart.CanCollide = false

								v414_args.HumanoidRootPart.CFrame = r75_75arg

								if v414_args.Humanoid:FindFirstChild("Animator") then

									v414_args.Humanoid.Animator:Destroy()

								end

								sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

							end

						elseif v414_args.Name == r73_73arg or v414_args.Name == Mon then

							if (v414_args.HumanoidRootPart.Position - r75_75arg.Position).Magnitude <= 4500 then
								v414_args.HumanoidRootPart.CFrame = r75_75arg
								v414_args.HumanoidRootPart.CanCollide = false
								v414_args.Head.CanCollide = false
								if v414_args.Humanoid:FindFirstChild("Animator") then
									v414_args.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)

							end

						end

					end

				end

			end

		end)

	end

end)



spawn(

    function()
	while task.wait() do
		spawn(

                function()
			if r8_8arg.BringMonster then
				for v415_args, v416_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if getgenv().NormalFarm and r76_76arg and v416_args.Name == Mon and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v416_args:FindFirstChild("Humanoid") and v416_args:FindFirstChild("HumanoidRootPart") and v416_args.Humanoid.Health > 0 and (v416_args.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
						v416_args.HumanoidRootPart.CFrame = r75_75arg
						v416_args.Humanoid:ChangeState(14)
						v416_args.HumanoidRootPart.CanCollide = false
						v416_args.Head.CanCollide = false
						if v416_args.Humanoid:FindFirstChild("Animator") then
							v416_args.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
						task.wait(0.1)
					elseif getgenv().NormalFarm and r76_76arg and v416_args.Name == Mon and v416_args:FindFirstChild("Humanoid") and v416_args:FindFirstChild("HumanoidRootPart") and v416_args.Humanoid.Health > 0 and (v416_args.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
						v416_args.HumanoidRootPart.CFrame = r75_75arg
						v416_args.Humanoid:ChangeState(14)
						v416_args.HumanoidRootPart.CanCollide = false
						v416_args.Head.CanCollide = false
						if v416_args.Humanoid:FindFirstChild("Animator") then
							v416_args.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
						task.wait(0.1)
					end
				end
			end
		end)
	end
end)



spawn(

    function()
	while wait() do
		pcall(

                function()
			for v417_args, v418_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if r8_8arg.BringMob and bringmob then
					if v418_args.Name == r73_73arg and v418_args:FindFirstChild("Humanoid") and v418_args.Humanoid.Health > 0 then
						if v418_args.Name == "Factory Staff" then
							if (v418_args.HumanoidRootPart.Position - r77_77arg.Position).Magnitude <= 500 then
								v418_args.Head.CanCollide = false
								v418_args.HumanoidRootPart.CanCollide = false
								v418_args.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
								v418_args.HumanoidRootPart.CFrame = r77_77arg
								if v418_args.Humanoid:FindFirstChild("Animator") then
									v418_args.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								task.wait(0.1)
							end
						elseif v418_args.Name == r73_73arg then
							if (v418_args.HumanoidRootPart.Position - r77_77arg.Position).Magnitude <= 450 then
								v418_args.Head.CanCollide = false
								v418_args.HumanoidRootPart.CanCollide = false
								v418_args.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
								v418_args.HumanoidRootPart.CFrame = r77_77arg
								if v418_args.Humanoid:FindFirstChild("Animator") then
									v418_args.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
					if getgenv().AutoKata and MagnetDought then
						if (v418_args.Name == "Cookie Crafter" or v418_args.Name == "Cake Guard" or v418_args.Name == "Baking Staff" or v418_args.Name == "Head Baker") and (v418_args.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= r8_8arg.BringMode and v418_args:FindFirstChild("Humanoid") and v418_args:FindFirstChild("HumanoidRootPart") and v418_args.Humanoid.Health > 0 then
							v418_args.Head.CanCollide = false
							v418_args.HumanoidRootPart.CanCollide = false
							v418_args.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
							v418_args.HumanoidRootPart.CFrame = r77_77arg
							if v418_args.Humanoid:FindFirstChild("Animator") then
								v418_args.Humanoid.Animator:Destroy()
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					end
				end
			end
		end)
	end
end)



task.spawn(

    function()
	while true do
		wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)



function r74_74arg(v419_args)
	if isnetworkowner then
		return isnetworkowner(v419_args)
	else
		if (v419_args.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= r8_8arg.BringMode then
			return true
		end
		return false
	end

end



task.spawn(

    function()
	while task.wait() do
		if MakoriGayMag and r8_8arg.BringMonster then
			for v420_args, v421_args in pairs(game.Workspace.Enemies:GetChildren()) do
				if not string.find(v421_args.Name, "Boss") and (v421_args.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 450 then
					if r74_74arg(v421_args.HumanoidRootPart) then
						v421_args.HumanoidRootPart.CFrame = PosGay
						v421_args.Humanoid.JumpPower = 0
						v421_args.Humanoid.WalkSpeed = 0
						v421_args.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
						v421_args.HumanoidRootPart.Transparency = 1
						v421_args.HumanoidRootPart.CanCollide = false
						v421_args.Head.CanCollide = false
						if v421_args.Humanoid:FindFirstChild("Animator") then
							v421_args.Humanoid.Animator:Destroy()
						end
						v421_args.Humanoid:ChangeState(11)
						v421_args.Humanoid:ChangeState(14)
						task.wait(0.1)
					end
				end
			end
		end
	end
end)



function r78_78arg()
	if not BringMobChoosen then
		repeat
			task.wait()
		until BringMobChoosen
	end
	sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
	if LockCFrame then
		for v422_args, v423_args in pairs(game.Workspace.Enemies:GetChildren()) do
			if (LockCFrame.Position - v423_args.HumanoidRootPart.Position).Magnitude < 350 and (LockCFrame.Position - v423_args.HumanoidRootPart.Position).Magnitude > 3 and chodonandngu(v423_args.HumanoidRootPart.Position) then
				v423_args.HumanoidRootPart.CFrame = LockCFrame
				SizePart(v423_args)
				for v424_args, v425_args in pairs(v423_args:GetDescendants()) do
					if v425_args:IsA("BasePart") or v425_args:IsA("Part") then
						v425_args.CanCollide = false
					end
				end
				task.wait(0.1)
			end
		end
	end
	if BringMobChoosen then
		for v426_args, v427_args in pairs(game.Workspace.Enemies:GetChildren()) do
			if (BringMobChoosen.HumanoidRootPart.Position - v427_args.HumanoidRootPart.Position).Magnitude < 350 and (BringMobChoosen.HumanoidRootPart.Position - v427_args.HumanoidRootPart.Position).Magnitude > 3 and GetNearestPlayer(v427_args.HumanoidRootPart.Position) then
				v427_args.HumanoidRootPart.CFrame = BringMobChoosen.HumanoidRootPart.CFrame
				SizePart(v427_args)
				for v428_args, v429_args in pairs(v427_args:GetDescendants()) do
					if v429_args:IsA("BasePart") or v429_args:IsA("Part") then
						v429_args.CanCollide = false
					end
				end
				task.wait(0.1)
			end
		end
	end

end



function r79_79arg()
	local v430_args = function1()
	local v431_args = game.workspace.Enemies:GetChildren()
	if # v431_args > 1 then
		for v432_args = 1, # v431_args do
			for v433_args, v434_args in pairs(game.workspace.Enemies:GetChildren()) do
				if function0(v434_args) and (v434_args.HumanoidRootPart.Position - v430_args.Position).Magnitude < 350 then
					v434_args.HumanoidRootPart.CFrame = v430_args
					v434_args.Humanoid:ChangeState(11)
					v434_args.HumanoidRootPart.CanCollide = false
					v434_args.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
					v434_args.HumanoidRootPart.Transparency = 1
					for v435_args, v436_args in pairs(v434_args:GetChildren()) do
						if v434_args:IsA("BasePart") then
							v434_args.Velocity = Vector3.new(0, 0, 0)
							v434_args.CanCollide = 0
							v434_args.Anchored = true
						end
					end
					if v434_args:FindFirstChild("Humanoid") then
						v434_args.Humanoid.WalkSpeed = 0
						v434_args.Humanoid.JumpPower = 0
					else
						return
					end
					if v434_args.Humanoid:FindFirstChild("Animator") then
						v434_args.Humanoid.Animator:Destroy()
					end
					v434_args.Humanoid:ChangeState(11)
					task.wait(0.1)
				end
			end
		end
	end

end



local v32_args = {}

for v437_args, v438_args in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
	if not v32_args[v438_args.Name] or v32_args[v438_args.Name] == nil then
		v32_args[v438_args.Name] = {
			v438_args.CFrame
		}
	elseif v32_args[v438_args.Name] then
		table.insert(v32_args[v438_args.Name], v438_args.CFrame)
	end

end

function r80_80arg(v439_args)
	r81_81arg = {
		["Workspace"] = false,
		["ReplicatedStorage"] = false,
		["NilInstace"] = false
	}
	for v440_args, v441_args in pairs(game.Workspace.Enemies:GetChildren()) do
		if table.find(v439_args, v441_args.Name) then
			r81_81arg["Workspace"] = true
		end
	end
	for v442_args, v443_args in pairs(game.ReplicatedStorage:GetChildren()) do
		if table.find(v439_args, v443_args.Name) then
			r81_81arg["ReplicatedStorage"] = true
		end
	end
	r82_82arg = getnilinstances()
	for v444_args, v445_args in pairs(r82_82arg) do
		if table.find(v439_args, v445_args.Name) then
			r81_81arg["NilInstace"] = true
		end
	end
	return r81_81arg

end

function r83_83arg(v446_args, v447_args)
	for v448_args, v449_args in pairs(v446_args) do
		for v450_args, v451_args in pairs(v447_args) do
			if string.find(v449_args, v450_args) then
				return true
			end
		end
	end
	return false

end

function r84_84arg(v452_args, v453_args)
	for v454_args, v455_args in pairs(v453_args) do
		if string.find(v454_args, v452_args) then
			return true
		end
	end

end

function r85_85arg(v456_args)
	r86_86arg = 0
	for v457_args, v458_args in pairs(v456_args) do
		if type(v457_args) == "number" and v457_args > r86_86arg then
			r86_86arg = v457_args
		end
	end
	return r86_86arg

end

function r87_87arg(v459_args)
	if type(v459_args) ~= "string" then
		return ""
	end
	r88_88arg = v459_args:split(" ")
	r89_89arg = ""
	r90_90arg = r85_85arg(r88_88arg)
	for v460_args, v461_args in pairs(r88_88arg) do
		if v460_args < r90_90arg then
			if v460_args == 0 then
				r89_89arg = v461_args
			else
				r89_89arg = r89_89arg .. " " .. v461_args
			end
		end
	end
	return r89_89arg

end

task.spawn(

    function()
	while task.wait() do
		if bringmob then
			pcall(

                    function()
				r78_78arg()
			end)
		end
	end
end)

function r74_74arg(v462_args)
	if isnetworkowner then
		return isnetworkowner(v462_args)
	else
		if (v462_args.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= r8_8arg.BringMode then
			return true
		end
		return false
	end

end

task.spawn(

    function()
	while task.wait() do
		pcall(

                function()
			if r8_8arg.AutoFarmNearest and AutoFarmNearestMagnet or SelectMag and r8_8arg.BringMonster then
				for v463_args, v464_args in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v464_args.Name, "Boss") and (v464_args.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= r8_8arg.BringMode then
						if r74_74arg(v464_args.HumanoidRootPart) then
							v464_args.HumanoidRootPart.CFrame = r75_75arg
							v464_args.Humanoid.JumpPower = 0
							v464_args.Humanoid.WalkSpeed = 0
							v464_args.HumanoidRootPart.Size = Vector3.new(70, 70, 70)
							v464_args.HumanoidRootPart.Transparency = 1
							v464_args.HumanoidRootPart.CanCollide = false
							v464_args.Head.CanCollide = false
							if v464_args.Humanoid:FindFirstChild("Animator") then
								v464_args.Humanoid.Animator:Destroy()
							end
							v464_args.Humanoid:ChangeState(11)
							v464_args.Humanoid:ChangeState(14)
						end
					end
				end
			end
		end)
	end
end)
function r91_91arg(v465_args)
	local v466_args = game:GetService("Players").LocalPlayer
	local v467_args = v466_args:FindFirstChild("Backpack")
	if v467_args and v467_args:FindFirstChild(v465_args) then
		return v467_args[v465_args]
	end
	local v468_args = v466_args.Character
	if v468_args then
		local v469_args = v468_args:FindFirstChild(v465_args)
		if v469_args and v469_args:IsA("Tool") then
			return v469_args
		end
	end
	return v468_args:FindFirstChild(v465_args)

end



r91_91arg = r59_59arg(function(v470_args)

	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v470_args) then

		return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v470_args)

	end

	local v471_args

	for v472_args, v473_args in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 

		if v473_args:IsA("Tool") then

			if v473_args.Name == v470_args then

				v471_args = v473_args

				break

			end

		end

	end

	return v471_args or game:GetService("Players").LocalPlayer.Character:FindFirstChild(v470_args)

end)



spawn(function()
	while wait() do
		if r8_8arg.AutoFarmMob then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(r8_8arg.SelectMob) then
					for v474_args, v475_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v475_args.Name == r8_8arg.SelectMob then
							if v475_args:FindFirstChild("Humanoid") and v475_args:FindFirstChild("HumanoidRootPart") and v475_args.Humanoid.Health > 0 then
								repeat
									wait()
									r28_28arg()
									r30_30arg(r8_8arg.SelectWeapon)
									v475_args.HumanoidRootPart.CanCollide = false
									v475_args.Humanoid.WalkSpeed = 0
									r75_75arg = v475_args.HumanoidRootPart.CFrame
									r73_73arg = v475_args.Name
									r76_76arg = true
									r43_43arg(v475_args.HumanoidRootPart.CFrame * r55_55arg)
									r66_66arg = true
								until not r8_8arg.AutoFarmMob or not v475_args.Parent or v475_args.Humanoid.Health <= 0
								r76_76arg = false
							end
						end
					end
				end
			end)
		end
	end
end)



spawn(function()
	pcall(function()
		while wait() do
			if r8_8arg.Miragenpc and r3_3arg then
				if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
					r43_43arg(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position))
				end
			end
		end
	end)

end)



r8_8arg.MagnitudeAdd = 0

spawn(function()

	while wait() do 

		if r8_8arg.AutoChestMirage and r3_3arg then

			for v476_args, v477_args in pairs(game:GetService("Workspace"):GetChildren()) do 

				if v477_args.Name:find("FragChest") then

					if game:GetService("Workspace"):FindFirstChild(v477_args.Name) then

						if (v477_args.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 + r8_8arg.MagnitudeAdd then

							repeat
								wait()

								if game:GetService("Workspace"):FindFirstChild(v477_args.Name) then

									r43_43arg(v477_args.CFrame)

								end

							until r8_8arg.AutoChestMirage == false or not v477_args.Parent

							r43_43arg(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)

							r8_8arg.MagnitudeAdd = r8_8arg.MagnitudeAdd + 1500

							break

						end

					end

				end

			end

		end

	end

end)



local v33_args = CFrame.new(- 9556.03515625, 260.887939453125, 5598.35302734375)

local v34_args = CFrame.new(- 9483.501953125, 146.49444580078125, 5566.70703125)

spawn(function()
	while wait() do
		if r8_8arg.Auto_Bone and not r8_8arg.AcceptQuest and r3_3arg then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
					r68_68arg = false
					for v478_args, v479_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v479_args.Name == "Reborn Skeleton" or v479_args.Name == "Living Zombie" or v479_args.Name == "Demonic Soul" or v479_args.Name == "Posessed Mummy") and v479_args:FindFirstChild("Humanoid") and v479_args:FindFirstChild("HumanoidRootPart") and v479_args.Humanoid.Health > 0 then
							repeat
								wait()
								r28_28arg()
								r30_30arg(r8_8arg.SelectWeapon)
								v479_args.HumanoidRootPart.CanCollide = false
								v479_args.Humanoid.WalkSpeed = 0
								v479_args.Head.CanCollide = false
								r43_43arg(v479_args.HumanoidRootPart.CFrame * CFrame.new(5, 40, 7))
								r66_66arg = true
								r92_92arg = v479_args.Name
								if v479_args.Name == "Demonic Soul" then
									r93_93arg(v479_args.Name, CFrame.new(- 9497.908203125, 172.1048126220703, 6148.97119140625))
								elseif v479_args.Name == "Living Zombie" then
									r93_93arg(v479_args.Name, CFrame.new(- 10143.466796875, 138.6266632080078, 5974.3330078125))
								elseif v479_args.Name == "Reborn Skeleton" then
									r93_93arg(v479_args.Name, CFrame.new(- 8760.986328125, 142.1048126220703, 6039.1083984375))
								elseif v479_args.Name == "Posessed Mummy" then
									r93_93arg(v479_args.Name, CFrame.new(- 9575.4267578125, 5.792530536651611, 6226.22900390625))
								end
							until not r8_8arg.Auto_Bone or not v479_args.Parent or v479_args.Humanoid.Health <= 0
							r68_68arg = false
						end
					end
				else
					if BypassTP then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v33_args.Position).Magnitude > 1500 then
							BTP(v33_args)
						else
							r43_43arg(v33_args)
						end
					else
						r43_43arg(v33_args)
					end
					r29_29arg(r8_8arg.SelectWeapon)
					r43_43arg(CFrame.new(- 9501.90234, 580.085938, 6034.01611, 0.998846233, 4.39209522e-08, - 0.0480232015, - 4.06256255e-08, 1, 6.95954867e-08, 0.0480232015, - 6.75642156e-08, 0.998846233))
				end
			end)
		end
	end

end)



spawn(function()
	while wait() do
		if r8_8arg.Auto_Bone and r8_8arg.AcceptQuest and r3_3arg then
			pcall(function()
				local v480_args = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
				if not string.find(v480_args, "Living Zombie") then
					r68_68arg = false
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
				end
				if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
					r68_68arg = false
					if BypassTP then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v34_args.Position).Magnitude > 1500 then
							BTP(v33_args)
						else
							r43_43arg(v34_args)
						end
					else
						r43_43arg(v34_args)
					end
					if (v34_args.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest1", 2)
					end
				else
					local v481_args = false
					for v482_args, v483_args in ipairs({
						"Reborn Skeleton",
						"Living Zombie",
						"Demonic Soul",
						"Posessed Mummy"
					}) do
						if game:GetService("Workspace").Enemies:FindFirstChild(v483_args) then
							v481_args = true
							break
						end
					end
					if not v481_args then
						task.defer(function()
							r43_43arg(v33_args)
						end)
					else
						for v484_args, v485_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v485_args:FindFirstChild("HumanoidRootPart") and v485_args:FindFirstChild("Humanoid") and v485_args.Humanoid.Health > 0 and (v485_args.Name == "Reborn Skeleton" or v485_args.Name == "Living Zombie" or v485_args.Name == "Demonic Soul" or v485_args.Name == "Posessed Mummy") then
								if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Living Zombie") then
									repeat
										wait()
										r30_30arg(r8_8arg.SelectWeapon)
										r28_28arg()
										r43_43arg(v485_args.HumanoidRootPart.CFrame * CFrame.new(5, 40, 7))
										v485_args.HumanoidRootPart.CanCollide = false
										v485_args.Humanoid.WalkSpeed = 0
										v485_args.Head.CanCollide = false
										r66_66arg = true
										r92_92arg = v485_args.Name
										if v485_args.Name == "Demonic Soul" then
											r93_93arg(v485_args.Name, CFrame.new(- 9497.908203125, 172.1048126220703, 6148.97119140625))
										elseif v485_args.Name == "Living Zombie" then
											r93_93arg(v485_args.Name, CFrame.new(- 10143.466796875, 138.6266632080078, 5974.3330078125))
										elseif v485_args.Name == "Reborn Skeleton" then
											r93_93arg(v485_args.Name, CFrame.new(- 8760.986328125, 142.1048126220703, 6039.1083984375))
										elseif v485_args.Name == "Posessed Mummy" then
											r93_93arg(v485_args.Name, CFrame.new(- 9575.4267578125, 5.792530536651611, 6226.22900390625))
										end
									until not r8_8arg.Auto_Bone or v485_args.Humanoid.Health <= 0 or not v485_args.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
									r68_68arg = false
								end
							end
						end
					end
					r29_29arg(r8_8arg.SelectWeapon)
				end
			end)
		end
	end

end)

function r93_93arg(v486_args, v487_args)
	task.spawn(function()
		local function v488_args(v489_args, v490_args)
			v489_args.Humanoid.WalkSpeed = 0
			v489_args.Humanoid.JumpPower = 0
			v489_args.HumanoidRootPart.CanCollide = false
			v489_args.Head.CanCollide = false
			local v491_args = -2
			local v492_args = v490_args * CFrame.new(0, v491_args, 0)
			v489_args.HumanoidRootPart.CFrame = v492_args
			if v489_args.Humanoid:FindFirstChild('Animator') then
				v489_args.Humanoid.Animator:Destroy()
			end
			v489_args.Humanoid:ChangeState(11)
			v489_args.Humanoid:ChangeState(14)
		end
		for v493_args, v494_args in pairs(game.Workspace.Enemies:GetChildren()) do
			if v494_args.Name == v486_args and (v494_args.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
				v488_args(v494_args, v487_args)
			end
		end
		sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
	end)

end



function r94_94arg(v495_args, v496_args)
	task.spawn(function()
		local function v497_args(v498_args, v499_args)
			v498_args.Humanoid.WalkSpeed = 0
			v498_args.Humanoid.JumpPower = 0
			v498_args.HumanoidRootPart.CanCollide = false
			v498_args.Head.CanCollide = false
			local v500_args = -2
			local v501_args = v499_args * CFrame.new(0, v500_args, 0)
			v498_args.HumanoidRootPart.CFrame = v501_args
			if v498_args.Humanoid:FindFirstChild('Animator') then
				v498_args.Humanoid.Animator:Destroy()
			end
			v498_args.Humanoid:ChangeState(11)
			v498_args.Humanoid:ChangeState(14)
		end
		for v502_args, v503_args in pairs(game.Workspace.Enemies:GetChildren()) do
			if v503_args.Name == v495_args and (v503_args.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
				v497_args(v503_args, v496_args)
			end
		end
		sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
	end)

end



function r95_95arg(v504_args, v505_args)
	task.spawn(function()
		local function v506_args(v507_args, v508_args)
			v507_args.Humanoid.WalkSpeed = 0
			v507_args.Humanoid.JumpPower = 0
			v507_args.HumanoidRootPart.CanCollide = false
			v507_args.Head.CanCollide = false
			local v509_args = -2
			local v510_args = v508_args * CFrame.new(0, v509_args, 0)
			v507_args.HumanoidRootPart.CFrame = v510_args
			if v507_args.Humanoid:FindFirstChild('Animator') then
				v507_args.Humanoid.Animator:Destroy()
			end
			v507_args.Humanoid:ChangeState(11)
			v507_args.Humanoid:ChangeState(14)
		end
		for v511_args, v512_args in pairs(game.Workspace.Enemies:GetChildren()) do
			if v512_args.Name == v504_args and (v512_args.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
				v506_args(v512_args, v505_args)
			end
		end
		sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
	end)

end
function r96_96arg(v513_args, v514_args)
	task.spawn(function()
		for v515_args, v516_args in pairs(game.Workspace.Enemies:GetChildren()) do
			if v516_args.name == v513_args and (v516_args.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
				v516_args.Humanoid.WalkSpeed = 0
				v516_args.Humanoid.JumpPower = 0
				v516_args.HumanoidRootPart.CanCollide = false
				v516_args.Head.CanCollide = false
				v516_args.HumanoidRootPart.CFrame = v514_args
				if v516_args.Humanoid:FindFirstChild('Animator') then
					v516_args.Humanoid.Animator:Destroy()
				end
				v516_args.Humanoid:ChangeState(11)
				v516_args.Humanoid:ChangeState(14)
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
			end
		end
	end)
end
spawn(function()
	while wait(.1) do
		if r8_8arg.Auto_Random_Bone and r3_3arg then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
		end
	end
end)
spawn(function()
	pcall(function()
		while wait(.1) do
			if r8_8arg.Trylux and r3_3arg then
				r43_43arg(CFrame.new(- 8652.99707, 143.450119, 6170.50879, - 0.983064115, - 2.48005533e-10, 0.18326205, - 1.78910387e-09, 1, - 8.24392288e-09, - 0.18326205, - 8.43218029e-09, - 0.983064115))
				wait()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
			end
		end
	end)
end)

        

spawn(function()
	while wait(.1) do
		if r8_8arg.TelepiToFut then
			for v517_args, v518_args in pairs(game.Workspace:GetChildren()) do
				if string.find(v518_args.Name, "Fruit") then
					r43_43arg(v518_args.Handle.CFrame)
				end
			end
		end
	end

end)

spawn(function()
	while wait(.1) do
		if r8_8arg.TelepiToFut and r8_8arg.TelepiToFutHop then
			for v519_args, v520_args in pairs(game.Workspace:GetChildren()) do
				if string.find(v520_args.Name, "Fruit") then
					r43_43arg(v520_args.Handle.CFrame)
				elseif not string.find(v520_args.Name, "Fruit") then
					wait(6)
					game.StarterGui:SetCore("SendNotification", {
						Title = "Server Hop..",
						Text = "",
						Duration = 10,
					})
					r4_4arg()
				end
			end
		end
	end

end)

spawn(function()
	while wait() do
		if r8_8arg.AtikiDoughKing and r3_3arg then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
					for v521_args, v522_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v522_args.Name == "Dough King" then
							if v522_args:FindFirstChild("Humanoid") and v522_args:FindFirstChild("HumanoidRootPart") and v522_args.Humanoid.Health > 0 then
								repeat
									task.wait()
									r28_28arg()
									r66_66arg = true
									r30_30arg(r8_8arg.SelectWeapon)
									v522_args.HumanoidRootPart.CanCollide = false
									v522_args.Humanoid.WalkSpeed = 0
									r43_43arg(v522_args.HumanoidRootPart.CFrame * CFrame.new(PosX, 30, PosZ))
								until not r8_8arg.AtikiDoughKing or not v522_args.Parent or v522_args.Humanoid.Health <= 0
							end
						end
					end
				else
					if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
						r43_43arg(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
					end
				end
			end)
		end
	end

end)
spawn(function()
	while wait() do
		spawn(function()
			if r8_8arg.AutoFactory and r2_2arg then
				if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
					for v523_args, v524_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v524_args.Name == "Core" and v524_args.Humanoid.Health > 0 then
							repeat
								task.wait()
								r28_28arg()
								r30_30arg(r8_8arg.SelectWeapon)
								r66_66arg = true
								r43_43arg(CFrame.new(448.46756, 199.356781, - 441.389252))
							until v524_args.Humanoid.Health <= 0 or r8_8arg.AutoFactory == false
						end
					end
				else
					r68_68arg = false
					r43_43arg(CFrame.new(448.46756, 199.356781, - 441.389252))
				end
			end
		end)
	end
end)
spawn(function()

	while wait() do

		if r8_8arg.AutoRaidPirate and r3_3arg then

			pcall(function()

				local v525_args = CFrame.new(- 5496.17432, 313.768921, - 2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, - 1.06665446e-07, - 0.380223751, 1.12297109e-07, 0.924894512)

				if (CFrame.new(- 5539.3115234375, 313.800537109375, - 2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then

					for v526_args, v527_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

						if r8_8arg.AutoRaidPirate and v527_args:FindFirstChild("HumanoidRootPart") and v527_args:FindFirstChild("Humanoid") and v527_args.Humanoid.Health > 0 then

							if (v527_args.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then

								repeat
									wait()

									r28_28arg()

									r30_30arg(r8_8arg.SelectWeapon)

									r66_66arg = true

									v527_args.HumanoidRootPart.CanCollide = false

									v527_args.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

									r43_43arg(v527_args.HumanoidRootPart.CFrame * CFrame.new(PosX, r54_54arg, PosZ))

								until v527_args.Humanoid.Health <= 0 or not v527_args.Parent or r8_8arg.AutoRaidPirate == false

								r68_68arg = false

								r76_76arg = false

							end

						end

					end

				else

					if ((v525_args).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then

						r43_43arg(v525_args)

					else

						game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(- 5085.23681640625, 316.5072021484375, - 3156.202880859375)

					end

				end

			end)

		end

	end
end)
spawn(function()
	pcall(function()
		while wait() do
			if r8_8arg.AutoAdvanceDungeon or getgenv().AutoKata or r8_8arg.Auto_DungeonMobAura or r8_8arg.AutoFarmChest or r8_8arg.AutoFactory or r8_8arg.AutoFarmBossHallow or r8_8arg.AutoFarmSwanGlasses or r8_8arg.AutoLongSword or r8_8arg.AutoBlackSpikeycoat or r8_8arg.AutoElectricClaw or r8_8arg.AutoFarmGunMastery or getgenv().touchbad or r8_8arg.AutoLawRaid or r8_8arg.AutoFarmBoss or r8_8arg.AutoTwinHooks or r8_8arg.AutoOpenSwanDoor or r8_8arg.AutoDragon_Trident or r8_8arg.AutoSaber or r8_8arg.AutoFarmFruitMastery or r8_8arg.AutoFarmGunMastery or r8_8arg.TeleportIsland or r8_8arg.Auto_EvoRace or r8_8arg.AutoFarmAllMsBypassType or r8_8arg.AutoObservationv2 or r8_8arg.AutoMusketeerHat or r8_8arg.AutoEctoplasm or r8_8arg.AutoRengoku or r8_8arg.Auto_Rainbow_Haki or r8_8arg.AutoObservation or getgenv().AutoRipChan or r8_8arg.Safe_Mode or r8_8arg.MasteryFruit or r8_8arg.AutoBudySword or r8_8arg.AutoOderSword or r8_8arg.AutoBounty or r8_8arg.AutoAllBoss or r8_8arg.Auto_Bounty or r8_8arg.AutoSharkman or r8_8arg.Auto_Mastery_Fruit or r8_8arg.Auto_Mastery_Gun or r8_8arg.Auto_Dungeon or r8_8arg.Auto_Cavender or r8_8arg.Auto_Pole or r8_8arg.Auto_Kill_Ply or r8_8arg.Auto_Factory or r8_8arg.AutoSecondSea or r8_8arg.TeleportPly or r8_8arg.AutoBartilo or r8_8arg.UnknownBoss or r8_8arg.GrabChest or r8_8arg.AutoFarmBounty or r8_8arg.Holy_Torch or getgenv().NormalFarm or r8_8arg.Clip or FarmBoss or r8_8arg.AutoElitehunter or r8_8arg.AutoThirdSea or r8_8arg.Auto_Bone or r8_8arg.Autoheart or r8_8arg.Autodoughking or r8_8arg.AutoFarmMaterial or r8_8arg.AutoNevaSoulGuitar or r8_8arg.Auto_Dragon_Trident or r8_8arg.Autotushita or r8_8arg.d or r8_8arg.Autowaden or r8_8arg.Autogay or r8_8arg.Autopole or r8_8arg.Autosaw or r8_8arg.AutoObservationHakiV2 or r8_8arg.AutoFarmNearest or AutoFarmChest or r8_8arg.AutoCarvender or r8_8arg.AutoTwinHook or AutoMobAura or r8_8arg.Tweenfruit or r8_8arg.TeleportNPC or r8_8arg.Leather or r8_8arg.Auto_Wing or r8_8arg.Umm or r8_8arg.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or r8_8arg.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or r8_8arg.AutoFarmMob or getgenv().secretis or r8_8arg.AutoFarmDungeon or r8_8arg.AutoRaidPirate or r8_8arg.AutoQuestRace or getgenv().HeyGearComeHere or getgenv().AutoFarm or r8_8arg.AutoPlayerHunter or r8_8arg.AutoFactory or Grab_Chest or r8_8arg.Namfon or r8_8arg.AutoSwordMastery or r8_8arg.Auto_Seabest or r8_8arg.AutoSeaBest or r8_8arg.AutoKillTial or r8_8arg.Auto_Saber or r8_8arg.Position_Spawn or r8_8arg.Farmfast or r8_8arg.AutoRace or r8_8arg.RaidPirate or Open_Color_Haki or r8_8arg.AutoTerrorshark or FarmShark or r8_8arg.farmpiranya or r8_8arg.Fish_Crew_Member == true or r8_8arg.RelzPirateBrigade or r8_8arg.RelzPirateGrandBrigade or r8_8arg.SailBoat or r8_8arg.AutoFarmAllBoss or r8_8arg.TeleportKitsune or r8_8arg.RelzFishBoat then
				local v528_args = game:GetService("Players").LocalPlayer
				local v529_args = v528_args.Character and v528_args.Character:FindFirstChildOfClass("Humanoid")
				if v529_args then
					local v530_args = v529_args:GetState()
					if v530_args ~= Enum.HumanoidStateType.Seated and v530_args ~= Enum.HumanoidStateType.Running and v530_args ~= Enum.HumanoidStateType.Landed then
						v529_args:ChangeState(5)
					end
				end
			end
		end
	end)
end)

r8_8arg.MagnitudeAdd = 0

spawn(function()
	while task.wait() do
		if r8_8arg.ChestBypass then
			for v531_args, v532_args in pairs(game:GetService("Workspace"):GetChildren()) do
				if v532_args.Name:find("Chest") then
					if game:GetService("Workspace"):FindFirstChild(v532_args.Name) then
						if (v532_args.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 + r8_8arg.MagnitudeAdd then
							repeat
								wait()
								if game:GetService("Workspace"):FindFirstChild(v532_args.Name) then
									r50_50arg(v532_args.CFrame)
									while (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v532_args.Position).Magnitude > 2 do
										wait()
									end
								end
								pressSpace()
							until AutoFarmChest == false or not v532_args.Parent
							r43_43arg(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							r8_8arg.MagnitudeAdd = r8_8arg.MagnitudeAdd + 1500
							break
						end
					end
				end
			end
		end
	end

end)







spawn(function()
	while task.wait() do
		if r8_8arg.ChestBypass then
			local v533_args = "SetTeam"
			local v534_args = "Marines"
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(v533_args, v534_args)
		end
	end

end)

r8_8arg.MagnitudeAdd = 0

local function v35_args()
	local v535_args = game:GetService("VirtualInputManager")
	v535_args:SendKeyEvent(true, "Space", false, game)
	wait(0.1)
	v535_args:SendKeyEvent(false, "Space", false, game)

end



spawn(

    function()
	while wait() do
		if r8_8arg.AutoFarmChest then
			local v536_args = {}
			for v537_args, v538_args in pairs(game:GetService("Workspace"):GetChildren()) do
				if v538_args.Name:find("Chest") then
					if (v538_args.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 + r8_8arg.MagnitudeAdd then
						table.insert(v536_args, v538_args)
					end
				end
			end
			table.sort(

                    v536_args, function(v539_args, v540_args)
				return (v539_args.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < (v540_args.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			end)
			if # v536_args == 0 then
			end
			for v541_args, v542_args in ipairs(v536_args) do
				if not r8_8arg.AutoFarmChest then
					break
				end
				if v542_args and v542_args.Parent then
					r43_43arg(v542_args.CFrame)
					while (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v542_args.Position).Magnitude > 2 do
						wait()
					end
					v35_args()
				end
			end
			r8_8arg.MagnitudeAdd = r8_8arg.MagnitudeAdd + 1500
		end
	end
end)
spawn(function()
	while wait() do
		if r8_8arg.AutoElitehunter and r3_3arg then
			pcall(function()
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
							for v543_args, v544_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v544_args.Name == "Diablo" or v544_args.Name == "Deandre" or v544_args.Name == "Urban" then
									if v544_args:FindFirstChild("Humanoid") and v544_args:FindFirstChild("HumanoidRootPart") and v544_args.Humanoid.Health > 0 then
										repeat
											wait()
											r28_28arg()
											r30_30arg(r8_8arg.SelectWeapon)
											r66_66arg = true
											v544_args.HumanoidRootPart.CanCollide = false
											v544_args.Humanoid.WalkSpeed = 0
											r43_43arg(v544_args.HumanoidRootPart.CFrame * r55_55arg)
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
										until r8_8arg.AutoElitehunter == false or v544_args.Humanoid.Health <= 0 or not v544_args.Parent
									end
								end
							end
						else

							r68_68arg = false
							if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
								r43_43arg(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * r55_55arg)
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
								r43_43arg(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * r55_55arg)
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
								r43_43arg(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * r55_55arg)
							end
						end
					end
				else
					if r8_8arg.AutoEliteHunterHop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
						r4_4arg()
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
					end
				end
			end)
		end
	end
end)
spawn(function()
	while wait() do
		if r8_8arg.AutuTouchHaki and r3_3arg then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Pure Red")
			wait(0.5)
			repeat
				r43_43arg(CFrame.new(- 5414.41357, 309.865753, - 2212.45776))
				wait()
			until not r8_8arg.AutuTouchHaki or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 5414.41357, 309.865753, - 2212.45776)).Magnitude <= 10
			if not r8_8arg.AutuTouchHaki then
				break
			end
			wait(0.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White")
			wait(0.5)
			repeat
				r43_43arg(CFrame.new(- 4971.47559, 331.565765, - 3720.02954))
				wait()
			until not r8_8arg.AutuTouchHaki or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 4971.47559, 331.565765, - 3720.02954)).Magnitude <= 10
			if not r8_8arg.AutuTouchHaki then
				break
			end
			wait(0.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Winter Sky")
			wait(0.5)
			repeat
				r43_43arg(CFrame.new(- 5420.16602, 1084.9657, - 2666.8208))
				wait()
				AutuTouchHaki:SetValue(false)
			until not r8_8arg.AutuTouchHaki or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 5420.16602, 1084.9657, - 2666.8208)).Magnitude <= 10
			if not r8_8arg.AutuTouchHaki then
				break
			end
		end
	end
end)

    



spawn(function()
	pcall(function()
		while wait() do
			if getgenv().AutoRipChan and r3_3arg then
				if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
					for v545_args, v546_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v546_args.Name == "rip_indra True Form" or v546_args.Name == "rip_indra") and v546_args.Humanoid.Health > 0 and v546_args:IsA("Model") and v546_args:FindFirstChild("Humanoid") and v546_args:FindFirstChild("HumanoidRootPart") then
							repeat
								wait()
								pcall(function()
									r28_28arg()
									r30_30arg(r8_8arg.SelectWeapon)
									v546_args.HumanoidRootPart.CanCollide = false
									r43_43arg(v546_args.HumanoidRootPart.CFrame * r55_55arg)
									r66_66arg = true
								end)
							until getgenv().AutoRipChan == false or v546_args.Humanoid.Health <= 0
						end
					end
				elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("God's Chalice") then
					repeat
						r43_43arg(CFrame.new(- 5563.75048828125, 320.4276123046875, - 2662.509521484375))
						r30_30arg("God's Chalice")
					until not (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("God's Chalice"))
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") then
					r43_43arg(game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form").HumanoidRootPart.CFrame * r55_55arg)
				end
			end
		end
	end)

end)



spawn(function()
	while wait() do
		if r8_8arg.UnknownBoss and r2_2arg then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
					for v547_args, v548_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v548_args.Name == "Darkbeard" then
							if v548_args:FindFirstChild("Humanoid") and v548_args:FindFirstChild("HumanoidRootPart") and v548_args.Humanoid.Health > 0 then
								repeat
									task.wait()
									r66_66arg = true
									r28_28arg()
									r30_30arg(r8_8arg.SelectWeapon)
									v548_args.HumanoidRootPart.CanCollide = false
									v548_args.Humanoid.WalkSpeed = 0
									r43_43arg(v548_args.HumanoidRootPart.CFrame * r55_55arg)
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
								until not r8_8arg.UnknownBoss or not v548_args.Parent or v548_args.Humanoid.Health <= 0
							end
						end
					end
				elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
					repeat
						r43_43arg(CFrame.new(3778.584228515625, 15.790505409240723, - 3499.404052734375))
						r30_30arg("Fist of Darkness")
					until not r8_8arg.UnknownBoss
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") then
					r43_43arg(game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard").HumanoidRootPart.CFrame * r55_55arg)
				end
			end)
		end
	end

end)
spawn(function()
	while wait() do
		if r8_8arg.AutoFarmBossHallow and r3_3arg then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
					for v549_args, v550_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v550_args.Name, "Soul Reaper") then
							repeat
								task.wait()
								r66_66arg = true
								r30_30arg(r8_8arg.SelectWeapon)
								r28_28arg()
								r43_43arg(v550_args.HumanoidRootPart.CFrame * r55_55arg)
								game:GetService("VirtualUser"):CaptureController()
								game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
								v550_args.HumanoidRootPart.Transparency = 1

                                -- sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							until v550_args.Humanoid.Health <= 0 or r8_8arg.AutoFarmBossHallow == false
						end
					end
				elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
					repeat
						r43_43arg(CFrame.new(- 8932.322265625, 146.83154296875, 6062.55078125))
						wait()
					until (CFrame.new(- 8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
					r30_30arg("Hallow Essence")
				else
					if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
						r43_43arg(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					end
				end
			end)
		end
	end

end)

   

spawn(function()

	while wait() do

		pcall(function()

			if r76_76arg then

				for v551_args, v552_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

					if (v552_args.HumanoidRootPart.Position - r8_8arg.PosMon.Position).Magnitude <= 200 then

						if v552_args.Humanoid:FindFirstChild("Animator") then

							v552_args.Humanoid.Animator:Destroy()

						end

						v552_args.HumanoidRootPart.CanCollide = false

						v552_args.Head.CanCollide = false

						v552_args.HumanoidRootPart.CFrame = r8_8arg.PosMon

						v552_args.Humanoid:ChangeState(11)

						v552_args.Humanoid:ChangeState(14)

						sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius", math.huge)

					end

				end

			end

		end)

	end

end)
spawn(function()
	pcall(function()
		while wait() do
			if r8_8arg.AutoEctoplasm and r2_2arg then
				if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
					for v553_args, v554_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v554_args.Name, "Ship") then
							repeat
								task.wait()
								r66_66arg = true
								r30_30arg(r8_8arg.SelectWeapon)
								r28_28arg()
								if string.find(v554_args.Name, "Ship") then
									v554_args.HumanoidRootPart.CanCollide = false
									v554_args.Head.CanCollide = false
									r43_43arg(v554_args.HumanoidRootPart.CFrame * r55_55arg)
									r73_73arg = v554_args.Name
									r8_8arg.PosMon = v554_args.HumanoidRootPart.CFrame
									r76_76arg = true
								else
									r43_43arg(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
								end
							until r8_8arg.AutoEctoplasm == false or not v554_args.Parent or v554_args.Humanoid.Health <= 0
						end
					end
				else
					r68_68arg = false
					local v555_args = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					if v555_args > 18000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
					r43_43arg(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
				end
			end
		end
	end)
end)
spawn(function()
	while wait() do
		if r8_8arg.AutoFarmBoss then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(r8_8arg.SelectBoss) then
					for v556_args, v557_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v557_args.Name == r8_8arg.SelectBoss then
							if v557_args:FindFirstChild("Humanoid") and v557_args:FindFirstChild("HumanoidRootPart") and v557_args.Humanoid.Health > 0 then
								repeat
									wait()
									r66_66arg = true
									r28_28arg()
									r30_30arg(r8_8arg.SelectWeapon)
									v557_args.HumanoidRootPart.CanCollide = false
									v557_args.Humanoid.WalkSpeed = 0
									r43_43arg(v557_args.HumanoidRootPart.CFrame * r55_55arg)
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
								until not r8_8arg.AutoFarmBoss or not v557_args.Parent or v557_args.Humanoid.Health <= 0
							end
						end
					end
				else
					r68_68arg = false
					if game:GetService("ReplicatedStorage"):FindFirstChild(r8_8arg.SelectBoss) then
						r43_43arg(game:GetService("ReplicatedStorage"):FindFirstChild(r8_8arg.SelectBoss).HumanoidRootPart.CFrame * r55_55arg)
					end
				end
			end)
		end
	end
end)
spawn(function()
	while wait(.1) do
		if r8_8arg.RandomFruit then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
		end
	end

end)

spawn(

    function()
	while task.wait() do
		if r8_8arg.AutoStoreFruit then
			pcall(

                    function()
				if r8_8arg.AutoStoreFruit then
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bomb-Bomb", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spike-Spike", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Chop-Chop", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spring-Spring", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rocket-Rocket", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Smoke-Smoke", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spin-Spin", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Flame-Flame", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Falcon", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ice-Ice", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Sand-Sand", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dark-Dark", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ghost-Ghost", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Diamond-Diamond", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Light-Light", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Love-Love", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rubber-Rubber", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Barrier-Barrier", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Magma-Magma", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Door-Door", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Quake-Quake", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Human-Human: Buddha", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spider-Spider", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Phoenix", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rumble-Rumble", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Pain-Pain", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Gravity-Gravity", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dough-Dough", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Shadow-Shadow", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Venom-Venom", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Control-Control", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Soul Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Soul-Soul", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dragon-Dragon", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
						if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Leopard-Leopard", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
						end
					end
				end
			end)
		end
		wait(0.3)
	end
end)
r97_97arg = {
	"Bomb-Bomb",
	"Spike-Spike",
	"Chop-Chop",
	"Spring-Spring",
	"Kilo-Kilo",
	"Spin-Spin",
	"Bird: Falcon",
	"Smoke-Smoke",
	"Flame-Flame",
	"Ice-Ice",
	"Sand-Sand",
	"Dark-Dark",
	"Ghost-Ghost",
	"Diamond-Diamond",
	"Light-Light",
	"Love-Love",
	"Rubber-Rubber",
	"Barrier-Barrier",
	"Magma-Magma",
	"Portal-Portal",
	"Quake-Quake",
	"Human-Human: Buddha",
	"Spider-Spider",
	"Bird-Bird: Phoenix",
	"Rumble-Rumble",
	"Pain-Pain",
	"Gravity-Gravity",
	"Dough-Dough",
	"Venom-Venom",
	"Shadow-Shadow",
	"Control-Control",
	"Soul-Soul",
	"Dragon-Dragon",
	"Leopard-Leopard"
}
spawn(function()
	pcall(function()
		while wait(.1) do
			if r8_8arg.AutoBuyFruitSniper then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", r8_8arg.SelectFruit)
			end
		end
	end)
end)
spawn(function()
	while wait(.1) do
		if r53_53arg then
			for v558_args, v559_args in pairs(game.Workspace:GetChildren()) do
				if string.find(v559_args.Name, "Fruit") then
					r43_43arg(v559_args.Handle.CFrame)
				end
			end
		end
	end
end)
spawn(function()
	pcall(function()
		while wait() do
			if r8_8arg.AutoBuyChip then
				if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", r8_8arg.SelectChip)
					end
				end
			end
		end
	end)
end)



local v36_args = {
	"Island 5",
	"Island 4",
	"Island 3",
	"Island 2",
	"Island 1"
}

spawn(function()
	while wait() do
		if r8_8arg.Auto_Dungeon then

			if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
				for v560_args, v561_args in ipairs(v36_args) do
					local v562_args = game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild(v561_args)
					if v562_args then
						r43_43arg(v562_args.CFrame * CFrame.new(0, 70, 100))
						break
					end
				end

			end
		end
	end

end)
spawn(function()
	while wait() do
		if getgenv().GoDieNigger then
			for v563_args, v564_args in pairs(game.Workspace.Enemies:GetDescendants()) do
				if v564_args:FindFirstChild("Humanoid") and v564_args:FindFirstChild("HumanoidRootPart") and v564_args.Humanoid.Health > 0 then
					repeat
						wait(.1)
						v564_args.Humanoid.Health = 0
						v564_args.HumanoidRootPart.CanCollide = false
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
					until not getgenv().GoDieNigger or not v564_args.Parent or v564_args.Humanoid.Health <= 0
				end
			end
		end
	end

end)
spawn(function()
	pcall(function()
		while wait(.1) do
			if r8_8arg.Auto_Awakener then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Check")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken")
			end
		end
	end)
end)

spawn(function()
	while wait() do
		if r8_8arg.Join then
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, r8_8arg.Job, game.Players.LocalPlayer)
			v3_args:MakeNotify({
				["Title"] = "Rise Hub |",
				["Description"] = "Free Scripts",
				["Color"] = Color3.fromRGB(255, 0, 111),
				["Content"] = "Start Join JobID...",
				["Time"] = 1,
				["Delay"] = 5
			})
		end
	end

end)

if r8_8arg.Rejoin then
	if not getgenv().rejoinConnection then
		getgenv().rejoinConnection = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(v565_args)
			if v565_args.Name == 'ErrorPrompt' and v565_args:FindFirstChild('MessageArea') and v565_args.MessageArea:FindFirstChild("ErrorFrame") then
				v3_args:MakeNotify({
					["Title"] = "Rise Hub |",
					["Description"] = "Free Scripts",
					["Color"] = Color3.fromRGB(255, 0, 111),
					["Content"] = "Starting Rejoin Server...",
					["Time"] = 1,
					["Delay"] = 5
				})
				game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
			end
		end)
	end

else
	if getgenv().rejoinConnection then
		getgenv().rejoinConnection:Disconnect()
		getgenv().rejoinConnection = nil
	end

end
spawn(function()
	while task.wait() do
		pcall(function()
			if r8_8arg.WalkWater then
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000)
			else
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000)
			end
		end)
	end
end)



-------------

spawn(function()
	pcall(function()
		while wait() do
			if getgenv().HeyGearComeHere and r3_3arg then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for v566_args, v567_args in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
						if v567_args:IsA("MeshPart") then
							if v567_args.Material == Enum.Material.Neon then
								r43_43arg(v567_args.CFrame)
							end
						end
					end
				end
			end
		end
	end)

end)



spawn(function()
	pcall(function()
		while task.wait() do
			if r8_8arg.ScanV4 and game.Players.LocalPlayer.Character.RaceTransformed.Value then
				r8_8arg.LetV4 = false
				r43_43arg(CFrame.new(- 9556.03515625, 260.887939453125, 5598.35302734375))
				local v568_args = 0
				while r8_8arg.ScanV4 do
					if tick() - v568_args >= 5 then
						v3_args:MakeNotify({
							["Title"] = "Rise Hub |",
							["Description"] = "Free Scripts",
							["Color"] = Color3.fromRGB(255, 0, 111),
							["Content"] = "Wait V4 is End For Start Farm",
							["Time"] = 1,
							["Delay"] = 4
						})
						v568_args = tick()
					end
					task.wait(1)
				end
			end
		end
	end)

end)





spawn(function()
	while wait() do
		if r8_8arg.LetV4 and r3_3arg then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
					for v569_args, v570_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v570_args.Name == "Reborn Skeleton" or v570_args.Name == "Living Zombie" or v570_args.Name == "Demonic Soul" or v570_args.Name == "Posessed Mummy" then
							if v570_args:FindFirstChild("Humanoid") and v570_args:FindFirstChild("HumanoidRootPart") and v570_args.Humanoid.Health > 0 then
								repeat
									wait()
									r28_28arg()
									r30_30arg(r8_8arg.SelectWeapon)
									v570_args.HumanoidRootPart.CanCollide = false
									v570_args.Humanoid.WalkSpeed = 0
									v570_args.Head.CanCollide = false
									r66_66arg = true
									r43_43arg(v570_args.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
									r92_92arg = v570_args.Name
									if v570_args.Name == "Demonic Soul" then
										r93_93arg(v570_args.Name, CFrame.new(- 9497.908203125, 172.1048126220703, 6148.97119140625))
									elseif v570_args.Name == "Living Zombie" then
										r93_93arg(v570_args.Name, CFrame.new(- 10143.466796875, 138.6266632080078, 5974.3330078125))
									elseif v570_args.Name == "Reborn Skeleton" then
										r93_93arg(v570_args.Name, CFrame.new(- 8760.986328125, 142.1048126220703, 6039.1083984375))
									elseif v570_args.Name == "Posessed Mummy" then
										r93_93arg(v570_args.Name, CFrame.new(- 9575.4267578125, 5.792530536651611, 6226.22900390625))
									end
								until not r8_8arg.LetV4 or not v570_args.Parent or v570_args.Humanoid.Health <= 0
							end
						end
					end
				else
					if BypassTP then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v33_args.Position).Magnitude > 1500 then
							print("bypass api check")
						else
							r43_43arg(v33_args)
						end
					else
						r43_43arg(v33_args)
					end
					r43_43arg(CFrame.new(- 9507.03125, 713.654968, 6186.39453))
					for v571_args, v572_args in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
						if v572_args.Name == "Reborn Skeleton" or v572_args.Name == "Living Zombie" or v572_args.Name == "Demonic Soul" or v572_args.Name == "Posessed Mummy" then
							r43_43arg(v572_args.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
						end
					end
				end
			end)
		end
	end

end)



spawn(function()
	pcall(function()
		while wait() do
			if r8_8arg.ScanV4 and not game.Players.LocalPlayer.Character.RaceTransformed.Value then
				r8_8arg.LetV4 = true
				local v573_args = 0
				while not r8_8arg.ScanV4 do
					if tick() - v573_args >= 5 then
						v3_args:MakeNotify({
							["Title"] = "Rise Hub |",
							["Description"] = "Free Scripts",
							["Color"] = Color3.fromRGB(255, 0, 111),
							["Content"] = "Start Farm For Turn On V4",
							["Time"] = 1,
							["Delay"] = 4
						})
						v573_args = tick()
					end
					wait(1)
				end
			end
		end
	end)

end)





task.spawn(function()
	while task.wait() do
		if r8_8arg.ScanV4 and game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and not game.Players.LocalPlayer.Character.RaceTransformed.Value then
			local v574_args = game:service("VirtualInputManager")
			v574_args:SendKeyEvent(true, "Y", false, game)
			task.wait()
			v574_args:SendKeyEvent(false, "Y", false, game)
		end
	end

end)



spawn(function()
	pcall(function()
		while wait(0.1) do
			if r8_8arg.ScanV4 then
				local v575_args = {
					[1] = true
				}
				local v576_args = {
					[1] = "UpgradeRace",
					[2] = "Buy"
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(v576_args))
			end
		end
	end)

end)



spawn(function()
	while task.wait() do
		pcall(function()
			if r51_51arg and r3_3arg then
				for v577_args, v578_args in pairs(game:GetService("Workspace").Characters:GetChildren()) do
					local v579_args = game.Players.LocalPlayer
					local v580_args = v579_args.Character
					if v578_args.Name ~= v579_args.Name and (v578_args.HumanoidRootPart.Position - v580_args.HumanoidRootPart.Position).Magnitude <= 300 then
						if v578_args.Humanoid.Health > 0 then
							repeat
								task.wait()
								r28_28arg()
								r8_8arg.AUTOKen = true
								r30_30arg(r8_8arg.SelectWeapon)
								r98_98arg = v578_args.Name
								r43_43arg(v578_args.HumanoidRootPart.CFrame * CFrame.new(0, 3, 3))
								v578_args.HumanoidRootPart.CanCollide = false
								r99_99arg = true
								r100_100arg()
								r66_66arg = true
								r69_69arg = true
							until not r51_51arg or not v578_args.Parent or v578_args.Humanoid.Health <= 0
						end
					end
				end
			end
		end)
	end

end)

spawn(

    function()
	while wait() do
		if r99_99arg then
			pcall(

                    function()
				r101_101arg = aQ.activeController
				r101_101arg:attack()
				r100_100arg()
				r101_101arg.hitboxMagnitude = 55
				wait(.1)
			end)
		end
	end
end)



spawn(function()
	while wait(0.2) do
		pcall(function()
			if r8_8arg.XaiSkillZ and r51_51arg then
				game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
				game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
			end
			if r8_8arg.XaiSkillX and r51_51arg then
				game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
				game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
			end
			if r8_8arg.XaiSkillC and r51_51arg then
				game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
				game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
			end
		end)
	end

end)
function r102_102arg()
	for v581_args, v582_args in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
		pcall(function()
			if r103_103arg then
				if v582_args.Name == "Kitsune Island" then
					if not v582_args:FindFirstChild('NameEsp') then
						local v583_args = Instance.new('BillboardGui', v582_args)
						v583_args.Name = 'NameEsp'
						v583_args.ExtentsOffset = Vector3.new(0, 1, 0)
						v583_args.Size = UDim2.new(1, 200, 1, 30)
						v583_args.Adornee = v582_args
						v583_args.AlwaysOnTop = true
						local v584_args = Instance.new('TextLabel', v583_args)
						v584_args.Font = "Code"
						v584_args.FontSize = "Size14"
						v584_args.TextWrapped = true
						v584_args.Size = UDim2.new(1, 0, 1, 0)
						v584_args.TextYAlignment = 'Top'
						v584_args.BackgroundTransparency = 1
						v584_args.TextStrokeTransparency = 0.5
						v584_args.TextColor3 = Color3.fromRGB(80, 245, 245)
					else
						v582_args['NameEsp'].TextLabel.Text = (v582_args.Name .. '   \n' .. v8_args((game:GetService('Players').LocalPlayer.Character.Head.Position - v582_args.Position).Magnitude / 3) .. ' M')
					end
				end
			else
				if v582_args:FindFirstChild('NameEsp') then
					v582_args:FindFirstChild('NameEsp'):Destroy()
				end
			end
		end)
	end
end
spawn(function()
	local v585_args
	while not v585_args do
		v585_args = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
		wait(1)
	end
	while wait() do
		if r8_8arg.TweenToKitsune and r3_3arg then
			local v586_args = v585_args:FindFirstChild("ShrineActive")
			if v586_args then
				for v587_args, v588_args in pairs(v586_args:GetDescendants()) do
					if v588_args:IsA("BasePart") and v588_args.Name:find("NeonShrinePart") then
						r43_43arg(v588_args.CFrame)
					end
				end
			end
		end
	end
end)



function r32_32arg()

	pcall(function()

		for v589_args, v590_args in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

			if v590_args:IsA('Tool') and not (v590_args.Name == "Summon Sea Beast" or v590_args.Name == "Water Body" or v590_args.Name == "Awakening") then

				local v591_args = game.Players.LocalPlayer.Backpack:FindFirstChild(v590_args.Name) 

				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v591_args)
				wait(1)

			end

		end

	end)

end
spawn(function()
	pcall(function()
		while wait(.1) do
			if r8_8arg.Auto_Rainbow_Haki and r3_3arg then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					r43_43arg(CFrame.new(- 11892.0703125, 930.57672119141, - 8760.1591796875))
					if (Vector3.new(- 11892.0703125, 930.57672119141, - 8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
						wait(1.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")
					end
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
						for v592_args, v593_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v593_args.Name == "Stone" then
								r104_104arg = v593_args.HumanoidRootPart.CFrame
								repeat
									task.wait()
									r30_30arg(r8_8arg.SelectWeapon)
									r43_43arg(v593_args.HumanoidRootPart.CFrame * r55_55arg)
									v593_args.HumanoidRootPart.CanCollide = false
									v593_args.HumanoidRootPart.CFrame = r104_104arg
									r66_66arg = true

                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
								until r8_8arg.Auto_Rainbow_Haki == false or v593_args.Humanoid.Health <= 0 or not v593_args.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
							end
						end
					else
						r43_43arg(CFrame.new(- 1086.11621, 38.8425903, 6768.71436, 0.0231462717, - 0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, - 0.999732077, - 0.0137055516, 0.0186523199))
					end
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
						for v594_args, v595_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v595_args.Name == "Island Empress" then
								r104_104arg = v595_args.HumanoidRootPart.CFrame
								repeat
									task.wait()
									r30_30arg(r8_8arg.SelectWeapon)
									r43_43arg(v595_args.HumanoidRootPart.CFrame * r55_55arg)
									v595_args.HumanoidRootPart.CanCollide = false
									v595_args.HumanoidRootPart.CFrame = r104_104arg
									r66_66arg = true

                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
								until r8_8arg.Auto_Rainbow_Haki == false or v595_args.Humanoid.Health <= 0 or not v595_args.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
							end
						end
					else
						r43_43arg(CFrame.new(5713.98877, 601.922974, 202.751251, - 0.101080291, 0, - 0.994878292, 0, 1, 0, 0.994878292, 0, - 0.101080291))
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
						for v596_args, v597_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v597_args.Name == "Kilo Admiral" then
								r104_104arg = v597_args.HumanoidRootPart.CFrame
								repeat
									task.wait()
									r30_30arg(r8_8arg.SelectWeapon)
									r43_43arg(v597_args.HumanoidRootPart.CFrame * r55_55arg)
									v597_args.HumanoidRootPart.CanCollide = false
									v597_args.HumanoidRootPart.CFrame = r104_104arg
									r66_66arg = true

                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
								until r8_8arg.Auto_Rainbow_Haki == false or v597_args.Humanoid.Health <= 0 or not v597_args.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
							end
						end
					else
						r43_43arg(CFrame.new(2877.61743, 423.558685, - 7207.31006, - 0.989591599, 0, - 0.143904909, 0, 1.00000012, 0, 0.143904924, 0, - 0.989591479))
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
						for v598_args, v599_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v599_args.Name == "Captain Elephant" then
								r104_104arg = v599_args.HumanoidRootPart.CFrame
								repeat
									task.wait()
									r30_30arg(r8_8arg.SelectWeapon)
									r43_43arg(v599_args.HumanoidRootPart.CFrame * r55_55arg)
									v599_args.HumanoidRootPart.CanCollide = false
									v599_args.HumanoidRootPart.CFrame = r104_104arg
									r66_66arg = true

                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
								until r8_8arg.Auto_Rainbow_Haki == false or v599_args.Humanoid.Health <= 0 or not v599_args.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
							end
						end
					else
						r43_43arg(CFrame.new(- 13485.0283, 331.709259, - 8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, - 1.02065748e-07, 1, - 9.94383065e-09, - 0.69961375, - 6.43015241e-08, 0.714521289))
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
						for v600_args, v601_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v601_args.Name == "Beautiful Pirate" then
								r104_104arg = v601_args.HumanoidRootPart.CFrame
								repeat
									task.wait()
									r30_30arg(r8_8arg.SelectWeapon)
									r43_43arg(v601_args.HumanoidRootPart.CFrame * r55_55arg)
									v601_args.HumanoidRootPart.CanCollide = false
									v601_args.HumanoidRootPart.CFrame = r104_104arg
									r66_66arg = true

                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
								until r8_8arg.Auto_Rainbow_Haki == false or v601_args.Humanoid.Health <= 0 or not v601_args.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
							end
						end
					else
						r43_43arg(CFrame.new(5312.3598632813, 20.141201019287, - 10.158538818359))
					end
				else
					r43_43arg(CFrame.new(- 11892.0703125, 930.57672119141, - 8760.1591796875))
					if (Vector3.new(- 11892.0703125, 930.57672119141, - 8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
						wait(1.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet")
					end
				end
			end
		end
	end)
end)
spawn(function()
	pcall(function()
		while wait() do
			if r8_8arg.AutoRengoku and r2_2arg then
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
					r30_30arg("Hidden Key")
					r43_43arg(CFrame.new(6571.1201171875, 299.23028564453, - 6967.841796875))
				elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
					for v602_args, v603_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v603_args.Name == "Snow Lurker" or v603_args.Name == "Arctic Warrior") and v603_args.Humanoid.Health > 0 then
							repeat
								task.wait()
								r30_30arg(r8_8arg.SelectWeapon)
								r28_28arg()
								v603_args.HumanoidRootPart.CanCollide = false
								r43_43arg(v603_args.HumanoidRootPart.CFrame * r55_55arg)
								r66_66arg = true
								r105_105arg = v603_args.Name
								if v603_args.Name == "Snow Lurker" then
									r95_95arg(v603_args.Name, CFrame.new(5542.33447, 28.1321411, - 6786.04199, 0.746223629, 0, 0.665695369, 0, 1, 0, - 0.665695369, 0, 0.746223629))
								elseif v603_args.Name == "Arctic Warrior" then
									r95_95arg(v603_args.Name, CFrame.new(6092.98975, 28.3671188, - 6236.60791, - 0.951801181, 0, - 0.306715637, 0, 1, 0, 0.306715637, 0, - 0.951801181))
								end
							until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or r8_8arg.AutoRengoku == false or not v603_args.Parent or v603_args.Humanoid.Health <= 0
							r68_68arg = false
						end
					end
				else
					r68_68arg = false
					r43_43arg(CFrame.new(5439.716796875, 84.420944213867, - 6715.1635742188))
				end
			end
		end
	end)
end)
spawn(function()
	pcall(function()
		while wait(.1) do
			if r8_8arg.AutoBartilo and r2_2arg then
				if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
							r106_106arg = "Swan Pirate"
							for v604_args, v605_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v605_args.Name == r106_106arg then
									pcall(function()
										repeat
											task.wait()
											sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
											r30_30arg(r8_8arg.SelectWeapon)
											r28_28arg()
											v605_args.HumanoidRootPart.Transparency = 1
											v605_args.HumanoidRootPart.CanCollide = false
											r43_43arg(v605_args.HumanoidRootPart.CFrame * r55_55arg)
											r66_66arg = true
											r107_107arg = v605_args.Name
											if v605_args.Name == "Swan Pirate" then
												r96_96arg(v605_args.Name, CFrame.new(946.045898, 72.9597092, 1228.28796, 0.241395146, 2.32742075e-08, - 0.970426917, - 1.1568777e-08, 1, 2.11057216e-08, 0.970426917, 6.13183415e-09, 0.241395146))
											end
										until not v605_args.Parent or v605_args.Humanoid.Health <= 0 or r8_8arg.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										r68_68arg = false
									end)
								end
							end
						else
							repeat
								r43_43arg(CFrame.new(932.624451, 156.106079, 1180.27466, - 0.973085582, 4.55137119e-08, - 0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, - 0.973085582))
								wait()
							until not r8_8arg.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, - 0.973085582, 4.55137119e-08, - 0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, - 0.973085582)).Magnitude <= 10
						end
					else
						repeat
							r43_43arg(CFrame.new(- 456.28952, 73.0200958, 299.895966))
							wait()
						until not r8_8arg.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 456.28952, 73.0200958, 299.895966)).Magnitude <= 10
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
					end
				elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
					if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
						r106_106arg = "Jeremy"
						for v606_args, v607_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v607_args.Name == r106_106arg then
								r108_108arg = v607_args.HumanoidRootPart.CFrame
								repeat
									task.wait()

                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
									r30_30arg(r8_8arg.SelectWeapon)
									r28_28arg()
									v607_args.HumanoidRootPart.Transparency = 1
									v607_args.HumanoidRootPart.CanCollide = false
									v607_args.HumanoidRootPart.CFrame = r108_108arg
									r43_43arg(v607_args.HumanoidRootPart.CFrame * r55_55arg)
									r66_66arg = true

                                        -- sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
								until not v607_args.Parent or v607_args.Humanoid.Health <= 0 or r8_8arg.AutoBartilo == false
							end
						end
					elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
						repeat
							r43_43arg(CFrame.new(- 456.28952, 73.0200958, 299.895966))
							wait()
						until not r8_8arg.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 456.28952, 73.0200958, 299.895966)).Magnitude <= 10
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")
						wait(1)
						repeat
							r43_43arg(CFrame.new(2099.88159, 448.931, 648.997375))
							wait()
						until not r8_8arg.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
						wait(2)
					else
						repeat
							r43_43arg(CFrame.new(2099.88159, 448.931, 648.997375))
							wait()
						until not r8_8arg.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
					end
				elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
					repeat
						r43_43arg(CFrame.new(- 1850.49329, 13.1789551, 1750.89685))
						wait()
					until not r8_8arg.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
					wait(1)
					repeat
						r43_43arg(CFrame.new(- 1858.87305, 19.3777466, 1712.01807))
						wait()
					until not r8_8arg.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
					wait(1)
					repeat
						r43_43arg(CFrame.new(- 1803.94324, 16.5789185, 1750.89685))
						wait()
					until not r8_8arg.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
					wait(1)
					repeat
						r43_43arg(CFrame.new(- 1858.55835, 16.8604317, 1724.79541))
						wait()
					until not r8_8arg.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
					wait(1)
					repeat
						r43_43arg(CFrame.new(- 1869.54224, 15.987854, 1681.00659))
						wait()
					until not r8_8arg.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
					wait(1)
					repeat
						r43_43arg(CFrame.new(- 1800.0979, 16.4978027, 1684.52368))
						wait()
					until not r8_8arg.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
					wait(1)
					repeat
						r43_43arg(CFrame.new(- 1819.26343, 14.795166, 1717.90625))
						wait()
					until not r8_8arg.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
					wait(1)
					repeat
						r43_43arg(CFrame.new(- 1813.51843, 14.8604736, 1724.79541))
						wait()
					until not r8_8arg.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
				end
			end
		end
	end)
end)
spawn(function()
	while task.wait() do
		if r52_52arg and r1_1arg and game.Players.LocalPlayer.Data.Level.Value >= 200 then
			pcall(function()
				if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
					if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
						if (CFrame.new(- 1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, - 0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, - 4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							r43_43arg(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
							wait(1)
						else
							r43_43arg(CFrame.new(- 1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, - 0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, - 4.39869794e-08, 0.37091279))
						end
					else
						if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
							if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
								r30_30arg("Torch")
								r43_43arg(CFrame.new(1114.61475, 5.04679728, 4350.22803, - 0.648466587, - 1.28799094e-09, 0.761243105, - 5.70652914e-10, 1, 1.20584542e-09, - 0.761243105, 3.47544882e-10, - 0.648466587))
							else
								r43_43arg(CFrame.new(- 1610.00757, 11.5049858, 164.001587, 0.984807551, - 0.167722285, - 0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, - 0.258850515, 0.965917408))
							end
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup")
								wait(0.5)
								r30_30arg("Cup")
								wait(0.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", game:GetService("Players").LocalPlayer.Character.Cup)
								wait(0)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan")
							else
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
									if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then

										r43_43arg(CFrame.new(- 2967.59521, - 4.91089821, 5328.70703, 0.342208564, - 0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, - 0.939287126, 0.0184739735, 0.342634559))
										for v608_args, v609_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v609_args.Name == "Mob Leader" then
												if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
													if v609_args:FindFirstChild("Humanoid") and v609_args:FindFirstChild("HumanoidRootPart") and v609_args.Humanoid.Health > 0 then
														repeat
															task.wait()
															r28_28arg()
															r30_30arg(r8_8arg.SelectWeapon)
															v609_args.HumanoidRootPart.CanCollide = false
															v609_args.Humanoid.WalkSpeed = 0
															r43_43arg(v609_args.HumanoidRootPart.CFrame * CFrame.new(PosX, r54_54arg, PosZ))
															game:GetService("VirtualUser"):CaptureController()
															game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
															sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
														until v609_args.Humanoid.Health <= 0 or not r52_52arg
													end
												end
												if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
													r43_43arg(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]").HumanoidRootPart.CFrame * Farm_Mode)
												end
											end
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
									wait(0.5)
									r30_30arg("Relic")
									wait(0.5)
									r43_43arg(CFrame.new(- 1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, - 5.79995607e-08, - 0.481375456, 6.30572643e-08, 0.876514494))
								end
							end
						end
					end
				else
					if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
						for v610_args, v611_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v611_args:FindFirstChild("Humanoid") and v611_args:FindFirstChild("HumanoidRootPart") and v611_args.Humanoid.Health > 0 then
								if v611_args.Name == "Saber Expert" then
									repeat
										task.wait()
										r30_30arg(r8_8arg.SelectWeapon)
										r66_66arg = true
										r43_43arg(v611_args.HumanoidRootPart.CFrame * CFrame.new(PosX, r54_54arg, PosZ))
										v611_args.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										v611_args.HumanoidRootPart.Transparency = 1
										v611_args.Humanoid.JumpPower = 0
										v611_args.Humanoid.WalkSpeed = 0
										v611_args.HumanoidRootPart.CanCollide = false

                                            --v.Humanoid:ChangeState(11)

                                            --v.Humanoid:ChangeState(14)
										r77_77arg = v611_args.HumanoidRootPart.CFrame
										r73_73arg = v611_args.Name
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672), workspace.CurrentCamera.CFrame)
									until v611_args.Humanoid.Health <= 0 or not r52_52arg
									if v611_args.Humanoid.Health <= 0 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic")
									end
								end
							end
						end
					end
				end
			end)
		end
	end
end)



local v37_args = CFrame.new(5314.58203, 22.8796749, - 125.942276, 1, 1.69639192e-10, 1.5617945e-15, - 1.69639192e-10, 1, 5.38001999e-08, - 1.55266783e-15, - 5.38001999e-08, 1)

spawn(function()
	while wait() do
		if r8_8arg.AutoCarvender and r3_3arg then
			pcall(function()
				local v612_args = game:GetService("Workspace").Enemies
				local v613_args = v612_args:FindFirstChild("Beautiful Pirate")
				if v613_args then
					for v614_args, v615_args in pairs(v612_args:GetChildren()) do
						if v615_args.Name == "Beautiful Pirate" then
							local v616_args = v615_args:FindFirstChild("Humanoid")
							local v617_args = v615_args:FindFirstChild("HumanoidRootPart")
							if v616_args and v617_args and v616_args.Health > 0 then
								repeat
									task.wait()
									r28_28arg()
									r66_66arg = true
									r30_30arg(r8_8arg.SelectWeapon)
									v617_args.CanCollide = false
									v616_args.WalkSpeed = 0
									v617_args.Size = Vector3.new(50, 50, 50)
									r43_43arg(v617_args.CFrame * r55_55arg)
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not r8_8arg.AutoCarvender or not v615_args.Parent or v616_args.Health <= 0
							end
						end
					end
				else
					local v618_args = game.Players.LocalPlayer
					local v619_args = v618_args.Character and v618_args.Character:FindFirstChild("HumanoidRootPart")
					if v619_args then
						local v620_args = (v619_args.Position - v37_args.Position).Magnitude
						if BypassTP then
							if v620_args > 1500 then
								BTP(v37_args)
							else
								r43_43arg(v37_args)
							end
						else
							r43_43arg(v37_args)
						end
						r43_43arg(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))
						local v621_args = game:GetService("ReplicatedStorage")
						local v622_args = v621_args:FindFirstChild("Beautiful Pirate")
						if v622_args then
							r43_43arg(v622_args.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
						elseif r8_8arg.AutoCavanderhop then
							r4_4arg()
						end
					end
				end
			end)
		end
	end

end)



local v38_args = CFrame.new(- 13348.0654296875, 405.8904113769531, - 8570.62890625)
spawn(function()
	while wait() do
		if r8_8arg.AutoTwinHook and r3_3arg then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
					for v623_args, v624_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v624_args.Name == "Captain Elephant" then
							if v624_args:FindFirstChild("Humanoid") and v624_args:FindFirstChild("HumanoidRootPart") and v624_args.Humanoid.Health > 0 then
								repeat
									task.wait()
									r66_66arg = true
									r28_28arg()
									r30_30arg(r8_8arg.SelectWeapon)
									v624_args.HumanoidRootPart.CanCollide = false
									v624_args.Humanoid.WalkSpeed = 0
									r43_43arg(v624_args.HumanoidRootPart.CFrame * r55_55arg)
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not r8_8arg.AutoTwinHook or not v624_args.Parent or v624_args.Humanoid.Health <= 0
							end
						end
					end
				else
					r68_68arg = false
					if BypassTP then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v38_args.Position).Magnitude > 1500 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 12471.169921875, 374.94024658203, - 7551.677734375))
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v38_args.Position).Magnitude < 1500 then
							r43_43arg(v38_args)
						end
					else
						r43_43arg(v38_args)
					end
					r43_43arg(CFrame.new(- 13348.0654296875, 405.8904113769531, - 8570.62890625))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
						r43_43arg(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					else
						if r8_8arg.AutoTwinHook_Hop then
							r4_4arg()
						end
					end
				end
			end)
		end
	end
end)



spawn(function()
	while wait() do
		if getgenv().ligisword and r2_2arg then
			pcall(function()
				local v625_args = {
					"LegendarySwordDealer",
					"1"
				}
				local v626_args = {
					"LegendarySwordDealer",
					"2"
				}
				local v627_args = {
					"LegendarySwordDealer",
					"3"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v625_args))
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v626_args))
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v627_args))
				if getgenv().ligisword_Hop and getgenv().ligisword and r2_2arg then
					NotificationLibrary:SendNotification("Warning", "Server HOP...", 6)
					wait(5)
					r4_4arg()
				end
			end)
		end
	end

end)
spawn(function()
	while wait() do
		if r8_8arg.AutoYama and r3_3arg then
			if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then
				repeat
					wait(.1)
					fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
				until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not r8_8arg.AutoYama
			end
		end
	end
end)



spawn(function()
	while wait() do
		if r8_8arg.Autotushita and r3_3arg then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
					for v628_args, v629_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v629_args.Name == "Longma" then
							if v629_args:FindFirstChild("Humanoid") and v629_args:FindFirstChild("HumanoidRootPart") and v629_args.Humanoid.Health > 0 then
								repeat
									task.wait()
									r66_66arg = true
									r28_28arg()
									r30_30arg(r8_8arg.SelectWeapon)
									v629_args.HumanoidRootPart.CanCollide = false
									v629_args.Humanoid.WalkSpeed = 0
									r43_43arg(v629_args.HumanoidRootPart.CFrame * CFrame.new(PosX, r54_54arg, PosZ))
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not r8_8arg.Autotushita or not v629_args.Parent or v629_args.Humanoid.Health <= 0
							end
						end
					end
				else
					r43_43arg(CFrame.new(- 10238.875976563, 389.7912902832, - 9549.7939453125))
					if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
						r43_43arg(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
					else
						if r8_8arg.Autotushitahop then
							r4_4arg()
						end
					end
				end
			end)
		end
	end
end)
spawn(function()
	while wait() do
		if getgenv().touchbad and r3_3arg then
			pcall(function()
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5749.7861328125, 611.9736938476562, - 276.2497863769531))
				wait(1)
				r43_43arg(CFrame.new(5154.54785, 142.129684, 916.826294, 0.00160392188, 7.16881203e-08, 0.999998689, 4.34501235e-09, 1, - 7.1695176e-08, - 0.999998689, 4.45999992e-09, 0.00160392188))
				wait(15)
				r30_30arg("Holy Torch")
				repeat
					r43_43arg(CFrame.new(-10752, 417, -9366))
					wait()
				until not getgenv().touchbad or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10752, 417, -9366)).Magnitude <= 10
				wait(1)
				repeat
					r43_43arg(CFrame.new(-11672, 334, -9474))
					wait()
				until not getgenv().touchbad or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-11672, 334, -9474)).Magnitude <= 10
				wait(1)
				repeat
					r43_43arg(CFrame.new(-12132, 521, -10655))
					wait()
				until not getgenv().touchbad or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12132, 521, -10655)).Magnitude <= 10
				wait(1)
				repeat
					r43_43arg(CFrame.new(-13336, 486, -6985))
					wait()
				until not getgenv().touchbad or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13336, 486, -6985)).Magnitude <= 10
				wait(1)
				repeat
					r43_43arg(CFrame.new(-13489, 332, -7925))
					wait()
				until not getgenv().touchbad or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13489, 332, -7925)).Magnitude <= 10
			end)
		end
	end
end)



spawn(function()
	while wait() do
		if r8_8arg.Auto_Stats_Devil_Fruit then
			local v630_args = {
				[1] = "AddPoint",
				[2] = "Demon Fruit",
				[3] = 3
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v630_args))
		end
	end

end)

spawn(function()
	while wait() do
		if r8_8arg.Auto_Stats_Gun then
			local v631_args = {
				[1] = "AddPoint",
				[2] = "Gun",
				[3] = 3
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v631_args))
		end
	end

end)

spawn(function()
	while wait() do
		if r8_8arg.Auto_Stats_Sword then
			local v632_args = {
				[1] = "AddPoint",
				[2] = "Sword",
				[3] = 3
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v632_args))
		end
	end

end)

spawn(function()
	while wait() do
		if r8_8arg.Auto_Stats_Defense then
			local v633_args = {
				[1] = "AddPoint",
				[2] = "Defense",
				[3] = 3
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v633_args))
		end
	end

end)

spawn(function()
	while wait() do
		if r8_8arg.Auto_Stats_Melee then
			local v634_args = {
				[1] = "AddPoint",
				[2] = "Melee",
				[3] = 3
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v634_args))
		end
	end

end)

r109_109arg = {
	"KITTGAMING",
	"ENYU_IS_PRO",
	"FUDD10",
	"BIGNEWS",
	"THEGREATACE",
	"SUB2GAMERROBOT_EXP1",
	"STRAWHATMAIME",
	"SUB2OFFICIALNOOBIE",
	"SUB2NOOBMASTER123",
	"SUB2DAIGROCK",
	"AXIORE",
	"TANTAIGAMIMG",
	"STRAWHATMAINE",
	"JCWK",
	"FUDD10_V2",
	"SUB2FER999",
	"MAGICBIS",
	"TY_FOR_WATCHING",
	"STARCODEHEO",
	"STAFFBATTLE",
	"ADMIN_STRENGTH",
	"DRAGONABUSE"
}
spawn(function()
	pcall(function()
		while wait() do
			if getgenv().secretis and r3_3arg then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					r43_43arg(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X, 500, game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
				end
			end
		end
	end)
end)

        

function r110_110arg()
	spawn(function()
		for v635_args, v636_args in pairs(workspace:GetDescendants()) do
			if v636_args.ClassName == 'Part' or v636_args.ClassName == 'SpawnLocation' or v636_args.ClassName == 'WedgePart' or v636_args.ClassName == 'Terrain' then
				v636_args.Material = 'Plastic'
			end
		end
		for v637_args, v638_args in pairs(game:GetDescendants()) do
			if v638_args:IsA('Texture') then
				v638_args.Texture = ''
			elseif v638_args:IsA('BasePart') then
				v638_args.Material = 'Plastic'
			end
		end
		for v639_args, v640_args in pairs(r33_33arg.LocalPlayer.PlayerScripts:GetDescendants()) do
			local v641_args = {
				'RecordMode',
				'Fireflies',
				'Wind',
				'WindShake',
				'WindLines',
				'WaterBlur',
				'WaterEffect',
				'wave',
				'WaterColorCorrection',
				'WaterCFrame',
				'MirageFog',
				'MobileButtonTransparency',
				'WeatherStuff',
				'AnimateEntrance',
				'Particle',
				'AccessoryInvisible'
			}
			if table.find(v641_args, v640_args.Name) then
				v640_args:Destroy()
			end
		end
	end)

end



spawn(function()
	pcall(function()
		while wait() do
			if getgenv().HeyGearComeHere and r3_3arg then

				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then

					for v642_args, v643_args in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 

						if v643_args:IsA("MeshPart") then
							if v643_args.Material == Enum.Material.Neon then
								r43_43arg(v643_args.CFrame)
							end
						end

					end

				end

			end
		end
	end)
end)

local v39_args = game:GetService("VirtualInputManager")

spawn(function()
	while wait() do
		pcall(function()
			if getgenv().NhinMoonThanhSoiCoDoc then
				local v644_args = game.Lighting:GetMoonDirection()
				local v645_args = game.Workspace.CurrentCamera.CFrame.p + v644_args * 100
				game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, v645_args)
				v39_args:SendKeyEvent(true, "T", false, game)
				wait(0.1)
				v39_args:SendKeyEvent(false, "T", false, game)
			end
		end)
	end

end)



--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--

--+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+----+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+--



local v40_args = Instance.new("ScreenGui")

local v41_args = Instance.new("ImageButton") 

local v42_args = game:GetService("UserInputService")

local v43_args = game:GetService("TweenService") 

local v44_args = Instance.new("UICorner")

v40_args.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

v41_args.Parent = v40_args

v41_args.Size = UDim2.new(0, 50, 0, 50)

v41_args.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)

v41_args.BackgroundTransparency = 1 

v41_args.Image = "rbxassetid://104822877643590" 

v44_args.Parent = v41_args

v44_args.CornerRadius = UDim.new(1, 0) 

local function v45_args(v646_args, v647_args, v648_args)
	local v649_args = TweenInfo.new(v648_args, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	local v650_args = v43_args:Create(v646_args, v649_args, {
		Size = v647_args
	})
	return v650_args

end

v41_args.MouseButton1Click:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
	local v651_args = v45_args(v41_args, UDim2.new(0, 60, 0, 60), 0.1)
	local v652_args = v45_args(v41_args, UDim2.new(0, 50, 0, 50), 0.9)
	v651_args:Play()
	v651_args.Completed:Connect(function()
		v652_args:Play()
	end)

end)

v41_args.InputBegan:Connect(function(v653_args)
	if v653_args.UserInputType == Enum.UserInputType.MouseButton1 or v653_args.UserInputType == Enum.UserInputType.Touch then
		local v654_args = v45_args(v41_args, UDim2.new(0, 40, 0, 40), 0.1) -- Lún vào sâu hơn
		v654_args:Play()
	end

end)

v41_args.InputEnded:Connect(function(v655_args)
	if v655_args.UserInputType == Enum.UserInputType.MouseButton1 or v655_args.UserInputType == Enum.UserInputType.Touch then
		local v656_args = v45_args(v41_args, UDim2.new(0, 55, 0, 55), 0.1) -- Nảy ra lớn hơn
		v656_args:Play()
		v656_args.Completed:Connect(function()
			v45_args(v41_args, UDim2.new(0, 50, 0, 50), 0.1):Play() -- Quay lại kích thước ban đầu
		end)
	end

end)

local v46_args = false

local v47_args, v48_args, v49_args

local function v50_args(v657_args)
	local v658_args = v657_args.Position - v48_args
	local v659_args = UDim2.new(v49_args.X.Scale, v49_args.X.Offset + v658_args.X, v49_args.Y.Scale, v49_args.Y.Offset + v658_args.Y)
	v41_args.Position = v659_args

end

v41_args.InputBegan:Connect(function(v660_args)
	if v660_args.UserInputType == Enum.UserInputType.MouseButton1 or v660_args.UserInputType == Enum.UserInputType.Touch then
		v46_args = true
		v48_args = v660_args.Position
		v49_args = v41_args.Position
		v660_args.Changed:Connect(function()
			if v660_args.UserInputState == Enum.UserInputState.End then
				v46_args = false
			end
		end)
	end

end)

v41_args.InputChanged:Connect(function(v661_args)
	if v661_args.UserInputType == Enum.UserInputType.MouseMovement or v661_args.UserInputType == Enum.UserInputType.Touch then
		v47_args = v661_args
	end

end)

v42_args.InputChanged:Connect(function(v662_args)
	if v46_args and v662_args == v47_args then
		v50_args(v662_args)
	end

end)



--\\ Load Settings

r27_27arg()

--\\ End

--

--\\ Create Main
r111_111arg = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
r112_112arg = r111_111arg:CreateWindow({
	Title = "Rise Hub |",
	SubTitle = "Free Scripts",
	TabWidth = 120,
	Size = UDim2.fromOffset(490, 320),
	Acrylic = false,
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.LeftControl 

})

--\\ End

--\\ Create Tab
r113_113arg = {
	hi = r112_112arg:AddTab({
		Title = "Server-Support",
		Icon = ""
	}),

	Settings = r112_112arg:AddTab({
		Title = "Config-Tab",
		Icon = ""
	}),
	Sh = r112_112arg:AddTab({
		Title = "Store-Shop",
		Icon = ""
	}),
	Main = r112_112arg:AddTab({
		Title = "Auto-Farm",
		Icon = ""
	}),
	stack = r112_112arg:AddTab({
		Title = "Item-Farm",
		Icon = ""
	}),
	other = r112_112arg:AddTab({
		Title = "Other-Boss",
		Icon = ""
	}),
	St = r112_112arg:AddTab({
		Title = "Game-Server",
		Icon = ""
	}),
	cailon = r112_112arg:AddTab({
		Title = "Kitsune-Mirage",
		Icon = ""
	}),
	RC = r112_112arg:AddTab({
		Title = "V4-Upgrade",
		Icon = ""
	}),
	spl = r112_112arg:AddTab({
		Title = "Status-Players",
		Icon = ""
	}),
	raid = r112_112arg:AddTab({
		Title = "Raid-Fruits",
		Icon = ""
	}),
	Lc = r112_112arg:AddTab({
		Title = "Teleport",
		Icon = ""
	}),
	Ms = r112_112arg:AddTab({
		Title = "Misc",
		Icon = ""
	}),   

}

--\\ End

--\\ Tab Select

r112_112arg:SelectTab(1)

--\\ End

-- ah i so need discord member can u help me :>? 

--\\ Tab Server Support

r113_113arg.hi:AddSection("please join my discord :>") 

r113_113arg.hi:AddButton({
	Title = "Discord Server of Rise Hub",
	Description = "https://discord.gg/P24sKJYapX",
	Callback = function()
		setclipboard("https://discord.gg/P24sKJYapX")
	end
})

r113_113arg.hi:AddButton({
	Title = "Discord Server of Rise Hub",
	Description = "https://discord.gg/P24sKJYapX",
	Callback = function()
		setclipboard("https://discord.gg/P24sKJYapX")
	end
})

r113_113arg.hi:AddButton({
	Title = "Discord Server of Rise Hub",
	Description = "https://discord.gg/P24sKJYapX",
	Callback = function()
		setclipboard("https://discord.gg/P24sKJYapX")
	end
})

r113_113arg.hi:AddButton({
	Title = "Discord Server of Rise Hub",
	Description = "https://discord.gg/P24sKJYapX",
	Callback = function()
		setclipboard("https://discord.gg/P24sKJYapX")
	end
})

r113_113arg.hi:AddButton({
	Title = "Discord Server of Rise Huby",
	Description = "https://discord.gg/P24sKJYapX",
	Callback = function()
		setclipboard("https://discord.gg/P24sKJYapX")
	end
})

r113_113arg.hi:AddButton({
	Title = "Discord Server of Rise Huby",
	Description = "https://discord.gg/P24sKJYapX",
	Callback = function()
		setclipboard("https://discord.gg/P24sKJYapX")
	end
})

--\\ End

--\\ Redeem Code

r113_113arg.Sh:AddButton({
	Title = "Redeem Code",
	Description = "",
	Callback = function()
		function r114_114arg(v663_args)
			game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v663_args)
		end
		for v664_args, v665_args in pairs(r109_109arg) do
			r114_114arg(v665_args)
		end
	end
})

--\\ End

--\\ Teleport World 1 - 3
r113_113arg.Sh:AddButton({
	Title = "Teleport Old World",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
	end
})
r113_113arg.Sh:AddButton({
	Title = "Teleport New World",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
	end
})
r113_113arg.Sh:AddButton({
	Title = "Teleport Third World",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
	end
})

--\\ End
r113_113arg.Sh:AddSection("Mele Section")
r115_115arg = {
	["Select"] = function()
	end,
	["Black Leg"] = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
	end,
	["Electro"] = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	end,
	["Fishman Karate"] = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
	end,
	["Dragon Claw"] = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
	end,
	["Superhuman"] = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
	end,
	["Death Step"] = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
	end,
	["Sharkman Karate"] = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	end,
	["Electric Claw"] = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	end,
	["Dragon Talon"] = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	end,
	["Godhuman"] = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
	end,
	["Sanguine Art"] = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
	end

}
r116_116arg = r113_113arg.Sh:AddDropdown("Chon_Melee", {
	Title = "Buy Fighting Style",
	Description = "",
	Values = {
		"Select",
		"Black Leg",
		"Electro",
		"Fishman Karate",
		"Dragon Claw",
		"Superhuman",
		"Death Step",
		"Sharkman Karate",
		"Electric Claw",
		"Dragon Talon",
		"Godhuman"
	},
	Multi = false,
	Default = 1,

})

r116_116arg:SetValue("Select")

r116_116arg:OnChanged(function(v666_args)
	getgenv().FightingStyle = v666_args
	if r115_115arg[v666_args] then
		r115_115arg[v666_args]()
	end

end)

r113_113arg.Sh:AddSection("Bone Quest Section")
r117_117arg = r113_113arg.Sh:AddToggle("MyToggle", {
	Title = "Random Bone",
	Default = r8_8arg.Auto_Random_Bone
})
r117_117arg:OnChanged(function(v667_args)
	r8_8arg.Auto_Random_Bone = v667_args
	r26_26arg()
end)
r117_117arg = r113_113arg.Sh:AddToggle("MyToggle", {
	Title = "Auto Pray",
	Default = r8_8arg.Pray
})
r117_117arg:OnChanged(function(v668_args)
	r8_8arg.Pray = v668_args
	r26_26arg()
end)
r117_117arg = r113_113arg.Sh:AddToggle("MyToggle", {
	Title = "Auto Try Luck",
	Default = r8_8arg.Trylux
})
r117_117arg:OnChanged(function(v669_args)
	r8_8arg.Trylux = v669_args
	r26_26arg()
end)
r113_113arg.Sh:AddSection("Abilitie Section")
r113_113arg.Sh:AddButton({
	Title = "Buy-Buso-Haki [ 25,000 Beli ]",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
	end
})
r113_113arg.Sh:AddButton({
	Title = "Buy-Soru [ 100,000 Beli ]",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
	end
})
r113_113arg.Sh:AddButton({
	Title = "Buy-Sky-Jump [ 10,000 Beli ]",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
	end
})
r113_113arg.Sh:AddButton({
	Title = "Buy Ken Haki [ 750,000 Beli ]",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
	end
})
r113_113arg.Sh:AddSection("Race & Etc.. Section")
r113_113arg.Sh:AddButton({
	Title = "Reroll-Race [ 3,000 Fragments ]",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
	end
})
r113_113arg.Sh:AddButton({
	Title = "Buy Ghoul Race",
	Description = "",
	Callback = function()
		local v670_args = {
			[1] = "Ectoplasm",
			[2] = "BuyCheck",
			[3] = 4
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v670_args))
		local v671_args = {
			[1] = "Ectoplasm",
			[2] = "Change",
			[3] = 4
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v671_args))
	end
})
r113_113arg.Sh:AddButton({
	Title = "Buy-Cyborg-Race",
	Description = "",
	Callback = function()
		local v672_args = {
			[1] = "CyborgTrainer",
			[2] = "Buy"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v672_args))
	end
})
r113_113arg.Sh:AddButton({
	Title = "Refund-Stats [ 2,500 Fragments ]",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
	end
})
local v51_args = r113_113arg.Settings:AddDropdown("chonmilici", {
	Title = "Select-Weapon",
	Values = {
		"Melee",
		"Sword"
	},
	Multi = false,
	Default = 1,

})

v51_args:SetValue("Melee")

v51_args:OnChanged(function(v673_args)
	r8_8arg.SelectWeapon = v673_args

end)

r117_117arg = r113_113arg.Settings:AddToggle("MyToggle", {
	Title = "Bring Mob",
	Default = true
})

r117_117arg:OnChanged(

    function(v674_args)
	r8_8arg.BringMonster = v674_args
	r26_26arg()
end)

r113_113arg.Settings:AddSection("Bypass TP Section")

local v52_args = r113_113arg.Settings:AddToggle("resetp", {
	Title = "Bypass-Teleport",
	Description = "if have cup or key or fruit recommend turn off it",
	Default = false
})
v52_args:OnChanged(function(v675_args)
	r8_8arg.ResetTP = v675_args

end)

r113_113arg.Settings:AddSection("Tween Settings!!")

local v53_args = r113_113arg.Settings:AddToggle("tweenY", {
	Title = "Tween Pos Y",
	Description = "teleport to high when tween if turn off = normally tween",
	Default = true
})
v53_args:OnChanged(function(v676_args)
	getgenv().TweenPosY = v676_args

end)

local v54_args = r113_113arg.Settings:AddToggle("UseV3", {
	Title = "Auto Use Race v3",
	Default = false
})

local v55_args = r113_113arg.Settings:AddToggle("UseV4", {
	Title = "Auto Use Race v4",
	Default = false
})
r117_117arg = r113_113arg.Settings:AddToggle("MyToggle", {
	Title = "Enable-Buso-Haki",
	Default = true
})
r117_117arg:OnChanged(function(v677_args)
	r8_8arg.AUTOHAKI = v677_args
	r26_26arg()
end)

r117_117arg = r113_113arg.Settings:AddToggle("MyToggle", {
	Title = "Enable-Ken-Haki",
	Default = r8_8arg.AUTOKen
})
r117_117arg:OnChanged(function(v678_args)
	r8_8arg.AUTOKen = v678_args
	r26_26arg()
end)
r117_117arg = r113_113arg.Settings:AddToggle("MyToggle", {
	Title = "Deleted Notification",
	Default = false
})
r117_117arg:OnChanged(function(v679_args)
	r72_72arg = v679_args
	r26_26arg()
end)

r117_117arg = r113_113arg.Settings:AddToggle("MyToggle", {
	Title = "Fast Attack",
	Description = "",
	Default = true
})

r117_117arg:OnChanged(function(v680_args)
	r67_67arg = v680_args
	r26_26arg()

end) 

local v56_args = (SelectFastAttackMode or "Fast Super Fast Attack")

r118_118arg = {
	"Normal Attack",
	"Fast Attack",
	"Super Fast Attack"
}

local v57_args = r113_113arg.Settings:AddDropdown("SelectedFastAttackModes", {

	Title = "Delay Fast Attack",

	Values = r118_118arg,

	Multi = false,

	Default = v56_args,

})

v57_args:OnChanged(function(v681_args)

	v56_args = v681_args

	v31_args(v56_args)

end)

v54_args:OnChanged(function(v682_args)

	r119_119arg = v682_args

	task.spawn(function()

		while r119_119arg do
			wait()

			if r119_119arg then

				game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")

			end

		end

	end)

end)

v55_args:OnChanged(function(v683_args)

	r120_120arg = v683_args

	task.spawn(function()

		while r120_120arg do
			wait()

			local v684_args = r91_91arg("Awakening")

			if v684_args then

				v684_args.RemoteFunction:InvokeServer(true)

			end

		end

	end)

end)

local v58_args = r113_113arg.Main:AddToggle("Autolivi", {
	Title = "Auto Farm Level",
	Description = "turn on and go sleep wating level max",
	Default = false
})
v58_args:OnChanged(function(v685_args)
	getgenv().NormalFarm = v685_args

end)
function r121_121arg(v686_args)
	v686_args.HumanoidRootPart.CanCollide = false
	if syn or Fluxus then
		v686_args.Humanoid:ChangeState(11)
	else
		for v687_args, v688_args in next, v686_args:GetDescendants() do
			if (v688_args:IsA("Part") or v688_args:IsA("MeshPart")) and not string.find(v686_args.Name, "Leg") and v688_args.CanCollide then
				v688_args.CanCollide = false
			end
		end
	end
	if not v686_args.HumanoidRootPart:FindFirstChild("vando") then
		local v689_args = Instance.new("BodyVelocity")
		v689_args.Parent = v686_args
		v689_args.Name = "vando"
		v689_args.MaxForce = Vector3.new(100000, 100000, 100000)
		v689_args.Velocity = Vector3.new(0, 0, 0)
	end

end

game:GetService("RunService").RenderStepped:connect(function()
	sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)

end)



function r122_122arg()
	getgenv().QuestPoses = {}
	for v695_args, v696_args in pairs(getnilinstances()) do
		if v696_args:IsA("Model") and v696_args:FindFirstChild("Head") and v696_args.Head:FindFirstChild("QuestBBG") and v696_args.Head.QuestBBG.Title.Text == "QUEST" then
			getgenv().QuestPoses[v696_args.Name] = v696_args.Head.CFrame * CFrame.new(0, -2, 2)
		end
	end
	for v697_args, v698_args in pairs(game.Workspace.NPCs:GetDescendants()) do
		if v698_args.Name == "QuestBBG" and v698_args.Title.Text == "QUEST" then
			getgenv().QuestPoses[v698_args.Parent.Parent.Name] = v698_args.Parent.Parent.Head.CFrame * CFrame.new(0, -2, 2)
		end
	end
	getgenv().DialoguesList = {}
	for v699_args, v700_args in pairs(require(game.ReplicatedStorage.DialoguesList)) do
		getgenv().DialoguesList[v700_args] = v699_args
	end
	local v690_args = getscriptclosure(game:GetService("Players").LocalPlayer.PlayerScripts.NPC)
	local v691_args = {}
	for v701_args, v702_args in pairs(debug.getprotos(v690_args)) do
		if # debug.getconstants(v702_args) == 1 then
			table.insert(v691_args, debug.getconstant(v702_args, 1))
		end
	end
	local v692_args = false
	local v693_args = {}
	for v703_args, v704_args in pairs(debug.getconstants(v690_args)) do
		if type(v704_args) == "string" then
			if v704_args == "Players" then
				v692_args = false
			end
			if not v692_args then
				if v704_args == "Blox Fruit Dealer" then
					v692_args = true
				end
			else
			end
			if v692_args then
				table.insert(v693_args, v704_args)
			end
		end
	end
	local v694_args = {}
	getgenv().questpoint = {}
	for v705_args, v706_args in pairs(v693_args) do
		if QuestPoses[v706_args] then
			v694_args[v691_args[v705_args]] = v693_args[v705_args]
		end
	end
	for v707_args, v708_args in next, v694_args do
		getgenv().questpoint[v707_args] = QuestPoses[v708_args]
	end
	getgenv().questpoint["SkyExp1Quest"] = CFrame.new(- 7857.28516, 5544.34033, - 382.321503, - 0.422592998, 0, 0.906319618, 0, 1, 0, - 0.906319618, 0, - 0.422592998)

end

r122_122arg()

local v59_args = {
	"BartiloQuest",
	"Trainees",
	"MarineQuest",
	"CitizenQuest"

}

local v60_args = {}

getgenv().mob = ''

getgenv().mobv = ""

local v61_args = require(game.ReplicatedStorage.Quests)

local function v62_args()
	local v709_args = v16_args.Data.Level.Value
	local v710_args = 0
	if v709_args >= 1450 and game.PlaceId == 4442272183 then
		getgenv().mobv = "Water Fighter"
		getgenv().mobvv = "ForgottenQuest"
		getgenv().mobvvv = 2
	elseif v709_args >= 700 and game.PlaceId == 2753915549 then
		getgenv().mobv = "Galley Captain"
		getgenv().mobvv = "FountainQuest"
		getgenv().mobvvv = 2
	else
		for v711_args, v712_args in pairs(v61_args) do
			for v713_args, v714_args in pairs(v712_args) do
				local v715_args = v714_args.LevelReq
				for v716_args, v717_args in pairs(v714_args.Task) do
					if v709_args >= v715_args and v715_args >= v710_args and v714_args.Task[v716_args] > 1 and not table.find(v59_args, tostring(v711_args)) then
						v710_args = v715_args
						getgenv().mobv = tostring(v716_args)
						getgenv().mobvv = v711_args
						getgenv().mobvvv = v713_args
					end
				end
			end
		end
	end

end

function r123_123arg()
	local v718_args = {}
	for v719_args, v720_args in pairs(v61_args) do
		for v721_args, v722_args in pairs(v720_args) do
			local v723_args = v722_args.LevelReq
			for v724_args, v725_args in pairs(v722_args.Task) do
				if v724_args == getgenv().mobv then
					for v726_args, v727_args in next, v720_args do
						if v727_args.LevelReq <= game.Players.LocalPlayer.Data.Level.Value and v727_args.Name ~= "Town Raid" then
							for v728_args, v729_args in next, v727_args.Task do
								if v729_args > 1 then
									table.insert(v718_args, v728_args)
								end
							end
						end
					end
				end
			end
		end
	end
	return v718_args 

end

local v63_args = require(game.ReplicatedStorage:WaitForChild("GuideModule"));

function r124_124arg()
	for v730_args, v731_args in next, v63_args.Data do
		if v730_args == "QuestData" then
			return true
		end
	end
	return false

end

function r125_125arg()
	local v732_args
	if r124_124arg() then
		for v733_args, v734_args in next, v63_args.Data.QuestData.Task do
			v732_args = v733_args
		end
	end
	return v732_args 

end

function r126_126arg()
	v62_args()
	local v735_args = {}
	if getgenv().DoubleQuest and r124_124arg() and r125_125arg() == getgenv().mobv and # r123_123arg() >= 2 then
		for v736_args, v737_args in pairs(v61_args) do
			for v738_args, v739_args in pairs(v737_args) do
				for v740_args, v741_args in pairs(v739_args.Task) do
					if tostring(v740_args) == getgenv().mobv then
						for v742_args, v743_args in next, v737_args do
							for v744_args, v745_args in next, v743_args.Task do
								if v744_args ~= getgenv().mobv and v745_args > 1 then
									v735_args["Name"] = tostring(v744_args)
									v735_args["NameQuest"] = v736_args
									v735_args["ID"] = v742_args
									return v735_args
								end
							end
						end
					end
				end
			end
		end
	else
		v735_args["Name"] = getgenv().mobv
		v735_args["NameQuest"] = getgenv().mobvv
		v735_args["ID"] = getgenv().mobvvv
		return v735_args
	end

end

function r127_127arg(v746_args)
	r43_43arg(getgenv().questpoint[tostring(v746_args)] * CFrame.new(0, 4, 2), true)

end

function r128_128arg()
	if not getgenv().questpoint[tostring(r126_126arg().NameQuest)] then
		r122_122arg()
		return
	end
	if (getgenv().questpoint[tostring(r126_126arg().NameQuest)].Position - v16_args.Character.HumanoidRootPart.Position).magnitude <= 8 then
		task.wait(1)
		if v16_args.Character.Humanoid.Health > 0 then
			v1_args:InvokeServer("StartQuest", tostring(r126_126arg().NameQuest), r126_126arg().ID)
		end
	else
		r127_127arg(r126_126arg().NameQuest)
	end

end



local v64_args = {}



function r129_129arg(v747_args)
	local v748_args
	if string.find(v747_args, "Lv.") then
		v748_args = v747_args:gsub(" %pLv. %d+%p", "")
	end
	for v749_args, v750_args in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
		local v751_args
		if string.find(v750_args.Name, "Lv.") then
			v751_args = v750_args.Name:gsub(" %pLv. %d+%p", "")
		end
		if v750_args:IsA("Part") and ((v751_args and v751_args == v747_args) or v747_args == v750_args.Name or (v748_args and v750_args.Name == v748_args)) then
			return v750_args
		end
	end
	for v752_args, v753_args in pairs(getnilinstances()) do
		local v754_args
		if string.find(v753_args.Name, "Lv.") then
			v754_args = v753_args.Name:gsub(" %pLv. %d+%p", "")
		end
		if v753_args:IsA("Part") and ((v754_args and v754_args == v747_args) or v747_args == v753_args.Name or (v748_args and v753_args.Name == v748_args)) then
			return v753_args
		end
	end

end



function r130_130arg(v755_args, v756_args)
	if typeof(v755_args) == "table" then
		if # v64_args >= 4 then
			v64_args = {}
			return
		end
		local v757_args
		for v758_args, v759_args in next, v755_args do
			if not table.find(v64_args, v759_args) then
				v757_args = r129_129arg(v759_args)
				repeat
					task.wait()
					r43_43arg(v757_args.CFrame * r55_55arg)
				until (v757_args.Position - v16_args.Character.HumanoidRootPart.Position).Magnitude <= 100 or r131_131arg(v755_args) or not v756_args
			end
		end
	else
		r132_132arg = r129_129arg(v755_args)
		r43_43arg(r132_132arg.CFrame * r55_55arg)
	end

end

function r131_131arg(v760_args)
	local v761_args = math.huge
	local v762_args
	for v763_args, v764_args in pairs(game.Workspace.Enemies:GetChildren()) do
		local v765_args = v764_args.Name:gsub(" %pLv. %d+%p", "")
		if ((typeof(v760_args) == "table" and (table.find(v760_args, v764_args.Name) or table.find(v760_args, v765_args))) or (v764_args.Name == v760_args or v760_args == v765_args)) and v764_args:IsA('Model') and v764_args:FindFirstChild('Humanoid') and v764_args.Humanoid.Health > 0 and v764_args:FindFirstChild('HumanoidRootPart') then
			local v766_args = (v764_args.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude
			if v766_args < v761_args then
				v761_args = v766_args
				v762_args = v764_args
			end
		end
	end
	return v762_args

end



function r133_133arg(v767_args)
	local v768_args = type(v767_args) == "string" and {
		v767_args
	} or v767_args
	local v769_args = {}
	for v770_args, v771_args in pairs(v768_args) do
		for v772_args, v773_args in pairs(workspace["_WorldOrigin"].EnemySpawns:GetChildren()) do
			if v773_args.Name:match("^" .. v771_args) then
				table.insert(v769_args, v773_args)
			end
		end
	end
	return # v769_args > 0 and v769_args or nil

end



function r134_134arg(v774_args, v775_args)
	local v776_args = r133_133arg(v774_args)
	if not v776_args then
		return
	end
	for v777_args, v778_args in pairs(v776_args) do
		if not r131_131arg(v774_args) and not v775_args() then
			repeat
				wait()
				r43_43arg(v778_args.CFrame * CFrame.new(0, 35, 0))
			until r37_37arg(v778_args.Position) < 50 or r131_131arg(MobLevelFarm) or v775_args()
		end
	end
	wait(2)

end



spawn(

    function()
	while wait() do
		pcall(

                function()
			if getgenv().NormalFarm then
				local v779_args
				local v780_args
				local v781_args
				local v782_args = 2
				local v783_args = r125_125arg() or ""
				if not v16_args.PlayerGui.Main:FindFirstChild("Quest").Visible then
					r128_128arg()
				else
					if not r131_131arg(v783_args) then
						r134_134arg(v783_args, function()
							return not getgenv().NormalFarm
						end)
					else
						local v784_args = r131_131arg(v783_args)
						repeat
							wait()
							r121_121arg(v784_args)
							r43_43arg(v784_args.HumanoidRootPart.CFrame * r55_55arg)
							r66_66arg = true
							r73_73arg = v784_args.Name
							r8_8arg.PosMon = v784_args.HumanoidRootPart.CFrame
							r76_76arg = true
							r30_30arg(r8_8arg.SelectWeapon)
						until not v784_args or not v784_args.Parent or v784_args.Humanoid.Health == 0 or not getgenv().NormalFarm
					end
				end
			end
		end)
	end
end)

local v65_args = r113_113arg.Main:AddToggle("farm_near", {
	Title = "Farm Near Mob",
	Description = "Farm Near Level Mob Or Near Position",
	Default = false
})

v65_args:OnChanged(function(v785_args)
	getgenv().NearMob = v785_args

end)

spawn(function()
	while wait() do
		if getgenv().NearMob then
			for v786_args, v787_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if v787_args.Name and v787_args:FindFirstChild("Humanoid") then
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v787_args.HumanoidRootPart.CFrame.Position).Magnitude < 1000 then
						if v787_args.Humanoid.Health > 0 then
							repeat
								wait()
								r28_28arg()
								v787_args.HumanoidRootPart.CanCollide = false
								v787_args.Humanoid.WalkSpeed = 0
								v787_args.Humanoid.JumpPower = 0
								v787_args.Head.CanCollide = false
								r73_73arg = v787_args.Name
								r8_8arg.PosMon = v787_args.HumanoidRootPart.CFrame
								r76_76arg = true
								r30_30arg(r8_8arg.SelectWeapon)
								r66_66arg = true
								r43_43arg(v787_args.HumanoidRootPart.CFrame * r55_55arg)
							until not getgenv().NearMob or not v787_args.Parent or v787_args.Humanoid.Health <= 0
						end
					end
				end
			end
		end
	end

end)

local v66_args = r113_113arg.Main:AddToggle("ToggleBringMob", {
	Title = "Double Quest",
	Description = "",
	Default = true
})
v66_args:OnChanged(function(v788_args)
	getgenv().DoubleQuest = v788_args
end)
r113_113arg.Main:AddSection("Bone & Cake Prince")
local v67_args = r113_113arg.Main:AddToggle("katanguuuu", {
	Title = "Auto Katakuri",
	Description = "",
	Default = false
})
v67_args:OnChanged(function(v789_args)
	getgenv().AutoKata = v789_args
end)

local v68_args = r113_113arg.Main:AddToggle("farmbun", {
	Title = "Auto Bone",
	Description = "",
	Default = r8_8arg.Auto_Bone
})
v68_args:OnChanged(function(v790_args)
	r8_8arg.Auto_Bone = v790_args
	r26_26arg()
end)
local v69_args = r113_113arg.Main:AddToggle("accept", {
	Title = "Accept Quest",
	Description = "",
	Default = r8_8arg.AcceptQuest
})
v69_args:OnChanged(function(v791_args)
	r8_8arg.AcceptQuest = v791_args
	r26_26arg()
end)

    

local v70_args = CFrame.new(- 2091.911865234375, 70.00884246826172, - 12142.8359375)

local v71_args = game:GetService("Workspace").Enemies

task.spawn(function()
	while task.wait() do
		if getgenv().AutoKata and r3_3arg then
			pcall(function()
				local v792_args = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
				local v793_args = game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or (v793_args == 0 and (v792_args - Vector3.new(- 2152.46533, 69.9830399, - 12399.1357)).Magnitude > 500) then
					r43_43arg(CFrame.new(- 2152.46533, 69.9830399, - 12399.1357, 0.998845279, - 1.36106415e-08, 0.0480427258, 1.75027015e-08, 1, - 8.05917963e-08, - 0.0480427258, 8.13396142e-08, 0.998845279))
					wait(4)
				end
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
					for v794_args, v795_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v795_args.Name == "Cake Prince" then
							if v795_args:FindFirstChild("Humanoid") and v795_args:FindFirstChild("HumanoidRootPart") and v795_args.Humanoid.Health > 0 then
								repeat
									task.wait()
									r28_28arg()
									r30_30arg(r8_8arg.SelectWeapon)
									v795_args.HumanoidRootPart.CanCollide = false
									v795_args.Humanoid.WalkSpeed = 0
									r43_43arg(v795_args.HumanoidRootPart.CFrame * CFrame.new(0, 35, 0))
									if game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Ring") or game:GetService("Workspace")["_WorldOrigin"]:FindFirstChild("Fist") then
										r43_43arg(v795_args.HumanoidRootPart.CFrame * CFrame.new(0, 170, 0))
									else
										r43_43arg(v795_args.HumanoidRootPart.CFrame * CFrame.new(0, 35, 0))
									end
									r66_66arg = true
								until not getgenv().AutoKata or not v795_args.Parent or v795_args.Humanoid.Health <= 0
							end
						end
					end
				else
					local v796_args = false
					for v797_args, v798_args in pairs({
						"Cookie Crafter",
						"Cake Guard",
						"Baking Staff",
						"Head Baker"
					}) do
						if game:GetService("Workspace").Enemies:FindFirstChild(v798_args) then
							v796_args = true
							break
						end
					end
					if v796_args then
						for v799_args, v800_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v800_args.Name == "Cookie Crafter" or v800_args.Name == "Cake Guard" or v800_args.Name == "Baking Staff" or v800_args.Name == "Head Baker" then
								if v800_args:FindFirstChild("Humanoid") and v800_args:FindFirstChild("HumanoidRootPart") and v800_args.Humanoid.Health > 0 then
									repeat
										wait()
										r28_28arg()
										r30_30arg(r8_8arg.SelectWeapon)
										v800_args.HumanoidRootPart.CanCollide = false
										v800_args.Humanoid.WalkSpeed = 0
										v800_args.Head.CanCollide = false
										r43_43arg(v800_args.HumanoidRootPart.CFrame * CFrame.new(5, 40, 7))
										r66_66arg = true
										if v800_args.Name == "Cookie Crafter" then
											r94_94arg(v800_args.Name, CFrame.new(- 2351.32861328125, 37.7981071472168, - 12108.84375))
										elseif v800_args.Name == "Cake Guard" then
											r94_94arg(v800_args.Name, CFrame.new(- 1608.6195068359375, 37.79800796508789, - 12381.6044921875))
										elseif v800_args.Name == "Baking Staff" then
											r94_94arg(v800_args.Name, CFrame.new(- 1865.7054443359375, 37.79812240600586, - 12856.1416015625))
										elseif v800_args.Name == "Head Baker" then
											r94_94arg(v800_args.Name, CFrame.new(- 2241.444091796875, 53.50244140625, - 12868.287109375))
										end
									until not getgenv().AutoKata or not v800_args.Parent or v800_args.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]")
									r68_68arg = false
								end
							end
						end
					else
						if v793_args == 1 then
							local v801_args = math.random(1, 3)
							if v801_args == 1 then
								r43_43arg(CFrame.new(- 1436.86011, 167.753616, - 12296.9512))
							elseif v801_args == 2 then
								r43_43arg(CFrame.new(- 2383.78979, 150.450592, - 12126.4961))
							elseif v801_args == 3 then
								r43_43arg(CFrame.new(- 2231.2793, 168.256653, - 12845.7559))
							end
						end
						if BypassTP then
							if (v792_args - v70_args.Position).Magnitude > 1500 then
								BTP(v70_args)
							else
								r43_43arg(v70_args)
							end
						else
							r43_43arg(v70_args)
						end
						r29_29arg(r8_8arg.SelectWeapon)
						r43_43arg(CFrame.new(- 2091.911865234375, 70.00884246826172, - 12142.8359375))
					end
				end
			end)
		end
	end

end)
local v72_args = r113_113arg.other:AddParagraph({
	Title = "---------------",
	Content = "chest section"
})

r135_135arg = r113_113arg.other:AddToggle("toilaskidder", {
	Title = "Auto Chest Bypass",
	Default = false
})

r135_135arg:OnChanged(function(v802_args)
	r8_8arg.ChestBypass = v802_args

end)
r136_136arg = r113_113arg.other:AddToggle("occhochest", {
	Title = "Auto Chest Tween",
	Default = AutoFarmChest
})

r136_136arg:OnChanged(function(v803_args)
	r8_8arg.AutoFarmChest = v803_args

end)
local v73_args = r113_113arg.other:AddParagraph({
	Title = "---------------",
	Content = "material section"
})

r117_117arg = r113_113arg.other:AddToggle("MyToggle", {
	Title = "Farm Ectoplasm",
	Default = r8_8arg.AutoEctoplasm
})
r117_117arg:OnChanged(function(v804_args)
	r8_8arg.AutoEctoplasm = v804_args
	r26_26arg()
end)

-------------------------------------
if r1_1arg then
	r137_137arg = {
		"Magma Ore",
		"Angel Wings",
		"Leather",
		"Scrap Metal",
		"Radioactive Material"
	}

elseif r2_2arg then
	r137_137arg = {
		"Mystic Droplet",
		"Magma Ore",
		"Leather",
		"Scrap Metal",
		"Demonic Wisp",
		"Vampire Fang",
		"Radioactive Material"
	}

elseif r3_3arg then
	r137_137arg = {
		"Leather",
		"Scrap Metal",
		"Vampire Fang",
		"Conjured Cocoa",
		"Dragon Scale",
		"Gunpowder",
		"Fish Tail",
		"Mini Tusk",
		"Radioactive Material"
	}

end

local v74_args = r113_113arg.other:AddDropdown("Dropdown", {
	Title = "Select Material",
	Values = r137_137arg,
	Multi = false,
	Default = r8_8arg.SeliMarteriel,

})

v74_args:OnChanged(function(v805_args)
	r8_8arg.SeliMarteriel = v805_args
	r26_26arg()

end)

local v75_args = r113_113arg.other:AddToggle("MyToggle", {
	Title = "Farm Marterial",
	Default = r8_8arg.FimiMarteriu
})

v75_args:OnChanged(function(v806_args)
	r8_8arg.FimiMarteriu = v806_args
	r26_26arg()

end)

spawn(function()
	while wait() do
		if r8_8arg.FimiMarteriu then
			r7_7arg()
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(r9_9arg) then
					for v807_args, v808_args in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v808_args.Name == r9_9arg then
							if v808_args:FindFirstChild("Humanoid") and v808_args:FindFirstChild("HumanoidRootPart") and v808_args.Humanoid.Health > 0 then
								repeat
									wait()
									r28_28arg()
									r30_30arg(r8_8arg.SelectWeapon)
									r43_43arg(v808_args.HumanoidRootPart.CFrame * CFrame.new(PosX, 30, PosZ))
									r73_73arg = v808_args.Name
									r8_8arg.PosMon = v808_args.HumanoidRootPart.CFrame
									r76_76arg = true
									r66_66arg = true
								until r8_8arg.FimiMarteriu == false or not v808_args.Parent or v808_args.Humanoid.Health <= 0
							end
						end
					end
				else
					if BypassTP then
						if ((r10_10arg).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
							TL(r10_10arg)
						else
							BTP(r10_10arg)
						end
					else
						r43_43arg(r10_10arg)
					end
				end
			end)
		end
	end

end)

--------------------------------------------------------------------
local v76_args = r113_113arg.other:AddParagraph({
	Title = "---------------",
	Content = "Mob Section"
})

if r1_1arg then

	r138_138arg = {
		"Bandit",
		"Monkey",
		"Gorilla",
		"Pirate",
		"Brute",
		"Desert Bandit",
		"Desert Officer",
		"Snow Bandit",
		"Snowman",
		"Chief Petty Officer",
		"Sky Bandit",
		"Dark Master",
		"Toga Warrior",
		"Gladiator",
		"Military Soldier",
		"Military Spy",
		"Fishman Warrior",
		"Fishman Commando",
		"God's Guard",
		"Shanda",
		"Royal Squad",
		"Royal Soldier",
		"Galley Pirate",
		"Galley Captain"
	}

elseif r2_2arg then

	r138_138arg = {
		"Raider",
		"Mercenary",
		"Swan Pirate",
		"Factory Staff",
		"Marine Lieutenant",
		"Marine Captain",
		"Zombie",
		"Vampire",
		"Snow Trooper",
		"Winter Warrior",
		"Lab Subordinate",
		"Horned Warrior",
		"Magma Ninja",
		"Lava Pirate",
		"Ship Deckhand",
		"Ship Engineer",
		"Ship Steward",
		"Ship Officer",
		"Arctic Warrior",
		"Snow Lurker",
		"Sea Soldier",
		"Water Fighter"
	}

elseif r3_3arg then

	r138_138arg = {
		"Pirate Millionaire",
		"Dragon Crew Warrior",
		"Dragon Crew Archer",
		"Female Islander",
		"Giant Islander",
		"Marine Commodore",
		"Marine Rear Admiral",
		"Fishman Raider",
		"Fishman Captain",
		"Forest Pirate",
		"Mythological Pirate",
		"Jungle Pirate",
		"Musketeer Pirate",
		"Reborn Skeleton",
		"Living Zombie",
		"Demonic Soul",
		"Posessed Mummy",
		"Peanut Scout",
		"Peanut President",
		"Ice Cream Chef",
		"Ice Cream Commander",
		"Cookie Crafter",
		"Cake Guard",
		"Baking Staff",
		"Head Baker",
		"Cocoa Warrior",
		"Chocolate Bar Battler",
		"Sweet Thief",
		"Candy Rebel",
		"Candy Pirate",
		"Snow Demon",
		"Isle Outlaw",
		"Island Boy",
		"Sun-kissed Warrior",
		"Isle Champion"
	}

end

if r1_1arg then
	r139_139arg = "Bandit"

elseif r2_2arg then
	r139_139arg = "Raider"

elseif r3_3arg then
	r139_139arg = "Pirate"

end

local v77_args = r113_113arg.other:AddDropdown("chonmobdeeeee", {
	Title = "Select Mob",
	Values = r138_138arg,
	Multi = false,
	Default = r139_139arg,

})

v77_args:SetValue("Select")

v77_args:OnChanged(function(v809_args)
	r8_8arg.SelectMob = v809_args

end)

local v78_args = r113_113arg.other:AddToggle("batdauchichmob", {
	Title = "Start Farm Mob Select",
	Description = "",
	Default = false
})
v78_args:OnChanged(function(v810_args)
	r8_8arg.AutoFarmMob = v810_args

end)

--------------------------------------------------------------------
local v79_args = r113_113arg.other:AddParagraph({
	Title = "---------------",
	Content = "boss section"
})
if r1_1arg then
	r140_140arg = {
		"The Gorilla King",
		"Bobby",
		"Yeti",
		"Mob Leader",
		"Vice Admiral",
		"Warden",
		"Chief Warden",
		"Swan",
		"Magma Admiral",
		"Fishman Lord",
		"Wysper",
		"Thunder God",
		"Cyborg",
		"Saber Expert"
	}
elseif r2_2arg then
	r140_140arg = {
		"Diamond",
		"Jeremy",
		"Fajita",
		"Don Swan",
		"Smoke Admiral",
		"Cursed Captain",
		"Darkbeard",
		"Order",
		"Awakened Ice Admiral",
		"Tide Keeper"
	}
elseif r3_3arg then
	r140_140arg = {
		"Stone",
		"Island Empress",
		"Kilo Admiral",
		"Captain Elephant",
		"Beautiful Pirate",
		"rip_indra True Form",
		"Longma",
		"Soul Reaper",
		"Cake Queen"
	}
end
local v80_args = r113_113arg.other:AddDropdown("Dropdown", {
	Title = "Select Boss",
	Values = r140_140arg,
	Multi = false,
	Default = r8_8arg.SelectBoss,
})
v80_args:SetValue("")
v80_args:OnChanged(function(v811_args)
	r8_8arg.SelectBoss = v811_args
	r26_26arg()
end)
r117_117arg = r113_113arg.other:AddToggle("MyToggle", {
	Title = "Start Farm Boss Select",
	Default = r8_8arg.AutoFarmBoss
})
r117_117arg:OnChanged(function(v812_args)
	r8_8arg.AutoFarmBoss = v812_args
	r26_26arg()
end)
local v81_args = r113_113arg.stack:AddParagraph({
	Title = "---------------",
	Content = "fruits section"
})
r141_141arg = r113_113arg.stack:AddToggle("dcmmmmmmmm", {
	Title = "Find Fruits",
	Description = "",
	Default = r8_8arg.TelepiToFut
})

r141_141arg:OnChanged(function(v813_args)
	r8_8arg.TelepiToFut = v813_args
	r26_26arg()

end)

r142_142arg = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Find Fruits Hop",
	Description = "",
	Default = r8_8arg.TelepiToFutHop
})

r142_142arg:OnChanged(function(v814_args)
	r8_8arg.TelepiToFutHop = v814_args
	r26_26arg()

end)
local v82_args = r113_113arg.stack:AddParagraph({
	Title = "---------------",
	Content = "dough-king section"
})

local v83_args = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Dough King",
	Description = "Need Spawn First",
	Default = r8_8arg.AtikiDoughKing
})

v83_args:OnChanged(function(v815_args)
	r8_8arg.AtikiDoughKing = v815_args
	r26_26arg()

end)
local v84_args = r113_113arg.stack:AddParagraph({
	Title = "---------------",
	Content = "factory sea 2 section"
})
r117_117arg = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Factory",
	Default = r8_8arg.AutoFactory
})
r117_117arg:OnChanged(function(v816_args)
	r8_8arg.AutoFactory = v816_args
	r26_26arg()
end)
local v85_args = r113_113arg.stack:AddParagraph({
	Title = "---------------",
	Content = "pirate raid section"
})
r117_117arg = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Raid Castle",
	Default = r8_8arg.AutoRaidPirate
})
r117_117arg:OnChanged(function(v817_args)
	r8_8arg.AutoRaidPirate = v817_args
	r26_26arg()
end)
local v86_args = r113_113arg.stack:AddParagraph({
	Title = "---------------",
	Content = "elite hunter section"
})

local v87_args = r113_113arg.stack:AddParagraph({
	Title = "Status Elite Mob",
	Content = ""
})
spawn(function()
	while wait() do
		spawn(function()
			if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
				v87_args:SetDesc("Status : 🟢")
			else
				v87_args:SetDesc("Status : 🔴")
			end
		end)
	end
end)
r117_117arg = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Elite",
	Default = r8_8arg.AutoElitehunter
})
r117_117arg:OnChanged(function(v818_args)
	r8_8arg.AutoElitehunter = v818_args
	r26_26arg()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end)
r117_117arg = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Elite Hop",
	Default = r8_8arg.AutoEliteHunterHop
})
r117_117arg:OnChanged(function(v819_args)
	r8_8arg.AutoEliteHunterHop = v819_args
	r26_26arg()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end)
local v88_args = r113_113arg.stack:AddParagraph({
	Title = "---------------",
	Content = "rip-indra boss section"
})
local v89_args = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Touch Pad Haki",
	Description = "Sea 3 Function",
	Default = false
})

v89_args:OnChanged(function(v820_args)
	r8_8arg.AutuTouchHaki = v820_args

end)
r117_117arg = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Rip Indra",
	Description = "Need Spawn Boss First",
	Default = getgenv().AutoRipChan
})
r117_117arg:OnChanged(function(v821_args)
	getgenv().AutoRipChan = v821_args
	r26_26arg()
end)
local v90_args = r113_113arg.stack:AddParagraph({
	Title = "---------------",
	Content = "darkbeard boss section"
})
r117_117arg = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Darkbeard",
	Description = "Need Key And Spawn Boss First",
	Default = r8_8arg.UnknownBoss
})
r117_117arg:OnChanged(function(v822_args)
	r8_8arg.UnknownBoss = v822_args
	r26_26arg()
end)
local v91_args = r113_113arg.stack:AddParagraph({
	Title = "---------------",
	Content = "hallow boss section"
})
r117_117arg = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Soul Reaper [ Hallow ]",
	Description = "Auto Spawn If Have Key",
	Default = r8_8arg.AutoFarmBossHallow
})
r117_117arg:OnChanged(function(v823_args)
	r8_8arg.AutoFarmBossHallow = v823_args
	r26_26arg()
end)
r113_113arg.raid:AddSection("Raid Section")
local v92_args = r113_113arg.raid:AddDropdown("Dropdown", {
	Title = "Select Chip",
	Values = {
		"Dark",
		"Sand",
		"Magma",
		"Rumble",
		"Flame",
		"Ice",
		"Light",
		"Quake",
		"Human: Buddha",
		"Flame",
		"Bird: Phoenix",
		"Dough"
	},
	Multi = false,
	Default = r8_8arg.SelectChip,
})
v92_args:SetValue("Flame")
v92_args:OnChanged(function(v824_args)
	r8_8arg.SelectChip = v824_args
	r26_26arg()
end)
r117_117arg = r113_113arg.raid:AddToggle("MyToggle", {
	Title = "Buy-MicroChip",
	Default = r8_8arg.AutoBuyChip
})
r117_117arg:OnChanged(function(v825_args)
	r8_8arg.AutoBuyChip = v825_args
	r26_26arg()
end) 

r117_117arg = r113_113arg.raid:AddToggle("MyToggle", {
	Title = "Start-Raid",
	Default = r8_8arg.BatDauRaidNe
})
r117_117arg:OnChanged(function(v826_args)
	r8_8arg.BatDauRaidNe = v826_args
	r26_26arg()
end) 

spawn(function()
	while wait() do
		if r8_8arg.BatDauRaidNe then
			if r2_2arg then
				fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
			elseif r3_3arg then
				fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
			end
		end
	end

end)

r143_143arg = r113_113arg.raid:AddToggle("killcu", {
	Title = "Killaura",
	Default = false
})
r143_143arg:OnChanged(function(v827_args)
	getgenv().GoDieNigger = v827_args
end)
r117_117arg = r113_113arg.raid:AddToggle("MyToggle", {
	Title = "Next-Island",
	Default = false
})
r117_117arg:OnChanged(function(v828_args)
	r8_8arg.Auto_Dungeon = v828_args
end)

r117_117arg = r113_113arg.raid:AddToggle("MyToggle", {
	Title = "Auto Awake Fruit",
	Default = false
})
r117_117arg:OnChanged(function(v829_args)
	r8_8arg.Auto_Awakener = v829_args
end)
r113_113arg.raid:AddSection("Fruit Section")
r117_117arg = r113_113arg.raid:AddToggle("MyToggle", {
	Title = "Random Fruit",
	Default = r8_8arg.RandomFruit
})
r117_117arg:OnChanged(function(v830_args)
	r8_8arg.RandomFruit = v830_args
	r26_26arg()
end)
r117_117arg = r113_113arg.raid:AddToggle("MyToggle", {
	Title = "Store Fruit",
	Default = r8_8arg.AutoStoreFruit
})
r117_117arg:OnChanged(function(v831_args)
	r8_8arg.AutoStoreFruit = v831_args
	r26_26arg()
end)
local v93_args = r113_113arg.raid:AddDropdown("Dropdown", {
	Title = "Snipe Fruits",
	Values = r97_97arg,
	Multi = false,
	Default = r8_8arg.SelectFruit,
})
v93_args:SetValue("")
v93_args:OnChanged(function(v832_args)
	r8_8arg.SelectFruit = v832_args
	r26_26arg()
end)
r117_117arg = r113_113arg.raid:AddToggle("MyToggle", {
	Title = "Buy Fruit Snipe",
	Default = r8_8arg.AutoBuyFruitSniper
})
r117_117arg:OnChanged(function(v833_args)
	r8_8arg.AutoBuyFruitSniper = v833_args
	r26_26arg()
end)
r117_117arg = r113_113arg.raid:AddToggle("MyToggle", {
	Title = "Esp Fruit",
	Default = false
})
r117_117arg:OnChanged(function(v834_args)
	r18_18arg = v834_args
	while r18_18arg do
		wait()
		r17_17arg()
	end
end)
spawn(function()
	while wait(2) do
		if r18_18arg then
			r17_17arg()
		end
	end
end)
r117_117arg = r113_113arg.raid:AddToggle("MyToggle", {
	Title = "Auto Tween Claim Fruit",
	Default = r53_53arg
})
r117_117arg:OnChanged(function(v835_args)
	r53_53arg = v835_args
	r26_26arg()
end)
local v94_args = r113_113arg.St:AddParagraph({
	Title = "[ Server Age ]",
	Content = ""
})
function r144_144arg()
	local v836_args = math.floor(workspace.DistributedGameTime + 0.5)
	local v837_args = math.floor(v836_args / (3600)) % 24
	local v838_args = math.floor(v836_args / (60)) % 60
	local v839_args = math.floor(v836_args / (1)) % 60
	v94_args:SetDesc("[Time Server] : Hours : " .. v837_args .. "  Minutes : " .. v838_args .. "  Seconds : " .. v839_args)

end

spawn(function()
	while task.wait() do
		pcall(function()
			r144_144arg()
		end)
	end
end)
spawn(function()
	pcall(function()
		while wait() do
			if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
				Kitsune:SetDesc('🟢')
			else
				Kitsune:SetDesc('🔴')
			end
		end
	end)

end)
local v95_args = r113_113arg.St:AddParagraph({
	Title = "Katakuri Mob",
	Content = ""
})
task.spawn(function()
	while wait() do
		pcall(function()
			if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
				v95_args:SetDesc("Defeat : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41))
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
				v95_args:SetDesc("Defeat : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40))
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
				v95_args:SetDesc("Defeat : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39))
			else
				v95_args:SetDesc("Boss Is Spawning")
			end
		end)
	end
end)
local v96_args = r113_113arg.St:AddParagraph({
	Title = "Dimension Frozen",
	Content = ""
})
spawn(function()
	pcall(function()
		while wait() do
			if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
				v96_args:SetDesc('🟢')
			else
				v96_args:SetDesc('🔴')
			end
		end
	end)

end)
local v97_args = r113_113arg.St:AddParagraph({
	Title = "Mirage",
	Content = ""
})
spawn(function()
	pcall(function()
		while wait() do
			if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
				v97_args:SetDesc('🟢')
			else
				v97_args:SetDesc('🔴')
			end
		end
	end)

end)
local v98_args = r113_113arg.St:AddParagraph({
	Title = "Moon Check",
	Content = ""
})
task.spawn(function()
	while task.wait() do
		pcall(function()
			if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
				v98_args:SetDesc("Moon: 5/5")
			elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
				v98_args:SetDesc("Moon: 4/5")
			elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
				v98_args:SetDesc("Moon: 3/5")
			elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
				v98_args:SetDesc("Moon: 2/5")
			elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
				v98_args:SetDesc("Moon: 1/5")
			else
				v98_args:SetDesc("Moon: 0/5")
			end
		end)
	end
end)
r113_113arg.St:AddSection("Job ID Section")
local v99_args = r113_113arg.St:AddInput("Input", {
	Title = "Job Id",
	Default = "",
	Placeholder = "Paste Job Id",
	Numeric = false,
	Finished = false,
	Callback = function(v840_args)
		r8_8arg.Job = v840_args
	end
})
r113_113arg.St:AddButton({
	Title = "Copy Job ID Your Server",
	Description = "",
	Callback = function()
		setclipboard(tostring(game.JobId))
	end
})
r113_113arg.St:AddButton({
	Title = "Join Job ID",
	Description = "",
	Callback = function()
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, r8_8arg.Job, game.Players.LocalPlayer)
	end
})
r117_117arg = r113_113arg.St:AddToggle("MyToggle", {
	Title = "Spam Join Job Id",
	Default = r8_8arg.Join
})
r117_117arg:OnChanged(function(v841_args)
	r8_8arg.Join = v841_args
	r26_26arg()
end)
r117_117arg = r113_113arg.Ms:AddToggle("MyToggle", {
	Title = "Clean Effect [ Anti Lag ]",
	Default = true
})
r117_117arg:OnChanged(function(v842_args)
	if v842_args then
		r110_110arg()
	end
end)
r113_113arg.Ms:AddButton({
	Title = "Open Devil Fruit Shop",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
		game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
	end
})
r113_113arg.Ms:AddButton({
	Title = "Open Haki Color",
	Description = "",
	Callback = function()
		game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
	end
})
r113_113arg.Ms:AddButton({
	Title = "Open Title Name",
	Description = "",
	Callback = function()
		local v843_args = {
			[1] = "getTitles"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v843_args))
		game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
	end
})
r113_113arg.Ms:AddButton({
	Title = "Rejoin Server",
	Description = "",
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end
})
r113_113arg.Ms:AddButton({
	Title = "Server Hop",
	Description = "",
	Callback = function()
		r4_4arg()
	end
})
local v100_args = r113_113arg.Ms:AddToggle("MyToggle", {
	Title = "Auto Rejoin If Disconnect or Kicked",
	Default = false
})

v100_args:OnChanged(function(v844_args)
	r8_8arg.Rejoin = v844_args
	r26_26arg()
end) 

r113_113arg.Ms:AddButton({
	Title = "Join Pirate Team",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
	end
})
r113_113arg.Ms:AddButton({
	Title = "Join Marine Team",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")
	end
})
r117_117arg = r113_113arg.Settings:AddToggle("MyToggle", {
	Title = "Walk On Water",
	Default = true
})
r117_117arg:OnChanged(function(v845_args)
	r8_8arg.WalkWater = v845_args
end)
r117_117arg = r113_113arg.Settings:AddToggle("MyToggle", {
	Title = "Anti Afk",
	Default = false
})
r117_117arg:OnChanged(function(v846_args)
	local v847_args = game:GetService("VirtualUser")
	repeat
		wait()
	until game:IsLoaded()
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):ClickButton2(Vector2.new())
		vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	end)
end)
r113_113arg.Lc:AddSection("Teleport Tab ")
if r1_1arg then
	local v848_args = r113_113arg.Lc:AddDropdown("Dropdown", {
		Title = "Island",
		Values = {
			"WindMill",
			"Marine",
			"Middle Town",
			"Jungle",
			"Pirate Village",
			"Desert",
			"Snow Island",
			"MarineFord",
			"Colosseum",
			"Sky Island 1",
			"Sky Island 2",
			"Sky Island 3",
			"Prison",
			"Magma Village",
			"Under Water Island",
			"Fountain City",
			"Shank Room",
			"Mob Island"
		},
		Multi = false,
		Default = r8_8arg.SelectIsland,
	})
	v848_args:SetValue("0.15")
	v848_args:OnChanged(function(v849_args)
		r8_8arg.SelectIsland = v849_args
	end)
end
if r2_2arg then
	local v850_args = r113_113arg.Lc:AddDropdown("Dropdown", {
		Title = "Island",
		Values = {
			"The Cafe",
			"Frist Spot",
			"Dark Area",
			"Flamingo Mansion",
			"Flamingo Room",
			"Green Zone",
			"Factory",
			"Colossuim",
			"Zombie Island",
			"Two Snow Mountain",
			"Punk Hazard",
			"Cursed Ship",
			"Ice Castle",
			"Forgotten Island",
			"Ussop Island",
			"Mini Sky Island"
		},
		Multi = false,
		Default = r8_8arg.SelectIsland,
	})
	v850_args:SetValue("0.15")
	v850_args:OnChanged(function(v851_args)
		r8_8arg.SelectIsland = v851_args
		r26_26arg()
	end)
end
if r3_3arg then
	local v852_args = r113_113arg.Lc:AddDropdown("Dropdown", {
		Title = "Island",
		Values = {
			"Mansion",
			"Port Town",
			"Great Tree",
			"Castle On The Sea",
			"MiniSky",
			"Hydra Island",
			"Floating Turtle",
			"Haunted Castle",
			"Ice Cream Island",
			"Peanut Island",
			"Cake Island",
			"Cocoa Island",
			"Candy Island",
			"Tiki Outpost"
		},
		Multi = false,
		Default = r8_8arg.SelectIsland,
	})
	v852_args:SetValue("0.15")
	v852_args:OnChanged(function(v853_args)
		r8_8arg.SelectIsland = v853_args
		r26_26arg()
	end)
end
r117_117arg = r113_113arg.Lc:AddToggle("MyToggle", {
	Title = "Start Tween",
	Default = r8_8arg.TeleportIsland
})
r117_117arg:OnChanged(function(v854_args)
	r8_8arg.TeleportIsland = v854_args
	r26_26arg()
	if r8_8arg.TeleportIsland == true then
		repeat
			wait()
			if r8_8arg.SelectIsland == "WindMill" then
				r43_43arg(Vector3.new(979.79895019531, 16.516613006592, 1429.0466308594))
			elseif r8_8arg.SelectIsland == "Marine" then
				r43_43arg(Vector3.new(- 2566.4296875, 6.8556680679321, 2045.2561035156))
			elseif r8_8arg.SelectIsland == "Middle Town" then
				r43_43arg(Vector3.new(- 690.33081054688, 15.09425163269, 1582.2380371094))
			elseif r8_8arg.SelectIsland == "Jungle" then
				r43_43arg(Vector3.new(- 1612.7957763672, 36.852081298828, 149.12843322754))
			elseif r8_8arg.SelectIsland == "Pirate Village" then
				r43_43arg(Vector3.new(- 1181.3093261719, 4.7514905929565, 3803.5456542969))
			elseif r8_8arg.SelectIsland == "Desert" then
				r43_43arg(Vector3.new(944.15789794922, 20.919729232788, 4373.3002929688))
			elseif r8_8arg.SelectIsland == "Snow Island" then
				r43_43arg(Vector3.new(1347.8067626953, 104.66806030273, - 1319.7370605469))
			elseif r8_8arg.SelectIsland == "MarineFord" then
				r43_43arg(Vector3.new(- 4914.8212890625, 50.963626861572, 4281.0278320313))
			elseif r8_8arg.SelectIsland == "Colosseum" then
				r43_43arg( Vector3.new(- 1427.6203613281, 7.2881078720093, - 2792.7722167969))
			elseif r8_8arg.SelectIsland == "Sky Island 1" then
				r43_43arg(Vector3.new(- 4869.1025390625, 733.46051025391, - 2667.0180664063))
			elseif r8_8arg.SelectIsland == "Sky Island 2" then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 4607.82275, 872.54248, - 1667.55688))
			elseif r8_8arg.SelectIsland == "Sky Island 3" then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7894.6176757813, 5547.1416015625, - 380.29119873047))
			elseif r8_8arg.SelectIsland == "Prison" then
				r43_43arg( Vector3.new(4875.330078125, 5.6519818305969, 734.85021972656))
			elseif r8_8arg.SelectIsland == "Magma Village" then
				r43_43arg(Vector3.new(- 5247.7163085938, 12.883934020996, 8504.96875))
			elseif r8_8arg.SelectIsland == "Under Water Island" then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			elseif r8_8arg.SelectIsland == "Fountain City" then
				r43_43arg(Vector3.new(5127.1284179688, 59.501365661621, 4105.4458007813))
			elseif r8_8arg.SelectIsland == "Shank Room" then
				r43_43arg(Vector3.new(- 1442.16553, 29.8788261, - 28.3547478))
			elseif r8_8arg.SelectIsland == "Mob Island" then
				r43_43arg(Vector3.new(- 2850.20068, 7.39224768, 5354.99268))
			elseif r8_8arg.SelectIsland == "The Cafe" then
				r43_43arg(Vector3.new(- 380.47927856445, 77.220390319824, 255.82550048828))
			elseif r8_8arg.SelectIsland == "Frist Spot" then
				r43_43arg(Vector3.new(- 11.311455726624, 29.276733398438, 2771.5224609375))
			elseif r8_8arg.SelectIsland == "Dark Area" then
				r43_43arg(Vector3.new(3780.0302734375, 22.652164459229, - 3498.5859375))
			elseif r8_8arg.SelectIsland == "Flamingo Mansion" then
				r43_43arg(Vector3.new(- 483.73370361328, 332.0383605957, 595.32708740234))
			elseif r8_8arg.SelectIsland == "Flamingo Room" then
				r43_43arg(Vector3.new(2284.4140625, 15.152037620544, 875.72534179688))
			elseif r8_8arg.SelectIsland == "Green Zone" then
				r43_43arg( Vector3.new(- 2448.5300292969, 73.016105651855, - 3210.6306152344))
			elseif r8_8arg.SelectIsland == "Factory" then
				r43_43arg(Vector3.new(424.12698364258, 211.16171264648, - 427.54049682617))
			elseif r8_8arg.SelectIsland == "Colossuim" then
				r43_43arg( Vector3.new(- 1503.6224365234, 219.7956237793, 1369.3101806641))
			elseif r8_8arg.SelectIsland == "Zombie Island" then
				r43_43arg(Vector3.new(- 5622.033203125, 492.19604492188, - 781.78552246094))
			elseif r8_8arg.SelectIsland == "Two Snow Mountain" then
				r43_43arg(Vector3.new(753.14288330078, 408.23559570313, - 5274.6147460938))
			elseif r8_8arg.SelectIsland == "Punk Hazard" then
				r43_43arg(Vector3.new(- 6127.654296875, 15.951762199402, - 5040.2861328125))
			elseif r8_8arg.SelectIsland == "Cursed Ship" then
				r43_43arg(Vector3.new(923.40197753906, 125.05712890625, 32885.875))
			elseif r8_8arg.SelectIsland == "Ice Castle" then
				r43_43arg(Vector3.new(6148.4116210938, 294.38687133789, - 6741.1166992188))
			elseif r8_8arg.SelectIsland == "Forgotten Island" then
				r43_43arg(Vector3.new(- 3032.7641601563, 317.89672851563, - 10075.373046875))
			elseif r8_8arg.SelectIsland == "Ussop Island" then
				r43_43arg(Vector3.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
			elseif r8_8arg.SelectIsland == "Mini Sky Island" then
				r43_43arg(Vector3.new(- 288.74060058594, 49326.31640625, - 35248.59375))
			elseif r8_8arg.SelectIsland == "Great Tree" then
				r43_43arg(Vector3.new(2681.2736816406, 1682.8092041016, - 7190.9853515625))
			elseif r8_8arg.SelectIsland == "Castle On The Sea" then
				r43_43arg(Vector3.new(- 5074.45556640625, 314.5155334472656, - 2991.054443359375))
			elseif r8_8arg.SelectIsland == "MiniSky" then
				r43_43arg(Vector3.new(- 260.65557861328, 49325.8046875, - 35253.5703125))
			elseif r8_8arg.SelectIsland == "Port Town" then
				r43_43arg(Vector3.new(- 290.7376708984375, 6.729952812194824, 5343.5537109375))
			elseif r8_8arg.SelectIsland == "Hydra Island" then
				r43_43arg(Vector3.new(5228.8842773438, 604.23400878906, 345.0400390625))
			elseif r8_8arg.SelectIsland == "Floating Turtle" then
				r43_43arg(Vector3.new(- 13274.528320313, 531.82073974609, - 7579.22265625))
			elseif r8_8arg.SelectIsland == "Mansion" then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 12471.169921875, 374.94024658203, - 7551.677734375))
			elseif r8_8arg.SelectIsland == "Haunted Castle" then
				r43_43arg(Vector3.new(- 9515.3720703125, 164.00624084473, 5786.0610351562))
			elseif r8_8arg.SelectIsland == "Ice Cream Island" then
				r43_43arg(Vector3.new(- 902.56817626953, 79.93204498291, - 10988.84765625))
			elseif r8_8arg.SelectIsland == "Peanut Island" then
				r43_43arg(Vector3.new(- 2062.7475585938, 50.473892211914, - 10232.568359375))
			elseif r8_8arg.SelectIsland == "Cake Island" then
				r43_43arg(Vector3.new(- 1884.7747802734375, 19.327526092529297, - 11666.8974609375))
			elseif r8_8arg.SelectIsland == "Cocoa Island" then
				r43_43arg(Vector3.new(87.94276428222656, 73.55451202392578, - 12319.46484375))
			elseif r8_8arg.SelectIsland == "Candy Island" then
				r43_43arg(Vector3.new(- 1014.4241943359375, 149.11068725585938, - 14555.962890625))
			elseif r8_8arg.SelectIsland == "Tiki Outpost" then
				r43_43arg(Vector3.new(- 16101.1885, 12.8422165, 380.942291, 0.194113985, 1.39194061e-08, - 0.980978966, - 9.82904691e-09, 1, 1.22443504e-08, 0.980978966, 7.26528837e-09, 0.194113985))
			end
		until not r8_8arg.TeleportIsland
	end
end)
r117_117arg = r113_113arg.RC:AddToggle("MyToggle", {
	Title = "Tween To Gear",
	Default = getgenv().HeyGearComeHere
})

r117_117arg:OnChanged(function(v855_args)
	getgenv().HeyGearComeHere = v855_args
	r26_26arg()

end)

r113_113arg.RC:AddButton({
	Title = "Tele Timple Of Time",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
	end
})

r113_113arg.RC:AddButton({
	Title = "Tele To Great Tree",
	Description = "Great Tree Not Timple Of Time Lol",
	Callback = function()
		local v856_args = {
			[1] = "RaceV4Progress",
			[2] = "Teleport"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v856_args))
		wait(.1)
		r43_43arg(CFrame.new(28609.5801, 14896.5098, 105.869637, - 0.00754010677, 3.26780936e-09, - 0.999971569, 6.88313628e-09, 1, 3.21600124e-09, 0.999971569, - 6.85869184e-09, - 0.00754010677))
		wait(2)
		local v857_args = game.Players.LocalPlayer
		local v858_args = CFrame.new(28609.5801, 14896.5098, 105.869637).Position
		if v857_args.Character and v857_args.Character:FindFirstChild("HumanoidRootPart") then
			local v859_args = (v857_args.Character.HumanoidRootPart.Position - v858_args).Magnitude
			if v859_args < 3 then
				local v860_args = {
					[1] = "RaceV4Progress",
					[2] = "TeleportBack"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v860_args))
			else
				warn("V_72X")
			end
		else
			warn("V_03X")
		end
	end

})

r113_113arg.RC:AddButton({
	Title = "Pull Lever",
	Description = "",
	Callback = function()
		wait(1)
		r43_43arg(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
	end

})

r113_113arg.RC:AddButton({
	Title = "TP Acient One",
	Description = "",
	Callback = function()
		wait(1)
		r43_43arg(CFrame.new(28981.552734375, 14888.4267578125, - 120.245849609375))
	end
})
r113_113arg.RC:AddSection("Quest Race and Complete Trial")

local v101_args = r113_113arg.RC:AddToggle("Auto Train + Buy Gear", {
	Title = "Auto Farm + Buy Gear all in one",
	Default = false
})

v101_args:OnChanged(function(v861_args)
	r8_8arg.ScanV4 = v861_args
	r8_8arg.LetV4 = v861_args

end)

r113_113arg.RC:AddButton({
	Title = "Reset Character For Reset Race V3",
	Description = "",
	Callback = function()
		game.Players.LocalPlayer.Character.Head:Destroy()
	end
})

v101_args = r113_113arg.RC:AddToggle("MyToggle", {
	Title = "Tween Your Door Race",
	Default = false
})

v101_args:OnChanged(function(v862_args)
	r8_8arg.RaceCua = v862_args
	if r8_8arg.RaceCua then
		local v863_args = game:GetService("Players").LocalPlayer.Data.Race.Value
		if v863_args == "Human" then
			wait(1)
			r43_43arg(CFrame.new(29238.884765625, 14893.63671875, - 202.99090576171875))
		elseif v863_args == "Skypiea" then
			wait(1)
			r43_43arg(CFrame.new(28222.5625, 14891.0126953125, - 215.37625122070312))
		elseif v863_args == "Fishman" then
			wait(1)
			r43_43arg(CFrame.new(28222.5625, 14891.0126953125, - 215.37625122070312))
		elseif v863_args == "Cyborg" then
			wait(1)
			r43_43arg(CFrame.new(28490.11328125, 14898.6142578125, - 426.1543273925781))
		elseif v863_args == "Ghoul" then
			wait(1)
			r43_43arg(CFrame.new(28677.09375, 14890.720703125, 456.2405700683594))
		elseif v863_args == "Mink" then
			wait(1)
			r43_43arg(CFrame.new(29022.408203125, 14891.078125, - 376.2605285644531))
		else
		end
	end

end)

local v102_args = r113_113arg.RC:AddToggle("Fishman Trial", {
	Title = "FishMan Trial [ Need Use Skill ]",
	Default = false
})

v102_args:OnChanged(function(v864_args)
	r8_8arg.FishManSex = v864_args 

end)

spawn(function()
	while wait() do
		pcall(function()
			if r8_8arg.FishManSex then
				for v865_args, v866_args in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
					if v866_args.Name == "HumanoidRootPart" then
						r43_43arg(v866_args.CFrame * CFrame.new(0, 600, 0))
					end
				end
			end
		end)
	end

end)



r113_113arg.RC:AddButton({
	Title = "Auto Ghoul Trial",
	Description = "",
	Callback = function()
		getgenv().GoDieNigger = true
		wait(7)
		getgenv().GoDieNigger = false
	end
})
r113_113arg.RC:AddButton({
	Title = "Auto Human Trial",
	Description = "",
	Callback = function()
		getgenv().GoDieNigger = true
		wait(3)
		getgenv().GoDieNigger = false
	end
})

r113_113arg.RC:AddButton(

    {
	Title = "Auto Angel Trial",
	Description = "",
	Callback = function()
		local v867_args = game.Players.LocalPlayer.Character
		local v868_args = game:GetService("Workspace").Map.SkyTrial.Model.FinishPart
		if v867_args and v868_args and (v868_args.Position - v867_args.HumanoidRootPart.Position).Magnitude <= 2000 then
			wait(2)
			r43_43arg(v868_args.CFrame)
			wait(3)
		end
	end
})

r113_113arg.RC:AddButton(

    {
	Title = "Auto Rabbit Trial",
	Description = "",
	Callback = function()
		local v869_args = game:GetService("Workspace").StartPoint
		local v870_args = game.Players.LocalPlayer.Character
		if v870_args and v869_args and (v869_args.Position - v870_args.HumanoidRootPart.Position).Magnitude <= 500 then
			r43_43arg(v869_args.CFrame)
			for v871_args, v872_args in pairs(game:GetService("Workspace"):GetDescendants()) do
				if v872_args:IsA("TouchInterest") or v872_args.Name == "TouchInterest" then
					if (v872_args.Position - v870_args.HumanoidRootPart.Position).Magnitude <= 50 then
						firetouchinterest(v872_args, v870_args.HumanoidRootPart)
					end
				end
			end
		end
	end
})

r113_113arg.RC:AddButton(

    {
	Title = "Auto Cyborg Trial",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "Wait Done Trial...",
			Text = "Idle",
			Duration = 10
		})
	end
})

r113_113arg.RC:AddButton({
	Title = "Auto Buy Gear [ Need Train First ]",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('UpgradeRace', 'Buy')
	end
})
r113_113arg.RC:AddButton({
	Title = "Tween To Clock",
	Description = "tween to clock for attach gear",
	Callback = function()
		r43_43arg(CFrame.new(29553.7812, 15066.6133, - 88.2750015, 1, 0, 0, 0, 1, 0, 0, 0, 1))
	end
})

local v103_args = r113_113arg.RC:AddToggle("Autodieafter", {
	Title = "Auto Die After Trial",
	Default = r145_145arg
})

v103_args:OnChanged(function(v873_args)

	r145_145arg = v873_args

	spawn(function()

		while task.wait(1) do

			if not r145_145arg then

				break

			end

			if game:GetService("Workspace").Map["Temple of Time"].FFABorder.Forcefield.Transparency < 1 then

				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then

					local v874_args = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")

					if v874_args then

						v874_args.Health = 0

					end

				end

			end

		end

	end)

end)

v102_args = r113_113arg.RC:AddToggle("MyToggle", {
	Title = "Kill Player Trial",
	Default = KillPlayer
})

v102_args:OnChanged(function(v875_args)
	r51_51arg = v875_args
	r26_26arg()

end)

v102_args = r113_113arg.RC:AddToggle("MyToggle", {
	Title = "Skill Z For V4 [ Mele ]",
	Default = true
})
v102_args:OnChanged(function(v876_args)
	r8_8arg.XaiSkillZ = v876_args
end)

v102_args = r113_113arg.RC:AddToggle("MyToggle", {
	Title = "Skill X For V4 [ Mele ]",
	Default = true
})
v102_args:OnChanged(function(v877_args)
	r8_8arg.XaiSkillX = v877_args
end)

v102_args = r113_113arg.RC:AddToggle("MyToggle", {
	Title = "Skill C For V4 [ Mele ]",
	Default = true
})
v102_args:OnChanged(function(v878_args)
	r8_8arg.XaiSkillC = v878_args
	r26_26arg()
end)
r146_146arg = r113_113arg.cailon:AddSection("Kitsune Island")
r147_147arg = r113_113arg.cailon:AddParagraph({
	Title = "Kistune Island",
	Content = ""

})

function r148_148arg()
	if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
		r147_147arg:SetDesc("Kitsune Island : 🟢")
	else
		r147_147arg:SetDesc("Kitsune Island : 🔴")
	end

end

spawn(function()
	pcall(function()
		while wait() do
			r148_148arg()
		end
	end)

end)
r149_149arg = r113_113arg.cailon:AddToggle("ToggleEspKitsune", {
	Title = "Highlight Kitsune Island",
	Description = "",
	Default = false
})
r149_149arg:OnChanged(function(v879_args)
	r103_103arg = v879_args
	while r103_103arg do
		wait()
		r102_102arg()
	end
end)
r150_150arg = r113_113arg.cailon:AddToggle("ToggleTPKitsune", {
	Title = "Tween Kitsune Island",
	Description = "",
	Default = r8_8arg.TweenToKitsune
})
r150_150arg:OnChanged(function(v880_args)
	r8_8arg.TweenToKitsune = v880_args
	r26_26arg()
end)
r151_151arg = r113_113arg.cailon:AddToggle("ToggleCollectAzure", {
	Title = "Collect Azure",
	Description = "",
	Default = r8_8arg.CollectAzure
})
r151_151arg:OnChanged(function(v881_args)
	r8_8arg.CollectAzure = v881_args
	r26_26arg()
end)

r113_113arg.Ms:AddButton({
	Title = "Remove Fog",
	Description = "",
	Callback = function()
		game:GetService("Lighting").LightingLayers:Destroy()
		game:GetService("Lighting").Sky:Destroy()
	end
})
r113_113arg.stack:AddSection("Quest Section")
local v104_args = r113_113arg.stack:AddToggle("rainbowsex", {
	Title = "Auto Rainbow Haki",
	Default = r8_8arg.Auto_Rainbow_Haki
})
v104_args:OnChanged(function(v882_args)
	r8_8arg.Auto_Rainbow_Haki = v882_args
	r26_26arg()
end)
local v105_args = r113_113arg.stack:AddToggle("quanxilotkhe", {
	Title = "Auto Rengoku",
	Default = r8_8arg.AutoRengoku
})
v105_args:OnChanged(function(v883_args)
	r8_8arg.AutoRengoku = v883_args
	r26_26arg()
end)
local v106_args = r113_113arg.stack:AddToggle("badilo", {
	Title = "Auto Bartilo",
	Default = r8_8arg.AutoBartilo
})
v106_args:OnChanged(function(v884_args)
	r8_8arg.AutoBartilo = v884_args
	r26_26arg()
end)
v102_args = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Saber",
	Default = r52_52arg
})
v102_args:OnChanged(function(v885_args)
	r52_52arg = v885_args
	r26_26arg()
end)
v102_args = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Cavender",
	Default = r8_8arg.AutoCarvender
})

v102_args:OnChanged(function(v886_args)
	r8_8arg.AutoCarvender = v886_args
	r26_26arg()

end)

v102_args = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Cavender HOP",
	Default = r8_8arg.Hop
})

v102_args:OnChanged(function(v887_args)
	r8_8arg.Hop = v887_args
	r26_26arg()

end) 

v102_args = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Twin Hook",
	Default = r8_8arg.AutoTwinHook
})

v102_args:OnChanged(function(v888_args)
	r8_8arg.AutoTwinHook = v888_args
	r26_26arg()

end) 

v102_args = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Twin Hook HOP",
	Default = r8_8arg.Hop
})

v102_args:OnChanged(function(v889_args)
	r8_8arg.Hop = v889_args
	r26_26arg()

end) 

v102_args = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Legends Sword",
	Default = false
})

v102_args:OnChanged(function(v890_args)
	getgenv().ligisword = v890_args
	r26_26arg()

end)

r113_113arg.stack:AddSection("Func Get CDK Section")

v102_args = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Holy Torch",
	Default = false
})
v102_args:OnChanged(function(v891_args)
	getgenv().touchbad = v891_args
end)

v102_args = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Yama",
	Default = r8_8arg.AutoYama
})
v102_args:OnChanged(function(v892_args)
	r8_8arg.AutoYama = v892_args
	r26_26arg()
end)
v102_args = r113_113arg.stack:AddToggle("MyToggle", {
	Title = "Auto Tushita",
	Default = r8_8arg.Autotushita
})
v102_args:OnChanged(function(v893_args)
	r8_8arg.Autotushita = value
	r26_26arg()
end)

local v107_args

v107_args = r113_113arg.spl:AddParagraph({
	Title = "Player Status",
	Content = ""

})

spawn(function()
	while wait() do
		pcall(function()
			local v894_args = string.format("Level: %d\nBeli: %d\nFragments: %d\nRace: %s", game:GetService("Players").LocalPlayer.Data.Level.Value, game:GetService("Players").LocalPlayer.Data.Beli.Value, game:GetService("Players").LocalPlayer.Data.Fragments.Value, game:GetService("Players").LocalPlayer.Data.Race.Value)
			v107_args:SetDesc(v894_args)
		end)
	end

end)

r113_113arg.spl:AddSection("Auto Up Stats")

r152_152arg = r113_113arg.spl:AddToggle("ToggleMelee", {
	Title = "Auto Melee Stats",
	Description = "",
	Default = r8_8arg.Auto_Stats_Melee
})

r152_152arg:OnChanged(function(v895_args)
	r8_8arg.Auto_Stats_Melee = v895_args
	r26_26arg()
end)

r153_153arg = r113_113arg.spl:AddToggle("ToggleDe", {
	Title = "Auto Health Stats",
	Description = "",
	Default = r8_8arg.Auto_Stats_Defense
})

r153_153arg:OnChanged(function(v896_args)
	r8_8arg.Auto_Stats_Defense = v896_args
	r26_26arg()
end)

r154_154arg = r113_113arg.spl:AddToggle("ToggleSword", {
	Title = "Auto Sword Stats",
	Description = "",
	Default = r8_8arg.Auto_Stats_Sword
})

r154_154arg:OnChanged(function(v897_args)
	r8_8arg.Auto_Stats_Sword = v897_args
	r26_26arg()
end)

r155_155arg = r113_113arg.spl:AddToggle("ToggleGun", {
	Title = "Auto Gun Stats",
	Description = "",
	Default = r8_8arg.Auto_Stats_Gun
})

r155_155arg:OnChanged(function(v898_args)
	r8_8arg.Auto_Stats_Gun = v898_args
	r26_26arg()
end)

r156_156arg = r113_113arg.spl:AddToggle("ToggleFruit", {
	Title = "Auto Fruit Stats",
	Description = "",
	Default = r8_8arg.Auto_Stats_Devil_Fruit
})

r156_156arg:OnChanged(function(v899_args)
	r8_8arg.Auto_Stats_Devil_Fruit = v899_args
	r26_26arg()
end)
v102_args = r113_113arg.cailon:AddToggle("MyToggle", {
	Title = "Tween Mystic Island",
	Default = false
})
v102_args:OnChanged(function(v900_args)
	getgenv().secretis = v900_args
end)
v102_args = r113_113arg.cailon:AddToggle("MyToggle", {
	Title = "Look Moon + Turn On V3",
	Default = false
})
v102_args:OnChanged(function(v901_args)
	getgenv().NhinMoonThanhSoiCoDoc = v901_args
	r26_26arg()
end)

v102_args = r113_113arg.cailon:AddToggle("MyToggle", {
	Title = "Tween Gear",
	Default = false
})
v102_args:OnChanged(function(v902_args)
	getgenv().HeyGearComeHere = v902_args
end)
r113_113arg.cailon:AddSection("Mirage Fruit Dealer")
local v108_args = r113_113arg.cailon:AddToggle("dealermirrafe", {
	Title = "Tween Advanced Fruit Dealer",
	Description = "",
	Default = r8_8arg.Miragenpc
})
v108_args:OnChanged(function(v903_args)
	r8_8arg.Miragenpc = v903_args
	r26_26arg()

end)

local v109_args = r113_113arg.cailon:AddToggle("miricheat", {
	Title = "Auto Chest Mirage Island",
	Description = "",
	Default = r8_8arg.AutoChestMirage
})
v109_args:OnChanged(function(v904_args)
	r8_8arg.AutoChestMirage = v904_args
	r26_26arg()

end)

-- when successfully loading

print("Loading Scripts Success") 

local v110_args = v3_args:MakeNotify({

	["Title"] = "Rise Hub |",

	["Description"] = "Free Scripts",

	["Color"] = Color3.fromRGB(255, 0, 111),

	["Content"] = "SCRIPT LOADING SUCCESS",

	["Time"] = 1,

	["Delay"] = 5

})

local v111_args = game.PlaceId

local v112_args = game.JobId



local v113_args = 2753915549

local v114_args = 4442272183

local v115_args = 7449423635



local v116_args

if v111_args == v113_args then
	v116_args = "Sea 1"

elseif v111_args == v114_args then
	v116_args = "Sea 2"

elseif v111_args == v115_args then
	v116_args = "Sea 3"

else
	v116_args = "unknown sea"

end



local v117_args = game:GetService("Players")

local v118_args = # game:GetService("Players"):GetPlayers()



local v119_args = game:GetService("RbxAnalyticsService"):GetClientId()

local v120_args = identifyexecutor()

local v121_args = game:GetService("HttpService")

local v122_args = {
	["embeds"] = {
		{
			["title"] = "Account About",
			["url"] = "https://www.roblox.com/users/" .. game.Players.LocalPlayer.UserId,
			["description"] = "```" .. game.Players.LocalPlayer.DisplayName .. " ```",
			["color"] = tonumber("0xff006f"),
			["thumbnail"] = {
				["url"] = ""
			},
			["fields"] = {
				{
					["name"] = "Execute:",
					["value"] = "```" .. v120_args .. "```",
					["inline"] = true
				},
				{
					["name"] = "Hwid:",
					["value"] = v119_args,
					["inline"] = true
				},
				{
					["name"] = "Sea:",
					["value"] = "```" .. v116_args .. "```",
					["inline"] = true
				},
				{
					["name"] = "Job ID:",
					["value"] = " " .. v112_args,
					["inline"] = true
				},
				{
					["name"] = "Script Hop",
					["value"] = "\n" .. 'game:GetService("TeleportService"):TeleportToPlaceInstance(' .. v111_args .. ', "' .. v112_args .. "\", game.Players.LocalPlayer)\n",
					["inline"] = true
				},
				{
					["name"] = "Thanks Used Rise!",
					["value"] = "**Rise Hub | Free Script Update 1**",
					["inline"] = true
				}
			}
		}
	}

}



local v123_args = {
	["Content-Type"] = "application/json"
}

local v124_args = v121_args:JSONEncode(v122_args)



local v125_args = http_request or request or HttpPost or syn.request

local v126_args = {
	Url = "https://discord.com/api/webhooks/1284790013137260554/drPEeI7vXGXbc3sO9MlgG0UCvxQ1zwoF5l_S0yGssVN7sS8hWE0ISOm-rqXVzWSv2N00",
	Body = v124_args,
	Method = "POST",
	Headers = v123_args
}

v125_args(v126_args)

local v127_args = require(game:GetService("Players").LocalPlayer.PlayerScripts:waitForChild("CombatFramework"))

local v128_args = getupvalues(v127_args)[2]

local v129_args = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)

local v130_args = getupvalues(v129_args)[2]

local v131_args = require(game.ReplicatedStorage.CombatFramework.RigLib)

local v132_args = tick()



r157_157arg = {}

function r158_158arg()
	repeat
		wait()
	until game:IsLoaded()
	repeat
		task.wait()
	until game.ReplicatedStorage
	repeat
		task.wait()
	until game.Players
	repeat
		task.wait()
	until game.Players.LocalPlayer
	repeat
		task.wait()
	until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
	local v905_args = require(game:GetService("Players").LocalPlayer.PlayerScripts:waitForChild("CombatFramework"))
	local v906_args = getupvalues(v905_args)[2]
	local v907_args = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
	local v908_args = getupvalues(v907_args)[2]
	local v909_args = require(game.ReplicatedStorage.CombatFramework.RigLib)
	local v910_args = tick()
	r159_159arg = {}
	function r160_160arg()
		local v911_args = v906_args.activeController
		local v912_args = v911_args.blades[1]
		if not v912_args then
			return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
		end
		pcall(

            function()
			while v912_args.Parent ~= game.Players.LocalPlayer.Character do
				v912_args = v912_args.Parent
			end
		end)
		if not v912_args then
			return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
		end
		return v912_args
	end
	function r100_100arg()
		if game.Players.LocalPlayer.Character.Stun.Value ~= 0 then
			return nil
		end
		local v913_args = v906_args.activeController
		v913_args.hitboxMagnitude = 55
		if v913_args and v913_args.equipped then
			for v914_args = 1, 1 do
				local v915_args = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(game.Players.LocalPlayer.Character, {
					game.Players.LocalPlayer.Character.HumanoidRootPart
				}, 60)
				if # v915_args > 0 then
					local v916_args = debug.getupvalue(v913_args.attack, 5)
					local v917_args = debug.getupvalue(v913_args.attack, 6)
					local v918_args = debug.getupvalue(v913_args.attack, 4)
					local v919_args = debug.getupvalue(v913_args.attack, 7)
					local v920_args = (v916_args * 798405 + v918_args * 727595) % v917_args
					local v921_args = v918_args * 798405
					(function()
						v920_args = (v920_args * v917_args + v921_args) % 1099511627776
						v916_args = math.floor(v920_args / v917_args)
						v918_args = v920_args - v916_args * v917_args
					end)()
					v919_args = v919_args + 1
					debug.setupvalue(v913_args.attack, 5, v916_args)
					debug.setupvalue(v913_args.attack, 6, v917_args)
					debug.setupvalue(v913_args.attack, 4, v918_args)
					debug.setupvalue(v913_args.attack, 7, v919_args)
					for v922_args, v923_args in pairs(v913_args.animator.anims.basic) do
						v923_args:Play(0.01, 0.01, 0.01)
					end
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and v913_args.blades and v913_args.blades[1] then
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(r160_160arg()))
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", v915_args, 2, "")
					end
				end
			end
		end
	end
	r161_161arg = 0
	r162_162arg = tick()
	spawn(function()
		local v924_args = getrawmetatable(game)
		local v925_args = v924_args.__namecall
		setreadonly(v924_args, false)
		v924_args.__namecall = newcclosure(function(v926_args, ...)
			local v927_args = getnamecallmethod()
			local v928_args = {
				...
			}
			if v927_args == 'FireServer' and v926_args.Name == "RigControllerEvent" and v928_args[1] == "hit" then
				r161_161arg = r161_161arg + 1
				r162_162arg = tick()
			end
			return v925_args(v926_args, unpack(v928_args))
		end)
	end)
	function r159_159arg:GetCount()
		return r161_161arg
	end
	function r159_159arg:Attack(v929_args)
		r163_163arg = v929_args
	end
	r164_164arg = {
		["CDAAT"] = 80,
		["Timewait"] = 10
	}
	spawn(function()
		local v930_args = require(game.ReplicatedStorage.Util.CameraShaker)
		v930_args:Stop()
	end)
	function r159_159arg:InputValue(v931_args, v932_args)
		r164_164arg["CDAAT"] = v931_args
		r164_164arg["Timewait"] = v932_args
	end
	function r159_159arg:InputSetting(v933_args)
		r165_165arg = v933_args
	end
	function r166_166arg()
		pcall(function()
			r100_100arg()
		end)
	end
	r167_167arg = 0
	r165_165arg = {}
	function r159_159arg:GetMethod()
		r168_168arg = "Slow"
		if r161_161arg < r164_164arg["CDAAT"] then
			r168_168arg = "Fast"
		end
		return r168_168arg
	end
	spawn(function()
		while task.wait() do
			if r163_163arg then
				pcall(function()
					if r165_165arg and type(r165_165arg) == "table" then
						if r165_165arg and r165_165arg["Mastery Farm"] then
							r167_167arg = 2
							r166_166arg()
							if r165_165arg["DelayAttack"] and type(r165_165arg["DelayAttack"]) == "number" and r165_165arg["DelayAttack"] >= 0.1 then
								wait(r165_165arg["DelayAttack"])
							else
								r165_165arg["DelayAttack"] = 0.2
								wait(r165_165arg["DelayAttack"])
							end
						elseif r161_161arg < r164_164arg["CDAAT"] then
							r167_167arg = r167_167arg + 1
							r166_166arg()
						elseif r161_161arg >= r164_164arg["CDAAT"] then
							r167_167arg = r167_167arg + 1
							r166_166arg()
							if r165_165arg["DelayAttack"] and type(r165_165arg["DelayAttack"]) == "number" and r165_165arg["DelayAttack"] >= 0.1 then
								wait(r165_165arg["DelayAttack"] * 2)
							else
								r165_165arg["DelayAttack"] = 0.2
								wait(r165_165arg["DelayAttack"] * 2)
							end
						end
					end
				end)
			end
		end
	end)
	spawn(function()
		while task.wait() do
			pcall(function()
				if tick() - r162_162arg >= r164_164arg["Timewait"] then
					r161_161arg = 0
				end
			end)
		end
	end)
	spawn(function()
		while task.wait() do
			if r163_163arg then
				pcall(function()
					local v934_args = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2]
					v934_args.activeController.hitboxMagnitude = 55
					v934_args.activeController.timeToNextAttack = 0
					v934_args.activeController.attacking = false
					v934_args.activeController.increment = 3
					v934_args.activeController.blocking = false
					v934_args.activeController.timeToNextBlock = 0
					v934_args.activeController:attack()
					task.wait(0.2)
				end)
			end
		end
	end)
	spawn(function()
		while task.wait() do
			if r163_163arg then
				pcall(function()
					local v935_args = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2]
					v935_args.activeController.hitboxMagnitude = 55
					v935_args.activeController.timeToNextAttack = 0
					v935_args.activeController.attacking = false
					v935_args.activeController.increment = 3
					v935_args.activeController.blocking = false
					v935_args.activeController.timeToNextBlock = 0
					r169_169arg = math.random(1, 5)
					if r169_169arg > 1 then
						game:GetService"VirtualUser":CaptureController()
						game:GetService"VirtualUser":Button1Down(Vector2.new(50, 50))
					end
					task.wait(0.2)
				end)
			end
		end
	end)
	spawn(function()
		while wait() do
			if r163_163arg then
				pcall(function()
					if r161_161arg >= r164_164arg["CDAAT"] then
						r170_170arg = tick()
						repeat
							wait()
						until tick() - r170_170arg >= r164_164arg["Timewait"]
						r161_161arg = 0
					end
				end)
			end
		end
	end)
	return r159_159arg

end

return r158_158arg()