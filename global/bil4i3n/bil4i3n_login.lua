Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\ϴpk������.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_autooffline4player.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_worldrank_hook.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_ontimer_player.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_phuc_loi_ca_nhan.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_verify_client.lua")
Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_client_ip.lua")

-- \script\global\bil4i3n\bil4i3n_login.lua

function bilLoginMain_CallGMInGame()
	local a, b = getn(bilGMInGame), GetName()
	local c
	
	for _i = 1, a do
		if bilGMInGame[_i][1] == b then
		
			local n_title = 327 -- GAME MASTER
			Title_AddTitle(n_title, 2, 10000000)
			Title_ActiveTitle(n_title)
			SetTask(1122, n_title)
			
			if ConsumeItem(3, 0, 0, 11, 367, -1) ~= 1 then
				c = AddItem(0,11,367,1,0,0,0)
				SetItemBindState(c, -2)
			end
			
			if ConsumeItem(3, 0, 6, 1, 4257, -1) ~= 1 then
				c = AddItem(6, 1, 4257, 0, 0, 0, 0)
				SetItemBindState(c, -2)
			end
			
			if ConsumeItem(3, 0, 6, 1, 1266, -1) ~= 1 then
				c = AddItem(6, 1, 1266, 0, 0, 0, 0)
				SetItemBindState(c, -2)
			end
			
			if bilGMInGame[_i][2] == 1 then
				--SetMoveSpeed(40)
			end
			
			if bilGMInGame[_i][2] == 2 then
				--CastSkill(733,20)
			end
		end
	end
end

function bilLoginMain()
	bilAutoOfflineLiveDelPlayerIndex(PlayerIndex)
	bilRankHook:GetRank(GetName())
	if GetName() ~= bilNameOfGameMaster then
		bilCallOnTimerPlayer()
	end

	ResetBox:AnnounceResetBoxDate()
	
	if GetTask(5884) ~= 0 then
		local a = tonumber(date("%d%H%M%S"))
		local b =  GetTask(5884)
		
		if ((b + 5) >= a) then
			SetTaskTemp(246, PlayerIndex)
			Talk(1, "", "<color=0x00ffff>Save Session for GameMaster on MultiGamesv !!!<color=white><enter><enter>a: "..a.."<enter>b: "..b.."<enter>pIndex: "..PlayerIndex)
		end
	end
	--Msg2SubWorld("<color=cyan>"..GetName().."<color=green> �� Online<pic=135>")
	Msg2SubWorld("<color=0xa9ffe0>"..GetName().." �� Online")
	--bilLoginMain_CallGMInGame()

--FixAuToLogin()
--if (HaveMagic(75) >= 0 and HaveMagic(48) >= 0) or (HaveMagic(75) >= 0 and HaveMagic(114) >= 0) or (HaveMagic(75) >= 0 and HaveMagic(252) >= 0) or (HaveMagic(75) >= 0 and HaveMagic(130) >= 0) or (HaveMagic(75) >= 0 and HaveMagic(150) >= 0)  or (HaveMagic(75) >= 0 and HaveMagic(166) >= 0)  or (HaveMagic(75) >= 0 and HaveMagic(275) >= 0)  or (HaveMagic(75) >= 0 and HaveMagic(36) >= 0)  or (HaveMagic(75) >= 0 and HaveMagic(273) >= 0) or  (HaveMagic(48) >= 0 and HaveMagic(114) >= 0) or (HaveMagic(48) >= 0 and HaveMagic(252) >= 0) or (HaveMagic(48) >= 0 and HaveMagic(130) >= 0) or (HaveMagic(48) >= 0 and HaveMagic(150) >= 0)  or (HaveMagic(48) >= 0 and HaveMagic(166) >= 0)  or (HaveMagic(48) >= 0 and HaveMagic(275) >= 0)  or (HaveMagic(48) >= 0 and HaveMagic(36) >= 0)  or (HaveMagic(48) >= 0 and HaveMagic(273) >= 0)  or   (HaveMagic(114) >= 0 and HaveMagic(252) >= 0) or (HaveMagic(114) >= 0 and HaveMagic(130) >= 0) or (HaveMagic(114) >= 0 and HaveMagic(150) >= 0)  or (HaveMagic(114) >= 0 and HaveMagic(166) >= 0)  or (HaveMagic(114) >= 0 and HaveMagic(275) >= 0)  or (HaveMagic(114) >= 0 and HaveMagic(36) >= 0)  or (HaveMagic(114) >= 0 and HaveMagic(273) >= 0) or (HaveMagic(252) >= 0 and HaveMagic(130) >= 0) or (HaveMagic(252) >= 0 and HaveMagic(150) >= 0)  or (HaveMagic(252) >= 0 and HaveMagic(166) >= 0)  or (HaveMagic(252) >= 0 and HaveMagic(275) >= 0)  or (HaveMagic(252) >= 0 and HaveMagic(36) >= 0)  or (HaveMagic(252) >= 0 and HaveMagic(273) >= 0) or (HaveMagic(130) >= 0 and HaveMagic(150) >= 0)  or (HaveMagic(130) >= 0 and HaveMagic(166) >= 0)  or (HaveMagic(130) >= 0 and HaveMagic(275) >= 0)  or (HaveMagic(130) >= 0 and HaveMagic(36) >= 0)  or (HaveMagic(130) >= 0 and HaveMagic(273) >= 0) or (HaveMagic(150) >= 0 and HaveMagic(166) >= 0)  or (HaveMagic(150) >= 0 and HaveMagic(275) >= 0)  or (HaveMagic(150) >= 0 and HaveMagic(36) >= 0)  or (HaveMagic(150) >= 0 and HaveMagic(273) >= 0) or (HaveMagic(166) >= 0 and HaveMagic(275) >= 0)  or (HaveMagic(166) >= 0 and HaveMagic(36) >= 0)  or (HaveMagic(166) >= 0 and HaveMagic(273) >= 0) or (HaveMagic(275) >= 0 and HaveMagic(36) >= 0)  or (HaveMagic(275) >= 0 and HaveMagic(273) >= 0) or (HaveMagic(36) >= 0 and HaveMagic(273) >= 0) then
	-- local fileghibug = "script/global/bil4i3n/bil4i3n_log/bugacc.log"
	-- local bugacc = openfile(fileghibug, "a");
	-- write(bugacc, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Acc Bug Ky Nang Khong Ro Nguon Goc\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	-- closefile(bugacc)
--return
--OfflineLive(PlayerIndex); 
	
--end
Bil_WriteLog()
FixAuToLogin()
end

function Bil_WriteLog()
                        -- local tiendongok =CalcItemCount(3,4,417,1,1) +  CalcItemCount(4,4,417,1,1) + CalcItemCount(9,4,417,1,1) + CalcItemCount(10,4,417,1,1)  + CalcItemCount(11,4,417,1,1)
	 local Bil_LogFileName = "script/global/bil4i3n/bil4i3n_log/DangNhapGame_"..date("%d_%m_%Y")..".log"
	 local Bi_FileLog = openfile(Bil_LogFileName, "a");
	 write(Bi_FileLog, format("%d:%d\tAccount: %s\t\t Name: %s\t\t Level: %s   \n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel()))

	-- write(Bi_FileLog, format("%d:%d\tAccount: %s\t\t Name: %s\t\t Level: %s  - Tien Dong: %s \n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel(),tiendongok))
	 closefile(Bi_FileLog)
end

function bilLoginMsg2Player()
	-- local bilMessengeLoginGame = ""
		-- .."<color=wood>V� L�m "..bilServerName.." \n<color=white>"
		-- .."\t\tPhi�n b�n <color=Orange>"..bilServerVersion.."<color> !\n"
		-- .."\t\tCh� � b�o v� b�n th�n, c�n th�n b� l�a.\n"
		-- .."\t\tCh�i game �i�u ��,\n"
		-- .."\t\ttr�nh �nh h��ng ��n s�c kho�.\n"
		-- .."\t\tS�p x�p th�i gian v� c�ng vi�c h�p l�."
	-- Msg2Player(bilMessengeLoginGame)
	--Msg2Player(bil.C(2, "��n g�p L� Quan �� nh�n c�c ph�n th��ng gi� tr�, g�p Long Ng� �� l�m nhi�m v� t�n th� v�i ph�n th��ng ��ng c�p v� trang b�!"))
	--Msg2Player(bil.C(1, "M� C�m Nang ��ng H�nh �� nh�n  h� tr� hi�u �ng h�i!"))
	if bilAllowNvTanThu == 1 and bilDenyAfterOpenTopRacing == 1 then
		Msg2Player(bil.C(1, "H� th�ng nhi�m v� t�n th� �ang m�, ho�n th�nh chu�i NV t�n th� s� ���c th�ng c�p c�c nhanh v� ph�n th��ng trang b�."))
	end
end

function bilSupportNewMember()
if GetLevel() < 200 and GetTask(5931) ~= 1 then
	SetTask(5931, 1)
	ST_LevelUp(200)

		
		local a = {
			{
				P = {
					i = {
						{v = {6,1,1266,1,0,0,0}, n = 1, b = -2, e = 0, ne = "Th�n h�nh ph�"},
						 {v = {6,1,438,1,0,0,0}, n = 1, b = -2, e = 0, ne = "Th� ��a ph�"},
						{v = {6,1,4360,1,0,0,0}, n = 1, b = -2, e = 0, ne = "L�nh B�i T�n Th�"},
						--{v = {0,10,8,1,0,0,0}, n = 1, b = -2, e = 0, ne = "Phi V�n"},
					},
				},
			},
		}
		
		bil.Say(a)
		
	end
DisabledStall(1)
end

function bilLoginMain_ChanelChat()
	if GetTask(5881) == 0 then
		return
	end
	
	local a = bil.Time.GetExpired(5881)
	local _, b
	
	if a then
		_, b = bil.SplitTime(a)
		Msg2Player("Th�i gian cho ph�p ch�t tr� l�i trong: "..b)
	else
		SetTask(5881, 0)
		SetChatFlag(0)
		Msg2Player("�� cho ph�p nh�n v�t s� d�ng c�c t�n s� t�n g�u!")
	end
end

function bilCheckNapTheLogin()
	bilPhucLoi_CheckNapThe()
end

function bilFuncGetTaskTanThu()
	bilNvTanThu:GetTask()
end

function bilFuncCheckAffterOpenServer()
	bilCheckDuaTop:FuncMain()
end

function bilFuncCheckClient()
	bilVerifyClient:SendRequest2Client()
end

function bilFuncClientIP()
	bilClientIP:SendRequest2Client()
end


--if login_add then login_add(bilLoginMsg2Player, 1) end
if login_add then login_add(bilSupportNewMember, 1) end
--if login_add then login_add(bilCheckNapTheLogin, 1) end
if login_add then login_add(bilFuncGetTaskTanThu, 1) end
if login_add then login_add(bilFuncCheckAffterOpenServer, 1) end
--if login_add then login_add(bilFuncCheckClient, 1) end
--if login_add then login_add(bilFuncClientIP, 1) end
--if login_add then login_add(bilLoginMain_ChanelChat, 1) end


function FixAuToLogin()
if GetLastFactionNumber() == 0 then
--thienvuong
		DelMagic(34) --Skill Hoa son
		DelMagic(30) --Skill Hoa son
		DelMagic(29) --Skill Hoa son
		DelMagic(26) --Skill Hoa son
		DelMagic(23) --Skill Hoa son
		DelMagic(24) --Skill Hoa son
		DelMagic(33) --Skill Hoa son
		DelMagic(37) --Skill Hoa son
		DelMagic(35) --Skill Hoa son
		DelMagic(31) --Skill Hoa son
		DelMagic(40) --Skill Hoa son
		DelMagic(42) --Skill Hoa son
		DelMagic(36) --Skill Hoa son
		DelMagic(32) --Skill Hoa son
		DelMagic(41) --Skill Hoa son
		DelMagic(324) --Skill Hoa son
		DelMagic(322) --Skill Hoa son
		DelMagic(323) --Skill Hoa son
		DelMagic(325) --Skill Hoa son
		DelMagic(708) --
--ngami
		DelMagic(85) --Skill Hoa son
		DelMagic(80) --Skill Hoa son
		DelMagic(77) --Skill Hoa son
		DelMagic(79) --Skill Hoa son
		DelMagic(93) --Skill Hoa son
		DelMagic(385) --Skill Hoa son
		DelMagic(82) --Skill Hoa son
		DelMagic(89) --Skill Hoa son
		DelMagic(86) --Skill Hoa son
		DelMagic(92) --Skill Hoa son
		DelMagic(252) --Skill Hoa son
		DelMagic(88) --Skill Hoa son
		DelMagic(91) --Skill Hoa son
		DelMagic(282) --Skill Hoa son
		DelMagic(328) --Skill Hoa son
		DelMagic(380) --Skill Hoa son
		DelMagic(332) --Skill Hoa son
		DelMagic(712) --Skill Hoa son
--thuy yen

		DelMagic(99) --Skill Hoa son
		DelMagic(102) --Skill Hoa son
		DelMagic(95) --Skill Hoa son
		DelMagic(97) --Skill Hoa son
		DelMagic(269) --Skill Hoa son
		DelMagic(105) --Skill Hoa son
		DelMagic(113) --Skill Hoa son
		DelMagic(100) --Skill Hoa son
		DelMagic(109) --Skill Hoa son
		DelMagic(114) --Skill Hoa son
		DelMagic(108) --Skill Hoa son
		DelMagic(111) --Skill Hoa son
		DelMagic(336) --Skill Hoa son
		DelMagic(337) --Skill Hoa son
		DelMagic(713) --Skill Hoa son
		DelMagic(1223) --Skill Hoa son
		DelMagic(1224) --Skill Hoa son


--duong mon

		DelMagic(45) --Skill Hoa son
		DelMagic(43) --Skill Hoa son
		DelMagic(347) --Skill Hoa son
		DelMagic(303) --Skill Hoa son
		DelMagic(50) --Skill Hoa son
		DelMagic(54) --Skill Hoa son
		DelMagic(47) --Skill Hoa son
		DelMagic(343) --Skill Hoa son
		DelMagic(345) --Skill Hoa son
		DelMagic(349) --Skill Hoa son
		DelMagic(48) --Skill Hoa son
		DelMagic(249) --Skill Hoa son
		DelMagic(58) --Skill Hoa son
		DelMagic(341) --Skill Hoa son
		DelMagic(339) --Skill Hoa son
		DelMagic(302) --Skill Hoa son
		DelMagic(342) --Skill Hoa son
		DelMagic(351) --Skill Hoa son
		DelMagic(710) --Skill Hoa son
--ngu doc

		DelMagic(63) --Skill Hoa son
		DelMagic(65) --Skill Hoa son
		DelMagic(62) --Skill Hoa son
		DelMagic(60) --Skill Hoa son
		DelMagic(67) --Skill Hoa son
		DelMagic(70) --Skill Hoa son
		DelMagic(66) --Skill Hoa son
		DelMagic(68) --Skill Hoa son
		DelMagic(384) --Skill Hoa son
		DelMagic(64) --Skill Hoa son
		DelMagic(69) --Skill Hoa son
		DelMagic(356) --Skill Hoa son
		DelMagic(73) --Skill Hoa son
		DelMagic(72) --Skill Hoa son
		DelMagic(75) --Skill Hoa son
		DelMagic(71) --Skill Hoa son
		DelMagic(74) --Skill Hoa son
		DelMagic(353) --Skill Hoa son
		DelMagic(355) --Skill Hoa son
		DelMagic(390) --Skill Hoa son
		DelMagic(711) --Skill Hoa son
--cai bang

		DelMagic(122) --Skill Hoa son
		DelMagic(119) --Skill Hoa son
		DelMagic(116) --Skill Hoa son
		DelMagic(115) --Skill Hoa son
		DelMagic(129) --Skill Hoa son
		DelMagic(274) --Skill Hoa son
		DelMagic(124) --Skill Hoa son
		DelMagic(277) --Skill Hoa son
		DelMagic(128) --Skill Hoa son
		DelMagic(125) --Skill Hoa son
		DelMagic(130) --Skill Hoa son
		DelMagic(360) --Skill Hoa son
		DelMagic(357) --Skill Hoa son
		DelMagic(359) --Skill Hoa son
		DelMagic(714) --Skill Hoa son
--thien nhan

		DelMagic(135) --Skill Hoa son
		DelMagic(145) --Skill Hoa son
		DelMagic(132) --Skill Hoa son
		DelMagic(131) --Skill Hoa son
		DelMagic(136) --Skill Hoa son
		DelMagic(137) --Skill Hoa son
		DelMagic(141) --Skill Hoa son
		DelMagic(138) --Skill Hoa son
		DelMagic(140) --Skill Hoa son
		DelMagic(364) --Skill Hoa son
		DelMagic(143) --Skill Hoa son
		DelMagic(150) --Skill Hoa son
		DelMagic(142) --Skill Hoa son
		DelMagic(148) --Skill Hoa son
		DelMagic(361) --Skill Hoa son
		DelMagic(362) --Skill Hoa son
		DelMagic(391) --Skill Hoa son
		DelMagic(715) --Skill Hoa son
--vo dang
		DelMagic(153) --Skill Hoa son
		DelMagic(155) --Skill Hoa son
		DelMagic(152) --Skill Hoa son
		DelMagic(151) --Skill Hoa son
		DelMagic(159) --Skill Hoa son
		DelMagic(164) --Skill Hoa son
		DelMagic(158) --Skill Hoa son
		DelMagic(160) --Skill Hoa son
		DelMagic(157) --Skill Hoa son
		DelMagic(166) --Skill Hoa son
		DelMagic(165) --Skill Hoa son
		DelMagic(267) --Skill Hoa son
		DelMagic(365) --Skill Hoa son
		DelMagic(368) --Skill Hoa son
		DelMagic(716) --Skill Hoa son
--con lon
		DelMagic(169) --Skill Hoa son
		DelMagic(179) --Skill Hoa son
		DelMagic(167) --Skill Hoa son
		DelMagic(168) --Skill Hoa son
		DelMagic(392) --Skill Hoa son
		DelMagic(171) --Skill Hoa son
		DelMagic(174) --Skill Hoa son
		DelMagic(178) --Skill Hoa son
		DelMagic(172) --Skill Hoa son
		DelMagic(393) --Skill Hoa son
		DelMagic(173) --Skill Hoa son
		DelMagic(175) --Skill Hoa son
		DelMagic(181) --Skill Hoa son
		DelMagic(176) --Skill Hoa son
		DelMagic(90) --Skill Hoa son
		DelMagic(275) --Skill Hoa son
		DelMagic(182) --Skill Hoa son
		DelMagic(372) --Skill Hoa son
		DelMagic(375) --Skill Hoa son
		DelMagic(394) --Skill Hoa son
		DelMagic(717) --Skill Hoa son
		DelMagic(630) --Skill Hoa son
SetRank(72)
elseif GetLastFactionNumber() == 1 then
		DelMagic(14) --Skill Hoa son
		DelMagic(8) --Skill Hoa son
		DelMagic(10) --Skill Hoa son
		DelMagic(4) --Skill Hoa son
		DelMagic(6) --Skill Hoa son
		DelMagic(15) --Skill Hoa son
		DelMagic(16) --Skill Hoa son
		DelMagic(20) --Skill Hoa son
		DelMagic(271) --Skill Hoa son
		DelMagic(11) --Skill Hoa son
		DelMagic(19) --Skill Hoa son
		DelMagic(273) --Skill Hoa son
		DelMagic(21) --Skill Hoa son
		DelMagic(318) --Skill Hoa son
		DelMagic(319) --Skill Hoa son
		DelMagic(321) --Skill Hoa son
		DelMagic(709) --Skill Hoa son

--ngami
		DelMagic(85) --Skill Hoa son
		DelMagic(80) --Skill Hoa son
		DelMagic(77) --Skill Hoa son
		DelMagic(79) --Skill Hoa son
		DelMagic(93) --Skill Hoa son
		DelMagic(385) --Skill Hoa son
		DelMagic(82) --Skill Hoa son
		DelMagic(89) --Skill Hoa son
		DelMagic(86) --Skill Hoa son
		DelMagic(92) --Skill Hoa son
		DelMagic(252) --Skill Hoa son
		DelMagic(88) --Skill Hoa son
		DelMagic(91) --Skill Hoa son
		DelMagic(282) --Skill Hoa son
		DelMagic(328) --Skill Hoa son
		DelMagic(380) --Skill Hoa son
		DelMagic(332) --Skill Hoa son
		DelMagic(712) --Skill Hoa son
--thuy yen

		DelMagic(99) --Skill Hoa son
		DelMagic(102) --Skill Hoa son
		DelMagic(95) --Skill Hoa son
		DelMagic(97) --Skill Hoa son
		DelMagic(269) --Skill Hoa son
		DelMagic(105) --Skill Hoa son
		DelMagic(113) --Skill Hoa son
		DelMagic(100) --Skill Hoa son
		DelMagic(109) --Skill Hoa son
		DelMagic(114) --Skill Hoa son
		DelMagic(108) --Skill Hoa son
		DelMagic(111) --Skill Hoa son
		DelMagic(336) --Skill Hoa son
		DelMagic(337) --Skill Hoa son
		DelMagic(713) --Skill Hoa son
		DelMagic(1223) --Skill Hoa son
		DelMagic(1224) --Skill Hoa son
--duong mon

		DelMagic(45) --Skill Hoa son
		DelMagic(43) --Skill Hoa son
		DelMagic(347) --Skill Hoa son
		DelMagic(303) --Skill Hoa son
		DelMagic(50) --Skill Hoa son
		DelMagic(54) --Skill Hoa son
		DelMagic(47) --Skill Hoa son
		DelMagic(343) --Skill Hoa son
		DelMagic(345) --Skill Hoa son
		DelMagic(349) --Skill Hoa son
		DelMagic(48) --Skill Hoa son
		DelMagic(249) --Skill Hoa son
		DelMagic(58) --Skill Hoa son
		DelMagic(341) --Skill Hoa son
		DelMagic(339) --Skill Hoa son
		DelMagic(302) --Skill Hoa son
		DelMagic(342) --Skill Hoa son
		DelMagic(351) --Skill Hoa son
		DelMagic(710) --Skill Hoa son
--ngu doc

		DelMagic(63) --Skill Hoa son
		DelMagic(65) --Skill Hoa son
		DelMagic(62) --Skill Hoa son
		DelMagic(60) --Skill Hoa son
		DelMagic(67) --Skill Hoa son
		DelMagic(70) --Skill Hoa son
		DelMagic(66) --Skill Hoa son
		DelMagic(68) --Skill Hoa son
		DelMagic(384) --Skill Hoa son
		DelMagic(64) --Skill Hoa son
		DelMagic(69) --Skill Hoa son
		DelMagic(356) --Skill Hoa son
		DelMagic(73) --Skill Hoa son
		DelMagic(72) --Skill Hoa son
		DelMagic(75) --Skill Hoa son
		DelMagic(71) --Skill Hoa son
		DelMagic(74) --Skill Hoa son
		DelMagic(353) --Skill Hoa son
		DelMagic(355) --Skill Hoa son
		DelMagic(390) --Skill Hoa son
		DelMagic(711) --Skill Hoa son
--cai bang

		DelMagic(122) --Skill Hoa son
		DelMagic(119) --Skill Hoa son
		DelMagic(116) --Skill Hoa son
		DelMagic(115) --Skill Hoa son
		DelMagic(129) --Skill Hoa son
		DelMagic(274) --Skill Hoa son
		DelMagic(124) --Skill Hoa son
		DelMagic(277) --Skill Hoa son
		DelMagic(128) --Skill Hoa son
		DelMagic(125) --Skill Hoa son
		DelMagic(130) --Skill Hoa son
		DelMagic(360) --Skill Hoa son
		DelMagic(357) --Skill Hoa son
		DelMagic(359) --Skill Hoa son
		DelMagic(714) --Skill Hoa son
--thien nhan

		DelMagic(135) --Skill Hoa son
		DelMagic(145) --Skill Hoa son
		DelMagic(132) --Skill Hoa son
		DelMagic(131) --Skill Hoa son
		DelMagic(136) --Skill Hoa son
		DelMagic(137) --Skill Hoa son
		DelMagic(141) --Skill Hoa son
		DelMagic(138) --Skill Hoa son
		DelMagic(140) --Skill Hoa son
		DelMagic(364) --Skill Hoa son
		DelMagic(143) --Skill Hoa son
		DelMagic(150) --Skill Hoa son
		DelMagic(142) --Skill Hoa son
		DelMagic(148) --Skill Hoa son
		DelMagic(361) --Skill Hoa son
		DelMagic(362) --Skill Hoa son
		DelMagic(391) --Skill Hoa son
		DelMagic(715) --Skill Hoa son
--vo dang
		DelMagic(153) --Skill Hoa son
		DelMagic(155) --Skill Hoa son
		DelMagic(152) --Skill Hoa son
		DelMagic(151) --Skill Hoa son
		DelMagic(159) --Skill Hoa son
		DelMagic(164) --Skill Hoa son
		DelMagic(158) --Skill Hoa son
		DelMagic(160) --Skill Hoa son
		DelMagic(157) --Skill Hoa son
		DelMagic(166) --Skill Hoa son
		DelMagic(165) --Skill Hoa son
		DelMagic(267) --Skill Hoa son
		DelMagic(365) --Skill Hoa son
		DelMagic(368) --Skill Hoa son
		DelMagic(716) --Skill Hoa son
--con lon
		DelMagic(169) --Skill Hoa son
		DelMagic(179) --Skill Hoa son
		DelMagic(167) --Skill Hoa son
		DelMagic(168) --Skill Hoa son
		DelMagic(392) --Skill Hoa son
		DelMagic(171) --Skill Hoa son
		DelMagic(174) --Skill Hoa son
		DelMagic(178) --Skill Hoa son
		DelMagic(172) --Skill Hoa son
		DelMagic(393) --Skill Hoa son
		DelMagic(173) --Skill Hoa son
		DelMagic(175) --Skill Hoa son
		DelMagic(181) --Skill Hoa son
		DelMagic(176) --Skill Hoa son
		DelMagic(90) --Skill Hoa son
		DelMagic(275) --Skill Hoa son
		DelMagic(182) --Skill Hoa son
		DelMagic(372) --Skill Hoa son
		DelMagic(375) --Skill Hoa son
		DelMagic(394) --Skill Hoa son
		DelMagic(717) --Skill Hoa son
		DelMagic(630) --Skill Hoa son
SetRank(69)
elseif GetLastFactionNumber() == 2 then
		DelMagic(14) --Skill Hoa son
		DelMagic(8) --Skill Hoa son
		DelMagic(10) --Skill Hoa son
		DelMagic(4) --Skill Hoa son
		DelMagic(6) --Skill Hoa son
		DelMagic(15) --Skill Hoa son
		DelMagic(16) --Skill Hoa son
		DelMagic(20) --Skill Hoa son
		DelMagic(271) --Skill Hoa son
		DelMagic(11) --Skill Hoa son
		DelMagic(19) --Skill Hoa son
		DelMagic(273) --Skill Hoa son
		DelMagic(21) --Skill Hoa son
		DelMagic(318) --Skill Hoa son
		DelMagic(319) --Skill Hoa son
		DelMagic(321) --Skill Hoa son
		DelMagic(709) --Skill Hoa son
--thienvuong
		DelMagic(34) --Skill Hoa son
		DelMagic(30) --Skill Hoa son
		DelMagic(29) --Skill Hoa son
		DelMagic(26) --Skill Hoa son
		DelMagic(23) --Skill Hoa son
		DelMagic(24) --Skill Hoa son
		DelMagic(33) --Skill Hoa son
		DelMagic(37) --Skill Hoa son
		DelMagic(35) --Skill Hoa son
		DelMagic(31) --Skill Hoa son
		DelMagic(40) --Skill Hoa son
		DelMagic(42) --Skill Hoa son
		DelMagic(36) --Skill Hoa son
		DelMagic(32) --Skill Hoa son
		DelMagic(41) --Skill Hoa son
		DelMagic(324) --Skill Hoa son
		DelMagic(322) --Skill Hoa son
		DelMagic(323) --Skill Hoa son
		DelMagic(325) --Skill Hoa son
		DelMagic(708) --
--ngami
		DelMagic(85) --Skill Hoa son
		DelMagic(80) --Skill Hoa son
		DelMagic(77) --Skill Hoa son
		DelMagic(79) --Skill Hoa son
		DelMagic(93) --Skill Hoa son
		DelMagic(385) --Skill Hoa son
		DelMagic(82) --Skill Hoa son
		DelMagic(89) --Skill Hoa son
		DelMagic(86) --Skill Hoa son
		DelMagic(92) --Skill Hoa son
		DelMagic(252) --Skill Hoa son
		DelMagic(88) --Skill Hoa son
		DelMagic(91) --Skill Hoa son
		DelMagic(282) --Skill Hoa son
		DelMagic(328) --Skill Hoa son
		DelMagic(380) --Skill Hoa son
		DelMagic(332) --Skill Hoa son
		DelMagic(712) --Skill Hoa son
--thuy yen

		DelMagic(99) --Skill Hoa son
		DelMagic(102) --Skill Hoa son
		DelMagic(95) --Skill Hoa son
		DelMagic(97) --Skill Hoa son
		DelMagic(269) --Skill Hoa son
		DelMagic(105) --Skill Hoa son
		DelMagic(113) --Skill Hoa son
		DelMagic(100) --Skill Hoa son
		DelMagic(109) --Skill Hoa son
		DelMagic(114) --Skill Hoa son
		DelMagic(108) --Skill Hoa son
		DelMagic(111) --Skill Hoa son
		DelMagic(336) --Skill Hoa son
		DelMagic(337) --Skill Hoa son
		DelMagic(713) --Skill Hoa son
		DelMagic(1223) --Skill Hoa son
		DelMagic(1224) --Skill Hoa son

--ngu doc

		DelMagic(63) --Skill Hoa son
		DelMagic(65) --Skill Hoa son
		DelMagic(62) --Skill Hoa son
		DelMagic(60) --Skill Hoa son
		DelMagic(67) --Skill Hoa son
		DelMagic(70) --Skill Hoa son
		DelMagic(66) --Skill Hoa son
		DelMagic(68) --Skill Hoa son
		DelMagic(384) --Skill Hoa son
		DelMagic(64) --Skill Hoa son
		DelMagic(69) --Skill Hoa son
		DelMagic(356) --Skill Hoa son
		DelMagic(73) --Skill Hoa son
		DelMagic(72) --Skill Hoa son
		DelMagic(75) --Skill Hoa son
		DelMagic(71) --Skill Hoa son
		DelMagic(74) --Skill Hoa son
		DelMagic(353) --Skill Hoa son
		DelMagic(355) --Skill Hoa son
		DelMagic(390) --Skill Hoa son
		DelMagic(711) --Skill Hoa son
--cai bang

		DelMagic(122) --Skill Hoa son
		DelMagic(119) --Skill Hoa son
		DelMagic(116) --Skill Hoa son
		DelMagic(115) --Skill Hoa son
		DelMagic(129) --Skill Hoa son
		DelMagic(274) --Skill Hoa son
		DelMagic(124) --Skill Hoa son
		DelMagic(277) --Skill Hoa son
		DelMagic(128) --Skill Hoa son
		DelMagic(125) --Skill Hoa son
		DelMagic(130) --Skill Hoa son
		DelMagic(360) --Skill Hoa son
		DelMagic(357) --Skill Hoa son
		DelMagic(359) --Skill Hoa son
		DelMagic(714) --Skill Hoa son
--thien nhan

		DelMagic(135) --Skill Hoa son
		DelMagic(145) --Skill Hoa son
		DelMagic(132) --Skill Hoa son
		DelMagic(131) --Skill Hoa son
		DelMagic(136) --Skill Hoa son
		DelMagic(137) --Skill Hoa son
		DelMagic(141) --Skill Hoa son
		DelMagic(138) --Skill Hoa son
		DelMagic(140) --Skill Hoa son
		DelMagic(364) --Skill Hoa son
		DelMagic(143) --Skill Hoa son
		DelMagic(150) --Skill Hoa son
		DelMagic(142) --Skill Hoa son
		DelMagic(148) --Skill Hoa son
		DelMagic(361) --Skill Hoa son
		DelMagic(362) --Skill Hoa son
		DelMagic(391) --Skill Hoa son
		DelMagic(715) --Skill Hoa son
--vo dang
		DelMagic(153) --Skill Hoa son
		DelMagic(155) --Skill Hoa son
		DelMagic(152) --Skill Hoa son
		DelMagic(151) --Skill Hoa son
		DelMagic(159) --Skill Hoa son
		DelMagic(164) --Skill Hoa son
		DelMagic(158) --Skill Hoa son
		DelMagic(160) --Skill Hoa son
		DelMagic(157) --Skill Hoa son
		DelMagic(166) --Skill Hoa son
		DelMagic(165) --Skill Hoa son
		DelMagic(267) --Skill Hoa son
		DelMagic(365) --Skill Hoa son
		DelMagic(368) --Skill Hoa son
		DelMagic(716) --Skill Hoa son
--con lon
		DelMagic(169) --Skill Hoa son
		DelMagic(179) --Skill Hoa son
		DelMagic(167) --Skill Hoa son
		DelMagic(168) --Skill Hoa son
		DelMagic(392) --Skill Hoa son
		DelMagic(171) --Skill Hoa son
		DelMagic(174) --Skill Hoa son
		DelMagic(178) --Skill Hoa son
		DelMagic(172) --Skill Hoa son
		DelMagic(393) --Skill Hoa son
		DelMagic(173) --Skill Hoa son
		DelMagic(175) --Skill Hoa son
		DelMagic(181) --Skill Hoa son
		DelMagic(176) --Skill Hoa son
		DelMagic(90) --Skill Hoa son
		DelMagic(275) --Skill Hoa son
		DelMagic(182) --Skill Hoa son
		DelMagic(372) --Skill Hoa son
		DelMagic(375) --Skill Hoa son
		DelMagic(394) --Skill Hoa son
		DelMagic(717) --Skill Hoa son
		DelMagic(630) --Skill Hoa son
SetRank(76)
elseif GetLastFactionNumber() == 3 then
		DelMagic(14) --Skill Hoa son
		DelMagic(8) --Skill Hoa son
		DelMagic(10) --Skill Hoa son
		DelMagic(4) --Skill Hoa son
		DelMagic(6) --Skill Hoa son
		DelMagic(15) --Skill Hoa son
		DelMagic(16) --Skill Hoa son
		DelMagic(20) --Skill Hoa son
		DelMagic(271) --Skill Hoa son
		DelMagic(11) --Skill Hoa son
		DelMagic(19) --Skill Hoa son
		DelMagic(273) --Skill Hoa son
		DelMagic(21) --Skill Hoa son
		DelMagic(318) --Skill Hoa son
		DelMagic(319) --Skill Hoa son
		DelMagic(321) --Skill Hoa son
		DelMagic(709) --Skill Hoa son
--thienvuong
		DelMagic(34) --Skill Hoa son
		DelMagic(30) --Skill Hoa son
		DelMagic(29) --Skill Hoa son
		DelMagic(26) --Skill Hoa son
		DelMagic(23) --Skill Hoa son
		DelMagic(24) --Skill Hoa son
		DelMagic(33) --Skill Hoa son
		DelMagic(37) --Skill Hoa son
		DelMagic(35) --Skill Hoa son
		DelMagic(31) --Skill Hoa son
		DelMagic(40) --Skill Hoa son
		DelMagic(42) --Skill Hoa son
		DelMagic(36) --Skill Hoa son
		DelMagic(32) --Skill Hoa son
		DelMagic(41) --Skill Hoa son
		DelMagic(324) --Skill Hoa son
		DelMagic(322) --Skill Hoa son
		DelMagic(323) --Skill Hoa son
		DelMagic(325) --Skill Hoa son
		DelMagic(708) --
--ngami
		DelMagic(85) --Skill Hoa son
		DelMagic(80) --Skill Hoa son
		DelMagic(77) --Skill Hoa son
		DelMagic(79) --Skill Hoa son
		DelMagic(93) --Skill Hoa son
		DelMagic(385) --Skill Hoa son
		DelMagic(82) --Skill Hoa son
		DelMagic(89) --Skill Hoa son
		DelMagic(86) --Skill Hoa son
		DelMagic(92) --Skill Hoa son
		DelMagic(252) --Skill Hoa son
		DelMagic(88) --Skill Hoa son
		DelMagic(91) --Skill Hoa son
		DelMagic(282) --Skill Hoa son
		DelMagic(328) --Skill Hoa son
		DelMagic(380) --Skill Hoa son
		DelMagic(332) --Skill Hoa son
		DelMagic(712) --Skill Hoa son
--thuy yen

		DelMagic(99) --Skill Hoa son
		DelMagic(102) --Skill Hoa son
		DelMagic(95) --Skill Hoa son
		DelMagic(97) --Skill Hoa son
		DelMagic(269) --Skill Hoa son
		DelMagic(105) --Skill Hoa son
		DelMagic(113) --Skill Hoa son
		DelMagic(100) --Skill Hoa son
		DelMagic(109) --Skill Hoa son
		DelMagic(114) --Skill Hoa son
		DelMagic(108) --Skill Hoa son
		DelMagic(111) --Skill Hoa son
		DelMagic(336) --Skill Hoa son
		DelMagic(337) --Skill Hoa son
		DelMagic(713) --Skill Hoa son
		DelMagic(1223) --Skill Hoa son
		DelMagic(1224) --Skill Hoa son
--duong mon

		DelMagic(45) --Skill Hoa son
		DelMagic(43) --Skill Hoa son
		DelMagic(347) --Skill Hoa son
		DelMagic(303) --Skill Hoa son
		DelMagic(50) --Skill Hoa son
		DelMagic(54) --Skill Hoa son
		DelMagic(47) --Skill Hoa son
		DelMagic(343) --Skill Hoa son
		DelMagic(345) --Skill Hoa son
		DelMagic(349) --Skill Hoa son
		DelMagic(48) --Skill Hoa son
		DelMagic(249) --Skill Hoa son
		DelMagic(58) --Skill Hoa son
		DelMagic(341) --Skill Hoa son
		DelMagic(339) --Skill Hoa son
		DelMagic(302) --Skill Hoa son
		DelMagic(342) --Skill Hoa son
		DelMagic(351) --Skill Hoa son
		DelMagic(710) --Skill Hoa son

--cai bang

		DelMagic(122) --Skill Hoa son
		DelMagic(119) --Skill Hoa son
		DelMagic(116) --Skill Hoa son
		DelMagic(115) --Skill Hoa son
		DelMagic(129) --Skill Hoa son
		DelMagic(274) --Skill Hoa son
		DelMagic(124) --Skill Hoa son
		DelMagic(277) --Skill Hoa son
		DelMagic(128) --Skill Hoa son
		DelMagic(125) --Skill Hoa son
		DelMagic(130) --Skill Hoa son
		DelMagic(360) --Skill Hoa son
		DelMagic(357) --Skill Hoa son
		DelMagic(359) --Skill Hoa son
		DelMagic(714) --Skill Hoa son
--thien nhan

		DelMagic(135) --Skill Hoa son
		DelMagic(145) --Skill Hoa son
		DelMagic(132) --Skill Hoa son
		DelMagic(131) --Skill Hoa son
		DelMagic(136) --Skill Hoa son
		DelMagic(137) --Skill Hoa son
		DelMagic(141) --Skill Hoa son
		DelMagic(138) --Skill Hoa son
		DelMagic(140) --Skill Hoa son
		DelMagic(364) --Skill Hoa son
		DelMagic(143) --Skill Hoa son
		DelMagic(150) --Skill Hoa son
		DelMagic(142) --Skill Hoa son
		DelMagic(148) --Skill Hoa son
		DelMagic(361) --Skill Hoa son
		DelMagic(362) --Skill Hoa son
		DelMagic(391) --Skill Hoa son
		DelMagic(715) --Skill Hoa son
--vo dang
		DelMagic(153) --Skill Hoa son
		DelMagic(155) --Skill Hoa son
		DelMagic(152) --Skill Hoa son
		DelMagic(151) --Skill Hoa son
		DelMagic(159) --Skill Hoa son
		DelMagic(164) --Skill Hoa son
		DelMagic(158) --Skill Hoa son
		DelMagic(160) --Skill Hoa son
		DelMagic(157) --Skill Hoa son
		DelMagic(166) --Skill Hoa son
		DelMagic(165) --Skill Hoa son
		DelMagic(267) --Skill Hoa son
		DelMagic(365) --Skill Hoa son
		DelMagic(368) --Skill Hoa son
		DelMagic(716) --Skill Hoa son
--con lon
		DelMagic(169) --Skill Hoa son
		DelMagic(179) --Skill Hoa son
		DelMagic(167) --Skill Hoa son
		DelMagic(168) --Skill Hoa son
		DelMagic(392) --Skill Hoa son
		DelMagic(171) --Skill Hoa son
		DelMagic(174) --Skill Hoa son
		DelMagic(178) --Skill Hoa son
		DelMagic(172) --Skill Hoa son
		DelMagic(393) --Skill Hoa son
		DelMagic(173) --Skill Hoa son
		DelMagic(175) --Skill Hoa son
		DelMagic(181) --Skill Hoa son
		DelMagic(176) --Skill Hoa son
		DelMagic(90) --Skill Hoa son
		DelMagic(275) --Skill Hoa son
		DelMagic(182) --Skill Hoa son
		DelMagic(372) --Skill Hoa son
		DelMagic(375) --Skill Hoa son
		DelMagic(394) --Skill Hoa son
		DelMagic(717) --Skill Hoa son
		DelMagic(630) --Skill Hoa son
SetRank(80)
elseif GetFaction() == "emei" or GetLastFactionNumber() == 4  then
		DelMagic(14) --Skill Hoa son
		DelMagic(8) --Skill Hoa son
		DelMagic(10) --Skill Hoa son
		DelMagic(4) --Skill Hoa son
		DelMagic(6) --Skill Hoa son
		DelMagic(15) --Skill Hoa son
		DelMagic(16) --Skill Hoa son
		DelMagic(20) --Skill Hoa son
		DelMagic(271) --Skill Hoa son
		DelMagic(11) --Skill Hoa son
		DelMagic(19) --Skill Hoa son
		DelMagic(273) --Skill Hoa son
		DelMagic(21) --Skill Hoa son
		DelMagic(318) --Skill Hoa son
		DelMagic(319) --Skill Hoa son
		DelMagic(321) --Skill Hoa son
		DelMagic(709) --Skill Hoa son
--thienvuong
		DelMagic(34) --Skill Hoa son
		DelMagic(30) --Skill Hoa son
		DelMagic(29) --Skill Hoa son
		DelMagic(26) --Skill Hoa son
		DelMagic(23) --Skill Hoa son
		DelMagic(24) --Skill Hoa son
		DelMagic(33) --Skill Hoa son
		DelMagic(37) --Skill Hoa son
		DelMagic(35) --Skill Hoa son
		DelMagic(31) --Skill Hoa son
		DelMagic(40) --Skill Hoa son
		DelMagic(42) --Skill Hoa son
		DelMagic(36) --Skill Hoa son
		DelMagic(32) --Skill Hoa son
		DelMagic(41) --Skill Hoa son
		DelMagic(324) --Skill Hoa son
		DelMagic(322) --Skill Hoa son
		DelMagic(323) --Skill Hoa son
		DelMagic(325) --Skill Hoa son
		DelMagic(708) --

--thuy yen

		DelMagic(99) --Skill Hoa son
		DelMagic(102) --Skill Hoa son
		DelMagic(95) --Skill Hoa son
		DelMagic(97) --Skill Hoa son
		DelMagic(269) --Skill Hoa son
		DelMagic(105) --Skill Hoa son
		DelMagic(113) --Skill Hoa son
		DelMagic(100) --Skill Hoa son
		DelMagic(109) --Skill Hoa son
		DelMagic(114) --Skill Hoa son
		DelMagic(108) --Skill Hoa son
		DelMagic(111) --Skill Hoa son
		DelMagic(336) --Skill Hoa son
		DelMagic(337) --Skill Hoa son
		DelMagic(713) --Skill Hoa son
		DelMagic(1223) --Skill Hoa son
		DelMagic(1224) --Skill Hoa son
--duong mon

		DelMagic(45) --Skill Hoa son
		DelMagic(43) --Skill Hoa son
		DelMagic(347) --Skill Hoa son
		DelMagic(303) --Skill Hoa son
		DelMagic(50) --Skill Hoa son
		DelMagic(54) --Skill Hoa son
		DelMagic(47) --Skill Hoa son
		DelMagic(343) --Skill Hoa son
		DelMagic(345) --Skill Hoa son
		DelMagic(349) --Skill Hoa son
		DelMagic(48) --Skill Hoa son
		DelMagic(249) --Skill Hoa son
		DelMagic(58) --Skill Hoa son
		DelMagic(341) --Skill Hoa son
		DelMagic(339) --Skill Hoa son
		DelMagic(302) --Skill Hoa son
		DelMagic(342) --Skill Hoa son
		DelMagic(351) --Skill Hoa son
		DelMagic(710) --Skill Hoa son
--ngu doc

		DelMagic(63) --Skill Hoa son
		DelMagic(65) --Skill Hoa son
		DelMagic(62) --Skill Hoa son
		DelMagic(60) --Skill Hoa son
		DelMagic(67) --Skill Hoa son
		DelMagic(70) --Skill Hoa son
		DelMagic(66) --Skill Hoa son
		DelMagic(68) --Skill Hoa son
		DelMagic(384) --Skill Hoa son
		DelMagic(64) --Skill Hoa son
		DelMagic(69) --Skill Hoa son
		DelMagic(356) --Skill Hoa son
		DelMagic(73) --Skill Hoa son
		DelMagic(72) --Skill Hoa son
		DelMagic(75) --Skill Hoa son
		DelMagic(71) --Skill Hoa son
		DelMagic(74) --Skill Hoa son
		DelMagic(353) --Skill Hoa son
		DelMagic(355) --Skill Hoa son
		DelMagic(390) --Skill Hoa son
		DelMagic(711) --Skill Hoa son
--cai bang

		DelMagic(122) --Skill Hoa son
		DelMagic(119) --Skill Hoa son
		DelMagic(116) --Skill Hoa son
		DelMagic(115) --Skill Hoa son
		DelMagic(129) --Skill Hoa son
		DelMagic(274) --Skill Hoa son
		DelMagic(124) --Skill Hoa son
		DelMagic(277) --Skill Hoa son
		DelMagic(128) --Skill Hoa son
		DelMagic(125) --Skill Hoa son
		DelMagic(130) --Skill Hoa son
		DelMagic(360) --Skill Hoa son
		DelMagic(357) --Skill Hoa son
		DelMagic(359) --Skill Hoa son
		DelMagic(714) --Skill Hoa son
--thien nhan

		DelMagic(135) --Skill Hoa son
		DelMagic(145) --Skill Hoa son
		DelMagic(132) --Skill Hoa son
		DelMagic(131) --Skill Hoa son
		DelMagic(136) --Skill Hoa son
		DelMagic(137) --Skill Hoa son
		DelMagic(141) --Skill Hoa son
		DelMagic(138) --Skill Hoa son
		DelMagic(140) --Skill Hoa son
		DelMagic(364) --Skill Hoa son
		DelMagic(143) --Skill Hoa son
		DelMagic(150) --Skill Hoa son
		DelMagic(142) --Skill Hoa son
		DelMagic(148) --Skill Hoa son
		DelMagic(361) --Skill Hoa son
		DelMagic(362) --Skill Hoa son
		DelMagic(391) --Skill Hoa son
		DelMagic(715) --Skill Hoa son
--vo dang
		DelMagic(153) --Skill Hoa son
		DelMagic(155) --Skill Hoa son
		DelMagic(152) --Skill Hoa son
		DelMagic(151) --Skill Hoa son
		DelMagic(159) --Skill Hoa son
		DelMagic(164) --Skill Hoa son
		DelMagic(158) --Skill Hoa son
		DelMagic(160) --Skill Hoa son
		DelMagic(157) --Skill Hoa son
		DelMagic(166) --Skill Hoa son
		DelMagic(165) --Skill Hoa son
		DelMagic(267) --Skill Hoa son
		DelMagic(365) --Skill Hoa son
		DelMagic(368) --Skill Hoa son
		DelMagic(716) --Skill Hoa son
--con lon
		DelMagic(169) --Skill Hoa son
		DelMagic(179) --Skill Hoa son
		DelMagic(167) --Skill Hoa son
		DelMagic(168) --Skill Hoa son
		DelMagic(392) --Skill Hoa son
		DelMagic(171) --Skill Hoa son
		DelMagic(174) --Skill Hoa son
		DelMagic(178) --Skill Hoa son
		DelMagic(172) --Skill Hoa son
		DelMagic(393) --Skill Hoa son
		DelMagic(173) --Skill Hoa son
		DelMagic(175) --Skill Hoa son
		DelMagic(181) --Skill Hoa son
		DelMagic(176) --Skill Hoa son
		DelMagic(90) --Skill Hoa son
		DelMagic(275) --Skill Hoa son
		DelMagic(182) --Skill Hoa son
		DelMagic(372) --Skill Hoa son
		DelMagic(375) --Skill Hoa son
		DelMagic(394) --Skill Hoa son
		DelMagic(717) --Skill Hoa son
		DelMagic(630) --Skill Hoa son
SetRank(63)
elseif  GetFaction() == "cuiyan" or GetLastFactionNumber() == 5 then
		DelMagic(14) --Skill Hoa son
		DelMagic(8) --Skill Hoa son
		DelMagic(10) --Skill Hoa son
		DelMagic(4) --Skill Hoa son
		DelMagic(6) --Skill Hoa son
		DelMagic(15) --Skill Hoa son
		DelMagic(16) --Skill Hoa son
		DelMagic(20) --Skill Hoa son
		DelMagic(271) --Skill Hoa son
		DelMagic(11) --Skill Hoa son
		DelMagic(19) --Skill Hoa son
		DelMagic(273) --Skill Hoa son
		DelMagic(21) --Skill Hoa son
		DelMagic(318) --Skill Hoa son
		DelMagic(319) --Skill Hoa son
		DelMagic(321) --Skill Hoa son
		DelMagic(709) --Skill Hoa son
--thienvuong
		DelMagic(34) --Skill Hoa son
		DelMagic(30) --Skill Hoa son
		DelMagic(29) --Skill Hoa son
		DelMagic(26) --Skill Hoa son
		DelMagic(23) --Skill Hoa son
		DelMagic(24) --Skill Hoa son
		DelMagic(33) --Skill Hoa son
		DelMagic(37) --Skill Hoa son
		DelMagic(35) --Skill Hoa son
		DelMagic(31) --Skill Hoa son
		DelMagic(40) --Skill Hoa son
		DelMagic(42) --Skill Hoa son
		DelMagic(36) --Skill Hoa son
		DelMagic(32) --Skill Hoa son
		DelMagic(41) --Skill Hoa son
		DelMagic(324) --Skill Hoa son
		DelMagic(322) --Skill Hoa son
		DelMagic(323) --Skill Hoa son
		DelMagic(325) --Skill Hoa son
		DelMagic(708) --
--ngami
		DelMagic(85) --Skill Hoa son
		DelMagic(80) --Skill Hoa son
		DelMagic(77) --Skill Hoa son
		DelMagic(79) --Skill Hoa son
		DelMagic(93) --Skill Hoa son
		DelMagic(385) --Skill Hoa son
		DelMagic(82) --Skill Hoa son
		DelMagic(89) --Skill Hoa son
		DelMagic(86) --Skill Hoa son
		DelMagic(92) --Skill Hoa son
		DelMagic(252) --Skill Hoa son
		DelMagic(88) --Skill Hoa son
		DelMagic(91) --Skill Hoa son
		DelMagic(282) --Skill Hoa son
		DelMagic(328) --Skill Hoa son
		DelMagic(380) --Skill Hoa son
		DelMagic(332) --Skill Hoa son
		DelMagic(712) --Skill Hoa son

--duong mon

		DelMagic(45) --Skill Hoa son
		DelMagic(43) --Skill Hoa son
		DelMagic(347) --Skill Hoa son
		DelMagic(303) --Skill Hoa son
		DelMagic(50) --Skill Hoa son
		DelMagic(54) --Skill Hoa son
		DelMagic(47) --Skill Hoa son
		DelMagic(343) --Skill Hoa son
		DelMagic(345) --Skill Hoa son
		DelMagic(349) --Skill Hoa son
		DelMagic(48) --Skill Hoa son
		DelMagic(249) --Skill Hoa son
		DelMagic(58) --Skill Hoa son
		DelMagic(341) --Skill Hoa son
		DelMagic(339) --Skill Hoa son
		DelMagic(302) --Skill Hoa son
		DelMagic(342) --Skill Hoa son
		DelMagic(351) --Skill Hoa son
		DelMagic(710) --Skill Hoa son
--ngu doc

		DelMagic(63) --Skill Hoa son
		DelMagic(65) --Skill Hoa son
		DelMagic(62) --Skill Hoa son
		DelMagic(60) --Skill Hoa son
		DelMagic(67) --Skill Hoa son
		DelMagic(70) --Skill Hoa son
		DelMagic(66) --Skill Hoa son
		DelMagic(68) --Skill Hoa son
		DelMagic(384) --Skill Hoa son
		DelMagic(64) --Skill Hoa son
		DelMagic(69) --Skill Hoa son
		DelMagic(356) --Skill Hoa son
		DelMagic(73) --Skill Hoa son
		DelMagic(72) --Skill Hoa son
		DelMagic(75) --Skill Hoa son
		DelMagic(71) --Skill Hoa son
		DelMagic(74) --Skill Hoa son
		DelMagic(353) --Skill Hoa son
		DelMagic(355) --Skill Hoa son
		DelMagic(390) --Skill Hoa son
		DelMagic(711) --Skill Hoa son
--cai bang

		DelMagic(122) --Skill Hoa son
		DelMagic(119) --Skill Hoa son
		DelMagic(116) --Skill Hoa son
		DelMagic(115) --Skill Hoa son
		DelMagic(129) --Skill Hoa son
		DelMagic(274) --Skill Hoa son
		DelMagic(124) --Skill Hoa son
		DelMagic(277) --Skill Hoa son
		DelMagic(128) --Skill Hoa son
		DelMagic(125) --Skill Hoa son
		DelMagic(130) --Skill Hoa son
		DelMagic(360) --Skill Hoa son
		DelMagic(357) --Skill Hoa son
		DelMagic(359) --Skill Hoa son
		DelMagic(714) --Skill Hoa son
--thien nhan

		DelMagic(135) --Skill Hoa son
		DelMagic(145) --Skill Hoa son
		DelMagic(132) --Skill Hoa son
		DelMagic(131) --Skill Hoa son
		DelMagic(136) --Skill Hoa son
		DelMagic(137) --Skill Hoa son
		DelMagic(141) --Skill Hoa son
		DelMagic(138) --Skill Hoa son
		DelMagic(140) --Skill Hoa son
		DelMagic(364) --Skill Hoa son
		DelMagic(143) --Skill Hoa son
		DelMagic(150) --Skill Hoa son
		DelMagic(142) --Skill Hoa son
		DelMagic(148) --Skill Hoa son
		DelMagic(361) --Skill Hoa son
		DelMagic(362) --Skill Hoa son
		DelMagic(391) --Skill Hoa son
		DelMagic(715) --Skill Hoa son
--vo dang
		DelMagic(153) --Skill Hoa son
		DelMagic(155) --Skill Hoa son
		DelMagic(152) --Skill Hoa son
		DelMagic(151) --Skill Hoa son
		DelMagic(159) --Skill Hoa son
		DelMagic(164) --Skill Hoa son
		DelMagic(158) --Skill Hoa son
		DelMagic(160) --Skill Hoa son
		DelMagic(157) --Skill Hoa son
		DelMagic(166) --Skill Hoa son
		DelMagic(165) --Skill Hoa son
		DelMagic(267) --Skill Hoa son
		DelMagic(365) --Skill Hoa son
		DelMagic(368) --Skill Hoa son
		DelMagic(716) --Skill Hoa son
--con lon
		DelMagic(169) --Skill Hoa son
		DelMagic(179) --Skill Hoa son
		DelMagic(167) --Skill Hoa son
		DelMagic(168) --Skill Hoa son
		DelMagic(392) --Skill Hoa son
		DelMagic(171) --Skill Hoa son
		DelMagic(174) --Skill Hoa son
		DelMagic(178) --Skill Hoa son
		DelMagic(172) --Skill Hoa son
		DelMagic(393) --Skill Hoa son
		DelMagic(173) --Skill Hoa son
		DelMagic(175) --Skill Hoa son
		DelMagic(181) --Skill Hoa son
		DelMagic(176) --Skill Hoa son
		DelMagic(90) --Skill Hoa son
		DelMagic(275) --Skill Hoa son
		DelMagic(182) --Skill Hoa son
		DelMagic(372) --Skill Hoa son
		DelMagic(375) --Skill Hoa son
		DelMagic(394) --Skill Hoa son
		DelMagic(717) --Skill Hoa son
		DelMagic(630) --Skill Hoa son
SetRank(67)
elseif GetLastFactionNumber() == 6 then
		DelMagic(14) --Skill Hoa son
		DelMagic(8) --Skill Hoa son
		DelMagic(10) --Skill Hoa son
		DelMagic(4) --Skill Hoa son
		DelMagic(6) --Skill Hoa son
		DelMagic(15) --Skill Hoa son
		DelMagic(16) --Skill Hoa son
		DelMagic(20) --Skill Hoa son
		DelMagic(271) --Skill Hoa son
		DelMagic(11) --Skill Hoa son
		DelMagic(19) --Skill Hoa son
		DelMagic(273) --Skill Hoa son
		DelMagic(21) --Skill Hoa son
		DelMagic(318) --Skill Hoa son
		DelMagic(319) --Skill Hoa son
		DelMagic(321) --Skill Hoa son
		DelMagic(709) --Skill Hoa son
--thienvuong
		DelMagic(34) --Skill Hoa son
		DelMagic(30) --Skill Hoa son
		DelMagic(29) --Skill Hoa son
		DelMagic(26) --Skill Hoa son
		DelMagic(23) --Skill Hoa son
		DelMagic(24) --Skill Hoa son
		DelMagic(33) --Skill Hoa son
		DelMagic(37) --Skill Hoa son
		DelMagic(35) --Skill Hoa son
		DelMagic(31) --Skill Hoa son
		DelMagic(40) --Skill Hoa son
		DelMagic(42) --Skill Hoa son
		DelMagic(36) --Skill Hoa son
		DelMagic(32) --Skill Hoa son
		DelMagic(41) --Skill Hoa son
		DelMagic(324) --Skill Hoa son
		DelMagic(322) --Skill Hoa son
		DelMagic(323) --Skill Hoa son
		DelMagic(325) --Skill Hoa son
		DelMagic(708) --
--ngami
		DelMagic(85) --Skill Hoa son
		DelMagic(80) --Skill Hoa son
		DelMagic(77) --Skill Hoa son
		DelMagic(79) --Skill Hoa son
		DelMagic(93) --Skill Hoa son
		DelMagic(385) --Skill Hoa son
		DelMagic(82) --Skill Hoa son
		DelMagic(89) --Skill Hoa son
		DelMagic(86) --Skill Hoa son
		DelMagic(92) --Skill Hoa son
		DelMagic(252) --Skill Hoa son
		DelMagic(88) --Skill Hoa son
		DelMagic(91) --Skill Hoa son
		DelMagic(282) --Skill Hoa son
		DelMagic(328) --Skill Hoa son
		DelMagic(380) --Skill Hoa son
		DelMagic(332) --Skill Hoa son
		DelMagic(712) --Skill Hoa son
--thuy yen

		DelMagic(99) --Skill Hoa son
		DelMagic(102) --Skill Hoa son
		DelMagic(95) --Skill Hoa son
		DelMagic(97) --Skill Hoa son
		DelMagic(269) --Skill Hoa son
		DelMagic(105) --Skill Hoa son
		DelMagic(113) --Skill Hoa son
		DelMagic(100) --Skill Hoa son
		DelMagic(109) --Skill Hoa son
		DelMagic(114) --Skill Hoa son
		DelMagic(108) --Skill Hoa son
		DelMagic(111) --Skill Hoa son
		DelMagic(336) --Skill Hoa son
		DelMagic(337) --Skill Hoa son
		DelMagic(713) --Skill Hoa son
		DelMagic(1223) --Skill Hoa son
		DelMagic(1224) --Skill Hoa son
--duong mon

		DelMagic(45) --Skill Hoa son
		DelMagic(43) --Skill Hoa son
		DelMagic(347) --Skill Hoa son
		DelMagic(303) --Skill Hoa son
		DelMagic(50) --Skill Hoa son
		DelMagic(54) --Skill Hoa son
		DelMagic(47) --Skill Hoa son
		DelMagic(343) --Skill Hoa son
		DelMagic(345) --Skill Hoa son
		DelMagic(349) --Skill Hoa son
		DelMagic(48) --Skill Hoa son
		DelMagic(249) --Skill Hoa son
		DelMagic(58) --Skill Hoa son
		DelMagic(341) --Skill Hoa son
		DelMagic(339) --Skill Hoa son
		DelMagic(302) --Skill Hoa son
		DelMagic(342) --Skill Hoa son
		DelMagic(351) --Skill Hoa son
		DelMagic(710) --Skill Hoa son
--ngu doc

		DelMagic(63) --Skill Hoa son
		DelMagic(65) --Skill Hoa son
		DelMagic(62) --Skill Hoa son
		DelMagic(60) --Skill Hoa son
		DelMagic(67) --Skill Hoa son
		DelMagic(70) --Skill Hoa son
		DelMagic(66) --Skill Hoa son
		DelMagic(68) --Skill Hoa son
		DelMagic(384) --Skill Hoa son
		DelMagic(64) --Skill Hoa son
		DelMagic(69) --Skill Hoa son
		DelMagic(356) --Skill Hoa son
		DelMagic(73) --Skill Hoa son
		DelMagic(72) --Skill Hoa son
		DelMagic(75) --Skill Hoa son
		DelMagic(71) --Skill Hoa son
		DelMagic(74) --Skill Hoa son
		DelMagic(353) --Skill Hoa son
		DelMagic(355) --Skill Hoa son
		DelMagic(390) --Skill Hoa son
		DelMagic(711) --Skill Hoa son

--thien nhan

		DelMagic(135) --Skill Hoa son
		DelMagic(145) --Skill Hoa son
		DelMagic(132) --Skill Hoa son
		DelMagic(131) --Skill Hoa son
		DelMagic(136) --Skill Hoa son
		DelMagic(137) --Skill Hoa son
		DelMagic(141) --Skill Hoa son
		DelMagic(138) --Skill Hoa son
		DelMagic(140) --Skill Hoa son
		DelMagic(364) --Skill Hoa son
		DelMagic(143) --Skill Hoa son
		DelMagic(150) --Skill Hoa son
		DelMagic(142) --Skill Hoa son
		DelMagic(148) --Skill Hoa son
		DelMagic(361) --Skill Hoa son
		DelMagic(362) --Skill Hoa son
		DelMagic(391) --Skill Hoa son
		DelMagic(715) --Skill Hoa son
--vo dang
		DelMagic(153) --Skill Hoa son
		DelMagic(155) --Skill Hoa son
		DelMagic(152) --Skill Hoa son
		DelMagic(151) --Skill Hoa son
		DelMagic(159) --Skill Hoa son
		DelMagic(164) --Skill Hoa son
		DelMagic(158) --Skill Hoa son
		DelMagic(160) --Skill Hoa son
		DelMagic(157) --Skill Hoa son
		DelMagic(166) --Skill Hoa son
		DelMagic(165) --Skill Hoa son
		DelMagic(267) --Skill Hoa son
		DelMagic(365) --Skill Hoa son
		DelMagic(368) --Skill Hoa son
		DelMagic(716) --Skill Hoa son
--con lon
		DelMagic(169) --Skill Hoa son
		DelMagic(179) --Skill Hoa son
		DelMagic(167) --Skill Hoa son
		DelMagic(168) --Skill Hoa son
		DelMagic(392) --Skill Hoa son
		DelMagic(171) --Skill Hoa son
		DelMagic(174) --Skill Hoa son
		DelMagic(178) --Skill Hoa son
		DelMagic(172) --Skill Hoa son
		DelMagic(393) --Skill Hoa son
		DelMagic(173) --Skill Hoa son
		DelMagic(175) --Skill Hoa son
		DelMagic(181) --Skill Hoa son
		DelMagic(176) --Skill Hoa son
		DelMagic(90) --Skill Hoa son
		DelMagic(275) --Skill Hoa son
		DelMagic(182) --Skill Hoa son
		DelMagic(372) --Skill Hoa son
		DelMagic(375) --Skill Hoa son
		DelMagic(394) --Skill Hoa son
		DelMagic(717) --Skill Hoa son
		DelMagic(630) --Skill Hoa son
SetRank(78)
elseif GetLastFactionNumber() == 7 then
		DelMagic(14) --Skill Hoa son
		DelMagic(8) --Skill Hoa son
		DelMagic(10) --Skill Hoa son
		DelMagic(4) --Skill Hoa son
		DelMagic(6) --Skill Hoa son
		DelMagic(15) --Skill Hoa son
		DelMagic(16) --Skill Hoa son
		DelMagic(20) --Skill Hoa son
		DelMagic(271) --Skill Hoa son
		DelMagic(11) --Skill Hoa son
		DelMagic(19) --Skill Hoa son
		DelMagic(273) --Skill Hoa son
		DelMagic(21) --Skill Hoa son
		DelMagic(318) --Skill Hoa son
		DelMagic(319) --Skill Hoa son
		DelMagic(321) --Skill Hoa son
		DelMagic(709) --Skill Hoa son
--thienvuong
		DelMagic(34) --Skill Hoa son
		DelMagic(30) --Skill Hoa son
		DelMagic(29) --Skill Hoa son
		DelMagic(26) --Skill Hoa son
		DelMagic(23) --Skill Hoa son
		DelMagic(24) --Skill Hoa son
		DelMagic(33) --Skill Hoa son
		DelMagic(37) --Skill Hoa son
		DelMagic(35) --Skill Hoa son
		DelMagic(31) --Skill Hoa son
		DelMagic(40) --Skill Hoa son
		DelMagic(42) --Skill Hoa son
		DelMagic(36) --Skill Hoa son
		DelMagic(32) --Skill Hoa son
		DelMagic(41) --Skill Hoa son
		DelMagic(324) --Skill Hoa son
		DelMagic(322) --Skill Hoa son
		DelMagic(323) --Skill Hoa son
		DelMagic(325) --Skill Hoa son
		DelMagic(708) --
--ngami
		DelMagic(85) --Skill Hoa son
		DelMagic(80) --Skill Hoa son
		DelMagic(77) --Skill Hoa son
		DelMagic(79) --Skill Hoa son
		DelMagic(93) --Skill Hoa son
		DelMagic(385) --Skill Hoa son
		DelMagic(82) --Skill Hoa son
		DelMagic(89) --Skill Hoa son
		DelMagic(86) --Skill Hoa son
		DelMagic(92) --Skill Hoa son
		DelMagic(252) --Skill Hoa son
		DelMagic(88) --Skill Hoa son
		DelMagic(91) --Skill Hoa son
		DelMagic(282) --Skill Hoa son
		DelMagic(328) --Skill Hoa son
		DelMagic(380) --Skill Hoa son
		DelMagic(332) --Skill Hoa son
		DelMagic(712) --Skill Hoa son
--thuy yen

		DelMagic(99) --Skill Hoa son
		DelMagic(102) --Skill Hoa son
		DelMagic(95) --Skill Hoa son
		DelMagic(97) --Skill Hoa son
		DelMagic(269) --Skill Hoa son
		DelMagic(105) --Skill Hoa son
		DelMagic(113) --Skill Hoa son
		DelMagic(100) --Skill Hoa son
		DelMagic(109) --Skill Hoa son
		DelMagic(114) --Skill Hoa son
		DelMagic(108) --Skill Hoa son
		DelMagic(111) --Skill Hoa son
		DelMagic(336) --Skill Hoa son
		DelMagic(337) --Skill Hoa son
		DelMagic(713) --Skill Hoa son
		DelMagic(1223) --Skill Hoa son
		DelMagic(1224) --Skill Hoa son
--duong mon

		DelMagic(45) --Skill Hoa son
		DelMagic(43) --Skill Hoa son
		DelMagic(347) --Skill Hoa son
		DelMagic(303) --Skill Hoa son
		DelMagic(50) --Skill Hoa son
		DelMagic(54) --Skill Hoa son
		DelMagic(47) --Skill Hoa son
		DelMagic(343) --Skill Hoa son
		DelMagic(345) --Skill Hoa son
		DelMagic(349) --Skill Hoa son
		DelMagic(48) --Skill Hoa son
		DelMagic(249) --Skill Hoa son
		DelMagic(58) --Skill Hoa son
		DelMagic(341) --Skill Hoa son
		DelMagic(339) --Skill Hoa son
		DelMagic(302) --Skill Hoa son
		DelMagic(342) --Skill Hoa son
		DelMagic(351) --Skill Hoa son
		DelMagic(710) --Skill Hoa son
--ngu doc

		DelMagic(63) --Skill Hoa son
		DelMagic(65) --Skill Hoa son
		DelMagic(62) --Skill Hoa son
		DelMagic(60) --Skill Hoa son
		DelMagic(67) --Skill Hoa son
		DelMagic(70) --Skill Hoa son
		DelMagic(66) --Skill Hoa son
		DelMagic(68) --Skill Hoa son
		DelMagic(384) --Skill Hoa son
		DelMagic(64) --Skill Hoa son
		DelMagic(69) --Skill Hoa son
		DelMagic(356) --Skill Hoa son
		DelMagic(73) --Skill Hoa son
		DelMagic(72) --Skill Hoa son
		DelMagic(75) --Skill Hoa son
		DelMagic(71) --Skill Hoa son
		DelMagic(74) --Skill Hoa son
		DelMagic(353) --Skill Hoa son
		DelMagic(355) --Skill Hoa son
		DelMagic(390) --Skill Hoa son
		DelMagic(711) --Skill Hoa son
--cai bang

		DelMagic(122) --Skill Hoa son
		DelMagic(119) --Skill Hoa son
		DelMagic(116) --Skill Hoa son
		DelMagic(115) --Skill Hoa son
		DelMagic(129) --Skill Hoa son
		DelMagic(274) --Skill Hoa son
		DelMagic(124) --Skill Hoa son
		DelMagic(277) --Skill Hoa son
		DelMagic(128) --Skill Hoa son
		DelMagic(125) --Skill Hoa son
		DelMagic(130) --Skill Hoa son
		DelMagic(360) --Skill Hoa son
		DelMagic(357) --Skill Hoa son
		DelMagic(359) --Skill Hoa son
		DelMagic(714) --Skill Hoa son
--vo dang
		DelMagic(153) --Skill Hoa son
		DelMagic(155) --Skill Hoa son
		DelMagic(152) --Skill Hoa son
		DelMagic(151) --Skill Hoa son
		DelMagic(159) --Skill Hoa son
		DelMagic(164) --Skill Hoa son
		DelMagic(158) --Skill Hoa son
		DelMagic(160) --Skill Hoa son
		DelMagic(157) --Skill Hoa son
		DelMagic(166) --Skill Hoa son
		DelMagic(165) --Skill Hoa son
		DelMagic(267) --Skill Hoa son
		DelMagic(365) --Skill Hoa son
		DelMagic(368) --Skill Hoa son
		DelMagic(716) --Skill Hoa son
--con lon
		DelMagic(169) --Skill Hoa son
		DelMagic(179) --Skill Hoa son
		DelMagic(167) --Skill Hoa son
		DelMagic(168) --Skill Hoa son
		DelMagic(392) --Skill Hoa son
		DelMagic(171) --Skill Hoa son
		DelMagic(174) --Skill Hoa son
		DelMagic(178) --Skill Hoa son
		DelMagic(172) --Skill Hoa son
		DelMagic(393) --Skill Hoa son
		DelMagic(173) --Skill Hoa son
		DelMagic(175) --Skill Hoa son
		DelMagic(181) --Skill Hoa son
		DelMagic(176) --Skill Hoa son
		DelMagic(90) --Skill Hoa son
		DelMagic(275) --Skill Hoa son
		DelMagic(182) --Skill Hoa son
		DelMagic(372) --Skill Hoa son
		DelMagic(375) --Skill Hoa son
		DelMagic(394) --Skill Hoa son
		DelMagic(717) --Skill Hoa son
		DelMagic(630) --Skill Hoa son
SetRank(81)
elseif GetLastFactionNumber() == 8 then
		DelMagic(14) --Skill Hoa son
		DelMagic(8) --Skill Hoa son
		DelMagic(10) --Skill Hoa son
		DelMagic(4) --Skill Hoa son
		DelMagic(6) --Skill Hoa son
		DelMagic(15) --Skill Hoa son
		DelMagic(16) --Skill Hoa son
		DelMagic(20) --Skill Hoa son
		DelMagic(271) --Skill Hoa son
		DelMagic(11) --Skill Hoa son
		DelMagic(19) --Skill Hoa son
		DelMagic(273) --Skill Hoa son
		DelMagic(21) --Skill Hoa son
		DelMagic(318) --Skill Hoa son
		DelMagic(319) --Skill Hoa son
		DelMagic(321) --Skill Hoa son
		DelMagic(709) --Skill Hoa son
--thienvuong
		DelMagic(34) --Skill Hoa son
		DelMagic(30) --Skill Hoa son
		DelMagic(29) --Skill Hoa son
		DelMagic(26) --Skill Hoa son
		DelMagic(23) --Skill Hoa son
		DelMagic(24) --Skill Hoa son
		DelMagic(33) --Skill Hoa son
		DelMagic(37) --Skill Hoa son
		DelMagic(35) --Skill Hoa son
		DelMagic(31) --Skill Hoa son
		DelMagic(40) --Skill Hoa son
		DelMagic(42) --Skill Hoa son
		DelMagic(36) --Skill Hoa son
		DelMagic(32) --Skill Hoa son
		DelMagic(41) --Skill Hoa son
		DelMagic(324) --Skill Hoa son
		DelMagic(322) --Skill Hoa son
		DelMagic(323) --Skill Hoa son
		DelMagic(325) --Skill Hoa son
		DelMagic(708) --
--ngami
		DelMagic(85) --Skill Hoa son
		DelMagic(80) --Skill Hoa son
		DelMagic(77) --Skill Hoa son
		DelMagic(79) --Skill Hoa son
		DelMagic(93) --Skill Hoa son
		DelMagic(385) --Skill Hoa son
		DelMagic(82) --Skill Hoa son
		DelMagic(89) --Skill Hoa son
		DelMagic(86) --Skill Hoa son
		DelMagic(92) --Skill Hoa son
		DelMagic(252) --Skill Hoa son
		DelMagic(88) --Skill Hoa son
		DelMagic(91) --Skill Hoa son
		DelMagic(282) --Skill Hoa son
		DelMagic(328) --Skill Hoa son
		DelMagic(380) --Skill Hoa son
		DelMagic(332) --Skill Hoa son
		DelMagic(712) --Skill Hoa son
--thuy yen

		DelMagic(99) --Skill Hoa son
		DelMagic(102) --Skill Hoa son
		DelMagic(95) --Skill Hoa son
		DelMagic(97) --Skill Hoa son
		DelMagic(269) --Skill Hoa son
		DelMagic(105) --Skill Hoa son
		DelMagic(113) --Skill Hoa son
		DelMagic(100) --Skill Hoa son
		DelMagic(109) --Skill Hoa son
		DelMagic(114) --Skill Hoa son
		DelMagic(108) --Skill Hoa son
		DelMagic(111) --Skill Hoa son
		DelMagic(336) --Skill Hoa son
		DelMagic(337) --Skill Hoa son
		DelMagic(713) --Skill Hoa son
		DelMagic(1223) --Skill Hoa son
		DelMagic(1224) --Skill Hoa son
--duong mon

		DelMagic(45) --Skill Hoa son
		DelMagic(43) --Skill Hoa son
		DelMagic(347) --Skill Hoa son
		DelMagic(303) --Skill Hoa son
		DelMagic(50) --Skill Hoa son
		DelMagic(54) --Skill Hoa son
		DelMagic(47) --Skill Hoa son
		DelMagic(343) --Skill Hoa son
		DelMagic(345) --Skill Hoa son
		DelMagic(349) --Skill Hoa son
		DelMagic(48) --Skill Hoa son
		DelMagic(249) --Skill Hoa son
		DelMagic(58) --Skill Hoa son
		DelMagic(341) --Skill Hoa son
		DelMagic(339) --Skill Hoa son
		DelMagic(302) --Skill Hoa son
		DelMagic(342) --Skill Hoa son
		DelMagic(351) --Skill Hoa son
		DelMagic(710) --Skill Hoa son
--ngu doc

		DelMagic(63) --Skill Hoa son
		DelMagic(65) --Skill Hoa son
		DelMagic(62) --Skill Hoa son
		DelMagic(60) --Skill Hoa son
		DelMagic(67) --Skill Hoa son
		DelMagic(70) --Skill Hoa son
		DelMagic(66) --Skill Hoa son
		DelMagic(68) --Skill Hoa son
		DelMagic(384) --Skill Hoa son
		DelMagic(64) --Skill Hoa son
		DelMagic(69) --Skill Hoa son
		DelMagic(356) --Skill Hoa son
		DelMagic(73) --Skill Hoa son
		DelMagic(72) --Skill Hoa son
		DelMagic(75) --Skill Hoa son
		DelMagic(71) --Skill Hoa son
		DelMagic(74) --Skill Hoa son
		DelMagic(353) --Skill Hoa son
		DelMagic(355) --Skill Hoa son
		DelMagic(390) --Skill Hoa son
		DelMagic(711) --Skill Hoa son
--cai bang

		DelMagic(122) --Skill Hoa son
		DelMagic(119) --Skill Hoa son
		DelMagic(116) --Skill Hoa son
		DelMagic(115) --Skill Hoa son
		DelMagic(129) --Skill Hoa son
		DelMagic(274) --Skill Hoa son
		DelMagic(124) --Skill Hoa son
		DelMagic(277) --Skill Hoa son
		DelMagic(128) --Skill Hoa son
		DelMagic(125) --Skill Hoa son
		DelMagic(130) --Skill Hoa son
		DelMagic(360) --Skill Hoa son
		DelMagic(357) --Skill Hoa son
		DelMagic(359) --Skill Hoa son
		DelMagic(714) --Skill Hoa son
--thien nhan

		DelMagic(135) --Skill Hoa son
		DelMagic(145) --Skill Hoa son
		DelMagic(132) --Skill Hoa son
		DelMagic(131) --Skill Hoa son
		DelMagic(136) --Skill Hoa son
		DelMagic(137) --Skill Hoa son
		DelMagic(141) --Skill Hoa son
		DelMagic(138) --Skill Hoa son
		DelMagic(140) --Skill Hoa son
		DelMagic(364) --Skill Hoa son
		DelMagic(143) --Skill Hoa son
		DelMagic(150) --Skill Hoa son
		DelMagic(142) --Skill Hoa son
		DelMagic(148) --Skill Hoa son
		DelMagic(361) --Skill Hoa son
		DelMagic(362) --Skill Hoa son
		DelMagic(391) --Skill Hoa son
		DelMagic(715) --Skill Hoa son

--con lon
		DelMagic(169) --Skill Hoa son
		DelMagic(179) --Skill Hoa son
		DelMagic(167) --Skill Hoa son
		DelMagic(168) --Skill Hoa son
		DelMagic(392) --Skill Hoa son
		DelMagic(171) --Skill Hoa son
		DelMagic(174) --Skill Hoa son
		DelMagic(178) --Skill Hoa son
		DelMagic(172) --Skill Hoa son
		DelMagic(393) --Skill Hoa son
		DelMagic(173) --Skill Hoa son
		DelMagic(175) --Skill Hoa son
		DelMagic(181) --Skill Hoa son
		DelMagic(176) --Skill Hoa son
		DelMagic(90) --Skill Hoa son
		DelMagic(275) --Skill Hoa son
		DelMagic(182) --Skill Hoa son
		DelMagic(372) --Skill Hoa son
		DelMagic(375) --Skill Hoa son
		DelMagic(394) --Skill Hoa son
		DelMagic(717) --Skill Hoa son
		DelMagic(630) --Skill Hoa son
SetRank(73)
elseif GetLastFactionNumber() == 9 then
		DelMagic(14) --Skill Hoa son
		DelMagic(8) --Skill Hoa son
		DelMagic(10) --Skill Hoa son
		DelMagic(4) --Skill Hoa son
		DelMagic(6) --Skill Hoa son
		DelMagic(15) --Skill Hoa son
		DelMagic(16) --Skill Hoa son
		DelMagic(20) --Skill Hoa son
		DelMagic(271) --Skill Hoa son
		DelMagic(11) --Skill Hoa son
		DelMagic(19) --Skill Hoa son
		DelMagic(273) --Skill Hoa son
		DelMagic(21) --Skill Hoa son
		DelMagic(318) --Skill Hoa son
		DelMagic(319) --Skill Hoa son
		DelMagic(321) --Skill Hoa son
		DelMagic(709) --Skill Hoa son
--thienvuong
		DelMagic(34) --Skill Hoa son
		DelMagic(30) --Skill Hoa son
		DelMagic(29) --Skill Hoa son
		DelMagic(26) --Skill Hoa son
		DelMagic(23) --Skill Hoa son
		DelMagic(24) --Skill Hoa son
		DelMagic(33) --Skill Hoa son
		DelMagic(37) --Skill Hoa son
		DelMagic(35) --Skill Hoa son
		DelMagic(31) --Skill Hoa son
		DelMagic(40) --Skill Hoa son
		DelMagic(42) --Skill Hoa son
		DelMagic(36) --Skill Hoa son
		DelMagic(32) --Skill Hoa son
		DelMagic(41) --Skill Hoa son
		DelMagic(324) --Skill Hoa son
		DelMagic(322) --Skill Hoa son
		DelMagic(323) --Skill Hoa son
		DelMagic(325) --Skill Hoa son
		DelMagic(708) --
--ngami
		DelMagic(85) --Skill Hoa son
		DelMagic(80) --Skill Hoa son
		DelMagic(77) --Skill Hoa son
		DelMagic(79) --Skill Hoa son
		DelMagic(93) --Skill Hoa son
		DelMagic(385) --Skill Hoa son
		DelMagic(82) --Skill Hoa son
		DelMagic(89) --Skill Hoa son
		DelMagic(86) --Skill Hoa son
		DelMagic(92) --Skill Hoa son
		DelMagic(252) --Skill Hoa son
		DelMagic(88) --Skill Hoa son
		DelMagic(91) --Skill Hoa son
		DelMagic(282) --Skill Hoa son
		DelMagic(328) --Skill Hoa son
		DelMagic(380) --Skill Hoa son
		DelMagic(332) --Skill Hoa son
		DelMagic(712) --Skill Hoa son
--thuy yen

		DelMagic(99) --Skill Hoa son
		DelMagic(102) --Skill Hoa son
		DelMagic(95) --Skill Hoa son
		DelMagic(97) --Skill Hoa son
		DelMagic(269) --Skill Hoa son
		DelMagic(105) --Skill Hoa son
		DelMagic(113) --Skill Hoa son
		DelMagic(100) --Skill Hoa son
		DelMagic(109) --Skill Hoa son
		DelMagic(114) --Skill Hoa son
		DelMagic(108) --Skill Hoa son
		DelMagic(111) --Skill Hoa son
		DelMagic(336) --Skill Hoa son
		DelMagic(337) --Skill Hoa son
		DelMagic(713) --Skill Hoa son
		DelMagic(1223) --Skill Hoa son
		DelMagic(1224) --Skill Hoa son
--duong mon

		DelMagic(45) --Skill Hoa son
		DelMagic(43) --Skill Hoa son
		DelMagic(347) --Skill Hoa son
		DelMagic(303) --Skill Hoa son
		DelMagic(50) --Skill Hoa son
		DelMagic(54) --Skill Hoa son
		DelMagic(47) --Skill Hoa son
		DelMagic(343) --Skill Hoa son
		DelMagic(345) --Skill Hoa son
		DelMagic(349) --Skill Hoa son
		DelMagic(48) --Skill Hoa son
		DelMagic(249) --Skill Hoa son
		DelMagic(58) --Skill Hoa son
		DelMagic(341) --Skill Hoa son
		DelMagic(339) --Skill Hoa son
		DelMagic(302) --Skill Hoa son
		DelMagic(342) --Skill Hoa son
		DelMagic(351) --Skill Hoa son
		DelMagic(710) --Skill Hoa son
--ngu doc

		DelMagic(63) --Skill Hoa son
		DelMagic(65) --Skill Hoa son
		DelMagic(62) --Skill Hoa son
		DelMagic(60) --Skill Hoa son
		DelMagic(67) --Skill Hoa son
		DelMagic(70) --Skill Hoa son
		DelMagic(66) --Skill Hoa son
		DelMagic(68) --Skill Hoa son
		DelMagic(384) --Skill Hoa son
		DelMagic(64) --Skill Hoa son
		DelMagic(69) --Skill Hoa son
		DelMagic(356) --Skill Hoa son
		DelMagic(73) --Skill Hoa son
		DelMagic(72) --Skill Hoa son
		DelMagic(75) --Skill Hoa son
		DelMagic(71) --Skill Hoa son
		DelMagic(74) --Skill Hoa son
		DelMagic(353) --Skill Hoa son
		DelMagic(355) --Skill Hoa son
		DelMagic(390) --Skill Hoa son
		DelMagic(711) --Skill Hoa son
--cai bang

		DelMagic(122) --Skill Hoa son
		DelMagic(119) --Skill Hoa son
		DelMagic(116) --Skill Hoa son
		DelMagic(115) --Skill Hoa son
		DelMagic(129) --Skill Hoa son
		DelMagic(274) --Skill Hoa son
		DelMagic(124) --Skill Hoa son
		DelMagic(277) --Skill Hoa son
		DelMagic(128) --Skill Hoa son
		DelMagic(125) --Skill Hoa son
		DelMagic(130) --Skill Hoa son
		DelMagic(360) --Skill Hoa son
		DelMagic(357) --Skill Hoa son
		DelMagic(359) --Skill Hoa son
		DelMagic(714) --Skill Hoa son
--thien nhan

		DelMagic(135) --Skill Hoa son
		DelMagic(145) --Skill Hoa son
		DelMagic(132) --Skill Hoa son
		DelMagic(131) --Skill Hoa son
		DelMagic(136) --Skill Hoa son
		DelMagic(137) --Skill Hoa son
		DelMagic(141) --Skill Hoa son
		DelMagic(138) --Skill Hoa son
		DelMagic(140) --Skill Hoa son
		DelMagic(364) --Skill Hoa son
		DelMagic(143) --Skill Hoa son
		DelMagic(150) --Skill Hoa son
		DelMagic(142) --Skill Hoa son
		DelMagic(148) --Skill Hoa son
		DelMagic(361) --Skill Hoa son
		DelMagic(362) --Skill Hoa son
		DelMagic(391) --Skill Hoa son
		DelMagic(715) --Skill Hoa son
--vo dang
		DelMagic(153) --Skill Hoa son
		DelMagic(155) --Skill Hoa son
		DelMagic(152) --Skill Hoa son
		DelMagic(151) --Skill Hoa son
		DelMagic(159) --Skill Hoa son
		DelMagic(164) --Skill Hoa son
		DelMagic(158) --Skill Hoa son
		DelMagic(160) --Skill Hoa son
		DelMagic(157) --Skill Hoa son
		DelMagic(166) --Skill Hoa son
		DelMagic(165) --Skill Hoa son
		DelMagic(267) --Skill Hoa son
		DelMagic(365) --Skill Hoa son
		DelMagic(368) --Skill Hoa son
		DelMagic(716) --Skill Hoa son

SetRank(75)
end
end



























