--Include("\\script\\global\\lbadmin.lua")
-------------------------------------------------Script*By* NguyenKhai-----------------------------------------
IncludeLib("LEAGUE");
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");


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
	return nGetSeedLevel
end
	
local _GetFruit = function(nNpcIdx, dwNpcId)
	vantieubanghoine()
	end


local _OnBreak = function()
	Msg2Player("��ng y�n kh�ng ���c nh�t nh�ch.<pic=15>")
end



function main()
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
                                                                                                                                                                     Say("Ch� c� bang ch� nh� ng��i m�i c� t� c�ch n�i chuy�n v�i ta nh� ku em.<pic=150>",0)
		return
	end
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
		local nHour = tonumber(GetLocalDate("%H%M"))
		if( nHour >= 2105 and nHour <= 2300) then
	tbProgressBar:OpenByConfig(3, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)


		else
                                                                                                                                                                     Say("Ch�c n�ng k�o ph�o Ba L�ng Huy�n b�t ��u t� 22h5 ��n 23h th� 7 h�ng tu�n.Ph�n th��ng 1 m�t n� v� ��ch chi�n tr��ng KNVC 1 c�p 7 ng�y + 100 khi�u kh�ch l�nh.<pic=146>",0)
return
	end
end

function vantieubanghoine()
	local tbDialog = 
{ 
"<npc><color=green>��i qu�n ta �ang c�n nhi�u Ph�o Sa �� c�ng th�nh gi�c ph��ng kh�ng bi�t v� bang ch� c� �� �i�u ki�n �em ph�o t�i cho ta kh�ng.",
 "Ta ��n �� giao ��i ph�o sa cho qu�n binh/giaohangdaiquan",
"Ta ch� gh� qua th�i/",
} 
CreateTaskSay(tbDialog)
end



function giaohangdaiquan()
local state = GetSkillState(739);
if state == 1 then
ForbidEnmity(0);
SetPKFlag(0)
DisabledUseTownP(0);
ForbitSkill(0);
ForbidChangePK(0);
SetMoveSpeed(-2);
RestoreOwnFeature();
AddSkillState(464, 20, 0, 18*60);
AddSkillState(739, 1, 0, 18*5); --CHIM
AddSkillState(731, 1, 0, 18*60); --VONG XANH
AddSkillState(313, 60, 0, 18*60); --TANHINH
AddSkillState(458, 60, 0, 18*60); --TANHINH
AddSkillState(874, 1, 0, 18*60); --BAYMAU
tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,828,1},nCount=1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Khi�u Kh�ch L�nh",tbProp={6,1,4450,1,1,0},nCount=100,},}, "test", 1);
Msg2SubWorld("Thi�t Ph�o Sa c�a bang Ch� <color=green>"..GetName().."<color=yellow> �� Ho�n th�nh nhi�m v� nh�n ���c 1 M�t N� V� ��ch Chi�n Tr��ng 7 Ng�y + 100 Khi�u Kh�ch L�nh.")

SetDeathScript("");
--KickOutSelf()
	else
Say("<color=green>Ph�o ��u ��nh l�a ta h� t�n ch�t m� � !!<pic=6>.")
	end
end