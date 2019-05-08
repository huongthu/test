IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1171,80,4,53,1805,3428,0,"Nh�n Thi�t Ph�o Sa",0,"\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua","main", 0},   
}
function add_npc_click()
	call_npc(NPC_Clickdb)
end
function call_npc(tbnpc) 
		for i = 1 , getn(tbnpc) do 
			Mid = SubWorldID2Idx(tbnpc[i][4]); 
			if (Mid >= 0 ) then 
				TabValue5 = tbnpc[i][5] * 32; 
				TabValue6 = tbnpc[i][6] * 32; 
				local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]); 
				SetNpcScript(nNpcIdx, tbnpc[i][10]); 
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
		Msg2Player("Ch� c� bang ch� m�i ���c �i�u khi�n thi�t ph�o sa..");
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Msg2Player("<color=green>Ch� c� bang ch� m�i ���c �i�u khi�n thi�t ph�o sa...");
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
	DOIGM()
	DelNpc(nNpcIdx)
	

                      Msg2SubWorld("<color=cyan>Bang Ch� <color=green>"..GetName().."<color=yellow> b�t ��u k�o ph�o t� c�ng Nam Nh�c Tr�n v� trung t�m Ba L�ng huy�n c�c bang h�i kh�c mau mau ra c��p ph�o .!")	
end


local _OnBreak = function()
	Msg2Player("b�n b� tr�ng ��n � �")
                      Msg2SubWorld("<color=cyan>Bang Ch� <color=green>"..GetName().."<color=yellow> b� ��m l�n<color=green> kh�ng th� k�o ph�o sa.!")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	if (GetFightState() == 0 or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Tr�ng th�i d� th��ng phi chi�n ��u kh�ng th� tham gia.")
		return
	end
	--����������
	tbProgressBar:OpenByConfig(12, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;

function DOIGM()
ForbidEnmity(1);
SetPKFlag(1)
DisabledUseTownP(1);
ChangeOwnFeature(0,0,524);
ForbitSkill(1);
ForbidChangePK(1);
SetMoveSpeed(2);
AddSkillState(464, 20, 0, 18*3000);
AddSkillState(739, 1, 0, 18*3000); --CHIM
AddSkillState(731, 1, 0, 18*3000); --VONG XANH
AddSkillState(313, 60, 0, 18*3000); --TANHINH
AddSkillState(458, 60, 0, 18*3000); --TANHINH
AddSkillState(874, 1, 0, 18*3000); --BAYMAU
SetDeathScript("\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua");
Say("<color=green>L�u � qu� bang ch� kh�ng ���c out game trong l�c chuy�n ph�o s� b� k�t acc 24 ti�ng.", 0)
end


function OnDeath(nPlayerIndex)
add_npc_click()
ForbidEnmity(0);
SetPKFlag(0)
DisabledUseTownP(0);
ForbitSkill(0);
ForbidChangePK(0);
SetMoveSpeed(-2);
RestoreOwnFeature();
AddSkillState(464, 20, 0, 18*30);
AddSkillState(739, 1, 0, 18*30); --CHIM
AddSkillState(731, 1, 0, 18*30); --VONG XANH
AddSkillState(313, 60, 0, 18*30); --TANHINH
AddSkillState(458, 60, 0, 18*30); --TANHINH
AddSkillState(874, 1, 0, 18*30); --BAYMAU
SetDeathScript("");
--KickOutSelf()
Msg2SubWorld("<color=cyan>Ph�o Sa c�a Bang Ch� <color=green>"..GetName().."<color=yellow> B� h� th� ho�n to�n ph�o m�i �� xu�t hi�n l�i t�i 224/214 Ba L�ng Huy�n. .!")	
end
