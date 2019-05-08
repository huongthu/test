Include("\\script\\missions\\citywar_global\\head.lua");
Include("\\script\\missions\\citywar_city\\head.lua");
Include("\\script\\missions\\clearskill\\clearhole.lua");
Include("\\script\\task\\tollgate\\messenger\\wagoner.lua");  --������ʹ��ͼ

Include("\\script\\task\\newtask\\map_index.lua"); -- ���ڻ�ȡ��������ͼ����Ϣ
Include("\\script\\task\\tollgate\\messenger\\wagoner.lua") --��������������ʹ����Ľű�
Include("\\script\\global\\judgeoffline_special.lua")	--���������ȡ����йܷ�������ͼ

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\event\\zhongqiu_jieri\\200909\\rongshu\\head.lua")

Include("\\script\\event\\great_night\\great_night_head.lua")	--˫�����ƽ�֮��
--�i�u ch�nh reset 5h ch�i - Modified by DinhHQ - 20110630
Include("\\script\\vng_feature\\challengeoftime\\npcNhiepThiTran.lua")
szStationOp = 
	{
		"Nh�ng n�i �� �i qua /WayPointFun", 		-- 1
		"Nh�ng th�nh th� �� �i qua /StationFun",		-- 2
		"Tr� l�i ��a �i�m c� /TownPortalFun", 	-- 3
		"�i Hoa S�n c�nh k� tr��ng /go_HSBattle", 	-- 4
		"�i c�ng th�nh chi�n tr��ng /GoCityWar",			-- 5
		"�i c�ng th�nh hu�n luy�n chi�n tr��ng /GoDemoWar",		-- 6
		"�i ��o t�y t�y /GotoClearSkillMap",	-- 7
		"�i ��n n�i l�m nhi�m v� D� T�u /tl_moveToTaskMap",			-- 8
		"�i t�i n�i l�m nhi�m v� t�n s� /messenger_wagoner",      -- 9
		--"�i V� Danh C�c/GotoAnonymVale",			--10
	};

function return_1()
	return 1
end

function return_0()
	return 0
end

-- ��Ӧ�ϸ�����������ж�
aryCondition = {

	[1] = {checkState = return_1},     -- �����ĵط�
	[2] = {checkState = return_1},     -- �����ĳ���
	[3] = {checkState = return_1},     -- ���صĵص�
	[4] = {checkState = return_1},     -- ȥ��ɽ������
	[5] = {checkState = function()                      -- ȥ����ս��
				return (WhichWarBegin()~= 0 and 1) or 0;
		   end;
		  },
	[6] = {checkState = function()                      -- ȥ����ѵ��ս��
				return (GetGlbValue(2)==1 and 1) or 0;
		   end;
		  },
	[7] = {checkState = return_1},     -- ȥϴ�赺
	[8] = {checkState = function()                      -- ȥҰ���������ڵ�
				return (GetTask(1021)==4 and 1) or 0;
		   end;
		  },
	[9] = {checkState = function()                      -- ȥ������ʹ�������ڵص�
				return (GetTask(1204)~= 0 and 1) or 0;
		   end;
		  },
	--[10] = {checkState = return_1},    -- ����������
	[10] = {checkState = return_1},     -- �����ĵط�
	[11] = {checkState = return_1},
	[12] = {checkState = return_1},
}

szStationOp_Cancel = "Kh�ng c�n/StationOnCancel";

function go_HSBattle()
	Msg2Player("Ng�i y�n ch�ng ta �i Hoa S�n")
	NewWorld(2,2605,3592)
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 		
end

function WayPointFun()			-- �ӷ���Ҫ800�����ӣ����ڣ���������BY�� Dan_Deng 2004-04-30��
	p1 = GetWayPoint(1);
	p2 = GetWayPoint(2);
	p3 = GetWayPoint(3);
	HaveBin={};
	i = 1;
	if (p1 ~= 0)  then
		name = GetWayPointName(p1);
		name = name .."/SelWayPoint";
		HaveBin[i]= name;
		i = i + 1;
	end;
	if (p2 ~= 0)  then
		name = GetWayPointName(p2);
		name = name .."/SelWayPoint";
		HaveBin[i]= name;
		i = i + 1;
	end;
	if (p3 ~= 0)  then
		name = GetWayPointName(p3);
		name = name .."/SelWayPoint";
		HaveBin[i]= name;
		i = i + 1;
	end;
	HaveBin[i] = "Kh�ng mu�n �i ��u c�/OnCancel";
	if (i == 1) then 
		Say("Th�t xin l�i ta ch� c� th� ��a ng�i t�i n�i ng�i �� �i qua",0);
	else
		Say("M�i l�a ch�n", i, HaveBin);
	end;
end;

function WharfFun()
Count = GetWharfCount(CurWharf);
Num = Count;

WharfB = {};
nValidCount = 1;

for i = 1, Num do
WharfId = GetWharf(CurWharf, i);
if (WharfId ~= 0) then
	nPrice = GetWharfPrice(CurWharf, WharfId);
	WharfB[nValidCount] = GetWharfName(WharfId) .. "[" .. nPrice .. "��]" .. "/SelWharf";
	nValidCount = nValidCount + 1;
end;
end;

WharfB[nValidCount] = "Kh�ng �i/OnCancel";

if (nValidCount == 1) then 
Say("Th�t xin l�i n�i �� ng�i ch�a �i t�i", 0);
else
Say("Thuy�n phu: ng��i ngh� �i ch� n�o nha : ", nValidCount, WharfB);
end;

end;

function SelWharf(nSel)

nWharfId = GetWharf( CurWharf, nSel + 1);
nPrice = 0;
if 
(nWharfId ~= 0) then 
	nPrice = GetWharfPrice(CurWharf, nWharfId);
else
	return
end;

if (PrePay(nPrice) == 1 or GetCamp() == 6 ) then
Msg2Player("Ng�i y�n ch�ng ta �i n�o"..GetWharfName(nWharfId))
nW , nX, nY = GetWharfPos(nWharfId);
nResult = NewWorld(nW, nX , nY );
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 		
if (nResult == 2) then
Msg2Player("Ph�c v� kh� chuy�n ��i trung...")
end
if (nResult == 0) then
Msg2Player("Truy�n t�ng v�o �i�m c� sai l�m")
end
else
Say("Th�t ng�i kh�ng c� ti�n th� kh�ng th� �i xe", 0);
end;
end;


function StationFun()
	for j = 1, 16 do
		AddStation(j)
	end
	Count = GetStationCount();
	Num = Count;
	if (Count > 10) then
		Num = 10
	end
	StationB = {}
	nValidCount = 1

	for i = 1, Num do
		StationId = GetStation(i, CurStation)
		if (StationId ~= 0) then
			nPrice = GetPrice2Station(CurStation, StationId)
	StationB[nValidCount] = GetStationName(StationId) .. "[" .. nPrice .. "l��ng]" .. "/SelStation";
			nValidCount = nValidCount + 1
		end
	end
StationB[nValidCount] = "Kh�ng mu�n �i n�i n�o c�/OnCancel";

	if (nValidCount == 1) then 
Say("Th�t xin l�i ta ch� c� th� ��a ng�i t�i n�i ng�i �� �i qua", 0);
	else
Say("Xin m�i ch�n ��a �i�m", nValidCount, StationB);
	end
end

function SelStation(nSel)
	Count = GetStationCount()
	nStation = GetStation(nSel + 1, CurStation)
	nPrice = GetPrice2Station(CurStation, nStation)
	if (PrePay(nPrice) == 1 or GetCamp() == 6) then
		nW, nX, nY = GetStationPos(nStation);
		nResult = NewWorld(nW, nX , nY );
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 		
Msg2Player("Ng�i y�n ch�ng ta �i n�o"..GetStationName(nStation))
		if (nResult == 2) then
			--Msg2Player("������ת����...")
		end
		if (nResult == 0) then
Msg2Player("Truy�n t�ng t�i �i�m c� sai l�m")
		end
	--�i�u ch�nh reset 5h ch�i - Modified by DinhHQ - 20110630
	local nSongJinCount = PlayerFunLib:GetTaskDailyCount(1926)
	if nSongJinCount >= 1 or tbCOT_Party:GetDailyTaskCount() >= 1 then
		SetTireTime(0)
	end

	else
Say("Th�t ng�i kh�ng c� ti�n th� kh�ng th� �i ��u ���c", 0);
	end
end

function TownPortalFun()			-- ����Ҫ2000�����ӣ�ԭ�ص㣩������BY: Dan_Deng 2004-04-30��
--	if (PrePay(2000) == 1 or GetCamp() == 6) then
		ReturnFromPortal()
--	else
--		Say("Th�t ng�i kh�ng c� ti�n th� kh�ng th� �i ��u ���c", 0)
--	end
end;

function SelWayPoint(nSel)			-- ����Ҫ1000�����ӣ����ڣ���������BY��Dan_Deng 2004-04-30��
--	if (PrePay(1000) == 1 or GetCamp() == 6) then
		nWayPoint = GetWayPoint(nSel + 1);
		if (nWayPoint ~= 0) then
			nW, nX, nY = GetWayPointPos(nWayPoint)
			nFightState = GetTerminiFState(nWayPoint)
			nResult = NewWorld(nW, nX, nY)
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 		
			SetFightState(nFightState)
--			Msg2Player("Goto"..GetWayPointName(nWayPoint)..nW..nX..nY);
			if (nResult == 2) then
--				Msg2Player("Ph�c v� kh� chuy�n ��i trung...")
			end
			if (nResult == 0) then
--				Msg2Player("Truy�n v�o �i�m c� sai l�m.")
			end
		end;
--	else									-- ����Ǯ�;ܾ�
--		Say("Th�t ng�i kh�ng c� ti�n th� kh�ng th� �i u ���c", 0);
--	end;
end

--��ս�Ƿ�ʼ��
function WhichWarBegin()
	for i = 1,7 do
		if (HaveBeginWar(i) ~= 0) then
			return i;
		end;
	end;
	return 0;
end;

function CancelGoCityWar()
	Say("C�ng th�nh chi�n tr��ng l� n�i �ao ki�m v� t�nh,n�u kh�ng t�i tham chi�n th� h�y l�y sinh m�ng l�m tr�ng, tr� v� �i", 0);
end;

function GoCityWar()
	CityID = WhichWarBegin();
	if (CityID >= 1 and CityID <= 7) then
		Tong1, Tong2 = GetCityWarBothSides(CityID);
		str = format("B�y gi� %s c�ng th�nh chi�n �ang ti�n h�nh, phe c�ng th�nh<%s>,phe th� th�nh<%s>,Xin h�i ng�i mu�n gia nh�p phe n�o", GetCityAreaName(CityID), Tong1, Tong2);
		Say(str , 3, "Phe c�ng th�nh/GoCityWarAttack", "Phe th� th�nh/GoCityWarDefend", "Kh�ng �i/CancelGoCityWar");
	end;
end;

--ȥ����ս�ط����
function GoCityWarDefend()
	CityID = WhichWarBegin();
	if (CityID == 0 ) then 
		return
	end;

	TongName, result = GetTong()
	Tong1, Tong2 = GetCityWarBothSides(CityID);
	if (Tong2 ~= TongName and GetItemCountEx(CardTab[CityID * 2]) < 1) then 
		if (GetTask(TV_CITYID) ~= CityID or GetTask(TV_VALUE) ~= 1 or GetTask(TV_TASKID) ~= MISSIONID) then
			Say("Th�n ph�n kh�ng h�p l�, vui l�ng tr� v�!", 0);
			return
		end;
	end;
	
	if (random(0,1) == 1) then
		NewWorld(222, 1614, 3172);
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 		
	else
		NewWorld(222, 1629, 3193);
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 		
	end;
end;

--ȥ����ս�������
function GoCityWarAttack()
	CityID = WhichWarBegin();
	if (CityID == 0) then 
		return
	end;

	TongName, result = GetTong()
	Tong1, Tong2 = GetCityWarBothSides(CityID);
	if (Tong1 ~= TongName and GetItemCountEx(CardTab[CityID * 2 - 1]) < 1) then
		if (GetTask(TV_CITYID) ~= CityID or GetTask(TV_VALUE) ~= 2 or GetTask(TV_TASKID) ~= MISSIONID) then
			Say("Th�n ph�n kh�ng h�p l�, vui l�ng tr� v�!", 0);
			return
		end
	end
	
	if (random(0,1) == 1) then
		NewWorld(223, 1614, 3172);
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 		
	else
		NewWorld(223, 1629, 3193);
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 		
	end;

end;

function GoDemoWar()
	Say("C�ng th�nh tu luy�n chi�n b�t ��u, ng��i th�c s� mu�n tham gia??", 3,"Tham gia phe th� th�nh!/GotoDefend", "Tham gia phe c�ng th�nh/GotoAttack", "Ta kh�ng mu�n �i/OnCancel") 

end;

function GotoDefend()
if (random(0,1) == 1) then
	NewWorld(222, 1614, 3172);
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 		
else
	NewWorld(222, 1629, 3193);
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 		
end;
end;

function GotoAttack()
	if (random(0,1) == 1) then
		NewWorld(223, 1614, 3172);
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 		
	else
		NewWorld(223, 1629, 3193);
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 		
	end;
end;

-- ȥϴ���ͼ
function GotoClearSkillMap()
	-- ��ʱ����ȥϴ���ͼ�Ĺ���
	-- Say("�������ȥϴ�赺�Ļ���ֻ��һ�Ρ�����û�������ϤһϢ��εļ��ܵ�������һ����ȥ�ɡ�", 1, "֪����/gotocsm_no")

	nSubWorldID = SubWorldIdx2ID();
	nCityIndex = CSP_GetCityIndexByCityMap(nSubWorldID);
	if (nCityIndex == -1) then
		return -1;
	end
	
	CSP_EnterClearMap(nCityIndex);	
end;

function gotocsm_no()
end;

function OnCancel()
end;

function goto_shijiangu()
	NewWorld(949, floor(51264 / 32), floor(102368 / 32))
end

function _GoELangGu()
	Msg2Player("��n �c lang c�c!")
	local tbTargetMapList = {[11] = 950, [1] = 951, [37] = 952, 
										[176] = 953, [162] = 954, [78] = 955, [80] = 956,}
	local nMapId = GetWorldPos()
	if tbTargetMapList[nMapId] then
 		NewWorld(tbTargetMapList[nMapId], 1592, 3195)
		--SetFightState(1);
SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 	
 	end
end

CITY_OPTIONS =
{
	{"Nh�ng n�i �� �i qua", 				WayPointFun}, 			-- 1
	{"Nh�ng th�nh th� �� �i qua",				StationFun},			-- 2
	{"Tr� l�i ��a �i�m c� ",				TownPortalFun}, 		-- 3
	{"�i Hoa S�n c�nh k� tr��ng",			go_HSBattle}, 			-- 4
	{"�i c�ng th�nh chi�n tr��ng",				GoCityWar},				-- 5
	{"�i c�ng th�nh hu�n luy�n chi�n tr��ng ",			GoDemoWar},				-- 6
	{"�i ��o t�y t�y",				GotoClearSkillMap},		-- 7
	{"�i ��n n�i l�m nhi�m v� D� T�u ",		tl_moveToTaskMap},		-- 8
	{"�i t�i n�i l�m nhi�m v� t�n s� ",	messenger_wagoner},     -- 9
	--{"�i V� Danh C�c",				GotoAnonymVale},			--10
	{"�i L��ng Th�y ��ng",		OnGoToNewLiangShuiDong},-- 10
	{"�i Ki�m Gia M� Cung",				goto_shijiangu},		-- 11
	{"�i �c Lang c�c",				_GoELangGu},
}

-- ���г���ͨ�ýű�
-- ע�⣺����սδʹ�ô˺����Ľű� [script\missions\citywar_city\zhongzhuan_map\chefu.lua]
function CityStationCommon(szMsg)	
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	tbDailog.szTitleMsg = szMsg

	--�����Ի���
	for i = 1, getn(CITY_OPTIONS) do
		local tb = CITY_OPTIONS[i]
		-- ���� aryCondition �ڵ� checkState ���̣����˶Ի�ѡ���Ƿ��������
		if aryCondition[i].checkState() == 1 then
			tbDailog:AddOptEntry(tb[1], tb[2])
		end
	end
	tbDailog:Show()
end;

-- Т�ִ峵��ͨ�ýű� (ע�⣺��������Т�ִ壬�����˺���)
function NewcomerStationCommon(szMsg)
--	check_update()					-- ���ܸ�Т�����ɼӱ�ʶ��2004-05-31��
	if (GetLevel() >= 5) then
		if (WhichWarBegin() ~= 0) then
			Say(szMsg, 5, szStationOp[1], szStationOp[2], szStationOp[3], szStationOp[5], szStationOp_Cancel)
		elseif (GetGlbValue(2) == 1) then -- ����ѵ��ս��
			Say(szMsg, 5, szStationOp[1], szStationOp[2], szStationOp[3], szStationOp[6], szStationOp_Cancel)
		else
			if (GetTask(1021) == 4) then -- ���������Ұ��������Ѱ�ҵ�ͼ־������
				Say(szMsg, 5, szStationOp[1], szStationOp[2], szStationOp[3], szStationOp[8], szStationOp_Cancel)
			else
				Say(szMsg, 4, szStationOp[1], szStationOp[2], szStationOp[3], szStationOp_Cancel)
			end
		end;
	else		
		Talk(1,"","Xa phu: b�n ngo�i c� r�t nhi�u ng��i gi�ng ng��i �� ra ngo�i v� u�ng m�ng. Ta kh�ng g�nh v�c n�i chuy�n n�y ��u")
	end
end;

function  StationOnCancel()
   Talk(1,"","C� ti�n th� h�y quay l�i")
end;

----------------------------------------------

CP_MAPPOS_IN = {1508,3026}
CP_MAPTAB = {
				{396, 397, "Thi�u l�m"},
				{398, 399, "Thi�n v��ng"},
				{400, 401, "���ng m�n"},
			 	{402, 403, "Ng� ��c"},
			 	{404, 405, "Nga my"},
			 	{406, 407, "Th�y y�n"},
			 	{408, 409, "C�i bang"},
			 	{410, 411, "Thi�n nh�n"},
			 	{412, 413, "V� �ang"},
			 	{414, 415, "C�n l�n"}
			 }

function transtoplace()
	Say("V� l�m li�n ��u m�n ph�i �ang ti�n h�nhi , ng��i mu�n ti�n v�o sao?", 2, "Ta mu�n ti�n v�o/transtoplace_sure", "�� ta suy ngh� ��/OnCancel")
end

function transtoplace_sure()

	if (GetLastFactionNumber() == -1) then
		Say("Minh ch� v� l�m c� l�nh : Li�n ��u m�n ph�ii ch� gi�i h�n � th�p ��i m�n ph�i d� thi. ng��i � ��y trong ch�n v� l�m kh�ng m�n kh�ng ph�i , b�y gi� kh�ng th� tham gia ���c , h�y gia nh�p m�n ph�i sau �� , tr� l�i d� thi �i", 0)
		return
	else
		if(GetLastFactionNumber() == 0) then
			NewWorld(CP_MAPTAB[1][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		elseif (GetLastFactionNumber() == 1) then
			NewWorld(CP_MAPTAB[2][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		elseif (GetLastFactionNumber() == 2) then
			NewWorld(CP_MAPTAB[3][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		elseif (GetLastFactionNumber() == 3) then
			NewWorld(CP_MAPTAB[4][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--�嶾
		elseif (GetLastFactionNumber() == 4) then
			NewWorld(CP_MAPTAB[5][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		elseif (GetLastFactionNumber() == 5) then
			NewWorld(CP_MAPTAB[6][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		elseif (GetLastFactionNumber() == 6) then
			NewWorld(CP_MAPTAB[7][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--ؤ��
		elseif (GetLastFactionNumber() == 7) then
			NewWorld(CP_MAPTAB[8][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		elseif (GetLastFactionNumber() == 8) then
			NewWorld(CP_MAPTAB[9][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--�䵱
		elseif (GetLastFactionNumber() == 9) then
			NewWorld(CP_MAPTAB[10][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		end
		Msg2Player("�� ti�n v�o ��u tr��ng v� l�m li�n ��u m�n ph�i ")
	end
end

-- ���ڴ���һ��ѡ��ĶԻ����� Say(""...);
-- Edited by peres
function SelectSay(strSay)

local strMsg,strSel = "","";
local strNum = getn(strSay);

	if strNum < 2 then
		return
	end;
	
	if strNum > 2 then
		for i=2,strNum - 1 do
			strSel = strSel..format("%q", strSay[i])..",";
		end;
		strSel = strSel..format("%q", strSay[strNum]);
		strMsg = "Say("..format("%q", strSay[1])..","..(strNum - 1)..","..strSel..");";
	elseif strNum == 2 then
		strSel = format("%q", strSay[strNum]);
		strMsg = "Say("..format("%q", strSay[1])..",1"..","..strSel..");";
	end
	dostring(strMsg)
end



