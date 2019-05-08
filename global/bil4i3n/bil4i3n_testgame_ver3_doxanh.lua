Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_awardplayerstop.lua")

function bilMain_TestGame_v3()
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = {}
	if GetLevel() < 199 then
		tinsert(bil_1, "Nh�n c�p �� 199 v� t�t c� c�c �i�m kh�c/#bilMain_TestGame_v3_C(1)")
	end
	tinsert(bil_1, "Nh�n b� trang b� An Bang/#bilMain_TestGame_v3_TrangBiG(1)")
	tinsert(bil_1, "Nh�n b� trang b� ��nh Qu�c/#bilMain_TestGame_v3_TrangBiG(2)")
	tinsert(bil_1, "Nh�n V� kh� xanh/#bilMain_TestGame_v3_TrangBi(1)")
	tinsert(bil_1, "Nh�n Trang b� xanh/#bilMain_TestGame_v3_TrangBi(2)")
	tinsert(bil_1, "Nh�n 500 Ti�n ��ng/#bilMain_TestGame_v3_C(2)")
	tinsert(bil_1, "Nh�n ng�a B�n ti�u/#bilMain_TestGame_v3_C(3)")
	tinsert(bil_1, "Nh�n K� n�ng m�n ph�i/#bilMain_TestGame_v3SkillFac(0)")
	tinsert(bil_1, "Thay ��i phe ph�i/#bilMain_TestGame_v3_C(4)")
	tinsert(bil_1, "Nh�n v�ng s�ng v� danh hi�u/#bilVongSangDH(0)")
	if GetTong() == "" then
		tinsert(bil_1, "Th�nh l�p Bang h�i/#bilMain_TestGame_v3_C(5)")
	end
	tinsert(bil_1, "K�t th�c ��i tho�i!/bil.OnCancel")
	return Say("M�y ch� th� nghi�m c� nhi�u t�nh n�ng hay v� h�p d�n, ��i hi�p h�y t� t� m� kh�m ph�!", getn(bil_1), bil_1)
end

function bilVongSangDH(bilSel, bilTileID)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	if GetLastFactionNumber() == -1 or GetFaction() == "M�i nh�p giang h� " then 
		return Say("B�n ch�a gia nh�p m�n ph�i, kh�ng th� s� d�ng t�nh n�ng n�y!", 0)
	end
	if bilTileID then
		Title_AddTitle(bilTileID, 2, 10000000)
		Title_ActiveTitle(bilTileID)
		return Msg2Player(bil.C(10,"C�c h� �� nh�n ���c danh hi�u, xin ch�c m�ng!"))
	end
	local bilTbVSvaDH = {}
	if bilSel == 1 then 
		for i = 1, getn(_bilTitleTopLvl) do
			tinsert(bilTbVSvaDH, "Danh hi�u ".._bilTitleTopLvl[i].TitleName.."/#bilVongSangDH(0, ".._bilTitleTopLvl[i].bilTitleID..")")
		end
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K�t th�c ��i tho�i!/bil.OnCancel")
	elseif bilSel == 2 then 
		for i = 1, getn(_bilTitleTopMoney) do
			tinsert(bilTbVSvaDH, "Danh hi�u ".._bilTitleTopMoney[i].TitleName.."/#bilVongSangDH(0, ".._bilTitleTopMoney[i].bilTitleID..")")
		end
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K�t th�c ��i tho�i!/bil.OnCancel")
	elseif bilSel == 4 then 
		tinsert(bilTbVSvaDH, "Danh hi�u V� song m�nh t��ng ��i t��ng/#bilVongSangDH(0, 324)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� song m�nh t��ng Ph� t��ng/#bilVongSangDH(0, 325)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� song m�nh t��ng Th�ng l�nh/#bilVongSangDH(0, 326)")
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K�t th�c ��i tho�i!/bil.OnCancel")
	elseif bilSel == 5 then 
		tinsert(bilTbVSvaDH, "Danh hi�u V� l�m li�n ��u Qu�n qu�n/#bilVongSangDH(0, 204)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� l�m li�n ��u � qu�n/#bilVongSangDH(0, 205)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� l�m li�n ��u h�ng 3/#bilVongSangDH(0, 206)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� l�m li�n ��u h�ng t�/#bilVongSangDH(0, 207)")
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K�t th�c ��i tho�i!/bil.OnCancel")
	elseif bilSel == 6 then 
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� Ph��ng T��ng/#bilVongSangDH(0, 153)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� Th�nh ��/#bilVongSangDH(0, 154)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� ��i L�/#bilVongSangDH(0, 155)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� Bi�n Kinh/#bilVongSangDH(0, 156)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� T��ng D��ng/#bilVongSangDH(0, 157)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� D��ng Ch�u/#bilVongSangDH(0, 158)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� L�m An/#bilVongSangDH(0, 159)")
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K�t th�c ��i tho�i!/bil.OnCancel")
	else
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP Cao th�/#bilVongSangDH(1)")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP Ph� h�/#bilVongSangDH(2)")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP M�n ph�i/#bilVongSangDH(0,".._bilTitleFaction[GetFaction()][GetSex()].bilTitleID..")")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP T�ng Kim/#bilVongSangDH(4)")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP Li�n ��u/#bilVongSangDH(5)")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng Bang Ch� chi�m th�nh/#bilVongSangDH(6)")
		tinsert(bilTbVSvaDH, "K�t th�c ��i tho�i!/bil.OnCancel")
	end
	Say("Ch�n v�ng s�ng v� danh hi�u m� b�n mu�n!", getn(bilTbVSvaDH), bilTbVSvaDH)
end

function bilMain_TestGame_v3SkillFac(bilSel, bilIDF, bilF, Sel4Set)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local _bil_a = {
		[0] = {{"Thi�u L�m Ph�i", 0, "shaolin", 1},{"Thi�n V��ng Bang", 1, "tianwang", 3}},
		[1] = {{"���ng M�n Ph�i", 2, "tangmen", 3},{"Ng� ��c Gi�o", 3, "wudu", 2}},
		[2] = {{"Nga My Ph�i", 4, "emei", 1},{"Th�y Y�n Ph�i", 5, "cuiyan", 3}},
		[3] = {{"C�i Bang", 6, "gaibang", 1},{"Thi�n Nh�n Gi�o", 7, "tianren", 2}},
		[4] = {{"V� �ang Ph�i", 8, "wudang", 1},{"C�n L�n Ph�i", 9, "kunlun", 3}},
	}
	if bilSel == 2 then
		SetFaction(_bil_a[bilIDF][bilF][3])
		SetCamp(_bil_a[bilIDF][bilF][4])
		SetCurCamp(_bil_a[bilIDF][bilF][4])
		SetLastFactionNumber(_bil_a[bilIDF][bilF][2])
		return bilMain_TestGame_v3SkillFac(((Sel4Set ~= 0) and Sel4Set or 0), GetLastFactionNumber())
	end
	if bilIDF then
		local bil_TranPhai = {273, 36, 48, 75, 252, 114, 130, 150, 166, 275}
		for i = 1, 7 do
			for j = 1, getn(tbAllSkill[GetFaction()][i]) do
				AddMagic(tbAllSkill[GetFaction()][i][j],20)
			end
		end
		for ij = 1, getn(tbAllSkill[GetFaction()][9]) do
			if bilSel == 1 then
				AddMagic(tbAllSkill[GetFaction()][9][ij],1)
			else
				AddMagic(tbAllSkill[GetFaction()][9][ij],20)
			end
		end
		AddMagic(_bilSkill120IDtable[GetLastFactionNumber()][1],20)
		AddMagic(bil_TranPhai[GetLastFactionNumber()+1], 30)
		return Msg2Player(bil.C(10, "Nh�n ���c b� k� n�ng m�n ph�i!"))
	end
	if GetLastFactionNumber() == -1 then
		local bil_1 = {}
		tinsert(bil_1, _bil_a[GetSeries()][1][1].."/#bilMain_TestGame_v3SkillFac(2, "..GetSeries()..", 1, "..((bilSel ~= 0) and bilSel or 0)..")")
		tinsert(bil_1, _bil_a[GetSeries()][2][1].."/#bilMain_TestGame_v3SkillFac(2, "..GetSeries()..", 2, "..((bilSel ~= 0) and bilSel or 0)..")")
		tinsert(bil_1, "K�t th�c ��i tho�i!/bil.OnCancel")
		return Say("V� thi�u hi�p vui l�ng ch�n m�n ph�i mu�n gia nh�p!", getn(bil_1), bil_1)
	else
		return bilMain_TestGame_v3SkillFac(((bilSel ~= 0) and bilSel or 0), GetLastFactionNumber())
	end
end

function bilMain_TestGame_v3_TrangBiG(bil_In_1)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = {
		{bil_1 = "��nh Qu�c thanh xa tr��ng sam", bil_2 = {159}, bil_3 = 4},
		{bil_1 = "��nh Qu�c � xa ph�t qu�n", bil_2 = {160}, bil_3 = 6},
		{bil_1 = "��nh Qu�c x�ch quy�n nhuy�n ngoa", bil_2 = {161}, bil_3 = 4},
		{bil_1 = "��nh Qu�c t� ��ng h� uy�n", bil_2 = {162}, bil_3 = 4},
		{bil_1 = "��nh Qu�c ng�n t�m y�u ��i", bil_2 = {163}, bil_3 = 4},
		{bil_1 = "An Bang b�ng tinh th�ch h�ng li�n", bil_2 = {164}, bil_3 = 6},
		{bil_1 = "An Bang c�c hoa th�ch ch� ho�n", bil_2 = {165}, bil_3 = 6},
		{bil_1 = "An Bang �i�n ho�ng th�ch ng�c b�i", bil_2 = {166}, bil_3 = 6},
		{bil_1 = "An Bang k� huy�t th�ch gi�i ch�", bil_2 = {167}, bil_3 = 6},
	}
	if bil_In_1 then
		if bil_In_1 == 1 then
			for bil_l_1 = 6, 9 do
				AddGoldItem(0, bil_1[bil_l_1].bil_2[1])
			end
			return Msg2Player(bil.C(10, "Nh�n ���c b� trang b� An Bang!"))
		elseif bil_In_1 == 2 then
			for bil_l_1 = 1, 5 do
				AddGoldItem(0, bil_1[bil_l_1].bil_2[1])
			end
			return Msg2Player(bil.C(10, "Nh�n ���c b� trang b� ��nh Qu�c!"))
		end
	end
end

function bilMain_TestGame_v3_TrangBi(bil_In_1, bil_nDetailType, bil_nParticularType, bil_W, bil_H, bilSeri)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = 
	{
		{bilName = "Ki�m", bilItem = {0, 0, 1, 3}},{bilName = "�ao", bilItem = {0, 1, 1, 4}},
		{bilName = "B�ng", bilItem = {0, 2, 1, 4}},{bilName = "Th��ng", bilItem = {0, 3, 1, 4}},
		{bilName = "Ch�y", bilItem = {0, 4, 2, 2}},{bilName = "Song �ao", bilItem = {0, 5, 2, 3}},
		{bilName = "Phi Ti�u", bilItem = {1, 0, 1, 1}},{bilName = "Phi �ao", bilItem = {1, 1, 1, 1}},
		{bilName = "T� Ti�n", bilItem = {1, 2, 2, 2}},{bilName = "�o - Nam", bilItem = {2, random(0, 6), 2, 3}},
		{bilName = "�o - N�", bilItem = {2, random(7, 13), 2, 3}},{bilName = "Nh�n", bilItem = {3,0, 1, 1}},
		{bilName = "D�y chuy�n - Nam", bilItem = {4, 1, 2, 1}},{bilName = "D�y chuy�n - N�", bilItem = {4, 0, 2, 1}},
		{bilName = "Gi�y - Nam", bilItem = {5, random(0, 1), 2, 2}},{bilName = "Gi�y - N�", bilItem = {5, random(2, 3), 2, 2}},
		{bilName = "Th�t l�ng - Nam", bilItem = {6, 1, 2, 1}},{bilName = "Th�t l�ng - N�", bilItem = {6, 0, 2, 1}},
		{bilName = "M� - Nam", bilItem = {7, random(0, 6), 2, 2}},{bilName = "M� - N�", bilItem = {7, random(7, 13), 2, 2}},
		{bilName = "Bao tay - Nam", bilItem = {8, 1, 1, 2}},{bilName = "Bao tay - N�", bilItem = {8, 0, 1, 2}},
		{bilName = "Ng�c b�i - Nam", bilItem = {9, 1, 1, 2}},{bilName = "Ng�c b�i - N�", bilItem = {9, 0, 1, 2}},
	}
	local bil_2, bil_3 = {}, 0
	if bil_nDetailType then
		if bilSeri then
			if CountFreeRoomByWH(bil_W, bil_H) > 0 then
				for i = 1, CountFreeRoomByWH(bil_W, bil_H) do
					-- AddItem(0, bil_nDetailType, bil_nParticularType, 10, bilSeri, 250, 10)
					AddItemEx(0,random(),0,0,bil_nDetailType,bil_nParticularType,10,bilSeri,255,10,10,10,10,10,10,0)
					bil_3 = bil_3 + 1
				end
				return Msg2Player(bil.C(10,"�� nh�n ���c "..bil_3.." m�n trang b�!"))
			else
				return Talk(1, "", "H�nh trang c�a c�c h� c� v� b�a b�n qu�, h�y s�p x�p l�i v� �� tr�ng h�nh trang "..bil.C(1,bil_W.."x"..bil_H).."!")
			end
		else
			return Say("Ch�n h� c�a m�n trang b�!", 6,
				"Trang b� h� Kim/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 0)",
				"Trang b� h� M�c/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 1)",
				"Trang b� h� Th�y/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 2)",
				"Trang b� h� H�a/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 3)",
				"Trang b� h� Th�/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 4)",
				"K�t th�c ��i tho�i!/bil.OnCancel")
		end
	end
	if bil_In_1 then
		if bil_In_1 == 1 then
			for bil_l_1 = 1, 9 do
				tinsert(bil_2, "Ta mu�n l�y "..bil_1[bil_l_1].bilName.."/#bilMain_TestGame_v3_TrangBi(0, "..bil_1[bil_l_1].bilItem[1]..", "..bil_1[bil_l_1].bilItem[2]..", "..bil_1[bil_l_1].bilItem[3]..", "..bil_1[bil_l_1].bilItem[4]..")")
			end
		elseif bil_In_1 == 2 then
			for bil_l_1 = 10, 20 do
				tinsert(bil_2, "Ta mu�n l�y "..bil_1[bil_l_1].bilName.."/#bilMain_TestGame_v3_TrangBi(0, "..bil_1[bil_l_1].bilItem[1]..", "..bil_1[bil_l_1].bilItem[2]..", "..bil_1[bil_l_1].bilItem[3]..", "..bil_1[bil_l_1].bilItem[4]..")")
			end
			tinsert(bil_2, "Trang k�./#bilMain_TestGame_v3_TrangBi(3)")
		elseif bil_In_1 == 3 then
			for bil_l_1 = 21, getn(bil_1) do
				tinsert(bil_2, "Ta mu�n l�y "..bil_1[bil_l_1].bilName.."/#bilMain_TestGame_v3_TrangBi(0, "..bil_1[bil_l_1].bilItem[1]..", "..bil_1[bil_l_1].bilItem[2]..", "..bil_1[bil_l_1].bilItem[3]..", "..bil_1[bil_l_1].bilItem[4]..")")
			end
			tinsert(bil_2, "Trang tr��c./#bilMain_TestGame_v3_TrangBi(2)")
		end
		tinsert(bil_2, "K�t th�c ��i tho�i!/bil.OnCancel")
		return Say("Ch�n m�n trang b� mu�n l�y!", getn(bil_2), bil_2)
	end
end

function bilMain_TestGame_v3_C(bil_In_1, bil_In_2)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	if bil_In_2 then
		SetCamp(bil_In_2)
		SetCurCamp(bil_In_2)
		-- if bil_In_2 == 4 then
			-- SetFaction("")
		-- end
		return Msg2Player(bil.C(10, "Thay ��i phe ph�i th�nh c�ng!"))
	end
	if bil_In_1 then
		if bil_In_1 == 1 then
			while GetLevel() < 199 do
				AddOwnExp(999999999)
			end
			SetTask(2501, 50000000)
			Msg2Player(bil.C(10, "5 tri�u �i�m li�n ��u!"))
			AddRepute(99999)
			Msg2Player(bil.C(10, "danh v�ng l�n 99999 �i�m!"))
			SetTask(151, 99999)
			Msg2Player(bil.C(10, "ph�c duy�n l�n 99999 �i�m!"))
			SetTask(747, 1000000)
			Msg2Player(bil.C(10, "t�ng kim l�n 1 tri�u �i�m!"))
			AddLeadExp(10000000)
			Msg2Player(bil.C(10, "10 tri�u �i�m t�i l�nh ��o!"))
			Earn(999999999)
			return Msg2Player(bil.C(10, "ti�n v�n l�n 99 ngh�n v�n l��ng!"))
		elseif bil_In_1 == 2 then
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			return Msg2Player(bil.C(10, " Nh�n ���c 500 ti�n ��ng!"))
		elseif bil_In_1 == 3 then
			AddItem(0,10,6,10,1,0,0)
			return Msg2Player(bil.C(10, " Nh�n ���c B�n ti�u!"))
		elseif bil_In_1 == 4 then
			return Say("Xin ch�n phe ph�i mu�n chuy�n ��i!",6, "T�n Th�./#bilMain_TestGame_v3_C(0, 0)", "Ch�nh Ph�i./#bilMain_TestGame_v3_C(0, 1)", "Trung L�p./#bilMain_TestGame_v3_C(0, 3)", "T� Ph�i./#bilMain_TestGame_v3_C(0, 2)", "S�t Th�./#bilMain_TestGame_v3_C(0, 4)", "K�t th�c ��i tho�i!/bil.OnCancel")
		elseif bil_In_1 == 5 then
			SetCamp(4); SetCurCamp(4); AddRepute(1000); AddLeadExp(10000000); while(GetLevel() < 100) do AddOwnExp(99999999) end
			SetTask(99,1);
			CreateTong(1)
		end
	end
end
 
function main()
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	bilMain_TestGame_v3()
end	














