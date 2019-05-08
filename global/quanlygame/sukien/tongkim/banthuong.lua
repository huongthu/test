IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");
Include("\\script\\lib\\awardtemplet.lua")


T_NHANTHUONG_HN = 5001

NPC_Clicktk = {
	{1858,80,4,380,1442,3333,0,"�� Long �ao",0,"\\script\\global\\quanlygame\\sukien\\tongkim\\banthuong.lua","main", 0},   
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
                                                                                                              AddTimer(1800* 18, "OnTimeout", nNpcIdx);
			end; 
	end; 
end


	
local _Limit = function(nNpcIdx)
	if (0 == GetCamp()) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� tham gia.")
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
		Msg2Player("Ch� c� bang ch� m�i c� th� r�t �� Long �ao..");
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Msg2Player("Ch� c� bang ch� m�i c� th� r�t �� Long �ao..");
		return
	end;

	return nGetSeedLevel
end
	
local _GetFruit = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return 0
	end
	local nGetSeedLevel = %_Limit(nNpcIdx)
	
	if nGetSeedLevel == nil then
		return 0
	end
--tbAwardTemplet:GiveAwardByList({{szName="�� Long �ao ",tbProp={0,542},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,828,1},nCount=1,nExpiredTime=10080,},}, "test", 1);

	DelNpc(nNpcIdx)
	

                      Msg2SubWorld("<color=cyan>Bang Ch� <color=green>"..GetName().."<color=yellow> �� r�t th�nh c�ng �� Long �ao xin ch�c m�ng.!")	
end


local _OnBreak = function()
	Msg2Player("b�n b� tr�ng skill")
                      Msg2SubWorld("<color=cyan>Bang Ch� <color=green>"..GetName().."<color=yellow> b� �� th��ng<color=green> kh�ng th� r�t �ao.!")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	--����������
	tbProgressBar:OpenByConfig(22, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
local donethuong = format("<color=pink>�� Long �ao sau 1 h�i tranh gi�nh �� b� r�t m�t h�n c�c ngh�a s� l�n sau..");
AddGlobalNews(donethuong );
LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", donethuong, "", "")
end





