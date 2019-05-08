-- Create & Modified by bil4i3n
-- B�n ng�a D��ng Ch�u - 205 198
	
-- Nguy�n v�t li�u d�ng �� n�ng c�p chi�n m�
	-- C� t��i - 6,1,4272 :  mua � B� ch� ti�m v�t nu�i D��ng Ch�u 224,193
			-- x�p ch�ng, gi� m�i c�i l� 5 v�n
	-- D�y th�ng 6,1,4273 : mua � B� ch� ti�m v�t nu�i D��ng Ch�u 224,193
			-- x�p ch�ng, gi� m�i c�i l� 5 v�n
	-- B�c ��u thu�n m� thu�t - 6,1,1987 : mua � k� tr�n c�c gi� 50xu
			-- KH�NG x�p ch�ng, gi� 100 ti�n ��ng
	-- V�t ph�m ch�a �i�m t�ch l�y n�ng c�p chi�n m�
		-- B�c ��u th�n m� ��n 6,1,4274 : mua � k� tr�n c�c
		
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

function bilHorseUpgradeMain()
	local bil_1 = {}
	tinsert(bil_1, "Xin gi�p t�i h� n�ng c�p chi�n m�/bilHorseUpgradeMain_1")
	tinsert(bil_1, "Ta mu�n r�t �i�m t�ch l�y n�ng c�p chi�n m�/bilHorseUpgradeMain_GetPoint")
	tinsert(bil_1, "T�m hi�u nguy�n li�u c�n thi�t �� n�ng c�p chi�n m�/#bilHorseUpgradeMainInfoUpgrade()")
	tinsert(bil_1, "K�t th�c ��i tho�i!/bil.OnCancel")
	return Say("Ng�a "..bil.C(1, "X�ch Th�").." c�a Quan V�n Tr��ng c� m�u �� n�i b�t, "..bil.C(1,"� V�n ��p Tuy�t").." c�a Tr��ng Phi l�i c� m�u �en nh� c�ach� nh�n... l� ��c �i�m n�i ti�ng c�a nh�ng con ng�a qu� th�i c� ��i!", getn(bil_1), bil_1)
end

function bilHorseUpgradeMainInfoUpgrade(bil_1)
	if bil_1 then
		if bil_1 == 1 then
			local _bilTbHORSE = { -- Ng�a c�n n�ng c�p
				-- bil_1_1: ng�a - bil_1_2: Name - bil_1_3: b�c ��u thu�n m� thu�t - bil_1_4: c� t��i - bil_1_5: d�y th�ng - bil_1_6: t� l� th�nh c�ng - bil_1_7: t�ch l�y c�n thi�t - bil_1_8: Task s� l�n n�ng c�p th�t b�i
				{bil_1_1 = {0,10,5,6}, bil_1_2 = "� V�n ��p Tuy�t", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5950},
				{bil_1_1 = {0,10,5,7}, bil_1_2 = "X�ch Th�", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5949},
				{bil_1_1 = {0,10,5,8}, bil_1_2 = "Tuy�t �nh", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5951},
				{bil_1_1 = {0,10,5,9}, bil_1_2 = "��ch L�", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5952},
				{bil_1_1 = {0,10,5,10}, bil_1_2 = "Chi�u D� Ng�c S� T�", bil_1_3 = 2, bil_1_4 = 5, bil_1_5 = 2, bil_1_6 = 40, bil_1_7 = 40, bil_1_8 = 5948},
				{bil_1_1 = {0,10,8,10}, bil_1_2 = "Phi V�n", bil_1_3 = 4, bil_1_4 = 6, bil_1_5 = 2, bil_1_6 = 25, bil_1_7 = 80, bil_1_8 = 5947},
				{bil_1_1 = {0,10,6,10}, bil_1_2 = "B�n Ti�u", bil_1_3 = 8, bil_1_4 = 7, bil_1_5 = 2, bil_1_6 = 10, bil_1_7 = 200, bil_1_8 = 5946},
				{bil_1_1 = {0,10,34,10}, bil_1_2 = "X�ch Long C�u", bil_1_3 = 12, bil_1_4 = 8, bil_1_5 = 3, bil_1_6 = 10, bil_1_7 = 300, bil_1_8 = 5938},
				{bil_1_1 = {0,10,35,10}, bil_1_2 = "Si�u Quang", bil_1_3 = 16, bil_1_4 = 10, bil_1_5 = 5, bil_1_6 = 10, bil_1_7 = 400, bil_1_8 = 5937},
			}
			local bil_2 = 0
			local bil_3_G, bil_3_D, bil_3_P, bil_3_L, bil_3_S
			for bil_Loop_1 = 1, getn(_bilTbHORSE) do
				bil_3_G, bil_3_D, bil_3_P, bil_3_L, bil_3_S = GetItemProp(GetGiveItemUnit(1))
				if bil_3_G == 0 and bil_3_D == 10 and bil_3_P == 2 and bil_3_L >= 9 then
					bil_2 = -1
				elseif _bilTbHORSE[bil_Loop_1].bil_1_1[1] == bil_3_G and _bilTbHORSE[bil_Loop_1].bil_1_1[2] == bil_3_D and _bilTbHORSE[bil_Loop_1].bil_1_1[3] == bil_3_P and _bilTbHORSE[bil_Loop_1].bil_1_1[4] == bil_3_L then
					bil_2 = bil_Loop_1
				end
			end
			if bil_2 == 0 then
				return Talk(1,"","C�i n�y kh�ng ph�i chi�n m� ho�c kh�ng th� ti�n h�nh n�ng c�p, xin c�c h� ki�m tra l�i!")
			elseif bil_2 == getn(_bilTbHORSE) then
				return Talk(1,"","L�o phu kh�ng th� n�ng c�p Th�n m� n�y v� �� ��t ��n c�nh gi�i, xin h�y �i t�m v� cao nh�n kh�c!")
			end
			local bil_3
			if bil_2 == -1 then
				bil_2 = 0
				bil_3 = "T�c S��ng"
			else
				bil_3 = _bilTbHORSE[bil_2].bil_1_2
			end
			return Say("Chi�n m�: "..bil.C(1, bil_3)
				.."<enter>N�ng l�n th�n m�: "..bil.C(4, _bilTbHORSE[bil_2+1].bil_1_2)
				.." Y�u c�u:"
				.."<enter>"..bil.C(2, _bilTbHORSE[bil_2+1].bil_1_3.." B�c ��u thu�n m� thu�t")
				.."<enter>"..bil.C(2, _bilTbHORSE[bil_2+1].bil_1_4.." C� t��i")
				.."<enter>"..bil.C(2, _bilTbHORSE[bil_2+1].bil_1_5.." D�y th�ng")
				.."<enter>T� l� th�nh c�ng: "..bil.C(2, _bilTbHORSE[bil_2+1].bil_1_6).."%"
				.."<enter>Ho�c t�ch l�y: "..bil.C(2, GetTask(5953).."/".._bilTbHORSE[bil_2+1].bil_1_7).." �i�m"
				.."<enter>S� l�n th�t b�i: "..bil.C(2, GetTask(_bilTbHORSE[bil_2+1].bil_1_8)).." l�n", 1,
				"Ta bi�t r�i!/bil.OnCancel")
		else
			return Talk(1,"","M�i l�n ch� c� th� t�m hi�u v� 1 lo�i chi�n m�, c�c h� vui l�ng ki�m tra l�i!")
		end
	end
	return GiveItemUI("N�ng C�p Chi�n M�", "��t lo�i chi�n m� m� c�c h� mu�n n�ng c�p v�o ��y!", "bilHorseUpgradeMainInfoUpgrade", "bil.OnCancel", 1);
end

function bilHorseUpgradeMain_GetPoint()
	Say("Hi�n t�i c�c h� �ang c� "..bil.C(1, GetTask(5953)).." �i�m t�ch l�y<enter>M�i l�n r�t ra s� b� m�t "..bil.C(2,"12 �i�m").." ��i l�y v�t ph�m <enter>ch�a 10 �i�m l�u tr�<enter>c�c h� mu�n th�c hi�n thao t�c n�y kh�ng!", 2, "X�c nh�n l�y ra v�t ph�m l�u tr� �i�m/bilHorseUpgradeMain_GetPoint_Ok", "��i ta suy ngh� l�i!/bil.OnCancel")
end

function bilHorseUpgradeMain_GetPoint_Ok()
	if GetTask(5953) >= 12 then
		SetTask(5953, GetTask(5953) - 12)
		AddItem(6,1,4274,1,0,0)
		Msg2Player(bil.C(1, "Nh�n ���c 1 "..bil.C(1,"B�c ��u th�n m� ��n").."!"))
	else
		return Talk(1,"","H�nh nh� �i�m t�ch l�y c�a c�c h� kh�ng �� �� th�c <enter>hi�n thao t�c!")
	end
end

function bilHorseUpgradeMain_1()
	return Talk(1, "bilHorseUpgradeMain_2", "�i�m t�ch l�y n�ng c�p chi�n m� hi�n t�i c�a c�c h�  l� : <color=yellow>"..GetTask(5953).."<color><enter>Khi �� �i�m t�ch l�y s� c� t� l� th�nh c�ng 100% n�ngc�p th�nh c�ng chi�n m�!")
end

function bilHorseUpgradeMain_2()
	GiveItemUI("N�ng C�p Chi�n M�", "V�t ph�m c�n thi�t<enter><color=blue>Chi�n m� c�n n�ng c�p<enter>B�c ��u thu�n m� thu�t<enter>C� t��i<enter>  mua � D��ng Ch�u (224,193)<enter>D�y th�ng<enter>  mua � D��ng Ch�u (224,193)<enter>V� c�c nguy�n li�u t�ng may m�n nh�: Ph�c Duy�n, Th�y Tinh", "bilHorseUpgradeMain_3", "bil.OnCancel", 1);
end

function bilHorseUpgradeMain_3(bilCount)
	local _bilTbHORSE = { -- Ng�a c�n n�ng c�p
		-- bil_1_1: ng�a - bil_1_2: Name - bil_1_3: b�c ��u thu�n m� thu�t - bil_1_4: c� t��i - bil_1_5: d�y th�ng - bil_1_6: t� l� th�nh c�ng - bil_1_7: t�ch l�y c�n thi�t - bil_1_8: Task s� l�n n�ng c�p th�t b�i
		{bil_1_1 = {0,10,5,6}, bil_1_2 = "� V�n ��p Tuy�t", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5950},
		{bil_1_1 = {0,10,5,7}, bil_1_2 = "X�ch Th�", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5949},
		{bil_1_1 = {0,10,5,8}, bil_1_2 = "Tuy�t �nh", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5951},
		{bil_1_1 = {0,10,5,9}, bil_1_2 = "��ch L�", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5952},
		{bil_1_1 = {0,10,5,10}, bil_1_2 = "Chi�u D� Ng�c S� T�", bil_1_3 = 2, bil_1_4 = 5, bil_1_5 = 2, bil_1_6 = 40, bil_1_7 = 40, bil_1_8 = 5948},
		{bil_1_1 = {0,10,8,10}, bil_1_2 = "Phi V�n", bil_1_3 = 4, bil_1_4 = 6, bil_1_5 = 2, bil_1_6 = 25, bil_1_7 = 80, bil_1_8 = 5947},
		{bil_1_1 = {0,10,6,10}, bil_1_2 = "B�n Ti�u", bil_1_3 = 8, bil_1_4 = 7, bil_1_5 = 2, bil_1_6 = 10, bil_1_7 = 200, bil_1_8 = 5946},
		{bil_1_1 = {0,10,34,10}, bil_1_2 = "X�ch Long C�u", bil_1_3 = 12, bil_1_4 = 8, bil_1_5 = 3, bil_1_6 = 10, bil_1_7 = 300, bil_1_8 = 5938},
		{bil_1_1 = {0,10,35,10}, bil_1_2 = "Si�u Quang", bil_1_3 = 16, bil_1_4 = 10, bil_1_5 = 5, bil_1_6 = 10, bil_1_7 = 400, bil_1_8 = 5937},
	}
	local _bilTbNguyenLieu = { -- Nguy�n li�u
		{{6,1,1987}, "B�c ��u thu�n m� thu�t"},
		{{6,1,4272}, "C� t��i"},
		{{6,1,4273}, "D�y th�ng"},
	}
	local _bilLuck = { -- Nguy�n li�u t�ng may m�n
		{{4,238,1}, "Lam th�y tinh"},
		{{4,239,1}, "T� th�y tinh"},
		{{4,240,1}, "L�c th�y tinh"},
		{{6,1,122}, "Ph�c duy�n ti�u"},
		{{6,1,123}, "Ph�c duy�n trung"},
		{{6,1,124}, "Ph�c duy�n ��i"},
	}
	-- bil_2: Th�ng s� ng�a - bil_3: B�c ��u thu�n m� thu�t - bil_4: C� t��i - bil_5: D�y th�ng 
	-- bil_6: Lam th�y tinh - bil_7: T� th�y tinh - bil_8: L�c th�y tinh - bil_9: Ph�c duy�n ti�u - bil_10: Ph�c duy�n trung - bil_11: Ph�c duy�n ��i - bil_14: Danh s�ch ItemIdx - bil_20: L�u th�g s� Item
	local bil_2, bil_3, bil_4, bil_5, bil_6, bil_7, bil_8, bil_9, bil_10, bil_11, bil_14, bil_20 = {}, 0, 0, 0, 0, 0, 0, 0, 0, 0, {}, {}
	if bilCount < 4 then
		return Talk(1,"","V�t ph�m c�n thi�t �� n�ng c�p chi�n m� g�m: <color=yellow>Chi�n m�, B�c ��u thu�n m� thu�t, C� t��i, D�y th�ng<color>, c�c nguy�n li�u t�ng �� may m�n: <color=blue>Ph�c duy�n, Th�y tinh<color>. Xem ra c�c h� v�n ch�a chu�n b� k�!")
	end
	local bil_13
	local bil_1_nG, bil_1_nD, bil_1_nP, bil_1_nL, bil_1_nS
	for bil_12 = 1, bilCount do
		bil_13 = GetGiveItemUnit(bil_12)
		tinsert(bil_14, bil_13)
		bil_1_nG, bil_1_nD, bil_1_nP, bil_1_nL, bil_1_nS = GetItemProp(bil_13);
		tinsert(bil_20, {bil_1_nG, bil_1_nD, bil_1_nP, bil_1_nL, bil_1_nS, 0, GetItemStackCount(bil_13)})
		if bil_1_nG == 0 and bil_1_nD == 10 then
			if GetItemBindState(bil_13) < 0 then
				return Talk(1,"","Chi�n m� c�a c�c h� �� b� phong t�a ti�m n�ng v� ph�mch�t, kh�ng th� ti�n h�nh thu�n h�a, c�c h� vui l�ng t�m 1 chi�n m� kh�ng b� kh�a m�i c� th� ti�n h�nh <enter>n�ng c�p!")
			end
			tinsert(bil_2, {{bil_1_nG, bil_1_nD, bil_1_nP, bil_1_nL}, GetItemName(bil_13)})
		elseif bil_1_nG == 6 and bil_1_nP == _bilTbNguyenLieu[1][1][3] then
			bil_3 = bil_3 + 1
		elseif bil_1_nG == 6 and bil_1_nP == _bilTbNguyenLieu[2][1][3] then 
			bil_4 = bil_4 + GetItemStackCount(bil_13)
		elseif bil_1_nG == 6 and bil_1_nP == _bilTbNguyenLieu[3][1][3] then 
			bil_5 = bil_5 + GetItemStackCount(bil_13)
		elseif bil_1_nG == 4 and bil_1_nD == 238 then 
			bil_6 = bil_6 + 1
		elseif bil_1_nG == 4 and bil_1_nD == 239 then 
			bil_7 = bil_7 + 1
		elseif bil_1_nG == 4 and bil_1_nD == 240 then 
			bil_8 = bil_8 + 1
		elseif bil_1_nG == 6 and bil_1_nP == 122 then 
			bil_9 = bil_9 + 1
		elseif bil_1_nG == 6 and bil_1_nP == 123 then 
			bil_10 = bil_10 + 1
		elseif bil_1_nG == 6 and bil_1_nP == 124 then 
			bil_11 = bil_11 + 1
		else
			return Talk(1,"","�� n�ng c�p t�i h� ch� c�n: <color=yellow>Chi�n m�, B�c ��u thu�n m� thu�t, C� t��i, D�y th�ng<color>, v� c�c v�t ph�m t�ng may m�n nh�: <color=blue>Th�y tinh, Ph�c duy�n<color>, c�c h� vui l�ng ki�m tra l�i nguy�n li�u!")
		end
	end
	if not(bil_2[1]) then
		return Talk(1,"","T�i h� kh�ng t�m th�y lo�i chi�n m� m� c�c h� c�n n�ng c�p, vui l�ng ki�m tra l�i!")
	else
		if bil.False(bil_2[1][2]) then
			return Talk(1,"","T�i h� ch�a m�t l�n nh�n th�y lo�i chi�n m� n�y, c�c h� c� ch�c n� l� chi�n m� ch�!")
		end
	end
	if getn(bil_2) > 1 then 
		return Talk(1,"","T�i h� ch� c� n�ng l�c n�ng c�p m�i l�n 1 chi�n m�, c�c h� vui l�ng ch�n 1 chi�n m� m� m�nh c�n n�ng c�p!")
	end
	local bil_15 = 0
	for bil_16 = 1, getn(_bilTbHORSE) do
		if _bilTbHORSE[bil_16].bil_1_1[1] == bil_2[1][1][1] then
			if _bilTbHORSE[bil_16].bil_1_1[2] == bil_2[1][1][2] then
				if _bilTbHORSE[bil_16].bil_1_1[3] == bil_2[1][1][3] then
					if _bilTbHORSE[bil_16].bil_1_1[4] == bil_2[1][1][4] then
						bil_15 = bil_16 + 1
					end
				end
			end
		end
	end
	if bil_15 == 0 then
		if bil_2[1][1][3] ~= 2 or bil_2[1][1][4] < 9 then
			return Talk(1,"","Lo�i chi�n m� c�p th�p nh�t v� �� t� ch�t �� �� th�ng v� thu�n h�a ch� c� th� l� "..bil.C(1, "T�c S��ng th�n m� c�p 9 tr� l�n").." c�n c�c lo�i ng�a kh�c kh�ng �� t� ch�t �� ti�n h�nh thu�n h�a, c�c h� h�y �i t�m cho m�nh 1 T�c S��ng th�n m� tr��c!")
		else
			bil_15 = 1
		end
	end
	if bil_15 > getn(_bilTbHORSE) then
		return Talk(1, "","Hi�n t�i trong quy�n "..bil.C(1, "B�c ��u thu�n m� thu�t").." ch�a c� ghi ch�p n�o v� t� ch�t v� ti�m n�ng c�a th�n m� "..bil.C(4, _bilTbHORSE[getn(_bilTbHORSE)].bil_1_2).." c�, ta e l� kh�ng gi�p ���c g� cho c�c h� r�i!")
	end
	local bil_17 = bil_2[1][2]
	local bil_18 = _bilTbHORSE[bil_15].bil_1_2
	if bil_3 < _bilTbHORSE[bil_15].bil_1_3 then
		return Say("Chi�n m�: "..bil.C(1, bil_17).."<enter>L�n Th�n m�: "..bil.C(4, bil_18).."<enter>Y�u c�u:<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_3.." B�c ��u thu�n m� thu�t").."<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_4.." C� t��i").."<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_5.." D�y th�ng").."<enter>H�nh nh� c�c h� ch�a chu�n b� k�!", 1,"Ta bi�t r�i, ��i ta thu th�p nguy�n li�u!/bil.OnCancel")
	end
	if bil_4 < _bilTbHORSE[bil_15].bil_1_4 then
		return Say("Chi�n m�: "..bil.C(1, bil_17).."<enter>L�n Th�n m�: "..bil.C(4, bil_18).."<enter>Y�u c�u:<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_3.." B�c ��u thu�n m� thu�t").."<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_4.." C� t��i").."<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_5.." D�y th�ng").."<enter>H�nh nh� c�c h� ch�a chu�n b� k�!", 1,"Ta bi�t r�i, ��i ta thu th�p nguy�n li�u!/bil.OnCancel")
	end
	if bil_5 < _bilTbHORSE[bil_15].bil_1_5 then
		return Say("Chi�n m�: "..bil.C(1, bil_17).."<enter>L�n Th�n m�: "..bil.C(4, bil_18).."<enter>Y�u c�u:<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_3.." B�c ��u thu�n m� thu�t").."<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_4.." C� t��i").."<enter>"..bil.C(2, _bilTbHORSE[bil_15].bil_1_5.." D�y th�ng").."<enter>H�nh nh� c�c h� ch�a chu�n b� k�!", 1,"Ta bi�t r�i, ��i ta thu th�p nguy�n li�u!/bil.OnCancel")
	end
	local bil_19 = ""
	if bil_6 > 0 or bil_7 > 0 or bil_8 > 0 then
		bil_19 = bil_19.." + <color=wood>T.Tinh<color>"
	end
	if bil_9 > 0 or bil_10 > 0 or bil_11 > 0 then
		bil_19 = bil_19.." + <color=wood>P.Duy�n<color>"
	end
	return CreateNewSayEx("<link=image:\\spr\\Ui3\\����װ��\\�ϳ���Ч2.spr><link><color>Chi�n m�: "..bil.C(1, bil_17).."<enter>N�ng c�p l�n th�n m�: "..bil.C(4, bil_18).."<enter>N�ng c�p "..bil_18.." th�t b�i "..GetTask(_bilTbHORSE[bil_15].bil_1_8).." l�n. <enter>T� l� th�nh c�ng: "..bil.C(2, _bilTbHORSE[bil_15].bil_1_6).."% + "..bil.C(2, GetTask(_bilTbHORSE[bil_15].bil_1_8) * 2).."% = "..(bil.C(2, _bilTbHORSE[bil_15].bil_1_6 + (GetTask(_bilTbHORSE[bil_15].bil_1_8) * 2))).."%"..bil_19.."<enter>Ho�c T�ch l�y hi�n t�i: "..bil.C(2, GetTask(5953).."/".._bilTbHORSE[bil_15].bil_1_7).."<enter>C�c h� mu�n ti�n h�nh n�ng c�p ch�?",
		{
			{"X�c nh�n n�ng c�p chi�n m�", bilHorseUpgradeMain_4, {bil_20, bil_15, (bil_6 + bil_7 + bil_8), {bil_9, bil_10, bil_11}, bil_17, bil_14}},
			{"��i ta suy ngh� l�i", bil.OnCancel},
		})
end

local bilHorseUpgradeMain_UPGRADE = function(bil_8, bil_11, bil_12, bil_2, bil_9, bil_14)
	-- bil_8: T� l� th�nh c�ng l�n n�ng c�p c� ��nh - bil_11: T� l� th�nh c�ng h� th�ng - bil_12: Tb th�ng s� Item - bil_2: Row_bilTbHORSE - bil_9: t�n ng�a c�n n�g c�p
	local _bilTbHORSE = { -- Ng�a c�n n�ng c�p
		-- bil_1_1: ng�a - bil_1_2: Name - bil_1_3: b�c ��u thu�n m� thu�t - bil_1_4: c� t��i - bil_1_5: d�y th�ng - bil_1_6: t� l� th�nh c�ng - bil_1_7: t�ch l�y c�n thi�t - bil_1_8: Task s� l�n n�ng c�p th�t b�i
		{bil_1_1 = {0,10,5,6}, bil_1_2 = "� V�n ��p Tuy�t", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5950},
		{bil_1_1 = {0,10,5,7}, bil_1_2 = "X�ch Th�", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5949},
		{bil_1_1 = {0,10,5,8}, bil_1_2 = "Tuy�t �nh", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5951},
		{bil_1_1 = {0,10,5,9}, bil_1_2 = "��ch L�", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5952},
		{bil_1_1 = {0,10,5,10}, bil_1_2 = "Chi�u D� Ng�c S� T�", bil_1_3 = 2, bil_1_4 = 5, bil_1_5 = 2, bil_1_6 = 40, bil_1_7 = 40, bil_1_8 = 5948},
		{bil_1_1 = {0,10,8,10}, bil_1_2 = "Phi V�n", bil_1_3 = 4, bil_1_4 = 6, bil_1_5 = 2, bil_1_6 = 25, bil_1_7 = 80, bil_1_8 = 5947},
		{bil_1_1 = {0,10,6,10}, bil_1_2 = "B�n Ti�u", bil_1_3 = 8, bil_1_4 = 7, bil_1_5 = 2, bil_1_6 = 10, bil_1_7 = 200, bil_1_8 = 5946},
		{bil_1_1 = {0,10,34,10}, bil_1_2 = "X�ch Long C�u", bil_1_3 = 12, bil_1_4 = 8, bil_1_5 = 3, bil_1_6 = 10, bil_1_7 = 300, bil_1_8 = 5938},
		{bil_1_1 = {0,10,35,10}, bil_1_2 = "Si�u Quang", bil_1_3 = 16, bil_1_4 = 10, bil_1_5 = 5, bil_1_6 = 10, bil_1_7 = 400, bil_1_8 = 5937},
	}
	local bil_1_nG, bil_1_nD, bil_1_nP, bil_1_nL, bil_1_nS
	for bil_15 = 1, getn(bil_14) do
		if IsMyItem(bil_14[bil_15]) ~= 1 then
			return Talk(1, "", "Nguy�n v�t li�u kh�ng c�n trong ng��i c�a ��i hi�p kh�ng th� n�ng c�p, xin ki�m tra l�i h�nh trang!")
		end
		bil_1_nG, bil_1_nD, bil_1_nP, bil_1_nL, bil_1_nS = GetItemProp(bil_14[bil_15])
		if bil_1_nG ~= bil_12[bil_15][1] or bil_1_nP ~= bil_12[bil_15][3] then
			return Talk(1, "", "Nguy�n v�t li�u kh�ng c�n trong ng��i c�a ��i hi�p kh�ng th� n�ng c�p, xin ki�m tra l�i h�nh trang!")
		end
	end
	for bil_21 = 1, getn(bil_14) do
		RemoveItemByIndex(bil_14[bil_21])
	end
	if bil_8 >= bil_11 then
		SetTask(_bilTbHORSE[bil_2].bil_1_8, 0)
		SetTask(5953, 0)
		AddItem(_bilTbHORSE[bil_2].bil_1_1[1], _bilTbHORSE[bil_2].bil_1_1[2], _bilTbHORSE[bil_2].bil_1_1[3], _bilTbHORSE[bil_2].bil_1_1[4], random(0,4), 0)
		Msg2Player(bil.C(2, "N�ng c�p th�nh c�ng chi�n m� <color=white>"..bil_9.."<color> l�n th�n m� <color=orange>".._bilTbHORSE[bil_2].bil_1_2.."<color>, Xin ch�c m�ng!"))
		Talk(1, "", bil.C(2, "N�ng c�p th�nh c�ng chi�n m� <color=white>"..bil_9.."<color> l�n th�n m� <color=orange>".._bilTbHORSE[bil_2].bil_1_2.."<color>, Xin ch�c m�ng!"))
		AddLocalNews("��i hi�p "..bil.C(1, GetName()).." t�i B�n ng�a D��ng Ch�u �� n�ng c�p th�nh c�ng chi�n m� "..bil.C(4, bil_9).." l�n Th�n m� "..bil.C(2, _bilTbHORSE[bil_2].bil_1_2)..", Xin ch�c m�ng!")
		return Msg2SubWorld("��i hi�p "..bil.C(1, GetName()).." t�i B�n ng�a D��ng Ch�u �� n�ng c�p th�nh c�ng chi�n m� "..bil.C(4, bil_9).." l�n Th�n m� "..bil.C(2, _bilTbHORSE[bil_2].bil_1_2)..", Xin ch�c m�ng!")
	else
		SetTask(_bilTbHORSE[bil_2].bil_1_8, GetTask(_bilTbHORSE[bil_2].bil_1_8) + 1)
		SetTask(5953, GetTask(5953) + 5)
		bilHorseUpgradeMain_OnCancle(bil_12, 2)
		Msg2Player("L�n n�ng c�p <color=white>"..bil_9.."<color> l�n th�n m� "..bil.C(1, _bilTbHORSE[bil_2].bil_1_2).." n�y �� th�t b�i, to�n b� s� nguy�n li�u s� b� m�t, xin c�c h� ��ng n�n ch�!")
		return Talk(1,"","L�n n�ng c�p <color=white>"..bil_9.."<color> l�n th�n m� "..bil.C(1, _bilTbHORSE[bil_2].bil_1_2).." n�y �� th�t b�i, to�n b� s� nguy�n li�u s� b� m�t, xin c�c h� ��ng n�n ch�!")
	end
end

local bilHorseUpgradeMain_ONBREAK = function(bil_1)
	-- bilHorseUpgradeMain_OnCancle(bil_1, 1)
	Msg2Player("N�ng c�p ng�a b� gi�n �o�n, xin th� l�i!")
	return Talk(1,"","N�ng c�p ng�a b� gi�n �o�n, xin th� l�i!")
end

function bilHorseUpgradeMain_4(bil_1, bil_2, bil_3, bil_4, bil_9, bil_14)
	-- bil_1{}: Tb th�ng s� Item - bil_2: Row_bilTbHORSE - bil_3: T�ng th�y tinh - bil_4{Ph�c duy�n ti�u, trung, ��i} - bil_5: S� l�n th�t b�i - bil_6: T�ch l�y b�n th�n - bil_7: T�ch l�y c�n thi�t - bil_9: T�n ng�a c�n n�g c�p
	-- bil_8: T�ng t� l� th�nh c�ng
	local _bilTbHORSE = { -- Ng�a c�n n�ng c�p
		-- bil_1_1: ng�a - bil_1_2: Name - bil_1_3: b�c ��u thu�n m� thu�t - bil_1_4: c� t��i - bil_1_5: d�y th�ng - bil_1_6: t� l� th�nh c�ng - bil_1_7: t�ch l�y c�n thi�t - bil_1_8: Task s� l�n n�ng c�p th�t b�i
		{bil_1_1 = {0,10,5,6}, bil_1_2 = "� V�n ��p Tuy�t", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5950},
		{bil_1_1 = {0,10,5,7}, bil_1_2 = "X�ch Th�", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5949},
		{bil_1_1 = {0,10,5,8}, bil_1_2 = "Tuy�t �nh", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5951},
		{bil_1_1 = {0,10,5,9}, bil_1_2 = "��ch L�", bil_1_3 = 1, bil_1_4 = 5, bil_1_5 = 1, bil_1_6 = 50, bil_1_7 = 25, bil_1_8 = 5952},
		{bil_1_1 = {0,10,5,10}, bil_1_2 = "Chi�u D� Ng�c S� T�", bil_1_3 = 2, bil_1_4 = 5, bil_1_5 = 2, bil_1_6 = 40, bil_1_7 = 40, bil_1_8 = 5948},
		{bil_1_1 = {0,10,8,10}, bil_1_2 = "Phi V�n", bil_1_3 = 4, bil_1_4 = 6, bil_1_5 = 2, bil_1_6 = 25, bil_1_7 = 80, bil_1_8 = 5947},
		{bil_1_1 = {0,10,6,10}, bil_1_2 = "B�n Ti�u", bil_1_3 = 8, bil_1_4 = 7, bil_1_5 = 2, bil_1_6 = 10, bil_1_7 = 200, bil_1_8 = 5946},
		{bil_1_1 = {0,10,34,10}, bil_1_2 = "X�ch Long C�u", bil_1_3 = 12, bil_1_4 = 8, bil_1_5 = 3, bil_1_6 = 10, bil_1_7 = 300, bil_1_8 = 5938},
		{bil_1_1 = {0,10,35,10}, bil_1_2 = "Si�u Quang", bil_1_3 = 16, bil_1_4 = 10, bil_1_5 = 5, bil_1_6 = 10, bil_1_7 = 400, bil_1_8 = 5937},
	}
	local bil_5, bil_6, bil_7, bil_8 = GetTask(_bilTbHORSE[bil_2].bil_1_8), GetTask(5953), _bilTbHORSE[bil_2].bil_1_7, (_bilTbHORSE[bil_2].bil_1_6 + (GetTask(_bilTbHORSE[bil_2].bil_1_8) * 2))
	local bil_11 = floor((random(0,100) + random(0,100)) / 2)
	if bil_6 >= bil_7 then
		bil_8 = 100
	else
		bil_8 = bil_8 + floor(bil_3/3) + floor((bil_4[1] + bil_4[2] + bil_4[3])/5)
	end
	tbProgressBar:OpenByConfig(10, %bilHorseUpgradeMain_UPGRADE, {bil_8, bil_11, bil_1, bil_2, bil_9, bil_14}, %bilHorseUpgradeMain_ONBREAK, {bil_1})
end

function bilHorseUpgradeMain_OnCancle(bil_1, bil_2)
	if bil_2 == 1 then
		for bil_3 = 1, getn(bil_1) do
			for bil_5 = 1, bil_1[bil_3][7] do
				AddItem(unpack(bil_1[bil_3]))
			end
		end
		return
	elseif bil_2 == 2 then
		for bil_4 = 1, getn(bil_1) do
			if bil_1[bil_4][1] == 0 and bil_1[bil_4][2] == 10 then
				return AddItem(unpack(bil_1[bil_4]))
			end
		end
	end
end

























