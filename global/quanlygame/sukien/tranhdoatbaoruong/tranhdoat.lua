IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include( "\\script\\item\\checkmapid.lua" )
IncludeLib("TASKSYS");

T_NHANTHUONG_HN2 = 16219

NPC_Clicktk = {
	{1812,80,4,380,1442,3333,0,"B�o R��ng Ho�ng Kim",0,"\\script\\global\\quanlygame\\sukien\\tranhdoatbaoruong\\tranhdoat.lua","main", 0},   
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
Msg2Player(""..myplayersex().." h�y thu d�n h�nh trang "..EMPTY.." � tr�ng!")
return
end

if GetTask(T_NHANTHUONG_HN2) > 0 then
Talk(1,"","<color=cyan>M�i ng�y ch� c� 1 l�n �o�t..!\n<color=green>�� th�y m� � <pic=47><pic=14><pic=47>")
else
local TAB_BONUS = {
{szName="<color=yellow>B�o R��ng Ho�ng Kim", tbProp={6,1,4423,1,0,0}, nCount = 1,},
}

for i = 1,getn(TAB_BONUS) do
tbAwardTemplet:GiveAwardByList(TAB_BONUS[i], "Ph�n th��ng");
RestoreOwnFeature()
end
	local banthuong = format("<color=cyan>Ngh�a S� <color=green>"..GetName().."<color=yellow> �� �o�t th�nh c�ng 1 B�o R��ng!");
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
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia.")
		return
	end
ChangeOwnFeature(0,0,643);
	tbProgressBar:OpenByConfig(25, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
local donethuong = format("<color=pink>B�o R��ng Ho�ng Kim �� h�t th�i gian xu�t hi�n th� 3 h�ng tu�n v�o l�c 21h30.");
AddGlobalNews(donethuong );
LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", donethuong, "", "")
end




function EatMedicine()
	W, X, Y = GetWorldPos();
		if( GetCurCamp() == 1) then
			CallSjNpc( 1571, 80, W, X, Y, " Tr�ng T�ng");
		elseif( GetCurCamp() == 2) then
			CallSjNpc( 1571, 80, W, X, Y, " C� Kim Qu�c");
		end
	end	

function CallSjNpc(NpcId, NpcLevel, W, X, Y, Name)
	local playername = GetName();
		AddNpc( NpcId, NpcLevel, SubWorldID2Idx(W), ( X -  3 ) * 32, Y * 32, 1, playername..Name, 0);
end
