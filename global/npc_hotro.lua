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
		{"H� tr� n�ng l�n c�p 80.", level_up_to80},
		{"H� tr� set Kim Phong.", setkimphonght},
		--{"Ta mu�n chuy�n sinh.", transfer},
		--{"Nh�n th��ng theo c�p ��.", phanthuong},
		{"Nh�n m�u h� tr� t�n th�.", nhanmau},
		{"T�ng �i�m ti�m n�ng.", add_prop},
		{"H�y v�t ph�m.", DisposeItem},
		{"Tho�t"},
	}
	CreateNewSayEx("Xin Ch�o <color=red>"..GetName().."<color>!\nT�a �� hi�n t�i: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color> \n<color>Index:           <color=green>"..nIdPlay.."<color> m�nh.\n", tbOpt)
	end

function nhanmau()
	if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y m�.",0);
		return 1;
	end
	if GetLevel()<130 then
		local tbItem = {szName="Ng� Hoa Ng�c L� Ho�n", tbProp={1, 2, 0, 5, 0, 0}, nCount = 20, nExpiredTime = 10080, nBindState = -2}
		Msg2Player( "B�n nh�n ���c h� tr� n�y ��n c�p 130." );
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n th��ng t�n th�");
	end
end

function level_up_to80()
if GetTask(80) == 0 then
	local nCurLevel = GetLevel()
	if nCurLevel >= 81 then
		if ST_IsTransLife() == 1 then
		else
			Talk(1, "", "Ng��i �� v��t qua c�p 80 r�i.")
		end
		return
	end
	local nAddLevel = 81 - nCurLevel
	ST_LevelUp(nAddLevel)
	SetTask(80,GetTask(80)+1)
else
Talk(1, "", "Ng��i �� nh�n ph�n th��ng n�y r�i m� c�n mu�n nh�n n�a sao.")
end
end

function transfer()
	if GetLevel() < 190 then
		Talk(1, "", "C�p 190 tr� l�n m�i c� th� chuy�n sinh.")
		return
	end
	if (GetCash() <= 100000000) then
		Talk(1, "", "Ph�i c� �� 10000 v�n m�i ca th� chuy�n sinh.")
		return
	end
	Pay(100000000)
	ST_DoTransLife()
end

function phanthuong()
	local tbOpt =
	{
		{"Ph�n th��ng c�p 80.", phanthuong80},
		{"Ph�n th��ng c�p 120.", phanthuong120},
		{"Ph�n th��ng c�p 130.", phanthuong130},
		{"Ph�n th��ng c�p 140.", phanthuong140},
		{"Ph�n th��ng c�p 150.", phanthuong150},
		{"Tr� l�i", dialog_main},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Xin m�i ch�n ph�n th��ng t��ng �ng v�i c�p �� !", tbOpt)
	end
	
function phanthuong80()
if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� � tr�ng r�i h�y m�.",0);
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
		Msg2Player("�� nh�n th�nh c�ng ph�n th��ng c�p �� 80.")
		else
		Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a. ")
	end
end
end

function setkimphonght()
if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� � tr�ng r�i h�y m�.",0);
		return 1;
end
		if GetTask(1111)==0 then
		for i=177,185 do
		AddGoldItem(0 ,i)
		end
end
Msg2Player("�� nh�n th�nh c�ng trang b� h� tr�.")
end

function phanthuong120()
if check_faction() == 1 then
		Talk(1, "", "Gia nh�p m�n ph�i m�i c� th� nh�n ph�n th��ng n�y.")
		return
end
if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� � tr�ng r�i h�y m�.",0);
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
			Msg2Player("�� nh�n th�nh c�ng ph�n th��ng c�p �� 120.")
		else
			Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a. ")
		end
	else
		Talk(1, "", "Ng��i ch�a ��t ��n c�p 120 m� ��i ph�n th��ng sao?. ")
	end
end

function phanthuong130()
if check_faction() == 1 then
		Talk(1, "", "Gia nh�p m�n ph�i m�i c� th� nh�n ph�n th��ng n�y.")
		return
end
 stm = GetFaction()
 if GetLevel() >= 130 then	
 if GetTask(130) == 0 then
 if stm == "shaolin" then
local tbSay = {}
tinsert(tbSay,"Thi�u L�m �ao Ph�p./#settumang(3)")
tinsert(tbSay,"Thi�u L�m C�n Ph�p./#settumang(2)")
tinsert(tbSay,"Thi�u L�m Quy�n Ph�p./#settumang(1)")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n !", getn(tbSay), tbSay)

elseif stm == "tianwang" then
local tbSay = {}
tinsert(tbSay,"Thi�n V��ng �ao./#settumang(6)")
tinsert(tbSay,"Thi�n V��ng Ch�y./#settumang(4)")
tinsert(tbSay,"Thi�n V��ng Th��ng./#settumang(5)")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n !", getn(tbSay), tbSay)

elseif stm == "tangmen" then
local tbSay = {}
tinsert(tbSay,"���ng M�n Phi �ao./#settumang(13)")
tinsert(tbSay,"���ng M�n N�./#settumang(14)")
tinsert(tbSay,"���ng M�n Phi Ti�u./#settumang(15)")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n !", getn(tbSay), tbSay)

elseif stm == "wudu" then
local tbSay = {}
tinsert(tbSay,"Ng� ��c �ao./#settumang(12)")
tinsert(tbSay,"Ng� ��c Ch��ng./#settumang(11)")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n !", getn(tbSay), tbSay)

elseif stm == "emei" then
local tbSay = {}
tinsert(tbSay,"Nga Mi Ki�m./#settumang(7)")
tinsert(tbSay,"Nga Mi Ch��ng./#settumang(8)")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n !", getn(tbSay), tbSay)

elseif stm == "cuiyan" then
local tbSay = {}
tinsert(tbSay,"Th�y Y�n �ao./#settumang(9)")
tinsert(tbSay,"Th�y Y�n Song �ao./#settumang(10)")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n !", getn(tbSay), tbSay)

elseif stm == "gaibang" then
local tbSay = {}
tinsert(tbSay,"C�i Bang B�ng./#settumang(17)")
tinsert(tbSay,"C�i Bang R�ng./#settumang(16)")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n !", getn(tbSay), tbSay)

elseif stm == "tianren" then
local tbSay = {}
tinsert(tbSay,"Thi�n Nh�n �ao./#settumang(19)")
tinsert(tbSay,"Thi�n Nh�n K�ch./#settumang(18)")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n !", getn(tbSay), tbSay)

elseif stm == "wudang" then
local tbSay = {}
tinsert(tbSay,"V� �ang Quy�n./#settumang(20)")
tinsert(tbSay,"V� �ang Ki�m./#settumang(21)")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n !", getn(tbSay), tbSay)

elseif stm == "kunlun" then
tinsert(tbSay,"C�n L�n �ao./#settumang(22)")
tinsert(tbSay,"C�n L�n Ki�m./#settumang(23)")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n !", getn(tbSay), tbSay)
end
else
Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a.")
end
else
Talk(1, "", "B�n ch�a ��t ��n c�p �� 130, h�y ti�p t�c c� g�ng.")
end
end

function settumang(nId)
for i = 1825, 1834 do
AddGoldItem(0,10*nId+i-10)
end
end

function phanthuong140()
if check_faction() == 1 then
		Talk(1, "", "Gia nh�p m�n ph�i m�i c� th� nh�n ph�n th��ng n�y.")
		return
end
if CalcFreeItemCellCount() < 10 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� � tr�ng r�i h�y m�.",0);
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
			Msg2Player("�� nh�n th�nh c�ng ph�n th��ng c�p �� 140.")
		else
			Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a. ")
		end
	else
		Talk(1, "", "Ng��i ch�a ��t ��n c�p 140 m� ��i ph�n th��ng sao?. ")
	end
end

function phanthuong150()
if check_faction() == 1 then
		Talk(1, "", "Gia nh�p m�n ph�i m�i c� th� nh�n ph�n th��ng n�y.")
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
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Thi�u L�m v� M� B�i Phi�n V� ")
elseif mp == "tianwang" then
AddMagic(1058,20)
AddMagic(1059,20)
AddMagic(1060,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Thi�n V��ng v� M� B�i Phi�n V� ")
elseif mp == "tangmen" then
AddMagic(1069,20)
AddMagic(1070,20)
AddMagic(1071,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a ���ng M�n v� M� B�i Phi�n V� ")
elseif mp == "wudu" then
AddMagic(1066,20)
AddMagic(1067,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Ng� ��c v� M� B�i Phi�n V�")
elseif mp == "emei" then
AddMagic(1061,20)
AddMagic(1062,20)
AddMagic(1114,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Nga My v� M� B�i Phi�n V�")
elseif mp == "cuiyan" then
AddMagic(1063,20)
AddMagic(1065,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Th�y Y�n v� M� B�i Phi�n V�")
elseif mp == "gaibang" then
AddMagic(1073,20)
AddMagic(1074,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a C�i Bang v� M� B�i Phi�n V�")
elseif mp == "tianren" then
AddMagic(1075,20)
AddMagic(1076,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
SetTask(150,GetTask(150)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Thi�n Nh�n v� M� B�i Phi�n V�")
elseif mp == "wudang" then
AddMagic(1078,20)
AddMagic(1079,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a V� �ang v� M� B�i Phi�n V�")
elseif mp == "kunlun" then
AddMagic(1080,20)
AddMagic(1081,20)
AddItem(6,1,2334,0,0,0,0)
SetTask(150,GetTask(150)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a C�n L�n v� M� B�i Phi�n V�")
end
else
Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a.")
end
else
Talk(1, "", "Quy�n s�ch n�y c�n ph�i c� n�i l�c th�m h�u m�i c� th� h�c ���c, c�c h� h�y ti�p t�c luy�n t�p.")
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
		{"T�ng s�c m�nh.", add_prop_str},
		{"T�ng th�n ph�p.", add_prop_dex},
		{"T�ng sinh kh�.", add_prop_vit},
		{"T�ng n�i c�ng.", add_prop_eng},
		{"Tr� l�i.", dialog_main},
		{"Tho�t."}
	}
	CreateNewSayEx("<npc>Xin m�i ch�n ti�m n�ng c�n t�ng !", tbOpt)
end
function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "M�i nh�p ch� s� s�c m�nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "M�i nh�p ch� s� th�n ph�p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "M�i nh�p ch� s� sinh kh�:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "M�i nh�p ch� s� n�i c�ng: ");
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
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM H�y Item "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
	end--for
	Msg2Player("Thao t�c h�y v�t ph�m th�nh c�ng")
	Talk(1, "", "Thao t�c th�nh c�ng, ki�m tra l�i!");	
end