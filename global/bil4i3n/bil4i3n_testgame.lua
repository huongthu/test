Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_awardplayerstop.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate.lua")

_bilTestGameContent =
{
	"<color=Orange>L� Quan: <color>",
	"Ta bi�t r�i!/OnCancel",
	"Th�i kh�ng c�n, sau n�y ch�c ch�n s� ��n th�m ng�i!/OnCancel",
}

function bilTestGameMain()
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	-- if GetTask(5999) == 0 then 
		-- return Say(_bilTestGameContent[1].."�� nh�n c�c ph�n th��ng h� tr� y�u c�u ��i  hi�p ph�i ��n g�p "..bC("ora", "T�n Th� Quan").." �� nh�n g�i "..bC("gre","H� tr� t�nth�").." tr��c, l�o �y c� tr�ch nhi�m h� tr� c�c h�u b�i  tr�n h�nh tr�nh b�n t�u giang h�, sau �� h�y ��n ��y g�p ta!", 1, _bilTestGameContent[2])
	-- end
	local bilTbDialog = {}
	tinsert(bilTbDialog, "Ta mu�n nh�n trang b� Ho�ng Kim/#bilTrangBiHoangKim(0)")
	tinsert(bilTbDialog, "Ta mu�n nh�n trang b� Xanh/#bilTrangBiXanh(0)")
	tinsert(bilTbDialog, "Ta mu�n nh�n �i�m v� kinh nghi�m/#bilPointAndExp(0)")
	tinsert(bilTbDialog, "Ta mu�n nh�n K� n�ng M�n Ph�i/#bilSkillFac(0)")
	tinsert(bilTbDialog, "Ta mu�n nh�n V�t ph�m/#bilVatPham(0)")
	tinsert(bilTbDialog, "Ta mu�n nh�n c�c th�n M�/#bilThanMa(0)")
	tinsert(bilTbDialog, "Ta mu�n th�nh l�p Bang h�i/#bilBangHoi(0)")
	tinsert(bilTbDialog, "Ta mu�n nh�n v�ng s�ng v� danh hi�u/#bilVongSangDH(0)")
	tinsert(bilTbDialog, _bilTestGameContent[3])
	Say(_bilTestGameContent[1].."M�y ch� �ang trong qu� tr�nh Open Test, Ta  l� ng��i ph� tr�ch ph�n ph�t to�n b� c�c ph�n th��ng,c�c v�t ph�m theo y�u c�u c�a c�c nh�n s� giang h�,  v� ��i hi�p n�y c� ph�i v� vi�c n�y m� ��n ��y kh�ng?", getn(bilTbDialog), bilTbDialog)
end

function bilSkillFac(bilSel, bilIDF, bilF)
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
		return bilSkillFac(1, GetLastFactionNumber())
	end
	if bilIDF then
		for i = 1, 7 do
			for j = 1, getn(tbAllSkill[GetFaction()][i]) do
				AddMagic(tbAllSkill[GetFaction()][i][j],20)
			end
		end
		for ij = 1, getn(tbAllSkill[GetFaction()][9]) do
			AddMagic(tbAllSkill[GetFaction()][9][ij],20)
		end
		AddMagic(_bilSkill120IDtable[GetLastFactionNumber()][1],20)
		return Msg2Player(bC(1, "Nh�n ���c b� k� n�ng m�n ph�i!"))
	end
	if GetLastFactionNumber() == -1 then
		local bil_1 = {}
		tinsert(bil_1, _bil_a[GetSeries()][1][1].."/#bilSkillFac(2, "..GetSeries()..", 1)")
		tinsert(bil_1, _bil_a[GetSeries()][2][1].."/#bilSkillFac(2, "..GetSeries()..", 2)")
		tinsert(bil_1, "Quay l�i/bilTestGameMain")
		tinsert(bil_1, _bilTestGameContent[3])
		return Say(_bilTestGameContent[1].."V� thi�u hi�p vui l�ng ch�n m�n ph�i mu�n gia nh�p!", getn(bil_1), bil_1)
	else
		return bilSkillFac(1, GetLastFactionNumber())
	end
end

function bilVongSangDH(bilSel, bilTileID)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	if GetLastFactionNumber() == -1 then return bilNeedJoinFac() end
	if bilTileID then
		Title_AddTitle(bilTileID, 2, 10000000)
		Title_ActiveTitle(bilTileID)
		return Msg2Player(bC(1,"C�c h� �� nh�n ���c danh hi�u, xin ch�c m�ng!"))
	end
	local bilTbVSvaDH = {}
	if bilSel == 1 then 
		for i = 1, getn(_bilTitleTopLvl) do
			tinsert(bilTbVSvaDH, "Danh hi�u ".._bilTitleTopLvl[i].TitleName.."/#bilVongSangDH(0, ".._bilTitleTopLvl[i].bilTitleID..")")
		end
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, _bilTestGameContent[3])
	elseif bilSel == 2 then 
		for i = 1, getn(_bilTitleTopMoney) do
			tinsert(bilTbVSvaDH, "Danh hi�u ".._bilTitleTopMoney[i].TitleName.."/#bilVongSangDH(0, ".._bilTitleTopMoney[i].bilTitleID..")")
		end
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, _bilTestGameContent[3])
	elseif bilSel == 4 then 
		tinsert(bilTbVSvaDH, "Danh hi�u V� song m�nh t��ng ��i t��ng/#bilVongSangDH(0, 324)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� song m�nh t��ng Ph� t��ng/#bilVongSangDH(0, 325)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� song m�nh t��ng Th�ng l�nh/#bilVongSangDH(0, 326)")
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, _bilTestGameContent[3])
	elseif bilSel == 5 then 
		tinsert(bilTbVSvaDH, "Danh hi�u V� l�m li�n ��u Qu�n qu�n/#bilVongSangDH(0, 204)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� l�m li�n ��u � qu�n/#bilVongSangDH(0, 205)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� l�m li�n ��u h�ng 3/#bilVongSangDH(0, 206)")
		tinsert(bilTbVSvaDH, "Danh hi�u V� l�m li�n ��u h�ng t�/#bilVongSangDH(0, 207)")
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, _bilTestGameContent[3])
	elseif bilSel == 6 then 
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� Ph��ng T��ng/#bilVongSangDH(0, 153)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� Th�nh ��/#bilVongSangDH(0, 154)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� ��i L�/#bilVongSangDH(0, 155)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� Bi�n Kinh/#bilVongSangDH(0, 156)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� T��ng D��ng/#bilVongSangDH(0, 157)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� D��ng Ch�u/#bilVongSangDH(0, 158)")
		tinsert(bilTbVSvaDH, "Danh hi�u Th�i th� L�m An/#bilVongSangDH(0, 159)")
		tinsert(bilTbVSvaDH, "Quay l�i/#bilVongSangDH(0)")
		tinsert(bilTbVSvaDH, _bilTestGameContent[3])
	else
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP Cao th�/#bilVongSangDH(1)")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP Ph� h�/#bilVongSangDH(2)")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP M�n ph�i/#bilVongSangDH(0,".._bilTitleFaction[GetFaction()][GetSex()].bilTitleID..")")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP T�ng Kim/#bilVongSangDH(4)")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng TOP Li�n ��u/#bilVongSangDH(5)")
		tinsert(bilTbVSvaDH, "Ta th� v�ng s�ng Bang Ch� chi�m th�nh/#bilVongSangDH(6)")
		tinsert(bilTbVSvaDH, "Quay l�i/bilTestGameMain")
		tinsert(bilTbVSvaDH, _bilTestGameContent[3])
	end
	Say(_bilTestGameContent[1].."���c s� �y nhi�m c�a ��c C� Ki�m, ta s� ph�nph�t cho c�c h� b�t c� lo�i danh hi�u n�o theo y�u   c�u, nh�ng n� kh�ng ���c l�u khi c�c h� r�i m�ng V�ngs�ng v� Danh hi�u s� m�t c�c h� c� th� nh�n l�i, c�c hi�p kh�ch ���c Vinh danh th�t s� m�i c� th� gi� n�  trong kho�n th�i gian d�i, v�y c�c h� c�n L�o gi�p <enter>cho Danh hi�u g� n�o?", getn(bilTbVSvaDH), bilTbVSvaDH)
end

function bilThanMa(bilSel)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	if bilSel == 1 then AddItem(0,10,5,6,0,0) return Msg2Player(bC(1,"�� nh�n ���c th�n m� ")..bC(2,"� V�n ��p Tuy�t"))
	elseif bilSel == 2 then AddItem(0,10,5,7,0,0) return Msg2Player(bC(1,"�� nh�n ���c th�n m� ")..bC(2,"X�ch Th�"))
	elseif bilSel == 3 then AddItem(0,10,5,8,0,0) return Msg2Player(bC(1,"�� nh�n ���c th�n m� ")..bC(2,"Tuy�t �nh"))
	elseif bilSel == 4 then AddItem(0,10,5,9,0,0) return Msg2Player(bC(1,"�� nh�n ���c th�n m� ")..bC(2,"��ch L�"))
	elseif bilSel == 5 then AddItem(0,10,5,10,0,0) return Msg2Player(bC(1,"�� nh�n ���c th�n m� ")..bC(2,"Chi�u D� Ng�c S� T�"))
	elseif bilSel == 6 then AddItem(0,10,6,10,0,0) return Msg2Player(bC(1,"�� nh�n ���c th�n m� ")..bC(2,"B�n Ti�u"))
	elseif bilSel == 7 then AddItem(0,10,33,10,0,0) return Msg2Player(bC(1,"�� nh�n ���c th�n m� ")..bC(2,"[Li�n ��u] B�n Ti�u"))
	elseif bilSel == 8 then AddItem(0,10,8,10,0,0) return Msg2Player(bC(1,"�� nh�n ���c th�n m� ")..bC(2,"Phi V�n"))
	end
	bilTbThanMa = {}
	tinsert(bilTbThanMa, "Ta mu�n th� th�n m� [Li�n ��u] B�n Ti�u/#bilThanMa(7)")
	tinsert(bilTbThanMa, "Ta mu�n th� th�n m� B�n Ti�u/#bilThanMa(6)")
	tinsert(bilTbThanMa, "Ta mu�n th� th�n m� Phi V�n/#bilThanMa(8)")
	tinsert(bilTbThanMa, "Ta mu�n th� th�n m� Chi�u D� Ng�c S� T�/#bilThanMa(5)")
	tinsert(bilTbThanMa, "Ta mu�n th� th�n m� ��ch L�/#bilThanMa(4)")
	tinsert(bilTbThanMa, "Ta mu�n th� th�n m� Tuy�t �nh/#bilThanMa(3)")
	tinsert(bilTbThanMa, "Ta mu�n th� th�n m� X�ch Th�/#bilThanMa(2)")
	tinsert(bilTbThanMa, "Ta mu�n th� th�n m� � V�n ��p Tuy�t/#bilThanMa(1)")
	tinsert(bilTbThanMa, "Quay l�i/bilTestGameMain")
	tinsert(bilTbThanMa, _bilTestGameContent[3])
	Say(_bilTestGameContent[1].."Ch� c�a L�o c� 1 s� chi�n m� m� thi�n h� <enter>h�ng mong ��c trong tay c�a ��c c� ki�m ch�, ch�ng <enter>hay c�c h� c�n lo�i th�n m� n�o?", getn(bilTbThanMa), bilTbThanMa)
end

function bilTrangBiXanh(bilSel, nDetailType, nParticularType, W, H, bilSeri)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bilTbTrangBiXanh, bilNumLoop = {}, 0
	if nDetailType then
		if bilSeri then
			if CountFreeRoomByWH(W, H) > 0 then
				for i = 1, CountFreeRoomByWH(W, H) do
					-- AddItem(0, nDetailType, nParticularType, 10, bilSeri, 139, 10)
					AddItem(0, nDetailType, nParticularType, 10, bilSeri, 250, 10)
					bilNumLoop = bilNumLoop + 1
				end
				return Msg2Player(bC(1,"�� nh�n ���c "..bC(2,bilNumLoop).." m�n trang b� xanh, c�c h� c� y�u c�u g� th�m kh�ng!"))
			else
				return Talk(1, "", _bilTestGameContent[1].."H�nh trang c�a c�c h� c� v� b�a b�n qu�, h�y s�p x�p l�i v� �� tr�ng h�nh trang "..bC(1,W.."x"..H).."!")
			end
		else
			return Say(_bilTestGameContent[1].."C�c h� c� th� ch�n ng� h�nh m� m�nh c�n!", 7, 
				"Trang b� H� Kim/#bilTrangBiXanh(0, "..nDetailType..", "..nParticularType..", "..W..", "..H..", 0)",
				"Trang b� H� M�c/#bilTrangBiXanh(0, "..nDetailType..", "..nParticularType..", "..W..", "..H..", 1)",
				"Trang b� H� Th�y/#bilTrangBiXanh(0, "..nDetailType..", "..nParticularType..", "..W..", "..H..", 2)",
				"Trang b� H� H�a/#bilTrangBiXanh(0, "..nDetailType..", "..nParticularType..", "..W..", "..H..", 3)",
				"Trang b� H� Th�/#bilTrangBiXanh(0, "..nDetailType..", "..nParticularType..", "..W..", "..H..", 4)",
				"Quay l�i!/bilTestGameMain",
				_bilTestGameContent[3]
				)
		end
	end
	local bilTbItemXanh = 
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
	if bilSel <= 0 or bilSel == nil then
		tinsert(bilTbTrangBiXanh, "Ta mu�n l�y V� Kh�/#bilTrangBiXanh(1)")
		for j = 10, 20 do
			tinsert(bilTbTrangBiXanh, "Ta mu�n l�y "..bilTbItemXanh[j].bilName.."/#bilTrangBiXanh(0,"..bilTbItemXanh[j].bilItem[1]..", "..bilTbItemXanh[j].bilItem[2]..","..bilTbItemXanh[j].bilItem[3]..","..bilTbItemXanh[j].bilItem[4]..")")
		end
		tinsert(bilTbTrangBiXanh, "Trang K�/#bilTrangBiXanh(2)")
		tinsert(bilTbTrangBiXanh, "Quay l�i/bilTestGameMain")
		tinsert(bilTbTrangBiXanh, _bilTestGameContent[3])
	elseif bilSel == 1 then
		for i = 1, 9 do
			tinsert(bilTbTrangBiXanh, "Ta mu�n l�y "..bilTbItemXanh[i].bilName.."/#bilTrangBiXanh(0,"..bilTbItemXanh[i].bilItem[1]..", "..bilTbItemXanh[i].bilItem[2]..","..bilTbItemXanh[i].bilItem[3]..","..bilTbItemXanh[i].bilItem[4]..")")
		end
		tinsert(bilTbTrangBiXanh, "Quay l�i/#bilTrangBiXanh(0)")
		tinsert(bilTbTrangBiXanh, _bilTestGameContent[3])
	elseif bilSel == 2 then
		for l = 21, getn(bilTbItemXanh) do
			tinsert(bilTbTrangBiXanh, "Ta mu�n l�y "..bilTbItemXanh[l].bilName.."/#bilTrangBiXanh(0,"..bilTbItemXanh[l].bilItem[1]..", "..bilTbItemXanh[l].bilItem[2]..","..bilTbItemXanh[l].bilItem[3]..","..bilTbItemXanh[l].bilItem[4]..")")
		end
		tinsert(bilTbTrangBiXanh, "Trang Tr��c/#bilTrangBiXanh(0)")
		tinsert(bilTbTrangBiXanh, _bilTestGameContent[3])
	end
	Say(_bilTestGameContent[1].."Haha, � ch� c�a L�o c� r�t nhi�u c�c trang  b� t� t�n th� cho ��n cao th�, v� v�ng c�c thu�c t�nh�m d��ng ng� h�nh c�a tr�i ��t, ch�ng hay v� ��i hi�p��y c�n t�i th�n binh n�o?", getn(bilTbTrangBiXanh), bilTbTrangBiXanh)
end

function bilBangHoi(bilSel)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	if GetLastFactionNumber() == -1 then return bilNeedJoinFac() end
	local bilTbBangHoi = {}
	if bilSel == 1 then SetCamp(4); SetCurCamp(4); AddRepute(100000); AddLeadExp(10000000); AddEventItem(195); Earn(1000000); while(GetLevel() < 100) do AddOwnExp(99999999) end return Msg2Player(bC(1, "C�c h� �� h�i t� �� c�c ti�u chu�nc�a m�t bang ch�, h�y ti�n h�nh th�nh l�p bang h�i v� d�n d�t c�c anh em c�a m�nh �i n�o!")) end
	if bilSel == 2 then local tongname = GetTong(); if tongname ~= "" or tongname == nil then return Msg2Player(bC(2, "Ch�ng ph�i c�c h� �� c� bang h�i  r�i sao!")) end if (GetCash() >= 1000000) then Pay(1000000); DelItem(195); SetTask(99,1); CreateTong(1); else return Msg2Player("C�c h� v�n ch�a �� �i�u ki�n �� t�o bang h�i, h�y nh�n l�y �i�u ki�n � l�a ch�n ph�a tr�n!") end return Msg2Player(bC(1, "C�c h� �� ti�n h�nh t�o l�p bang  h�i cho ri�ng m�nh, b�y gi� h�y b�t tay v� x�y d�ng bang v� d�n d�t c�c anh em c�a m�nh �i �o�t th�nh c��p boss, x�y d�ng th�nh tr� n�o!")) end
	tinsert(bilTbBangHoi, "Ta mu�n nh�n �i�u ki�n �� t�o Bang H�i/#bilBangHoi(1)")
	tinsert(bilTbBangHoi, "Ta mu�n T�o l�p Bang H�i/#bilBangHoi(2)")
	tinsert(bilTbBangHoi, "Quay l�i/bilTestGameMain")
	tinsert(bilTbBangHoi, _bilTestGameContent[3])
	Say(_bilTestGameContent[1].."L�o s� h� tr� cho c�c h� trong vi�c t�o l�p bang, ch�ng hay c�c h� �� s�n s�ng ch�a?", getn(bilTbBangHoi), bilTbBangHoi)
end

function bilVatPham(bilSel)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bilVatPhamC = {}
	if bilSel > 0 then if CalcFreeItemCellCount() < 3 then return Talk(1, "", _bilTestGameContent[1].."��i hi�p h�y s�p x�p l�i h�nh trang c�a m�nh �i ��, nh�n b�a b�n qu�!") end end
	if bilSel == 1 then Earn(100000000); return Msg2Player(bC("yel", "�� nh�n ���c 10.000 V�n l��ng"))
	elseif bilSel == 2 then AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); AddStackItem(100,4,417,1,1,0,0,0); return Msg2Player(bC("yel", "�� nh�n ���c 1000 Ti�n ��ng"))
	elseif bilSel == 3 then AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); AddItem(4,343,0,0,0,0,0); return Msg2Player(bC("yel", "�� nh�n ���c 1 Kim nguy�n b�o"))
	elseif bilSel == 4 then AddItem(4,238,0,0,0,0,0);AddItem(4,239,0,0,0,0,0);AddItem(4,240,0,0,0,0,0); return Msg2Player(bC("yel", "�� nh�n ���c 1 b� Th�y tinh"))
	-- elseif bilSel == 5 then AddStackItem(50,6,1,147,10,0,0,0,0); return Msg2Player(bC("yel", "�� nh�n ���c 50 vi�n Huy�n tinh c�p 10"))
	-- elseif bilSel == 6 then AddStackItem(50,6,1,149,10,0,0,0,0);AddStackItem(50,6,1,151,10,0,0,0,0);AddStackItem(50,6,1,153,10,0,0,0,0); return Msg2Player(bC("yel", "�� nh�n ���c 1 b� �� hi�n"))
	-- elseif bilSel == 7 then AddStackItem(50,6,1,150,10,0,0,0,0);AddStackItem(50,6,1,152,10,0,0,0,0);AddStackItem(50,6,1,154,10,0,0,0,0); return Msg2Player(bC("yel", "�� nh�n ���c 1 b� �� �n"))
	-- elseif bilSel == 8 then if GetLastFactionNumber() == -1 then return bilNeedJoinFac() end AddItem(6,1,2424,10,0,0,0,0);AddItem(6,1,2424,10,0,0,0,0);AddItem(6,1,2424,10,0,0,0,0);AddItem(6,1,2425,10,0,0,0,0); return Msg2Player(bC("yel", "�� nh�n ���c b� <��i th�nh b� k�p> c�p 90 v� 120"))
	end
	tinsert(bilVatPhamC, "Ta mu�n nh�n 10.000 V�n l��ng/#bilVatPham(1)")
	tinsert(bilVatPhamC, "Ta mu�n nh�n 1000 Ti�n ��ng/#bilVatPham(2)")
	tinsert(bilVatPhamC, "Ta mu�n nh�n 10 Kim nguy�n b�o/#bilVatPham(3)")
	tinsert(bilVatPhamC, "Ta mu�n nh�n 1 b� Th�y tinh/#bilVatPham(4)")
	-- tinsert(bilVatPhamC, "Ta mu�n nh�n b� <��i th�nh b� k�p> c�p 90 v� 120/#bilVatPham(8)")
	-- tinsert(bilVatPhamC, "Ta mu�n nh�n 50 vi�n Huy�n tinh c�p 10/#bilVatPham(5)")
	-- tinsert(bilVatPhamC, "Ta mu�n nh�n 1 b� �� <hi�n> kh�m ��/#bilVatPham(6)")
	-- tinsert(bilVatPhamC, "Ta mu�n nh�n 1 b� �� <�n> kh�m ��/#bilVatPham(7)")
	tinsert(bilVatPhamC, "Quay l�i/bilTestGameMain")
	tinsert(bilVatPhamC, _bilTestGameContent[3])
	Say(_bilTestGameContent[1].."C�c v�t ph�m � ch� c�a L�o v� c�ng phong ph�, ch�ng hay v� ��i hi�p c�n l�y th� g�?", getn(bilVatPhamC), bilVatPhamC)
end

function bilPointAndExp(bilSel)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bilTbPointAndExp = {}
	if bilSel == 1 then 
		local bilLevelE = 199
		if GetLevel() < 120 then
			bilLevelE = 120
		elseif GetLevel() < 150 then
			bilLevelE = 150
		elseif GetLevel() < 180 then
			bilLevelE = 180
		elseif GetLevel() < 199 then
			bilLevelE = 199
		end
		while (GetLevel() < bilLevelE) do 
			AddOwnExp(800000000)
		end
		return Msg2Player(bC(1, "�� nh�n ���c ��ng c�p: "..bilLevelE))
	-- elseif bilSel == 2 then AddOwnExp(200000000); return Msg2Player(bC("yel", "�� nh�n ���c 200 tri�u Kinh nghi�m"))
	elseif bilSel == 3 then AddRepute(100000); return Msg2Player(bC("yel", "�� nh�n ���c 100.000 �i�m Danh V�ng"))
	elseif bilSel == 4 then SetTask(151, GetTask(151) + 100000); return Msg2Player(bC("yel", "�� nh�n ���c 100.000 �i�m Ph�c Duy�n"))
	elseif bilSel == 5 then SetTask(2501, GetTask(2501) + 100000); return Msg2Player(bC("yel", "�� nh�n ���c 100.000 �i�m Vinh D�"))
	elseif bilSel == 6 then SetTask(747, GetTask(747) + 1000000); return Msg2Player(bC("yel", "�� nh�n ���c 1 tri�u �i�m T�ng kim"))
	elseif bilSel == 7 then AddContribution(100000); return Msg2Player(bC("yel", "�� nh�n ���c 100.000 �i�m c�ng hi�n bang h�i"))
	elseif bilSel == 8 then AddLeadExp(10000000); return Msg2Player(bC("yel", "�� nh�n ���c 10 tri�u �i�m T�i l�nh ��o"))
	elseif bilSel == 9 then SetTireTime(36000); return Msg2Player(bC("yel", "�� nh�n ���c 10 gi� th�i gian �� Online"))
	end
	tinsert(bilTbPointAndExp, "Ta mu�n nh�n �i�m Kinh Nghi�m/#bilPointAndExp(1)")
	-- tinsert(bilTbPointAndExp, "Ta mu�n nh�n 200 tri�u �i�m Kinh nghi�m/#bilPointAndExp(2)")
	tinsert(bilTbPointAndExp, "Ta mu�n nh�n 100.000 �i�m Danh v�ng/#bilPointAndExp(3)")
	tinsert(bilTbPointAndExp, "Ta mu�n nh�n 100.000 �i�m Ph�c duy�n/#bilPointAndExp(4)")
	tinsert(bilTbPointAndExp, "Ta mu�n nh�n 100.000 �i�m Vinh d�/#bilPointAndExp(5)")
	tinsert(bilTbPointAndExp, "Ta mu�n nh�n 1 tri�u �i�m T�ng kim/#bilPointAndExp(6)")
	tinsert(bilTbPointAndExp, "Ta mu�n nh�n 100.000 �i�m c�ng hi�n bang h�i/#bilPointAndExp(7)")
	tinsert(bilTbPointAndExp, "Ta mu�n nh�n 10 tri�u �i�m t�i l�nh ��o/#bilPointAndExp(8)")
	tinsert(bilTbPointAndExp, "Ta mu�n nh�n 10 gi� th�i gian �� Online/#bilPointAndExp(9)")
	tinsert(bilTbPointAndExp, "Quay l�i/bilTestGameMain")
	tinsert(bilTbPointAndExp, _bilTestGameContent[3])
	Say(_bilTestGameContent[1].."� ��y ta c� r�y nhi�u lo�i �i�m, ch�ng hay  v� ��i hi�p ��y c�n ta gi�p cho vi�c g� nh�?", getn(bilTbPointAndExp), bilTbPointAndExp)
end

function bilTrangBiHoangKim(bilSel, bilID, bilLoop)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local _bil_a = 
	{
		{bil_1 = "Nhu T�nh tu� t�m ng�c b�i", bil_2 = {193}, bil_3 = 4},
		{bil_1 = "Nhu T�nh ph�ng nghi gi�i ch�", bil_2 = {192}, bil_3 = 4},
		{bil_1 = "Nhu T�nh th�c n� h�ng li�n", bil_2 = {191}, bil_3 = 4},
		{bil_1 = "Nhu T�nh c�n qu�c ngh� th��ng", bil_2 = {190}, bil_3 = 6},
		{bil_1 = "Hi�p C�t t�nh � k�t", bil_2 = {189}, bil_3 = 6},
		{bil_1 = "Hi�p C�t �an t�m gi�i", bil_2 = {188}, bil_3 = 4},
		{bil_1 = "Hi�p C�t �a t�nh ho�n", bil_2 = {187}, bil_3 = 4},
		{bil_1 = "Hi�p C�t thuy�t huy�t sam", bil_2 = {186}, bil_3 = 4},
		{bil_1 = "��nh Qu�c thanh xa tr��ng sam", bil_2 = {159}, bil_3 = 4},
		{bil_1 = "��nh Qu�c � xa ph�t qu�n", bil_2 = {160}, bil_3 = 6},
		{bil_1 = "��nh Qu�c x�ch quy�n nhuy�n ngoa", bil_2 = {161}, bil_3 = 4},
		{bil_1 = "��nh Qu�c t� ��ng h� uy�n", bil_2 = {162}, bil_3 = 4},
		{bil_1 = "��nh Qu�c ng�n t�m y�u ��i", bil_2 = {163}, bil_3 = 4},
		{bil_1 = "An Bang b�ng tinh th�ch h�ng li�n", bil_2 = {164}, bil_3 = 6},
		{bil_1 = "An Bang c�c hoa th�ch ch� ho�n", bil_2 = {165}, bil_3 = 6},
		{bil_1 = "An Bang �i�n ho�ng th�ch ng�c b�i", bil_2 = {166}, bil_3 = 6},
		{bil_1 = "An Bang k� huy�t th�ch gi�i ch�", bil_2 = {167}, bil_3 = 6},
		------------------- V� kh� m�n ph�i ------------------- 18
		{
			{
				bil_4 = "Thi�u L�m Ph�i",
				bil_5 = {
					{6, "C�n ph�p - Ph�c Ma T� Kim C�n"},
					{11, "�ao ph�p - T� Kh�ng Gi�ng Ma Gi�i �ao"},
					{2, "Tay kh�ng - M�ng Long Kim Ti Ch�nh H�ng C� Sa"},
				},
			},
			{
				bil_4 = "Thi�n V��ng Bang",
				bil_5 = {
					{16, "Ch�y ph�p - H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y"},
					{21, "Th��ng ph�p - K� Nghi�p B�n L�i To�n Long th��ng"},
					{26, "�ao ph�p - Ng� Long L��ng Ng�n B�o �ao"},
				},
			},
			{
				bil_4 = "���ng M�n Ph�i",
				bil_5 = {
					{71, "Phi �ao - B�ng H�n ��n Ch� Phi �ao"},
					{76, "B�o v� - Thi�n Quang Hoa V� M�n Thi�n"},
					{81, "Phi ti�u - S�m Hoang Phi Tinh �o�t H�n"},
					{86, "B�y - ��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n"},
				},
			},
			{
				bil_4 = "Ng� ��c Gi�o",
				bil_5 = {
					{57, "N�i c�ng - U Lung X�ch Y�t M�t trang"},
					{61, "�ao ph�p - Minh �o T� S�t ��c Nh�n"},
					{66, "B�a ch� - Ch� Ph��c Ph� gi�p ��u ho�n"},
				},
			},
			{
				bil_4 = "Nga My Ph�i",
				bil_5 = {
					{31, "Ki�m ph�p - V� Gian � Thi�n Ki�m"},
					{39, "N�i c�ng - V� Ma T�y T��ng Ng�c Kh�u"},
					{45, "H� tr� - V� Tr�n Ph�t Quang Ch� Ho�n"},
				},
			},
			{
				bil_4 = "Th�y Y�n Ph�i",
				bil_5 = {
					{46, "��n �ao - T� Ho�ng Ph�ng Nghi �ao"},
					{51, "Song �ao - B�ch H�i Uy�n ��ng Li�n Ho�n �ao"},
				},
			},
			{
				bil_4 = "C�i Bang Ph�i",
				bil_5 = {
					{94, "N�i c�ng - ��ng C�u Kh�ng Long H� Uy�n"},
					{96, "B�ng ph�p - ��ch Kh�i L�c Ng�c Tr��ng"},
				},
			},
			{
				bil_4 = "Thi�n Nh�n Gi�o",
				bil_5 = {
					{101, "Th��ng - Ma S�t Qu� C�c U Minh Th��ng"},
					{111, "TN.L�u Tinh - Ma Th� Li�t Di�m Qu�n Mi�n"},
					{106, "B�a ch� - Ma Ho�ng Kim Gi�p Kh�i"},
				},
			},
			{
				bil_4 = "V� �ang Ph�i",
				bil_5 = {
					{116, "N�i c�ng - L�ng Nh�c Th�i C�c Ki�m"},
					{121, "Ki�m ph�p - C�p Phong Ch�n V� Ki�m"},
				},
			},
			{
				bil_4 = "C�n L�n Ph�i",
				bil_5 = {
					{126, "�ao ph�p - S��ng Tinh Thi�n Ni�n H�n Thi�t"},
					{131, "N�i c�ng - L�i Khung H�n Tung B�ng B�ch quan"},
					{140, "B�a ch� - V� �o Tung Phong Tuy�t �nh ngoa"},
				},
			},
		},
		------------------- V� kh� m�n ph�i ------------------- 18
	}
	if bilSel == 1 then
		local bil_4 = bilID + bilLoop - 1
		for i = bilID, bil_4 do
			if  CalcFreeItemCellCount() < _bil_a[i].bil_3 then
				return Say(_bilTestGameContent[1].."H�nh nh� h�nh trang c�a ��i hi�p qu� b�a b�n n�n kh�ng th� nh�n �� b� trang b�, ng�i h�y s�p x�p l�i r�i ti�n h�nh nh�n l�i!", 1, "Ta bi�t r�i!/OnCancel")
			else
				AddGoldItem(0, _bil_a[i].bil_2[1])
				Msg2Player(bC(1, "Nh�n ���c: ")..bC(2, _bil_a[i].bil_1))
			end
		end
		return
	elseif bilSel == 2 then
		if bilLoop then
			AddGoldItem(0, _bil_a[18][bilID].bil_5[bilLoop][1])
			return Msg2Player(bC(1, "Nh�n ���c: ")..bC(2, _bil_a[18][bilID].bil_5[bilLoop][2]))
		end
	end
	local _bil_b = {}
	if bilSel == 0 then
		tinsert(_bil_b, "Ta mu�n l�y V� Kh� Tr�n Ph�i/#bilTrangBiHoangKim(2)")
		tinsert(_bil_b, "Nguy�n li�u h�p th�nh �� ph� Tr�n Ph�i/#bilTestGameDoPhoTranPhai(0)")
		tinsert(_bil_b, "Ta mu�n l�y trang b� An Bang/#bilTrangBiHoangKim(1, 14, 4)")
		tinsert(_bil_b, "Ta mu�n l�y trang b� ��nh Qu�c/#bilTrangBiHoangKim(1, 9, 5)")
		tinsert(_bil_b, "Ta mu�n l�y trang b� Hi�p C�t/#bilTrangBiHoangKim(1, 5, 4)")
		tinsert(_bil_b, "Ta mu�n l�y trang b� Nhu T�nh/#bilTrangBiHoangKim(1, 1, 4)")
	elseif bilSel == 2 then
		if bilID then
			for i = 1, getn(_bil_a[18][bilID].bil_5) do
				tinsert(_bil_b, _bil_a[18][bilID].bil_5[i][2].."/#bilTrangBiHoangKim(2,"..bilID..", "..i..")")
			end
		else
			for i = 1, getn(_bil_a[18]) do
				tinsert(_bil_b, "Ta mu�n l�y V� Kh� ".._bil_a[18][i].bil_4.."/#bilTrangBiHoangKim(2,"..i..")")
			end
		end
	end
		tinsert(_bil_b, "Quay l�i/bilTestGameMain")
		tinsert(_bil_b, _bilTestGameContent[3])
	return Say(_bilTestGameContent[1].."V� ��i hi�p c�n l�y � ch� c�a ta m�n trang  b� Ho�ng Kim n�o, � ��y ta ch� c� "..bC("yel", "Nhu T�nh, Hi�p C�t,��nh Qu�c, An Bang, V� kh� tr�n ph�i").." th�i, kh�ng bi�t��p �ng �� nhu c�u c�a ng�i kh�ng?", getn(_bil_b), _bil_b)
end

function bilTestGameDoPhoTranPhai(bilSel, bilID, bilIdItem)
	if bilOpenTestGame ~= 1 and GetName() ~= bilNameOfGameMaster then return end
	local bil_1 = GetLastFactionNumber()
	if bil_1 == -1 then
		return Say(_bilTestGameContent[1].."V� thi�u hi�p ��y "..bC(1, "Ch�a gia nh�p ph�i").." n�n kh�ng th� nh�n nguy�n li�u �� kh�m n�m �� ph� m�n ph�i, ng��i h�y gia nh�p m�n ph�i b�t k� r�i quay l�i g�p ta!", 1, "Ta bi�t r�i!/OnCancel")
	end
	local bil_2 = {}
	if bilSel == 2 then
		local bil_3 = _bilTbAtlasCompound[bil_1][bilID][bilIdItem].bilAtlasNL
		AddItem(6,1,_bilTbAtlasCompound[bil_1][bilID][bilIdItem].bilAtlasName[2],1,0,0)
		AddItem(6,1,147,10,0,0)
		for i = 1, getn(bil_3) do
			local bilAddID =  bil_3[i][1]
			local bilAddLv =  bil_3[i][2]
			local bilAddSeri =  bil_3[i][3]
			local bilAddMagic =  bil_3[i][4]
			if bilAddID ~= nil then
				if bil_3[i][2] == nil then
					AddItem(6,1,bil_3[i][1],1,0,0)
				else
					if bilAddSeri == nil then bilAddSeri = 0 end
					-- AddItemEx(4, 37122, 0, 6, 1, bilAddID, bilAddLv, bilAddSeri, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic);
					AddItemEx(4, random(1, 37122), 0, 6, 1, bilAddID, bilAddLv, bilAddSeri, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic, bilAddMagic);
				end
			end
		end
		Msg2Player(bC(1, "�� nh�n ���c b� nguy�n li�u: ")..bC(2, _bilTbAtlasCompound[bil_1][bilID][bilIdItem].bilAtlasName[1]))
		local bilStrSay = "��i hi�p c� th� mua "..bC(1, "M�nh Thi�n Th�ch").." � "..bC(1, "H�ng Rong c�c Th�nh Th�").." v� ��n th� r�n th�nh th� �� ��c th�nh m�nh trang b� t��ng �ng!"
		Msg2Player(bilStrSay)
		-- return Say(_bilTestGameContent[1]..bilStrSay)
		return Talk(1, "", _bilTestGameContent[1]..bilStrSay)
	end
	if bilSel == 1 then
		for i = 2, getn(_bilTbAtlasCompound[bil_1][bilID]) do
			tinsert(bil_2, _bilTbAtlasCompound[bil_1][bilID][i].bilAtlasName[1].."/#bilTestGameDoPhoTranPhai(2, "..bilID..", "..i..")")
		end
	else
		for i = 1, getn(_bilTbAtlasCompound[bil_1]) do
			tinsert(bil_2, _bilTbAtlasCompound[bil_1][i][1].bilEquipName.."/#bilTestGameDoPhoTranPhai(1, "..i..")")
		end
	end
	tinsert(bil_2, "Quay l�i/#bilTrangBiHoangKim(0)")
	tinsert(bil_2, _bilTestGameContent[3])
	return Say(_bilTestGameContent[1].."V� thi�u hi�p vui l�ng ch�n b� trang b� m� m�nh th�ch, ta c� th� cung c�p ��y �� c�c nguy�n li�u cho t�ng trang b�!", getn(bil_2), bil_2)
end

function bilNeedJoinFac()
	Talk(2, "", _bilTestGameContent[1].."C�c h� v�n c�n l� 1 v� danh ti�u t�t, kh�ng th� th�c hi�n t�nh n�ng n�y, h�y gia nh�p m�n ph�i   r�i L�o m�i c� th� gi�p ���c!", _bilTestGameContent[1].."C�c h� h�y ��n g�p "..bC(4, "T�n Th� Quan").." nh� gi�p �� g�i t�n th� v� ��n g�p c�c "..bC(4,"NPC M�n ph�i").." �� ti�n h�nh gia nh�p ph�i. "..bC(2, "nh�n B� k�p k� n�ng c�p 90 t�i T�n Th� Quan!"))
	Msg2Player("C�c h� h�y ��n g�p "..bC(4, "T�n Th� Quan").."   nh� gi�p �� g�i t�n th� v� ��n g�p c�c "..bC(4,"NPC M�nph�i").." �� ti�n h�nh gia nh�p ph�i. "..bC(2, "nh�n B� k�p  k� n�ng c�p 90 trong g�i h� tr� c�p 80 ch� T�n Th� Quan!"))
end

function bC(CodeColor, bilStr)
	local bilColorTb = {yel = "yellow",gre = "green",ora = "Orange",blu = "blue",red = "red",woo = "wood",fir = "fire",}
	local bilColorTbNum = {"yellow","green","red","Orange",}
	if type(CodeColor) == "number" then return "<color="..bilColorTbNum[CodeColor]..">"..bilStr.."<color>" end
	return "<color="..bilColorTb[CodeColor]..">"..bilStr.."<color>"
end

function OnCancel() end