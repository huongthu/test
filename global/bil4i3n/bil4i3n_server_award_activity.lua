IncludeLib("BATTLE")
-- Include("\\script\\global\\bil4i3n\\bil4i3n_server_award_activity.lua")
/*[[ File l�u tr� h�m nh�n ph�n th��ng khi tham gia c�c ho�t ��ng trong game ]]*/

Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
--Include("\\script\\global\\bil4i3n\\bil4i3n_droprate_item_magic.lua")
IncludeLib("LEAGUE")


--===============================================================================================-
	/*[[   T�ng Kim   ]]*/
	
-- K�t th�c t�ng kim
function bilActivity_EnBattle()

	if GetTask(5905) == 67 then
		bilNvTanThu:NextTask()
	end
	
end

function bilActivity_EnBattle_2(nBattleLevel, tbPlayerAll, tbPlayerWin, tbPlayerLos, nWinLos)
	local a = PlayerIndex
	local b, c, d, e = 0, tonumber(GetLocalDate("%H")), 0, 1773
	local Tdate = floor(FormatTime2Number(GetCurServerTime()+24*60*60)/10000)
			local nWeekDay = tonumber(GetLocalDate("%w"));
	                                                       local nHour = tonumber(GetLocalDate("%H%M"))
	
	for _i = 1, getn(tbPlayerWin) do
		PlayerIndex = tbPlayerWin[_i]
		b = BT_GetData(1)
		
			if ( nHour >= 1300 and nHour < 1430) and b >= 3000 then
tbAwardTemplet:GiveAwardByList({{szName="�� Ph� HK",tbProp={4,1669,1,1,0,0},nCount=1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Da Cap 3",tbProp={4,1670,1,1,0,0},nCount=5,},}, "test", 1);

			end
			if ( nHour >= 2100 and nHour < 2230) and b >= 3000 then
tbAwardTemplet:GiveAwardByList({{szName="�� Ph� HK",tbProp={4,1669,1,1,0,0},nCount=2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Da Cap 3",tbProp={4,1670,1,1,0,0},nCount=5,},}, "test", 1);

			end
		end	
	PlayerIndex = a

end

--===============================================================================================-
	/*[[   Vi�m �� b�o t�ng   ]]*/

-- K�t th�c Vi�m �� b�o t�ng
function bilActivity_EnYandiBaozang()
	--AddItem(6,1,2805,1,0,0)
                            tbAwardTemplet:GiveAwardByList({{szName="Vi�m �� B� B�o",tbProp={6,1,4396,1,1,0},nCount=1,},}, "test", 1);

	local szNews = format("Ch�c m�ng <color=green>"..GetName().."<color=yellow> �� ho�n th�nh xu�t s�c tr�n vi�m �� nh�n ���c 1 Vi�m �� B� B�o");
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	if GetTask(5905) == 63 then
		bilNvTanThu:NextTask()
	end
end

-- Qu�i cu�i c�ng c�a �i ch�t, chuy�n ti�p �i ti�p theo
function bilActivity_DeathLastNpcAiYandiBaozang(bil_1, bil_2, bil_3, bil_4)
	-- bil_1: World - bil_2: X - bil_3: Y - bil_4: PlayerIndex
	-- bilDropAtlasCompound(bil_1, bil_2, bil_3, -1, 79, 79)
	-- bilDropABDQ(bil_1, bil_2, bil_3, -1, 79, 79)
	-- bilDropKhThach(bil_1, bil_2, bil_3, -1, 1, 79, 82)
	bilDropKyTranDiBao(bil_1, bil_2, bil_3, -1, 1, 79, 80)
end

--===============================================================================================-
	/*[[   V��t �i (Nh�p Th� Tr�n)   ]]*/

-- Ho�n th�nh v��t �i 
function bilActivity_EnChallengeOfTime()

                                                                                  tbAwardTemplet:GiveAwardByList({{szName="T�i M�u CTC",tbProp={6,1,4469,1,1,0},nCount=1,},}, "test", 1);

 tbAwardTemplet:GiveAwardByList({{szName="T�i M�u CTC",tbProp={6,1,4469,1,1,0},nCount=1,},}, "test", 1);






	local szNews = format("��i hi�p <color=green>"..GetName().."<color=yellow> �� ho�n th�nh xu�t s�c tr�n v��t �i nh�n ���c 1 t�i m�u CTC + 300 T�i Nguy�n Li�u");
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end


-- Qu�i cu�i c�ng c�a �i ch�t, chuy�n ti�p �i ti�p theo
function bilActivity_DeathLastNpcChallengeOfTime(bil_1, bil_2, bil_3)
	-- bil_1: World - bil_2: X - bil_3: Y
	bilDropKyTranDiBao(bil_1, bil_2, bil_3, -1, 1, 79, 80)
	-- bilDropABDQ(bil_1, bil_2, bil_3, -1, 79, 79)
	for i = 1, 10 do
		DropItem(bil_1, bil_2, bil_3, -1, 1, 2, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0);
	end
end

--===============================================================================================-
	/*[[   Phong l�ng ��   ]]*/
	
-- K�t th�c Phong L�ng �� (�i ��n b� b�c th�nh c�ng)
function bilActivity_EnFengLingFerry()
	AddOwnExp(1000000)
	-- AddItem(6,1,4300,1,0,0)
	-- Msg2Player("<color=yellow>Ho�n th�nh Phong L�ng ��, nh�n th�m 2 tri�u �i�m Kinh nghi�m v� 1 N�ng ��ng l� bao!")
	Msg2Player("<color=yellow>Ho�n th�nh Phong L�ng ��, ���c ph�n th��ng")
	-- bilAddRandom_PhucLoiDon_ManhHoangKim()
	if GetTask(5905) == 64 then
		bilNvTanThu:NextTask()
	end
end

-- H� g�c ���c Boss
function bilActivity_DeathBossFengLingFerry(bil_1, bil_2, bil_3)
	-- bil_1: World - bil_2: X - bil_3: Y
	AddOwnExp(2000000)
	bilDropNormalItem({bil_1, bil_2, bil_3}, -1, 10, {20, 100}, {7, 10, 5})
	-- bilDropABDQ(bil_1, bil_2, bil_3, -1, 79, 79)
	bilDropKyTranDiBao(bil_1, bil_2, bil_3, -1, 1, 79, 85)
	
	local a = {
		{{6, 1, 71, 1, 0,0,0}, "Ti�n th�o l�"},
		{{6, 1, 12, 1, 0,0,0}, "B�n Nh��c T�m Kinh"},
		{{4, 238, 1, 1, 0,0,0}, "Lam th�y tinh"},
		{{4, 239, 1, 1, 0,0,0}, "T� th�y tinh"},
		{{4, 240, 1, 1, 0,0,0}, "L�c th�y tinh"},
		{{4, 353, 1, 1, 0,0,0}, "Tinh h�ng b�o th�ch"},
		{{6, 1, 122, 1, 0,0,0}, "Ph�c duy�n ti�u"},
		{{6, 1, 123, 1, 0,0,0}, "Ph�c duy�n trung"},
	}
	
	for _i = 1, getn(a) do
		if random(1, 100) <= 4 then
			DropItem(bil_1, bil_2, bil_3, (PlayerIndex or -1), a[_i][1][1], a[_i][1][2], a[_i][1][3], 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
		end
	end
end

-- Qu�i th��ng ch�t
function bilActivity_DeathNpcNormalFengLingFerry(bil_1, bil_2, bil_3)
	-- bil_1: World - bil_2: X - bil_3: Y
end

--===============================================================================================-
	/*[[   Hoa S�n ��i Chi�n   ]]*/
	
-- Ng��i chi�n th�ng trong Hoa S�n ��i Chi�n
function bilActivity_EnHuaShanqunzhan()
	if CalcFreeItemCellCount() < 20 then
		Say("T�i h�nh trang �� ��y, h�y d�n d�p h�nh trang �� b�o ��m an to�n cho v�t ph�m.",0)
		return nil
	else
		AddOwnExp(20000000)
		Earn(500000)
		-- AddItem(6,1,4300,1,0,0)
		-- AddItem(6,1,4300,1,0,0)
		-- AddItem(6,1,4300,1,0,0)
		-- AddItem(6,1,4300,1,0,0)
		-- AddItem(6,1,4300,1,0,0)
		
		AddItem(4,238,1,1,0,0)
		AddItem(4,239,1,1,0,0)
		AddItem(4,240,1,1,0,0)
		
		-- AddItem(6,1,4308,1,0,0)
		-- AddItem(6,1,4308,1,0,0)
		-- AddItem(6,1,4308,1,0,0)
		
		Msg2Player(bil.C(10, "Nh�n ���c 20 tri�u �i�m Kinh nghi�m"))
		Msg2Player(bil.C(10, "Nh�n ���c 50 v�n l��ng"))
		-- Msg2Player(bil.C(10, "Nh�n ���c 5 N�ng ��ng l� bao"))
		Msg2Player(bil.C(10, "Nh�n ���c 1 Lam th�y tinh"))
		Msg2Player(bil.C(10, "Nh�n ���c 1 T� th�y tinh"))
		Msg2Player(bil.C(10, "Nh�n ���c 1 L�c th�y tinh"))
		-- Msg2Player(bil.C(10, "Nh�n ���c 3 M�nh �� Ph� [Ho�ng Kim]"))
		Msg2Player(bil.C(8, "�� nh�n ���c ph�n th��ng c�c k� gi� tr� cho ng��i chi�n th�ng trong ")..bil.C(1, "Hoa s�n ��i chi�n"))
		return 1
	end
end

--===============================================================================================-
	/*[[   S�n Nh�m b�o ph�   ]]*/

-- S�n ���c Nh�m b�o ph�
function bilActivity_DeathNhimBeoPhi()
	local tbAwardItem = {
		{szName="Ti�n Th�o L� ", nRate=5, tbProp={6, 1, 71, 1, 0, 0}},
		{szName="B�ch Qu� L� ", nRate=10, tbProp={6, 1, 73, 1, 0, 0}},
		-- {szName="Qu� Hoa T�u", nRate=15, tbProp={6, 1, 125, 1, 0, 0}},
	};
	local bilRandom = random(1, 100)
	for i = 1, getn(tbAwardItem) do
		if bilRandom <= tbAwardItem[i].nRate and bilRandom > tbAwardItem[i].nRate - 5 then
			AddItem(unpack(tbAwardItem[i].tbProp))
			Msg2Player("B�n nh�n ���c: "..tbAwardItem[i].szName)
		end
	end
	-- AddOwnExp(2000000)
	AddOwnExp(500000)
	-- Earn(20000)
	-- Msg2Player(bil.C(10, "Nh�n ���c 500.000 Kinh nghi�m v� 2 v�n l��ng!"))
	Msg2Player(bil.C(10, "Nh�n ���c 500.000 Kinh nghi�m!"))
	Msg2Player(bil.C(9, "H�m nay ��i hi�p �� s�n ���c <color=yellow>"..(GetTask(5979)+1).."<color> Nh�m b�o ph�!"))
	Msg2Player(bil.C(10, "T�ng s� Nh�m b�o ph� ��i hi�p �� s�n ���c: "..(GetTask(5977)+1)))
end

--===============================================================================================-
	/*[[   Bosss Ho�ng Kim   ]]*/
	
-- H� g�c ���c Boss
function bilActivity_DeathBossHK(bil_1, bil_2, bil_3, bil_4)
	-- bil_1: World - bil_2: X - bil_3: Y - bil_4: PlayerIndex
	bilDropNormalItem({bil_1, bil_2, bil_3}, PlayerIndex, 40, {50, 100}, {8, 10, 5})
	-- bilDropAtlasCompound(bil_1, bil_2, bil_3, PlayerIndex, 79, 80)
	-- bilDropABDQ(bil_1, bil_2, bil_3, bil_4, 79, 80)
	-- bilDropKhThach(bil_1, bil_2, bil_3, -1, 2, 79, 197)
	bilDropKyTranDiBao(bil_1, bil_2, bil_3, -1, 3, 79, 152)
	
	if random(1,5) == 1 then
		DropItem(bil_1, bil_2, bil_3, bil_4, 6, 1, 4315, 1, 0, 0, 0, 0, 0, 0, 0, 0) -- B� k�p l� bao c�p 90
	end
	
	if random(1,5) == 1 then
		DropItem(bil_1, bil_2, bil_3, bil_4, 6, 1, 12, 1, 0, 0, 0, 0, 0, 0, 0, 0) -- B�n nh��c t�m kinh
	end
	
	-- bilDropRandom_PhucLoiDon_ManhHoangKim(bil_1, bil_2, bil_3, -1, 3)
	
	-- DropItem(bil_1, bil_2, bil_3, -1, 6, 1, 4300, 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
	-- DropItem(bil_1, bil_2, bil_3, -1, 6, 1, 4300, 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
	-- DropItem(bil_1, bil_2, bil_3, -1, 6, 1, 4300, 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
	
	
------------------------------------------------------- DROP MAGIC -------------------------------------------------------
	if bilAllowDropMagicItemManual and bilAllowDropMagicItemManual.isOpen == 1 then
		local im_G, im_D, im_MagicLevel, im_Index = 0, nil, 0, nil
		
		for _i2 = 1, 20 do
			im_D = random(0, 9)
			
			im_D = ((im_D == 0 or im_D == 1) and ((random(100) <= 10) and im_D or random(5,9)) or ((im_D == 3 or im_D == 4 or im_D == 9) and ((random(100) <= 20) and im_D or random(5,8)) or im_D))
			im_MagicLevel = ((im_D == 0 or im_D == 1 or im_D == 3 or im_D == 4 or im_D == 9) and 7 or 10)
			
			if random(100) <= 30 then
				im_Index = DropItemEx(
					bil_1, bil_2, bil_3, 
					(PlayerIndex or -1), 
					bilAllowDropMagicItemManual.version, 
					random(), 
					0, 
					im_G, im_D, random(_bilTbDropNormalItem[(im_D + 1)][1][1], _bilTbDropNormalItem[(im_D + 1)][1][2]), 
					random(8,10), random(0,4), 
					((im_D == 0 or im_D == 1) and random(150) or ((im_D == 3 or im_D == 4 or im_D == 9) and random(200) or random(250))), 
					random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel)
				)
				
				item_DropMagic:WriteLogs({im_Mis = "Boss_Tieu_Hoang_Kim", im_Index = im_Index, im_D = im_D})
			end
		end
	end
------------------------------------------------------- DROP MAGIC -------------------------------------------------------
end

-- L�a ch�n 20 ng��i ng�u nhi�n ��ng xung quanh khi Boss ch�t
function bilActivity_DeathBossPlayerRandom(bil_1, bil_2)
	-- bil_1: Table PlayerIndex - bil_2: Count Player
	local OldPlidx = PlayerIndex
	-- for bil_L_1 = 1, bil_2 do
		-- PlayerIndex = bil_1[bil_L_1]
		-- AddItem(6,1,4300,1,0,0)
		-- Msg2Player(bil.C(8, "Tham gia ��nh Boss Ho�ng Kim ng�u nhi�n nh�n ���c 1 ")..bil.C(1, "N�ng ��ng L� Bao"))
		-- bilAddRandom_PhucLoiDon_ManhHoangKim()
	-- end
	PlayerIndex = OldPlidx
end

--===============================================================================================-
	/*[[   Boss Tinh Anh   ]]*/

-- H� g�c ���c Boss Tinh Anh
function bilActivity_DeathBossTHK(bil_1, bil_2, bil_3, bil_4)
	-- bil_1: World - bil_2: X - bil_3: Y - bil_4: All PlayerIndex Team
	-- bilDropNormalItem({bil_1, bil_2, bil_3}, PlayerIndex, 80, {70, 100}, {9, 10, 250})
	-- DropItem(bil_1, bil_2, bil_3, -1, 6, 1, 4300, 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
	-- bilDropRandom_PhucLoiDon_ManhHoangKim(bil_1, bil_2, bil_3, bil_4[1], 1)
	
	local bil_PlayerIndexOld = PlayerIndex
	for bil_l_1 = 1, getn(bil_4) do
		PlayerIndex = bil_4[bil_l_1]
		AddOwnExp(3000000)
		Msg2Player(bil.C(10, "Nh�n ���c 3 tr Exp t� Boss Tinh Anh"))
		-- bilAddRandom_PhucLoiDon_ManhHoangKim()
	end
	PlayerIndex = bil_PlayerIndexOld
	
	local bilNIt, bilRd = 0, 0
	for i = 1, 60 do
		bilRd, bilNIt = random(0, 100), random(0, 9)
		if bilRd >= 70 and bilRd <= 100 then
			DropItem(
				bil_1, bil_2, bil_3, (PlayerIndex or -1), 
				0, bilNIt, random(_bilTbDropNormalItem[bilNIt + 1][1][1], _bilTbDropNormalItem[bilNIt + 1][1][2]), random(9, 10), random(0,4), 
				255, 
				10,10, 10, 10, 10, 10, 10
			)
		end
	end
	
------------------------------------------------------- DROP MAGIC -------------------------------------------------------
	if bilAllowDropMagicItemManual and bilAllowDropMagicItemManual.isOpen == 1 then
		local im_G, im_D, im_MagicLevel, im_Index = 0, nil, 0, nil
		
		for _i2 = 1, 20 do
			im_D = random(0, 9)
			
			im_D = ((im_D == 0 or im_D == 1) and ((random(100) <= 10) and im_D or random(5,9)) or ((im_D == 3 or im_D == 4 or im_D == 9) and ((random(100) <= 20) and im_D or random(5,8)) or im_D))
			im_MagicLevel = ((im_D == 0 or im_D == 1 or im_D == 3 or im_D == 4 or im_D == 9) and 4 or 8)
			
			if random(100) <= 30 then
				im_Index = DropItemEx(
					bil_1, bil_2, bil_3, 
					(PlayerIndex or -1), 
					bilAllowDropMagicItemManual.version, 
					random(), 
					0, 
					im_G, im_D, random(_bilTbDropNormalItem[(im_D + 1)][1][1], _bilTbDropNormalItem[(im_D + 1)][1][2]), 
					random(8,10), random(0,4), 
					((im_D == 0 or im_D == 1) and random(50) or ((im_D == 3 or im_D == 4 or im_D == 9) and random(100) or random(150))), 
					random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel)
				)
				
				item_DropMagic:WriteLogs({im_Mis = "Boss_Tieu_Hoang_Kim", im_Index = im_Index, im_D = im_D})
			end
		end
	end
------------------------------------------------------- DROP MAGIC -------------------------------------------------------
	
	for _i = 1, 5 do
		if random(1, 100) <= 10 then
			DropItem(bil_1, bil_2, bil_3, (PlayerIndex or -1), 6, 1, random(4342, 4347), 1, random(0,4), 0, 0, 0, 0, 0, 0, 0)
		end
	end
end

-- Ng��i ch�i ��ng xung quanh khi boss Tinh Anh ch�t
function bilActivity_DeathBossTHKPlayerRandom(bil_1)
	-- bil_1: All PlayerIndex
	local bil_PlayerIndexOld = PlayerIndex
	for bil_l_1 = 1, getn(bil_1) do
		PlayerIndex = bil_1[bil_l_1]
		AddOwnExp(1500000)
		Msg2Player(bil.C(10, "Ng�u nhi�n nh�n ���c 1.5 tr Exp t� Boss Tinh Anh"))
		-- bilAddRandom_PhucLoiDon_ManhHoangKim()
	end
	PlayerIndex = bil_PlayerIndexOld
end

--===============================================================================================-
	/*[[   C�ng th�nh chi�n   ]]*/

-- K�t th�c C�ng th�nh chi�n
function bilActivity_EnCityWar(bil_1)
	-- bil_1: �i�m kinh nghi�m
	AddOwnExp(bil_1)
	-- AddItem(6,1,4300,1,0,0)
	-- AddItem(6,1,4300,1,0,0)
	-- Msg2Player("<color=yellow>H� g�c ���c "..(bil_1/500000).." ��ch qu�n<enter>B�n nh�n ���c "..bil_1.." �i�m kinh nghi�m v� "..bil.C(1, "2 N�ng ��ng l� bao"))
	Msg2Player("<color=yellow>H� g�c ���c "..(bil_1/100000).." ��ch qu�n<enter>B�n nh�n ���c "..bil_1.." �i�m kinh nghi�m")
	AddSkillState(451, 1, 1, 10*60*18, 1)
	-- bilAddRandom_PhucLoiDon_ManhHoangKim()
end

--===============================================================================================-
	/*[[   Phong h�a li�n th�nh   ]]*/
	
-- H� g�c ���c t��ng l�nh b�n c�ng, t�nh theo c�p ��
function bilActivity_EnNewCityDefence(bil_1, bil_2, bil_3, bil_4)
	-- bil_1: H�ng c�a NPC b�n c�ng b� h� g�c - bil_2: World - bil_3: X - bil_4: Y
	if bil_1 >= 4 then
		-- bilDropAtlasCompound(bil_2, bil_3, bil_4, -1, 79, 79)
		-- bilDropABDQ(bil_2, bil_3, bil_4, -1, 79, 79)
		-- bilDropKhThach(bil_2, bil_3, bil_4, -1, 1, 79, 82)
		bilDropKyTranDiBao(bil_2, bil_3, bil_4, -1, 1, 79, 80)
	end
end























