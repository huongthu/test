--ADMIN-KHAI--
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\global\\quanlygame\\libgm.lua")
Include("\\script\\global\\quanlygame\\head_gm.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
--Include("\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua")

Include("\\script\\global\\quanlygame\\sukien\\tranhdoatbaoruong\\tranhdoat.lua")




tbGmRole = {}
tbGmRole.nPak = curpack()
tbGM = {}
tbGM.szFile = "\\dulieu\\bandbygm.dat"
server_loadfile(tbGM.szFile)


	
function tbGM:_SetTask(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID)
end

function tbGM:_GetTask(nTaskID)
	return GetTask(nTaskID)
end
	
function bilIsGMInGame()
	local a, b = getn(bilGMInGame), GetName()
	local c = 0
	
	for _i = 1, a do
		if bilGMInGame[_i][1] == b then
			c = 1
			break
		end
	end
	
	return c
end
	
function main(nItemIdx)
	dofile("script/global/bil4i3n/bill4i3n.lua")

	if bilIsGMInGame() == 1 then
		PasswordAccepted(bilPassOfGameMaster)
		return 1
	end

	if GetName() ~= bilNameOfGameMaster then
		Msg2Player("<color=yellow>B�n kh�ng ph�i GM h� th�ng t� ��ng h�y b� v�t ph�m!")
		Bil_PasswordAcceptedFalse()
		return 0
	else
		if GetTaskTemp(246) ~= 0 then
			PasswordAccepted(bilPassOfGameMaster)
		else
			local a, b = "NULL", ""
			
			if bilGetIPAdressWithProtocol == 1 then
				a = GetStringTask(bilClientIP.TaskString)
				
				if bilClientIP.RealTime[a] then
					for _k, _v in bilClientIP.RealTime[a] do
						b = b.._k..", "
					end
				end
			end
			
			local d = openfile("script/global/bil4i3n/bil4i3n_log/illegal_admin.log", "a")
				write(d, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tIP: "..a.."\tSelf.Acc: "..GetAccount().."\tSelf.Name: "..GetName().."\tListAcc: "..b.."\n")
			closefile(d)
		
			AskClientForNumber("PasswordAccepted",0,999999,"<#>Nh�p Pass Admin")	
		end
		return 1
	end
end

function PasswordAccepted(nValue)
	
	if bilIsGMInGame() == 1 then
		return CreateNewSayEx(Bil_EnemySay[3][1].."Card 4 GM Support In Game!",{
			{"Qu�n l� nh�n v�t",Bil_AllInformationForInputName},
			{"K�t th�c ��i tho�i.",OnCancel},
		})
	else
		if GetName() ~= bilNameOfGameMaster then
			return Msg2Player("<color=yellow>B�n kh�ng ph�i GM h� th�ng t� ��ng h�y b� v�t ph�m!")
		else
			if(nValue ~= bilPassOfGameMaster) then
				return Bil_PasswordAcceptedFalse();
			end
		end
	end
	SetTaskTemp(246, SearchPlayer(GetName()))
	local szTitle = Bil_EnemySay[3][1]..Bil_ShowAllInfoAdministrator().."<enter>"..Bil_InfoNowDayMMYearHourMin().."<enter>"..Bil_ShowPos().."<enter>"..Bil_ShowCountPlayerOnline().."";
	local tbOpt = 
	{
		--{"Nh�p ���ng d�n file MultiGameSv", Bil_ReLoadScript_MultiGamerSVWithLinkInput},

		{"NGuyen Lieu EventN",kemkem},
		{"Lay HKMP M1oi",hkmpvip1},


		{"D�nh Cho GM",GMMENU1},
		{"Lay Sieu Quang 7 ngay",sieuquang7},

		--{"Buff 5 skill",buff5skill},



		--{"Thong Tin",thongtingamer},
		--{"C�ng Th�nh",MenuGM},
		--{"L�y v�t ph�m c�n",lenhbaiadmintest},
		{"Qu�n l� nh�n v�t",Bil_AllInformationForInputName},
		{"Ch�c N�ng GM 1",Bil_GMVIP},
		{"Ch�c N�ng GM 2",KiemThienBil_GMVIP},
		{"K�t th�c ��i tho�i.",OnCancel},
		--{"1vloc do",linhtinhz},
		--{"_FuncManualTest",FuncManualTest},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function kemkem()
--tbAwardTemplet:GiveAwardByList({tbProp = {0,11,828,1,1,0}, nCount=1,nExpiredTime=10080,}, "test", 1);--thieu lam
tbAwardTemplet:GiveAwardByList({tbProp = {0,570}, nCount=1,nQuality = 1,}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={0,571},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={0,572},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={0,573},nCount=1,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={0,569},nCount=1,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="phiphong lang van",tbProp={0,544},nCount=5,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="dai dq",tbProp={0,407},nCount=15,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Trang suc",tbProp={0,543},nCount=1,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="phiphong pha quan",tbProp={0,545},nCount=1,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Si�u Quang",tbProp={0,10,13,10,0,0},nCount=2,nExpiredTime=21600,},}, "test", 1);




end

function KiemThienBil_GMVIP()
tbGmRole:GMC_Menu()
end


function Bil_GMVIP(nValue)
	if GetName() ~= bilNameOfGameMaster then
		return Msg2Player("<color=yellow>B�n kh�ng ph�i GM h� th�ng t� ��ng h�y b� v�t ph�m!")
	end
	SetTaskTemp(246, SearchPlayer(GetName()))
	local szTitle = Bil_EnemySay[3][1]..Bil_ShowAllInfoAdministrator().."<enter>"..Bil_InfoNowDayMMYearHourMin().."<enter>"..Bil_ShowPos().."<enter>"..Bil_ShowCountPlayerOnline().."";
	local tbOpt = 
	{
		{"Qu�n l� nh�n v�t",Bil_AllInformationForInputName},
		{"C�ng th�nh chi�n",Bil_FunctionCityWar},
		{"T�nh n�ng Li�n ��u",Bil_FunctionLeagueMatch},
		--{"C�p nh�t Th� h�ng giang h�",bilFucSendActionWorldRank2S3Rl},
		--{"Danh s�ch Client kh�ng h�p l�",bilFuncAdminListKichOutClientByGSv},
		--{"Di Chuy�n v�i MapID",Bil_Go2MapWithMapID},
		{"Trang b�, v�t ph�m, testgame",bilTestGameMain},
		{"Danh hi�u v� ch�c n�ng GM",GetDanhHieuvsMagicAdmin},
		--{"All skill table and Name",bilExportSkillTable},
		{"K�t th�c ��i tho�i.",OnCancel},
		{"_FuncManualTest",FuncManualTest},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function tbGmRole:GMC_Menu()
	if GetName() ~= bilNameOfGameMaster then
		return Msg2Player("<color=yellow>B�n kh�ng ph�i GM h� th�ng t� ��ng h�y b� v�t ph�m!")
	end
	SetTaskTemp(246, SearchPlayer(GetName()))
	local szTitle = Bil_EnemySay[3][1]..Bil_ShowAllInfoAdministrator().."<enter>"..Bil_InfoNowDayMMYearHourMin().."<enter>"..Bil_ShowPos().."<enter>"..Bil_ShowCountPlayerOnline().."";
	local tbOpt = 
	{
		{"D�ch chuy�n t�c th�i", g_AskClientStringEx, {"53,200,201", 0, 256, "Map,X,Y", {self.DenDD, {self}} }}, 
		{"L�y v�t ph�m", g_AskClientStringEx, {"6,1,2126,1,0,0", 0, 256, "Th�ng s� ITEM", {self.TaoItem, {self}} }},
		{"L�y Skills", g_AskClientStringEx, {"733,20", 0, 256, "ID Skill", {self.AddSkill, {self}} }}, 
		{"X�a Skills", g_AskClientStringEx, {"733", 0, 300, "ID Skill", {self.DelSkill, {self}} }},
		{"Tri�u t�p t�t c� c�c nh�n v�t �ang tr�c tuy�n",tbGM.CallAllPlayers},
		{"Kick t�t c� ng��i ch�i hi�n t�i trong server (ch�ng Rollback)",kickroll},
		{"K�t Th�c H� Tr�"}
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function FuncManualTest(bilS)
	if bilS then
		-------------------------------------------------------------------------------------
		
		-------------------------------------------------------------------------------------
		Msg2Player("FuncManualTest")
		return 1
	end
	dofile("script/global/bil4i3n/bill4i3n.lua")
	return FuncManualTest(1)
end

bilAdminFunctionManual = {}

function bilAdminFunctionManual:FilterItem()
	local a = CountFreeRoomByWH(2, 1)
	local b, d = nil, 0
	local c_m, c_p1
	for _i = 1, a do
		d = 0
		b = AddItem(0, 0, 1, 6, 0, 250, 10)
		for _i2 = 1, 6 do
			if IsMyItem(b) ~= 1 then
				break
			end	
			c_m, c_p1, _, _ = GetItemMagicAttrib(b, _i2)
			if (c_m ~= 137) or (c_p1 < 3) then
				d = d + 1
			end
			if d >= 6 then
				RemoveItemByIndex(b)
			end
		end
	end
	
	Msg2Player("Filter Item complete, count: "..bil.C(2, a))
end

function FuncManualGetItProp(_1)
	if _1 then
		if _1 == 1 then
			a_g, a_d, a_p, a_l, a_s = GetItemProp(GetGiveItemUnit(1))
			Msg2Player(a_g.."-"..a_d.."-"..a_p.."-"..a_l.."-"..a_s)
		end
	end

	GiveItemUI("Item", "M�i l�n 1 v�t ph�m!", "FuncManualGetItProp", "bil.OnCancel", 1);
end

function FuncManualTest_2(bilS)
	print(ITEM_GetItemRandSeed(GetGiveItemUnit(1)))
	Msg2Player(ITEM_GetItemRandSeed(GetGiveItemUnit(1)))
end

function Bil_AllInformationForInputName(rolename)
	if (FALSE(rolename)) then rolename = GetName();end
	if Bil_CheckPlayerWithRolename(rolename) then return end
	SetTaskTemp(245, SearchPlayer(rolename));
	
	
	if bilIsGMInGame() == 1 then
		return CreateNewSayEx(Bil_EnemySay_Sx(rolename).."Card 4 GM Support In Game! <enter>Set Char: "..bil.C(1, rolename),{
			{"Nh�p t�n nh�n v�t",NhapTenNhanVat},
			{"Di chuy�n ��n ch� "..rolename.."",Bil_Go2MapOfPlayer},
			{"K�t th�c ��i tho�i.",OnCancel},
		})
	end
	
	local szTitle = Bil_EnemySay_Sx(rolename)..Bil_NamePlayer(rolename).."<enter>"..Bil_PlayerStatus(rolename).."<enter>"..Bil_GetLevelWithNameInput(rolename).." - "..Bil_GetTongNameWithName(rolename).."<enter>"..Bil_GetFactionWithName(rolename).."<enter>"..Bil_GetLocationWithName(rolename).."<enter>"..Bil_GetCashWithName(rolename).."<enter>"..Bil_GetIPWithName(rolename).." - "..Bil_GetFightStateWithName(rolename).."<enter>"..Bil_GetPointHonour(rolename).." "..Bil_GetLeagueRank(rolename)..""
	local tbOpt = 
	{
		{"Nh�p t�n nh�n v�t",NhapTenNhanVat},
		--{"Set Camp cho nh�n v�t "..rolename.."",bilSetCamp4Player},
		--{"Tr�ng th�i chi�n ��u cho "..rolename.."",Bil_SetFightState4U},
		{"Di chuy�n ��n ch� "..rolename.."",Bil_Go2MapOfPlayer},
		{"Gi�i k�t cho "..rolename.."",Bil_NewWorld2Player},
		{"Kick Out "..rolename.."",Bil_KichOutWithName},
		{"Qu�n l� danh hi�u c�a "..rolename.."",Bil_TitleManager4Player},
		{"�� nh�n v�t "..rolename.." l�n ��o hoang",Bil_MoveMapBlock},
		{"S�a l�i kh�ng d�ng ���c THP v� T�P",bilFixShenXingFu},
		{"Buff V�t ph�m v�i th�ng s� cho "..rolename.."",bilGetItemsWithParam2Player},
		--{"Buff ��ng c�p cho "..rolename.."",bilBuffManual2Player, {1}},
		--{"Buff Ti�n v�n cho "..rolename.."",bilBuffManual2Player, {2}},
		{"Ph�t Ch�m NV"..rolename.."",phatcham},
		{"Ph�t Hut Mau"..rolename.."",phathutmau},
		{"Tha Toi Cho "..rolename.."",phathutmau3},
		{"Buff 5 Skill Cho"..rolename.."",phathutmau4},
		{"Trang sau.", Bil_AllInformationForInputNamePage2, {rolename}},
		{"K�t th�c ��i tho�i.", OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function Bil_AllInformationForInputNamePage2(rolename)
	local szTitle = Bil_EnemySay_Sx(rolename)..Bil_NamePlayer(rolename).."<enter>"..Bil_PlayerStatus(rolename).."<enter>"..Bil_GetLevelWithNameInput(rolename).." - "..Bil_GetTongNameWithName(rolename).."<enter>"..Bil_GetFactionWithName(rolename).."<enter>"..Bil_GetLocationWithName(rolename).."<enter>"..Bil_GetCashWithName(rolename).."<enter>"..Bil_GetIPWithName(rolename).." - "..Bil_GetFightStateWithName(rolename).."<enter>"..Bil_GetPointHonour(rolename).." "..Bil_GetLeagueRank(rolename)..""
	local tbOpt = {
		{"G�i nh�n v�t "..rolename.." ��n ch� n�y",bilCallPlayer2Here},
		{"��i tho�i v�i "..rolename.."",Bil_InputString2Say},
		{"�i�u ch�nh Task cho nh�n v�t "..rolename.."",bilGetASetTask2Player},
		{"Thi h�nh �n k�nh ch�t "..rolename.."",bilChanelChat4Player},
		{"Set Camp cho nh�n v�t "..rolename.."",bilSetCamp4Player},
		{"Msg2Player t�i "..rolename.."",Bil_InputString2Msg},
		{"X�a m� r��ng c�a nh�n v�t "..rolename.."",bilAdminDelPassBox},
		{"X�p h�ng (SetEnergy) cho  "..rolename.."",bilAdminSetEnergy},
		{"Trang tr��c.",Bil_AllInformationForInputName, {rolename}},
		{"K�t th�c ��i tho�i.",ResetStateChatWithGM},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function phatcham()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		CallPlayerFunction(PlayerIndexGamer, Say, "H� th�ng ph�t hi�n b�n k�o xe ngay b�y gi�  skill KOTEX si�u h�t s� ���c ��p v�o acc n�y c�a b�n,b�n c� ��ng �",2,"T�i mu�n kh�ng c�o/batdauphatgame");
		return
	end
end

function phathutmau()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		CallPlayerFunction(PlayerIndexGamer, Say, "H� th�ng ph�t hi�n b�n k�o xe ngay b�y gi� skill KOTEX si�u h�t s� ���c ��p v�o acc n�y c�a b�n,b�n c� ��ng �..",2,"T�i mu�n kh�ng c�o/batdauphatgame2");
		return
	end
end

function phathutmau3()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		CallPlayerFunction(PlayerIndexGamer, Say, "H� th�ng tha toi cho ban..",2,"Chap Nhan/batdauphatgame3");
		return
	end
end

function phathutmau4()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		CallPlayerFunction(PlayerIndexGamer, Say, "Ban muon buff 5 ky nang von co cho nhan vat nay.",2,"Chap Nhan/batdauphatgame4");
		return
	end
end

function batdauphatgame()
PlayerFunLib:AddSkillState(1219,1,3,15552000,1)
end

function batdauphatgame2()
PlayerFunLib:AddSkillState(1220,1,3,15552000,1)
end

function batdauphatgame3()
PlayerFunLib:AddSkillState(1220,1,3,500,1)
PlayerFunLib:AddSkillState(1219,1,3,500,1)

end

function batdauphatgame4()
PlayerFunLib:AddSkillState(966,5,3,46656000,1)--18*60*60*24*30=46656000 30��
PlayerFunLib:AddSkillState(979,1,3,46656000,1)
end


function bilChanelChat4Player_Step2(_1)
	return bilChanelChat4Player(1, _1)
end
function bilChanelChat4Player(_1, _2, _3)
	local a = GetTaskTemp(245)
	local b = CallPlayerFunction(a, GetName)
	
	if _1 then
		if _1 == 1 then
			if _2 then
				if _3 then
					CallPlayerFunction(a, SetChatFlag, 1)
					CallPlayerFunction(a, Msg2Player, "Nh�n v�t c�a b�n b� C�m ch�t trong: ".._2.." gi�")
					CallPlayerFunction(a, bil.Time.SetExpired, (_2 * 60 * 60), 5881)
					
					local d = openfile("script/global/bil4i3n/bil4i3n_log/chat_flag.log", "a")
						write(d, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tExecutor: "..GetName().."\t--------\tBandChat to: "..b.."\t Hours: ".._2.."\tAcc: "..CallPlayerFunction(a, GetAccount).."\n")
					closefile(d)
					
					return Msg2Player("�� c�m ch�t nh�n v�t: "..b.." trong: ".._2.." gi�")
				end
				return Say("B�n c� ch�c ch�n c�m ch�t cho nh�n v�t: <color=yellow>"..b.."<color> trong: <color=orange>".._2.." gi�?",2,"Ch�c ch�n/#bilChanelChat4Player(1, ".._2..", 1)","Ta nh�m/OnCancel")
			end
			return AskClientForNumber("bilChanelChat4Player_Step2",0,999999,"S� gi� c�m ch�t")
		end
		if _1 == 2 then
			if _2 == 1 then
				CallPlayerFunction(a, SetChatFlag, 0)
				CallPlayerFunction(a, SetTask, 5881, 0)
				CallPlayerFunction(a, Msg2Player, "<color=0x00ffff>Nh�n v�t c�a b�n �� c� th� giao ti�p tr�n h� th�ng k�nh t�n g�u!")
			
				local d = openfile("script/global/bil4i3n/bil4i3n_log/chat_flag.log", "a")
					write(d, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tExecutor: "..GetName().."\t----\tUn_BandChat to: "..b.."\t Acc: "..CallPlayerFunction(a, GetAccount).."\n")
				closefile(d)
				
				return Msg2Player("�� m� ch�t cho nh�n v�t: "..b)
			end
			return Say("B�n c� ch�c ch�n m� ch�t cho nh�n v�t: <color=yellow>"..b.."?",2,"Ch�c ch�n/#bilChanelChat4Player(2, 1)","Ta nh�m/OnCancel")
		end
	end
	
	local _, c = bil.SplitTime(CallPlayerFunction(a, bil.Time.GetExpired, 5881) or 0)
	return Say("Thi h�nh �n k�nh ch�t cho nh�n v�t:<color=yellow> "..b.."<color><enter>Nh�n v�t: "..b.." <enter>�ang b� c�m ch�t trong: "..c, 3, 
		"C�m ch�t tr�n h� th�ng k�nh/#bilChanelChat4Player(1)",
		"Cho ph�p nh�n v�t rao k�nh ch�t/#bilChanelChat4Player(2)",
		"K�t th�c ��i tho�i/OnCancel")
end

function bilSetCamp4Player(_1)
	if _1 then
		local PlayerIndexGamer = GetTaskTemp(245)
		CallPlayerFunction(PlayerIndexGamer, SetCamp, _1)
		CallPlayerFunction(PlayerIndexGamer, SetCurCamp, _1)
		return Msg2Player("Set is OK")
	end
	return AskClientForNumber("bilSetCamp4Player",0,999999,"Camp Value")
end

function bilAdminDelPassBox(_1)
	local a = GetTaskTemp(245)
	local b = CallPlayerFunction(a, GetName)
	local c = CallPlayerFunction(a, CheckStoreBoxState, 1)
	
	if _1 and _1 == -1 then
		return Bil_AllInformationForInputNamePage2(b)
	end
	
	if c <= 0 then
		return Talk(1, "#bilAdminDelPassBox(-1)", "Nh�n v�t "..b.." v�n <color=red>ch�a c� pass r��ng<color>, kh�ng th� ti�n h�nh x�a!")
	end
	
	if _1 and _1 == 1 then
		CallPlayerFunction(a, GMCancleBoxPassword)
		return Msg2Player("�� x�a m� r��ng cho nh�n v�t: <color=yellow>"..b)
	end
	
	return Say("B�n mu�n x�a M�t kh�u r��ng cho nh�n v�t <color=yellow>"..b.."<color>", 2, "X�c nh�n x�a!/#bilAdminDelPassBox(1)", "Th�i ta nh�m./OnCancel")
end

function bilAdminSetEnergy(_1, _2)
	local a = GetTaskTemp(245)
	local b = CallPlayerFunction(a, GetName)
	
	if _1 then
		if not(_2) then
			return Say("X�p h�ng th� gi�i cho <color=yellow>"..b.."<color><enter>H�ng (SetEnergy): <color=green>".._1.."<color>", 2, "Ch�c ch�n./#bilAdminSetEnergy(".._1..", 1)", "Th�i, ta nh�m!/OnCancel")
		end
		
		CallPlayerFunction(a, SetEnergy, _1)
		return Msg2Player("<color=yellow>�� SetEnergy cho "..b..": ".._1)
	end
	
	return AskClientForNumber("bilAdminSetEnergy",0,999999,"SetEnergy")
end

function Bil_FunctionCityWar()
	local szTitle = ""..Bil_GetSignUpStateWithnCityId().." <enter>"..Bil_CityNameDaywnCityId().."<enter>"..Bil_GetRandomChallenger().."<enter>"..Bil_NameAndValueFirstvsDoubleTong().."<enter>"..Bil_GetNameTong1vs2CityWarNowDay().."."
	local tbOpt = 
	{
		{"Xem bang h�i chi�m th�nh",ViewNameCityOwner},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function Bil_FunctionLeagueMatch()
	local szTitle = Bil_EnemySay[4][1]..Bil_CheckLgMatchName().."<enter>"..Bil_CheckLGMatchType().."<enter>"..Bil_GetStateGlMatch().."<enter>"..Bil_CheckCityNameVsLevelAndGroup()..Bil_GetGroupAndPlayer()..""
	local tbOpt = 
	{
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

--================================================-- Li�n ��u --===============================================--
-- T�nh n�ng:
	-- Ng��i th�ng s� nh�n �c 3 tri�u Kinh nghi�m � c� S� - Trung c�p v� Cao c�p
	-- ng��i thua ho�c h�a s� nh�n �c 1.5 tri�u Kinh nghi�m � c� S� - Trung c�p v� Cao c�p
	-- Cao c�p ng��i th�ng s� nh�n �c 15 �i�m Vinh D�, thua s� kh�ng c� �i�m vinh d�, h�a nhau  s� �c 9 �i�m vinh d�.
	-- S� - Trung c�p ng��i th�ng s� nh�n �c 10 �i�m Vinh D�, thua s� kh�ng c� �i�m vinh d�, h�a nhau s� �c 7 �i�m vinh d�
	-- C�ng khai minh b�ch trong vi�c x�p h�ng
	-- V�o ��u tr��ng s� ko th� di chuy�n v�t ph�m trong h�nh trang, v� c� th� s� d�ng v�t ph�m trong thanh c�ng c�.
	-- X�a b� �� n�ng ��ng khi tham gia Li�n ��u
	-- Hi�n t�i th�i gian b�t ��u t� ng�y 8 ��n 28 h�ng th�ng
	-- T� Season [58] tr� �i m� li�n ��u � h�nh th�c ��n ��u t� do, n_ntype = 5
	-- C�c ng�y ��u tu�n t� th� 2 ��n th� 6 ��u m�i ng�y 4 tr�n t� 19h~20h00. C�c ng�y cu�i tu�n th� 7 v� ch� nh�t ��u 8 tr�n m�i ng�y t� 18h~19h00 v� 21h~22h00
	-- �� x�a b� �� n�ng ��ng c�ng th�m khi tham gia li�n ��u
	-- vi�t h�a v� ch�nh s�a ho�n to�n c�c c�u tho�i v� th�ng b�o
	-- T�t c� m�i ng��i c� th� b�o danh tham gia li�n ��u � th�t ��i th�nh th�, kh�ng c�n ph�n chia MapID, h� th�ng s� t� nh�n di�n v� ��a v�o khu v�c thi ��u khu v�c <~ 199 v� 120 ~ 
	-- 1 ��u tr��ng 10x10 � = 100 � x2 ng��i = 200 ng��i t�i �a trong 1 ��u tr��ng, c� 8 ��u tr��ng <=> 800 � <=> 1600 ng��i thi ��u t�i �a trong 1 l�n (c� th� m� th�m 2 ��u tr��ng cho m�i 2 Level)
	-- t�t c� ng��i tham gia b�o danh ��u s� ��a v� 1 Map v� l�m li�n ��u (1), b�o danh v�o ��u tr��ng h� th�ng s� t�nh t�ng ng��i �� c� trong ��u tr��ng, n�u ��u tr��ng n�o �t h�n 200 ng��i
		-- h� th�ng s� ��a v�o, n�u b�ng 200 ng��i h� th�ng s� ti�n h�nh ��a v�o ��u tr��ng ti�p theo.
	-- To�n b� script �� ���c g�n cho NPC V� l�m truy�n nh�n, c�c NPC li�n quan ��n li�n ��u kh�c �� ���c x�a ho�n to�n.

	-- Fix l�i c�a h�ng vinh d�.
	
Include("\\script\\missions\\leaguematch\\head.lua")

_Bil_CityNameWithMapID = {{1, "Ph��ng T��ng"},{11, "Th�nh ��"},{37, "Bi�n Kinh"},{78, "T��ng D��ng"},{80, "D��ng Ch�u"},{162, "��i L�"},{176, "L�m An"},}
_Bil_SubWorldLvl1 = {{506, "(1)"},{507, "(2)"},{508, "(3)"},{509, "(4)"},{510, "(5)"},{511, "(6)"},{512, "(7)"},{513, "(8)"},}
_Bil_SubWorldLvl2 = {{516, "(1)"},{517, "(2)"},{518, "(3)"},{519, "(4)"},{520, "(5)"},{521, "(6)"},{522, "(7)"},{523, "(8)"},}

function Bil_GetGroupAndPlayer()
	local Bil_String1 = "Error Bil_String1"
	local Bil_String2 = "Error Bil_String2"
	local OldSubWorld = SubWorld
	for i = 1, 8 do
		SubWorld = _Bil_SubWorldLvl1[i][1];
			if getn(wlls_get_ms_troop()) < WLLS_MAX_COUNT then
				local Bil_String1_1 = "<color=pink>-------------------[<color><color=Orange>S� - Tr"
				local Bil_String1_2 = "ung c�p<color><bclr><color=pink>]-------------------<color>��u tr"
				local Bil_String1_3 = "��ng: <color=green>"..i.."<color> - S� ng��i: <color=gree"
				local Bil_String1_4 = "n>"..getn(wlls_get_ms_troop()).."<color> - T�ng ng��i: <col"
				local Bil_String1_5 = "or=green>"..(getn(wlls_get_ms_troop()) + ((i-1)*200)).."<color>"
				Bil_String1 = Bil_String1_1..Bil_String1_2..Bil_String1_3..Bil_String1_4..Bil_String1_5
				break;
			end
	end
	for i = 1, 8 do
		SubWorld = _Bil_SubWorldLvl2[i][1];
			if getn(wlls_get_ms_troop()) < WLLS_MAX_COUNT then
				local Bil_String2_1 = "<color=pink>-----------------------[<color><color=Orange>Cao c�p<"
				local Bil_String2_2 = "color><bclr><color=pink>]----------------------<color>��u tr��ng: <color"
				local Bil_String2_3 = "=green>"..i.."<color> - S� ng��i: <color=green"
				local Bil_String2_4 = ">"..getn(wlls_get_ms_troop()).."<color> - T�ng ng��i: <color=g"
				local Bil_String2_5 = "reen>"..(getn(wlls_get_ms_troop()) + ((i-1)*200)).."<color>"
				Bil_String2 = Bil_String2_1..Bil_String2_2..Bil_String2_3..Bil_String2_4..Bil_String2_5
				break;
			end
	end
	SubWorld = OldSubWorld
	return "<enter>"..Bil_String2.."<enter>"..Bil_String1.."";
end

function Bil_CityNameWithMapID(MapID)
	for i = 1, getn(_Bil_CityNameWithMapID) do
		if _Bil_CityNameWithMapID[i][1] == MapID then
			return _Bil_CityNameWithMapID[i][2];
		end
	end
end

function Bil_CheckCityNameVsLevelAndGroup()
	local NowDayw = tonumber(date("%w"))
	local strNowDayw
	if NowDayw == 0 or NowDayw >= 6 then
		strNowDayw = "��u <color=yellow>8<color> tr�n, t� <color=yellow>18h00 ~ 19h00<color> v� <color=yellow>20h00 ~ 21h00<color>"
	else
		strNowDayw = "��u <color=yellow>4<color> tr�n, t� <color=yellow>19h00 ~ 20h00<color><enter>"
	end
	return "H�m nay: "..strNowDayw..""
end

function Bil_CheckLgMatchName()
	return "T�nh n�ng : <color=yellow>V� L�m Li�n ��u<color>";
end

function Bil_GetStateGlMatch()
	local n_timer = GetGlbValue(GLB_WLLS_TIME) + 1
			n_timer = WLLS_TIMER_PREP_TOTAL - n_timer
	local n_matchphase = GetGlbValue( 820 );
	if n_matchphase < 2 then
		return "Tr�ng th�i: <color=pink>T�m ngh�, ti�n h�nh nh�n th��ng<color>";
	elseif n_matchphase == 2 then
		return "Tr�ng th�i: <color=green>Ch�a t�i gi� b�o danh<color>";
	elseif n_matchphase == 3 then
		return "Tr�ng th�i: <color=yellow>Chu�n b� b�o danh<color>";
	elseif n_matchphase == 4 then
		return "Tr�ng th�i: <color=Water>Ti�n h�nh b�o danh<color>, th�i gian c�n <color=yellow>"..ceil(n_timer*WLLS_TIMER_PREP_FREQ/60).." ph�t<color>";
	elseif n_matchphase == 5 then
		local n_resttime = 120 - GetGlbValue(825)
		local n_resttime = ceil(n_resttime*5/60)
		return "Tr�ng th�i: <color=yellow>�ang thi ��u, th�i gian c�n<color> <color=blue>"..n_resttime.." ph�t<color>";
	end
end

function Bil_CheckLGMatchType()
	local n_ntype = GetGlbValue(824);
	if n_ntype == 0 then
		return "H�nh th�c : <color=red>T�nh n�ng ch�a ���c m�<color>";
	elseif (WLLS_TAB[n_ntype].max_member <= 1) then
		return "H�nh th�c : <color=green>��n ��u t� do<color> - n_ntype: <color=green>"..n_ntype.."<color>";
	elseif (WLLS_TAB[n_ntype].max_member > 1) then
		return "H�nh th�c : <color=green>��u nhi�u ng��i<color> - n_ntype: <color=green>"..n_ntype.."<color>";
	end
end

--==============================================-- END - Li�n ��u --============================================--

--==============================================-- T�n s� Phong k� --============================================--


-- Th�i gian tham gia: b�t k� th�i gian, t�ng th�i gian tham gia v�o Phong k� l� 2 gi� Code s� t� t�nh t�ng th�i gian �� � b�n �� Phong k�, sang ng�y m�i s� Reset l�i th�i gian
-- n�u v�o team, th� m�i t�a �� ho�c NPC ��t �c s� �c c�ng v�o cho t�t c� c�c th�nh vi�n c�a team bao g�m Exp v� c�c ch� s�.
-- m�i t�a �� ��t �c 5.000 Kinh nghi�m nh�n ngay
-- m�i t�a �� ��t ���c ��i � D�ch Quan s� nh�n �c 20.000 Kinh nghi�m
-- m�i NPC ti�u di�t �c s� nh�n ngay 15.000 Kinh nghi�m
-- m�i NPC ��t ���c ��i � D�ch Quan s� nh�n �c 10.000 Kinh nghi�m
-- Nhi�m v� ��a th� nh�n danh v�ng m�i ng�y

-- Task 1201: Phong k�
	-- Value 10: B�t ��u l�m nhi�m v�
	-- Value 20: �� v�o b�n �� phong k� 
	-- Value 30: �� ra kh�i b�n �� phong k�
-- MapID: 389 - Map tr�n 100

-- Task:
	-- 1201: Phong k� -----------------------
	-- 1202: s�n th�n - Task 1202, c�a nhi�m v� s�n th�n mi�u l�m t�ng t�a �� nh�n �c. -----------------------
	-- 1203: b�o kh� - Task 1203, c�a nhi�m v� Thi�n b�o kh� l�m t�ng NPC ti�u di�t ���c. -----------------------
	-- 1204:  == citygo[i][2] 
	-- 1205: �i�m t�ch l�y t�n s�
	-- 1206: "Kh�ng ph�i b�n �� v��t qua th� th�ch c�a Phong K� sao? Mu�n xu�t quan �" l�nh b�i
	-- 1207: t�ng t�a �� �� ��t �c
	-- 1208: SetMessengerPlayer Fly
	-- 1209: SetMessengerPlayer shanshenmiao
	-- 1210: SetMessengerPlayer Ti�u tr�n ------------------------ l�m ng�y gi� h�m tr��c
	-- 1211: GetGameTime() -----------------------
	-- 1212: Used Time = GetGameTime() - Task 1211 -----------------------
	-- 1213: Th�i gian t�ng g�p ��i Kinh nghi�m khi ��nh qu�i
	-- 1214: == 0 then "T�n n�y �� b� ng��i ta �� ng��i ta mua ��t r�i, ng��i ��nh h�n c�ng kh�ng ���c ph�n th��ng."
	-- 1215: == 0 then "Ng��i n�y �� b� ng��i kh�c b�c, ng��i ��nh h�n ch�c s� kh�ng ���c ph�n th��ng g�."

-- _Bil_CityIDWithMapID = {{1, 2, "Ph��ng T��ng"},{11, 3, "Th�nh ��"},{37, 5, "Bi�n Kinh"},{78, 6, "T��ng D��ng"},{80, 7, "D��ng Ch�u"},{162, 4162, "��i L�"},{176, 1, "L�m An"},}
_Bil_CityIDWithMapID = {{1, 2, "Ph��ng T��ng"},{11, 3, "Th�nh ��"},{37, 5, "Bi�n Kinh"},{78, 6, "T��ng D��ng"},{80, 7, "D��ng Ch�u"},{162, 4, "��i L�"},{176, 1, "L�m An"},}

function Bil_Getletter_station(W)
	for i = 1, getn(_Bil_CityIDWithMapID) do
		if _Bil_CityIDWithMapID[i][1] == W then
			return _Bil_CityIDWithMapID[i][2];
		end
	end
end

function Bil_CheckResetTask1212Fl(Bil_Task1210Date)
	local Bil_ymd = tonumber(date("%y%m%d"))
	if Bil_ymd <= Bil_Task1210Date then
		return 0
	else
		return 1212
	end
end

function bilCheckTimeFengzhiqui()
	local bilHour = tonumber(GetLocalDate("%H"))
	if mod(bilHour, 2) ~= 0 then
		Say("Hi�n t�i Phong K� ch�a t�i th�i gian m� c�a, phi�n   ��i nh�n ��i ��n khi c� th�ng b�o h�y ��n t�m ta.")
		return 1
	else
		return nil
	end
end

--===========================================-- END - T�n s� Phong k� --=========================================--

--==========================================-- NieShiChen _ NV S�t th� --=========================================--

-- nhi�m v� s�t th�, m�i Boss 9x nh�n �c 1k4 Exp, Code t� ��ng ��a ng��i l�m nhi�m v� ��n n�i c�a Boss, 1 ng�y h� s�t �c 8 ng��i: --------OK
-- �� ch�nh s�a l�i h� th�ng drop boss

function Bil_ProcessBossPos(PosX,PosY)
	local X = PosX
	local Y = PosY
	if X >= 0 and X < 1000 then X = X*8
	elseif X >= 1000 and X < 10000 then X = X
	elseif X >= 10000 and X < 100000 then X = (X/100)*8
	elseif X >= 100000 and X < 1000000 then X = (X/1000)*8
	elseif X >= 1000000 then X = (X/10000)*8
	end
	if Y >= 0 and Y <1000 then Y = Y*16
	elseif Y >= 1000 and Y < 10000 then Y = Y
	elseif Y >= 10000 and Y < 100000 then Y = (Y/100)*16
	elseif Y >= 100000 and Y < 1000000 then Y = (Y/1000)*16
	elseif Y >= 1000000 then Y = (Y/10000)*16
	end
	return X, Y
end

--=============================================-- END - NV S�t th� --===========================================--

--=============================================-- Qu�n l� nh�n v�t --============================================--
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_autooffline4player.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_client_ip.lua")
GetNameAdmin = bilNameOfGameMaster;

Bil_FactionVietvsCn = 
{
	{"shaolin", "Thi�u L�m ph�i"},
	{"tianwang", "Thi�n V��ng Bang"},
	{"tangmen", "���ng M�n"},
	{"wudu", "Ng� ��c Gi�o"},
	{"emei", "Nga My ph�i"},
	{"cuiyan", "Th�y Y�n m�n"},
	{"gaibang", "C�i Bang"},
	{"tianren", "Thi�n Nh�n Gi�o"},
	{"wudang", "V� �ang ph�i"},
	{"kunlun", "C�n L�n ph�i"},
	{"huashan", "Hoa S�n ph�i"},
}

function Bil_VietFactionWithCnInput(FactionCn)
	for i = 1, 11 do
		if  Bil_FactionVietvsCn[i][1] == FactionCn then
			return Bil_FactionVietvsCn[i][2];
		end
	end
end

function Bil_EnemySay_Sx(Name)
	if callPlayerFunction(SearchPlayer(Name), GetSex) == 0 then
		return Bil_EnemySay[1][1];
	else
		return Bil_EnemySay[2][1];
	end
end

function Bil_CheckPlayerWithRolename(Name)
	if CallPlayerFunction(SearchPlayer(Name), GetTask, 5998) == 1 then
		local bilPlayerOfflineLive_W, bilPlayerOfflineLive_X, bilPlayerOfflineLive_Y = CallPlayerFunction(SearchPlayer(Name), GetWorldPos)
		Say("Nh�n v�t �ang <color=yellow>Offline Live<color><enter>T�i kho�n ng��i ch�i: <color=yellow>"..CallPlayerFunction(SearchPlayer(Name), GetAccount).."<color><enter>V� tr�: "..bilPlayerOfflineLive_W.." - "..bilPlayerOfflineLive_X.." - "..bilPlayerOfflineLive_Y.."<enter>Kh�ng th� hi�n th� th�m!", 3, "��a ta ��n ngay v� tr� ng��i n�y!/#bilPlayerOfflineLive_bilGo2Pos_OK("..bilPlayerOfflineLive_W..", "..bilPlayerOfflineLive_X..", "..bilPlayerOfflineLive_Y..")", "K�ch Out ng��i n�y ra kh�i game!/#bilPlayerOfflineLive_KichOutPl("..Name..")", "Th�i kh�ng c�n!/OnCancel")
		return 1
	end
	if (SearchPlayer(Name) <= 0) or (SearchPlayer(Name) == nil) or (SearchPlayer(Name) == "") or not (SearchPlayer(Name)) then
		Talk(1, "", "L�i ho�c t�n nh�n v�t kh�ng t�n t�i <enter>kh�ng th� l�y PlayerIndex")
		return 1
	else
		return nil
	end
end

function bilPlayerOfflineLive_bilGo2Pos_OK(bilW, bilX, bilY)
	NewWorld(bilW, bilX, bilY)
	return Msg2Player("<color=yellow>�� ��n v� tr� c�a ng��i ch�i!")
end

function bilPlayerOfflineLive_KichOutPl(bilNameGamer, bilSel)
	if bilSel then
		CallPlayerFunction(SearchPlayer(bilNameGamer), KickOutSelf)
		return Msg2Player("<color=yellow>Ng��i ch�i �� ���c ��a ra kh�i game!")
	end
	return Say("Vi�c K�ch ng��i ch�i ra kh�i game l�c �ang �y th�c s� l�m sai l�ch th�ng s� b�ng ng��i ch�i online v� ng��ich�i �ang �y th�c, ng��i th�t s� mu�n th�c hi�n thao t�c n�y ch�?", 2, "Ta ch�c r�i!/#bilPlayerOfflineLive_KichOutPl("..bilNameGamer..", 1)", "Th�i ta nh�m!/OnCancel")
end

function NhapTenNhanVat()
	return AskClientForString("Bil_ProcNameInput4AllInformation", "", 1, 20, "Nh�p t�n nh�n v�t");
end

function Bil_ProcNameInput4AllInformation(Name)
	local Keywk1 = strfind(Name, "/")
	if FALSE(Keywk1) then
		return Bil_AllInformationForInputName(Name)
	end
	local Name = strsub(Name, Keywk1 + 1)
	return Bil_AllInformationForInputName(Name)
end

function Bil_NamePlayer(Name)
	if Name == GetNameAdmin then
		return "T�n nh�n v�t: <color=black><bclr=red>"..Name.."<bclr><color> - "..Bil_GetAccountWithNameInput(Name).."";
	else
		return "T�n nh�n v�t: <color=black><bclr=green>"..Name.."<bclr><color> - "..Bil_GetAccountWithNameInput(Name).."";
	end
end

function Bil_PlayerStatus(Name)
	if SearchPlayer(Name) == 0 then
		return "T�nh tr�ng  : <color=red>Offline<color> <pic=137> - PlayerIndex: <color=red>__<color> - PK: <color=red>Offline<color>";
	else
		return "T�nh tr�ng  : <color=green>Online<color> <pic=135> - PlayerIndex: <color=green>"..SearchPlayer(Name).."<color> - PK: <color=green>"..CallPlayerFunction(SearchPlayer(Name), GetPK).."<color>";
	end
end

function Bil_GetAccountWithNameInput(Name)
	if SearchPlayer(Name) == 0 then
		return "T�n t�i kho�n: <color=red>Offline<color>";
	else
		return "T�n t�i kho�n: <color=green>"..callPlayerFunction(SearchPlayer(Name), GetAccount).."<color>";
	end
end

function Bil_GetLevelWithNameInput(Name)
	if SearchPlayer(Name) == 0 then
		return "��ng c�p    : <color=red>Offline<color> - Exp: <color=red>Offline<color>";
	else
		return "��ng c�p    : <color=green>"..callPlayerFunction(SearchPlayer(Name), GetLevel).."<color> - M�u: <color=green>"..(callPlayerFunction(SearchPlayer(Name), GetLevel)).."<color>";
	end
end

function Bil_GetFactionWithName(Name)
	local MonPhai = ""
	local GioiTinh
	if SearchPlayer(Name) == 0 then
		return "M�n ph�i    : <color=red>Offline<color> - Gi�i t�nh: <color=red>Offline<color>";
	else
		if callPlayerFunction(SearchPlayer(Name), GetSex) == 0 then
			GioiTinh = "Nam";
		else
			GioiTinh = "N�";
		end
		if CallPlayerFunction(SearchPlayer(Name), GetFaction) == "" then
			MonPhai = "Ch�a gia nh�p ph�i"
		else
			MonPhai = Bil_VietFactionWithCnInput(CallPlayerFunction(SearchPlayer(Name), GetFaction))
		end
		if FALSE(MonPhai) then
			MonPhai = "�� xu�t s�"
		end
		return "M�n ph�i    : <color=green>"..MonPhai.."<color> - Gi�i t�nh: <color=green>"..GioiTinh.."<color>";
	end
end

function Bil_GetTongNameWithName(Name)
	if SearchPlayer(Name) == 0 then
		return "Bang h�i: <color=red>Offline<color>";
	else
		local tongname, _ = CallPlayerFunction(SearchPlayer(Name), GetTong)
		return "Bang h�i: <color=green>"..tongname.."<color>";
	end
end

function Bil_GetLocationWithName(Name)
	if SearchPlayer(Name) == 0 then 
		return "V� tr�      : <color=red>Offline<color>";
	else
		W,X,Y = CallPlayerFunction(SearchPlayer(Name), GetWorldPos)
		return "V� tr�      : MapID: <color=green>"..W.."<color> X: <color=green>"..floor(X/8).."<color> Y: <color=green>"..floor(Y/16).."<color> - <color=violet>H�ng: <color><color=green>"..CallPlayerFunction(SearchPlayer(Name), GetEnergy).."<color>"
	end
end

function Bil_GetCashWithName(Name)
	local AllCash
	if SearchPlayer(Name) == 0 then
		return "T�i  s�n    : <color=red>Offline<color> - Ti�n ��ng: <color=red>Offline<color>";
	else
		AllCash = CallPlayerFunction(SearchPlayer(Name), GetCash) + CallPlayerFunction(SearchPlayer(Name), GetBoxMoney)
		return "T�i s�n     : <color=green>"..floor(AllCash/10000).."<color><color=yellow> v�n<color> <color=green>"..mod(AllCash, 10000).."<color><color=yellow> l��ng<color> - Ti�n ��ng: <color=Orange>"..CallPlayerFunction(SearchPlayer(Name), GetCashCoin).."<color>";
	end
end

function Bil_GetIPWithName(Name)
	if SearchPlayer(Name) == 0 then
		return "��a ch� IP  : <color=red>Offline<color>";
	else
		if bilGetIPAdressWithProtocol ~= 1 then
			return "��a ch� IP  : <color=green>T�m ��ng!!<color>";
		end
		-- return "��a ch� IP  : <color=green>"..CallPlayerFunction(SearchPlayer(Name), GetIP).."<color>";
		return "��a ch� IP  : <color=green>"..CallPlayerFunction(SearchPlayer(Name), GetStringTask, (bilClientIP.TaskString or 0)).."<color>";
	end
end

function Bil_GetFightStateWithName(Name)
	if SearchPlayer(Name) == 0 then
		return "FightState: <color=red>Offline<color>";
	else
		return "FightState: <color=green>"..CallPlayerFunction(SearchPlayer(Name), GetFightState).."<color>";
	end
end

function Bil_GetPointHonour(Name)
	if SearchPlayer(Name) == 0 then
		return "�i�m vinh d�: <color=red>Offline<color>";
	else
		return "�i�m vinh d�: <color=green>"..CallPlayerFunction(SearchPlayer(Name), GetTask, 2501).."<color>";
	end
end

function Bil_GetLeagueRank(Name)
	if SearchPlayer(Name) == 0 then
		return "H�ng li�n ��u: <color=red>Offline<color>";
	else
		local _, d = bil.SplitTime(CallPlayerFunction(SearchPlayer(Name), GetGameTime))
		return "H�ng li�n ��u: <color=yellow>"..LG_GetLeagueTask(LG_GetLeagueObjByRole(5, CallPlayerFunction(SearchPlayer(Name), GetName)), 5).."<color> - Phong k�: <color=green>"..floor((CallPlayerFunction(SearchPlayer(Name), GetTask, 1212))/60).." Min <color>"
			.."<enter>PlayAllTime : "..d
	end
end

function Bil_Go2MapOfPlayer()
	local PlayerIndex = GetTaskTemp(245);
	if PlayerIndex == 0 then 
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		W,X,Y = CallPlayerFunction(PlayerIndex, GetWorldPos)
		return NewWorld(W, X, Y);
	end
end

function Bil_KichOutWithName()
	local PlayerIndex = GetTaskTemp(245);
	if PlayerIndex == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		Say("B�n c� ch�c v� �i�u n�y? <color=red>KickOut Player<color> <color=yellow>"..CallPlayerFunction(PlayerIndex, GetName).."<color>", 2, "Ch�c r�i/Bil_KichOutWithName_Sure", "Ta nh�m/OnCancel")
	end
end

function Bil_KichOutWithName_Sure()
	local PlayerIndex = GetTaskTemp(245);
	return
OfflineLive(PlayerIndex); 
end

function Bil_TitleManager4Player()
	if FALSE(CallPlayerFunction(GetTaskTemp(245), Title_GetActiveTitle)) or CallPlayerFunction(GetTaskTemp(245), Title_GetActiveTitle) == nil then
		CheckTitleActive = "<color=red>NULL<color>";
		CheckNameTitleActive = "<color=red>NULL<color>";
	else 
		CheckTitleActive = "<color=green>"..CallPlayerFunction(GetTaskTemp(245), Title_GetActiveTitle).."<color>"
		CheckNameTitleActive = "<color=green>"..Title_GetTitleName(CallPlayerFunction(GetTaskTemp(245), Title_GetActiveTitle)).."<color>"
	end
	local szTitle = "Danh hi�u �ang k�ch ho�t: "..CheckTitleActive.."<enter>Title Name - "..CheckNameTitleActive.."<enter>GetTask(1122): <color=green>"..CallPlayerFunction(GetTaskTemp(245), GetTask, 1122).."<color>"
	local tbOpt = 
	{
		{"Th�m v� k�ch ho�t danh hi�u m�i cho "..CallPlayerFunction(GetTaskTemp(245), GetName).."",Bil_TitleManager4Player_EditTitle},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function Bil_TitleManager4Player_EditTitle()
	Say("B�n c� ch�c v� �i�u n�y? <enter><color=red>Th�m, s�a, x�a danh hi�u cho<color><color=yellow> "..CallPlayerFunction(GetTaskTemp(245), GetName).."", 2, "Ch�c r�i/Bil_TitleManager4Player_EditTitle_Sure", "Ta nh�m/OnCancel")
end
function Bil_TitleManager4Player_EditTitle_Sure()
	return AskClientForString("Bil_TitleManager4Player_EditTitle_Sure_Input", "", 1, 500, "ID,Time")
end
function Bil_TitleManager4Player_EditTitle_Sure_Input(StrTitleID)
	local bilString1 = strfind(StrTitleID, ",")
	if(FALSE(bilString1)) then return Msg2Player("Khai b�o l�i!") end
	local TitleID = tonumber(strsub(StrTitleID, 1, bilString1 - 1))
	if(FALSE(TitleID)) then return Msg2Player("Khai b�o l�i TitleID!") end
	local bilTitleTime = tonumber(strsub(StrTitleID, bilString1 + 1, strlen(StrTitleID)))
	local nServerTime = GetCurServerTime()+ (bilTitleTime*24*60*60); 
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	CallPlayerFunction(GetTaskTemp(245), Title_AddTitle, TitleID, 2, nTime)
	CallPlayerFunction(GetTaskTemp(245), Title_ActiveTitle, TitleID)
	CallPlayerFunction(GetTaskTemp(245), SetTask, 1122, TitleID)
	Msg2Player("GM: �� th�m v� k�ch ho�t danh hi�u <color=yellow>"..Title_GetTitleName(TitleID).."<color> cho <color=green>"..CallPlayerFunction(GetTaskTemp(245), GetName).." trong "..bilTitleTime.." ng�y!")
end

function Bil_InputString2Msg()
	if GetTaskTemp(245) == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		return AskClientForString("Bil_Msg2PlayerWithName", "", 1, (255-51), "<#>Nh�p th�ng b�o");
	end
end

function Bil_Msg2PlayerWithName(msg)
	local StringMsg = "<bclr=yellow><color=black>GameMaster<bclr><color> <pic=139> "..msg..""
	return callPlayerFunction(GetTaskTemp(245), Msg2Player, StringMsg);
end

function Bil_InputString2Say()
	if GetTaskTemp(245) == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		return AskClientForString("Bil_Say2PlayerWithName", "", 1, (410), "<#>Nh�p th�ng b�o");
	end
end

function Bil_Say2PlayerWithName(msg)
	local StringMsg = {"<bclr=yellow><color=black>GameMaster<bclr><color> <pic=139> "..msg.."", 1, "Tr� l�i l�i GameMaster/Bil_Reply2GameMaster"};
	Bil_ViewInfoCenterOfGamer(GetTaskTemp(245))
	return callPlayerFunctionParamList(GetTaskTemp(245), Say, StringMsg);
end

function Bil_Reply2GameMaster()
	return AskClientForString("Bil_Reply2GameMasterStr", "", 1, (410), "<#>Nh�p c�u tr� l�i");
end

function Bil_Reply2GameMasterStr(Messenger)
	local GamerName = GetName()
	local PlayerIndexAdmin = SearchPlayer(GetNameAdmin); 
	local PlayerIndexGamer = SearchPlayer(GamerName)
	local StringMsg = 
		{
			"<bclr=green><color=black>"..GamerName.."<bclr><color> <pic=139> "..Messenger.."", 3, 
				"Tr� l�i l�i "..GamerName.."/Bil_InputString2Say", 
				"Xem th�ng tin c�a "..GamerName.."/#Bil_ViewInfoCenterOfGamer("..PlayerIndexGamer..")", 
				"K�t th�c ��i tho�i./ResetStateChatWithGM",
		};
	CallPlayerFunction(PlayerIndexAdmin, SetTaskTemp, 245, PlayerIndexGamer)
	return callPlayerFunctionParamList(PlayerIndexAdmin, Say, StringMsg);
end

function Bil_ViewInfoCenterOfGamer(GamerIndex)
	return Bil_AllInformationForInputName(callPlayerFunction(GamerIndex, GetName))
end

function Bil_NewWorld2Player()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		CallPlayerFunction(PlayerIndexGamer, SetFightState, 0);
		CallPlayerFunction(PlayerIndexGamer, Msg2Player, "<color=yellow>Tr� v� Ba l�ng huy�n!");
		return CallPlayerFunction(PlayerIndexGamer, NewWorld, 53, 1622, 3181);
	end
end

function ResetStateChatWithGM()
	Bil_SetTask(3, 0)
end

--==========================================-- END - Qu�n l� nh�n v�t --==========================================--

--==========================================-- Ch�c n�ng Administrator --==========================================--

BilNpcSongJinShop = "<color=Orange>Qu�n nhu quan<color>: "
BilNpcSongJinShopExChangeExp = 1234.5679

IncludeLib("RELAYLADDER")
Include("\\script\\gmscript.lua");
Include("\\script\\global\\bil4i3n\\bil4i3n_testgame.lua");

Bil_EnemyTTQ = "<color=Orange>T�n Th� Quan<color>: "
Bil_EnemySay = 
{
	{"<link=image[4,20]:\\spr\\npcres\\enemy\\enemy208\\enemy208_at.spr><link><color>","T�ng kim nam nh�n v�t h�nh t��ng"}, --
	{"<link=image[0,15]:\\spr\\npcres\\enemy\\enemy207\\enemy207_at.spr><link><color>","T�ng kim n� nh�n v�t h�nh t��ng"}, --
	{"<link=image:\\spr\\skill\\others\\title_dg.spr><link><color>","Li�n ��u Qu�n qu�n"}, --
	{"<link=image[0,8]:\\spr\\npcres\\passerby\\passerby092\\passerby092_st.spr><link><color>","V� l�m truy�n nh�n"}, --
	{"<link=image[0,13]:\\spr\\npcres\\passerby\\passerby181\\passerby181_pst.spr><link><color=Orange>D�ch Quan: <color>","D�ch quan"}, --
	{"<link=image:\\spr\\skill\\others\\title_ab.spr><link><color>","Li�n ��u � qu�n"},
	{"<link=image:\\spr\\skill\\others\\title_bj.spr><link><color>","Li�n ��u h�ng 3"},
	{"<link=image:\\spr\\skill\\others\\title_yl.spr><link><color>","Li�n ��u h�ng 4"},
	{"<link=image:\\spr\\skill\\others\\title_zw.spr><link><color>","V�ng s�ng m�u xanh"},
	{"<link=image[147,167]:\\spr\\npcres\\enemy\\enemy154\\enemy154_pst.spr><link><color>","Nhi�p Th� Tr�n"},
	-- {"<link=image[0,0]:\\spr\\item\\script\\jingniangshijian.spr><link><color>","C�m nang ��ng h�nh"},
	{"<link=image:\\spr\\skill\\christmas\\star2.spr><link><color>","C�m nang ��ng h�nh"},
	{"<link=image[0,20]:\\spr\\npcres\\passerby\\passerby181\\passerby181_pst.spr><link><color>", "L� quan"},
}


function Bil_SetFightState4U()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		AskClientForNumber("Bil_SetFightState4U_Sure",0,1,"<#>Nh�p gi� tr�!")	
	end
end

function Bil_SetFightState4U_Sure(Value)
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		CallPlayerFunction(PlayerIndexGamer, SetFightState, Value);
		-- CallPlayerFunction(PlayerIndexGamer, Msg2Player, "<color=yellow>Tr�ng th�i chi�n ��u: "..Value);
		Msg2Player("<color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).." FightState: "..Value)
	end
end

function bilCallPlayer2Here()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		local W,X,Y = GetWorldPos();
		CallPlayerFunction(PlayerIndexGamer, NewWorld, W, X, Y)
		CallPlayerFunction(PlayerIndexGamer, Msg2Player, "<color=yellow>B�n �� ���c tri�u h�i ��n ��y!")
	end
end

function bilGetASetTask2Player()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		AskClientForString("bilGetASetTask2Player_Step2", "",0,500,"<#>Nh�p Task,Value!")	
	end
end

function bilGetASetTask2Player_Step2(bilStringTaskID)
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		local bilString1 = strfind(bilStringTaskID, ",")
		if(FALSE(bilString1)) then return Msg2Player("Khai b�o l�i!") end
		local bilTaskID = tonumber(strsub(bilStringTaskID, 1, bilString1 - 1))
		if(FALSE(bilTaskID)) then return Msg2Player("Khai b�o l�i TaskID!") end
		local bilValue = tonumber(strsub(bilStringTaskID, bilString1 + 1, strlen(bilStringTaskID)))
		if((bilValue == nil)) then return Msg2Player("Khai b�o l�i Value!") end
		local bilGamerTaksValueOld = CallPlayerFunction(PlayerIndexGamer, GetTask, bilTaskID)
		return Say("Ch�nh s�a gi� tr� Task cho ng��i ch�i.<enter>TaskID: <color=green>"..bilTaskID.."<color><enter>Gi� tr� c�: <color=green>"..bilGamerTaksValueOld.."<color><enter>Gi� tr� m�i: <color=yellow>"..bilValue.."<color><enter>B�n ch�c ch�n ch�nh s�a gi� tr� ch�?", 2, "Ch�c r�i!/#bilGetASetTask2Player_Step3("..bilTaskID..","..bilValue..")", "Th�i ta nh�m!/OnCancel")
	end
end

function bilGetASetTask2Player_Step3(bilTaskID, bilValue)
	local PlayerIndexGamer = GetTaskTemp(245);
	CallPlayerFunction(PlayerIndexGamer, SetTask, bilTaskID, bilValue)
	Msg2Player("<color=yellow>�� SetTask "..bilTaskID..": "..bilValue.." - cho: "..CallPlayerFunction(PlayerIndexGamer, GetName))
end

function Bil_DefaultTalk4Npc()
	Bil_DefaultTalk4NpcTable = 
	{
		"Xin ch�o! <pic=103>",
		"Ha ha ha! Vui qu�!  Vui qu�! <pic=0>",
		"Xin ch�o! ��i hi�p �i ��u r� ta �i v�i <pic=103>",
		"Kh�ch quan! Ng��i m�t r�i, ng�i xu�ng u�ng ly tr� ��. <pic=99>",
		"C� ph�i v� thi�u hi�p ��n ��y �� du xu�n ng�m c�nh ch�ng <pic=96>",
		"Gi�u c� th�t l� s��ng, c� ai kh�ng mu�n s�ng trong sung s��ng ch�? <pic=120>",
		"N�i n�y th�t t�p n�p, ta quy�t ��nh sang n�m s� chuy�n ��n ��y ��nh c�. <pic=48>",
		"B�n quan ph� �n nh�u 1 ng�y b�ng b�n ta ti�u s�i c� n�m, th�t b�t c�ng. <pic=81>",
		"T�n n�y ch�c ��u �c c� v�n ��.<enter>Si T�ng: A! ��u h�! Th�t ch�... <pic=99>",
		"V� kh�ch n�y ch�c � ph��ng xa ��n, c� mu�n c�ng ta �i d�o 1 v�ng kh�ng? <pic=99>",
		"Ta � ��y kh�ng quen ko bi�t ai, cu�c s�ng th�t ch�n!, c� mu�n c�ng ta l�m ch�t kh�ng? <pic=99>",
		"T�c th�t! ��m ch� s�i n�y ��ng l� mu�n l�y m�ng ng��i! �� h�i l�y m�ng m��i huynh �� r�i. <pic=6>",
		"Ng��i t� n�i kh�c ��n ph�i kh�ng? � ��y quanh n�m 4 m�a c�nh v�t nh� tranh, phong hoa tuy�t nguy�t. <pic=48>",
		"V� huynh �� n�y c� ph�i mu�n u�ng tr�, n�o l�i ��y �� l�u kh�ng g�p, ch�ng ta c�ng ng�i h�n huy�n chuy�n c� r�i h�y �i. <pic=58>",
		"Nghe ng��i ta n�i, � trong tri�u ��u l� tuy�t th� giai nh�n, n�u nh� cu�c ��i n�y g�p ���c ng��i xinh ��p nh� th�, ch�t c�ng ��ng. <pic=99>",
		"Ta ��ng � ��y c� ng�y tr�i kh�ng 1 th�ng h�i th�m <pic=6>, t�c qu� h�m nay ta mi�n ph� <pic=103>, thi�u hi�p c� mu�n vui v� v�i ta kh�ng? <pic=99>",
	}
	return Talk(1, "", Bil_DefaultTalk4NpcTable[random(1,16)])
end

function Bil_ShowAllInfoAdministrator()
	Bil_SetTask(3, PlayerIndex)
	return "Ch�o Admin: <color=black><bclr=red>"..GetName().."<bclr><color> - "..Bil_GetWorldPosWXY()..".<enter>NameServer: <color=green>Giang H�<color>";
end

function Bil_GetWorldPosWXY()
	local W,X,Y = GetWorldPos();
	return "MapID: <color=green>"..W.."<color> X: <color=green>"..X.."<color> Y: <color=green>"..Y.."<color>";
end

function Bil_InfoNowDayMMYearHourMin()
	local year = tonumber(date( "%y"))
	local mm = tonumber(date( "%m"))
	local day = tonumber(date( "%d"))
	local hour = tonumber(GetLocalDate("%H"))
	local mmin = tonumber(GetLocalDate("%M"))
	return "H�m nay l�: <color=yellow>Ng�y <color><color=green>"..day.."<color> <color=yellow>Th�ng <color><color=green>"..mm.."<color> <color=yellow>N�m<color> <color=green>"..year.."<color> - <color=green>"..hour.."<color> <color=yellow>Gi�<color> <color=green>"..mmin.."<color> <color=yellow>Ph�t<color>";
end

function Bil_ShowCountPlayerOnline()
	local bil_1 = ""
	local a = bil.IniFile
	a.Load("doanh_thu.dat")
	local b, c = a.Get("doanhthu", ("day_"..(date("%d_%m_%y")))), a.Get("doanhthu", "day_all")
	a.Release()
	
	if bilAllowOnTimerAutoChat == 0 then
		bil_1 = "<color=orange>�ang t�m ��ng.<color>"
	else
		bil_1 = "<color=green>"..GetGlbValue(4999).."<color> ng��i."
	end
	return "CountPlayr: <color=green>"..GetPlayerCount().."<color> = Online: <color=green>"..(GetPlayerCount() - bilAdminGetCountPlayerAutoOffline()).."<color> + Offline Live: <color=green>"..bilAdminGetCountPlayerAutoOffline().."<color>"
		.."<enter>Auto Chat : "..bil_1.."<enter>Doanh thu : Ng�y "..bil.C(2, (bil.False(b) and "0" or b)).." T� - T�ng "..bil.C(2, bil.False(c) and "0" or c).." T�"
end

function Bil_ShowPos()
	x,y = GetPos();
	return "GetPos    : <color=green>"..x..", "..y.."<color> - SubWorld: <color=green>"..SubWorld.."<color>";
end

function Bil_PasswordAcceptedFalse()
	Talk(1, "","<color=green>C� l� nh� ng��i n�n tr� l�i v�t n�y th� h�n, ho�c b�n Shop<color><enter>T�n T�i Kho�n : <color=blue>"..GetAccount().."<color><enter>T�n Nh�n V�t  : <color=blue>"..GetName().."<color><enter><color=red>Th�ng b�o n�y s� g�i ��n GM �� ti�n h�nh gi�i quy�t!")
		print( " .")print( " .")
		print( " --=================================================================--")
		print( "                    Lenh Bai Admin bi that lac")
		print(format( " Ten Tai Khoan : %s ", GetAccount( )))
		print(format( " Ten Nhan Vat  : %s ", GetName( )))
		print(format( " Dang Cap      : %s ", GetLevel( )))
		print( " --=================================================================--")print( " .")print( " .")
end

function Bil_GetDanhHieuGM()
	local n_title = 327 -- GAME MASTER
	local nServerTime = GetCurServerTime()+ 1728000; --20*24*60*60
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	Title_AddTitle(n_title, 2, nTime)
	Title_ActiveTitle(n_title)
	SetTask(1122, n_title)
end

function GetDanhHieuvsMagicAdmin()
	return Say("K� n�ng ��c bi�t cho ng��i qu�n l� v�o theo d�i h� th�ng!", 8, 
		"Xu�t danh s�ch x�p h�ng ra file!/bilExportLadder", 
		"X�a b�ng x�p h�ng th�p ��i cao th�!/#bilAdminClearLadderAll()", 
		"C�m CHAT tr�n h� th�ng k�nh/#GetDanhHieuvsMagicAdmin_ChatFlag(1)", 
		"H�y c�m CHAT tr�n h� th�ng k�nh/#GetDanhHieuvsMagicAdmin_ChatFlag(0)", 
		"Danh hi�u cho GM/GetDanhHieuvsMagicAdmin_DanhHieu", 
		"K�t th�c ��i tho�i!/OnCancel")
end

function bilAdminClearLadderAll(bil_In_1, bil_In_2, bil_In_3, bil_In_4)
	local bil_tbLadderId = {
		[1] = {
			bil_sName = "Th�p ��i cao th� M�n ph�i",
			bil_nID = {
				{bil_nID = 10282, bil_sDesc = "Cao th� Th�y y�n"},
				{bil_nID = 10281, bil_sDesc = "Cao th� Nga my"},
				{bil_nID = 10279, bil_sDesc = "Cao th� ���ng m�n"},
				{bil_nID = 10280, bil_sDesc = "Cao th� Ng� ��c"},
				{bil_nID = 10278, bil_sDesc = "Cao th� Thi�n v��ng"},
				{bil_nID = 10277, bil_sDesc = "Cao th� Thi�u l�m"},
				{bil_nID = 10285, bil_sDesc = "Cao th� V� �ang"},
				{bil_nID = 10286, bil_sDesc = "Cao th� C�n l�n"},
				{bil_nID = 10284, bil_sDesc = "Cao th� Thi�n nh�n"},
				{bil_nID = 10283, bil_sDesc = "Cao th� C�i bang"},
			},
		},
		[2] = {
			bil_sName = "Th�p ��i cao th� Th� gi�i",
			bil_nID = {
				{bil_nID = 10287, bil_sDesc = "Th�p ��i Cao th� th� gi�i"},
				{bil_nID = 10288, bil_sDesc = "Th�p ��i Ph� h�"},
				{bil_nID = 10195, bil_sDesc = "Th�p ��i Vinh d�"},
				{bil_nID = 10122, bil_sDesc = "Th�p ��i �i�m danh"},
				{bil_nID = 10121, bil_sDesc = "Th�p ��i Ph�c duy�n"},
				{bil_nID = 10228, bil_sDesc = "Th�p ��i Online"},
				{bil_nID = 10229, bil_sDesc = "Th�p ��i Khi�u chi�n l�nh"},
			},
		},
		[3] = {
			bil_sName = "Th�p ��i Ph� h� M�n ph�i",
			bil_nID = {
				{bil_nID = 10265, bil_sDesc = "Ph� h� Th�y y�n"},
				{bil_nID = 10266, bil_sDesc = "Ph� h� Nga my"},
				{bil_nID = 10267, bil_sDesc = "Ph� h� ���ng m�n"},
				{bil_nID = 10268, bil_sDesc = "Ph� h� Ng� ��c"},
				{bil_nID = 10269, bil_sDesc = "Ph� h� Thi�n v��ng"},
				{bil_nID = 10270, bil_sDesc = "Ph� h� Thi�u l�m"},
				{bil_nID = 10271, bil_sDesc = "Ph� h� V� �ang"},
				{bil_nID = 10272, bil_sDesc = "Ph� h� C�n l�n"},
				{bil_nID = 10273, bil_sDesc = "Ph� h� Thi�n nh�n"},
				{bil_nID = 10274, bil_sDesc = "Ph� h� C�i bang"},
			},
		},
	}
	local bil_1 = {}
	if bil_In_4 then
		if bil_In_4 == 1 then
			local bil_3 = "X�a <color=red> To�n b� b�ng x�p h�ng<color>"
			if bil_In_1 then
				bil_3 = format(bil_3.."<color=yellow> %s<color>", bil_tbLadderId[bil_In_1].bil_sName)
			end
			return CreateNewSayEx(Bil_EnemySay[3][1]..bil_3.." ?", {{"X�c nh�n x�a!", bilAdminClearLadderAll, {bil_In_1, nil, nil, bil_In_4 + 1}}, {"K�t th�c ��i tho�i.", OnCancel}})
		elseif bil_In_4 == 2 then
			if bil_In_1 then
				for bil_l_3 = 1, getn(bil_tbLadderId[bil_In_1].bil_nID) do
					Ladder_ClearLadder(bil_tbLadderId[bil_In_1].bil_nID[bil_l_3].bil_nID)
				end
				return Msg2Player("X�a to�n b� b�ng x�p h�ng: "..bil_tbLadderId[bil_In_1].bil_sName)
			else
				for bil_l_4 = 1, getn(bil_tbLadderId) do
					for bil_l_3 = 1, getn(bil_tbLadderId[bil_l_4].bil_nID) do
						Ladder_ClearLadder(bil_tbLadderId[bil_l_4].bil_nID[bil_l_3].bil_nID)
					end
				end
				return Msg2Player("X�a to�n b� b�ng x�p h�ng!")
			end	
		end
	end
	if bil_In_3 then
		Ladder_ClearLadder(bil_tbLadderId[bil_In_1].bil_nID[bil_In_2].bil_nID)
		return Msg2Player("�� x�a b�ng x�p h�ng: "..bil_tbLadderId[bil_In_1].bil_nID[bil_In_2].bil_sDesc)
	end
	if bil_In_2 then
		return CreateNewSayEx(Bil_EnemySay[3][1].."X�a b�ng x�p h�ng: <color=yellow>"..bil_tbLadderId[bil_In_1].bil_sName.." - "..bil_tbLadderId[bil_In_1].bil_nID[bil_In_2].bil_sDesc.."<color> ?", {{"X�c nh�n x�a!", bilAdminClearLadderAll, {bil_In_1, bil_In_2, 1}}, {"K�t th�c ��i tho�i.", OnCancel}})
	end
	if bil_In_1 then
		for bil_l_2 = 1, getn(bil_tbLadderId[bil_In_1].bil_nID) do
			tinsert(bil_1, {bil_tbLadderId[bil_In_1].bil_sName.." - "..bil_tbLadderId[bil_In_1].bil_nID[bil_l_2].bil_sDesc, bilAdminClearLadderAll, {bil_In_1, bil_l_2}})
		end
	else
		for bil_l_1 = 1, getn(bil_tbLadderId) do
			tinsert(bil_1, {"X�a "..bil_tbLadderId[bil_l_1].bil_sName, bilAdminClearLadderAll, {bil_l_1}})
		end
	end
	tinsert(bil_1, {"X�a to�n b�.", bilAdminClearLadderAll, {bil_In_1, nil, nil, 1}})
	tinsert(bil_1, {"K�t th�c ��i tho�i.", OnCancel})
	return CreateNewSayEx(Bil_EnemySay[3][1].."X�a b�ng x�p h�ng!", bil_1)
end

function bilExportLadder()
	local bil_1 = "script/global/bil4i3n/bil4i3n_log/Ladder_"..date("%d_%m_%Y")..".log"
	local bil_2 = {
		{s_Name = "Cao th� Th� gi�i", n_LadderId = 10287},
		{s_Name = "Cao th� Thi�u l�m", n_LadderId = 10277},
		{s_Name = "Cao th� Thi�n v��ng", n_LadderId = 10278},
		{s_Name = "Cao th� ���ng m�n", n_LadderId = 10279},
		{s_Name = "Cao th� Ng� ��c", n_LadderId = 10280},
		{s_Name = "Cao th� Nga my", n_LadderId = 10281},
		{s_Name = "Cao th� Th�y y�n", n_LadderId = 10282},
		{s_Name = "Cao th� C�i bang", n_LadderId = 10283},
		{s_Name = "Cao th� Thi�n nh�n", n_LadderId = 10284},
		{s_Name = "Cao th� V� �ang", n_LadderId = 10285},
		{s_Name = "Cao th� C�n l�n", n_LadderId = 10286},
	}
	local bil_4 = openfile(bil_1, "w");
	for bil_l_1 = 1, getn(bil_2) do
		write(bil_4, "\n[[ "..bil_2[bil_l_1].s_Name.." ]] = {\n")
		for bil_l_2 = 1, 10 do
			local bil_3_Name, bil_3_Value = Ladder_GetLadderInfo(bil_2[bil_l_1].n_LadderId, bil_l_2)
			write(bil_4, "\t[ H�ng "..bil_l_2.." ]  --  "..bil_3_Name.."\n")
		end
		write(bil_4, "}\n")
	end
	closefile(bil_4)
	Msg2Player("<color=white>Export to "..bil_1)
end

function GetDanhHieuvsMagicAdmin_ChatFlag(bilSel)
	SetChatFlag(bilSel)
end


function GetDanhHieuvsMagicAdmin_DanhHieu()
	-- AddProp(155000);AddStrg(50000);AddDex(50000);AddVit(5000);AddEng(50000)
	
	-- AddSkillState(527, 5, 1, 1555200, 1) -- t�ng l��ng m�u t�i �a
	AddSkillState(472, 50, 1, 1555200, 1) -- h�i m�u
	AddSkillState(513, 50, 1, 1555200, 1) -- ph�ng th� v�t l� *2
	AddSkillState(514, 50, 1, 1555200, 1) -- kh�ng ��c *2
	AddSkillState(515, 50, 1, 1555200, 1) -- kh�ng b�ng *2
	AddSkillState(516, 50, 1, 1555200, 1) -- kh�ng h�a*2
	AddSkillState(517, 50, 1, 1555200, 1) -- kh�ng l�i *2
	
	Bil_GetDanhHieuGM();
	
	AddMagic(732, 1);AddMagic(733, 1)
	
	AddMagic(362, 60);AddMagic(48, 60);AddMagic(252, 60);AddMagic(360, 60);AddMagic(166, 60);AddMagic(275, 60)
	Msg2Player("�� nh�n ���c b� k� n�ng chuy�n d�ng v� Danh hi�u cho GM.")
end

function Bil_SongJinExChangeExp(Point)
	return BilNpcSongJinShopExChangeExp*Point
end

function returnbalanghuyen()
	gopos_step3(8, 1);
end

function OnCancel()
	Bil_SetTask(3, 0)
end

function Bil_MoveMapBlock()
	local PlayerIndexGamer = GetTaskTemp(245);
	if PlayerIndexGamer == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		Say("B�n c� ch�c v� �i�u n�y? <color=red>L�n ��o l�t chu�i<color> <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color>", 3, "Ch�c r�i/Bil_MoveMapBlock_Oke", "Mi�n gi�m �n ph�t/Bil_MoveBack2BLH", "Ta nh�m/OnCancel")
	end
end

function Bil_MoveMapBlock_Oke()
	local PlayerIndexGamer = GetTaskTemp(245);
	CallPlayerFunction(PlayerIndexGamer, SetTask, 5970, CallPlayerFunction(PlayerIndexGamer, GetCamp));
	CallPlayerFunction(PlayerIndexGamer, NewWorld, 241, 1597, 3205);
	CallPlayerFunction(PlayerIndexGamer, SetCurCamp, 0);
	CallPlayerFunction(PlayerIndexGamer, SetCamp, 0);
	CallPlayerFunction(PlayerIndexGamer, SetChatFlag, 1);
	CallPlayerFunction(PlayerIndexGamer, DelMagic, 210);
	return CallPlayerFunction(PlayerIndexGamer, Say, "H� th�ng Check �� ph�t hi�n b�n <color=yellow>Quy ph�m quy ��nh c�a m�y ch�<color> . B� t�ng l�n <color=yellow>��o Hoang<color>. ��ng th�i <color=yellow>C�m ch�t<color> tr�n m�i t�ng s� ", 0);
end

function Bil_MoveBack2BLH()
	local PlayerIndexGamer = GetTaskTemp(245);
	return Say("B�n c� ch�c v� �i�u n�y? <color=red>Th� ng��i v� trung nguy�n<color> <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color>", 3, "Ch�c r�i/Bil_MoveBack2BLH_Oke", "Ta nh�m/OnCancel")
end

function Bil_MoveBack2BLH_Oke()
	local PlayerIndexGamer = GetTaskTemp(245);
	CallPlayerFunction(PlayerIndexGamer, AddMagic, 210,1);
	CallPlayerFunction(PlayerIndexGamer, NewWorld, 53, 1622, 3181);
	CallPlayerFunction(PlayerIndexGamer, SetCurCamp, CallPlayerFunction(PlayerIndexGamer, GetTask, 5970));
	CallPlayerFunction(PlayerIndexGamer, SetCamp, CallPlayerFunction(PlayerIndexGamer, GetTask, 5970));
	CallPlayerFunction(PlayerIndexGamer, SetChatFlag, 0);
	return CallPlayerFunction(PlayerIndexGamer, Say, "B�n �� ���c ��a v� Trung nguy�n, l�n sau ��ng quy ph�m quy ��nh th� h�n!.", 0);
end

function bilFixShenXingFu()
	local PlayerIndexGamer = GetTaskTemp(245);
	CallPlayerFunction(PlayerIndexGamer, DisabledUseTownP, 0);
	return CallPlayerFunction(PlayerIndexGamer, Msg2Player, "<color=yellow>Tr�ng th�i s� d�ng th� ��a ph� v� th�n h�nh ph� c�a Qu� nh�n s� �� tr� v� ban ��u!.", 0);
end

function bilGetItemsWithParam2Player()
	return AskClientForString("bilGetItemsWithParam_Param", "", 1, 500, "x,y,z,C�p,S� l��ng")
end

function bilGetItemsWithParam_Param(Param)
	local Keywk1 = strfind(Param, ",")
	local bilNum1 = tonumber(strsub(Param, 1, Keywk1 - 1))
	local Keywk2 = strsub(Param, Keywk1 + 1, strlen(Param))
	local bilNum2 = tonumber(strsub(Keywk2, 1, strfind(Keywk2, ",") - 1))
	local Keywk3 = strsub(Keywk2, strfind(Keywk2, ",") + 1, strlen(Keywk2))
	local bilNum3 = tonumber(strsub(Keywk3, 1, strfind(Keywk3, ",") - 1))
	local Keywk4 = strsub(Keywk3, strfind(Keywk3, ",") + 1, strlen(Keywk3))
	local bilNum4 = tonumber(strsub(Keywk4, 1, strfind(Keywk4, ",") - 1))
	local bilNum5 = tonumber(strsub(Keywk4, strfind(Keywk4, ",") + 1, strlen(Keywk4)))
	return bilGetItemsWithParam_Answer(bilNum1,bilNum2,bilNum3,bilNum4,bilNum5)
end

function bilGetItemsWithParam_Answer(bilNum1,bilNum2,bilNum3,bilNum4,bilNum5)
	local PlayerIndexGamer = GetTaskTemp(245);
	local bilItemIndex = AddItem(bilNum1, bilNum2, bilNum3, bilNum4, random(0,4), 0, 0)
	local bilItemName2Pler = GetItemName(bilItemIndex)
	RemoveItemByIndex(bilItemIndex)
	if bilItemIndex then
		return Say("B�n mu�n th�m v�t ph�m cho <color=orange>"..callPlayerFunction(PlayerIndexGamer, GetName).."<color> v�i th�ng s�:<color=green><enter>T�n v�t ph�m: <color><color=yellow>"..bilItemName2Pler.."<color><color=green><enter>Item: "..bilNum1.." + "..bilNum2.." + "..bilNum3.."<enter>��ng c�p: "..bilNum4.."<enter>S� l��ng: "..bilNum5.."<color>",2, "Ch�c r�i!/#bilGetItemsWithParam_Sure("..bilNum1..","..bilNum2..","..bilNum3..","..bilNum4..","..bilNum5..")", "Th�i ta nh�m/OnCancel")
	else
		return Msg2Player("C� l�i x�y ra, vui l�ng ki�m tra l�i!")
	end
end

function bilGetItemsWithParam_Sure(bilNum1,bilNum2,bilNum3,bilNum4,bilNum5)
	local PlayerIndexGamer = GetTaskTemp(245);
	local bilItemIndex = AddItem(bilNum1, bilNum2, bilNum3, bilNum4, random(0,4), 0, 0)
	RemoveItemByIndex(bilItemIndex)
	if bilItemIndex then
		for i = 1, bilNum5 do
			callPlayerFunction(PlayerIndexGamer, AddItem, bilNum1, bilNum2, bilNum3, bilNum4, random(0,4), 0, 0)
		end
		Msg2Player("<color=yellow>"..callPlayerFunction(PlayerIndexGamer, GetName).."<color> �� nh�n ���c <color=green><enter>"..GetItemName(bilItemIndex).."<color><enter>           ��ng c�p: <color=green>"..bilNum4.."<color><enter>           S� l��ng: <color=green>"..bilNum5.."<color>")
		return CallPlayerFunction(PlayerIndexGamer, Say, "<color> �� nh�n ���c h� tr� v�t ph�m <color=yellow>"..GetItemName(bilItemIndex).."<color><enter>           ��ng c�p: <color=green>"..bilNum4.."<color><enter>           S� l��ng: <color=green>"..bilNum5.."<color>", 0);
	else
		Msg2Player("�� c� l�i ph�t sinh, xin ki�m tra l�i!")
	end
end

function bilBuffManual2Player(bilSel)
	local PlayerIndex = GetTaskTemp(245);
	if PlayerIndex == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		local _bilTbBuffManual2Player = 
		{
			{"Nh�p Level"},
			{"Nh�p s� ti�n v�n"},
		}
		SetTaskTemp(246, bilSel)
		AskClientForNumber("bilBuffManual2Player_Answer",0,99999999, _bilTbBuffManual2Player[bilSel][1])	
	end
end

function bilBuffManual2Player_Answer(bilValue)
	local PlayerIndex = GetTaskTemp(245);
	if PlayerIndex == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		_bilTbBuffManual2Player_Answer = 
		{
			{"C�ng th�m cho <color=blue>%s<color> <color=green>%d<color> <color=yellow>��ng c�p<color>!<enter>��ng c�p sau khi h� tr�: <color=green>"..(CallPlayerFunction(PlayerIndex, GetLevel)+bilValue).."<color>"},
			{"C�ng th�m cho <color=blue>%s<color> <color=green>"..floor(bilValue/10000).."<color><color=yellow> V�n L��ng<color>!"},
		}
		return Say(format(_bilTbBuffManual2Player_Answer[GetTaskTemp(246)][1], CallPlayerFunction(PlayerIndex, GetName), bilValue), 2, "Ch�c r�i/#bilBuffManual2Player_Sure("..GetTaskTemp(246)..", "..bilValue..")", "Oh! Ta nh�m/OnCancel")
	end
end

function bilBuffManual2Player_Sure(bilSel, bilValue)
	local PlayerIndex = GetTaskTemp(245);
	if PlayerIndex == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		if bilSel == 1 then
			local bilLevelGamerFeature = CallPlayerFunction(PlayerIndex, GetLevel) + bilValue
			while (CallPlayerFunction(PlayerIndex, GetLevel) < bilLevelGamerFeature) do
				CallPlayerFunction(PlayerIndex, AddOwnExp, 99999999);
			end
			Msg2Player("�� Buff <color=yellow>"..bilValue.."<color> c�p cho ng��i ch�i: <color=yellow>"..CallPlayerFunction(PlayerIndex, GetName))
			return CallPlayerFunction(PlayerIndex, Say, "B�n nh�n ���c h� tr� c�ng th�m <color=yellow>"..bilValue.."<color> c�p ��, ��ng c�p <enter>hi�n t�i <color=green>"..CallPlayerFunction(PlayerIndex, GetLevel).."<color>, th�t tuy�t v�i!", 0);
		elseif bilSel == 2 then
			CallPlayerFunction(PlayerIndex, Earn, bilValue);
			Msg2Player("�� Buff <color=yellow>"..floor(bilValue/10000).."<color> V�n L��ng cho ng��i ch�i: <color=yellow>"..CallPlayerFunction(PlayerIndex, GetName))
			return CallPlayerFunction(PlayerIndex, Say, "B�n nh�n ���c h� tr� c�ng th�m <color=yellow>"..floor(bilValue/10000).."<color> V�n L��ng, th�t tuy�t v�i!", 0);
		end
	end
end

function bilFuncAdminListKichOutClientByGSv(bil_In_1, bil_In_2)
	local bil_1, bil_2, bil_4 = {10490, 10499}, {"", 0}, 0
	if bil_In_2 then
		if bil_In_2 == 1 then
			return CreateNewSayEx("<link=image:\\spr\\skill\\����\\sl_06_ʨ�Ӻ�.spr><link>X�a to�n b� danh s�ch l�ch s� n�y?", {{"X�c nh�n!", bilFuncAdminListKichOutClientByGSv, {0, 2}}, {"Th�i kh�ng x�a.", OnCancel}})
		elseif bil_In_2 == 2 then
			for bil_l_1 = bil_1[1], bil_1[2] do
				Ladder_ClearLadder(bil_l_1)
			end
			return Msg2Player("�� x�a to�n b� danh s�ch c�c t�i kho�n s� d�ng client kh�ng h�p l�!")
		end
	end
	if bil_In_1 == nil or bil_In_1 < bil_1[1] then
		bil_4 = bil_1[1]
	elseif bil_In_1 > bil_1[2] then
		bil_4 = bil_1[2]
	else
		bil_4 = bil_In_1
	end
	local bil_3, bil_5, bil_6, bil_7 = "<link=image:\\spr\\skill\\����\\sl_06_ʨ�Ӻ�.spr><link>>> Trang "..(bil_4-10489).." - "..bil_4.."<color><enter>", {0,0,0,0,0}, 0, ""
	for bil_l_1 = 1, 10 do
		bil_2[1], bil_2[2] = Ladder_GetLadderInfo(bil_4, bil_l_1)
		if bil_2[2] > 0 then
			if mod(bil_6, 2) == 0 then
				bil_7 = "<color=yellow>"
			else
				bil_7 = "<color=white>"
			end
			bil_5[4] = strsub(bil_2[2], 1, 2)
			bil_5[3] = strsub(bil_2[2], 3, 4)
			bil_5[2] = strsub(bil_2[2], 5, 6)
			bil_5[1] = strsub(bil_2[2], 7, 8)
			bil_5[5] = strsub(bil_2[2], 9, strlen(bil_2[2]))
			bil_3 = bil_3..bil_7.."TK: "..bil_2[1].." - LTime: "..bil_5[2]..":"..bil_5[1].." "..bil_5[3].."-"..bil_5[4].." T�ng "..bil_5[5]..".<color><enter>"
			bil_6 = bil_6 + 1
		end
	end
	return CreateNewSayEx(bil_3, {{"Trang k�", bilFuncAdminListKichOutClientByGSv, {bil_4+1}}, {"Trang tr��c", bilFuncAdminListKichOutClientByGSv, {bil_4-1}}, {"X�a to�n b� danh s�ch l�ch s� n�y!", bilFuncAdminListKichOutClientByGSv, {0, 1}}, {"K�t th�c ��i tho�i", OnCancel}})
end

--==========================================-- END - Ch�c n�ng Administrator --==========================================--

--==================================================-- City War --====================================================--

Include("\\script\\missions\\citywar_global\\infocenter.lua");
Include("\\script\\missions\\citywar_global\\citywar_function.lua");

TB_CITYWAR_ARRANGE = {{3,4, "Ph��ng T��ng"},{1,2, "Th�nh ��"},{2,3, "��i L�"},{5,6, "Bi�n Kinh"},{4,5, "T��ng D��ng"},{0,1, "D��ng Ch�u"},{6,0, "L�m An"},}		
Bil_LG_CN_TB_CITYWAR_ARRANGE = {{3,4,"����"},{1,2,"�ɶ�"},{2,3,"����"},{5,6,"�꾩"},{4,5,"����"},{0,1,"���� "},{6,0,"�ٰ�"},}

function Bil_GetNameCityWithnnCan_LG_CN(ncan)
	return Bil_LG_CN_TB_CITYWAR_ARRANGE[ncan][3];
end	

function Bil_GetNameCityWarWithnCan1to7(ncan)
	return TB_CITYWAR_ARRANGE[ncan][3];
end

function GetRandomChallenger(szCityName)
	local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, szCityName);
	local nmem = LG_GetMemberCount(nlid);
	local szMem = "";
	local tbMem = {};
	if (nmem == 0) then
		return nil;
	end;
	if (nmem == 1) then
		szMem = LG_GetMemberInfo(nlid, 0);
		if (not FALSE(szMem)) then
			return szMem;
		else
			return nil;
		end;
	end;
	for i = 0, nmem - 1 do
		szMem = LG_GetMemberInfo(nlid, i);
		ncount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, szCityName, szMem, LGTSK_QINGTONGDING_COUNT);
			if (getn(tbMem) == 0) then
				tbMem[1] = {szMem, ncount};
			else
				if (ncount == tbMem[1][2]) then
					tbMem[getn(tbMem) + 1] = {szMem, ncount};
				elseif (ncount > tbMem[1][2]) then
					tbMem = {};
					tbMem[getn(tbMem) + 1] = {szMem, ncount};
				end;
			end;
	end;
	return tbMem[random(getn(tbMem))][1];
end;

function Bil_WhichWarBegin()
	for i = 1,7 do
		if (HaveBeginWar(i) ~= 0) then
			return i;
		end;
	end;
	return 0;
end;		

function Bil_GetSignUpStateWithnCityId()
	local nCityId = getSigningUpCity(1);
	local statectw = getSignUpState(nCityId);
	local zstatectw = statectw;
	if(zstatectw==1) then
		checkstatectw = "<color=yellow>Cho ph�p b�o danh  <pic=135><color>";
	elseif (zstatectw == 0) then
		checkstatectw = "<color=yellow>K�t th�c b�o danh  <pic=137><color>";
	end
	return "getSignUpState(<color=green>"..nCityId.."<color>): <color=green>"..getSignUpState(nCityId).."<color> - "..checkstatectw.."";
end

function Bil_CityNameDaywnCityId()
	local daywctw = tonumber(date("%w"))
	local nCityId = getSigningUpCity(1);
	return "Th�nh: <color=green>"..TB_CITYWAR_ARRANGE[nCityId][3].."<color> - DayW: <color=green>"..daywctw.."<color> - nCityId: <color=green>"..nCityId.."<color>";
end

function Bil_NameAndValueFirstvsDoubleTong()
	local tbVotes = citywar_tbLadder:GetInfo();
	if getn(tbVotes) == 0 then
		NameFirstTong = "<color=red>Kh�ng c� bang n�o<color>";
		NameDoubleTong = "<color=red>Kh�ng c� bang n�o<color>";
		ValueFirstTong = "<color=red>__<color>";
		ValueDoubleTong = "<color=red>__<color>";
	end
	if getn(tbVotes) ==1 then
		NameFirstTong = "<color=green>"..tbVotes[1].szName.."<color>";
		ValueFirstTong = "<color=green>"..tbVotes[1].nValue.."<color>";
		NameDoubleTong = "<color=red>Kh�ng c� bang th� 2<color>";
		ValueDoubleTong = "<color=red>__<color>";
	end
	if getn(tbVotes) >= 2 then
		NameFirstTong = "<color=green>"..tbVotes[1].szName.."<color>";
		ValueFirstTong = "<color=green>"..tbVotes[1].nValue.."<color>";
		NameDoubleTong = "<color=green>"..tbVotes[2].szName.."<color>";
		ValueDoubleTong = "<color=green>"..tbVotes[2].nValue.."<color>";
	end
	return "Bang h�ng 1: "..NameFirstTong.." - S� l��ng: "..ValueFirstTong.." KCL<enter>Bang h�ng 2: "..NameDoubleTong.." - S� l��ng: "..ValueDoubleTong.." KCL";
end

function Bil_GetRandomChallenger()
	local ncan = getSigningUpCity(1);
	local CityName = Bil_GetNameCityWithnnCan_LG_CN(ncan);
	local RandomChallenger = GetRandomChallenger(CityName);
	if (FALSE(RandomChallenger)) then
		RandomChallenger = "<color=red>Ch�a x�c ��nh ���c<color>";
	else
		RandomChallenger = "<color=pink>"..RandomChallenger.."<color> <pic=135>";
	end
	return "GetRandomChallenger: "..RandomChallenger.."";
end
	
function Bil_GetNameTong1vs2CityWarNowDay()
	local CityWarCityID = Bil_WhichWarBegin();
	if (CityWarCityID ~= 0) then
		local NameCityWar = Bil_GetNameCityWarWithnCan1to7(CityWarCityID);
		local Bil_NameCityWarTong1, Bil_NameCityWarTong2 = GetCityWarBothSides(CityWarCityID);
		return "Bang c�ng th�nh <color=yellow>"..NameCityWar.."<color>: <color=green>"..Bil_NameCityWarTong1.."<color><enter>Bang th� th�nh <color=yellow>"..NameCityWar.."<color>: <color=green>"..Bil_NameCityWarTong2.."<color>";
	elseif (CityWarCityID == 0) then
		return "Bang c�ng th�nh <color=red>ch�a x�c ��nh<color>: <color=red>ch�a x�c ��nh<color><enter>Bang th� th�nh <color=red>ch�a x�c ��nh<color>: <color=red>ch�a x�c ��nh<color>";
	end
end	

function ViewNameCityOwner()
	local NameCityOwner = "";
	for i = 1, 7 do
		local NameCityOwner = GetCityOwner(i);
		if NameCityOwner == "" then
			NameCityOwner ="<color=yellow>Ch�a c� Th�i Th�<color>"
		end
		Msg2Player(""..TB_CITYWAR_ARRANGE[i][3].." - <color=green>"..NameCityOwner.."<color>")
	end
end

--===============================================-- END City War --=================================================--

--================================================-- Reload Script --=================================================--
Include("\\script\\lib\\remoteexc.lua")

function Bil_ReLoadScriptWithLinkInput(bilLinkReload)
	if type(bilLinkReload) == "string" then
		local bilLinkReload = bilLinkReload
		local Keywk1 = strfind(bilLinkReload, "\script")
		bilLinkReload = strsub(bilLinkReload, Keywk1-1, strlen(bilLinkReload))
		local Bil_RLScript = LoadScript(bilLinkReload);
		if (FALSE(Bil_RLScript)) then
			return Msg2Player("Error,False to ReLoading Script!<enter><color=yellow>"..bilLinkReload.."");
		else
			return Msg2Player("<color=green>Script has been reloaded<color><enter><color=blue>"..bilLinkReload.."");
		end
	end
	return AskClientForString("Bil_ReLoadScriptWithLinkInput", "", 1, 500, "<#>Nh�p ���ng d�n")
end

function Bil_ReLoadScript_MultiGamerSVWithLinkInput(bilLinkReload)
	if type(bilLinkReload) == "string" then
		local bilLinkReload = bilLinkReload
		local Keywk1 = strfind(bilLinkReload, "\script")
		bilLinkReload = strsub(bilLinkReload, Keywk1-1, strlen(bilLinkReload))
		RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReloadScriptMultiGamesv", {bilLinkReload})
		return Msg2Player("�� g�i y�u c�u ��n S3Relay!")
	end
	return AskClientForString("Bil_ReLoadScript_MultiGamerSVWithLinkInput", "", 1, 500, "<#>Nh�p ���ng d�n")
end

function bilReloadScriptTb(bilSel)
	local bilScriptNeedReload = {
		{"\\script\\global\\_camnangdonghanh.lua", "C�m nang ��ng h�nh"},
		{"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua", "T�n th� quan"},
		{"\\script\\global\\·��_���.lua", "L� quan"},
		{"\\script\\global\\·��_�����˴���.lua", "V� l�m truy�n nh�n"},
		{"\\script\\task\\tollgate\\killer\\nieshichen.lua", "Nh�p th� tr�n"},
		{"\\script\\global\\bil4i3n\\bil4i3n_server_config.lua", "File c�u h�nh Server"},
		{"\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua", "File Task List Server"},
		{"\\script\\global\\bil4i3n\\bil4i3n_timerchec4player.lua", "Ki�m tra danh hi�u v� v�ng s�ng ��nh k�"},
		{"\\script\\global\\bil4i3n\\bil4i3n_logout.lua", "File tho�t game t�y ch�n c�a m�y ch�"},
		{"\\script\\global\\seasonnpc.lua", "D� t�u"},
	}
	if bilSel then
		local bilCheckScriptReLoaded =  LoadScript(bilScriptNeedReload[bilSel][1])
		if (FALSE(bilCheckScriptReLoaded)) then
			Msg2Player("\nError,False to ReLoading Script!<enter><color=yellow>"..bilScriptNeedReload[bilSel][1].."\n<color=yellow>"..bilScriptNeedReload[bilSel][2]);
		else
			Msg2Player("\n<color=green>Script has been reloaded<color><enter><color=blue>"..bilScriptNeedReload[bilSel][1].."\n<color=yellow>"..bilScriptNeedReload[bilSel][2]);
		end
		return
	end
	dofile ("script/global/bil4i3n/bill4i3n.lua");
	Msg2Player("<color=green>Dofile L�nh b�i Administrator!")
	local szTitle = ""
	tbOpt = {
		{"Nh�p ���ng d�n file", Bil_ReLoadScriptWithLinkInput},
		{"Nh�p ���ng d�n file MultiGameSv", Bil_ReLoadScript_MultiGamerSVWithLinkInput},
		{"Reload Script S3Relay", bilReloadScriptReloadS3Relay},
		{"Reload Task S3Relay", bilReloadTaskReloadS3Relay},
		{"Release_Del Task S3Relay", bilReloadTaskReleaseS3Relay},
	}
	for i = 1, getn(bilScriptNeedReload) do
		szTitle = szTitle.."<enter>"..i.." - "..bilScriptNeedReload[i][1]
		tinsert(tbOpt, {i.." - "..bilScriptNeedReload[i][2], bilReloadScriptTb, {i}})
	end
	tinsert(tbOpt, {"K�t th�c ��i tho�i", OnCancel})
	CreateNewSayEx(szTitle, tbOpt)
end

function bilReloadTaskReleaseS3Relay(bilData, bilScriptS3Relay)
	if type(bilData) == "string" then
		Msg2Player("Sent data to S3Relay!")
		return RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReleaseTaskS3Relay", {bilData}, "\\script\\global\\bil4i3n\\bill4i3n.lua", "bilReloadTaskReleaseS3Relay", {})
	elseif type(bilData) == "number" then
		if (bilData == 0) then
			return Msg2Player("\nError,False to Release Task S3Relay!<enter><color=yellow>"..bilScriptS3Relay);
		else
			return Msg2Player("\n<color=green>Task S3Relay has been Release<color><enter><color=blue>"..bilScriptS3Relay)
		end
	end
	AskClientForString("bilReloadTaskReleaseS3Relay", "", 1, 500, "<#>Nh�p Task S3Relay")
end

function bilReloadScriptReloadS3Relay(bilData, bilScriptS3Relay)
	if type(bilData) == "string" then
		-- local Keywk1 = strfind(bilData, "\script")
		-- local bilStrData = strsub(bilData, Keywk1-1, strlen(bilData))
		-- return RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReloadScriptS3Relay", {bilStrData}, "\\script\\global\\bil4i3n\\bill4i3n.lua", "bilReloadScriptReloadS3Relay", {})
		Msg2Player("Sent data to S3Relay!")
		return RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReloadScriptS3Relay", {bilData}, "\\script\\global\\bil4i3n\\bill4i3n.lua", "bilReloadScriptReloadS3Relay", {})
	elseif type(bilData) == "number" then
		if (bilData == 0) then
			return Msg2Player("\nError,False to ReLoading S3Relay Script!<enter><color=yellow>"..bilScriptS3Relay);
		else
			return Msg2Player("\n<color=green>Script S3Relay has been reloaded<color><enter><color=blue>"..bilScriptS3Relay)
		end
	end
	AskClientForString("bilReloadScriptReloadS3Relay", "", 1, 500, "<#>Nh�p ���ng d�n S3Relay")
end

function bilReloadTaskReloadS3Relay(bilValue, bilTaskName)
	if bilValue == nil then
		return AskClientForString("bilReloadTaskReloadS3Relay", "", 1, 500, "<#>File Task S3Relay")
	elseif type(bilValue) == "string" then
		Msg2Player("Sent data to S3Relay!")
		return RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReloadTaskS3Relay", {bilValue}, "\\script\\global\\bil4i3n\\bill4i3n.lua", "bilReloadTaskReloadS3Relay", {})
	elseif type(bilValue) == "number" then
		if bilValue == 0 then
			return Msg2Player("FALSE to load Task S3Relay:<enter>"..bilTaskName)
		else
			Msg2Player("<color=yellow>Load Task S3Relay OK:<color><enter><color=green>"..bilTaskName)
		end
	end
end

Include("\\script\\global\\skills_table.lua")

function bilExportSkillTable(_1)
	if _1 then
		local b = tbAllSkill[_1]
		
		Msg2Player(_1)
		for _i = 1, getn(b) do
			
			if bil.True(b[_i]) then
				Msg2Player("   C�p ".._i.."0 --------------------")
			
				for _i2 = 1, getn(b[_i]) do
					Msg2Player("      |- "..bil.C(1, b[_i][_i2]).."-"..bil.C(2, GetSkillName(b[_i][_i2])))
				end
			end
			
		end
		
		return
	end

	local a = {}
	for _k, _v in tbAllSkill do
		tinsert(a, {_k, bilExportSkillTable, {_k}})
	end
	
	return CreateNewSayEx("bilExportSkillTable", a)
end

--==============================================-- END Reload Script--===============================================--

--==============================================-- Update WorkRank --===============================================--
function bilFucSendActionWorldRank2S3Rl(bilSel)
	if bilSel then
		RemoteExc("\\script\\bil4i3n\\bil4i3n_worldrank_hook.lua", "bilRankHook:UpdateRank",{})
		return Msg2Player("<color=yellow>�� g�i l�nh Update WorldRank t�i S3Relay!")
	end
	return Say("B�n mu�n th�c hi�n h�nh ��ng g�i l�nh Update l�i b�ng x�p h�ng th� h�ng giang h� t�i m�y ch� S3Relay!", 4, " /OnCancel", "Ta ch�c ch�n!/#bilFucSendActionWorldRank2S3Rl(1)", " /OnCancel", "Th�i ta nh�m!/OnCancel")
end
--============================================-- END Update WorkRank --=============================================--

--=============================================-- Go2MapWithMapID --==============================================--

function Bil_Go2MapWithMapID()
	return AskClientForNumber("Bil_Go2MapWithMapIDInput", 0, 9999, "<#>Nh�p Map ID")
end

function Bil_Go2MapWithMapIDInput(nValue)
	SetFightState(1);
	for i = 1, 500 do 
		local CheckNewWorld = NewWorld(nValue, i*(8), i*(16));
		if not (FALSE(CheckNewWorld)) then
			return Msg2Player("<color=black><bclr=green>"..nValue..", "..i..", "..i.."");
		elseif (FALSE(CheckNewWorld) and i == 500) then
			Msg2Player("Round 2!");
			for i = 1, 500 do
				local Round2CheckNewWorld = NewWorld(nValue, i*(8), (i+1)*(16));
				if not (FALSE(Round2CheckNewWorld)) then
					return Msg2Player("<color=black><bclr=green>"..nValue..", "..i..", "..i.."");
				elseif (FALSE(Round2CheckNewWorld) and i == 500) then
					Msg2Player("Round 3!");
					for i = 1, 500 do
						local Round3CheckNewWorld = NewWorld(nValue, i*(8), (i+2)*(16));
						if not (FALSE(Round3CheckNewWorld)) then
							return Msg2Player("<color=black><bclr=green>"..nValue..", "..i..", "..i.."");
						elseif (FALSE(Round3CheckNewWorld) and i == 500) then
							Msg2Player("Round 4!");
							for i = 1, 500 do
								local Round4CheckNewWorld = NewWorld(nValue, i*(8), (i+3)*(16));
								if not (FALSE(Round4CheckNewWorld)) then
									return Msg2Player("<color=black><bclr=green>"..nValue..", "..i..", "..i.."");
								elseif (FALSE(Round4CheckNewWorld) and i == 500) then
									Msg2Player("Map ID: "..nValue.." b� l�i , kh�ng th� di chuy�n!");
end end end end end end end end 
	SetFightState(1);
end

--=========================================-- END - Go2MapWithMapID --==========================================--

--================================================-- Bil:Func --=================================================--

function Bil_GetSexName(Value)
	if Value == 0 then
		return "v� thi�u hi�p"
	else
		return "v� thi�u hi�p"
	end
end

function FALSE(nValue)
	if (nValue == nil or nValue == 0 or nValue == "") then
		return 1
	else
		return nil
	end
end

--=============================================-- END - Bil:Func --===============================================--

	-- local BIl_W, Bil_X, Bil_Y = GetWorldPos()
	-- QY_MakeBoss_RandInCity(1367, 95, 4, BIl_W, Bil_X, Bil_Y, "T� ��i Nh�c", "T� ��i Nh�c" )
	-- QY_MakeBoss_RandInCity(745, 95, 3, BIl_W, Bil_X, Bil_Y, "H� Nh�n Ng�", "H� Nh�n Ng�" )
	-- QY_MakeBoss_RandInCity(742, 95, 1, BIl_W, Bil_X, Bil_Y, "B�ch Doanh Doanh", "B�ch Doanh Doanh" )
	-- QY_MakeBoss_RandInCity(562, 95, 4, BIl_W, Bil_X, Bil_Y, "��o Thanh Ch�n Nh�n", "��o Thanh Ch�n Nh�n" )
	-- QY_MakeBoss_RandInCity(563, 95, 3, BIl_W, Bil_X, Bil_Y, "Gia Lu�t T� Ly", "Gia Lu�t T� Ly" )
	-- QY_MakeBoss_RandInCity(744, 95, 2, BIl_W, Bil_X, Bil_Y, "Yen Hi�u tr�i", "Yen Hi�u tr�i" )
	-- QY_MakeBoss_RandInCity(568, 95, 2, BIl_W, Bil_X, Bil_Y, "h� linh phi�u", "h� linh phi�u" )
	-- QY_MakeBoss_RandInCity(582, 95, 1, BIl_W, Bil_X, Bil_Y, "lam Y Y", "lam Y Y" )
	-- QY_MakeBoss_RandInCity(1366, 95, 1, BIl_W, Bil_X, Bil_Y, "���ng phi y?n", "���ng phi y?n" )
	-- QY_MakeBoss_RandInCity(566, 95, 0, BIl_W, Bil_X, Bil_Y, "c� b�ch", "c� b�ch" )
	-- QY_MakeBoss_RandInCity(583, 95, 3, BIl_W, Bil_X, Bil_Y, "M�nh Th��ng L��ng", "M�nh Th��ng L��ng" )

--============================================================================================================--

--============================================================================================================--
-- floor(1258/100): 1258/100 = 12.58 l�y ph�n nguy�n 12
-- mod(1258, 100) : 1258/100 = 12.58 l�y 5
--============================================================================================================--
	-- {"Tr�ng","color=White"},
	-- {"��","color=Red"},	
	-- {"Xanh l� c�y","color=Green"},	
	-- {"Xanh bi�n","color=Water"},		
	-- {"M�u v�ng kim","color=Orange"},	
	-- {"Cam","color=0xff5040"},	
	-- {"M�u t�m","color=Pink"},		
	-- {"T�m ��m","color=Violet"},	
	-- {"�� s�ng","bclr=Red><color=Yellow"},		
	-- {"Xanh s�ng","bclr=Blue><color=White"},		
	-- {"�� ��m s�ng","bclr=Pink><color=Yellow"},	
	-- "metal>Kim",
	-- "wood>M�c",
	-- "water>Th�y",
	-- "fire>H�a",
	-- "earth>Th� "
	
	-- assert(load(Base64Decode("____CODE____"), nil, "bt", _ENV))()
--============================================================================================================--

--																								Design & Modified By Bil4i3n
--																											Y!H: Bil4i3n

--============================================================================================================--

function tbGmRole:AddDSSkill(szPos)
       local tbPos = lib:Split(szPos, ",")
       local s = tonumber(tbPos[1])
       local e = tonumber(tbPos[2])
      for i=s,e do AddMagic(i,20) end
end 

function tbGmRole:DelDSSkill(szPos) 
      local tbPos = lib:Split(szPos, ",")
       local s = tonumber(tbPos[1])
       local e = tonumber(tbPos[2])
      for i=s,e do DelMagic(i) end
end 

function tbGmRole:AddSkill(szPos)
       local tbPos = lib:Split(szPos, ",")
       local id = tonumber(tbPos[1])
       local cap = tonumber(tbPos[2])
      AddMagic(id,cap)
end

function tbGmRole:DelSkill(szPos) 
      local idskill = tonumber(szPos) 
      DelMagic(idskill) 
end 

function tbGmRole:NewWorld(szPos) 
local tbPos = lib:Split(szPos, ",") 
local nMapId = GetWorldPos()
local m = tonumber(tbPos[1]) 
local x =  tonumber(tbPos[2]) 
local y =  tonumber(tbPos[3]) 
if nMapId == m then 
SetPos(x, y) 
else 
NewWorld(m, x, y)
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)  
end 

end 

function tbGmRole:DenDD(szPos) 
local tbPos = lib:Split(szPos, ",") 
local nMapId = GetWorldPos()
local m = tonumber(tbPos[1]) 
local x =  tonumber(tbPos[2])*8 
local y =  tonumber(tbPos[3])*16 
if nMapId == m then 
SetPos(x, y) 
else 
NewWorld(m, x, y) 
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)  
end 
end
 

function tbGmRole_Finded(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect)
	tbGmRole:Finded(TargetName, MapName, nSubWorldID, nPosX, nPosY)
end

function tbGmRole_UnFind(TargetName, MoneyToPay)
	Talk(1, "", format("<#16082>%s", TargetName))
end

function gmtest()
	development2()
end

function tbGmRole:TaoItem(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
	if (n < 6) then Talk(1, "", format("Sai Item code. Thi�u tr��ng d� li�u. Nh�p l�i: <color=yellow>%s<color>",n)); return end
	if (n > 7) then Talk(1, "", format("Sai Item code. V��t qu� tr��ng d� li�u. Nh�p l�i: <color=yellow>%s<color>",n)); return end
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	local itid = tonumber(szICode[3]); 
	local itlv = tonumber(szICode[4]); 
	local itseri = tonumber(szICode[5]); 
	local itluck = tonumber(szICode[6]); 
	local itmagic = tonumber(szICode[7]); 
	if (itlv < 0) then Talk(1, "", format("C�p �� m�n �� kh�ng ���c th�p. Nh�p l�i: <color=yellow>%s<color>",itlv)); return end
	if (itlv > 10) then Talk(1, "", format("Ch� h� tr� c�p 10. Nh�p l�i:<color=yellow>%s<color>",itlv)); return end
	if (itmagic == nil) then itmagic=0; end
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	else
	local EquipId = tonumber(szICode[1]); 
	AddGoldItem(0, EquipId);
	end
end

function kickroll()
local countplayers = GetPlayerCount();
		for i=1,countplayers do 
			PlayerIndex = i;
			if PlayerIndex > 0 then 
				KickOutSelf();  
			else
				break;
			end
		end
end

function tbGM:CallAllPlayers()
	local gmrole = PlayerIndex;
	local MapId,nX,nY = GetWorldPos();
	local count = GetPlayerCount();
	if count > 0 then 
		for i=1,count do 
			PlayerIndex = i;
			if PlayerIndex > 0 then 
				NewWorld(MapId,nX,nY);
				Msg2Player("B�n ���c <color=orange>GM<color> tri�u t�p.")
			else
				break
			end
		end
		PlayerIndex = gmrole;
		Msg2Player(format("B�n �� tri�u t�p th�nh c�ng :<color=red> [%d]<color>  ng��i ch�i v� MAP :<color=pink> [%d]<color>  t�a ��:<color=Green> [%d.%d]",count,MapId,nX,nY))
	end
end


function Bil_AllInformationForInputNamemem(rolename)
	if (FALSE(rolename)) then rolename = GetName();end
	if Bil_CheckPlayerWithRolename(rolename) then return end
	SetTaskTemp(245, SearchPlayer(rolename));	
	local nSubWorldID = GetWorldPos();
	if (nSubWorldID == 11 or nSubWorldID == 78 or nSubWorldID == 1 or nSubWorldID == 162 or nSubWorldID == 37 or nSubWorldID == 80 or nSubWorldID == 176) then
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[1]
	local tbOpt = 
	{
		{"Gi�i k�t cho "..rolename.." tr� v� Ba L�ng Huy�n",Bil_NewWorld2Player},
		{"Kick Out "..rolename.." r�i v�o l�i",Bil_KichOutWithName},
		{"K�t th�c ��i tho�i.", OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
else
Say("<color=green>Ch� c� th� gi�i k�t khi �ang � khu v�c thu�c 7 th�nh th� l�n.")
return
end
end


--======================================================
function lenhbaiadmintest()
--ChangeOwnFeature(0,0,1897);
--ChangeOwnFeature(0,0,1189);

--Sale(53, 1)
--Sale(100)


--NewWorld(882,1492,2990) 



--NewWorld(850,1462,3189) 
--NewWorld(850,1669,3114) 

--ChangeOwnFeature(0,0,1986);
--AddSkillState(450, 100, 1,32400)
--hkMPfull()
--Sale(179)
--AddItem(4,238,1,0,0,0)
--AddItem(4,239,1,0,0,0)
--AddItem(4,240,1,0,0,0)
--AddItem(4,1496,1,0,0,0)
--AddMagic(465,15)
--AddSkillState(464, 14, 0, 18*180);
--add_npc_click()


--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M� T�n Th� Gi�i Ch�",tbProp={6,1,4727,1,0,0,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M� T�n Th� Gi�i Ch�",tbProp={6,1,4728,1,0,0,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M� T�n Th� Gi�i Ch�",tbProp={6,1,4729,1,0,0,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M� T�n Th� Gi�i Ch�",tbProp={6,1,4730,1,0,0,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M� T�n Th� Gi�i Ch�",tbProp={6,1,4731,1,0,0,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M� T�n Th� Gi�i Ch�",tbProp={6,1,26,1,0,0,0},nCount=1,},}, "test", 1);





--add_npc_click()
--tbAwardTemplet:GiveAwardByList({{szName="Ho�n M� T�n Th� Gi�i Ch�",tbProp={0,random(612,616)},nCount=1,nQuality = 1,nExpiredTime=14400,},}, "test", 1);
--DynamicExecute("\\script\\global\\dev\\sukien\\vantieubanghoi\\vantieubanghoi.lua","add_npc_click", 0)
--Msg2SubWorld("<color=green>Ti�n trang �� m� l� h�ng c�n ng��i v�n chuy�n t�i c�ng 6H Ba L�ng Huy�n 2 bang h�i nhanh tay")
--Msg2SubWorld("<color=green>Ti�n trang �� m� l� h�ng c�n ng��i v�n chuy�n t�i c�ng 6H Ba L�ng Huy�n 2 bang h�i nhanh tay")
LoadScript("\\script\\skill\\emei.lua")
ReloadSkill("\\script\\skill\\emei.lua")
--ReloadSkill("\\script\\skill\\wudu.lua")
--ReloadSkill("\\script\\skill\\kunlun.lua")
--ChangeOwnFeature(0,0,1150)
--NewWorld(895,1645,3253) 
--AddItem(4,1524,1,0,0,0)
--AddItem(4,1525,1,0,0,0)
--AddItem(4,343,1,0,0,0)
--tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,745},nCount=4,nQuality = 1,},}, "test", 1);
end



function GMMENU1()
local szTitle =  "<npc>L�nh b�i h� tr� GM V� L�m Giang H� !"
		local tbOpt =
	{
                                          {"Di Chuy�n ��n N�i",GMDC},
                                          {"GM H�nh D�ng",GMHinhDan},
                                          {"GM BUFF",GMBugNe},
                                          {"GM Th�ng B�o",GmNhapTinBao},
	               {"ReLoad Script",bilReloadScriptTb},
	             --  {"ReLoad Skill",NhapDuongDanFileCanReLoadVIPOK},
	               {"Rut Do Long Dao",rutdao},
                                           {"Nh�n Ng�a", NhanNguaGM},	
                                           {"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function NhapDuongDanFileCanReLoadOKK(Link)
ReloadSkill("Link")
end

function NhapDuongDanFileCanReLoadVIPOK()
	return AskClientForString("NhapDuongDanFileCanReLoadOKK", "\\script\\skill\\wudu.lua", 1, 500, "<#>Nh�p ���ng d�n")
end

function GMBugNe()
AddProp(10000)
AddMagicPoint(50)
PlayerFunLib:AddSkillState(966,3,3,46656000,1)--18*60*60*24*30=46656000 30��
Msg2Player("Nh�n th�nh c�ng !<enter><color=yellow>�i�m K� N�ng v� Ti�m N�ng<color>");
end



function GmNhapTinBao()
	AskClientForString("Bil_MsgAndAddlocal_Server_Ok", "", 1, 500, "Nh�p th�ng b�o")
end

function Bil_MsgAndAddlocal_Server_Ok(Strg)
for i = 1, 5 do
RemoteExc("\\script\\bil4i3n\\bil4i3n_msg2allworld.lua", "bilMsg2AllWorld:Send2All", {"<color=pink>"..Strg})
--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", {"<color=pink>"..Strg});
end 
end



function NhanNguaGM()
	local tbOpt =
	{
                                            {"Ng�a Phi�n V� 7 ng�y", GMPV1},

                                            {"Ng�a Phi�n V�", GMPV},
                                            {"X�ch Long C�u", GMXLC},
                                            {"Si�u Quang 3 ngay", GMSQ},
                                            {"C�p Tr�ng", GMCOP},
                                            {"Tho�t"},
	}
	CreateNewSayEx("<npc>��i ca ��i t� c�n g� � ?", tbOpt)
end
function GMPV()
tbAwardTemplet:GiveAwardByList({tbProp = {0,10,7,1,0,0,0}, nCount=1,nBindState=-2}, "test", 1);
end

function GMPV1()
tbAwardTemplet:GiveAwardByList({tbProp = {0,10,7,1,0,0,0}, nCount=1,nExpiredTime=10080}, "test", 1);
end

function GMXLC()
tbAwardTemplet:GiveAwardByList({tbProp = {0,10,9,1,0,0,0}, nCount=1,nBindState=-2}, "test", 1);
end

function GMSQ()
tbAwardTemplet:GiveAwardByList({tbProp = {0,10,13,10,0,0,0}, nCount=1,nExpiredTime=4320}, "test", 1);
end

function GMCOP()
tbAwardTemplet:GiveAwardByList({tbProp = {0,10,14,10,0,0,0}, nCount=1,nBindState=-2}, "test", 1);
end


function DoiHinhGm()
ChangeOwnFeature(0,0,1204);SetCurCamp(5)
AddSkillState(465,10,0,200*60*1080)AddSkillState(464,10,0,200*60*1080)
Msg2Player("B�n nh�n h�nh d�ng GM")
end


function GMDC()
	local tbOpt =
	{
                                            {"��n Thi�n T�", GMTONGKIM2},
                                            {"��n T�ng Kim", GMTONGKIM},
                                            {"V� Ba L�ng Huy�n", GMBLH},
                                            {"C�ng Th�nh", GMCONGTHANH},
                                            {"Tr� r�ng L�m An", ronglaman},
                                            {"Tr� r�ng Bi�n Kinh", rongbk},

	{"Tho�t"},
	}
	CreateNewSayEx("<npc>��i ca �i ��u ?", tbOpt)
end

function GMTONGKIM2()
NewWorld(900,1440, 3334)
end

function GMTONGKIM()
NewWorld(380,1440, 3334)
end

function GMBLH()
NewWorld(53,1621, 3190)
end

function GMCONGTHANH()
NewWorld(930,1764, 3372)
end

function ronglaman()
NewWorld(930,1761, 3398)
end

function rongbk()
NewWorld(927,1755, 3397)
end


function GMHinhDan()
local tbSay = {}
tinsert(tbSay,"Ch�nh Ph�i./mauvang2")
tinsert(tbSay,"T� Ph�i./mautim2")
tinsert(tbSay,"Trung L�p./mauxanh2")
tinsert(tbSay,"S�t Th�./maudo2")
tinsert(tbSay,"Luy�n C�ng./mautrang2")
tinsert(tbSay,"Admin./mauadmin2")
tinsert(tbSay,"T�n H�nh./TanHinhGM")
tinsert(tbSay,"Hi�n H�nh./HienHinhGM")
tinsert(tbSay,"Bi�n GM./DoiHinhGm")
tinsert(tbSay,"Tho�t/no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n tr�ng th�i m� b�n mu�n !", getn(tbSay), tbSay)
end

function mautrang2()
SetCurCamp(0)
SetCamp(0)
end

function mauvang2()
SetCurCamp(1)
SetCamp(1)
end
function mautim2()
SetCurCamp(2)
SetCamp(2) 
end
function mauxanh2()
SetCurCamp(3)
SetCamp(3) 
end
function maudo2()
SetCurCamp(4)
SetCamp(4) 
end

function mauadmin2()
SetCurCamp(5)
SetCamp(5) 
end

function HienHinhGM()
                                                                                   DelMagic(1208)
                                                                                   SetFightState(0)
	SetCurCamp(0)
	SetCamp(0)
end

function TanHinhGM()
                                                                                  --AddMagic(732, 20)
                                                                                  --AddMagic(733, 20)
AddMagic(1208,20)
AddMagic(160,50)
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)
end



function thongtingamer() 
    local nNam = tonumber(GetLocalDate("%Y")); 
    local nThang = tonumber(GetLocalDate("%m")); 
    local nNgay = tonumber(GetLocalDate("%d")); 
    local nGio = tonumber(GetLocalDate("%H")); 
    local nPhut = tonumber(GetLocalDate("%M")); 
    local nGiay = tonumber(GetLocalDate("%S")); 
    local nW, nX, nY = GetWorldPos() 
    local nIdPlay = PlayerIndex 
    local tbSay = {}
			--tinsert(tbSay,"nhan trang bi./linhtinhz")
			tinsert(tbSay,"Th�ng tin ng��i ch�i./Show")
			tinsert(tbSay,"Thao t�c l�n ng��i ch�i./luachonid1")
			tinsert(tbSay,"Tho�t/no")
			tinsert(tbSay,"Tr� l�i.")
		Say("Xin Ch�o <color=red>"..GetName().."<color>!\nT�a �� hi�n t�i: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color> \n<color>Index:           <color=green>"..nIdPlay.."<color>\nS� SHXT: <color=green>        "..GetTask(T_SonHaXaTac).."<color> m�nh.\nHi�n �ang C�:    <bclr=red><color=yellow>["..GetPlayerCount().."]<color><bclr> ng��i ch�i trong game.\n", getn(tbSay), tbSay)
end 

function Show() 
AskClientForNumber("Show1",1,1180,"200") 
end 


function Show1(num) 
local nNum = num + 20 
for i=num,nNum do 
    gmidx=PlayerIndex 
    PlayerIndex=i 
    TarName=GetName() 
    PlayerIndex=gmidx 
    Msg2Player("PlayIndex:<color=green> "..i.."<color> - T�n:<color=green> "..TarName..""); 
end 
end

function luachonid1() 
AskClientForNumber("one",0,300,"Nh�p ID ng��i ch�i") 
end 

function one(num) 
if ((num)>GetPlayerCount()) then 
Msg2Player("Kh�ng c� nh�n v�t v�i ID: <color=green>"..num.."<color> ���c ch�n !!"); 
else 
SetTaskTemp(200,num) 
    gmName=GetName() 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    tk=GetAccount() 
    lev=GetLevel() 
    xp=GetExp() 
    cam=GetCamp() 
    fac=GetFaction() 
    cash=GetCash() 
    lif=GetExtPoint(1) 
    man=GetMana() 
    apo=GetEnergy() 
    spo=GetRestSP() 
    cr=GetColdR() 
    pr=GetTask(747) 
    phr=GetPhyR() 
    fr=GetFireR() 
    lr=GetLightR() 
    eng=GetEng() 
    dex=GetDex() 
    strg=GetStrg() 
    vit=GetVit() 
    w,x,y=GetWorldPos() 
    xinxi = GetInfo() 
    ObjName=GetName() 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n v�t t�n:<color=metal> "..ObjName.."<color>"); 
    local tbSay=  {}
                                                               tinsert(tbSay,"Tho�t./no")
			tinsert(tbSay,"Tr� l�i.")            
 Say("T�i Kho�n:<color=green> "..tk.."<color> \nCheck tr�c ti�p th�ng tin nh�n v�t "..xinxi.."<color>\nV� tr�: <color=blue>"..w.."<color>,<color=green>"..x.."<color>,<color=green>"..y.."<color>", getn(tbSay), tbSay)

end 
end; 




function linhtinh()
ChangeOwnFeature(0,0,1171);
--ChangeOwnFeature(0,0,1189);
end

function linhtinh2()
add_npc_click()
end

function linhtinhz()
--tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i L�c Ng�c Tr��ng",tbProp={0,33},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i L�c Ng�c Tr��ng",tbProp={0,51},nCoun,nQuality = 1,},}, "test", 1)
--tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4309,1,0},nCount=11,nQuality = 1,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch� ",tbProp={0,214},nCount=1,nQuality = 1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch� ",tbProp={0,215},nCount=1,nQuality = 1,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="kiem nga my",tbProp={0,33},nCount=2,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


--tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch� ",tbProp={0,214},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch� ",tbProp={0,215},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="S�ch 2",tbProp={6,1,4309,1,0},nCount=13,nQuality = 1,nExpiredTime=43200,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({tbProp = {0,11,821,1,1,0}, nCount=1,nExpiredTime=43200,}, "test", 1);--cai bang
--tbAwardTemplet:GiveAwardByList({tbProp = {0,11,822,1,1,0}, nCount=1,nExpiredTime=43200,}, "test", 1);--nga my
--tbAwardTemplet:GiveAwardByList({tbProp = {0,11,823,1,1,0}, nCount=1,nExpiredTime=43200,}, "test", 1);--thuy yen
--tbAwardTemplet:GiveAwardByList({tbProp = {0,11,824,1,1,0}, nCount=1,nExpiredTime=43200,}, "test", 1);--thien vuong
--tbAwardTemplet:GiveAwardByList({tbProp = {0,11,825,1,1,0}, nCount=1,nExpiredTime=43200,}, "test", 1);--thieu lam
--tbAwardTemplet:GiveAwardByList({tbProp = {0,11,826,1,1,0}, nCount=1,nExpiredTime=43200,}, "test", 1);--duong mon
--tbAwardTemplet:GiveAwardByList({tbProp = {0,11,827,1,1,0}, nCount=1,nExpiredTime=43200,}, "test", 1);--ngu doc
--tbAwardTemplet:GiveAwardByList({tbProp = {0,11,820,1,1,0}, nCount=1,nExpiredTime=43200,}, "test", 1);--thien nhan
tbAwardTemplet:GiveAwardByList({tbProp = {0,11,819,1,1,0}, nCount=1,nExpiredTime=43200,}, "test", 1);--con lon 
--tbAwardTemplet:GiveAwardByList({tbProp = {0,11,818,1,1,0}, nCount=1,nExpiredTime=43200,}, "test", 1);--vo dang
---tbAwardTemplet:GiveAwardByList({tbProp = {0,11,818,1,1,0}, nCount=5,nExpiredTime=43200,}, "test", 1);--vo dang

end


function sieuquang7()
tbAwardTemplet:GiveAwardByList({tbProp = {0,10,13,1,1,0}, nCount=1,nExpiredTime=10080,}, "test", 1);--vo dang
end

function buff5skill()
	PlayerFunLib:AddSkillState(966, 5,3,46656000,1)
end

function rutdao()
add_npc_tk()
	local szNews = format("Nghe n�i g�n ��y <color=green>B�o R��ng Ho�ng Kim<color=yellow> xu�t hi�n t�i chi�n tr��ng t�ng kim c�c binh s� h�y nhanh tay nh�n th��ng .");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
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
AddGoldItem(0,258)  
end


function hkvipnmk() 
AddGoldItem(0,250)  
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
AddGoldItem(0,265)  
end

function hkviptyc() 
AddGoldItem(0,270)  
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
AddGoldItem(0,295)  
end


function hkvippt() 
AddGoldItem(0,300)  
end


function hkvippd() 
AddGoldItem(0,290)  
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
AddGoldItem(0,275)  
end

function hkvipndd() 
AddGoldItem(0,280)  
end

function hkvipndb() 
AddGoldItem(0,67)  
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
AddGoldItem(0,240)  
end

function hkviptvc() 
AddGoldItem(0,235)  
end

function hkviptvd() 
AddGoldItem(0,245)  
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
AddGoldItem(0,230)  
end

function hkviptlb() 
AddGoldItem(0,225)  
end

function hkviptlq() 
AddGoldItem(0,221)  
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
AddGoldItem(0,340)  
end

function hkvipvdk() 
AddGoldItem(0,335)  
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
AddGoldItem(0,345)  
end

function hkvipclc() 
AddGoldItem(0,350)  
end

function hkvipclb() 
AddGoldItem(0,136)  
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
AddGoldItem(0,320)  
end

function hkviptnd() 
AddGoldItem(0,329)  
end

function hkviptnb() 
AddGoldItem(0,107)  
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
AddGoldItem(0,313)  
end

function hkvipcbb() 
AddGoldItem(0,315)  
end


