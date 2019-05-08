Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

local bilTrangBiXanh_ThayDoiMaPhap_Up = function(bil_2, bil_6, bil_7)
	for bil_l_1 = 1, getn(bil_6) do
		local bil_1 = bil.Pack(GetItemProp(bil_6[bil_l_1][1]))
		if IsMyItem(bil_6[bil_l_1][1]) ~= 1 then
			return Msg2Player(bil.C(10, "Nguy�n li�u kh�ng c�n tr�n ng��i c�a ��i hi�p, thao t�c th�t b�i, xin ki�m tra lai h�nh trang!"))
		elseif bil_1[1] ~= bil_6[bil_l_1][2] or  bil_1[2] ~= bil_6[bil_l_1][3] or  bil_1[3] ~= bil_6[bil_l_1][4] or  bil_1[4] ~= bil_6[bil_l_1][5] or  bil_1[5] ~= bil_6[bil_l_1][6] then
			return Msg2Player(bil.C(10, "Nguy�n li�u kh�ng c�n tr�n ng��i c�a ��i hi�p, thao t�c th�t b�i, xin ki�m tra lai h�nh trang!"))
		end
	end
	for bil_l_2 = 1, getn(bil_6) do
		RemoveItemByIndex(bil_6[bil_l_2][1])
	end
	-- AddItem(bil_2[1][1], bil_2[1][2], bil_2[1][3], bil_2[1][4], bil_2[1][5], bil_7, 10)
	AddItemEx(0,random(),0,bil_2[1][1], bil_2[1][2], bil_2[1][3], bil_2[1][4], bil_2[1][5],bil_7,random(5,10),random(5,10),random(5,10),random(5,10),random(5,10),random(5,10),0)
	return Msg2Player(bil.C(9, "Thay ��i ma ph�p c�a trang b� th�nh c�ng, xin ki�m tra l�i h�nh trang!"))
end

local bilTrangBiXanh_ThayDoiMaPhap_OnBreak = function()
	return Msg2Player(bil.C(10, "Qu� tr�nh thay ��i ma ph�p trang b� �� gi�n �o�n, ��i hi�p vui l�ng th� l�i!"))
end

function bilTrangBiXanh_ThayDoiMaPhap(bil_In_1)
	if bil_In_1 then
		if bil_In_1 == 0 then
			return GiveItemUI("Thay ��i ma ph�p trang b�", "Nguy�n li�u:<enter><color=blue>Trang b� Xanh b�t k�<enter>L�c Th�y Tinh<enter>[T�y ch�n] Ph�c Duy�n!<enter>[T�y ch�n] Th�m Th�y tinh th�m may m�n", "bilTrangBiXanh_ThayDoiMaPhap", "bil.OnCancel", 1);
		elseif bil_In_1 > 1 then
			-- bil_1: Temp Item - bil_2: {G, D, P, L, S} - bil_3: {Lam, T�, L�c} - bil_4: Item Idx - bil_5: {Ph�c D ti�u, trung, ��i} - bil_6: All Idx Item
			local bil_1, bil_2, bil_3, bil_4, bil_5, bil_6 = nil, {}, {0,0,0}, 0, {0,0,0}, {}
			for bil_l_1 = 1, bil_In_1 do
				bil_4 = GetGiveItemUnit(bil_l_1)
				bil_1 = bil.Pack(GetItemProp(bil_4))
				tinsert(bil_6, {bil_4, bil_1[1], bil_1[2], bil_1[3], bil_1[4], bil_1[5]})
				if bil_1[1] == 0 then
					tinsert(bil_2, {bil_1[1], bil_1[2], bil_1[3], bil_1[4], bil_1[5]})
				elseif bil_1[1] == 4 and bil_1[2] == 238 then
					bil_3[1] = bil_3[1] + GetItemStackCount(bil_4)
				elseif bil_1[1] == 4 and bil_1[2] == 239 then
					bil_3[2] = bil_3[2] + GetItemStackCount(bil_4)
				elseif bil_1[1] == 4 and bil_1[2] == 240 then
					bil_3[3] = bil_3[3] + GetItemStackCount(bil_4)
				elseif bil_1[1] == 6 and bil_1[3] == 122 then
					bil_5[1] = bil_5[1] + GetItemStackCount(bil_4)
				elseif bil_1[1] == 6 and bil_1[3] == 123 then
					bil_5[2] = bil_5[2] + GetItemStackCount(bil_4)
				elseif bil_1[1] == 6 and bil_1[3] == 124 then
					bil_5[3] = bil_5[3] + GetItemStackCount(bil_4)
				else
					return Msg2Player(bil.C(10, "Nguy�n li�u ��i hi�p ��a cho l�o phu kh�ng ph� h�p y�u c�u, ch� c� th� ��t v�o trang b� th�ng th��ng, th�y tinh v� ph�c duy�n, vui l�ng ki�m tra l�i!"))
				end
			end
			if getn(bil_2) > 1 then
				return Msg2Player(bil.C(10, "M�i l�n thao t�c ch� c� th� thay ��i ma ph�p c�a 1 trang b� duy nh�t, ��i hi�p vui l�ng ki�m tra l�i!"))
			elseif getn(bil_2) < 1 then
				return Msg2Player(bil.C(10, "Ch�ng hay v� ��i hi�p ��y mu�n thay ��i thu�c t�nh ma ph�p c�a m�n trang b� n�o, l�o phu kh�ng t�m th�y trong ��y!"))
			elseif bil_3[3] == 0 then
				return Msg2Player(bil.C(10, "Kh�ng th� thi�u nguy�n t� quan tr�ng trong qu� tr�nh thay ��i l� L�c Th�y Tinh, ��i hi�p vui l�ng ki�m tra l�i!"))
			end
			local bil_7 = 100 + (bil_3[1] * 15) + (bil_3[2] * 15) + (bil_5[1] * 2) + (bil_5[2] * 4) + (bil_5[3] * 8)
			if bil_3[3] > 1 then
				bil_3[3] = bil_3[3] - 1
				bil_7 = bil_7 + (bil_3[3] * 15)
			end
			Msg2Player(bil.C(10, "�i�m may m�n hi�n t�i: "..bil_7))
			return tbProgressBar:OpenByConfig(23, %bilTrangBiXanh_ThayDoiMaPhap_Up, {bil_2, bil_6, bil_7}, %bilTrangBiXanh_ThayDoiMaPhap_OnBreak, {})
		else
			return Msg2Player(bil.C(10, "Nguy�n li�u b� thi�u ho�c kh�ng ph� h�p, ��i hi�p vui l�ng ki�m tra l�i!"))
		end
	end
	return Talk(1,"#bilTrangBiXanh_ThayDoiMaPhap(0)","S� d�ng L�c Th�y Tinh �� thay ��i ng�u nhi�n thu�c <enter>t�nh ma ph�p c�a trang b� xanh, c� th� s� d�ng th�m <enter>Ph�c duy�n �� t�ng �i�m may m�n!<enter>��ng c�p v� ng� h�nh c�a trang b� kh�ng b� thay ��i")
end



































