Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\_camnangdonghanh.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\quanlygame\\sukien\\baobuakeo\\head.lua");




function main()
dofile("script/global/quanlygame/lenhbaitanthuvip.lua")
--local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[1]
local szTitle =  "L�nh b�i h� tr� JxTinhVoLam Website www.JxTinhVoLam.Com ch�c ��i hi�p online vui v�!"

local tbOpt = 
{
{"Nh�n Trang B� �� Xanh Max ",trangbixanh},
{"Nh�n Trang B� HKMP T�y Ch�n", hkmpvip1},
{"Nh�n Nh�n V� Danh ", vodanh},
{"Nh�n Trang B� HKMP Ng�u Nhi�n", hkmpvipnn},
{"B�n + H�y V�t Ph�m",huyVPkhoa},
{"Ch�i Game O�n T� T�", choigamebai},
{"Nh�n �Q - HC - AB", HoangKimTanThu},
{"Nh�n Ti�n V�n", nhan500v},
{"Nh�n xu test", nhanxutest},
{"Nh�n T�i T�ch L�y T�ng Kim", tuitk},
{"T�y Ti�m N�ng ", TayCongDiem},
--{"L�u Th�ng Tin Nh�n V�t", savechongroll},
--{"Gi�i K�t Fix Th�n th�nh Ph�", FixLoiThanHanhPhuOK},
--{"��i Tho�i V�i GM ", Bil_ChatWithGM},
{"Tho�t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end

function nhan500v()
Earn(100000000)
Talk(1, "", "Nh�n th�nh c�ng 10000v.")
end

function TayCongDiem()

	Say("��i hi�p: Ng��i c�n g� � ta?." ,3,"T�y Ti�m N�ng Di ��ng./tayTNnhe","C�ng Ti�m N�ng Nhanh/TangDiemTiemNangNhanh","�� ta suy ngh� l�i. /0")
end


function huyVPkhoa()

	Say("��i hi�p: Ng��i c�n g� � ta?." ,3,"B�n Shop V�t Ph�m! /banshop","H�y B� V�t Ph�m! /Huydeltem","�� ta suy ngh� l�i. /0")
end


function tayTNnhe()
	local base_str = {35,20,25,30,20}			-- �����������������ֵ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ���ѷ���Ǳ�����ã�task(88)��������ֱ�ӽ��������������ȣ�
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
Talk(1, "", "<color=green>T�y ti�m n�ng th�nh c�ng!"); 
end

function TangDiemTiemNangNhanh()
	Say("Ng��i ph�i hi�u r� c�ch t�ng �i�m", 4,
			"S�c m�nh/add_prop_str",
			"Th�n ph�p/add_prop_dex",
			"Sinh kh�/add_prop_vit",
			"N�i c�ng/add_prop_eng")
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

function Huydeltem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
	end
GiveItemUI("H�y V�t Ph�m Kh�a", " ��i hi�p c�n h�y g� xin ��t v�o � d��i ��y! C� th� h�y nhi�u v�t ph�m c�ng l�c", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
local bilLogDelItemFileName = openfile("script/global/bil4i3n/bil4i3n_log/Huy_Vat_Pham_"..date("%d_%m_%Y")..".log", "a");
for i=1, nCount do
local nItemIndex = GetGiveItemUnit(i)
local strItem = GetItemName(nItemIndex)
RemoveItemByIndex(nItemIndex)
write(bilLogDelItemFileName, date("%H:%M:%S").."\t T�i Kho�n: "..GetAccount().."\tT�n Nh�n V�t: "..GetName().."\t  - �� H�y V�t Ph�m: "..strItem, "\n")
end
closefile(bilLogDelItemFileName)
Msg2Player("Thao t�c b�n v�t ph�m th�nh c�ng")
Talk(1, "", "<color=green> Ch�c m�ng ��i Hi�p �� h�y v�t ph�m kh�a th�nh c�ng!"); 
end



------------------------------------ NHAN TRANG BI XANH --------------------------

tbDoXanh =
{
[1]=
{
szName = "D�y chuy�n",
tbEquip =
{
{"To�n th�ch h�ng li�n",0,4,0},
{"L�c Ph� Th�y H� Th�n ph� ",0,4,1},
}
},
[2]=
{
szName = "�o gi�p",
tbEquip =
{
{"Th�t B�o C� Sa",0,2,0},
{"Ch�n V� Th�nh Y",0,2,1},
{"Thi�n Nh�n M�t Trang",0,2,2},
{"Gi�ng Sa B�o",0,2,3},
{"���ng Ngh� gi�p",0,2,4},
{"V�n L�u Quy T�ng Y",0,2,5},
{"Tuy�n Long b�o",0,2,6},
{"Long Ti�u ��o Y",0,2,8},
{"C�u V� B�ch H� trang",0,2,9},
{"Tr�m H��ng sam",0,2,10},
{"T�ch L�ch Kim Ph�ng gi�p",0,2,11},
{"V�n Ch�ng T� T�m Y",0,2,12},
{"L�u Ti�n Qu�n",0,2,13},
}
},
[3]=
{
szName = "�ai l�ng",
tbEquip =
{
{"Thi�n T�m Y�u ��i",0,6,0},
{"B�ch Kim Y�u ��i",0,6,1},
}
},
[4]=
{
szName = "Gi�y",
tbEquip =
{
{"C�u Ti�t X��ng V� Ngoa",0,5,0},
{"Thi�n T�m Ngoa",0,5,1},
{"Kim L� h�i",0,5,2},
{"Phi Ph�ng Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao tay",
tbEquip =
{
{"Long Ph�ng Huy�t Ng�c Tr�c",0,8,0},
{"Thi�n T�m H� Uy�n",0,8,1},
}
},
[6]=
{
szName = "N�n",
tbEquip =
{
{"T� L� m�o",0,7,0},
{"Ng� l�o qu�n",0,7,1},
{"Tu La Ph�t k�t",0,7,2},
{"Th�ng Thi�n Ph�t Qu�n",0,7,3},
{"Y�m Nh�t kh�i",0,7,4},
{"Tr�ch Tinh ho�n",0,7,5},
{"� T�m M�o",0,7,6},
{"Quan �m Ph�t Qu�n",0,7,7},
{"�m D��ng V� C�c qu�n",0,7,8},
{"Huy�n T� Di�n Tr�o",0,7,9},
{"Long Huy�t ��u ho�n",0,7,10},
{"Long L�n Kh�i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Ph�ng Tri�n S� ",0,7,13},
}
},
[7]=
{
szName = "V� kh� c�n chi�n",
tbEquip =
{
{"Huy�n Thi�t Ki�m",0,0,0},
{"��i Phong �ao",0,0,1},
{"Kim C� B�ng",0,0,2},
{"Ph� Thi�n K�ch",0,0,3},
{"Ph� Thi�n ch�y",0,0,4},
{"Th�n Nh�t Tr�m",0,0,5},
}
},
[8]=
{
szName = "Ng�c b�i",
tbEquip =
{
{"Long Ti�n H��ng Nang",0,9,0},
{"D��ng Chi B�ch Ng�c",0,9,1},
}
},
[9]=
{
szName = "V� kh� t�m xa",
tbEquip =
{
{"B� V��ng Ti�u",0,1,0},
{"To�i Nguy�t �ao",0,1,1},
{"Kh�ng T��c Linh",0,1,2},
}
},
[10]=
{
szName = "Nh�n",
tbEquip =
{
{"To�n Th�ch Gi�i Ch� ",0,3,0},
}
},
}
function trangbixanh()
	if CalcFreeItemCellCount() < 6 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 6 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
	end
local tbOpt = {}
for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = "L�c �� n�o anh em �i !";
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = "L�c �� n�o anh em �i !";
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
local tbOpt = {}
tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
tinsert(tbOpt, {"M�c", laydoxanh3, {nIndex, nType, 1}})
tinsert(tbOpt, {"Th�y", laydoxanh3, {nIndex, nType, 2}})
tinsert(tbOpt, {"H�a", laydoxanh3, {nIndex, nType, 3}})
tinsert(tbOpt, {"Th� ", laydoxanh3, {nIndex, nType, 4}})


tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = format("<npc>Ch�n h�:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 10, "S� l��ng:", {laydoxanh4, {nIndex, nType, nSeries}})
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
	"Ta bi�t r�i!/OnCancel",
	"B�n c� ch�c mu�n ��i tho�i tr�c ti�p v�i <color=green>Admin<enter><color=gold>==>l�u � c�c gamer c� h�nh vi spam tin nh�n hay x�c ph�m <color=green>=>Admin<color> trong l�c tr� chuy�n s� b� band nh�n v�t v� ip kh�i game v�nh vi�n..!<color>.",
	"Ch�c r�i!/BatDauChatGM",
	"Ta nh�m!/OnCancel",
	"<color=white>Hi�n t�i <color=Orange>GM<color> kh�ng tr�c tuy�n, phi�n b�n li�n l�c l�i sau, xin c�m �n!<color>",
	"Nh�p tin nh�n!",
	"<color=white><color=Orange>GameMaster<color> hi�n �ang trong cu�c tr� chuy�n v�i member, phi�n b�n li�n l�c l�i sau nh�!<color>",
	"<bclr=green><color=black>%s<bclr><color> <pic=139> ",
	"Tr� l�i l�i %s/TraLoiTinNhan",
	--"Xem th�ng tin c�a %s/#ThongTinNhanVatPM",
	"K�t th�c ��i tho�i./ResetStateChatWithGM",
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
Say("Thao t�c save nh�n v�t th�nh c�ng.",0)
end

function savechongroll()
	local tbDialog = 
{ 
"<color=green>Save nh�n v�t t�c l� l�u �� ��c nh�n v�t b�n hi�n t�i gi�ng nh� save game v�y tr�nh tr��ng h�p n�u c� r�i ro server b� ph� th� �� b�n s� ko m�t m�t g�.Th�ng th��ng server t� save t� ��ng n�n tr��ng h�p n�y ch� d�nh cho l�c kh�n c�p th�i nhe.",
"Ch�c ch�n r�i save ngay v� lu�n/savenhanvatnhanh",
"K�t th�c ��i tho�i/",
} 
CreateTaskSay(tbDialog)
end

function savenhanvatnhanh()
SaveNow();
Say("<color=green>Save nh�n v�t th�nh c�ng.",0)
end

function FixLoiThanHanhPhuOK()
                                                                                  local state = GetSkillState(739);
	if state == 1 then
                                                                                                                                                                     Say("�ang l�m nhi�m v� quan tr�ng kh�ng th� s� d�ng ch�c n�ng n�y.",0)
		else
FixLoiThanHanhPhuOOK()
	end
end



function FixLoiThanHanhPhuOOK()
local PlayerIndex = GetTaskTemp(246);
CallPlayerFunction(PlayerIndex, DisabledUseTownP, 0);
return 
CallPlayerFunction(PlayerIndex, Say, "Gi�i k�t th�nh c�ng b�n c� th� d�ng Th�n th�nh Ph�.", 0);
end


--===============================AB=====================
function NhanAB()
	if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
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
                {"Nga My Buff", hkvipnmbuff}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
        return 1 
end 

function hkvipnmc()
tbAwardTemplet:GiveAwardByList({tbProp = {0,36}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,37}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,38}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,39}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,40}, nCount=1,nQuality = 1,}, "test", 1);


end


function hkvipnmk()
tbAwardTemplet:GiveAwardByList({tbProp = {0,31}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,32}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,33}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,34}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,35}, nCount=1,nQuality = 1,}, "test", 1);


end

function hkvipnmbuff() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,41}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,42}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,43}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,44}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,45}, nCount=1,nQuality = 1,}, "test", 1);

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
tbAwardTemplet:GiveAwardByList({tbProp = {0,46}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,47}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,48}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,49}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,50}, nCount=1,nQuality = 1,}, "test", 1);

end

function hkviptyc()
tbAwardTemplet:GiveAwardByList({tbProp = {0,51}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,52}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,53}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,54}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,55}, nCount=1,nQuality = 1,}, "test", 1);

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
                               {"���ng M�n B�y", hkvipbay}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipbv()
tbAwardTemplet:GiveAwardByList({tbProp = {0,76}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,77}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,78}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,79}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,80}, nCount=1,nQuality = 1,}, "test", 1);

end


function hkvippt() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,81}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,82}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,83}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,84}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,85}, nCount=1,nQuality = 1,}, "test", 1);

end


function hkvippd() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,71}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,72}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,73}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,74}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,75}, nCount=1,nQuality = 1,}, "test", 1);

end


function hkvipbay() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,86}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,87}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,88}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,89}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,90}, nCount=1,nQuality = 1,}, "test", 1);

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
                {"Ng� ��c B�a", hkvipndb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipndc()
tbAwardTemplet:GiveAwardByList({tbProp = {0,56}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,57}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,58}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,59}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,60}, nCount=1,nQuality = 1,}, "test", 1);

end

function hkvipndd() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,61}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,62}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,63}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,64}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,65}, nCount=1,nQuality = 1,}, "test", 1);

end

function hkvipndb()
tbAwardTemplet:GiveAwardByList({tbProp = {0,66}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,67}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,68}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,69}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,70}, nCount=1,nQuality = 1,}, "test", 1);

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
tbAwardTemplet:GiveAwardByList({tbProp = {0,21}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,22}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,23}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,24}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,25}, nCount=1,nQuality = 1,}, "test", 1);

end

function hkviptvc() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,16}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,17}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,18}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,19}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,20}, nCount=1,nQuality = 1,}, "test", 1);

end

function hkviptvd() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,26}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,27}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,28}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,29}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,30}, nCount=1,nQuality = 1,}, "test", 1);

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
tbAwardTemplet:GiveAwardByList({tbProp = {0,11}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,12}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,13}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,14}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,15}, nCount=1,nQuality = 1,}, "test", 1);

end

function hkviptlb() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,6}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,7}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,8}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,9}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,10}, nCount=1,nQuality = 1,}, "test", 1);

end

function hkviptlq() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,1}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,2}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,3}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,4}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,5}, nCount=1,nQuality = 1,}, "test", 1);

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
tbAwardTemplet:GiveAwardByList({tbProp = {0,116}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,117}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,118}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,119}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,120}, nCount=1,nQuality = 1,}, "test", 1);

end

function hkvipvdk() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,121}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,122}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,123}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,124}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,125}, nCount=1,nQuality = 1,}, "test", 1);

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
tbAwardTemplet:GiveAwardByList({tbProp = {0,126}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,127}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,128}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,129}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,130}, nCount=1,nQuality = 1,}, "test", 1);

end

function hkvipclc() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,131}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,132}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,133}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,134}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,135}, nCount=1,nQuality = 1,}, "test", 1);

end

function hkvipclb() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,136}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,137}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,138}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,139}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,140}, nCount=1,nQuality = 1,}, "test", 1);

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
                {"Thi�n Nh�n B�a", hkviptnb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptnt() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,101}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,102}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,103}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,104}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,105}, nCount=1,nQuality = 1,}, "test", 1);

end

function hkviptnd() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,111}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,112}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,113}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,114}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,115}, nCount=1,nQuality = 1,}, "test", 1);

end

function hkviptnb() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,106}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,107}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,108}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,109}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,110}, nCount=1,nQuality = 1,}, "test", 1);

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
tbAwardTemplet:GiveAwardByList({tbProp = {0,91}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,92}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,93}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,94}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,95}, nCount=1,nQuality = 1,}, "test", 1);

end

function hkvipcbb() 
tbAwardTemplet:GiveAwardByList({tbProp = {0,96}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,97}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,98}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,99}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,100}, nCount=1,nQuality = 1,}, "test", 1);

end




function HoangKimTanThu()
if CalcFreeItemCellCount() < 30 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 30 � tr�ng!")
		return
	end 
	Say("Xin m�i ch�n trang b� c�n test",5,"Trang B� An Bang/hoanmytanthu","Trang B� Nhu T�nh/nhutinhtanthu","Trang B� ��nh Qu�c/dinhquoctanthu","Trang B� Hi�p C�t/hiepcottanthu","K�t th�c ��i tho�i/no")
end

function hoanmytanthu()                
AddGoldItem(0,164)
AddGoldItem(0,165)
AddGoldItem(0,166)
AddGoldItem(0,167)
Msg2Player("Nh�n ���c Trang B� An Bang!")
end

function nhutinhtanthu()
		Talk(1, "", "Trang b� nhu t�nh t�m th�i ch�a cho ph�p nh�n free")
		return
--AddGoldItem(0,190)
--AddGoldItem(0,191)
--AddGoldItem(0,192)
--AddGoldItem(0,193)
--Msg2Player("Nh�n ���c Trang B� Nhu T�nh")
end

function dinhquoctanthu()
AddGoldItem(0,159)
AddGoldItem(0,160)
AddGoldItem(0,161)
AddGoldItem(0,162)
AddGoldItem(0,163)
Msg2Player("Nh�n ���c Trang B� ��nh Qu�c!")
end

function hiepcottanthu()
AddGoldItem(0,186)
AddGoldItem(0,187)
AddGoldItem(0,188)
AddGoldItem(0,189)
Msg2Player("Nh�n ���c Trang B� Hi�p C�t!")
end




------------------------------------------------------------------------

function choigamebai()
tbAloneScriptGame:DialogMain()
end


function tbAloneScriptGame:DialogMain()
	local szTitle = "Xin ch�o c�c h� c� mu�n th� tr� n�y hay kh�ng?";
	local tbOption = {};
		tinsert(tbOption, {"Ch�i O�n T� X�", self.StartGame, {self}})
		tinsert(tbOption, {"Kh�ng Ch�i."})
	CreateNewSayEx(szTitle, tbOption)
end

function tbAloneScriptGame:StartGame()
	local szCaptain = GetName();
	local nTeamSize = GetTeamSize();
	if (nTeamSize ~= 2) then
		Talk(1, "", "Ng��i ch�i ph�i l�p t� ��i ri�ng v� ph�i c� �� 2 ng��i trong m�t t� ��i.")
	return end
	
	if (IsCaptain() ~= 1) then
		Talk(1, "", "Ng��i ch�i ph�i l� ��i tr��ng c�a m�t t� ��i.")
	return end
	
	self.StateGame[szCaptain] = self.StateGame[szCaptain] or 0
	
	if (self.StateGame[szCaptain] > 0) then
		Talk(1, "", "�ang chu�n b� O�n T� T� m� ho�c h�t 30 gi�y c�a v�n tr��c m�i ���c ch�i ti�p n�.")
	return end
	
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney <= 0) then
		Talk(1, "", "Tr�n ng��i b�n kh�ng c� Ti�n ��ng, kh�ng th� b�t ��u.")
	return end
	
	g_AskClientNumberEx(1, nMoney, "Nh�p s� ti�n c��c:", {self.SetMoneyGame, {self}})
end

function tbAloneScriptGame:SetMoneyGame(nCount)
	local szCaptain = GetName();
	Msg2Team(format("<color=green><pic=7>Tr��ng nh�m <color=yellow>%s<color> �� kh�i ��ng O�n T� T�!<pic=7>",szCaptain))
	
	local nPlayerOld = PlayerIndex;
	local tbTeam = {};
	for i = 1, GetTeamSize() do
		PlayerIndex = GetTeamMember(i);
			local szName = GetName();
				self.StateGame[szName] = 1;
				self.TotalTime[szName] = GetCurServerTime();
				SetTimer(30*18, TIMERID)
			local szTitle = format("Ti�n c��c �� tham gia o�n t� x� l�n n�y l� <color=yellow>%d Ti�n ��ng<color>, b�n c� mu�n tham gia kh�ng?", nCount);
			local tbOption = {};
				tinsert(tbOption, {"Tham Gia O�n T� T�", self.PlayerPlayGame, {self,nCount,tbTeam}})
				tinsert(tbOption, {"H�y b�.", self.CancelPlayGame, {self}})
			CreateNewSayEx(szTitle, tbOption)
		PlayerIndex = nPlayerOld;
	end
end

function tbAloneScriptGame:CancelPlayGame()
	local szPlayerName = GetName();
	Msg2Team(format("<color=green><pic=3> <color=yellow>%s<color> t� ch�i tham gia n�u b�n �� c��c th� 30 gi�y sau b�n ���c tr� l�i ti�n c��c!", szPlayerName))
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
		Talk(1, "", "O�n t� x� �� k�t th�c r�i do sai lu�t ho�c h�t th�i gian 30 gi�y suy ngh�!")
		self:ClearnData()
	return end
	
	self.StateGame[szPlayerName] = 2;
	
	if (GetTeamSize() ~= 2) then
		Talk(1, "", "T� ��i kh�ng �� ng��i, b�t bu�c ph�i ��ng 2 ng��i trong t� ��i.")
		self:ClearnData()
	return end
	
	Msg2Team(format("<pic=20> <color=yellow>%s<color> �� tham gia O�n t� x�!", szPlayerName))
	
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney < nCount) then
		Talk(1, "", format("B�n kh�ng �� %d Ti�n ��ng �� tham gia, h� th�ng k�ch kh�i t� ��i.", nCount))
		Msg2Team(format("Ng��i ch�i %s kh�ng �� %d Ti�n ��ng, tho�t kh�i tr� ch�i.", GetName(), nCount))
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
	local szTitle = "M�i b�n ch�n:";
	local tbOption = {};
		tinsert(tbOption, {"K�o", self.PlayerBetGame, {self,tbTeam,1}})
		tinsert(tbOption, {"B�a", self.PlayerBetGame, {self,tbTeam,2}})
		tinsert(tbOption, {"Bao", self.PlayerBetGame, {self,tbTeam,3}})
	CreateNewSayEx(szTitle, tbOption)
end

function tbAloneScriptGame:PlayerBetGame(tbTeam,nKind)
	local szPlayerName = GetName();
	local szKindGame = self.tbKindGame[nKind];
	local nNumPlayer = 0;
	
	if (self.StateGame[szPlayerName] == 0) then
		Talk(1, "", "O�n t� x� �� k�t th�c r�i do sai lu�t ho�c h�t th�i gian 30 gi�y suy ngh�!")
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
	Msg2Team("<color=yellow>"..GetName().."<color> �ang qu� tay ra gi� t�i l��t b�n.<pic=26>")
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
				Msg2Player(format("Ch�c m�ng b�n �� ��nh o�n t� x� th�ng ���c %d Ti�n ��ng",nNum))
				Msg2SubWorld(format("<color=green><pic=26>O�n t� x�, <color=yellow>%s<color> ��nh %s v� <color=yellow>%s<color> ��nh %s. K�t qu� <color=yellow>%s<color> th�ng, nh�n ���c %d Ti�n ��ng.", tbPlayer[1],self.tbKindGame[tbPlayer[2]],tbPlayer[3],self.tbKindGame[tbPlayer[4]],tbPlayer[1],nNum))
			end
			self.StateGame[tbTeam[i][1]] = 4;
			self.TotalTime[tbTeam[i][1]] = 0;
		end
	elseif (nResult == 0) then
		Msg2SubWorld(format("<color=green><pic=26>O�n t� x�, <color=yellow>%s<color> ��nh %s v� <color=yellow>%s<color> ��nh %s. K�t qu� h�a nhau, m�i b�n nh�n ���c %d Ti�n ��ng.", tbPlayer[1],self.tbKindGame[tbPlayer[2]],tbPlayer[3],self.tbKindGame[tbPlayer[4]], tbTeam[1][4]))
		for i = 1, getn(tbTeam) do
			PlayerIndex = tbTeam[i][2];
				local nNum = tbTeam[i][3];
				tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,0,0,0}, nCount=nNum}, "")
			Msg2Player(format("B�n �� ��nh o�n t� x� h�a nh�n l�i ���c %d Ti�n ��ng",nNum))
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
			Msg2Player(format("O�n t� x� b� h�y, b�n nh�n l�i ���c %d Ti�n ��ng", nCount))
		end
		tbAloneScriptGame.WatingBet[szPlayerName] = 0
		tbAloneScriptGame.TotalTime[szPlayerName] = 0;
		tbAloneScriptGame.StateGame[szPlayerName] = 0;
		StopTimer(TIMERID)
	end
end


function hkmpvipnn()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng.",0);
		return
end
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4499,1}, nCount=5,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30191,1}, nCount=5,}, "test", 1);
end

function nhanxutest()
if CalcFreeItemCellCount() < 10 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng.",0);
		return
end
tbAwardTemplet:GiveAwardByList({tbProp = {4,417,1,1}, nCount=500,}, "test", 1);
end



function vodanh() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Nh�n V� Danh", vodanh1}, 

                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
        return 1 
end 
function vodanh1()
tbAwardTemplet:GiveAwardByList({tbProp = {0,141}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {0,142}, nCount=1,nQuality = 1,}, "test", 1);
end


function tuitk()
if CalcFreeItemCellCount() < 10 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng.",0);
		return
end
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4415,1}, nCount=500,}, "test", 1);
end

