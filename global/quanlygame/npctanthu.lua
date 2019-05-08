------------------------------------ TONG THE NPC HO TRO TAN THU ----------------
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\traogiaithdnb\\thdnb7.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\vng_event\\2012_vlnb\\main.lua")
Include("\\script\\global\\lottery_gold.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\quanlygame\\chuyenmonphai.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\changefeature\\feature_man.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include([[\script\event\mid_autumn06\head.lua]]);
local tbFaction =
{
	[1] =
	{
		szShowName = "Thi�u L�m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709},
	},
	[2] =
	{
		szShowName = "Thi�n V��ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708},
	},
	[3] =
	{
		szShowName = "���ng M�n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710},
	},
	[4] =
	{
		szShowName = "Ng� ��c Gi�o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = "emei",
		nShortFaction = "em",
		tbSkill = {380, 328, 712},
	},
	[6] =
	{
		szShowName = "Th�y Y�n",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713},
	},
	[7] =
	{
		szShowName = "C�i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714},
	},
	[8] =
	{
		szShowName = "Thi�n Nh�n Gi�o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715},
	},
	[9] =
	{
		szShowName = "V� �ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716},
	},
	[10] =
	{
		szShowName = "C�n L�n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717},
	},
}
local tbFactionSeries =
{
	[1] = {1, 2},
	[2] = {3, 4},
	[3] = {5, 6},
	[4] = {7, 8},
	[5] = {9, 10},
}





------------------------------------ TONG THE NPC HO TRO TAN THU ----------------
	
function main()			
dofile("script/global/quanlygame/npctanthu.lua")
local szTitle = "Ph�n qu� t�n th� gi�nh cho ng��i r�t phong ph�, h�y tr�i nghi�m nh�ng t�nh n�ng h�p d�n, ��m m�nh v�o m�t th� gi�i v� l�m ho�n to�n m�i l� c�ng c�c game th� b�n nh�!";
local tbOpt = 
{
--{"Chuy�n ��i Skill 9x Th�y Y�n",thuyyendi},
--{"Mua S�ch Gia H�n Trang B� Th�m 30 Ng�y",Donate},
--{"C�a H�ng ��i Huy Ch��ng L�y Trang B�", MenuTrangBi},
--{"Mua Nh�t K� C�n Kh�n + 1 KNVC",Donate},
--{"Nh�p Ph�i Nh�n Max C�p",HoTroTanThuMoi},
{"Chuy�n ��i M�n Ph�i Mi�n Ph�", MenuChuyen},
{"T�y T�y + X�a PK + ��i M�u ",TayTuyFree},
{"L�p Bang H�i - ��i T�n NV", Danhsachlapbang},
--{"Nh�n Danh V�ng L�nh ��o", danhvonglanhdao},
{"M� R�ng H�t H�nh Trang", MoRuongFree},
{"��i Ngo�i H�nh Trang B�", DoiNgoaiTrang},
--{"Nh�n L�nh B�i T�n Th� - TTP", nhanttp},
--{"Mua Ch�a Kh�a HK",MuaCK},
--{"Nh�n V� Kh� C�c Ph�m", hkmpvip1},
{"Tho�t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end

function kickrakhoigame2()
local nPlayerIndex = SearchPlayer(szName)
OfflineLive(PlayerIndex); 
KickOutSelf()
end

function thuyyendi()
if GetFaction() == "cuiyan" and HaveMagic(336) >= 0 and HaveMagic(337) >= 0 then
DelMagic(336)
DelMagic(337)
AddMagic(1223,20)
AddMagic(1224,20)
Talk(1,"","Chuy�n ��i skill th�y y�n sang �u�i th�nh c�ng .") -- go
return
end
if GetFaction() == "cuiyan" and HaveMagic(1223) >= 0 and HaveMagic(1224) >= 0 then
DelMagic(1223)
DelMagic(1224)
AddMagic(336,20)
AddMagic(337,20)
Talk(1,"","Chuy�n ��i skill th�y y�n sang kh�ng �u�i th�nh c�ng.") -- go
return
end
Talk(1,"","Xin l�i b�n kh�ng ph�i th�y y�n ho�c tr�n ng��i b�n kh�ng c� �� 2 skill 9x c�a th�y y�n n�n kh�ng th� chuy�n ��i..") -- go
return
end


function nhanttp()
tbAwardTemplet:GiveAwardByList({{szName="�� ngh�",tbProp={6,1,1266,1,0},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="�� ngh�",tbProp={6,1,438,1,0},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="�� ngh�",tbProp={6,1,4360,1,0},nCount=1,nBindState=-2},}, "test", 1);
end


function Donate()		
local szTitle = "<npc>S�ch gia h�n l� s�ch c� th� gia h�n b�t c� th� g� n�u n� c� h�n s� d�ng sau khi gia h�n th� v�t ph�m �� s� c� h�n s� d�ng th�m 30 ng�y n�a.!";
local tbOpt = 
{
--{"Mua nh�t k� +1 KNVC (100xu)",duytriserver},
{"Mua gia h�n �� (50xu)",MuaGH},
--{"Mua gia h�n �� b� kh�a v�nh vi�n (50xu)",MuaGHVV},
{"T�i h� kh�ng c�n l�m",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end

function duytriserver()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","Xin l�i m�t nh�t k� c�ng kh�n c�n c�.<color=red> 100 Ti�n ��ng ��i hi�p kh�ng mang �� r�i xin li�n h� admin t�i fanpage FB cung c�p m� s� th� c�o viettel �� ��i l�y xu..") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(100,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4357,1,0,0,0}, nCount=1, nBindState=-2}, "test", 1);
Msg2SubWorld("<color=green>Thay m�t BQT c�m �n ��i hi�p <color=pink>"..GetName().."<color=green> �� �ng h� server b�ng c�ch mua m�t nh�t k� 1 th�ng.")
Msg2SubWorld("<color=green>Thay m�t BQT c�m �n ��i hi�p <color=pink>"..GetName().."<color=green> �� �ng h� server b�ng c�ch mua m�t nh�t k� 1 th�ng.")
Msg2SubWorld("<color=green>Thay m�t BQT c�m �n ��i hi�p <color=pink>"..GetName().."<color=green> �� �ng h� server b�ng c�ch mua m�t nh�t k� 1 th�ng.")
Msg2SubWorld("<color=green>Thay m�t BQT c�m �n ��i hi�p <color=pink>"..GetName().."<color=green> �� �ng h� server b�ng c�ch mua m�t nh�t k� 1 th�ng.")
Msg2SubWorld("<color=green>Thay m�t BQT c�m �n ��i hi�p <color=pink>"..GetName().."<color=green> �� �ng h� server b�ng c�ch mua m�t nh�t k� 1 th�ng.")
Msg2SubWorld("<color=green>Thay m�t BQT c�m �n ��i hi�p <color=pink>"..GetName().."<color=green> �� �ng h� server b�ng c�ch mua m�t nh�t k� 1 th�ng.")
Msg2SubWorld("<color=green>Thay m�t BQT c�m �n ��i hi�p <color=pink>"..GetName().."<color=green> �� �ng h� server b�ng c�ch mua m�t nh�t k� 1 th�ng.")
Msg2SubWorld("<color=green>Thay m�t BQT c�m �n ��i hi�p <color=pink>"..GetName().."<color=green> �� �ng h� server b�ng c�ch mua m�t nh�t k� 1 th�ng.")
Msg2SubWorld("<color=green>Thay m�t BQT c�m �n ��i hi�p <color=pink>"..GetName().."<color=green> �� �ng h� server b�ng c�ch mua m�t nh�t k� 1 th�ng.")
Msg2SubWorld("<color=green>Thay m�t BQT c�m �n ��i hi�p <color=pink>"..GetName().."<color=green> �� �ng h� server b�ng c�ch mua m�t nh�t k� 1 th�ng.")
end


function MuaGHVV()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 50) then -- gia xu
		Talk(1,"","C�n 50 Ti�n ��ng �� c� th� mua v�t ph�m n�y c� th� gia h�n ���c m�i th� b� kh�a v�nh vi�n  trong game th�m 15 ng�y ��i hi�p kh�ng mang �� r�i xin truy c�p www.volamkiemthien.com xem t� l� n�p th� ..") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(50,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4388,1}, nCount=1,nExpiredTime=21600, nBindState=-2}, "test", 1);
Msg2SubWorld("<color=yellow>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
Msg2SubWorld("<color=green>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
Msg2SubWorld("<color=yellow>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
Msg2SubWorld("<color=green>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
Msg2SubWorld("<color=yellow>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
Msg2SubWorld("<color=green>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
Msg2SubWorld("<color=yellow>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
Msg2SubWorld("<color=green>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
Msg2SubWorld("<color=yellow>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
Msg2SubWorld("<color=green>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
Msg2SubWorld("<color=yellow>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
Msg2SubWorld("<color=green>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
Msg2SubWorld("<color=yellow>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
Msg2SubWorld("<color=green>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n HK c� th� gia h�n t�t c� c�c trang b� b� kh�a v�nh vi�n t�i NPC H� Tr� T�n Th�.")
end

function MuaGH()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 50) then -- gia xu
		Talk(1,"","C�n 50 Ti�n ��ng �� gia h�n v�t ph�m c�n gia h�n th�m 30 ng�y..") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(50,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4309,1}, nCount=1,nExpiredTime=43200, nBindState=-2}, "test", 1);
Msg2SubWorld("<color=green>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n thu�t c� th� gia h�n ���c v�n v�t tr�n ��i")
Msg2SubWorld("<color=green>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n thu�t c� th� gia h�n ���c v�n v�t tr�n ��i")
Msg2SubWorld("<color=green>��i hi�p <color=pink>"..GetName().."<color=green> mua th�nh c�ng 1 gia h�n thu�t c� th� gia h�n ���c v�n v�t tr�n ��i")
end

function MenuFree()		
local szTitle = "��y l� giao di�n c�c ch�c n�ng tr� gi�p cho c�c ��ng ��o";
local tbOpt = 
{
--{"Chuy�n M�n Ph�i + L�y Skill + Chuy�n Gi�i T�nh", ChuyenPhaiFree},
--{"T�y T�y + ��i M�u + Gi�m PK",TayTuyFree},
--{"L�p Bang H�i - ��i T�n Game", Danhsachlapbang},
--{"M� R�ng T�t C� C�c R��ng", MoRuongFree},
--{"��i Ngo�i H�nh Trang B�", DoiNgoaiTrang},
{"Tho�t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end

function danhvonglanhdao()
AddRepute(100000)
AddLeadExp(20000000)
end

function DoiNgoaiTrang()
tbFeatureNpc:Dialog()
end

function Danhsachlapbang()
	local tbOpt =
	{
                                                                                                                                                                     {"L�p Bang H�i.", dmcreattongtest},
                                                                                                                                                                     {"��i T�n Nh�n V�t 30xu", DoiTenNV},
		{"K�t th�c ��i tho�i."},
	}
	CreateNewSayEx("<npc>Ng��i quy�t mu�n t�y t�y?", tbOpt)
end


function ChuyenPhaiFree()
	local tbOpt =
	{
                                            --{"Chuy�n M�n Ph�i T�i ��y", MenuChuyen},
                                            {"Nh�n L�i Skill Khi B� Thi�u", addskill},
                                           {"Nh�n Skill Bug + B�a + B�y.", bkall},
                                            {"Nh�n L�i Skill Khinh C�ng.", skillKC},
                                            {"Chuy�n Gi�i T�nh", chuyen_gt},
                                     --       {"T�ng �i�m ti�m n�ng.", add_prop},
		{"K�t th�c ��i tho�i ",},
	}
	CreateNewSayEx("<npc>Mu�n chuy�n ph�i ph�i c� T�n V�t M�n Ph�i giao n�p ch��ng m�n<enter>Chuy�n ph�i n�u m�t skill th� c� ��n g�p ta m� nh�n l�i.", tbOpt)
end


function TayTuyFree()
	local tbOpt =
	{
                                                         {"��i M�u.", trangthai},
                                                        {"X�a PK", sachgiampk},
		{"T�y k� n�ng", clear_skill},
		{"T�y ti�m n�ng", clear_prop},
		{"K�t th�c ��i tho�i."},
	}
	CreateNewSayEx("<npc>Ng��i quy�t mu�n t�y t�y?", tbOpt)
end


function trangthai()
	local tbOpt =
	{
		{"Ch�nh ph�i - M�u V�ng", mauvang},
		{"Trung l�p - M�u Xanh", mauxanh},
		{"T� ph�i - M�u T�m", mautim},
		{"S�t Th� - M�u �� xu�t x�", maudo},
		{"Tho�t/0"},
	}
	CreateNewSayEx("<npc>Xin Ch�n M�u", tbOpt)
end
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)		
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)		
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)		
end

function sachgiampk()
if (GetPK() == 0) then 
Say("Ng�i tr��c m�t PK tr� gi� �� v� 0 li�u , kh�ng c�n s� d�ng n�a tri�u ��nh x� s�ch . ", 0); 
Msg2Player("Ng�i tr��c m�t PK tr� gi� �� v� 0 li�u , kh�ng c�n s� d�ng n�a tri�u ��nh x� s�ch . "); 
return
end; 
SetPK(0); 
Say("Ng�i s� d�ng <color=yellow> tri�u ��nh x� s�ch <color> , ng��i PK tr� gi� b�y gi� l�m 0 li�u . ", 0); 
Msg2Player("Ng�i s� d�ng <color=yellow> tri�u ��nh x� s�ch <color> , ng��i PK tr� gi� b�y gi� l�m 0 li�u . "); 
if (GetWorldPos() == 208) then 
SetTask(96,100) 
end; 
end; 

function clear_skill()
	local tbOpt =
	{
		{"X�c nh�n", do_clear_skill},
		{"�� ta suy ngh� l�i."},
		{"Tr� v�", TayTuyFree},
	}
	CreateNewSayEx("<npc>Ng��i v�n quy�t mu�n t�y t�y?", tbOpt)
end

function do_clear_skill()
	local i = HaveMagic(210)		
	local j = HaveMagic(400)		
	local n = RollbackSkill()		
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			
	if (rollback_point + GetMagicPoint() < 0) then		
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			
	if (j ~= -1) then AddMagic(400, j) end			
	Msg2Player("T�y t�y th�nh c�ng! Ng��i ca "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
	KickOutSelf()
end

function clear_prop()
	local tbOpt =
	{
		{"X�c nh�n", do_clear_prop},
		{"�� ta suy ngh� l�i."},
		{"Tr� v�", TayTuyFree},
	}
	CreateNewSayEx("<npc>Ng��i v�n quy�t mu�n t�y t�y?", tbOpt)
end

function do_clear_prop()
	local base_str = {35,20,25,30,20}			
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end

function write_info()
	tbInputDialog:InputServer()
end


function addskill()
if check_faction() == 1 then
	Talk(1, "", "Ch�a gia nh�p m�n ph�i kh�ng th� nh�n Skill ���c.")
	return
end
mp = GetFaction()
if GetLevel() >= 120 then	
if GetTask(5007) == 0 then
if GetLastFactionNumber() == 0 then
AddMagic(318,20)
AddMagic(319,20)
AddMagic(321,20)
AddMagic(709,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�u L�m. ")
elseif GetLastFactionNumber() == 1 then
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�n V��ng. ")
elseif GetLastFactionNumber() == 2 then
AddMagic(302,20)
AddMagic(342,20)
AddMagic(339,20)
AddMagic(710,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a ���ng M�n. ")
elseif GetLastFactionNumber() == 3 then
AddMagic(353,20)
AddMagic(355,20)
AddMagic(711,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Ng� ��c.")
elseif GetLastFactionNumber() == 4 then
AddMagic(328,20)
AddMagic(380,20)
AddMagic(712,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Nga My.")
elseif GetLastFactionNumber() == 5 then
DelMagic(1223)
DelMagic(1224)
AddMagic(336,20)
AddMagic(337,20)
AddMagic(713,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Th�y Y�n.")
elseif GetLastFactionNumber() == 6 then
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a C�i Bang.")
elseif GetLastFactionNumber() == 7 then
AddMagic(362,20)
AddMagic(361,20)
AddMagic(715,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�n Nh�n.")
elseif GetLastFactionNumber() == 8 then
AddMagic(365,20)
AddMagic(368,20)
AddMagic(716,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a V� �ang.")
elseif GetLastFactionNumber() == 9 then
AddMagic(372,20)
AddMagic(375,20)
AddMagic(717,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a C�n L�n.")
elseif GetLastFactionNumber() == 10 then
AddMagic(1364,20)
AddMagic(1365,20)
AddMagic(1368,20)
AddMagic(1369,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Hoa S�n.")
end
else
Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a.")
end
else
Talk(1, "", "Luy�n ��n c�p 150 r�i h�y ��n t�m ta")
end
end

function bkall()
if check_faction() == 1 then
	Talk(1, "", "Ch�a gia nh�p m�n ph�i kh�ng th� nh�n Skill ���c.")
	return
end
mp = GetFaction()
if GetLevel() >= 120 then	
if GetTask(5007) == 0 then
if GetLastFactionNumber() == 0 then
AddMagic(318,20)
AddMagic(319,20)
AddMagic(321,20)
AddMagic(709,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�u L�m. ")
elseif GetLastFactionNumber() == 1 then
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�n V��ng. ")
elseif GetLastFactionNumber() == 2 and HaveMagic(351) <= 0 then
AddMagic(302,20)
AddMagic(342,20)
AddMagic(339,20)
AddMagic(710,20)
AddMagic(351,0)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� ���ng M�n. ")
elseif GetLastFactionNumber() == 3 and HaveMagic(390) <= 0 then
AddMagic(353,20)
AddMagic(355,20)
AddMagic(711,20)
AddMagic(390,0)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Ng� ��c.")
elseif GetLastFactionNumber() == 4 and HaveMagic(332) <= 0 then
AddMagic(328,20)
AddMagic(380,20)
AddMagic(712,20)
AddMagic(332,0)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Nga My.")
elseif GetLastFactionNumber() == 5 then
DelMagic(1223)
DelMagic(1224)
AddMagic(336,20)
AddMagic(337,20)
AddMagic(713,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Th�y Y�n.")
elseif GetLastFactionNumber() == 6 then
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a C�i Bang.")
elseif GetLastFactionNumber() == 7 and HaveMagic(391) <= 0 then
AddMagic(362,20)
AddMagic(361,20)
AddMagic(715,20)
AddMagic(391,0)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Thi�n Nh�n.")
elseif GetLastFactionNumber() == 8 then
AddMagic(365,20)
AddMagic(368,20)
AddMagic(716,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a V� �ang.")
elseif GetLastFactionNumber() == 9 and HaveMagic(394) <= 0 then
AddMagic(372,20)
AddMagic(375,20)
AddMagic(717,20)
AddMagic(394,0)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a C�n L�n.")
elseif GetLastFactionNumber() == 10 then
AddMagic(1364,20)
AddMagic(1365,20)
AddMagic(1368,20)
AddMagic(1369,20)
AddMagic(210, 1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� c�a Hoa S�n.")
end
else
Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a.")
end
else
Talk(1, "", "Luy�n ��n c�p 150 r�i h�y ��n t�m ta")
end
end



function chuyen_gt()
	local szTitle = "<npc><color=Pink>Nam<color> => Nga My ho�c Th�y Y�n <color=Green>N� <color> => Thi�u L�m ho�c Thi�n V��ng<enter> Sau khi gia nh�p m�n ph�i c� th� ��n g�p ta �� ��i gi�i t�nh "
	local tbOpt =
	{
		{"Chuy�n Nam Th�nh N�", NamNu},
		{"Chuy�n N� Th�nh Nam", NuNam},
		{"Tho�t/no"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NamNu()
		--if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			--return Say("Mu�n ��i gi�i t�nh c�n ph�i c��i b� h�t trang b� tr�n ng��i .",0);

		--end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> v�n ch�a gia nh�p m�n ph�i ?")
return end
if GetSex() == 1 then
Talk(1, "", "<color=green>"..myplayersex().."<color> �ang l� <color=red>G�i ��p<color> m�?\n C� ph�i "..myplayersex().." thu�c th� gi�i th� 3 kh�ng?")
else
SetSex(1) ---nu 1
KickOutSelf()
Msg2SubWorld("<color=cyan>Ch�c m�ng nam ��i hi�p <color=green>"..GetName().."<color=cyan> chuy�n ��i gi�i t�nh th�nh c�ng th�nh N� Giai Nh�n")
end
end

function NuNam()
		--if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			--return Say("Mu�n ��i gi�i t�nh c�n ph�i c��i b� h�t trang b� tr�n ng��i .",0);

		--end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> v�n ch�a gia nh�p m�n ph�i ?")
return end
if GetSex() == 0 then
Talk(1, "", "<color=green>"..myplayersex().."<color> �ang l� <color=red>Trai Xinh<color> m�?\n C� ph�i "..myplayersex().." thu�c th� gi�i th� 3 kh�ng?")
else
SetSex(0)---nam 0
KickOutSelf()
Msg2SubWorld("<color=cyan>Ch�c m�ng n� ��i hi�p <color=green>"..GetName().."<color=cyan> chuy�n ��i gi�i t�nh th�nh c�ng th�nh Nam M� Nh�n")
end
end


function MenuChuyen()
	local tbOpt =
	{
                                            {"V�o Chuy�n M�n Ph�i Free", MenuChuyen2},
                                            {"Nh�n L�i Skill Khi B� Thi�u", addskill},
                                            {"Nh�n Skill Bug + B�a + B�y.", bkall},
                                            {"Nh�n L�i Skill Khinh C�ng.", skillKC},
                                            {"Chuy�n Gi�i T�nh", chuyen_gt},
                                     --       {"T�ng �i�m ti�m n�ng.", add_prop},
		{"K�t th�c ��i tho�i ",},
	}
	CreateNewSayEx("<npc>Mu�n chuy�n ph�i ph�i c� T�n V�t M�n Ph�i giao n�p ch��ng m�n<enter>Chuy�n ph�i n�u m�t skill th� c� ��n g�p ta m� nh�n l�i.", tbOpt)
end

function MenuChuyen2()
ChuyenPhaiMenu()
end

-------------------------------------- KET THUC -------------------------------------------
function OnCancel()
end

--------------------------------------NGUYEN KHAI-------------------------------------------

function HoTroTanThuMoi()
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
		if GetLevel() >= 199 then
			return Say("<color=cyan>Ch� nh�ng ng��i ch�i m�i t�o m�i nh�n c�p ���c t� ta !")
		end
		if GetLevel() < 199 then
		level_up_199()
		end

end

function level_up_199()
	local nCurLevel = GetLevel()
	if nCurLevel >= 199 then
			Talk(1, "", "Ng��i �� ��t v��t c�p 199 r�i.")
	return
	end

	local nAddLevel = 199 - nCurLevel
	ST_LevelUp(nAddLevel)
AddRepute(100000)
AddLeadExp(20000000)
choose_faction()
Msg2SubWorld(" <color=green>"..GetName().."<color=cyan> T�o nh�n v�t m�i th�nh c�ng.")
--Msg2SubWorld("<color=pink>�i�u ch�nh gi� b�n Nhang c�n 3xu v� s� kh�ng thay ��i anh em l�u �.")
end





function MoRuongFree()
if CheckStoreBoxState(1) == 1 then
Talk(1, "", "Ng��i �� m� xong h�t r��ng r�i.")
return
end
OpenStoreBox(1)
OpenStoreBox(2)
OpenStoreBox(3)
SaveNow()
Talk(1,"","M� th�nh c�ng t�t c� r��ng ch�a ��.") 
end



function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function choose_faction()
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	CreateNewSayEx("<npc>Xin m�i l�a ch�n ph�i.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<color=cyan>C� Ch�c Ch�n Ch�n Ph�i  <color=pink>%s<color>", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"B�t ��u V�o M�n Ph�i", do_set_faction, {nIndex}},
		{"Cho Ta Ch�n L�i Ph�i",  choose_faction},

	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", %tbFaction[nIndex].nShortFaction, 0)
	for i=1, getn(%tbFaction[nIndex].tbSkill) do
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	AddMagic(210, 1)
		SetCurCamp(4)
		SetCamp(4)
AddRepute(10000)
AddLeadExp(20000000)
	Talk(1, "FixAuToKid", format(" <color=cyan><pic=65>Ch�c M�ng b�n �� gia nh�p<color=pink> %s", %tbFaction[nIndex].szShowName))
Msg2SubWorld("<pic=6>Ch�o M�ng  <color=green>"..GetName().."<color=yellow> Ch�nh th�c tham gia c�ng ae server..")
end

function FixAuToKid()
checkphai = GetFaction()
if GetLastFactionNumber() == 0 then
SetRank(72)
elseif GetLastFactionNumber() == 1 then
SetRank(69)
elseif GetLastFactionNumber() == 2 then
SetRank(76)
elseif GetLastFactionNumber() == 3 then
SetRank(80)
elseif GetLastFactionNumber() == 4  then
SetRank(63)
elseif GetLastFactionNumber() == 5 then
SetRank(67)
elseif GetLastFactionNumber() == 6 then
SetRank(78)
elseif GetLastFactionNumber() == 7 then
SetRank(81)
elseif GetLastFactionNumber() == 8 then
SetRank(73)
elseif GetLastFactionNumber() == 9 then
SetRank(75)
end
end

function show_faction()
	if check_faction() == 1 then
		Talk(1, "", "Gia nh�p m�n ph�i m�i ca th� nh�n trang b�")
		return
	end
	local nFactionId = GetLastFactionNumber() + 1
	local tbOpt = {}
	local tbSubFaction = %tbFaction[nFactionId].tbEquip
	for i=1, getn(tbSubFaction) do
		tinsert(tbOpt, {tbSubFaction[i].szFaction, show_equip, {nFactionId, i}})
	end
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	CreateNewSayEx("<npc>Xin m�i l�a ch�n ph�i.", tbOpt)
end




function dmcreattongtest()
local strTongName = GetTongName()
local tszTitle = "Ch�o m�ng ��i hi�p �� tham gia h� th�ng <color=yellow>Bang H�i<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,2,"T�o bang h�i/dmcreateit","K�t th�c ��i tho�i")
else
	Say(tszTitle,0)
end	
end


function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("Ti�p t�c t�o bang." ,2,"T�o Bang/Direct_CreateTong","�� ta suy ngh� l�it/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
	Say("��i hi�p: Ng��i c� mu�n l�p bang?." ,2,"Kh�ng th�nh v�n �� ta mu�n l�p bang ngay! /create_pay_yes","�� ta suy ngh� l�i. /0")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ng��i l�p bang h�i ph�i c� nh�c v��ng ki�m ch�ng n�o �� h�y quay l�i g�p ta.")
		else
			Talk(6,"", "Ng��i l�p bang h�i ph�i c� nh�c v��ng ki�m ch�ng n�o �� h�y quay l�i g�p ta.")
		end
	end
end


function create_pay_yes()

	if (GetCash() >= 0) then
		Pay(0)				-- �շ�
		DelItem(195)			-- ɾ��ϵ�ص���
		SetTask(99,1)				-- �����ϱ�ǣ�ݬʱ����Ϊ�����еĵ�һ���ˣ����������ˣ���
		Direct_CreateTong()		
		
	else
		Talk(1,"", "Mu�n l�p bang th� ph�i c� ti�n ng��i mau mang ti�n l�i ��y r�i h�y n�i chuy�n. ")	
end
end


function Direct_CreateTong()
	CreateTong(1)
Msg2SubWorld("��i hi�p <color=green>"..GetName().." <color=pink>�� t�o d�ng bang h�i m�i th�nh c�ng")				
end


----------------------------DOI TEN------------------------
function DoiTenNV()
	Say("Ng��i t�m ta c� vi�c g�?",3,
		"Mua ��i t�n nh�n v�t 30 Ti�n ��ng/dangkydoiten",
		"��t l�i t�n cho nh�n v�t/about_rename_role",
		"Nh�n ti�n gh� qua th�i/cancel")
end
function dangkydoiten()
	if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then
		Say("B�n v�n c�n 1 l�n ��i t�n nh�n v�t. H�y ch�n '��t l�i t�n cho nh�n v�t' �� ��i t�n nh�n v�t",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end

	Say("M�i l�n ��i t�n nh�n v�t c�n <color=red>30 Ti�n ��ng<color>, ng��i chu�n b� xong ch�a?",
		2,
		"Ta �� chu�n b� xong/#buy_addibox_yes(10)",
		"Khi n�o �� ti�n ta s� quay l�i sau!/cancel");
end
function buy_addibox_yes(nNedCount)
	if (nNedCount < 1 or nNedCount == nil) then
		print("Fail!!!!");
		return
	end;

	local nCount = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount < 30) then
		Say("<color=yellow>Kh�ch quan ch�a �� 30 ti�n! Khi n�o c� �� ti�n h�y quay l�i.",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end
	ConsumeEquiproomItem(30, 4, 417, 1, 1)
	value = SetBit(value, 1, 1)
	SetTask(TASKVALUE_BLEND, value)
	SaveNow();
	Talk(1, "", "<color=yellow>B�n nh�n ���c 1 l�n ��i t�n nh�n v�t. H�y ch�n '��t l�i t�n cho nh�n v�t' �� ��i t�n nh�n v�t");
end
function about_rename_role()
	local strInfo = "Ch�o b�n! V� t�n nh�n v�t c�a b�n v� ng��i ch�i kh�c gi�ng nhau, cho n�n h� th�ng �� gi�p b�n ��i t�n, b�n c� th� s�a t�n nh�n v�t c�a b�n tr��c ��y, c� th� ki�m tra xem t�n �� c� d�ng ���c kh�ng. Ch� �! B�n ch� c� 1 c� h�i duy nh�t �� ��i t�n, xin h�y c�n th�n t�ng b��c.";
	func_online_rename_role(strInfo);
end

function func_online_rename_role(strInfo)
	if (check_renamerole() == 1) then
		Say(strInfo,
			3,
			"Ki�m tra t�n nh�n v�t s� d�ng ���c kh�ng/query_rolename",
			"Thay ��i t�n nh�n v�t c�a m�nh/change_rolename",
			"�� l�n sau ta thay ��i v�y/cancel");
	else
		deny()
	end
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "Xin nh�p t�n nh�n v�t c�n t�m hi�u");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end
function change_rolename()
	Say("C�c b��c c� th�: R�i Bang H�i n�u c�, ��i tho�i v�i NPC, nh�p t�n nh�n v�t c�n thay ��i v�o, b�n s� t� ��ng r�i m�ng. Sau 3 ph�t ��ng nh�p l�i, n�u t�n nh�n v�t �� thay ��i th� ���c xem ��i t�n th�nh c�ng; n�u ch�a thay ��i, m�i b�n th�c hi�n l�i c�c b��c tr�n. N�u xu�t hi�n m�t s� hi�n t��ng l� xin li�n h� GM gi�i quy�t.",
		2,
		"B�t ��u thay ��i t�n nh�n v�t/change_rolename2",
		"�� ta suy ngh� l�i/cancel")
end
function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>��i hi�p �� c� Bang H�i kh�ng th� ti�n h�nh thao t�c n�y!<color>")
		return
	end
	AskClientForString("on_change_rolename", "", 1, 20, "Xin nh�p t�n nh�n v�t m�i v�o");
end
function on_change_rolename(new_name)
--Msg2SubWorld( "��i hi�p <color=yellow>"..GetName().."<color> �� ��i t�n th�nh <color=green>"..new_name.."<color>")
	if (check_renamerole() == 1) then
		if (GetName() == new_name) then
			Talk(1, "", "B�n mu�n ��i t�n g�?")
		else
			RenameRole(new_name);
			
		end
	end
end
function deny()
	Say("<color=yellow>Xin l�i! B�n ph�i mua l�n ��i t�n nh�n v�t r�i h�y ch�n ch�c n�ng n�y!<color>",
		1,
		"Bi�t r�i!/cancel")
end






--=====================MENU TRANGBI===============

function MenuTrangBi()
	tbOpt =
	{
		"<dec><npc>�y truy c�p <color=green>www.volamkiemthien.com <color>�� xem chi ti�t nh�.",
                                                                                                                                                                     "��i Huy Ch��ng l�y 1 set ABHM/huychuongtoAB",
                                                                                                                                                                     "��i Huy Ch��ng l�y Vinh Di�u - Tinh Chu�n/VDTC",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function huychuongtoAB()
	tbOpt =
	{
		"<dec><npc>�y truy c�p <color=green>www.volamkiemthien.com <color>�� xem chi ti�t nh�.",
                                                                                                                                                                     "C�c Ph�m d�y chuy�n ABHM/DCAB",
		"C�c Ph�m ng�c b�i ABHM/NBAN",
		"C�c Ph�m nh�n h�a ABHM/NHAB",
		"C�c Ph�m nh�n th�y ABHM/NTAB",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end


function VDTC()
	tbOpt =
	{
		"<dec><npc>�y truy c�p <color=green>www.volamkiemthien.com <color>�� xem chi ti�t nh�.Ch� c�n ai s� h�u �� 2 m�n n�y s� k�ch ho�t thu�c t�nh �n t�t c� trang b� c�n l�i tr�n ng��i",
              "Vinh Di�u Chi Y (30 ngay)/VDchiy",
		"Tinh Chu�n Chi Ngoa (30 ngay)/TCchingoa",
              "Vinh Di�u Chi Y (vinh vien)/VDchiyvv",
		"Tinh Chu�n Chi Ngoa (vinhvien)/TCchingoavv",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function DCAB()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� ��i Huy Ch��ng T�ch L�y l�y <color=gold><%s><color=green><enter><color=yellow>< T�i NPC H� Tr� T�n Th� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch��ng T�ch L�y",tbProp={4,1496,1,1},nCount=500},
				{szName="T� Th�y Tinh",tbProp={4,239,1,1},nCount=1},
				{szName="L�c Th�y Tinh",tbProp={4,240,1,1},nCount=1},	
				{szName="Lam Th�y Tinh",tbProp={4,238,1,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,424},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function NBAN()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� ��i Huy Ch��ng T�ch L�y l�y <color=gold><%s><color=green><enter><color=yellow>< T�i NPC H� Tr� T�n Th� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch��ng T�ch L�y",tbProp={4,1496,1,1},nCount=600},
				{szName="T� Th�y Tinh",tbProp={4,239,1,1},nCount=1},
				{szName="L�c Th�y Tinh",tbProp={4,240,1,1},nCount=1},	
				{szName="Lam Th�y Tinh",tbProp={4,238,1,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,426},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function NHAB()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� ��i Huy Ch��ng T�ch L�y l�y <color=gold><%s><color=green><enter><color=yellow>< T�i NPC H� Tr� T�n Th� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch��ng T�ch L�y",tbProp={4,1496,1,1},nCount=400},
				{szName="T� Th�y Tinh",tbProp={4,239,1,1},nCount=1},
				{szName="L�c Th�y Tinh",tbProp={4,240,1,1},nCount=1},	
				{szName="Lam Th�y Tinh",tbProp={4,238,1,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,427},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function NTAB()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� ��i Huy Ch��ng T�ch L�y l�y <color=gold><%s><color=green><enter><color=yellow>< T�i NPC H� Tr� T�n Th� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch��ng T�ch L�y",tbProp={4,1496,1,1},nCount=400},
				{szName="T� Th�y Tinh",tbProp={4,239,1,1},nCount=1},
				{szName="L�c Th�y Tinh",tbProp={4,240,1,1},nCount=1},	
				{szName="Lam Th�y Tinh",tbProp={4,238,1,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,425},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end




function VDchiy()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� ��i Huy Ch��ng T�ch L�y l�y <color=gold><%s><color=green><enter><color=yellow>< T�i NPC H� Tr� T�n Th� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch��ng T�ch L�y",tbProp={4,1496,1,1},nCount=1000},
				{szName="T� Th�y Tinh",tbProp={4,239,1,1},nCount=5},
				{szName="L�c Th�y Tinh",tbProp={4,240,1,1},nCount=5},	
				{szName="Lam Th�y Tinh",tbProp={4,238,1,1},nCount=5},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,214},nQuality = 1,nCount = 1,nExpiredTime=43200,CallBack= _Message},
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function TCchingoa()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� ��i Huy Ch��ng T�ch L�y l�y <color=gold><%s><color=green><enter><color=yellow>< T�i NPC H� Tr� T�n Th� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch��ng T�ch L�y",tbProp={4,1496,1,1},nCount=800},
				{szName="T� Th�y Tinh",tbProp={4,239,1,1},nCount=5},
				{szName="L�c Th�y Tinh",tbProp={4,240,1,1},nCount=5},	
				{szName="Lam Th�y Tinh",tbProp={4,238,1,1},nCount=5},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,215},nQuality = 1,nCount = 1,nExpiredTime=43200,CallBack= _Message},
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end




function VDchiyvv()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� ��i Huy Ch��ng T�ch L�y l�y <color=gold><%s><color=green><enter><color=yellow>< T�i NPC H� Tr� T�n Th� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch��ng T�ch L�y",tbProp={4,1496,1,1},nCount=10000},
				{szName="T� Th�y Tinh",tbProp={4,239,1,1},nCount=10},
				{szName="L�c Th�y Tinh",tbProp={4,240,1,1},nCount=10},	
				{szName="Lam Th�y Tinh",tbProp={4,238,1,1},nCount=10},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,214},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function TCchingoavv()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �� ��i Huy Ch��ng T�ch L�y l�y <color=gold><%s><color=green><enter><color=yellow>< T�i NPC H� Tr� T�n Th� ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch��ng T�ch L�y",tbProp={4,1496,1,1},nCount=8000},
				{szName="T� Th�y Tinh",tbProp={4,239,1,1},nCount=10},
				{szName="L�c Th�y Tinh",tbProp={4,240,1,1},nCount=10},	
				{szName="Lam Th�y Tinh",tbProp={4,238,1,1},nCount=10},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,215},nQuality = 1,nCount = 1,nExpiredTime=43200,CallBack= _Message},
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function hkmpvip1() 
Say("Xin m�i ch�n trang b�",7,"Nga Mi/hkmpnm","Th�y Y�n/hkmpty","���ng M�n/hkmpdm","Ng� ��c/hkmpnd","Thi�n V��ng/hkmptv","Trang Sau/hkmpvip2","K�t th�c ��i tho�i/no") 
end

function hkmpvip2() 
Say("Xin m�i ch�n trang b�",7,"Thi�u L�m/hkmptl","V� �ang/hkmpvd","C�n L�n/hkmpcl","Thi�n Nh�n/hkmptn","C�i Bang/hkmpcb","Trang Tr��c/hkmpvip1","K�t th�c ��i tho�i/no") 
end

function hkmpnm()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Nga My Ch��ng", hkvipnmc}, 
                {"Nga My Ki�m", hkvipnmk}, 
               -- {"Nga My Buff", hkvipnmbuff}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
        return 1 
end 

function hkvipnmc()
for i =1,1 do
AddGoldItem(0,39)  
end
end


function hkvipnmk()
for i =1,1 do 
AddGoldItem(0,31)  
end
end

function hkvipnmbuff() 
AddGoldItem(0,42)  
end

function hkmpty()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Th�y Y�n �ao", hkviptyd}, 
                {"Th�y Y�n Ch��ng", hkviptyc}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptyd()
for i =1,1 do 
AddGoldItem(0,46)  
end
end

function hkviptyc()
for i =1,1 do 
AddGoldItem(0,51)  
end
end

function hkmpdm()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
        local tbOpt= 
               { 
                {"���ng M�n N�", hkvipbv}, 
                            {"���ng M�n Phi Ti�u", hkvippt}, 
                {"���ng M�n B�ng H�n", hkvippd}, 
                               -- {"���ng M�n B�y", hkvipbay}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipbv()
for i =1,1 do 
AddGoldItem(0,76)  
end
end


function hkvippt() 
for i =1,1 do
AddGoldItem(0,81)  
end
end


function hkvippd() 
for i =1,1 do
AddGoldItem(0,71)  
end
end


function hkvipbay() 
AddGoldItem(0,87)  
end


function hkmpnd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Ng� ��c Ch��ng", hkvipndc}, 
                            {"Ng� ��c �ao", hkvipndd}, 
               -- {"Ng� ��c B�a", hkvipndb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipndc()
for i =1,1 do 
AddGoldItem(0,56)  
end
end

function hkvipndd() 
AddGoldItem(0,61)  
end

function hkvipndb()
for i =1,1 do 
AddGoldItem(0,67)  
end
end

function hkmptv()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"Thi�n V��ng Th��ng", hkviptvt}, 
                            {"Thi�n V��ng Ch�y", hkviptvc}, 
                {"Thi�n V��ng �ao", hkviptvd}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptvt()
for i =1,1 do 
AddGoldItem(0,21)  
end
end

function hkviptvc() 
for i =1,1 do
AddGoldItem(0,16)  
end
end

function hkviptvd() 
for i =1,1 do
AddGoldItem(0,26)  
end
end

function hkmptl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Thi�u L�m �ao", hkviptld}, 
                            {"Thi�u L�m B�ng", hkviptlb}, 
                {"Thi�u L�m Quy�n", hkviptlq}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptld() 
for i =1,1 do
AddGoldItem(0,11)  
end
end

function hkviptlb() 
for i =1,1 do
AddGoldItem(0,6)  
end
end

function hkviptlq() 
for i =1,1 do
AddGoldItem(0,2)  
end
end

function hkmpvd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"V� �ang Ch��ng", hkvipvdc}, 
                            {"V� �ang Ki�m", hkvipvdk}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipvdc() 
for i =1,1 do
AddGoldItem(0,116)  
end
end

function hkvipvdk() 
for i =1,1 do
AddGoldItem(0,121)  
end
end

function hkmpcl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"C�n L�n �ao", hkvipcld}, 
                            {"C�n L�n Ch��ng", hkvipclc}, 
                {"C�n L�n B�a", hkvipclb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcld() 
for i =1,1 do
AddGoldItem(0,126)  
end
end

function hkvipclc() 
for i =1,1 do
AddGoldItem(0,131)  
end
end

function hkvipclb() 
for i =1,1 do
AddGoldItem(0,136)  
end
end

function hkmptn()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Thi�n Nh�n Th��ng", hkviptnt}, 
                            {"Thi�n Nh�n Ch��ng", hkviptnd}, 
                --{"Thi�n Nh�n B�a", hkviptnb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptnt() 
for i =1,1 do
AddGoldItem(0,101)  
end
end

function hkviptnd() 
for i =1,1 do
AddGoldItem(0,540)  
end
end

function hkviptnb() 
for i =1,1 do
AddGoldItem(0,107)  
end
end

function hkmpcb()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"C�i Bang Ch��ng", hkvipcbc}, 
                            {"C�i Bang B�ng", hkvipcbb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcbc() 
for i =1,1 do
AddGoldItem(0,94)
end
end

function hkvipcbb() 
for i =1,1 do
AddGoldItem(0,96)  
end
end

