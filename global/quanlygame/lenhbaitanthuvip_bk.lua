Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\_camnangdonghanh.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\quanlygame\\sukien\\baobuakeo\\head.lua");




function main()
dofile("script/global/quanlygame/lenhbaitanthuvip.lua")
--local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[1]
local szTitle =  "LÖnh bµi hç trî JxTinhVoLam Website www.JxTinhVoLam.Com chóc ®¹i hiÖp online vui vÎ!"

local tbOpt = 
{
{"NhËn Trang BÞ §å Xanh Max ",trangbixanh},
{"NhËn Trang BÞ Vò KhÝ HKMP", hkmpvip1},
{"NhËn Trang BÞ HKMP NgÉu Nhiªn", hkmpvipnn},
{"B¸n + Hñy VËt PhÈm",huyVPkhoa},
{"Ch¬i Game O¼n Tï T×", choigamebai},
{"NhËn §Q - HC - AB", HoangKimTanThu},
{"NhËn TiÒn V¹n", nhan500v},
{"NhËn xu test", nhanxutest},
{"TÈy TiÒm N¨ng ", TayCongDiem},
--{"L­u Th«ng Tin Nh©n VËt", savechongroll},
--{"Gi¶i KÑt Fix ThÇn thµnh Phï", FixLoiThanHanhPhuOK},
--{"§èi Tho¹i Víi GM ", Bil_ChatWithGM},
{"Tho¸t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end

function nhan500v()
Earn(100000000)
Talk(1, "", "NhËn thµnh c«ng 10000v.")
end

function TayCongDiem()

	Say("§¹i hiÖp: Ng­¬i cÇn g× ë ta?." ,3,"TÈy TiÒm N¨ng Di §éng./tayTNnhe","Céng TiÒm N¨ng Nhanh/TangDiemTiemNangNhanh","§Ó ta suy nghÜ l¹i. /0")
end


function huyVPkhoa()

	Say("§¹i hiÖp: Ng­¬i cÇn g× ë ta?." ,3,"B¸n Shop VËt PhÈm! /banshop","Hñy Bá VËt PhÈm! /Huydeltem","§Ó ta suy nghÜ l¹i. /0")
end


function tayTNnhe()
	local base_str = {35,20,25,30,20}			-- ÎåÐÐÈËÎïµÄÌìÉúÊôÐÔÖµ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ½«ÒÑ·ÖÅäÇ±ÄÜÖØÖÃ£¨task(88)ÊÇÈÎÎñÖÐÖ±½Ó½±ÀøµÄÁ¦Á¿¡¢Éí·¨µÈ£©
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
Talk(1, "", "<color=green>TÈy tiÒm n¨ng thµnh c«ng!"); 
end

function TangDiemTiemNangNhanh()
	Say("Ng­¬i ph¶i hiÓu râ c¸ch t¨ng ®iÓm", 4,
			"Søc m¹nh/add_prop_str",
			"Th©n ph¸p/add_prop_dex",
			"Sinh khÝ/add_prop_vit",
			"Néi c«ng/add_prop_eng")
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

function Huydeltem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin më khãa r­¬ng tr­íc !", 0)
		return
	end
GiveItemUI("Hñy VËt PhÈm Khãa", " §¹i hiÖp cÇn hñy g× xin ®Æt vµo « d­íi ®©y! Cã thÓ hñy nhiÒu vËt phÈm cïng lóc", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
local bilLogDelItemFileName = openfile("script/global/bil4i3n/bil4i3n_log/Huy_Vat_Pham_"..date("%d_%m_%Y")..".log", "a");
for i=1, nCount do
local nItemIndex = GetGiveItemUnit(i)
local strItem = GetItemName(nItemIndex)
RemoveItemByIndex(nItemIndex)
write(bilLogDelItemFileName, date("%H:%M:%S").."\t Tµi Kho¶n: "..GetAccount().."\tTªn Nh©n VËt: "..GetName().."\t  - §· Hñy VËt PhÈm: "..strItem, "\n")
end
closefile(bilLogDelItemFileName)
Msg2Player("Thao t¸c b¸n vËt phÈm thµnh c«ng")
Talk(1, "", "<color=green> Chóc mïng §¹i HiÖp ®· hñy vËt phÈm khãa thµnh c«ng!"); 
end



------------------------------------ NHAN TRANG BI XANH --------------------------

tbDoXanh =
{
[1]=
{
szName = "D©y chuyÒn",
tbEquip =
{
{"Toµn th¹ch h¹ng liªn",0,4,0},
{"Lôc PhØ Thóy Hé Th©n phï ",0,4,1},
}
},
[2]=
{
szName = "¸o gi¸p",
tbEquip =
{
{"ThÊt B¶o Cµ Sa",0,2,0},
{"Ch©n Vò Th¸nh Y",0,2,1},
{"Thiªn NhÉn MËt Trang",0,2,2},
{"Gi¸ng Sa Bµo",0,2,3},
{"§­êng Nghª gi¸p",0,2,4},
{"V¹n L­u Quy T«ng Y",0,2,5},
{"TuyÒn Long bµo",0,2,6},
{"Long Tiªu ®¹o Y",0,2,8},
{"Cöu VÜ B¹ch Hå trang",0,2,9},
{"TrÇm H­¬ng sam",0,2,10},
{"TÝch LÞch Kim Phông gi¸p",0,2,11},
{"V¹n Chóng TÒ T©m Y",0,2,12},
{"L­u Tiªn QuÇn",0,2,13},
}
},
[3]=
{
szName = "§ai l­ng",
tbEquip =
{
{"Thiªn Tµm Yªu §¸i",0,6,0},
{"B¹ch Kim Yªu §¸i",0,6,1},
}
},
[4]=
{
szName = "Giµy",
tbEquip =
{
{"Cöu TiÕt X­¬ng VÜ Ngoa",0,5,0},
{"Thiªn Tµm Ngoa",0,5,1},
{"Kim Lò hµi",0,5,2},
{"Phi Phông Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao tay",
tbEquip =
{
{"Long Phông HuyÕt Ngäc Tr¹c",0,8,0},
{"Thiªn Tµm Hé UyÓn",0,8,1},
}
},
[6]=
{
szName = "Nãn",
tbEquip =
{
{"Tú L« m·o",0,7,0},
{"Ngò l·o qu¸n",0,7,1},
{"Tu La Ph¸t kÕt",0,7,2},
{"Th«ng Thiªn Ph¸t Qu¸n",0,7,3},
{"YÓm NhËt kh«i",0,7,4},
{"TrÝch Tinh hoµn",0,7,5},
{"¤ Tµm M·o",0,7,6},
{"Quan ¢m Ph¸t Qu¸n",0,7,7},
{"¢m D­¬ng V« Cùc qu¸n",0,7,8},
{"HuyÒn Tª DiÖn Tr¸o",0,7,9},
{"Long HuyÕt §Çu hoµn",0,7,10},
{"Long L©n Kh«i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Phông TriÓn SÝ ",0,7,13},
}
},
[7]=
{
szName = "Vò khÝ c©n chiÕn",
tbEquip =
{
{"HuyÒn ThiÕt KiÕm",0,0,0},
{"§¹i Phong §ao",0,0,1},
{"Kim C« Bæng",0,0,2},
{"Ph¸ Thiªn KÝch",0,0,3},
{"Ph¸ Thiªn chïy",0,0,4},
{"Th«n NhËt Tr·m",0,0,5},
}
},
[8]=
{
szName = "Ngäc béi",
tbEquip =
{
{"Long Tiªn H­¬ng Nang",0,9,0},
{"D­¬ng Chi B¹ch Ngäc",0,9,1},
}
},
[9]=
{
szName = "Vò khÝ tÇm xa",
tbEquip =
{
{"B¸ V­¬ng Tiªu",0,1,0},
{"To¸i NguyÖt §ao",0,1,1},
{"Khæng T­íc Linh",0,1,2},
}
},
[10]=
{
szName = "NhÉn",
tbEquip =
{
{"Toµn Th¹ch Giíi ChØ ",0,3,0},
}
},
}
function trangbixanh()
	if CalcFreeItemCellCount() < 6 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 6 « trèng råi h·y tiÕp tôc nhÐ !",0);
		return 1;
	end
local tbOpt = {}
for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
local szTitle = "Läc ®å nµo anh em ¬i !";
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
local szTitle = "Läc ®å nµo anh em ¬i !";
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
local tbOpt = {}
tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
tinsert(tbOpt, {"Méc", laydoxanh3, {nIndex, nType, 1}})
tinsert(tbOpt, {"Thñy", laydoxanh3, {nIndex, nType, 2}})
tinsert(tbOpt, {"Háa", laydoxanh3, {nIndex, nType, 3}})
tinsert(tbOpt, {"Thæ ", laydoxanh3, {nIndex, nType, 4}})


tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
local szTitle = format("<npc>Chän hÖ:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 10, "Sè l­îng:", {laydoxanh4, {nIndex, nType, nSeries}})
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
for i=1,10 do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10) end
end

function banshop()
Sale(149)
end;



SayChatVoiGM = {
	"Ta biÕt råi!/OnCancel",
	"B¹n cã ch¾c muèn ®èi tho¹i trùc tiÕp víi <color=green>Admin<enter><color=gold>==>l­u ý c¸c gamer cã hµnh vi spam tin nh¾n hay xóc ph¹m <color=green>=>Admin<color> trong lóc trß chuyÖn sÏ bÞ band nh©n vËt vµ ip khái game vÜnh viÔn..!<color>.",
	"Ch¾c råi!/BatDauChatGM",
	"Ta nhÇm!/OnCancel",
	"<color=white>HiÖn t¹i <color=Orange>GM<color> kh«ng trùc tuyÕn, phiÒn b¹n liªn l¹c l¹i sau, xin c¶m ¬n!<color>",
	"NhËp tin nh¾n!",
	"<color=white><color=Orange>GameMaster<color> hiÖn ®ang trong cuéc trß chuyÖn víi member, phiÒn b¹n liªn l¹c l¹i sau nhÐ!<color>",
	"<bclr=green><color=black>%s<bclr><color> <pic=139> ",
	"Tr¶ lêi l¹i %s/TraLoiTinNhan",
	--"Xem th«ng tin cña %s/#ThongTinNhanVatPM",
	"KÕt thóc ®èi tho¹i./ResetStateChatWithGM",
}

function ChatVoiGMInGame()
	Say(SayChatVoiGM[2], 2, SayChatVoiGM[3], SayChatVoiGM[4])
end

function BatDauChatGM()
	local PlayerIndexGM = SearchPlayer(GetNameAdmin);
	if PlayerIndexGM <= 0 then
		return Say(SayChatVoiGM[5], 1, SayChatVoiGM[1])
	else
		if CallPlayerFunction(PlayerIndexGM, GetTask, 5997) == 0 then
			return AskClientForString("GuiTinNhanDenGM", "", 1, (410), SayChatVoiGM[6]); 
		elseif CallPlayerFunction(PlayerIndexGM, GetTask, 5997) > 0 then
			if CallPlayerFunction(PlayerIndexGM, GetTask, 5997) == PlayerIndex then
				return AskClientForString("GuiTinNhanDenGM", "", 1, (410), SayChatVoiGM[6]);
			else
				return Say(SayChatVoiGM[7], 1, SayChatVoiGM[1])
			end
		end
	end
end

function GuiTinNhanDenGM(Msg)
	local PlayerIndexGM = SearchPlayer(GetNameAdmin);
	if CallPlayerFunction(PlayerIndexGM, GetTask, 5997) ~= PlayerIndex and CallPlayerFunction(PlayerIndexGM, GetTask, 5997) ~= 0 then
		return Say(SayChatVoiGM[6]);
	end
	local TraLoiVaKetThuc = 
		{
			format(SayChatVoiGM[8], GetName())..Msg, 3,
			--format(SayChatVoiGM[8], GetName()),
			format(SayChatVoiGM[9], GetName(), PlayerIndex),
			SayChatVoiGM[11],
		}
	CallPlayerFunction(PlayerIndexGM, SetTaskTemp, 246, PlayerIndex)
	CallPlayerFunction(PlayerIndexGM, SetTask, 5997, PlayerIndex)
	callPlayerFunctionParamList(PlayerIndexGM, Say, TraLoiVaKetThuc)
end

function OnCancel()
end

function savenhanvatnhanh()
SaveNow();
Say("Thao t¸c save nh©n vËt thµnh c«ng.",0)
end

function savechongroll()
	local tbDialog = 
{ 
"<color=green>Save nh©n vËt tøc lµ l­u ®å ®¹c nh©n vËt b¹n hiÖn t¹i gièng nh­ save game vËy tr¸nh tr­êng hîp nÕu cã rñi ro server bÞ ph¸ th× ®å b¹n sÏ ko mÊt m¸t g×.Th«ng th­êng server tù save tù ®éng nªn tr­êng hîp nµy chØ dµnh cho lóc khÈn cÊp th«i nhe.",
"Ch¾c ch¾n råi save ngay vµ lu«n/savenhanvatnhanh",
"KÕt thóc ®èi tho¹i/",
} 
CreateTaskSay(tbDialog)
end

function savenhanvatnhanh()
SaveNow();
Say("<color=green>Save nh©n vËt thµnh c«ng.",0)
end

function FixLoiThanHanhPhuOK()
                                                                                  local state = GetSkillState(739);
	if state == 1 then
                                                                                                                                                                     Say("§ang lµm nhiÖm vô quan träng kh«ng thÓ sö dông chøc n¨ng nµy.",0)
		else
FixLoiThanHanhPhuOOK()
	end
end



function FixLoiThanHanhPhuOOK()
local PlayerIndex = GetTaskTemp(246);
CallPlayerFunction(PlayerIndex, DisabledUseTownP, 0);
return 
CallPlayerFunction(PlayerIndex, Say, "Gi¶i kÑt thµnh c«ng b¹n cã thÓ dïng ThÇn thµnh Phï.", 0);
end


--===============================AB=====================
function NhanAB()
	if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y tiÕp tôc nhÐ !",0);
		return 
	end
AddGoldItem(0,389)
AddGoldItem(0,390)
AddGoldItem(0,391)
AddGoldItem(0,392)
AddGoldItem(0,393)
AddGoldItem(0,394)
AddGoldItem(0,395)
AddGoldItem(0,396)
AddGoldItem(0,397)

end

function giaiket()
Bil_AllInformationForInputNamemem(rolename)
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
for i =1,5 do
AddGoldItem(0,39)  
end
end


function hkvipnmk()
for i =1,5 do 
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
for i =1,5 do 
AddGoldItem(0,46)  
end
end

function hkviptyc()
for i =1,5 do 
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
for i =1,5 do 
AddGoldItem(0,76)  
end
end


function hkvippt() 
for i =1,5 do
AddGoldItem(0,81)  
end
end


function hkvippd() 
for i =1,5 do
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
for i =1,5 do 
AddGoldItem(0,56)  
end
end

function hkvipndd() 
AddGoldItem(0,61)  
end

function hkvipndb()
for i =1,5 do 
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
for i =1,5 do 
AddGoldItem(0,21)  
end
end

function hkviptvc() 
for i =1,5 do
AddGoldItem(0,16)  
end
end

function hkviptvd() 
for i =1,5 do
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
for i =1,5 do
AddGoldItem(0,11)  
end
end

function hkviptlb() 
for i =1,5 do
AddGoldItem(0,6)  
end
end

function hkviptlq() 
for i =1,5 do
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
for i =1,5 do
AddGoldItem(0,116)  
end
end

function hkvipvdk() 
for i =1,5 do
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
for i =1,5 do
AddGoldItem(0,126)  
end
end

function hkvipclc() 
for i =1,5 do
AddGoldItem(0,131)  
end
end

function hkvipclb() 
for i =1,5 do
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
for i =1,5 do
AddGoldItem(0,101)  
end
end

function hkviptnd() 
for i =1,5 do
AddGoldItem(0,540)  
end
end

function hkviptnb() 
for i =1,5 do
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
for i =1,5 do
AddGoldItem(0,94)  
end
end

function hkvipcbb() 
for i =1,5 do
AddGoldItem(0,96)  
end
end




function HoangKimTanThu()
if CalcFreeItemCellCount() < 30 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 30 « trèng!")
		return
	end 
	Say("Xin mêi chän trang bÞ cÇn test",5,"Trang BÞ An Bang/hoanmytanthu","Trang BÞ Nhu T×nh/nhutinhtanthu","Trang BÞ §Þnh Quèc/dinhquoctanthu","Trang BÞ HiÖp Cèt/hiepcottanthu","KÕt thóc ®èi tho¹i/no")
end

function hoanmytanthu()                
AddGoldItem(0,164)
AddGoldItem(0,165)
AddGoldItem(0,166)
AddGoldItem(0,167)
Msg2Player("NhËn ®­îc Trang BÞ An Bang!")
end

function nhutinhtanthu()
		Talk(1, "", "Trang bÞ nhu t×nh t¹m thêi ch­a cho phÐp nhËn free")
		return
--AddGoldItem(0,190)
--AddGoldItem(0,191)
--AddGoldItem(0,192)
--AddGoldItem(0,193)
--Msg2Player("NhËn ®­îc Trang BÞ Nhu T×nh")
end

function dinhquoctanthu()
AddGoldItem(0,159)
AddGoldItem(0,160)
AddGoldItem(0,161)
AddGoldItem(0,162)
AddGoldItem(0,163)
Msg2Player("NhËn ®­îc Trang BÞ §Þnh Quèc!")
end

function hiepcottanthu()
AddGoldItem(0,186)
AddGoldItem(0,187)
AddGoldItem(0,188)
AddGoldItem(0,189)
Msg2Player("NhËn ®­îc Trang BÞ HiÖp Cèt!")
end




------------------------------------------------------------------------

function choigamebai()
tbAloneScriptGame:DialogMain()
end


function tbAloneScriptGame:DialogMain()
	local szTitle = "Xin chµo c¸c h¹ cã muèn thö trß nµy hay kh«ng?";
	local tbOption = {};
		tinsert(tbOption, {"Ch¬i O¼n Tï X×", self.StartGame, {self}})
		tinsert(tbOption, {"Kh«ng Ch¬i."})
	CreateNewSayEx(szTitle, tbOption)
end

function tbAloneScriptGame:StartGame()
	local szCaptain = GetName();
	local nTeamSize = GetTeamSize();
	if (nTeamSize ~= 2) then
		Talk(1, "", "Ng­êi ch¬i ph¶i lËp tæ ®éi riªng vµ ph¶i cã ®ñ 2 ng­êi trong mét tæ ®éi.")
	return end
	
	if (IsCaptain() ~= 1) then
		Talk(1, "", "Ng­êi ch¬i ph¶i lµ ®éi tr­ëng cña mét tæ ®éi.")
	return end
	
	self.StateGame[szCaptain] = self.StateGame[szCaptain] or 0
	
	if (self.StateGame[szCaptain] > 0) then
		Talk(1, "", "§ang chuÈn bÞ O¼n Tï T× mµ hoÆc hÕt 30 gi©y cña v¸n tr­íc míi ®­îc ch¬i tiÕp nÌ.")
	return end
	
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney <= 0) then
		Talk(1, "", "Trªn ng­êi b¹n kh«ng cã TiÒn §ång, kh«ng thÓ b¾t ®Çu.")
	return end
	
	g_AskClientNumberEx(1, nMoney, "NhËp sè tiÒn c­îc:", {self.SetMoneyGame, {self}})
end

function tbAloneScriptGame:SetMoneyGame(nCount)
	local szCaptain = GetName();
	Msg2Team(format("<color=green><pic=7>Tr­ëng nhãm <color=yellow>%s<color> ®· khëi ®éng O¼n Tï T×!<pic=7>",szCaptain))
	
	local nPlayerOld = PlayerIndex;
	local tbTeam = {};
	for i = 1, GetTeamSize() do
		PlayerIndex = GetTeamMember(i);
			local szName = GetName();
				self.StateGame[szName] = 1;
				self.TotalTime[szName] = GetCurServerTime();
				SetTimer(30*18, TIMERID)
			local szTitle = format("TiÒn c­îc ®Ó tham gia o¼n tï x× lÇn nµy lµ <color=yellow>%d TiÒn §ång<color>, b¹n cã muèn tham gia kh«ng?", nCount);
			local tbOption = {};
				tinsert(tbOption, {"Tham Gia O¼n Tï T×", self.PlayerPlayGame, {self,nCount,tbTeam}})
				tinsert(tbOption, {"Hñy bá.", self.CancelPlayGame, {self}})
			CreateNewSayEx(szTitle, tbOption)
		PlayerIndex = nPlayerOld;
	end
end

function tbAloneScriptGame:CancelPlayGame()
	local szPlayerName = GetName();
	Msg2Team(format("<color=green><pic=3> <color=yellow>%s<color> tõ chèi tham gia nÕu b¹n ®· c­îc th× 30 gi©y sau b¹n ®­îc tr¶ l¹i tiÒn c­îc!", szPlayerName))
	self.StateGame[szPlayerName] = 0;
	self.TotalTime[szPlayerName] = 0;
	self.WatingBet[szPlayerName] = 0;
	LeaveTeam();
end

function tbAloneScriptGame:ClearnData()
	local szPlayerName = GetName();
	self.StateGame[szPlayerName] = 0;
	self.TotalTime[szPlayerName] = 0;
	self.WatingBet[szPlayerName] = 0;
end

function tbAloneScriptGame:PlayerPlayGame(nCount,tbTeam)
	local szPlayerName = GetName();
	
	if (self.StateGame[szPlayerName] == 0) then
		Talk(1, "", "O¼n tï x× ®· kÕt thóc råi do sai luËt hoÆc hÕt thêi gian 30 gi©y suy nghÜ!")
		self:ClearnData()
	return end
	
	self.StateGame[szPlayerName] = 2;
	
	if (GetTeamSize() ~= 2) then
		Talk(1, "", "Tæ ®éi kh«ng ®ñ ng­êi, b¾t buéc ph¶i ®óng 2 ng­êi trong tæ ®éi.")
		self:ClearnData()
	return end
	
	Msg2Team(format("<pic=20> <color=yellow>%s<color> ®· tham gia O¼n tï x×!", szPlayerName))
	
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney < nCount) then
		Talk(1, "", format("B¹n kh«ng ®ñ %d TiÒn §ång ®Ó tham gia, hÖ thèng kÝch khái tæ ®éi.", nCount))
		Msg2Team(format("Ng­êi ch¬i %s kh«ng ®ñ %d TiÒn §ång, tho¸t khái trß ch¬i.", GetName(), nCount))
		self:CancelPlayGame()
	return end
	
	ConsumeEquiproomItem(nCount, 4,417,1,-1);
	
	tbTeam[getn(tbTeam)+1] = {szPlayerName,PlayerIndex,nCount};
	self.WatingBet[szPlayerName] = nCount;
	if (getn(tbTeam) == GetTeamSize()) then
		for i = 1, GetTeamSize() do
			PlayerIndex = GetTeamMember(i);
				self:PlayerPlayGameDialog(tbTeam)
		end
	end
end

function tbAloneScriptGame:PlayerPlayGameDialog(tbTeam)
	local szTitle = "Mêi b¹n chän:";
	local tbOption = {};
		tinsert(tbOption, {"KÐo", self.PlayerBetGame, {self,tbTeam,1}})
		tinsert(tbOption, {"Bóa", self.PlayerBetGame, {self,tbTeam,2}})
		tinsert(tbOption, {"Bao", self.PlayerBetGame, {self,tbTeam,3}})
	CreateNewSayEx(szTitle, tbOption)
end

function tbAloneScriptGame:PlayerBetGame(tbTeam,nKind)
	local szPlayerName = GetName();
	local szKindGame = self.tbKindGame[nKind];
	local nNumPlayer = 0;
	
	if (self.StateGame[szPlayerName] == 0) then
		Talk(1, "", "O¼n tï x× ®· kÕt thóc råi do sai luËt hoÆc hÕt thêi gian 30 gi©y suy nghÜ!")
		self:ClearnData()
	return end
	
	self.StateGame[szPlayerName] = 3;
	
	for i = 1, getn(tbTeam) do
		if (tbTeam[i][1] == szPlayerName) then
			nNumPlayer = i;
			break
		end;
	end;
	
	tbTeam[nNumPlayer] = {tbTeam[nNumPlayer][1],tbTeam[nNumPlayer][2],tbTeam[nNumPlayer][3],nKind}
	
	local nNumBet = 0;
	for i = 1, getn(tbTeam) do
		if (tbTeam[i][4]) then
			nNumBet = nNumBet + 1;
		end
	Msg2Team("<color=yellow>"..GetName().."<color> ®ang qu¬ tay ra giê tíi l­ît b¹n.<pic=26>")
	end
	
	if (nNumBet == GetTeamSize()) then
		self:ResultGame(tbTeam)
	end
end

function tbAloneScriptGame:ResultGame(tbTeam)
	local nResult, tbPlayer = self:SystemResult(tbTeam)
	local nPlayerIndex = 0;
	if (nResult == 1) and (tbPlayer) then
		for i = 1, getn(tbTeam) do
			if (tbTeam[i][1] == tbPlayer[1]) then
				PlayerIndex = tbTeam[i][2];
					local nNum = tbTeam[i][3]*getn(tbTeam);
					tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,0,0,0}, nCount=nNum}, "")
				Msg2Player(format("Chóc mõng b¹n ®· ®¸nh o¼n tï x× th¾ng ®­îc %d TiÒn §ång",nNum))
				Msg2SubWorld(format("<color=green><pic=26>O¼n tï x×, <color=yellow>%s<color> ®¸nh %s vµ <color=yellow>%s<color> ®¸nh %s. KÕt qu¶ <color=yellow>%s<color> th¾ng, nhËn ®­îc %d TiÒn §ång.", tbPlayer[1],self.tbKindGame[tbPlayer[2]],tbPlayer[3],self.tbKindGame[tbPlayer[4]],tbPlayer[1],nNum))
			end
			self.StateGame[tbTeam[i][1]] = 4;
			self.TotalTime[tbTeam[i][1]] = 0;
		end
	elseif (nResult == 0) then
		Msg2SubWorld(format("<color=green><pic=26>O¼n tï x×, <color=yellow>%s<color> ®¸nh %s vµ <color=yellow>%s<color> ®¸nh %s. KÕt qu¶ hßa nhau, mçi bªn nhËn ®­îc %d TiÒn §ång.", tbPlayer[1],self.tbKindGame[tbPlayer[2]],tbPlayer[3],self.tbKindGame[tbPlayer[4]], tbTeam[1][4]))
		for i = 1, getn(tbTeam) do
			PlayerIndex = tbTeam[i][2];
				local nNum = tbTeam[i][3];
				tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,0,0,0}, nCount=nNum}, "")
			Msg2Player(format("B¹n ®· ®¸nh o¼n tï x× hßa nhËn l¹i ®­îc %d TiÒn §ång",nNum))
			self.StateGame[tbTeam[i][1]] = 4;
			self.TotalTime[tbTeam[i][1]] = 0;
		end
	end
	
end

function tbAloneScriptGame:SystemResult(tbTeam)
	if (getn(tbTeam) == 2) then
		if (tbTeam[1][4] == 1) then
			if (tbTeam[2][4] == 1) then
				return 0,{tbTeam[2][1],tbTeam[2][4],tbTeam[1][1],tbTeam[1][4]};
			elseif (tbTeam[2][4] == 2) then
				return 1,{tbTeam[2][1],tbTeam[2][4],tbTeam[1][1],tbTeam[1][4]};
			elseif (tbTeam[2][4] == 3) then
				return 1,{tbTeam[1][1],tbTeam[1][4],tbTeam[2][1],tbTeam[2][4]};
			end
		elseif (tbTeam[1][4] == 2) then
			if (tbTeam[2][4] == 1) then
				return 1,{tbTeam[1][1],tbTeam[1][4],tbTeam[2][1],tbTeam[2][4]};
			elseif (tbTeam[2][4] == 2) then
				return 0,{tbTeam[2][1],tbTeam[2][4],tbTeam[1][1],tbTeam[1][4]};
			elseif (tbTeam[2][4] == 3) then 
				return 1,{tbTeam[2][1],tbTeam[2][4],tbTeam[1][1],tbTeam[1][4]};
			end
		elseif (tbTeam[1][4] == 3) then
			if (tbTeam[2][4] == 1) then
				return 1,{tbTeam[2][1],tbTeam[2][4],tbTeam[1][1],tbTeam[1][4]};
			elseif (tbTeam[2][4] == 2) then
				return 1,{tbTeam[1][1],tbTeam[1][4],tbTeam[2][1],tbTeam[2][4]};
			elseif (tbTeam[2][4] == 3) then
				return 0,{tbTeam[2][1],tbTeam[2][4],tbTeam[1][1],tbTeam[1][4]};
			end
		end
	end
end

function OnTimer()
	local nCurTime = GetCurServerTime();
	local szPlayerName = GetName();
	local nTime = (tbAloneScriptGame.TotalTime[szPlayerName]+10)-nCurTime
	if nTime <= 0 then
		if (tbAloneScriptGame.StateGame[szPlayerName] == 2) or (tbAloneScriptGame.StateGame[szPlayerName] == 3) then
			local nCount = tbAloneScriptGame.WatingBet[szPlayerName];
			tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,0,0,0}, nCount=nCount}, "")
			Msg2Player(format("O¼n tï x× bÞ hñy, b¹n nhËn l¹i ®­îc %d TiÒn §ång", nCount))
		end
		tbAloneScriptGame.WatingBet[szPlayerName] = 0
		tbAloneScriptGame.TotalTime[szPlayerName] = 0;
		tbAloneScriptGame.StateGame[szPlayerName] = 0;
		StopTimer(TIMERID)
	end
end


function hkmpvipnn()
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng.",0);
		return
end
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4499,1}, nCount=5,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30191,1}, nCount=5,}, "test", 1);
end

function nhanxutest()
if CalcFreeItemCellCount() < 10 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng.",0);
		return
end
tbAwardTemplet:GiveAwardByList({tbProp = {4,417,1,1}, nCount=500,}, "test", 1);
end
