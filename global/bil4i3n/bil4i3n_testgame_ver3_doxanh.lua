Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_awardplayerstop.lua")

function bilMain_TestGame_v3()
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = {}
	if GetLevel() < 199 then
		tinsert(bil_1, "NhÀn c p ÆÈ 199 vµ t t c∂ c∏c Æi”m kh∏c/#bilMain_TestGame_v3_C(1)")
	end
	tinsert(bil_1, "NhÀn bÈ trang bﬁ An Bang/#bilMain_TestGame_v3_TrangBiG(1)")
	tinsert(bil_1, "NhÀn bÈ trang bﬁ ßﬁnh QuËc/#bilMain_TestGame_v3_TrangBiG(2)")
	tinsert(bil_1, "NhÀn VÚ kh› xanh/#bilMain_TestGame_v3_TrangBi(1)")
	tinsert(bil_1, "NhÀn Trang bﬁ xanh/#bilMain_TestGame_v3_TrangBi(2)")
	tinsert(bil_1, "NhÀn 500 Ti“n ÆÂng/#bilMain_TestGame_v3_C(2)")
	tinsert(bil_1, "NhÀn ng˘a B´n ti™u/#bilMain_TestGame_v3_C(3)")
	tinsert(bil_1, "NhÀn K¸ n®ng m´n ph∏i/#bilMain_TestGame_v3SkillFac(0)")
	tinsert(bil_1, "Thay ÆÊi phe ph∏i/#bilMain_TestGame_v3_C(4)")
	tinsert(bil_1, "NhÀn vﬂng s∏ng vµ danh hi÷u/#bilVongSangDH(0)")
	if GetTong() == "" then
		tinsert(bil_1, "Thµnh lÀp Bang hÈi/#bilMain_TestGame_v3_C(5)")
	end
	tinsert(bil_1, "K’t thÛc ÆËi thoπi!/bil.OnCancel")
	return Say("M∏y chÒ thˆ nghi÷m c„ nhi“u t›nh n®ng hay vµ h p d…n, Æπi hi÷p h∑y tı tı mµ kh∏m ph∏!", getn(bil_1), bil_1)
end

function bilVongSangDH(bilSel, bilTileID)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	if GetLastFactionNumber() == -1 or GetFaction() == "MÌi nhÀp giang hÂ " then 
		return Say("Bπn ch≠a gia nhÀp m´n ph∏i, kh´ng th” sˆ dÙng t›nh n®ng nµy!", 0)
	end
	if bilTileID then
		Title_AddTitle(bilTileID, 2, 10000000)
		Title_ActiveTitle(bilTileID)
		return Msg2Player(bil.C(10,"C∏c hπ Æ∑ nhÀn Æ≠Óc danh hi÷u, xin chÛc mıng!"))
	end
	local bilTbVSvaDH = {}
	if bilSel == 1 then 
		for i = 1, getn(_bilTitleTopLvl) do
			tinsert(bilTbVSvaDH, "Danh hi÷u ".._bilTitleTopLvl[i].TitleName.."/#bilVongSangDH(0, ".._bilTitleTopLvl[i].bilTitleID..")")
		end
		tinsert(bilTbVSvaDH, "Quay lπi/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K’t thÛc ÆËi thoπi!/bil.OnCancel")
	elseif bilSel == 2 then 
		for i = 1, getn(_bilTitleTopMoney) do
			tinsert(bilTbVSvaDH, "Danh hi÷u ".._bilTitleTopMoney[i].TitleName.."/#bilVongSangDH(0, ".._bilTitleTopMoney[i].bilTitleID..")")
		end
		tinsert(bilTbVSvaDH, "Quay lπi/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K’t thÛc ÆËi thoπi!/bil.OnCancel")
	elseif bilSel == 4 then 
		tinsert(bilTbVSvaDH, "Danh hi÷u V´ song m∑nh t≠Ìng ßπi t≠Ìng/#bilVongSangDH(0, 324)")
		tinsert(bilTbVSvaDH, "Danh hi÷u V´ song m∑nh t≠Ìng Ph„ t≠Ìng/#bilVongSangDH(0, 325)")
		tinsert(bilTbVSvaDH, "Danh hi÷u V´ song m∑nh t≠Ìng ThËng l‹nh/#bilVongSangDH(0, 326)")
		tinsert(bilTbVSvaDH, "Quay lπi/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K’t thÛc ÆËi thoπi!/bil.OnCancel")
	elseif bilSel == 5 then 
		tinsert(bilTbVSvaDH, "Danh hi÷u V‚ l©m li™n Æ u Qu∏n qu©n/#bilVongSangDH(0, 204)")
		tinsert(bilTbVSvaDH, "Danh hi÷u V‚ l©m li™n Æ u ∏ qu©n/#bilVongSangDH(0, 205)")
		tinsert(bilTbVSvaDH, "Danh hi÷u V‚ l©m li™n Æ u hπng 3/#bilVongSangDH(0, 206)")
		tinsert(bilTbVSvaDH, "Danh hi÷u V‚ l©m li™n Æ u hπng t≠/#bilVongSangDH(0, 207)")
		tinsert(bilTbVSvaDH, "Quay lπi/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K’t thÛc ÆËi thoπi!/bil.OnCancel")
	elseif bilSel == 6 then 
		tinsert(bilTbVSvaDH, "Danh hi÷u Th∏i thÛ Ph≠Óng T≠Íng/#bilVongSangDH(0, 153)")
		tinsert(bilTbVSvaDH, "Danh hi÷u Th∏i thÛ Thµnh ß´/#bilVongSangDH(0, 154)")
		tinsert(bilTbVSvaDH, "Danh hi÷u Th∏i thÛ ßπi L˝/#bilVongSangDH(0, 155)")
		tinsert(bilTbVSvaDH, "Danh hi÷u Th∏i thÛ Bi÷n Kinh/#bilVongSangDH(0, 156)")
		tinsert(bilTbVSvaDH, "Danh hi÷u Th∏i thÛ T≠¨ng D≠¨ng/#bilVongSangDH(0, 157)")
		tinsert(bilTbVSvaDH, "Danh hi÷u Th∏i thÛ D≠¨ng Ch©u/#bilVongSangDH(0, 158)")
		tinsert(bilTbVSvaDH, "Danh hi÷u Th∏i thÛ L©m An/#bilVongSangDH(0, 159)")
		tinsert(bilTbVSvaDH, "Quay lπi/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, "K’t thÛc ÆËi thoπi!/bil.OnCancel")
	else
		tinsert(bilTbVSvaDH, "Ta thˆ vﬂng s∏ng TOP Cao thÒ/#bilVongSangDH(1)")
		tinsert(bilTbVSvaDH, "Ta thˆ vﬂng s∏ng TOP PhÛ hÈ/#bilVongSangDH(2)")
		tinsert(bilTbVSvaDH, "Ta thˆ vﬂng s∏ng TOP M´n ph∏i/#bilVongSangDH(0,".._bilTitleFaction[GetFaction()][GetSex()].bilTitleID..")")
		tinsert(bilTbVSvaDH, "Ta thˆ vﬂng s∏ng TOP TËng Kim/#bilVongSangDH(4)")
		tinsert(bilTbVSvaDH, "Ta thˆ vﬂng s∏ng TOP Li™n Æ u/#bilVongSangDH(5)")
		tinsert(bilTbVSvaDH, "Ta thˆ vﬂng s∏ng Bang ChÒ chi’m thµnh/#bilVongSangDH(6)")
		tinsert(bilTbVSvaDH, "K’t thÛc ÆËi thoπi!/bil.OnCancel")
	end
	Say("Ch‰n vﬂng s∏ng vµ danh hi÷u mµ bπn muËn!", getn(bilTbVSvaDH), bilTbVSvaDH)
end

function bilMain_TestGame_v3SkillFac(bilSel, bilIDF, bilF, Sel4Set)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local _bil_a = {
		[0] = {{"Thi’u L©m Ph∏i", 0, "shaolin", 1},{"Thi™n V≠¨ng Bang", 1, "tianwang", 3}},
		[1] = {{"ß≠Íng M´n Ph∏i", 2, "tangmen", 3},{"NgÚ ßÈc Gi∏o", 3, "wudu", 2}},
		[2] = {{"Nga My Ph∏i", 4, "emei", 1},{"ThÛy Y™n Ph∏i", 5, "cuiyan", 3}},
		[3] = {{"C∏i Bang", 6, "gaibang", 1},{"Thi™n Nh…n Gi∏o", 7, "tianren", 2}},
		[4] = {{"V‚ ßang Ph∏i", 8, "wudang", 1},{"C´n L´n Ph∏i", 9, "kunlun", 3}},
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
		return Msg2Player(bil.C(10, "NhÀn Æ≠Óc bÈ k¸ n®ng m´n ph∏i!"))
	end
	if GetLastFactionNumber() == -1 then
		local bil_1 = {}
		tinsert(bil_1, _bil_a[GetSeries()][1][1].."/#bilMain_TestGame_v3SkillFac(2, "..GetSeries()..", 1, "..((bilSel ~= 0) and bilSel or 0)..")")
		tinsert(bil_1, _bil_a[GetSeries()][2][1].."/#bilMain_TestGame_v3SkillFac(2, "..GetSeries()..", 2, "..((bilSel ~= 0) and bilSel or 0)..")")
		tinsert(bil_1, "K’t thÛc ÆËi thoπi!/bil.OnCancel")
		return Say("Vﬁ thi’u hi÷p vui lﬂng ch‰n m´n ph∏i muËn gia nhÀp!", getn(bil_1), bil_1)
	else
		return bilMain_TestGame_v3SkillFac(((bilSel ~= 0) and bilSel or 0), GetLastFactionNumber())
	end
end

function bilMain_TestGame_v3_TrangBiG(bil_In_1)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = {
		{bil_1 = "ßﬁnh QuËc thanh xa tr≠Íng sam", bil_2 = {159}, bil_3 = 4},
		{bil_1 = "ßﬁnh QuËc ´ xa ph∏t qu∏n", bil_2 = {160}, bil_3 = 6},
		{bil_1 = "ßﬁnh QuËc x›ch quy™n nhuy‘n ngoa", bil_2 = {161}, bil_3 = 4},
		{bil_1 = "ßﬁnh QuËc tˆ Æªng hÈ uy”n", bil_2 = {162}, bil_3 = 4},
		{bil_1 = "ßﬁnh QuËc ng©n tµm y™u Æ∏i", bil_2 = {163}, bil_3 = 4},
		{bil_1 = "An Bang b®ng tinh thπch hπng li™n", bil_2 = {164}, bil_3 = 6},
		{bil_1 = "An Bang cÛc hoa thπch chÿ hoµn", bil_2 = {165}, bil_3 = 6},
		{bil_1 = "An Bang Æi“n hoµng thπch ng‰c bÈi", bil_2 = {166}, bil_3 = 6},
		{bil_1 = "An Bang k™ huy’t thπch giÌi chÿ", bil_2 = {167}, bil_3 = 6},
	}
	if bil_In_1 then
		if bil_In_1 == 1 then
			for bil_l_1 = 6, 9 do
				AddGoldItem(0, bil_1[bil_l_1].bil_2[1])
			end
			return Msg2Player(bil.C(10, "NhÀn Æ≠Óc bÈ trang bﬁ An Bang!"))
		elseif bil_In_1 == 2 then
			for bil_l_1 = 1, 5 do
				AddGoldItem(0, bil_1[bil_l_1].bil_2[1])
			end
			return Msg2Player(bil.C(10, "NhÀn Æ≠Óc bÈ trang bﬁ ßﬁnh QuËc!"))
		end
	end
end

function bilMain_TestGame_v3_TrangBi(bil_In_1, bil_nDetailType, bil_nParticularType, bil_W, bil_H, bilSeri)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = 
	{
		{bilName = "Ki’m", bilItem = {0, 0, 1, 3}},{bilName = "ßao", bilItem = {0, 1, 1, 4}},
		{bilName = "BÊng", bilItem = {0, 2, 1, 4}},{bilName = "Th≠¨ng", bilItem = {0, 3, 1, 4}},
		{bilName = "ChÔy", bilItem = {0, 4, 2, 2}},{bilName = "Song ßao", bilItem = {0, 5, 2, 3}},
		{bilName = "Phi Ti™u", bilItem = {1, 0, 1, 1}},{bilName = "Phi ßao", bilItem = {1, 1, 1, 1}},
		{bilName = "TÙ Ti‘n", bilItem = {1, 2, 2, 2}},{bilName = "∏o - Nam", bilItem = {2, random(0, 6), 2, 3}},
		{bilName = "∏o - N˜", bilItem = {2, random(7, 13), 2, 3}},{bilName = "Nh…n", bilItem = {3,0, 1, 1}},
		{bilName = "D©y chuy“n - Nam", bilItem = {4, 1, 2, 1}},{bilName = "D©y chuy“n - N˜", bilItem = {4, 0, 2, 1}},
		{bilName = "Giµy - Nam", bilItem = {5, random(0, 1), 2, 2}},{bilName = "Giµy - N˜", bilItem = {5, random(2, 3), 2, 2}},
		{bilName = "Thæt l≠ng - Nam", bilItem = {6, 1, 2, 1}},{bilName = "Thæt l≠ng - N˜", bilItem = {6, 0, 2, 1}},
		{bilName = "MÚ - Nam", bilItem = {7, random(0, 6), 2, 2}},{bilName = "MÚ - N˜", bilItem = {7, random(7, 13), 2, 2}},
		{bilName = "Bao tay - Nam", bilItem = {8, 1, 1, 2}},{bilName = "Bao tay - N˜", bilItem = {8, 0, 1, 2}},
		{bilName = "Ng‰c bÈi - Nam", bilItem = {9, 1, 1, 2}},{bilName = "Ng‰c bÈi - N˜", bilItem = {9, 0, 1, 2}},
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
				return Msg2Player(bil.C(10,"ß∑ nhÀn Æ≠Óc "..bil_3.." m„n trang bﬁ!"))
			else
				return Talk(1, "", "Hµnh trang cÒa c∏c hπ c„ vŒ bıa bÈn qu∏, h∑y sæp x’p lπi vµ Æ” trËng hµnh trang "..bil.C(1,bil_W.."x"..bil_H).."!")
			end
		else
			return Say("Ch‰n h÷ cÒa m„n trang bﬁ!", 6,
				"Trang bﬁ h÷ Kim/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 0)",
				"Trang bﬁ h÷ MÈc/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 1)",
				"Trang bﬁ h÷ ThÒy/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 2)",
				"Trang bﬁ h÷ H·a/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 3)",
				"Trang bﬁ h÷ ThÊ/#bilMain_TestGame_v3_TrangBi(0, "..bil_nDetailType..", "..bil_nParticularType..", "..bil_W..", "..bil_H..", 4)",
				"K’t thÛc ÆËi thoπi!/bil.OnCancel")
		end
	end
	if bil_In_1 then
		if bil_In_1 == 1 then
			for bil_l_1 = 1, 9 do
				tinsert(bil_2, "Ta muËn l y "..bil_1[bil_l_1].bilName.."/#bilMain_TestGame_v3_TrangBi(0, "..bil_1[bil_l_1].bilItem[1]..", "..bil_1[bil_l_1].bilItem[2]..", "..bil_1[bil_l_1].bilItem[3]..", "..bil_1[bil_l_1].bilItem[4]..")")
			end
		elseif bil_In_1 == 2 then
			for bil_l_1 = 10, 20 do
				tinsert(bil_2, "Ta muËn l y "..bil_1[bil_l_1].bilName.."/#bilMain_TestGame_v3_TrangBi(0, "..bil_1[bil_l_1].bilItem[1]..", "..bil_1[bil_l_1].bilItem[2]..", "..bil_1[bil_l_1].bilItem[3]..", "..bil_1[bil_l_1].bilItem[4]..")")
			end
			tinsert(bil_2, "Trang k’./#bilMain_TestGame_v3_TrangBi(3)")
		elseif bil_In_1 == 3 then
			for bil_l_1 = 21, getn(bil_1) do
				tinsert(bil_2, "Ta muËn l y "..bil_1[bil_l_1].bilName.."/#bilMain_TestGame_v3_TrangBi(0, "..bil_1[bil_l_1].bilItem[1]..", "..bil_1[bil_l_1].bilItem[2]..", "..bil_1[bil_l_1].bilItem[3]..", "..bil_1[bil_l_1].bilItem[4]..")")
			end
			tinsert(bil_2, "Trang tr≠Ìc./#bilMain_TestGame_v3_TrangBi(2)")
		end
		tinsert(bil_2, "K’t thÛc ÆËi thoπi!/bil.OnCancel")
		return Say("Ch‰n m„n trang bﬁ muËn l y!", getn(bil_2), bil_2)
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
		return Msg2Player(bil.C(10, "Thay ÆÊi phe ph∏i thµnh c´ng!"))
	end
	if bil_In_1 then
		if bil_In_1 == 1 then
			while GetLevel() < 199 do
				AddOwnExp(999999999)
			end
			SetTask(2501, 50000000)
			Msg2Player(bil.C(10, "5 tri÷u Æi”m li™n Æ u!"))
			AddRepute(99999)
			Msg2Player(bil.C(10, "danh v‰ng l™n 99999 Æi”m!"))
			SetTask(151, 99999)
			Msg2Player(bil.C(10, "phÛc duy™n l™n 99999 Æi”m!"))
			SetTask(747, 1000000)
			Msg2Player(bil.C(10, "tËng kim l™n 1 tri÷u Æi”m!"))
			AddLeadExp(10000000)
			Msg2Player(bil.C(10, "10 tri÷u Æi”m tµi l∑nh Æπo!"))
			Earn(999999999)
			return Msg2Player(bil.C(10, "ti“n vπn l™n 99 ngh◊n vπn l≠Óng!"))
		elseif bil_In_1 == 2 then
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			AddStackItem(100,4,417,1,1,0,0,0)
			return Msg2Player(bil.C(10, " NhÀn Æ≠Óc 500 ti“n ÆÂng!"))
		elseif bil_In_1 == 3 then
			AddItem(0,10,6,10,1,0,0)
			return Msg2Player(bil.C(10, " NhÀn Æ≠Óc B´n ti™u!"))
		elseif bil_In_1 == 4 then
			return Say("Xin ch‰n phe ph∏i muËn chuy”n ÆÊi!",6, "T©n ThÒ./#bilMain_TestGame_v3_C(0, 0)", "Ch›nh Ph∏i./#bilMain_TestGame_v3_C(0, 1)", "Trung LÀp./#bilMain_TestGame_v3_C(0, 3)", "Tµ Ph∏i./#bilMain_TestGame_v3_C(0, 2)", "S∏t ThÒ./#bilMain_TestGame_v3_C(0, 4)", "K’t thÛc ÆËi thoπi!/bil.OnCancel")
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














