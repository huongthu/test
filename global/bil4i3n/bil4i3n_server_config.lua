Include("\\script\\skill\\__skill_config.lua")
-- Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
-- /script/global/bil4i3n/bil4i3n_server_config.lua
bilServerName = "JxTinhVoLam.Com"
bilServerVersion = "C�ng Th�nh Chi�n"

bilServerOpen = "Ng�y 01 th�ng 01 - 01 gi� 00 ph�t (01 gi� t�i)"
bilServerCloseRace = "Ng�y 02 th�ng 02 - 23 gi� 59 ph�t "

bilDenyAfterOpenTopRacing = 0
	bilDenyAfterOpenTopRacing_Year = "2017"
	bilDenyAfterOpenTopRacing_Month = "01"
	bilDenyAfterOpenTopRacing_Day = "01"
	bilDenyAfterOpenTopRacing_Hours = "01"
	bilDenyAfterOpenTopRacing_Minute = "01"
	-- ��a ng��i ch�i v�o tr�ng th�i phi chi�n ��u v�i t�t c� tr��c gi� Open �ua TOP
	-- Ch� b�t l�n khi n�o chu�n b� �ua TOP 

bilOpenTestGame = 0
	-- M� ho�t ��ng Test Game, Chu�n b� cho Open
	-- script\global\·��_���.lua

bilOpenShopKTC = 0
	-- M� K� tr�n c�c hay kh�ng
	-- jxser\server1\script\shop\shop_checkmap.lua

bilNameOfGameMaster = "Game�Master"

	-- T�n c�a GM trong game	-- c� quy�n qu�n l� nh�n v�t v� tr� chuy�n v�i Gamer
bilGMInGame = {
	{"", 1},
	{"", 2},
}
	
bilPassOfGameMaster = 2020
	-- M�t kh�u c�a Administrator
	-- D�ng cho c�c ho�t ��ng li�n quan ��n GM
	
bilOpenShopThanBiThuongNhan = 1
	-- Shop th�n b� th��ng nh�n T��ng d��ng
	-- script\global\·��_������������.lua

bilNPCVanSuThong = 0
	-- NPC V�n s� th�ng - Nam nh�c tr�n
	-- script\������\������\npc\ְ��_����ͨ.lua
	
bilNPCDichQuan = 1
	-- NPC D�ch Quan t�i t�t c� c�c th�nh th�
	-- script\global\��������.lua
	
bilNPCDaTau = 0
	-- NPC D� t�u t�i t�t c� c�c map
	-- script\global\seasonnpc.lua
	
bilNPCLongNgu = 0
	-- NPC Long ng� t�i 8 t�n th� th�n
	-- script\task\newtask\education\dragonfive.lua
	
bilNPCTaskHoangKim = 0 /*[[n�n t�t]]*/
	-- NPC li�n quan ��n c�c nhi�m v� ho�ng kim, ch�nh tuy�n, ... ho�ng kim nh�n ���c trang b� v� kinh nghi�m
	
bilAllowNvTanThu = 0
	-- H� th�ng nhi�m v� T�n th� ���c vi�t l�i d�a theo nguy�n b�n c�a nhi�m v� ho�ng kim ch�nh tuy�n
	
bilNPCCongThanhQuan = 0
	-- NPC C�ng th�nh quan t�i 8 t�n th� th�n
	-- script\missions\citywar_global\infocenter.lua
	
bilPNCVoLamTruyenNhan = 1
	-- NPC V� l�m truy�n nh�n t�i 7 ��i th�nh th�
	-- \script\global\·��_����A˴���.lua
	
bilNPCBinhBinhCoNuong = 1
	-- NPC B�nh b�nh c� n��ng t�i bi�n kinh
	-- \script\missions\yandibaozang\npc\yandibaozang_main.lua

bilNPCNhipThiTran = 1
	-- NPC Nh�p th� tr�n t�i 7 ��i th�nh th�
	-- script\task\tollgate\killer\nieshichen.lua
	
bilNewWorldPlayer2PosBoss = 0
	-- Ch�c n�ng t� ��ng chuy�n ng��i ch�i ��n ch� Boss S�t th� khi nh�n nhi�m v�
	-- \script\task\tollgate\killer\nieshichen.lua
	
bilPhongLangDo = 1
	--Ho�t ��ng b�n thuy�n phong l�ng ��
	-- script\missions\fengling_ferry\fld_head.lua
	
bilNPCTongKim = 1
	-- NPC Ho�t ��ng t�ng kim
	-- script\battles\battlejoin.lua
	
bilSuDoThiep = 0
	-- T�nh n�ng c�a v�t ph�m s� �� thi�p
	-- \script\item\card\card_shitu.lua
	
bilDropDoPhoHoangKim = 0
bilDropDoPhoABDQ = 0
bilDropKhoangThach = 0
bilDropKyTranDiBaO = 1
	-- Cho ph�p r�i �� ph� ho�ng kim, AB �Q, K.Th�ch tr�n c�c BOSS ho�c NPCs
	-- \script\\global\\bil4i3n\\bil4i3n_droprate.lua
	
bilAllowCheTaoDoTim = 0
	-- Cho ph�p ch� t�o trang b� t�m b�ng huy�n tinh ch� th� r�n
	-- \script\item\compound\equip_compound.lua
	
bilNativePlace2ManualMap = 0
	bilNativePlace2ManualMap_MapID = 78
	bilNativePlace2ManualMap_MapX = 1604
	bilNativePlace2ManualMap_MapY = 3235
	bilNativePlace2ManualMap_RevPos = 29
	bilNativePlace2ManualMap_37_MapID = 37
	bilNativePlace2ManualMap_37_MapX = 1660
	bilNativePlace2ManualMap_37_MapY = 3144
	bilNativePlace2ManualMap_37_RevPos = 24
	-- ��a nh�n v�t m�i kh�i t�o v� v� tr� ch� ��nh b�ng tay
	-- script\global\login.lua
	
bilAllowOnTimerOnPlayer = 1
	-- bilAllowOnTimerOnPlayer_Time = 480	-- ��n v� gi�y
	bilAllowOnTimerOnPlayer_Time = {480, 1200}
	bilAllowOnTimerOnPlayer_SaveNow = 1		-- Ch�n 1 trong 2 SaveQuickly ho�c SaveNow
	bilAllowOnTimerOnPlayer_SaveQuickly = 0
	bilAllowOnTimerOnPlayer_CheckTitle = 0
	-- Cho ph�p g�n OnTimer ki�m tra ng��i ch�i theo th�i gian hay kh�ng
	-- script\global\bil4i3n\bil4i3n_ontimer_player.lua
	
bilAllowHorseUpgrade = 0
	-- Ch�c n�ng n�ng c�p ng�a t�i B�n ng�a D��ng ch�u
	-- \script\__\npc_dc_ban_ngua.lua
	
bilAllowPhucLoiCaNhan = 0
	-- Ch�c n�ng Ph�c l�i c� nh�n trong C�m nang ��ng h�nh
	-- \script\global\bil4i3n\bil4i3n_phuc_loi_ca_nhan.lua
	
bilAllowBossTieuHoangKim = 0
	-- Ho�t ��ng Boss Tinh Anh � c�c th�n tr�n
	-- \script\global\bil4i3n\bil4i3n_boss_tinh_anh.lua
	
bilAllowTransFullMapInNPC = 1
	-- Cho ph�p ch�n di chuy�n ��n khu v�c luy�n c�ng v�i t�t c� c�c map
	-- \script\global\station.lua
	
bilAllowVerifyClient = 0
	-- Kh�i ��ng h� th�ng ki�m tra path game c�a ng��i ch�i
	-- \script\global\bil4i3n\bil4i3n_verify_client.lua
	
bilAllowOnTimerAutoChat = 0
	-- Kh�i ��ng t�nh n�ng thi�t l�p Auto rao b�n tr�n k�nh ch�t
	-- \script\global\bil4i3n\bil4i3n_ontimer_player_chat.lua
	
bilAllowCheckIpBattleSongJin = 0
	-- B�t t�nh n�ng ki�m tra IP ng��i ch�i khi tham gia T�ng kim, ch�ng post �i�m
	-- \script\global\bil4i3n\bil4i3n_check_songjin.lua
	
bilGetIPAdressWithProtocol = 0
	-- L�y ��a ch� IP th�t c�a user khi m�y ch� s� d�ng proxy
	-- \script\global\bil4i3n\bil4i3n_client_ip.lua
	
bilAllowUyThacBachCauHoan = 0
	-- Cho ph�p �y th�c nh�n kinh nghi�m b�ng B�ch c�u ho�n
	-- \script\global\bil4i3n\bil4i3n_autooffline4player.lua
	
bilAllowNumWindowOnIPAdress = 0 -- s� l��ng c�a s� cho ph�p / 0 = ��ng gi�i h�n
	-- Gi�i h�n c�a s� game tr�n m�i ��a ch� IP
	-- \script\global\bil4i3n\bil4i3n_limit_window_on_ip.lua
	
bilAllowDropMagicItemManual = {
	isOpen = 1,
	version = 1,
	-- M� r�i v�t ph�m v�i thu�c t�nh ma ph�p �� ���c �i�u ch�nh.
	-- R�i � c�c t�nh n�ng: Boss tinh anh, ti�u ho�ng kim, ho�ng kim, b�i train th�ng th��ng, ...
}

bilDenyNewPlayerGotoMap = {
	Deny = 1,
	MapLevelMin = 70,
	MapLevelMax = 90,
	StepLevel = 10,
	-- Kh�ng cho ph�p nh�n v�t ch�a gia nh�p m�n ph�i ho�c nh�n v�t ch� tr�ng tham gia b�n �� luy�n c�ng
	--  \script\maps\newworldscript_default.lua
}

bilDenyLevelPlayerGotoMap = {
	Deny = 1,
	MapLevelMin = 70,
	MapLevelMax = 90,
	StepLevel = 10,
	-- Kh�ng cho ph�p c�c nh�n v�t ch�a �� c�p �� c�a b�n �� tham gia luy�n c�ng
	-- \script\maps\newworldscript_default.lua
}

bilRandomMapPos = 1
	-- Ti�n v�o b�n �� train s� ng�u nhi�n t�a �� g�n c�ng v�o, tr�nh t�nh tr�ng ch�n c�ng
	-- Hi�n h� tr� cho c�c b�n �� t� 7x ��n 9x
	
bilSupportForMenberDoingMissionOfSeasonNPC = 0
	-- H� tr� cho nh�n v�t �ang l�m NV d� t�u, t�ng t� l� r�i ra th�n b� �� ch�, �p d�ng duy nh�t tr�n b�n �� v� ch�a �� s� l��ng
	-- \script\activitysys\g_npcdeath.lua

function PrintGameSv_Conv(bil_In_1)
	if type(bil_In_1) == "number" then
		if bil_In_1 == 0 then
			return "--OFF"
		end
	end
	if bil_In_1 > 1 then
		return bil_In_1
	end
	return "ON"
end
print(" ");
print( "========================================================================================");
print( " <Open Test Game>:\t"..PrintGameSv_Conv(bilOpenTestGame).. "\t\tOpen Shop Ky Tran Cac:	"..PrintGameSv_Conv(bilOpenShopKTC))
print( " Toc do luyen ky nang: 	".._TocDoLuyenKyNang.."\t\tTen cua Game Master: 	"..bilNameOfGameMaster)
print( " Ky nang Vo Hinh Doc: 	"..PrintGameSv_Conv(_KyNangVoHinhDoc).."\t\tThan bi thuong nhan: 	"..PrintGameSv_Conv(bilOpenShopThanBiThuongNhan))
print( " NPC Van su thong: 	"..PrintGameSv_Conv(bilNPCVanSuThong).."\t\tNPC Dich Quan:		"..PrintGameSv_Conv(bilNPCDichQuan))
print( " NPC Da Tau:\t\t"..PrintGameSv_Conv(bilNPCDaTau).."\t\tNPC Long Ngu:		"..PrintGameSv_Conv(bilNPCLongNgu))
print( " NPC Cong Thanh Quan: 	"..PrintGameSv_Conv(bilNPCCongThanhQuan).."\t\tNPC Vo Lam Truyen Nhan: "..PrintGameSv_Conv(bilPNCVoLamTruyenNhan))
print( " NPC Binh Binh Co Nuong:"..PrintGameSv_Conv(bilNPCBinhBinhCoNuong).."\t\tNPC Nhip Thi Tran: 	"..PrintGameSv_Conv(bilNPCNhipThiTran))
print( " NPC Phong Lang Do: 	"..PrintGameSv_Conv(bilPhongLangDo).."\t\tNPC Tong Kim:		"..PrintGameSv_Conv(bilNPCTongKim))
print(" NewWorld 2 Pos Boss:	"..PrintGameSv_Conv(bilNewWorldPlayer2PosBoss).."\t\tSu Do Thiep:		"..PrintGameSv_Conv(bilSuDoThiep))
print(" Drop DpHK:		"..PrintGameSv_Conv(bilDropDoPhoHoangKim).."\t\tDrop Dp AB.DQ:		"..PrintGameSv_Conv(bilDropDoPhoABDQ))
print(" Drop DpK.Thach:	"..PrintGameSv_Conv(bilDropKhoangThach).."\t\tDrop Dp KT.DB:		"..PrintGameSv_Conv(bilDropKyTranDiBaO))
print(" Che Tao Do Tim:	"..PrintGameSv_Conv(bilAllowCheTaoDoTim).."\t\tNative Place Manual:	"..PrintGameSv_Conv(bilNativePlace2ManualMap))
print(" OnTimer Player:	"..PrintGameSv_Conv(bilAllowOnTimerOnPlayer).."\t\tOnTimer Pl - Time:	"..(type(bilAllowOnTimerOnPlayer_Time)=="table") and bilAllowOnTimerOnPlayer_Time[1].."-"..bilAllowOnTimerOnPlayer_Time[2] or PrintGameSv_Conv(bilAllowOnTimerOnPlayer_Time))
print(" OnTimer Pl - SaveNow:	"..PrintGameSv_Conv(bilAllowOnTimerOnPlayer_SaveNow).."\t\tOnTimer Pl - S.Quickly:	"..PrintGameSv_Conv(bilAllowOnTimerOnPlayer_SaveQuickly))
print(" OnTimer Pl - Title:	"..PrintGameSv_Conv(bilAllowOnTimerOnPlayer_CheckTitle).."\t\tHorse Upgrade:		"..PrintGameSv_Conv(bilAllowHorseUpgrade))
print(" Phuc Loi Ca Nhan:	"..PrintGameSv_Conv(bilAllowPhucLoiCaNhan).."\t\tBoss Tieu HK:		"..PrintGameSv_Conv(bilAllowBossTieuHoangKim))
print(" Open Full Map XaPhu:	"..PrintGameSv_Conv(bilAllowTransFullMapInNPC).."\t\tTaskNvHK Old:		"..PrintGameSv_Conv(bilNPCTaskHoangKim))
print(" NV Tan Thu New:	"..PrintGameSv_Conv(bilAllowNvTanThu).."\t\tVerify Client:		"..PrintGameSv_Conv(bilAllowVerifyClient))
print(" OnTimer Auto Chat:	"..PrintGameSv_Conv(bilAllowOnTimerAutoChat).."\t\tAnti Post Tong Kim:	"..PrintGameSv_Conv(bilAllowCheckIpBattleSongJin))
print( "========================================================================================");




