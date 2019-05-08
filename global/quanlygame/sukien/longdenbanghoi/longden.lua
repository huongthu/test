IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
--Include( "\\script\\item\\checkmapid.lua" )
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1414,80,4,100,1624,2976,0,"Long Tr�",0,"\\script\\global\\quanlygame\\sukien\\longdenbanghoi\\longden.lua","main", 0},   
}
NPC_nhentinh1 = {
	{1631,90,4,53,1630,3309,0,"Nh�n Nh�n Tinh",0,"","", 0},   
}
NPC_nhentinh2 = {
	{1631,90,4,53,1637,3305,0,"Nh�n Nh�n Tinh",0,"","", 0},   
}



function add_npc_click()
	call_npc(NPC_Clickdb)
	--call_npc(NPC_nhentinh1)
	--call_npc(NPC_nhentinh2)
end
function call_npc(tbnpc) 
		for i = 1 , getn(tbnpc) do 
			Mid = SubWorldID2Idx(tbnpc[i][4]); 
			if (Mid >= 0 ) then 
				TabValue5 = tbnpc[i][5] * 32; 
				TabValue6 = tbnpc[i][6] * 32; 
				local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]); 
				SetNpcScript(nNpcIdx, tbnpc[i][10]); 
                                                                                                              AddTimer(1800* 18, "OnTimeout", nNpcIdx);

			end; 
	end; 
end



local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia.")
		return
	end

	if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Ch� c� bang ch� m�i �� t� c�ch.")
		return
	end

	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if (nPlayerLevel < 90) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 90 and nPlayerLevel < 120) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 120) then
		nGetSeedLevel = 3;
	end

	if (nGetSeedLevel ~= 3) then -- ������𲻶�,���ܽ���ʰȡ
		--���������Ҽ��𲻶�,����ʰȡ
		Msg2Player("Ng��i ch�i ph�i t� c�p 120 tr� l�n m�i c� th� tham gia ")
		return
                      end

	local nBuildFund = 5000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("Ch�a gia nh�p bang h�i, ho�c kh�ng ph�i l� bang ch� kh�ng th� �o�t.");
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Msg2Player("<color=green>Ch� c� bang ch� m�i c� �� t� c�ch");
		return
	end;

	return nGetSeedLevel
end
	
local _GetFruit = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return
	end
	local nGetSeedLevel = %_Limit(nNpcIdx)
	
	if nGetSeedLevel == nil then
		return
	end
	
	DelNpc(nNpcIdx)
	tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=200,},}, "test", 1);


 Msg2SubWorld("<color=cyan>Bang Ch� <color=green>"..GetName().."<color=yellow> �� �o�t th�nh c�ng Long Tr� v�<color=green> Nh�n ph�n th��ng cao qu�  .!")	
end


local _OnBreak = function()
                      Msg2Player("<color=cyan>B�n b� �� th��ng<color=green> kh�ng th� �o�t tr�.!")
end

function main()
--dofile("script/global/quanlygame/sukien/longdenbanghoi/longden.lua");
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
if GetLastFactionNumber() == 5 then
AddMagic(713,20)
end
	if (GetFightState() == 0 or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Tr�ng th�i d� th��ng phi chi�n ��u kh�ng th� tham gia.")
		return
	end	--����������
	tbProgressBar:OpenByConfig(20, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
Msg2SubWorld("<color=cyan>Long Tr� �� Bi�n M�t!")
end