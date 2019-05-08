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
		szShowName = "ThiÕu L©m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709},
	},
	[2] =
	{
		szShowName = "Thiªn V­¬ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708},
	},
	[3] =
	{
		szShowName = "§­êng M«n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710},
	},
	[4] =
	{
		szShowName = "Ngò §éc Gi¸o",
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
		szShowName = "Thóy Yªn",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713},
	},
	[7] =
	{
		szShowName = "C¸i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714},
	},
	[8] =
	{
		szShowName = "Thiªn NhÉn Gi¸o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715},
	},
	[9] =
	{
		szShowName = "Vâ §ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716},
	},
	[10] =
	{
		szShowName = "C«n L«n",
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
local szTitle = "PhÇn quµ t©n thñ giµnh cho ng­¬i rÊt phong phó, h·y tr¶i nghiÖm nh÷ng tÝnh n¨ng hÊp dÉn, ®¾m m×nh vµo mét thÕ giíi vâ l©m hoµn toµn míi l¹ cïng c¸c game thñ b¹n nhÐ!";
local tbOpt = 
{
--{"ChuyÓn §æi Skill 9x Thóy Yªn",thuyyendi},
--{"Mua S¸ch Gia H¹n Trang BÞ Thªm 30 Ngµy",Donate},
--{"Cöa Hµng §æi Huy Ch­¬ng LÊy Trang BÞ", MenuTrangBi},
--{"Mua NhÊt Kû Cµn Kh«n + 1 KNVC",Donate},
--{"NhËp Ph¸i NhËn Max CÊp",HoTroTanThuMoi},
{"ChuyÓn §æi M«n Ph¸i MiÔn PhÝ", MenuChuyen},
{"TÈy Tñy + Xãa PK + §æi Mµu ",TayTuyFree},
{"LËp Bang Héi - §æi Tªn NV", Danhsachlapbang},
--{"NhËn Danh Väng L·nh §¹o", danhvonglanhdao},
{"Më Réng HÕt Hµnh Trang", MoRuongFree},
{"§æi Ngo¹i H×nh Trang BÞ", DoiNgoaiTrang},
--{"NhËn LÖnh Bµi T©n Thñ - TTP", nhanttp},
--{"Mua Ch×a Khãa HK",MuaCK},
--{"NhËn Vò KhÝ Cùc PhÈm", hkmpvip1},
{"Tho¸t",OnCancel},
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
Talk(1,"","ChuyÓn ®æi skill thóy yªn sang ®uæi thµnh c«ng .") -- go
return
end
if GetFaction() == "cuiyan" and HaveMagic(1223) >= 0 and HaveMagic(1224) >= 0 then
DelMagic(1223)
DelMagic(1224)
AddMagic(336,20)
AddMagic(337,20)
Talk(1,"","ChuyÓn ®æi skill thóy yªn sang kh«ng ®uæi thµnh c«ng.") -- go
return
end
Talk(1,"","Xin lçi b¹n kh«ng ph¶i thóy yªn hoÆc trªn ng­êi b¹n kh«ng cã ®ñ 2 skill 9x cña thóy yªn nªn kh«ng thÓ chuyÓn ®æi..") -- go
return
end


function nhanttp()
tbAwardTemplet:GiveAwardByList({{szName="§å nghÒ",tbProp={6,1,1266,1,0},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§å nghÒ",tbProp={6,1,438,1,0},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§å nghÒ",tbProp={6,1,4360,1,0},nCount=1,nBindState=-2},}, "test", 1);
end


function Donate()		
local szTitle = "<npc>S¸ch gia h¹n lµ s¸ch cã thÓ gia h¹n bÊt cø thø g× nÕu nã cã h¹n sö dông sau khi gia h¹n th× vËt phÈm ®ã sÏ cã h¹n sö dông thªm 30 ngµy n÷a.!";
local tbOpt = 
{
--{"Mua nhÊt kû +1 KNVC (100xu)",duytriserver},
{"Mua gia h¹n ®å (50xu)",MuaGH},
--{"Mua gia h¹n ®å bÞ khãa vÜnh viÔn (50xu)",MuaGHVV},
{"T¹i h¹ kh«ng cÇn l¾m",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end

function duytriserver()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","Xin lçi mét nhÊt kü cµng kh«n cÇn cã.<color=red> 100 TiÒn ®ång ®¹i hiÖp kh«ng mang ®ñ råi xin liªn hÖ admin t¹i fanpage FB cung cÊp m· sè thÎ cµo viettel ®Ó ®æi lÊy xu..") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(100,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4357,1,0,0,0}, nCount=1, nBindState=-2}, "test", 1);
Msg2SubWorld("<color=green>Thay mÆt BQT c¶m ¬n ®¹i hiÖp <color=pink>"..GetName().."<color=green> ®· ñng hé server b»ng c¸ch mua mét nhÊt kü 1 th¸ng.")
Msg2SubWorld("<color=green>Thay mÆt BQT c¶m ¬n ®¹i hiÖp <color=pink>"..GetName().."<color=green> ®· ñng hé server b»ng c¸ch mua mét nhÊt kü 1 th¸ng.")
Msg2SubWorld("<color=green>Thay mÆt BQT c¶m ¬n ®¹i hiÖp <color=pink>"..GetName().."<color=green> ®· ñng hé server b»ng c¸ch mua mét nhÊt kü 1 th¸ng.")
Msg2SubWorld("<color=green>Thay mÆt BQT c¶m ¬n ®¹i hiÖp <color=pink>"..GetName().."<color=green> ®· ñng hé server b»ng c¸ch mua mét nhÊt kü 1 th¸ng.")
Msg2SubWorld("<color=green>Thay mÆt BQT c¶m ¬n ®¹i hiÖp <color=pink>"..GetName().."<color=green> ®· ñng hé server b»ng c¸ch mua mét nhÊt kü 1 th¸ng.")
Msg2SubWorld("<color=green>Thay mÆt BQT c¶m ¬n ®¹i hiÖp <color=pink>"..GetName().."<color=green> ®· ñng hé server b»ng c¸ch mua mét nhÊt kü 1 th¸ng.")
Msg2SubWorld("<color=green>Thay mÆt BQT c¶m ¬n ®¹i hiÖp <color=pink>"..GetName().."<color=green> ®· ñng hé server b»ng c¸ch mua mét nhÊt kü 1 th¸ng.")
Msg2SubWorld("<color=green>Thay mÆt BQT c¶m ¬n ®¹i hiÖp <color=pink>"..GetName().."<color=green> ®· ñng hé server b»ng c¸ch mua mét nhÊt kü 1 th¸ng.")
Msg2SubWorld("<color=green>Thay mÆt BQT c¶m ¬n ®¹i hiÖp <color=pink>"..GetName().."<color=green> ®· ñng hé server b»ng c¸ch mua mét nhÊt kü 1 th¸ng.")
Msg2SubWorld("<color=green>Thay mÆt BQT c¶m ¬n ®¹i hiÖp <color=pink>"..GetName().."<color=green> ®· ñng hé server b»ng c¸ch mua mét nhÊt kü 1 th¸ng.")
end


function MuaGHVV()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 50) then -- gia xu
		Talk(1,"","CÇn 50 TiÒn ®ång ®Ó cã thÓ mua vËt phÈm nµy cã thÓ gia h¹n ®­îc mäi thø bÞ khãa vÜnh viÔn  trong game thªm 15 ngµy ®¹i hiÖp kh«ng mang ®ñ råi xin truy cËp www.volamkiemthien.com xem tØ lÖ n¹p thÎ ..") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(50,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4388,1}, nCount=1,nExpiredTime=21600, nBindState=-2}, "test", 1);
Msg2SubWorld("<color=yellow>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
Msg2SubWorld("<color=green>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
Msg2SubWorld("<color=yellow>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
Msg2SubWorld("<color=green>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
Msg2SubWorld("<color=yellow>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
Msg2SubWorld("<color=green>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
Msg2SubWorld("<color=yellow>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
Msg2SubWorld("<color=green>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
Msg2SubWorld("<color=yellow>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
Msg2SubWorld("<color=green>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
Msg2SubWorld("<color=yellow>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
Msg2SubWorld("<color=green>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
Msg2SubWorld("<color=yellow>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
Msg2SubWorld("<color=green>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n HK cã thÓ gia h¹n tÊt c¶ c¸c trang bÞ bÞ khãa vÜnh viÔn t¹i NPC Hç Trî T©n Thñ.")
end

function MuaGH()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 50) then -- gia xu
		Talk(1,"","CÇn 50 TiÒn ®ång ®Ó gia h¹n vËt phÈm cÇn gia h¹n thªm 30 ngµy..") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(50,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4309,1}, nCount=1,nExpiredTime=43200, nBindState=-2}, "test", 1);
Msg2SubWorld("<color=green>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n thuËt cã thÓ gia h¹n ®­îc v¹n vËt trªn ®êi")
Msg2SubWorld("<color=green>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n thuËt cã thÓ gia h¹n ®­îc v¹n vËt trªn ®êi")
Msg2SubWorld("<color=green>§¹i hiÖp <color=pink>"..GetName().."<color=green> mua thµnh c«ng 1 gia h¹n thuËt cã thÓ gia h¹n ®­îc v¹n vËt trªn ®êi")
end

function MenuFree()		
local szTitle = "§©y lµ giao diÖn c¸c chøc n¨ng trî gióp cho c¸c ®ång ®¹o";
local tbOpt = 
{
--{"ChuyÓn M«n Ph¸i + LÊy Skill + ChuyÓn Giíi TÝnh", ChuyenPhaiFree},
--{"TÈy Tñy + §æi Mµu + Gi¶m PK",TayTuyFree},
--{"LËp Bang Héi - §æi Tªn Game", Danhsachlapbang},
--{"Më Réng TÊt C¶ C¸c R­¬ng", MoRuongFree},
--{"§æi Ngo¹i H×nh Trang BÞ", DoiNgoaiTrang},
{"Tho¸t",OnCancel},
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
                                                                                                                                                                     {"LËp Bang Héi.", dmcreattongtest},
                                                                                                                                                                     {"§çi Tªn Nh©n VËt 30xu", DoiTenNV},
		{"KÕt thóc ®èi tho¹i."},
	}
	CreateNewSayEx("<npc>Ng­¬i quyÕt muèn tÈy tñy?", tbOpt)
end


function ChuyenPhaiFree()
	local tbOpt =
	{
                                            --{"ChuyÓn M«n Ph¸i T¹i §©y", MenuChuyen},
                                            {"NhËn L¹i Skill Khi BÞ ThiÕu", addskill},
                                           {"NhËn Skill Bug + Bïa + BÉy.", bkall},
                                            {"NhËn L¹i Skill Khinh C«ng.", skillKC},
                                            {"ChuyÓn Giíi TÝnh", chuyen_gt},
                                     --       {"T¨ng ®iÓm tiÒm n¨ng.", add_prop},
		{"KÕt thóc ®èi tho¹i ",},
	}
	CreateNewSayEx("<npc>Muèn chuyÓn ph¸i ph¶i cã TÝn VËt M«n Ph¸i giao nép ch­ëng m«n<enter>ChuyÓn ph¸i nÕu mÊt skill th× cø ®Õn gÆp ta mµ nhËn l¹i.", tbOpt)
end


function TayTuyFree()
	local tbOpt =
	{
                                                         {"§æi Mµu.", trangthai},
                                                        {"Xãa PK", sachgiampk},
		{"TÈy kü n¨ng", clear_skill},
		{"TÈy tiÒm n¨ng", clear_prop},
		{"KÕt thóc ®èi tho¹i."},
	}
	CreateNewSayEx("<npc>Ng­¬i quyÕt muèn tÈy tñy?", tbOpt)
end


function trangthai()
	local tbOpt =
	{
		{"ChÝnh ph¸i - Mµu Vµng", mauvang},
		{"Trung lËp - Mµu Xanh", mauxanh},
		{"Tµ ph¸i - Mµu TÝm", mautim},
		{"S¸t Thñ - Mµu ®á xuÊt x­", maudo},
		{"Tho¸t/0"},
	}
	CreateNewSayEx("<npc>Xin Chän Mµu", tbOpt)
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
Say("Ngµi tr­íc mÆt PK trÞ gi¸ ®· v× 0 liÔu , kh«ng cÇn sö dông n÷a triÒu ®×nh x¸ s¸ch . ", 0); 
Msg2Player("Ngµi tr­íc mÆt PK trÞ gi¸ ®· v× 0 liÔu , kh«ng cÇn sö dông n÷a triÒu ®×nh x¸ s¸ch . "); 
return
end; 
SetPK(0); 
Say("Ngµi sö dông <color=yellow> triÒu ®×nh x¸ s¸ch <color> , ng­¬i PK trÞ gi¸ b©y giê lµm 0 liÔu . ", 0); 
Msg2Player("Ngµi sö dông <color=yellow> triÒu ®×nh x¸ s¸ch <color> , ng­¬i PK trÞ gi¸ b©y giê lµm 0 liÔu . "); 
if (GetWorldPos() == 208) then 
SetTask(96,100) 
end; 
end; 

function clear_skill()
	local tbOpt =
	{
		{"X¸c nhËn", do_clear_skill},
		{"§Ó ta suy nghÜ l¹i."},
		{"Trë vÒ", TayTuyFree},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt muèn tÈy tñy?", tbOpt)
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
	Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i ca "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
	KickOutSelf()
end

function clear_prop()
	local tbOpt =
	{
		{"X¸c nhËn", do_clear_prop},
		{"§Ó ta suy nghÜ l¹i."},
		{"Trë vÒ", TayTuyFree},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt muèn tÈy tñy?", tbOpt)
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
	Talk(1, "", "Ch­a gia nhËp m«n ph¸i kh«ng thÓ nhËn Skill ®­îc.")
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
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña ThiÕu L©m. ")
elseif GetLastFactionNumber() == 1 then
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn V­¬ng. ")
elseif GetLastFactionNumber() == 2 then
AddMagic(302,20)
AddMagic(342,20)
AddMagic(339,20)
AddMagic(710,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña §­êng M«n. ")
elseif GetLastFactionNumber() == 3 then
AddMagic(353,20)
AddMagic(355,20)
AddMagic(711,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Ngò §éc.")
elseif GetLastFactionNumber() == 4 then
AddMagic(328,20)
AddMagic(380,20)
AddMagic(712,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Nga My.")
elseif GetLastFactionNumber() == 5 then
DelMagic(1223)
DelMagic(1224)
AddMagic(336,20)
AddMagic(337,20)
AddMagic(713,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thóy Yªn.")
elseif GetLastFactionNumber() == 6 then
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña C¸i Bang.")
elseif GetLastFactionNumber() == 7 then
AddMagic(362,20)
AddMagic(361,20)
AddMagic(715,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn NhÉn.")
elseif GetLastFactionNumber() == 8 then
AddMagic(365,20)
AddMagic(368,20)
AddMagic(716,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Vâ §ang.")
elseif GetLastFactionNumber() == 9 then
AddMagic(372,20)
AddMagic(375,20)
AddMagic(717,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña C«n L«n.")
elseif GetLastFactionNumber() == 10 then
AddMagic(1364,20)
AddMagic(1365,20)
AddMagic(1368,20)
AddMagic(1369,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Hoa S¬n.")
end
else
Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a.")
end
else
Talk(1, "", "LuyÖn ®Õn cÊp 150 råi h·y ®Õn t×m ta")
end
end

function bkall()
if check_faction() == 1 then
	Talk(1, "", "Ch­a gia nhËp m«n ph¸i kh«ng thÓ nhËn Skill ®­îc.")
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
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña ThiÕu L©m. ")
elseif GetLastFactionNumber() == 1 then
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn V­¬ng. ")
elseif GetLastFactionNumber() == 2 and HaveMagic(351) <= 0 then
AddMagic(302,20)
AddMagic(342,20)
AddMagic(339,20)
AddMagic(710,20)
AddMagic(351,0)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü §­êng M«n. ")
elseif GetLastFactionNumber() == 3 and HaveMagic(390) <= 0 then
AddMagic(353,20)
AddMagic(355,20)
AddMagic(711,20)
AddMagic(390,0)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Ngò §éc.")
elseif GetLastFactionNumber() == 4 and HaveMagic(332) <= 0 then
AddMagic(328,20)
AddMagic(380,20)
AddMagic(712,20)
AddMagic(332,0)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Nga My.")
elseif GetLastFactionNumber() == 5 then
DelMagic(1223)
DelMagic(1224)
AddMagic(336,20)
AddMagic(337,20)
AddMagic(713,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thóy Yªn.")
elseif GetLastFactionNumber() == 6 then
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña C¸i Bang.")
elseif GetLastFactionNumber() == 7 and HaveMagic(391) <= 0 then
AddMagic(362,20)
AddMagic(361,20)
AddMagic(715,20)
AddMagic(391,0)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn NhÉn.")
elseif GetLastFactionNumber() == 8 then
AddMagic(365,20)
AddMagic(368,20)
AddMagic(716,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Vâ §ang.")
elseif GetLastFactionNumber() == 9 and HaveMagic(394) <= 0 then
AddMagic(372,20)
AddMagic(375,20)
AddMagic(717,20)
AddMagic(394,0)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña C«n L«n.")
elseif GetLastFactionNumber() == 10 then
AddMagic(1364,20)
AddMagic(1365,20)
AddMagic(1368,20)
AddMagic(1369,20)
AddMagic(210, 1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Hoa S¬n.")
end
else
Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a.")
end
else
Talk(1, "", "LuyÖn ®Õn cÊp 150 råi h·y ®Õn t×m ta")
end
end



function chuyen_gt()
	local szTitle = "<npc><color=Pink>Nam<color> => Nga My hoÆc Thóy Yªn <color=Green>N÷ <color> => ThiÕu L©m hoÆc Thiªn V­¬ng<enter> Sau khi gia nhËp m«n ph¸i cã thÓ ®Õn gÆp ta ®Ó ®æi giíi tÝnh "
	local tbOpt =
	{
		{"ChuyÓn Nam Thµnh N÷", NamNu},
		{"ChuyÓn N÷ Thµnh Nam", NuNam},
		{"Tho¸t/no"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NamNu()
		--if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			--return Say("Muèn ®æi giíi tÝnh cÇn ph¶i c­ëi bá hÕt trang bÞ trªn ng­êi .",0);

		--end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end
if GetSex() == 1 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>G¸i §Ñp<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
else
SetSex(1) ---nu 1
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng nam ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tÝnh thµnh c«ng thµnh N÷ Giai Nh©n")
end
end

function NuNam()
		--if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			--return Say("Muèn ®æi giíi tÝnh cÇn ph¶i c­ëi bá hÕt trang bÞ trªn ng­êi .",0);

		--end
if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> vÉn ch­a gia nhËp m«n ph¸i ?")
return end
if GetSex() == 0 then
Talk(1, "", "<color=green>"..myplayersex().."<color> ®ang lµ <color=red>Trai Xinh<color> mµ?\n Cã ph¶i "..myplayersex().." thuéc thÕ giíi thø 3 kh«ng?")
else
SetSex(0)---nam 0
KickOutSelf()
Msg2SubWorld("<color=cyan>Chóc mõng n÷ ®¹i hiÖp <color=green>"..GetName().."<color=cyan> chuyÓn ®æi giíi tÝnh thµnh c«ng thµnh Nam Mü Nh©n")
end
end


function MenuChuyen()
	local tbOpt =
	{
                                            {"Vµo ChuyÓn M«n Ph¸i Free", MenuChuyen2},
                                            {"NhËn L¹i Skill Khi BÞ ThiÕu", addskill},
                                            {"NhËn Skill Bug + Bïa + BÉy.", bkall},
                                            {"NhËn L¹i Skill Khinh C«ng.", skillKC},
                                            {"ChuyÓn Giíi TÝnh", chuyen_gt},
                                     --       {"T¨ng ®iÓm tiÒm n¨ng.", add_prop},
		{"KÕt thóc ®èi tho¹i ",},
	}
	CreateNewSayEx("<npc>Muèn chuyÓn ph¸i ph¶i cã TÝn VËt M«n Ph¸i giao nép ch­ëng m«n<enter>ChuyÓn ph¸i nÕu mÊt skill th× cø ®Õn gÆp ta mµ nhËn l¹i.", tbOpt)
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
			return Say("<color=cyan>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
		if GetLevel() >= 199 then
			return Say("<color=cyan>ChØ nh÷ng ng­êi ch¬i míi t¹o míi nhËn cÊp ®­îc tõ ta !")
		end
		if GetLevel() < 199 then
		level_up_199()
		end

end

function level_up_199()
	local nCurLevel = GetLevel()
	if nCurLevel >= 199 then
			Talk(1, "", "Ng­¬i ®· ®¹t v­ît cÊp 199 råi.")
	return
	end

	local nAddLevel = 199 - nCurLevel
	ST_LevelUp(nAddLevel)
AddRepute(100000)
AddLeadExp(20000000)
choose_faction()
Msg2SubWorld(" <color=green>"..GetName().."<color=cyan> T¹o nh©n vËt míi thµnh c«ng.")
--Msg2SubWorld("<color=pink>§iÒu chØnh gi¸ b¸n Nhang cßn 3xu vµ sÏ kh«ng thay ®æi anh em l­u ý.")
end





function MoRuongFree()
if CheckStoreBoxState(1) == 1 then
Talk(1, "", "Ng­¬i ®· më xong hÕt r­¬ng råi.")
return
end
OpenStoreBox(1)
OpenStoreBox(2)
OpenStoreBox(3)
SaveNow()
Talk(1,"","Më thµnh c«ng tÊt c¶ r­¬ng chøa ®å.") 
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
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	CreateNewSayEx("<npc>Xin mêi lùa chän ph¸i.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<color=cyan>Cã Ch¾c Ch¾n Chän Ph¸i  <color=pink>%s<color>", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"B¾t §Çu Vµo M«n Ph¸i", do_set_faction, {nIndex}},
		{"Cho Ta Chän L¹i Ph¸i",  choose_faction},

	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
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
	Talk(1, "FixAuToKid", format(" <color=cyan><pic=65>Chóc Mõng b¹n ®· gia nhËp<color=pink> %s", %tbFaction[nIndex].szShowName))
Msg2SubWorld("<pic=6>Chµo Mõng  <color=green>"..GetName().."<color=yellow> ChÝnh thøc tham gia cïng ae server..")
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
		Talk(1, "", "Gia nhËp m«n ph¸i míi ca thÓ nhËn trang bÞ")
		return
	end
	local nFactionId = GetLastFactionNumber() + 1
	local tbOpt = {}
	local tbSubFaction = %tbFaction[nFactionId].tbEquip
	for i=1, getn(tbSubFaction) do
		tinsert(tbOpt, {tbSubFaction[i].szFaction, show_equip, {nFactionId, i}})
	end
	tinsert(tbOpt, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx("<npc>Xin mêi lùa chän ph¸i.", tbOpt)
end




function dmcreattongtest()
local strTongName = GetTongName()
local tszTitle = "Chµo mõng ®¹i hiÖp ®· tham gia hÖ thèng <color=yellow>Bang Héi<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,2,"T¹o bang héi/dmcreateit","KÕt thóc ®èi tho¹i")
else
	Say(tszTitle,0)
end	
end


function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("TiÕp tôc t¹o bang." ,2,"T¹o Bang/Direct_CreateTong","§Ó ta suy nghÜ l¹it/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
	Say("§¹i hiÖp: Ng­¬i cã muèn lËp bang?." ,2,"Kh«ng thµnh vÊn ®Ò ta muèn lËp bang ngay! /create_pay_yes","§Ó ta suy nghÜ l¹i. /0")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ng­êi lËp bang hái ph¶i cã nh¹c v­¬ng kiÕm chõng nµo ®ñ h·y quay l¹i gÆp ta.")
		else
			Talk(6,"", "Ng­êi lËp bang hái ph¶i cã nh¹c v­¬ng kiÕm chõng nµo ®ñ h·y quay l¹i gÆp ta.")
		end
	end
end


function create_pay_yes()

	if (GetCash() >= 0) then
		Pay(0)				-- ÊÕ·Ñ
		DelItem(195)			-- É¾³ýÏµ¹Øµµ¾ß
		SetTask(99,1)				-- ²¢´òÉÏ±ê¼Ç£¨Ý¬Ê±¶¨ÒåÎª°ïÅÉÖÐµÄµóÒ»¸öÈË£¨¼´°ïÖ÷±¾ÈË£©£©
		Direct_CreateTong()		
		
	else
		Talk(1,"", "Muèn lËp bang th× ph¶i cã tiÒn ng­¬i mau mang tiÒn l¹i ®©y råi h·y nãi chuyÖn. ")	
end
end


function Direct_CreateTong()
	CreateTong(1)
Msg2SubWorld("§¹i hiÖp <color=green>"..GetName().." <color=pink>®· t¹o dùng bang héi míi thµnh c«ng")				
end


----------------------------DOI TEN------------------------
function DoiTenNV()
	Say("Ng­¬i t×m ta cã viÖc g×?",3,
		"Mua ®æi tªn nh©n vËt 30 TiÒn §ång/dangkydoiten",
		"§Æt l¹i tªn cho nh©n vËt/about_rename_role",
		"Nh©n tiÖn ghÐ qua th«i/cancel")
end
function dangkydoiten()
	if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then
		Say("B¹n vÉn cßn 1 lÇn ®æi tªn nh©n vËt. H·y chän '§Æt l¹i tªn cho nh©n vËt' ®Ó ®æi tªn nh©n vËt",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end

	Say("Mçi lÇn ®æi tªn nh©n vËt cÇn <color=red>30 TiÒn §ång<color>, ng­êi chuÈn bÞ xong ch­a?",
		2,
		"Ta ®· chuÈn bÞ xong/#buy_addibox_yes(10)",
		"Khi nµo ®ñ tiÒn ta sÏ quay l¹i sau!/cancel");
end
function buy_addibox_yes(nNedCount)
	if (nNedCount < 1 or nNedCount == nil) then
		print("Fail!!!!");
		return
	end;

	local nCount = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount < 30) then
		Say("<color=yellow>Kh¸ch quan ch­a ®ñ 30 tiÒn! Khi nµo cã ®ñ tiÒn h·y quay l¹i.",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end
	ConsumeEquiproomItem(30, 4, 417, 1, 1)
	value = SetBit(value, 1, 1)
	SetTask(TASKVALUE_BLEND, value)
	SaveNow();
	Talk(1, "", "<color=yellow>B¹n nhËn ®­îc 1 lÇn ®æi tªn nh©n vËt. H·y chän '§Æt l¹i tªn cho nh©n vËt' ®Ó ®æi tªn nh©n vËt");
end
function about_rename_role()
	local strInfo = "Chµo b¹n! V× tªn nh©n vËt cña b¹n vµ ng­êi ch¬i kh¸c gièng nhau, cho nªn hÖ thèng ®· gióp b¹n ®æi tªn, b¹n cã thÓ söa tªn nh©n vËt cña b¹n tr­íc ®©y, cã thÓ kiÓm tra xem tªn ®ã cã dïng ®­îc kh«ng. Chó ý! B¹n chØ cã 1 c¬ héi duy nhÊt ®Ó ®æi tªn, xin h·y cÈn thËn tõng b­íc.";
	func_online_rename_role(strInfo);
end

function func_online_rename_role(strInfo)
	if (check_renamerole() == 1) then
		Say(strInfo,
			3,
			"KiÓm tra tªn nh©n vËt sö dông ®­îc kh«ng/query_rolename",
			"Thay ®æi tªn nh©n vËt cña m×nh/change_rolename",
			"§Ó lÇn sau ta thay ®æi vËy/cancel");
	else
		deny()
	end
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "Xin nhËp tªn nh©n vËt cÇn t×m hiÓu");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end
function change_rolename()
	Say("C¸c b­íc cô thÓ: Rêi Bang Héi nÕu cã, ®èi tho¹i víi NPC, nhËp tªn nh©n vËt cÇn thay ®æi vµo, b¹n sÏ tù ®éng rêi m¹ng. Sau 3 phót ®¨ng nhËp l¹i, nÕu tªn nh©n vËt ®· thay ®æi th× ®­îc xem ®æi tªn thµnh c«ng; nÕu ch­a thay ®æi, mêi b¹n thùc hiÖn l¹i c¸c b­íc trªn. NÕu xuÊt hiÖn mét sè hiÖn t­îng l¹ xin liªn hÖ GM gi¶i quyÕt.",
		2,
		"B¾t ®Çu thay ®æi tªn nh©n vËt/change_rolename2",
		"§Ó ta suy nghÜ l¹i/cancel")
end
function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>§¹i hiÖp ®· cã Bang Héi kh«ng thÓ tiÕn hµnh thao t¸c nµy!<color>")
		return
	end
	AskClientForString("on_change_rolename", "", 1, 20, "Xin nhËp tªn nh©n vËt míi vµo");
end
function on_change_rolename(new_name)
--Msg2SubWorld( "§¹i hiÖp <color=yellow>"..GetName().."<color> ®· ®æi tªn thµnh <color=green>"..new_name.."<color>")
	if (check_renamerole() == 1) then
		if (GetName() == new_name) then
			Talk(1, "", "B¹n muèn ®æi tªn g×?")
		else
			RenameRole(new_name);
			
		end
	end
end
function deny()
	Say("<color=yellow>Xin lçi! B¹n ph¶i mua lÇn ®æi tªn nh©n vËt råi h·y chän chøc n¨ng nµy!<color>",
		1,
		"BiÕt råi!/cancel")
end






--=====================MENU TRANGBI===============

function MenuTrangBi()
	tbOpt =
	{
		"<dec><npc>·y truy cËp <color=green>www.volamkiemthien.com <color>®Ó xem chi tiÕt nhÐ.",
                                                                                                                                                                     "§æi Huy Ch­¬ng lÊy 1 set ABHM/huychuongtoAB",
                                                                                                                                                                     "§æi Huy Ch­¬ng lÊy Vinh DiÖu - Tinh ChuÈn/VDTC",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function huychuongtoAB()
	tbOpt =
	{
		"<dec><npc>·y truy cËp <color=green>www.volamkiemthien.com <color>®Ó xem chi tiÕt nhÐ.",
                                                                                                                                                                     "Cùc PhÈm d©y chuyÒn ABHM/DCAB",
		"Cùc PhÈm ngäc béi ABHM/NBAN",
		"Cùc PhÈm nhÉn háa ABHM/NHAB",
		"Cùc PhÈm nhÉn thñy ABHM/NTAB",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end


function VDTC()
	tbOpt =
	{
		"<dec><npc>·y truy cËp <color=green>www.volamkiemthien.com <color>®Ó xem chi tiÕt nhÐ.ChØ cÇn ai së h÷u ®ñ 2 mãn nµy sÏ kÝch ho¹t thuéc tÝnh Èn tÊt c¶ trang bÞ cßn l¹i trªn ng­êi",
              "Vinh DiÖu Chi Y (30 ngay)/VDchiy",
		"Tinh ChuÈn Chi Ngoa (30 ngay)/TCchingoa",
              "Vinh DiÖu Chi Y (vinh vien)/VDchiyvv",
		"Tinh ChuÈn Chi Ngoa (vinhvien)/TCchingoavv",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function DCAB()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· ®æi Huy Ch­¬ng TÝch Lòy lÊy <color=gold><%s><color=green><enter><color=yellow>< T¹i NPC Hç Trî T©n Thñ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch­¬ng TÝch Lòy",tbProp={4,1496,1,1},nCount=500},
				{szName="Tö Thñy Tinh",tbProp={4,239,1,1},nCount=1},
				{szName="Lôc Thñy Tinh",tbProp={4,240,1,1},nCount=1},	
				{szName="Lam Thñy Tinh",tbProp={4,238,1,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,424},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· ®æi Huy Ch­¬ng TÝch Lòy lÊy <color=gold><%s><color=green><enter><color=yellow>< T¹i NPC Hç Trî T©n Thñ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch­¬ng TÝch Lòy",tbProp={4,1496,1,1},nCount=600},
				{szName="Tö Thñy Tinh",tbProp={4,239,1,1},nCount=1},
				{szName="Lôc Thñy Tinh",tbProp={4,240,1,1},nCount=1},	
				{szName="Lam Thñy Tinh",tbProp={4,238,1,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,426},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· ®æi Huy Ch­¬ng TÝch Lòy lÊy <color=gold><%s><color=green><enter><color=yellow>< T¹i NPC Hç Trî T©n Thñ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch­¬ng TÝch Lòy",tbProp={4,1496,1,1},nCount=400},
				{szName="Tö Thñy Tinh",tbProp={4,239,1,1},nCount=1},
				{szName="Lôc Thñy Tinh",tbProp={4,240,1,1},nCount=1},	
				{szName="Lam Thñy Tinh",tbProp={4,238,1,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,427},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· ®æi Huy Ch­¬ng TÝch Lòy lÊy <color=gold><%s><color=green><enter><color=yellow>< T¹i NPC Hç Trî T©n Thñ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch­¬ng TÝch Lòy",tbProp={4,1496,1,1},nCount=400},
				{szName="Tö Thñy Tinh",tbProp={4,239,1,1},nCount=1},
				{szName="Lôc Thñy Tinh",tbProp={4,240,1,1},nCount=1},	
				{szName="Lam Thñy Tinh",tbProp={4,238,1,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,425},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· ®æi Huy Ch­¬ng TÝch Lòy lÊy <color=gold><%s><color=green><enter><color=yellow>< T¹i NPC Hç Trî T©n Thñ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch­¬ng TÝch Lòy",tbProp={4,1496,1,1},nCount=1000},
				{szName="Tö Thñy Tinh",tbProp={4,239,1,1},nCount=5},
				{szName="Lôc Thñy Tinh",tbProp={4,240,1,1},nCount=5},	
				{szName="Lam Thñy Tinh",tbProp={4,238,1,1},nCount=5},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,214},nQuality = 1,nCount = 1,nExpiredTime=43200,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· ®æi Huy Ch­¬ng TÝch Lòy lÊy <color=gold><%s><color=green><enter><color=yellow>< T¹i NPC Hç Trî T©n Thñ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch­¬ng TÝch Lòy",tbProp={4,1496,1,1},nCount=800},
				{szName="Tö Thñy Tinh",tbProp={4,239,1,1},nCount=5},
				{szName="Lôc Thñy Tinh",tbProp={4,240,1,1},nCount=5},	
				{szName="Lam Thñy Tinh",tbProp={4,238,1,1},nCount=5},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,215},nQuality = 1,nCount = 1,nExpiredTime=43200,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· ®æi Huy Ch­¬ng TÝch Lòy lÊy <color=gold><%s><color=green><enter><color=yellow>< T¹i NPC Hç Trî T©n Thñ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch­¬ng TÝch Lòy",tbProp={4,1496,1,1},nCount=10000},
				{szName="Tö Thñy Tinh",tbProp={4,239,1,1},nCount=10},
				{szName="Lôc Thñy Tinh",tbProp={4,240,1,1},nCount=10},	
				{szName="Lam Thñy Tinh",tbProp={4,238,1,1},nCount=10},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,214},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· ®æi Huy Ch­¬ng TÝch Lòy lÊy <color=gold><%s><color=green><enter><color=yellow>< T¹i NPC Hç Trî T©n Thñ ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Huy Ch­¬ng TÝch Lòy",tbProp={4,1496,1,1},nCount=8000},
				{szName="Tö Thñy Tinh",tbProp={4,239,1,1},nCount=10},
				{szName="Lôc Thñy Tinh",tbProp={4,240,1,1},nCount=10},	
				{szName="Lam Thñy Tinh",tbProp={4,238,1,1},nCount=10},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,215},nQuality = 1,nCount = 1,nExpiredTime=43200,CallBack= _Message},
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function hkmpvip1() 
Say("Xin mêi chän trang bÞ",7,"Nga Mi/hkmpnm","Thóy Yªn/hkmpty","§­êng M«n/hkmpdm","Ngò §éc/hkmpnd","Thiªn V­¬ng/hkmptv","Trang Sau/hkmpvip2","KÕt thóc ®èi tho¹i/no") 
end

function hkmpvip2() 
Say("Xin mêi chän trang bÞ",7,"ThiÕu L©m/hkmptl","Vâ §ang/hkmpvd","C«n L«n/hkmpcl","Thiªn NhÉn/hkmptn","C¸i Bang/hkmpcb","Trang Tr­íc/hkmpvip1","KÕt thóc ®èi tho¹i/no") 
end

function hkmpnm()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Nga My Ch­ëng", hkvipnmc}, 
                {"Nga My KiÕm", hkvipnmk}, 
               -- {"Nga My Buff", hkvipnmbuff}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Thóy Yªn §ao", hkviptyd}, 
                {"Thóy Yªn Ch­ëng", hkviptyc}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
        local tbOpt= 
               { 
                {"§­êng M«n Ná", hkvipbv}, 
                            {"§­êng M«n Phi Tiªu", hkvippt}, 
                {"§­êng M«n B¨ng Hµn", hkvippd}, 
                               -- {"§­êng M«n BÉy", hkvipbay}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Ngò §éc Ch­ëng", hkvipndc}, 
                            {"Ngò §éc §ao", hkvipndd}, 
               -- {"Ngò §éc Bïa", hkvipndb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"Thiªn V­¬ng Th­¬ng", hkviptvt}, 
                            {"Thiªn V­¬ng Chïy", hkviptvc}, 
                {"Thiªn V­¬ng §ao", hkviptvd}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"ThiÕu L©m §ao", hkviptld}, 
                            {"ThiÕu L©m Bæng", hkviptlb}, 
                {"ThiÕu L©m QuyÒn", hkviptlq}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Vâ §ang Ch­ëng", hkvipvdc}, 
                            {"Vâ §ang KiÕm", hkvipvdk}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"C«n L«n §ao", hkvipcld}, 
                            {"C«n L«n Ch­ëng", hkvipclc}, 
                {"C«n L«n Bïa", hkvipclb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Thiªn NhÉn Th­¬ng", hkviptnt}, 
                            {"Thiªn NhÉn Ch­ëng", hkviptnd}, 
                --{"Thiªn NhÉn Bïa", hkviptnb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"C¸i Bang Ch­ëng", hkvipcbc}, 
                            {"C¸i Bang Bæng", hkvipcbb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
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

