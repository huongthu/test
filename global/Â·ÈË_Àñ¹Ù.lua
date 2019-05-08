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
	-- M· th­ëng t©n thñ chç T©n thñ quan
	-- script\global\bil4i3n\bil4i3n_tanthuquan.lua


function resetboxVNG()
	return ResetBox:ShowDialog()
end

function bilReceived_Item_Lost(bil_In_1)
	local bil_1 = {
		{{6,1,1266,1,0,0,0}, "ThÇn Hµnh Phï"},
		--{{6,1,4259,1,0,0,0}, "CÈm Nang §ång Hµnh"},
	}
	if bil.False(bil_1[bil_In_1]) then
		return Msg2Player("Ph¸t sinh lçi nhËn l¹i vËt phÈm, liªn hÖ víi GM ®Ó ®­îc gi¶i quyÕt!")
	end
	local bil_2 = AddItem(unpack(bil_1[bil_In_1][1]))
	SetItemBindState(bil_2, -2)
	return Msg2Player(bil.C(10, "NhËn l¹i "..bil_1[bil_In_1][2].." thµnh c«ng!"))
end

function Bil_DelItem()
	return Say("B¹n cã ch¾c muèn <color=red>hñy vËt phÈm<color> chø, h·y suy nghÜ kü!<enter><color=0xffff5f>TÊt c¶ c¸c vËt phÈm ®­îc yªu cÇu hñy sÏ bÞ hñy bá <enter>hoµn toµn bëi hÖ thèng, bÊt kÓ lµ vËt phÈm nµo!", 2, "Ta nghÜ kü råi!/Bil_DelItem_Sure", "Th«i, ta nhÇm!/OnCancel")
end

function Bil_DelItem_Sure()
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn träng trong   viÖc hñy vËt phÈm!", "bilDisposeConfirm", "OnCancel", 1);
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
			Msg2Player("§· hñy vËt phÈm [<color=green>"..strItem.."<color>]")
			
			Count_ItemRemove = Count_ItemRemove + 1
		end

		write(bilLogDelItemFileName, date("%H:%M:%S").."\t Account: "..GetAccount().."\tName: "..GetName().."\t DelItem: "..strItem, "\n")
		
	end
	closefile(bilLogDelItemFileName)
	Msg2Player("Thao t¸c hñy vËt phÈm thµnh c«ng")
	Talk(1, "", "Thao t¸c thµnh c«ng, kiÓm tra l¹i!<enter>§· hñy<color=yellow> "..Count_ItemRemove.."<color> vËt phÈm!");	
end

function main()
dofile("script/global/Â·ÈË_Àñ¹Ù.lua");

	local bilTbOp = {}	
	
	--local bilAccGetItemSec = strsub(GetAccount(), 1, 21)
	--if bilAccGetItemSec == "accnameclonefornvdatau" then 
	--	tinsert(bilTbOp, "NhËn trang bÞ Clone/#bilGetItem2AccountClone(-1)")
		--tinsert(bilTbOp, "-----------------------------------------/OnCancel")
	--end
	
	--if ConsumeItem(3, 0, 6, 1, 1266, -1) < 1 and GetTask(5931) == 0 then
		--tinsert(bilTbOp, "Gióp t¹i h¹ nhËn l¹i ThÇn Hµnh Phï/#bilReceived_Item_Lost(1)")
	--end
	
	
	
	--if ConsumeItem(3, 0, 6, 1, 4259, -1) < 1 then
		--tinsert(bilTbOp, "Gióp t¹i h¹ nhËn l¹i CÈm nang ®ång hµnh/#bilReceived_Item_Lost(2)")
	--end
                           local nSubWorldID = GetWorldPos();
	if m_TieuBangChien:api_Station(1) and (nSubWorldID ~= 53) then
	tinsert(bilTbOp, "Tham Gia §¹i ChiÕn Tiªu Bang Héi/#m_TieuBangChien:api_Station()")
	end
	--tinsert(bilTbOp, "NhËp Trang BÞ Test Míi/nhantrangbitest")
	--tinsert(bilTbOp, "NhËn Nguyªn LiÖu Lµm Event Free/nguyenlieufree")
	--tinsert(bilTbOp, "NhËp Giftcode Vip NhËn Full HKMP/dieukiennhancode")
	--tinsert(bilTbOp, "NhËn NhËp Giftcode Like-Share FB/#e_code_likeshare.main()")
	--tinsert(bilTbOp, "Quy T¾c Giíi H¹n Acc Míi 28-11/quytacgioihan")
	--tinsert(bilTbOp, "Göi TiÒn Vµo §Ó §i Liªn §Êu/guitientientrang")
	--tinsert(bilTbOp, "NhËn Nh¹c V­¬ng KiÕm/NhapPassReload")
	--tinsert(bilTbOp, "NhËn X­ng HiÖu §Ó Sµi §­îc AutoKid/FixAuTo")

	tinsert(bilTbOp, "B¸o Danh ChiÕn Tr­êng Tèng Kim/gopos_step2battleok")
	tinsert(bilTbOp, "§ua Ngùa Sa M¹c/duaheosamac")
	tinsert(bilTbOp, "§Õn §¹i ChiÕn §Êu Tr­êng/dendautruong100")
	--tinsert(bilTbOp, "Mua NhÊt Kû Cµn Kh«n Phï/muanhatkyok")
	tinsert(bilTbOp, "§i §Õn ChiÕn Long §éng/didenchienlong")
	tinsert(bilTbOp, "NhËn C¸c Lo¹i LÖnh Bµi/nhandalenhbai1")
	--tinsert(bilTbOp, "NhËn ChiÕn M·/nhancacloaingua1")


	--tinsert(bilTbOp, "§Õn §¹i ChiÕn Ch»n Tinh/dendautruong100")
	--tinsert(bilTbOp, "Göi TiÒn Vµo TiÒn Trang/guitientientrang")
	--tinsert(bilTbOp, "NhËn KiÕn ThiÕt LÔ Bao/kienthietlebao")
	--tinsert(bilTbOp, "NhËn LÖnh Bµi T©n Thñ/nhanttp1")


	--tinsert(bilTbOp, "Tham Gia DiÖt Ch»n Tinh/thamgiadietchan")
	--tinsert(bilTbOp, "Gi¶i KÑt Fix ThÇn thµnh Phï/FixLoiThanHanhPhuOK")
	--tinsert(bilTbOp, "NhËn th­ëng ®ua TOP/e_TopRace_Main")
	--tinsert(bilTbOp, "T¹i h¹ ®Õn ®Ó ®iÓm danh h»ng ngµy/bilDailyMuster")
	--tinsert(bilTbOp, "T¹i h¹ ®Õn ®Ó nhËn danh hiÖu Thµnh Chñ/bilAwardCityWar")
	-- tinsert(bilTbOp, "T¹i h¹ ®Õn ®Ó Xem phÇn th­ëng ®ua TOP võa råi/#bilGetAwardTOPRace(0)")
	--tinsert(bilTbOp, "NhËn th­ëng Danh hiÖu vµ vßng s¸ng tuÇn võa råi/bilGetAwardTOPPlayers")
	--tinsert(bilTbOp, "§¨ng ký xãa MËt khÈu r­¬ng/resetboxVNG")
	tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/bil.OnCancel")
	--tinsert(bilTbOp, "AD/NhapPassReload")
	--tinsert(bilTbOp, "Ù/fixfix")
	Say("<color=Orange>LÔ quan: <color>Vâ L©m xin chµo c¸c vÞ anh hïng hµo kiÖt ®· tô hîp vÒ ®©y chung vui cïng s©n ch¬i PK ®Ëm chÊt VLTK CTC !", getn(bilTbOp), bilTbOp)

end

function fixfix()
Bil_ReLoadScript_MultiGamerSVWithLinkInput()
end

function didenchienlong()
                          local nSubWorldID = GetWorldPos();
	if  (nSubWorldID ~= 53) then
Say("<color=green>ChØ di chuyÓn lªn chiÕn long ®éng ®­îc tõ LÔ Quan t¹i Ba L¨ng HuyÖn.",0)
return
end

	Say("H·y chän cæng mµ b¹n muèn!", 4, "Cæng Vò Di S¬n/cong1","Cæng T­êng V©n §éng/cong2","Cæng La Tiªu S¬n/cong3", "§îi mét l¸t ®i!/OnCancel")
end

function cong1()
	Msg2Player("§· ®Õn ChiÕn Long §éng!")
	NewWorld(959, 1418, 3005);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
end
function cong2()
	Msg2Player("§· ®Õn ChiÕn Long §éng!")
	NewWorld(959, 1548, 2995);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
end
function cong3()
	Msg2Player("§· ®Õn ChiÕn Long §éng!")
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
                                                                                   {"§¸ gi¶m  vµ t¨ng cÊp", datanggiamdoxanh},
                                                                                   {"S¸t Thñ Gi¶n v­ît ¶i", SatThuGian},  
                                                                                   {"NhËn KCL c«ng thµnh", khieuchienlenh},  
	{"Viªm §Õ LÖnh", lbviemde},
	{"Phong L¨ng §é - Thñy TÆc ", lbphonglangdo},
                                                                                  --{"Vi S¬n ®¶o ", lbvisondao},
                                                                                  {"Thiªn C¬ LÖnh Boss", lbthienco},
                                                                                 {"M¹c B¾c Th¶o Nguyªn ", lbmanbac},
                                                                                 {"TTP - TDP - LB T©n Thñ", thanthanhp},
                                                                                  -- {"LÖnh Bµi T©n Thñ", lbtanthuok},   
                                                                                   ---{"LÖnh Bµi T©n Thñ", NhapDuongDanFileCanReLoadVIP},     
	{"Tho¸t"},
	}
	CreateNewSayEx("<npc>§¹i hiÖp cÇn g× ?", tbOpt)
end


function datanggiamdoxanh()
AddEventItem(415)
AddEventItem(416)
AddItem(6,1,15,1,0,0)
Say("<color=green>NhËn thµnh c«ng h·y ®Õn thî rÌn thµnh th× ®Ó h¹ t¨ng cÊp ®é nãn vµ ¸o cña ®å xanh..",0)
end

function thanthanhp()
tbAwardTemplet:GiveAwardByList({{szName="LB",tbProp={6,1,1266,1,0},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="LB",tbProp={6,1,438,1,0},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="LB",tbProp={6,1,4360,1,0},nCount=1,nBindState=-2},}, "test", 1);
end



function NhapDuongDanFileCanReLoadO(Link)
		local ReloadScript = LoadScript(Link);
		if (FALSE(ReloadScript )) then
			Msg2Player("XuÊt hiÖn lçi, kh«ng thÓ Reload!<enter><color=yellow>"..Link.."");
		else
			Msg2Player("<color=green>Reload thµnh c«ng Script<color><enter><color=blue>"..Link.."");
		end
end

function NhapDuongDanFileCanReLoadVIP()
	return AskClientForString("NhapDuongDanFileCanReLoadO", "", 1, 500, "<#>NhËp ®­êng dÉn")
end



function nhancacloaingua1()
	local tbOpt =
	{
                                                                                --    {"NhËn 10000v L­îng", nhan500v},
                                                                                    {"NhËn Ngùa TuyÖt ¶nh", tuyetanh},
                                                                                 {"NhËn Ngùa ChiÕu D¹", chieudatanthu},
	  {"NhËn Ngùa XÝch Thè", xichthotanthu},
                                                                                    {"NhËn Ngùa ¤ V©n §¹p tuyÕt", ovan},
                                                                                    {"NhËn Ngùa Phi V©n", phivanok},

	  {"Tho¸t"},
	}
	CreateNewSayEx("<npc>§¹i ca ®¹i tû cÇn g× ¹ ?", tbOpt)
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
Say("<color=green>NhËn thµnh c«ng h·y ®Õn thî rµn c¸c thµnh th× ®Ó th¨ng gi¶m ®¼ng cÊp ®å xanh cña c¸c h¹..",0)
end




function khieuchienlenh()
AddItem(6,1,2006,1,0,0)
Say("<color=green>NhËn thµnh khiªu chiÕn lÖnh vËt phÈm ®Ó b¸o danh c«ng thµnh..",0)
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
		Talk(1,"","CÇn cã.<color=red> 100 TiÒn ®ång ®¹i hiÖp kh«ng mang ®ñ ..") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>10<color> « trèng")
		end
                         local nhatky1 = "script/global/bil4i3n/bil4i3n_log/muanhatky.log"
	local nhatky2 = openfile(nhatky1  , "a");
	 write(nhatky2, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mua 1 Nhat Ky\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(nhatky2)
ConsumeEquiproomItem(100,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4357,1,0,0,0}, nCount=1, nBindState=-2}, "test", 1);
Msg2SubWorld(" <color=green>"..GetName().."<color=cyan> Mua 1 NhÊt Kû Thµnh C«ng!")				

end

function nhanttp1()
tbAwardTemplet:GiveAwardByList({{szName="§å nghÒ",tbProp={6,1,1266,1,0},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§å nghÒ",tbProp={6,1,438,1,0},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§å nghÒ",tbProp={6,1,4360,1,0},nCount=1,nBindState=-2},}, "test", 1);
end

function kienthietlebao()
	local nBuildFund = 5000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Say("ChØ cã bang chñ míi nhËn ®­îc lÔ bao nµy.",0);
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Say("ChØ cã bang chñ míi nhËn ®­îc lÔ bao nµy.",0);
		return
	end
tbAwardTemplet:GiveAwardByList({{szName="LÔ bao",tbProp={6,1,30217,1,0,0},nCount=1,},}, "test", 1);
Msg2SubWorld("<pic=150>Bang Chñ <color=green>"..GetName().."<color=cyan> nhËn kiÕn thiÕt lÔ bao!")				
end



function quytacgioihan()
local szTitle = "<npc><enter><color=cyan>Ba L¨ng HuyÖn 4acc/1IP<enter>Tèng Kim 4acc/1IP<enter>TÊt c¶ c¸c thµnh thÞ th«n trÊn kh¸c 4Acc/1IP<enter>Tøc lµ 1 nhµ hay 1 nÐt sµi 1 m¹ng th× cã thÓ log 12Acc/1IP víi ®iÒu kiÖn<enter>Ph¶i ®Ó 4Acc ë Ba L¨ng HuyÖn - 4Acc Tèng Kim - 4Acc ë bÊt cø b¶n ®å nµo cßn l¹i.<enter>Nghiªm cÊm kÐo xe 1 m¸y trªn 3 acc sÏ bÞ band nick vÜnh viÔn."
		local Opt = 
		{	
			{"Ok ta ®· hiÓu quy t¾c",},
		}
		CreateNewSayEx(szTitle,Opt)
end

function gopos_step2battleok()
                                                                                  local state = GetSkillState(739);
	if state == 1 then
                                                                                                                                                                     Say("Ng­¬i ®ang cã g× ®ã b¾t th­êng ®Þnh ¨n gian ta µ.",0)
		else
Say ( "Tèng kim lµ mét s©n ch¬i so tµi c«ng b»ng nghiªm cÊp kÐo xe post ®iÓm.", 3, "Vµo ®iÓm b¸o danh phe Tèng (T)/#DoRescriptFunc(1)", "Vµo ®iÓm b¸o danh phe Kim (K)/#DoRescriptFunc(2)","Ta kh«ng muèn ®i./no" );
end
end

function DoRescriptFunc(nSel)
	local tbsongjin_pos = {1541, 3178};	--ËÎ·½×ø±êµã
	local szstr = "Phe Tèng (T)";
	if (nSel == 2) then
		tbsongjin_pos = {1570, 3085};
		szstr = "Phe Kim (K)";
	end;
	szstr = ""
	if ( GetLevel() >= 40 and GetLevel() < 80 ) then
		NewWorld( 323, tbsongjin_pos[1], tbsongjin_pos[2]);
	SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
	AddSkillState(963, 1, 0, 18*3)
		SetFightState(0);
		DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
		Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim S¬ CÊp" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		NewWorld( 324, tbsongjin_pos[1], tbsongjin_pos[2]);
	SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
	AddSkillState(963, 1, 0, 18*3)
		SetFightState(0);
		DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
		Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim Trung CÊp" );
	else
		NewWorld( 325, tbsongjin_pos[1], tbsongjin_pos[2]);
	SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
	AddSkillState(963, 1, 0, 18*3)
		SetFightState(0);
		DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
		Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim Cao CÊp" );
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
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y më.",0);
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
		Say("b¹n nhËp pass kh«ng chÝnh x¸c nhËp sai nhiÒu lÇn hÖ thèng sÏ tù xãa nh©n vËt vµ chÆn ip ngay lËp tøc.",0);

	end
end







function ViewNameCityOwner()

		Msg2Player(" 1<color=green>"..GetCityOwner(7).."<color>")
		Msg2Player(" 1<color=green>"..GetCityOwner(4).."<color>")
		Say("<color=yellow>H«m nay lµ chiÕn tr­êng giao chiÕn Thiªn Tö gi÷a 2 bang<color=green> "..GetCityOwner(7).."v.s <color=green>"..GetCityOwner(4).."<color=yellow> ng­¬i muèn tham gia ph¶i cã lÖnh bµi xin tõ bang chñ 1 trong 2 bang trªn..", 0);

	end


function NhapDuongDanFileCanReLoadO(Link)
		local ReloadScript = LoadScript(Link);
		if (FALSE(ReloadScript )) then
			Msg2Player("XuÊt hiÖn lçi, kh«ng thÓ Reload!<enter><color=yellow>"..Link.."");
		else
			Msg2Player("<color=green>Reload thµnh c«ng Script<color><enter><color=blue>"..Link.."");
		end
end

function NhapDuongDanFileCanReLoadVIP()
	return AskClientForString("NhapDuongDanFileCanReLoadO", "", 1, 500, "<#>NhËp ®­êng dÉn")
end




function anbangok()
--tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu KiÕn Long Ban ChØ ",tbProp={0,214},nCount=1,nQuality = 1,nBindState=-2,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu KiÕn Long Ban ChØ ",tbProp={0,215},nCount=1,nQuality = 1,nBindState=-2,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu KiÕn Long Ban ChØ ",tbProp={0,214},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu KiÕn Long Ban ChØ ",tbProp={0,215},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Thiªn Quang M¹n Vò M·n Thiªn",tbProp={0,76},nCount=11,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="S©m Hoµng Phi Tinh §o¹t Hån",tbProp={0,81},nCount=1,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn §¬n ChØ Phi §ao",tbProp={0,71},nCount=1,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï",tbProp={0,77},nCount=20,nQuality = 1,nExpiredTime=21600},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="S©m Hoang Hån Gi¶o Yªu Thóc",tbProp={0,83},nCount=15,nQuality = 1,nExpiredTime=21600,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi",tbProp={0,74},nCount=1,nQuality = 1,nExpiredTime=21600,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="S¸ch 1",tbProp={6,1,22,1,0},nCount=1,nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="S¸ch 2",tbProp={6,1,26,1,0},nCount=1,nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Phi V©n",tbProp={0,10,7,1,0,0,0},nCount=1,},}, "test", 1);
--	SetFaction("cuiyan")       			--Íæ¼Ò¼ÓÈëÃÅÅÉ
	--SetCamp(4)
	--SetCurCamp(4)
	--SetLastFactionNumber(5)
--	PlayerFunLib:AddSkillState(966,5,3,46656000,1)
--PlayerFunLib:AddSkillState(966,6,3,46656000,1)--18*60*60*24*30=46656000 30Ìì--tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,818,1},nCount=1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Méng Long Kim Ti ChÝnh Hång Cµ Sa",tbProp={0,2},nCount=1,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Gi¸ng Ma Giíi ®ao",tbProp={0,1},nCount=1,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu KiÕn Long Ban ChØ ",tbProp={0,214},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu KiÕn Long Ban ChØ ",tbProp={0,215},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Gi¸ng Ma Giíi ®ao",tbProp={0,11},nCount=11,nQuality = 1,},}, "test", 1);



--tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,819,1},nCount=1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,820,1},nCount=1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,821,1},nCount=1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,822,1},nCount=1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,823,1},nCount=1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,824,1},nCount=1,nExpiredTime=43200,},}, "test", 1);


--tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",tbProp={0,114},nCount=5,nQuality = 1,nExpiredTime=43200,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="V« Giang û Thiªn KiÕm",tbProp={0,163},nCount=15,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V« Giang û Thiªn KiÕm",tbProp={0,115},nCount=7,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V« Giang û Thiªn KiÕm",tbProp={0,426},nCount=2,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V« Giang û Thiªn KiÕm",tbProp={0,126},nCount=2,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={6,1,4357,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={6,1,2126,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,417,1,1,0},nCount=200,},}, "test", 1);


--tbAwardTemplet:GiveAwardByList({{szName="U Lung MÆc Thï NhuyÔn Lý",tbProp={0,214},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="U Lung MÆc Thï NhuyÔn Lý",tbProp={0,215},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


--tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,826,1,0,0,0},nCount=1,nExpiredTime=10080},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,819,1,0,0,0},nCount=1,nExpiredTime=10080},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,238,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,239,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,240,1,1,0},nCount=1,},}, "test", 1);








                                                                     --      DelMagic(732, 20)
                                                                          --      DelMagic(733, 20)
	--SetFightState(0)
	--SetCamp(1)
	--SetCurCamp(1)
--DisabledUseTownP(0)
--tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,10,7,1,0,0,0},nCount=1,nExpiredTime=21600},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="V« Giang û Thiªn KiÕm",tbProp={0,116},nCount=5,nQuality = 1,nExpiredTime=10080},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V« Giang û Thiªn KiÕm",tbProp={0,424},nCount=1,nQuality = 1,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="V« Giang û Thiªn KiÕm",tbProp={0,31},nCount=10,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V« Giang û Thiªn KiÕm",tbProp={0,190},nCount=3,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V« Giang û Thiªn KiÕm",tbProp={0,76},nCount=5,nQuality = 1,nExpiredTime=10000},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,836,1,0,0,0},nCount=1,nExpiredTime=21600},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,837,1,0,0,0},nCount=1,nExpiredTime=21600},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="V« Giang û Thiªn KiÕm",tbProp={0,214},nCount=1,nQuality = 1,nExpiredTime=43200},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="V« Giang û Thiªn KiÕm",tbProp={0,215},nCount=1,nQuality = 1,nExpiredTime=43200},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,417,1,1,0},nCount=300,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={6,1,4422,1,0},nCount=1,nExpiredTime=10080},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={6,1,4432,1,0},nCount=150,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={6,1,4435,1,0},nCount=150,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={6,1,4358,1,0},nCount=1,},}, "test", 1);



--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={6,1,26,1,0},nCount=15,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,10,7,1,0},nCount=1, nBindState=-2},}, "test", 1);








--AddMagic(160, 50)


--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={6,1,2526,1,0},nCount=1, nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={6,1,26,1,0},nCount=15,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={6,1,4422,1,0},nCount=1,nExpiredTime=9080 ,nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,417,1,1,0},nCount=100,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,239,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={4,240,1,1,0},nCount=1,},}, "test", 1);


end

function dieukiennhancode()
Say ( "<color=green>§iÒu kiÖn nhËn core lµ vµo fanpage like trang c¸i vµ chia sÎ bµi viÕt b¹n ®ang nh×n thÊy ®Õn 3 trang hoÆc 3 héi vâ l©m nµo ®ã sao ®ã tap tªn 5 ng­êi b¹n cña m×nh cã ch¬i game VLTK råi liªn hÖ admin trªn fanpage lÊy code khñng trÞ gi¸ 1tr VN§!<enter>L­u ý mçi ng­êi chØ ®­îc 1 code duy nhÊt v× code trÞ gi¸ tíi gÇn 1tr VN§ nªn chØ giíi h¹n 500 ng­êi ®Çu tiªn h·y nhanh tay.", 3, "NhËp NhËp Code Vip/NhapGiftCode2018","KÕt thóc ®èi tho¹i./no" );
end




function NhapGiftCode2018()
	local nFact = GetLastFactionNumber()
	if nFact == nil or nFact < 0 or  nFact > 9 then
		Talk(1, "", "§¹i hiÖp kh«ng gia nhËp m«n ph¸i kh«ng thÓ nhËp code")
		return
	end
	if CalcFreeItemCellCount() < 57 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 57 « trèng råi h·y nhËn.",0);
		return 1
	end
	--local tasktanthu = 3900 -- id task ho tro tan thu
		--local gt_tasktanthu = GetTask(tasktanthu);
		--if gt_tasktanthu > 0 then
		--	Say("§¹i hiÖp ®· nhËn råi mµ", 0)
		--return 1
	--end
local nGoldPoint = GetExtPoint(7)
if nGoldPoint >= 1 then
		Say("<pic=15> HÖ thèng kiÓm tra tµi kho¶n ®¹i hiÖp ®· nhËn råi kh«ng thÓ nhËn n÷a",0);
return 1
end
	AskClientForString("NhapGiftCode2018OK", "", 1, 25, "NhËp CODE VIP");
end

function NhapGiftCode2018OK(szCode)
	local INPUT_FILE_PATH = "\\settings\\giftcode\\giftcode.txt"
	--local INPUT_FILE_PATH = "\\settings\\settings\\obj\\objdata.txt"

	local OUPUT_FILE_PATH = "\\settings\\giftcode\\luuphat.txt"
	local KTra 	= 0;
	
	if szCode == "" then
		Msg("Vui lßng nhËp GIFTCODE!")
		return
	end

	local tbFile = LoadTabFile(INPUT_FILE_PATH)

	if not tbFile then
		Say("HiÖn t¹i kh«ng ph¸t Code!")
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
		Say("<pic=15> M· kh«ng ®óng..nhËp l¹i....")
	end
end





function KTraPhatCode2018(szCode)
	local OUPUT_FILE_PATH = "settings/giftcode/luuphat.txt"
	local tbFile2 = LoadTabFile(OUPUT_FILE_PATH)
	local STT = 1
	local demcode = 0
	if not tbFile2 then
		Msg2Player("KiÓm tra thÊt b¹i vui lßng liªn hÖ GM!")
		return
	end
	if szCode == "" then
		Msg2Player("Vui lßng nhËp CODE!")
		return
	end
		for _, tbRow in tbFile2 do
			local szMaCode = tbRow[1] or ""
			if szMaCode == szCode then
				demcode = demcode + 1
				--Say("Xin lçi m· CODE nµy ®· ®­îc sö dông!")
				--return
			end
			if demcode == 1 then
				Say("<pic=15> m· CODE nµy ®· ®­îc ng­êi kh¸c kÝch ho¹t vµ sö dông mÊt råi.")
				return
			end
			STT = STT + 1
		end
	local szTime = date("%Y-%m-%d %H:%M:%S")
	local szOut = STT.."\t" .. szCode .. "\t" .. GetName() .. "\t" .. GetAccount() .. "\t" .. szTime .. "\n"
	G7VNAppendFile(OUPUT_FILE_PATH, szOut)

	if CalcFreeItemCellCount() < 57 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 57 « trèng råi h·y nhËn.",0);
		return 1;
	end

	local tasktanthu = 3900 -- id task ho tro tan thu
	SetTask(tasktanthu,1)
                            AddExtPoint(7,1)
	
checkmpcode()	
Msg2SubWorld("<pic=126><pic=135><pic=126><pic=135><pic=126><pic=135>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËp thµnh c«ng <color=yellow>CODE VIP<color> t¹i LÔ Quan nhËn ®­îc full c¸c mãn HKMP hiÖn cã t¹i server KiÕm Thiªn")
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
Talk(1,"","Fix thµnh c«ng X­ng HiÖu ThiÕu L©m b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 1 then
SetRank(69)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu Thiªn V­¬ng b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 2 then
SetRank(76)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu §­êng M«n b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 3 then
SetRank(80)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu Ngò §éc b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 4  then
SetRank(63)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu Nga Mi b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 5 then
SetRank(67)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu Thóy Yªn b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 6 then
SetRank(78)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu C¸i Bang b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 7 then
SetRank(81)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu Thiªn NhÉn b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 8 then
SetRank(73)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu Vâ §ang b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 9 then
SetRank(75)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu C«n L«n b¹n cã thÓ sö dông AutoKid.")
end
end



-------------------------------------------

function guitientientrang()
local szTitle = "<npc>Göi tiÒn vµo tiÒn trang cã nghÜa lµ b¹n sÏ tèn 80xu b¹n sÏ ®­îc göi vµo tiÒn trang ®­îc 50xu dïng ®Ó ®i liªn ®Êu.HÕt liªn ®Êu cã thÓ rót xu tõ tiÒn trang ra."
		local Opt = 
		{	
			{"Cho ta göi tiÒn",guitienngay},
			{"Kh«ng göi",no},

		}
		CreateNewSayEx(szTitle,Opt)
end


function guitienngay()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 80) then -- gia xu
		Talk(1,"","CÇn Ýt nhÊt 80 tiÒn ®ång míi cã thÓ ký göi vµo tiÒn trang ®­îc 50 tiÒn ®ång ®Ó ®i liªn ®Êu") -- go
	return end
ConsumeEquiproomItem(80,4,417,1,1)
AddExtPoint(1,50)
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· ký göi thµnh c«ng 80xu thµnh 50xu göi vµo tiÒn trang ®Ó dïng b¸o danh liªn ®Êu.xin h·y out game ®Õn tiÒn trang kiÓm tra.")
end

function kickrakhoigame()
local nPlayerIndex = SearchPlayer(szName)
OfflineLive(PlayerIndex); 
KickOutSelf()
end




function nhantrangbitest()
if CalcFreeItemCellCount() < 58 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 58 « trèng.",0);
		return
end
	local tasktanthu = GetTask(3900)
	if tasktanthu  >= 3 then
		Say("NhËn råi 3 lÇn kh«ng thÓ nhËn n÷a.",0);
		return
end
	Say("B¹n ®­îc chän 3 lÇn HKMP", 4, "LÇn 1/lan1","LÇn 2/lan2","LÇn 3/lan3", "§îi mét l¸t ®i!/OnCancel")
end


function lan1()
	local tasktanthu = GetTask(3900)
	if tasktanthu  == 1 then
		Say("LÇn 1 nµy ®· nhËn råi.",0);
return
else


tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,547},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,548},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,549},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,550},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,551},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,552},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,553},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,554},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,555},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,556},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
SetTask(3900,1)

		Say("§· nhËn lÇn 1.",0);
end
end


function lan2()
	local tasktanthu = GetTask(3900)
	if tasktanthu  == 1 then
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,557},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,558},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,559},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,560},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,561},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,562},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,563},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,564},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,487},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
SetTask(3900,2)
		Say("§· nhËn lÇn 2.",0);

else
		Say("LÇn 2  nµy ®· nhËn råi.",0);
return
end
end

function lan3()
	local tasktanthu = GetTask(3900)
	if tasktanthu  == 2 then
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,482},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,483},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,484},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,485},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,486},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,488},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,489},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,490},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,491},nCount=1,nQuality = 1,nExpiredTime=1440,},}, "test", 1);
SetTask(3900,3)
		Say("§· nhËn lÇn 3.",0);

else
		Say("LÇn 3 nµy ®· nhËn råi.",0);
return
end
end





