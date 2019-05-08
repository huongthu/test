IncludeLib("RELAYLADDER");
IncludeLib("TONG")
function XepHang()
	if GetLevel()>10 then
		XepHang_Top10ALL()
		XepHang_Top10MP()
		XepHang_TopPH10ALL()
	end
end

function XepHang_Top10ALL()
	Ladder_NewLadder(10287, GetName(),GetLevel(),1);
end
function XepHang_TopPH10ALL()
	Ladder_NewLadder(10288, GetName(),GetCash(),1);
end

function XoaXepHang()
	for i=10277,10286 do
		Ladder_ClearLadder(i)
	end
	Ladder_ClearLadder(10119)
end

function XepHang_Top10MP()
	local player_Faction = GetFaction()
	local szTongName, nTongID = GetTongName();	
	if GetLevel()>10 then
		if (player_Faction == "cuiyan") then	
			Ladder_NewLadder(10282, GetName(),GetLevel(),1);
		elseif (player_Faction == "emei") then				
			Ladder_NewLadder(10281, GetName(),GetLevel(),1);
		elseif (player_Faction == "tangmen") then
			Ladder_NewLadder(10279, GetName(),GetLevel(),1);
		elseif (player_Faction == "wudu") then
			Ladder_NewLadder(10280, GetName(),GetLevel(),1);
		elseif (player_Faction == "tianwang") then
			Ladder_NewLadder(10278, GetName(),GetLevel(),1);
		elseif (player_Faction == "shaolin") then
			Ladder_NewLadder(10277, GetName(),GetLevel(),1);
		elseif (player_Faction == "wudang") then
			Ladder_NewLadder(10285, GetName(),GetLevel(),1);
		elseif (player_Faction == "kunlun") then
			Ladder_NewLadder(10286, GetName(),GetLevel(),1);
		elseif (player_Faction == "tianren") then
			Ladder_NewLadder(10284, GetName(),GetLevel(),1);
		elseif (player_Faction == "gaibang") then
			Ladder_NewLadder(10283, GetName(),GetLevel(),1);
		else
				if szTongName == nil or szTongName == "" then
						if GetCamp() == 4 then
								Ladder_NewLadder(10119, GetName(),GetLevel(),1);
						end
				end
		end
	end
end

function xephangcanhan()
	-- local PlayerIndexOld = PlayerIndex
	-- local szArrayRankingLevel = {}
	-- local szArrayRankingName = {}
	-- local i = 1
	-- local MAX_PLAYER = 100
	-- for i=1, MAX_PLAYER do
		-- PlayerIndex = i
		-- szArrayRankingLevel[i] = GetLevel()
		-- szArrayRankingName[i] = GetName()
	-- end
	-- PlayerIndex = PlayerIndexOld
	
	-- local TempLevel = 0
	-- local TempName = ""
	-- local hasChanged
	-- while hasChanged do 
		-- hasChanged = false
		-- for i = 1, MAX_PLAYER - 1 do
			-- if szArrayRankingLevel[i] > szArrayRankingLevel[i + 1] then
				-- Temp = szArrayRankingLevel[i]
				-- szArrayRankingLevel[i] = szArrayRankingLevel[i + 1]
				-- szArrayRankingLevel[i + 1] = Temp
				
				-- TempName = szArrayRankingName[i]
				-- szArrayRankingName[i] = szArrayRankingName[i + 1]
				-- szArrayRankingName[i + 1] = TempName
				-- hasChanged = true
			-- end
		-- end
	-- end
	-- for i=1, MAX_PLAYER do
		-- PlayerIndex = i
		-- SetTask(3001,szArrayRankingLevel[i])
		-- Msg2Player("Thø h¹ng c¸ nh©n: Nh©n vËt:"..szArrayRankingName[i].."\tH¹ng:"..szArrayRankingLevel[i].."\n")
	-- end
end
