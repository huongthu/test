IncludeLib("RELAYLADDER");
IncludeLib("TONG")

function Reoff()
   
	if GetLevel()>20 then
		
		raktdct()
		rakfac()
		rakcashfac()
		rakcash()
		hoangda()
		rakd()
		trip()
		valu()
	end
end

function raktdct()
	if (GetCamp() ~= 4) and (GetCamp() ~= 0)  then
	Ladder_NewLadder(10287, GetName(),GetLevel(),1);
	end
end


function rakd()
	Ladder_NewLadder(10264, GetName(),GetRepute(),1);
end

function trip()
	Ladder_NewLadder(10263, GetName(),GetPK(),1);
end

function valu()
	Ladder_NewLadder(10261,GetName(),GetAllEquipValue(),1);
end


function hoangda()
	if (GetCamp() == 4) or (GetCamp() == 0)  then
			Ladder_NewLadder(10119, GetName(),GetLevel(),1);
	end
end


function rakcash()
	Ladder_NewLadder(10288, GetName(),GetCash(),1);
end


function rakfac()
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
			elseif (GetLastFactionNumber() == 10) then
			Ladder_NewLadder(10276, GetName(),GetLevel(),1);
		
		end
	end
end

function rakcashfac()
	local player_Faction = GetFaction()
	local szTongName, nTongID = GetTongName();	
	if GetLevel()>10 then
		if (player_Faction == "cuiyan") then	
			Ladder_NewLadder(10265, GetName(),GetCash(),1);
		elseif (player_Faction == "emei") then				
			Ladder_NewLadder(10266, GetName(),GetCash(),1);
		elseif (player_Faction == "tangmen") then
			Ladder_NewLadder(10267, GetName(),GetCash(),1);
		elseif (player_Faction == "wudu") then
			Ladder_NewLadder(10268, GetName(),GetCash(),1);
		elseif (player_Faction == "tianwang") then
			Ladder_NewLadder(10269, GetName(),GetCash(),1);
		elseif (player_Faction == "shaolin") then
			Ladder_NewLadder(10270, GetName(),GetCash(),1);
		elseif (player_Faction == "wudang") then
			Ladder_NewLadder(10271, GetName(),GetCash(),1);
		elseif (player_Faction == "kunlun") then
			Ladder_NewLadder(10272, GetName(),GetCash(),1);
		elseif (player_Faction == "tianren") then
			Ladder_NewLadder(10273, GetName(),GetCash(),1);
		elseif (player_Faction == "gaibang") then
			Ladder_NewLadder(10274, GetName(),GetCash(),1);
		elseif (GetLastFactionNumber() == 10) then
			Ladder_NewLadder(10275, GetName(),GetCash(),1);
		end
	end
end





