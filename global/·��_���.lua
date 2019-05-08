IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\global\\bil4i3n\\bil4i3n_awardplayerstop.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_diemdanhhangngay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_testgame.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\_event\\api.lua")
Include("\\script\\missions\\racegame\\dailog.lua")
Include("\\script\\missions\\huashanqunzhan\\dailog.lua")
Include("\\script\\missions\\dangboss\\npcdailog.lua")
Include("\\script\\_missions\\tieu_bang_chien\\api.lua")
Include("\\script\\_extension\\award_code_like_share.lua")
Include("\\script\\_extension\\award_top_race.lua")
--Include("\\script\\event\\bingo_machine\\bingo_machine_gs.lua")
--Include("\\script\\event\\great_night\\great_night_head.lua")
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")

bilTanThuGiftCode = "727"
	-- M� th��ng t�n th� ch� T�n th� quan
	-- script\global\bil4i3n\bil4i3n_tanthuquan.lua


function resetboxVNG()
	return ResetBox:ShowDialog()
end

function bilReceived_Item_Lost(bil_In_1)
	local bil_1 = {
		{{6,1,1266,1,0,0,0}, "Th�n H�nh Ph�"},
		--{{6,1,4259,1,0,0,0}, "C�m Nang ��ng H�nh"},
	}
	if bil.False(bil_1[bil_In_1]) then
		return Msg2Player("Ph�t sinh l�i nh�n l�i v�t ph�m, li�n h� v�i GM �� ���c gi�i quy�t!")
	end
	local bil_2 = AddItem(unpack(bil_1[bil_In_1][1]))
	SetItemBindState(bil_2, -2)
	return Msg2Player(bil.C(10, "Nh�n l�i "..bil_1[bil_In_1][2].." th�nh c�ng!"))
end

function Bil_DelItem()
	return Say("B�n c� ch�c mu�n <color=red>h�y v�t ph�m<color> ch�, h�y suy ngh� k�!<enter><color=0xffff5f>T�t c� c�c v�t ph�m ���c y�u c�u h�y s� b� h�y b� <enter>ho�n to�n b�i h� th�ng, b�t k� l� v�t ph�m n�o!", 2, "Ta ngh� k� r�i!/Bil_DelItem_Sure", "Th�i, ta nh�m!/OnCancel")
end

function Bil_DelItem_Sure()
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong   vi�c h�y v�t ph�m!", "bilDisposeConfirm", "OnCancel", 1);
end

function bilDisposeConfirm(nCount)
	local bilLogDelItemFileName = openfile("script/global/bil4i3n/bil4i3n_log/del_item_"..date("%d_%m_%Y")..".log", "a");
	
	local bil_3_G, bil_3_D, bil_3_P, bil_3_L, bil_3_S
	local Count_ItemRemove = 0
	
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		
		bil_3_G, bil_3_D, bil_3_P, bil_3_L, bil_3_S = GetItemProp(nItemIndex)
		
		if bil_3_G ~= 4 and bil_3_D ~= 417 then
			RemoveItemByIndex(nItemIndex)
			Msg2Player("�� h�y v�t ph�m [<color=green>"..strItem.."<color>]")
			
			Count_ItemRemove = Count_ItemRemove + 1
		end

		write(bilLogDelItemFileName, date("%H:%M:%S").."\t Account: "..GetAccount().."\tName: "..GetName().."\t DelItem: "..strItem, "\n")
		
	end
	closefile(bilLogDelItemFileName)
	Msg2Player("Thao t�c h�y v�t ph�m th�nh c�ng")
	Talk(1, "", "Thao t�c th�nh c�ng, ki�m tra l�i!<enter>�� h�y<color=yellow> "..Count_ItemRemove.."<color> v�t ph�m!");	
end

function main()
dofile("script/global/·��_���.lua");

	local bilTbOp = {}	
	
	--local bilAccGetItemSec = strsub(GetAccount(), 1, 21)
	--if bilAccGetItemSec == "accnameclonefornvdatau" then 
	--	tinsert(bilTbOp, "Nh�n trang b� Clone/#bilGetItem2AccountClone(-1)")
		--tinsert(bilTbOp, "-----------------------------------------/OnCancel")
	--end
	
	--if ConsumeItem(3, 0, 6, 1, 1266, -1) < 1 and GetTask(5931) == 0 then
		--tinsert(bilTbOp, "Gi�p t�i h� nh�n l�i Th�n H�nh Ph�/#bilReceived_Item_Lost(1)")
	--end
	
	
	
	--if ConsumeItem(3, 0, 6, 1, 4259, -1) < 1 then
		--tinsert(bilTbOp, "Gi�p t�i h� nh�n l�i C�m nang ��ng h�nh/#bilReceived_Item_Lost(2)")
	--end
                           local nSubWorldID = GetWorldPos();
	if m_TieuBangChien:api_Station(1) and (nSubWorldID ~= 53) then
	tinsert(bilTbOp, "Tham Gia ��i Chi�n Ti�u Bang H�i/#m_TieuBangChien:api_Station()")
	end
	--tinsert(bilTbOp, "Nh�p Trang B� Test M�i/nhantrangbitest")
	--tinsert(bilTbOp, "Nh�n Nguy�n Li�u L�m Event Free/nguyenlieufree")
	--tinsert(bilTbOp, "Nh�p Giftcode Vip Nh�n Full HKMP/dieukiennhancode")
	--tinsert(bilTbOp, "Nh�n Nh�p Giftcode Like-Share FB/#e_code_likeshare.main()")
	--tinsert(bilTbOp, "Quy T�c Gi�i H�n Acc M�i 28-11/quytacgioihan")
	--tinsert(bilTbOp, "G�i Ti�n V�o �� �i Li�n ��u/guitientientrang")
	--tinsert(bilTbOp, "Nh�n Nh�c V��ng Ki�m/NhapPassReload")
	--tinsert(bilTbOp, "Nh�n X�ng Hi�u �� S�i ���c AutoKid/FixAuTo")

	tinsert(bilTbOp, "B�o Danh Chi�n Tr��ng T�ng Kim/gopos_step2battleok")
	tinsert(bilTbOp, "�ua Ng�a Sa M�c/duaheosamac")
	tinsert(bilTbOp, "��n ��i Chi�n ��u Tr��ng/dendautruong100")
	tinsert(bilTbOp, "Mua Nh�t K� C�n Kh�n Ph�/muanhatkyok")
	tinsert(bilTbOp, "�i ��n Chi�n Long ��ng/didenchienlong")
	tinsert(bilTbOp, "Nh�n C�c Lo�i L�nh B�i/nhandalenhbai1")
	tinsert(bilTbOp, "Nh�n Chi�n M�/nhancacloaingua1")


	--tinsert(bilTbOp, "��n ��i Chi�n Ch�n Tinh/dendautruong100")
	--tinsert(bilTbOp, "G�i Ti�n V�o Ti�n Trang/guitientientrang")
	--tinsert(bilTbOp, "Nh�n Ki�n Thi�t L� Bao/kienthietlebao")
	--tinsert(bilTbOp, "Nh�n L�nh B�i T�n Th�/nhanttp1")


	--tinsert(bilTbOp, "Tham Gia Di�t Ch�n Tinh/thamgiadietchan")
	--tinsert(bilTbOp, "Gi�i K�t Fix Th�n th�nh Ph�/FixLoiThanHanhPhuOK")
	--tinsert(bilTbOp, "Nh�n th��ng �ua TOP/e_TopRace_Main")
	--tinsert(bilTbOp, "T�i h� ��n �� �i�m danh h�ng ng�y/bilDailyMuster")
	--tinsert(bilTbOp, "T�i h� ��n �� nh�n danh hi�u Th�nh Ch�/bilAwardCityWar")
	-- tinsert(bilTbOp, "T�i h� ��n �� Xem ph�n th��ng �ua TOP v�a r�i/#bilGetAwardTOPRace(0)")
	--tinsert(bilTbOp, "Nh�n th��ng Danh hi�u v� v�ng s�ng tu�n v�a r�i/bilGetAwardTOPPlayers")
	--tinsert(bilTbOp, "��ng k� x�a M�t kh�u r��ng/resetboxVNG")
	tinsert(bilTbOp, "K�t th�c ��i tho�i/bil.OnCancel")
	--tinsert(bilTbOp, "AD/NhapPassReload")
	--tinsert(bilTbOp, "�/fixfix")
	Say("<color=Orange>L� quan: <color>V� L�m xin ch�o c�c v� anh h�ng h�o ki�t �� t� h�p v� ��y chung vui c�ng s�n ch�i PK ��m ch�t VLTK CTC !", getn(bilTbOp), bilTbOp)

end

function fixfix()
Bil_ReLoadScript_MultiGamerSVWithLinkInput()
end

function didenchienlong()
                          local nSubWorldID = GetWorldPos();
	if  (nSubWorldID ~= 53) then
Say("<color=green>Ch� di chuy�n l�n chi�n long ��ng ���c t� L� Quan t�i Ba L�ng Huy�n.",0)
return
end

	Say("H�y ch�n c�ng m� b�n mu�n!", 4, "C�ng V� Di S�n/cong1","C�ng T��ng V�n ��ng/cong2","C�ng La Ti�u S�n/cong3", "��i m�t l�t �i!/OnCancel")
end

function cong1()
	Msg2Player("�� ��n Chi�n Long ��ng!")
	NewWorld(959, 1418, 3005);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
end
function cong2()
	Msg2Player("�� ��n Chi�n Long ��ng!")
	NewWorld(959, 1548, 2995);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
end
function cong3()
	Msg2Player("�� ��n Chi�n Long ��ng!")
	NewWorld(959, 1701, 3152);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
end

function tuyetanh()
AddItem(0,10,5,3,0,0,0)
end

function ovan()
AddItem(0,10,5,6,0,0,0)
end

function chieudatanthu()
AddItem(0,10,5,10,0,0,0)
end

function xichthotanthu()
AddItem(0,10,5,7,0,0,0)
end

function nhandalenhbai1()
	local tbOpt =
	{
                                                                                   {"�� gi�m  v� t�ng c�p", datanggiamdoxanh},
                                                                                   {"S�t Th� Gi�n v��t �i", SatThuGian},  
                                                                                   {"Nh�n KCL c�ng th�nh", khieuchienlenh},  
	{"Vi�m �� L�nh", lbviemde},
	{"Phong L�ng �� - Th�y T�c ", lbphonglangdo},
                                                                                  --{"Vi S�n ��o ", lbvisondao},
                                                                                  {"Thi�n C� L�nh Boss", lbthienco},
                                                                                 {"M�c B�c Th�o Nguy�n ", lbmanbac},
                                                                                 {"TTP - TDP - LB T�n Th�", thanthanhp},
                                                                                  -- {"L�nh B�i T�n Th�", lbtanthuok},   
                                                                                   ---{"L�nh B�i T�n Th�", NhapDuongDanFileCanReLoadVIP},     
	{"Tho�t"},
	}
	CreateNewSayEx("<npc>��i hi�p c�n g� ?", tbOpt)
end


function datanggiamdoxanh()
AddEventItem(415)
AddEventItem(416)
AddItem(6,1,15,1,0,0)
Say("<color=green>Nh�n th�nh c�ng h�y ��n th� r�n th�nh th� �� h� t�ng c�p �� n�n v� �o c�a �� xanh..",0)
end

function thanthanhp()
tbAwardTemplet:GiveAwardByList({{szName="LB",tbProp={6,1,1266,1,0},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="LB",tbProp={6,1,438,1,0},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="LB",tbProp={6,1,4360,1,0},nCount=1,nBindState=-2},}, "test", 1);
end



function NhapDuongDanFileCanReLoadO(Link)
		local ReloadScript = LoadScript(Link);
		if (FALSE(ReloadScript )) then
			Msg2Player("Xu�t hi�n l�i, kh�ng th� Reload!<enter><color=yellow>"..Link.."");
		else
			Msg2Player("<color=green>Reload th�nh c�ng Script<color><enter><color=blue>"..Link.."");
		end
end

function NhapDuongDanFileCanReLoadVIP()
	return AskClientForString("NhapDuongDanFileCanReLoadO", "", 1, 500, "<#>Nh�p ���ng d�n")
end



function nhancacloaingua1()
	local tbOpt =
	{
                                                                                --    {"Nh�n 10000v L��ng", nhan500v},
                                                                                    {"Nh�n Ng�a Tuy�t �nh", tuyetanh},
                                                                                 {"Nh�n Ng�a Chi�u D�", chieudatanthu},
	  {"Nh�n Ng�a X�ch Th�", xichthotanthu},
                                                                                    {"Nh�n Ng�a � V�n ��p tuy�t", ovan},
                                                                                    {"Nh�n Ng�a Phi V�n", phivanok},

	  {"Tho�t"},
	}
	CreateNewSayEx("<npc>��i ca ��i t� c�n g� � ?", tbOpt)
end

function tuyetanh()
AddItem(0,10,5,3,0,0,0)
end

function ovan()
AddItem(0,10,5,6,0,0,0)
end

function chieudatanthu()
AddItem(0,10,5,10,0,0,0)
end

function xichthotanthu()
AddItem(0,10,5,7,0,0,0)
end

function phivanok()
AddItem(0,10,8,1,0,0,0)
end

function datanggiamdoxanh()
AddEventItem(415)
AddEventItem(416)
AddItem(6,1,15,1,0,0)
Say("<color=green>Nh�n th�nh c�ng h�y ��n th� r�n c�c th�nh th� �� th�ng gi�m ��ng c�p �� xanh c�a c�c h�..",0)
end




function khieuchienlenh()
AddItem(6,1,2006,1,0,0)
Say("<color=green>Nh�n th�nh khi�u chi�n l�nh v�t ph�m �� b�o danh c�ng th�nh..",0)
end

function lbviemde()
AddItem(6,1,1617,1,0,0,0)
AddItem(6,1,1604,1,0,0,0)
end

function lbmanbac()
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1448,1,0,0,0}, nCount=1, nExpiredTime=30,}, "test", 1);
end

function lbvisondao()
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,2432,1,0,0,0}, nCount=1, nExpiredTime=1440,}, "test", 1);
end

function congthanhlenh()
AddItem(6,1,2395,1,0,0,0)
end

function lbthienco()
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1091,1,0,0,0}, nCount=1, nExpiredTime=1440, nBindState=-2}, "test", 1);
end

function lbphonglangdo()
AddItem(6,1,2745,1,0,0,0)
AddEventItem(489)
end

function SatThuGian()
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 		
end

function lbtanthuok()
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4360,1,0,0,0}, nCount=1, nBindState=-2}, "test", 1);
end


function muanhatkyok()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","C�n c�.<color=red> 100 Ti�n ��ng ��i hi�p kh�ng mang �� ..") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>10<color> � tr�ng")
		end
                         local nhatky1 = "script/global/bil4i3n/bil4i3n_log/muanhatky.log"
	local nhatky2 = openfile(nhatky1  , "a");
	 write(nhatky2, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mua 1 Nhat Ky\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(nhatky2)
ConsumeEquiproomItem(100,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4357,1,0,0,0}, nCount=1, nBindState=-2}, "test", 1);
Msg2SubWorld(" <color=green>"..GetName().."<color=cyan> Mua 1 Nh�t K� Th�nh C�ng!")				

end

function nhanttp1()
tbAwardTemplet:GiveAwardByList({{szName="�� ngh�",tbProp={6,1,1266,1,0},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="�� ngh�",tbProp={6,1,438,1,0},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="�� ngh�",tbProp={6,1,4360,1,0},nCount=1,nBindState=-2},}, "test", 1);
end

function kienthietlebao()
	local nBuildFund = 5000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Say("Ch� c� bang ch� m�i nh�n ���c l� bao n�y.",0);
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Say("Ch� c� bang ch� m�i nh�n ���c l� bao n�y.",0);
		return
	end
tbAwardTemplet:GiveAwardByList({{szName="L� bao",tbProp={6,1,30217,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("<pic=150>Bang Ch� <color=green>"..GetName().."<color=cyan> nh�n ki�n thi�t l� bao!")				
end



function quytacgioihan()
local szTitle = "<npc><enter><color=cyan>Ba L�ng Huy�n 4acc/1IP<enter>T�ng Kim 4acc/1IP<enter>T�t c� c�c th�nh th� th�n tr�n kh�c 4Acc/1IP<enter>T�c l� 1 nh� hay 1 n�t s�i 1 m�ng th� c� th� log 12Acc/1IP v�i �i�u ki�n<enter>Ph�i �� 4Acc � Ba L�ng Huy�n - 4Acc T�ng Kim - 4Acc � b�t c� b�n �� n�o c�n l�i.<enter>Nghi�m c�m k�o xe 1 m�y tr�n 3 acc s� b� band nick v�nh vi�n."
		local Opt = 
		{	
			{"Ok ta �� hi�u quy t�c",},
		}
		CreateNewSayEx(szTitle,Opt)
end

function gopos_step2battleok()
                                                                                  local state = GetSkillState(739);
	if state == 1 then
                                                                                                                                                                     Say("Ng��i �ang c� g� �� b�t th��ng ��nh �n gian ta �.",0)
		else
Say ( "T�ng kim l� m�t s�n ch�i so t�i c�ng b�ng nghi�m c�p k�o xe post �i�m.", 3, "V�o �i�m b�o danh phe T�ng (T)/#DoRescriptFunc(1)", "V�o �i�m b�o danh phe Kim (K)/#DoRescriptFunc(2)","Ta kh�ng mu�n �i./no" );
end
end

function DoRescriptFunc(nSel)
	local tbsongjin_pos = {1541, 3178};	--�η������
	local szstr = "Phe T�ng (T)";
	if (nSel == 2) then
		tbsongjin_pos = {1570, 3085};
		szstr = "Phe Kim (K)";
	end;
	szstr = ""
	if ( GetLevel() >= 40 and GetLevel() < 80 ) then
		NewWorld( 323, tbsongjin_pos[1], tbsongjin_pos[2]);
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim S� C�p" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		NewWorld( 324, tbsongjin_pos[1], tbsongjin_pos[2]);
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Trung C�p" );
	else
		NewWorld( 325, tbsongjin_pos[1], tbsongjin_pos[2]);
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Cao C�p" );
	end
end


function duaheosamac()
NewWorld(1,1582,3191)
end

function thamgiadietchan()
NewWorld(176,1615,3229)
end


function dendautruong100()
--LoadScript("\\script\\skill\\tangmen.lua")
--ReloadSkill("\\script\\skill\\tangmen.lua")
NewWorld(176,1615,3229)

--NewWorld(2,2603,3594)
end

function NhapPassReload()
if CalcFreeItemCellCount() < 10 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y m�.",0);
		return 1;
end
AskClientForString("checkpassGM", "", 1, 50, "Pass Nhan");
end




function checkpassGM(strings)	
	if strings=="113344" then ---------------Ma code open sv opensv
--AddMagic(1208,20)
--AddMagic(160,50)
	--SetFightState(0)
	--SetCamp(6)
	--SetCurCamp(6)

	--PlayerFunLib:AddSkillState(966,6,3,46656000,1)
ViewNameCityOwner()


		else
		Say("b�n nh�p pass kh�ng ch�nh x�c nh�p sai nhi�u l�n h� th�ng s� t� x�a nh�n v�t v� ch�n ip ngay l�p t�c.",0);

	end
end







function ViewNameCityOwner()

		Msg2Player(" 1<color=green>"..GetCityOwner(7).."<color>")
		Msg2Player(" 1<color=green>"..GetCityOwner(4).."<color>")
		Say("<color=yellow>H�m nay l� chi�n tr��ng giao chi�n Thi�n T� gi�a 2 bang<color=green> "..GetCityOwner(7).."v.s <color=green>"..GetCityOwner(4).."<color=yellow> ng��i mu�n tham gia ph�i c� l�nh b�i xin t� bang ch� 1 trong 2 bang tr�n..", 0);

	end


function NhapDuongDanFileCanReLoadO(Link)
		local ReloadScript = LoadScript(Link);
		if (FALSE(ReloadScript )) then
			Msg2Player("Xu�t hi�n l�i, kh�ng th� Reload!<enter><color=yellow>"..Link.."");
		else
			Msg2Player("<color=green>Reload th�nh c�ng Script<color><enter><color=blue>"..Link.."");
		end
end

function NhapDuongDanFileCanReLoadVIP()
	return AskClientForString("NhapDuongDanFileCanReLoadO", "", 1, 500, "<#>Nh�p ���ng d�n")
end




function anbangok()
--tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch� ",tbProp={0,214},nCount=1,nQuality = 1,nBindState=-2,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch� ",tbProp={0,215},nCount=1,nQuality = 1,nBindState=-2,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch� ",tbProp={0,214},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch� ",tbProp={0,215},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang M�n V� M�n Thi�n",tbProp={0,76},nCount=11,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="S�m Ho�ng Phi Tinh �o�t H�n",tbProp={0,81},nCount=1,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n ��n Ch� Phi �ao",tbProp={0,71},nCount=1,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang ��nh T�m Ng�ng Th�n Ph�",tbProp={0,77},nCount=20,nQuality = 1,nExpiredTime=21600},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang H�n Gi�o Y�u Th�c",tbProp={0,83},nCount=15,nQuality = 1,nExpiredTime=21600,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n Huy�n Thi�n B�ng H�a B�i",tbProp={0,74},nCount=1,nQuality = 1,nExpiredTime=21600,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="S�ch 1",tbProp={6,1,22,1,0},nCount=1,nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="S�ch 2",tbProp={6,1,26,1,0},nCount=1,nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Phi V�n",tbProp={0,10,7,1,0,0,0},nCount=1,},}, "test", 1);
--	SetFaction("cuiyan")       			--��Ҽ�������
	--SetCamp(4)
	--SetCurCamp(4)
	--SetLastFactionNumber(5)
--	PlayerFunLib:AddSkillState(966,5,3,46656000,1)
--PlayerFunLib:AddSkillState(966,6,3,46656000,1)--18*60*60*24*30=46656000 30��--tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,818,1},nCount=1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Kim Ti Ch�nh H�ng C� Sa",tbProp={0,2},nCount=1,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng Gi�ng Ma Gi�i �ao",tbProp={0,1},nCount=1,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch� ",tbProp={0,214},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch� ",tbProp={0,215},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng Gi�ng Ma Gi�i �ao",tbProp={0,11},nCount=11,nQuality = 1,},}, "test", 1);



--tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,819,1},nCount=1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,820,1},nCount=1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,821,1},nCount=1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,822,1},nCount=1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,823,1},nCount=1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,824,1},nCount=1,nExpiredTime=43200,},}, "test", 1);


--tbAwardTemplet:GiveAwardByList({{szName="Ma Th� Huy�t Ng�c Th�t S�t B�i",tbProp={0,114},nCount=5,nQuality = 1,nExpiredTime=43200,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="V� Giang � Thi�n Ki�m",tbProp={0,163},nCount=15,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V� Giang � Thi�n Ki�m",tbProp={0,115},nCount=7,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V� Giang � Thi�n Ki�m",tbProp={0,426},nCount=2,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V� Giang � Thi�n Ki�m",tbProp={0,126},nCount=2,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={6,1,4357,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={6,1,2126,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,417,1,1,0},nCount=200,},}, "test", 1);


--tbAwardTemplet:GiveAwardByList({{szName="U Lung M�c Th� Nhuy�n L�",tbProp={0,214},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="U Lung M�c Th� Nhuy�n L�",tbProp={0,215},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


--tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,826,1,0,0,0},nCount=1,nExpiredTime=10080},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,819,1,0,0,0},nCount=1,nExpiredTime=10080},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,238,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,239,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,240,1,1,0},nCount=1,},}, "test", 1);








                                                                     --      DelMagic(732, 20)
                                                                          --      DelMagic(733, 20)
	--SetFightState(0)
	--SetCamp(1)
	--SetCurCamp(1)
--DisabledUseTownP(0)
--tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,10,7,1,0,0,0},nCount=1,nExpiredTime=21600},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="V� Giang � Thi�n Ki�m",tbProp={0,116},nCount=5,nQuality = 1,nExpiredTime=10080},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V� Giang � Thi�n Ki�m",tbProp={0,424},nCount=1,nQuality = 1,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="V� Giang � Thi�n Ki�m",tbProp={0,31},nCount=10,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V� Giang � Thi�n Ki�m",tbProp={0,190},nCount=3,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V� Giang � Thi�n Ki�m",tbProp={0,76},nCount=5,nQuality = 1,nExpiredTime=10000},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,836,1,0,0,0},nCount=1,nExpiredTime=21600},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,837,1,0,0,0},nCount=1,nExpiredTime=21600},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="V� Giang � Thi�n Ki�m",tbProp={0,214},nCount=1,nQuality = 1,nExpiredTime=43200},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V� Giang � Thi�n Ki�m",tbProp={0,215},nCount=1,nQuality = 1,nExpiredTime=43200},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,417,1,1,0},nCount=300,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={6,1,4422,1,0},nCount=1,nExpiredTime=10080},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={6,1,4432,1,0},nCount=150,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={6,1,4435,1,0},nCount=150,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={6,1,4358,1,0},nCount=1,},}, "test", 1);



--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={6,1,26,1,0},nCount=15,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={0,10,7,1,0},nCount=1, nBindState=-2},}, "test", 1);








--AddMagic(160, 50)


--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={6,1,2526,1,0},nCount=1, nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={6,1,26,1,0},nCount=15,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={6,1,4422,1,0},nCount=1,nExpiredTime=9080 ,nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,417,1,1,0},nCount=100,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,239,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={4,240,1,1,0},nCount=1,},}, "test", 1);


end

function dieukiennhancode()
Say ( "<color=green>�i�u ki�n nh�n core l� v�o fanpage like trang c�i v� chia s� b�i vi�t b�n �ang nh�n th�y ��n 3 trang ho�c 3 h�i v� l�m n�o �� sao �� tap t�n 5 ng��i b�n c�a m�nh c� ch�i game VLTK r�i li�n h� admin tr�n fanpage l�y code kh�ng tr� gi� 1tr VN�!<enter>L�u � m�i ng��i ch� ���c 1 code duy nh�t v� code tr� gi� t�i g�n 1tr VN� n�n ch� gi�i h�n 500 ng��i ��u ti�n h�y nhanh tay.", 3, "Nh�p Nh�p Code Vip/NhapGiftCode2018","K�t th�c ��i tho�i./no" );
end




function NhapGiftCode2018()
	local nFact = GetLastFactionNumber()
	if nFact == nil or nFact < 0 or  nFact > 9 then
		Talk(1, "", "��i hi�p kh�ng gia nh�p m�n ph�i kh�ng th� nh�p code")
		return
	end
	if CalcFreeItemCellCount() < 57 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 57 � tr�ng r�i h�y nh�n.",0);
		return 1
	end
	--local tasktanthu = 3900 -- id task ho tro tan thu
		--local gt_tasktanthu = GetTask(tasktanthu);
		--if gt_tasktanthu > 0 then
		--	Say("��i hi�p �� nh�n r�i m�", 0)
		--return 1
	--end
local nGoldPoint = GetExtPoint(7)
if nGoldPoint >= 1 then
		Say("<pic=15> H� th�ng ki�m tra t�i kho�n ��i hi�p �� nh�n r�i kh�ng th� nh�n n�a",0);
return 1
end
	AskClientForString("NhapGiftCode2018OK", "", 1, 25, "Nh�p CODE VIP");
end

function NhapGiftCode2018OK(szCode)
	local INPUT_FILE_PATH = "\\settings\\giftcode\\giftcode.txt"
	--local INPUT_FILE_PATH = "\\settings\\settings\\obj\\objdata.txt"

	local OUPUT_FILE_PATH = "\\settings\\giftcode\\luuphat.txt"
	local KTra 	= 0;
	
	if szCode == "" then
		Msg("Vui l�ng nh�p GIFTCODE!")
		return
	end

	local tbFile = LoadTabFile(INPUT_FILE_PATH)

	if not tbFile then
		Say("Hi�n t�i kh�ng ph�t Code!")
		return
	end

		for _, tbRow in tbFile do
			szMaCode  = tbRow[1] or "" 
			if szMaCode == szCode then
				KTraPhatCode2018(szCode)
				KTra = 1;	--CO TIM THAY MA CODE
				return
			end
		end

	if KTra == 0 then
		Say("<pic=15> M� kh�ng ��ng..nh�p l�i....")
	end
end





function KTraPhatCode2018(szCode)
	local OUPUT_FILE_PATH = "settings/giftcode/luuphat.txt"
	local tbFile2 = LoadTabFile(OUPUT_FILE_PATH)
	local STT = 1
	local demcode = 0
	if not tbFile2 then
		Msg2Player("Ki�m tra th�t b�i vui l�ng li�n h� GM!")
		return
	end
	if szCode == "" then
		Msg2Player("Vui l�ng nh�p CODE!")
		return
	end
		for _, tbRow in tbFile2 do
			local szMaCode = tbRow[1] or ""
			if szMaCode == szCode then
				demcode = demcode + 1
				--Say("Xin l�i m� CODE n�y �� ���c s� d�ng!")
				--return
			end
			if demcode == 1 then
				Say("<pic=15> m� CODE n�y �� ���c ng��i kh�c k�ch ho�t v� s� d�ng m�t r�i.")
				return
			end
			STT = STT + 1
		end
	local szTime = date("%Y-%m-%d %H:%M:%S")
	local szOut = STT.."\t" .. szCode .. "\t" .. GetName() .. "\t" .. GetAccount() .. "\t" .. szTime .. "\n"
	G7VNAppendFile(OUPUT_FILE_PATH, szOut)

	if CalcFreeItemCellCount() < 57 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 57 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end

	local tasktanthu = 3900 -- id task ho tro tan thu
	SetTask(tasktanthu,1)
                            AddExtPoint(7,1)
	
checkmpcode()	
Msg2SubWorld("<pic=126><pic=135><pic=126><pic=135><pic=126><pic=135>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�p th�nh c�ng <color=yellow>CODE VIP<color> t�i L� Quan nh�n ���c full c�c m�n HKMP hi�n c� t�i server Ki�m Thi�n")
end





function LoadTabFile(szFile)
	if TabFile_Load(szFile, szFile) ~= 1 then
		print(format("%s open fail", szFile))
		return 
	end
	local nRowCount = TabFile_GetRowCount(szFile) - 1
	local tb = {}
	for i=1, nRowCount do
		for j=1, nRowCount do
			local nValue = TabFile_GetCell(szFile, i+1 , j+1)
			tb[i] = tb[i] or {}
			tb[i][j] = nValue
		end
	end
	TabFile_UnLoad(szFile)
	return tb
end

function G7VNAppendFile(url, str)
	local fs_log = openfile(url, "a");
	write(fs_log, ""..str.."");
	closefile(fs_log);
end;



function FixAuTo()
checkphai = GetFaction()
if GetLastFactionNumber() == 0 then
SetRank(72)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u Thi�u L�m b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 1 then
SetRank(69)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u Thi�n V��ng b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 2 then
SetRank(76)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u ���ng M�n b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 3 then
SetRank(80)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u Ng� ��c b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 4  then
SetRank(63)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u Nga Mi b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 5 then
SetRank(67)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u Th�y Y�n b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 6 then
SetRank(78)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u C�i Bang b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 7 then
SetRank(81)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u Thi�n Nh�n b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 8 then
SetRank(73)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u V� �ang b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 9 then
SetRank(75)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u C�n L�n b�n c� th� s� d�ng AutoKid.")
end
end



-------------------------------------------

function guitientientrang()
local szTitle = "<npc>G�i ti�n v�o ti�n trang c� ngh�a l� b�n s� t�n 80xu b�n s� ���c g�i v�o ti�n trang ���c 50xu d�ng �� �i li�n ��u.H�t li�n ��u c� th� r�t xu t� ti�n trang ra."
		local Opt = 
		{	
			{"Cho ta g�i ti�n",guitienngay},
			{"Kh�ng g�i",no},

		}
		CreateNewSayEx(szTitle,Opt)
end


function guitienngay()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 80) then -- gia xu
		Talk(1,"","C�n �t nh�t 80 ti�n ��ng m�i c� th� k� g�i v�o ti�n trang ���c 50 ti�n ��ng �� �i li�n ��u") -- go
	return end
ConsumeEquiproomItem(80,4,417,1,1)
AddExtPoint(1,50)
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� k� g�i th�nh c�ng 80xu th�nh 50xu g�i v�o ti�n trang �� d�ng b�o danh li�n ��u.xin h�y out game ��n ti�n trang ki�m tra.")
end

function kickrakhoigame()
local nPlayerIndex = SearchPlayer(szName)
OfflineLive(PlayerIndex); 
KickOutSelf()
end




function nhantrangbitest()
if CalcFreeItemCellCount() < 58 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 58 � tr�ng.",0);
		return
end
	local tasktanthu = GetTask(3900)
	if tasktanthu  >= 3 then
		Say("Nh�n r�i 3 l�n kh�ng th� nh�n n�a.",0);
		return
end
	Say("B�n ���c ch�n 3 l�n HKMP", 4, "L�n 1/lan1","L�n 2/lan2","L�n 3/lan3", "��i m�t l�t �i!/OnCancel")
end


function lan1()
	local tasktanthu = GetTask(3900)
	if tasktanthu  == 1 then
		Say("L�n 1 n�y �� nh�n r�i.",0);
return
else


--tbAwardTemplet:GiveAwardByList({tbProp = {0,11,828,1,1,0}, nCount=1,nExpiredTime=10080,}, "test", 1);--thieu lam
tbAwardTemplet:GiveAwardByList({tbProp = {0,541}, nCount= 1,nQuality = 1,nExpiredTime=10080}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={0,428},nCount=1,nQuality = 1,nExpiredTime=4230},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="dai dq",tbProp={0,407},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Trang suc",tbProp={0,543},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="phiphong pha quan",tbProp={0,545},nCount= 1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Si�u Quang",tbProp={0,10,13,10,0,0},nCount=1,nExpiredTime= 10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kiem VDQ",tbProp={0,335},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="VDK",tbProp={0,340},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NonCLK",tbProp={0,350},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Dao CL",tbProp={0,345},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
SetTask(3900,1)

		Say("�� nh�n l�n 1.",0);
end
end


function lan2()
	local tasktanthu = GetTask(3900)
	if tasktanthu  == 1 then
tbAwardTemplet:GiveAwardByList({{szName="Dao TL",tbProp={0,230},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Bong TL",tbProp={0,225},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ao TL",tbProp={0,221},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Chuy TV",tbProp={0,235},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Dao TV",tbProp={0,245},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thuon TV",tbProp={0,240},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="No DM",tbProp={0,295},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="PhiDao DM",tbProp={0,290},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tieu DM",tbProp={0,300},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
SetTask(3900,2)
		Say("�� nh�n l�n 2.",0);

else
		Say("L�n 2  n�y �� nh�n r�i.",0);
return
end
end

function lan3()
	local tasktanthu = GetTask(3900)
	if tasktanthu  == 2 then
tbAwardTemplet:GiveAwardByList({{szName="Non 5 doc",tbProp={0,275},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Dao 5 doc",tbProp={0,280},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kiem NM",tbProp={0,250},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NB NM",tbProp={0,258},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Dao TY",tbProp={0,265},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Song Dao TY",tbProp={0,270},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Bao Tay CB",tbProp={0,313},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Bong CB",tbProp={0,315},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kich TN",tbProp={0,320},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Dao TN",tbProp={0,329},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
SetTask(3900,3)
		Say("�� nh�n l�n 3.",0);

else
		Say("L�n 3 n�y �� nh�n r�i.",0);
return
end
end


function lbadmin()
local index = AddItem(6,1,4633,0,0,0,0)
SetItemBindState(index,-2)
Msg2Player("B�n nh�n ���c L�nh B�i ADMIN.")
end


