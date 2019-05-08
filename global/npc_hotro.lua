IncludeLib("SETTING")
Include("\\script\\missions\\clearskill\\clearhole.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\hotrothem.lua")
------------------------------------------------------------------------------------------------------------
function main()
	dofile("script/global/npc_hotro.lua")
	dialog_main()
end
function dialog_main()
	local nNam = tonumber(GetLocalDate("%Y")); 
    local nThang = tonumber(GetLocalDate("%m")); 
    local nNgay = tonumber(GetLocalDate("%d")); 
    local nGio = tonumber(GetLocalDate("%H")); 
    local nPhut = tonumber(GetLocalDate("%M")); 
    local nGiay = tonumber(GetLocalDate("%S")); 
    local nW, nX, nY = GetWorldPos() 
    local nIdPlay = PlayerIndex 
	local tbOpt =
	{
		{"Hæ trî n©ng lªn cÊp 80.", level_up_to80},
		{"Hæ trî set Kim Phong.", setkimphonght},
		--{"Ta muèn chuyÓn sinh.", transfer},
		--{"NhËn th­ëng theo cÊp ®é.", phanthuong},
		{"NhËn m¸u hæ trî t©n thñ.", nhanmau},
		{"T¨ng ®iÓm tiÒm n¨ng.", add_prop},
		{"Hñy vËt phÈm.", DisposeItem},
		{"Tho¸t"},
	}
	CreateNewSayEx("Xin Chµo <color=red>"..GetName().."<color>!\nTäa ®é hiÖn t¹i: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color> \n<color>Index:           <color=green>"..nIdPlay.."<color> m¶nh.\n", tbOpt)
	end

function nhanmau()
	if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y më.",0);
		return 1;
	end
	if GetLevel()<130 then
		local tbItem = {szName="Ngò Hoa Ngäc Lé Hoµn", tbProp={1, 2, 0, 5, 0, 0}, nCount = 20, nExpiredTime = 10080, nBindState = -2}
		Msg2Player( "B¹n nhËn ®­îc hæ trî nµy ®Õn cÊp 130." );
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn th­ëng t©n thñ");
	end
end

function level_up_to80()
if GetTask(80) == 0 then
	local nCurLevel = GetLevel()
	if nCurLevel >= 81 then
		if ST_IsTransLife() == 1 then
		else
			Talk(1, "", "Ng­¬i ®· v­ît qua cÊp 80 råi.")
		end
		return
	end
	local nAddLevel = 81 - nCurLevel
	ST_LevelUp(nAddLevel)
	SetTask(80,GetTask(80)+1)
else
Talk(1, "", "Ng­¬i ®· nhËn phÇn th­ëng nµy råi mµ cßn muèn nhËn n÷a sao.")
end
end

function transfer()
	if GetLevel() < 190 then
		Talk(1, "", "CÊp 190 trë lªn míi cã thÓ chuyÓn sinh.")
		return
	end
	if (GetCash() <= 100000000) then
		Talk(1, "", "Ph¶i cã ®ñ 10000 v¹n míi ca thÓ chuyÓn sinh.")
		return
	end
	Pay(100000000)
	ST_DoTransLife()
end

function phanthuong()
	local tbOpt =
	{
		{"PhÇn th­ëng cÊp 80.", phanthuong80},
		{"PhÇn th­ëng cÊp 120.", phanthuong120},
		{"PhÇn th­ëng cÊp 130.", phanthuong130},
		{"PhÇn th­ëng cÊp 140.", phanthuong140},
		{"PhÇn th­ëng cÊp 150.", phanthuong150},
		{"Trë l¹i", dialog_main},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Xin mêi chän phÇn th­ëng t­¬ng øng víi cÊp ®é !", tbOpt)
	end
	
function phanthuong80()
if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã « trèng råi h·y më.",0);
		return 1;
end
	if GetLevel()>=80 then
		if GetTask(100)==0 then
		for i=177,185 do
		AddGoldItem(0 ,i)
		end
		AddItem(6,1,2426,0,0,0,0)
		AddItem(6,1,2424,0,0,0,0)
		AddItem(6,1,2332,0,0,0,0)
		AddItem(6,1,1181,0,0,0,0)
		AddItem(6,1,1181,0,0,0,0)
		AddItem(6,1,1181,0,0,0,0)
		AddItem(6,1,1181,0,0,0,0)
		AddItem(6,1,1181,0,0,0,0)
		SetTask(100,GetTask(100)+1)
		Msg2Player("§· nhËn thµnh c«ng phÇn th­ëng cÊp ®é 80.")
		else
		Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a. ")
	end
end
end

function setkimphonght()
if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã « trèng råi h·y më.",0);
		return 1;
end
		if GetTask(1111)==0 then
		for i=177,185 do
		AddGoldItem(0 ,i)
		end
end
Msg2Player("§· nhËn thµnh c«ng trang bÞ hæ trî.")
end

function phanthuong120()
if check_faction() == 1 then
		Talk(1, "", "Gia nhËp m«n ph¸i míi cã thÓ nhËn phÇn th­ëng nµy.")
		return
end
if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã « trèng råi h·y më.",0);
		return 1;
end
	if GetLevel()>=120 then
		if GetTask(120)==0 then
			for i=216,219 do
			AddGoldItem(0, i)
			end
			AddItem(6,1,2425,0,0,0,0)
			AddItem(6,1,1181,0,0,0,0)
			AddItem(6,1,1181,0,0,0,0)
			AddItem(6,1,1181,0,0,0,0)
			AddItem(6,1,1181,0,0,0,0)
			AddItem(6,1,1181,0,0,0,0)
			SetTask(120,GetTask(120)+1)	
			Msg2Player("§· nhËn thµnh c«ng phÇn th­ëng cÊp ®é 120.")
		else
			Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a. ")
		end
	else
		Talk(1, "", "Ng­¬i ch­a ®¹t ®Õn cÊp 120 mµ ®ßi phÇn th­ëng sao?. ")
	end
end

function phanthuong130()
if check_faction() == 1 then
		Talk(1, "", "Gia nhËp m«n ph¸i míi cã thÓ nhËn phÇn th­ëng nµy.")
		return
end
 stm = GetFaction()
 if GetLevel() >= 130 then	
 if GetTask(130) == 0 then
 if stm == "shaolin" then
local tbSay = {}
tinsert(tbSay,"ThiÕu L©m §ao Ph¸p./#settumang(3)")
tinsert(tbSay,"ThiÕu L©m C«n Ph¸p./#settumang(2)")
tinsert(tbSay,"ThiÕu L©m QuyÒn Ph¸p./#settumang(1)")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn !", getn(tbSay), tbSay)

elseif stm == "tianwang" then
local tbSay = {}
tinsert(tbSay,"Thiªn V­¬ng §ao./#settumang(6)")
tinsert(tbSay,"Thiªn V­¬ng Chïy./#settumang(4)")
tinsert(tbSay,"Thiªn V­¬ng Th­¬ng./#settumang(5)")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn !", getn(tbSay), tbSay)

elseif stm == "tangmen" then
local tbSay = {}
tinsert(tbSay,"§­êng M«n Phi §ao./#settumang(13)")
tinsert(tbSay,"§­êng M«n Ná./#settumang(14)")
tinsert(tbSay,"§­êng M«n Phi Tiªu./#settumang(15)")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn !", getn(tbSay), tbSay)

elseif stm == "wudu" then
local tbSay = {}
tinsert(tbSay,"Ngò §«c §ao./#settumang(12)")
tinsert(tbSay,"Ngò §éc Ch­ëng./#settumang(11)")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn !", getn(tbSay), tbSay)

elseif stm == "emei" then
local tbSay = {}
tinsert(tbSay,"Nga Mi KiÕm./#settumang(7)")
tinsert(tbSay,"Nga Mi Ch­ëng./#settumang(8)")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn !", getn(tbSay), tbSay)

elseif stm == "cuiyan" then
local tbSay = {}
tinsert(tbSay,"Thóy Yªn §ao./#settumang(9)")
tinsert(tbSay,"Thóy Yªn Song §ao./#settumang(10)")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn !", getn(tbSay), tbSay)

elseif stm == "gaibang" then
local tbSay = {}
tinsert(tbSay,"C¸i Bang Bçng./#settumang(17)")
tinsert(tbSay,"C¸i Bang Rång./#settumang(16)")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn !", getn(tbSay), tbSay)

elseif stm == "tianren" then
local tbSay = {}
tinsert(tbSay,"Thiªn NhÉn §ao./#settumang(19)")
tinsert(tbSay,"Thiªn NhÉn KÝch./#settumang(18)")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn !", getn(tbSay), tbSay)

elseif stm == "wudang" then
local tbSay = {}
tinsert(tbSay,"Vâ §ang QuyÒn./#settumang(20)")
tinsert(tbSay,"Vâ §ang KiÕm./#settumang(21)")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn !", getn(tbSay), tbSay)

elseif stm == "kunlun" then
tinsert(tbSay,"C«n L«n §ao./#settumang(22)")
tinsert(tbSay,"C«n L«n KiÕm./#settumang(23)")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn !", getn(tbSay), tbSay)
end
else
Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a.")
end
else
Talk(1, "", "B¹n ch­a ®¹t ®Õn cÊp ®é 130, h·y tiÕp tôc cè g¾ng.")
end
end

function settumang(nId)
for i = 1825, 1834 do
AddGoldItem(0,10*nId+i-10)
end
end

function phanthuong140()
if check_faction() == 1 then
		Talk(1, "", "Gia nhËp m«n ph¸i míi cã thÓ nhËn phÇn th­ëng nµy.")
		return
end
if CalcFreeItemCellCount() < 10 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã « trèng råi h·y më.",0);
		return 1;
end
	if GetLevel()>=140 then
		if GetTask(140)==0 then
			AddStackItem(50,4,417,1,1,0,0,0)
			AddItem(6,1,2219,0,0,0,0)
			AddItem(6,1,1181,0,0,0,0)
			AddItem(6,1,1181,0,0,0,0)
			AddItem(6,1,1181,0,0,0,0)
			AddItem(6,1,1181,0,0,0,0)
			AddItem(6,1,1181,0,0,0,0)
			SetTask(140,GetTask(140)+1)	
			Msg2Player("§· nhËn thµnh c«ng phÇn th­ëng cÊp ®é 140.")
		else
			Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a. ")
		end
	else
		Talk(1, "", "Ng­¬i ch­a ®¹t ®Õn cÊp 140 mµ ®ßi phÇn th­ëng sao?. ")
	end
end

function phanthuong150()
if check_faction() == 1 then
		Talk(1, "", "Gia nhËp m«n ph¸i míi cã thÓ nhËn phÇn th­ëng nµy.")
		return
end
mp = GetFaction()
if GetLevel() >= 150 then	
if GetTask(150) == 0 then
if mp == "shaolin" then
AddMagic(1055,20)
AddMagic(1056,20)
AddMagic(1057,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña ThiÕu L©m vµ M· Bµi Phiªn Vò ")
elseif mp == "tianwang" then
AddMagic(1058,20)
AddMagic(1059,20)
AddMagic(1060,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña Thiªn V­¬ng vµ M· Bµi Phiªn Vò ")
elseif mp == "tangmen" then
AddMagic(1069,20)
AddMagic(1070,20)
AddMagic(1071,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña §­êng M«n vµ M· Bµi Phiªn Vò ")
elseif mp == "wudu" then
AddMagic(1066,20)
AddMagic(1067,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña Ngò §éc vµ M· Bµi Phiªn Vò")
elseif mp == "emei" then
AddMagic(1061,20)
AddMagic(1062,20)
AddMagic(1114,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña Nga My vµ M· Bµi Phiªn Vò")
elseif mp == "cuiyan" then
AddMagic(1063,20)
AddMagic(1065,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña Thóy Yªn vµ M· Bµi Phiªn Vò")
elseif mp == "gaibang" then
AddMagic(1073,20)
AddMagic(1074,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña C¸i Bang vµ M· Bµi Phiªn Vò")
elseif mp == "tianren" then
AddMagic(1075,20)
AddMagic(1076,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
SetTask(150,GetTask(150)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña Thiªn NhÉn vµ M· Bµi Phiªn Vò")
elseif mp == "wudang" then
AddMagic(1078,20)
AddMagic(1079,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña Vâ §ang vµ M· Bµi Phiªn Vò")
elseif mp == "kunlun" then
AddMagic(1080,20)
AddMagic(1081,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña C«n L«n vµ M· Bµi Phiªn Vò")
end
else
Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a.")
end
else
Talk(1, "", "QuyÓn s¸ch nµy cÇn ph¶i cã néi lùc th©m hËu míi cã thÓ häc ®­îc, c¸c h¹ h·y tiÕp tôc luyÖn tËp.")
end
end

function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end


function add_prop()
	local tbOpt = 
	{
		{"T¨ng søc m¹nh.", add_prop_str},
		{"T¨ng th©n ph¸p.", add_prop_dex},
		{"T¨ng sinh khÝ.", add_prop_vit},
		{"T¨ng néi c«ng.", add_prop_eng},
		{"Trë l¹i.", dialog_main},
		{"Tho¸t."}
	}
	CreateNewSayEx("<npc>Xin mêi chän tiÒm n¨ng cÇn t¨ng !", tbOpt)
end
function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "Mêi nhËp chØ sè søc m¹nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "Mêi nhËp chØ sè th©n ph¸p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "Mêi nhËp chØ sè sinh khÝ:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "Mêi nhËp chØ sè néi c«ng: ");
end

function enter_str_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddStrg(n_key);
end

function enter_dex_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddDex(n_key);
end

function enter_vit_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddVit(n_key);
end

function enter_eng_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddEng(n_key);
end

function DisposeItem()
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn träng trong viÖc hñy vËt phÈm!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM Hñy Item "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
	end--for
	Msg2Player("Thao t¸c hñy vËt phÈm thµnh c«ng")
	Talk(1, "", "Thao t¸c thµnh c«ng, kiÓm tra l¹i!");	
end