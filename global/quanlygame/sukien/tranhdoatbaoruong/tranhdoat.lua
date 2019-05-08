IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include( "\\script\\item\\checkmapid.lua" )
IncludeLib("TASKSYS");

T_NHANTHUONG_HN2 = 16219

NPC_Clicktk = {
	{1812,80,4,380,1442,3333,0,"B¶o R­¬ng Hoµng Kim",0,"\\script\\global\\quanlygame\\sukien\\tranhdoatbaoruong\\tranhdoat.lua","main", 0},   
}
function add_npc_tk()
	call_npctk(NPC_Clicktk)
end

function call_npctk(tbnpc) 
		for i = 1 , getn(tbnpc) do 
			Mid = SubWorldID2Idx(tbnpc[i][4]); 
			if (Mid >= 0 ) then 
				TabValue5 = tbnpc[i][5] * 32; 
				TabValue6 = tbnpc[i][6] * 32; 
				local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]); 
				SetNpcScript(nNpcIdx, tbnpc[i][10]); 
                                                                                                              AddTimer(1200* 18, "OnTimeout", nNpcIdx);
			end; 
	end; 
end


	
local _GetFruit = function(nNpcIdx, dwNpcId)		
local nDate = tonumber(GetLocalDate("%d"))
if ( GetTask(T_DAY) ~= nDate ) then
SetTask(T_DAY, nDate);
SetTask(T_NHANTHUONG_HN2,0)
end

local EMPTY = 1
if (CalcFreeItemCellCount() < EMPTY) then
Msg2Player(""..myplayersex().." h·y thu dän hµnh trang "..EMPTY.." « trèng!")
return
end

if GetTask(T_NHANTHUONG_HN2) > 0 then
Talk(1,"","<color=cyan>Mçi ngµy chØ cã 1 lÇn ®o¹t..!\n<color=green>®¸ thÊy mÑ µ <pic=47><pic=14><pic=47>")
else
local TAB_BONUS = {
{szName="<color=yellow>B¶o R­¬ng Hoµng Kim", tbProp={6,1,4423,1,0,0}, nCount = 1,},
}

for i = 1,getn(TAB_BONUS) do
tbAwardTemplet:GiveAwardByList(TAB_BONUS[i], "PhÇn th­ëng");
RestoreOwnFeature()
end
	local banthuong = format("<color=cyan>NghÜa SÜ <color=green>"..GetName().."<color=yellow> ®· ®o¹t thµnh c«ng 1 B¶o R­¬ng!");
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", banthuong , "", "")
SetTask(T_NHANTHUONG_HN2,GetTask(T_NHANTHUONG_HN2)+1)
--EatMedicine()
end
end




local _OnBreak = function(nNpcIdx, dwNpcId)
Msg2Player("<pic=04> Ui...da...!!!!!")
RestoreOwnFeature()
end

function main()
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end
ChangeOwnFeature(0,0,643);
	tbProgressBar:OpenByConfig(25, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
local donethuong = format("<color=pink>B¶o R­¬ng Hoµng Kim ®· hÕt thêi gian xuÊt hiÖn thø 3 hµng tuÇn vµo lóc 21h30.");
AddGlobalNews(donethuong );
LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", donethuong, "", "")
end




function EatMedicine()
	W, X, Y = GetWorldPos();
		if( GetCurCamp() == 1) then
			CallSjNpc( 1571, 80, W, X, Y, " Trèng Tèng");
		elseif( GetCurCamp() == 2) then
			CallSjNpc( 1571, 80, W, X, Y, " Cê Kim Quèc");
		end
	end	

function CallSjNpc(NpcId, NpcLevel, W, X, Y, Name)
	local playername = GetName();
		AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), ( X -  3 ) * 32, Y * 32, 1, playername..Name, 0);
end
