Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\item\\compound\\atlas.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

local bilChiSoQuyDoi = 2 -- t�ng m�nh �� ph� y�u c�u �� �� ��i b�ng ch� s� quy ��i nh�n v�i t�ng s� �� ph� y�u c�u c�a m�n trang b�

function bilManhDoPho_ViewInfo(bil_In_1, bil_In_2, bil_In_3)
	local bil_tb_1 = {"Thi�u L�m", "Thi�n V��ng", "Nga My", "Th�y Y�n", "Ng� ��c", "���ng M�n", "C�i Bang", "Thi�n Nh�n", "V� �ang", "C�n L�n"}
	local bil_tb_2 = {
		[0] = "Vui l�ng ch�n M�n ph�i c�n xem �� ph�!",
		[1] = "Ch�n m�n �� ph� c�n xem",
	}
	local bil_1 = {}
	if not(bil_In_1) then bil_In_1 = 0 end
	if bil_In_1 == 1 then
		local bil_2 = _bilTbDropAtlasCompound[bil_In_2]
		for bil_l_2 = 1, getn(bil_2) do
			tinsert(bil_1, {bil_2[bil_l_2][2], bilManhDoPho_ViewInfo, {bil_In_1 + 1, {bil_2[bil_l_2][1][1], bil_2[bil_l_2][1][2], bil_2[bil_l_2][1][3]}, bil_In_3}})
		end
	elseif bil_In_1 == 2 then
		local bil_3_1, bil_3_2 = getQueryPiece(0, bil_In_2)
		if bil_In_3 then
			return bilManhDoPho_GetAtlas(bil_3_1, bil_3_2, bil_In_2)
		else
			return CreateNewSayEx(bil.C(1, bil_3_1).." c� th� d�ng "..bil.C(2, (bil_3_2 * %bilChiSoQuyDoi)).." M�nh �� Ph� [Ho�ng Kim] �� ��i!", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
		end
	else
		for bil_l_1 = 1, getn(bil_tb_1) do
			tinsert(bil_1, {"Xem �� ph� ho�ng kim m�n ph�i "..bil_tb_1[bil_l_1], bilManhDoPho_ViewInfo, {bil_In_1 + 1, bil_l_1, bil_In_3}})
		end
	end
	tinsert(bil_1, {"K�t th�c ��i tho�i.", bil.OnCancel})
	if bil_In_3 then
		return CreateNewSayEx("<npc>"..bil_tb_2[bil_In_1], bil_1)
	else
		return CreateNewSayEx(bil_tb_2[bil_In_1], bil_1)
	end
end

function bilManhDoPho_GetAtlas(bil_In_1, bil_In_2, bil_In_3, bil_In_4)
	local bil_1 = bil_In_2 * %bilChiSoQuyDoi
	if bil_In_4 then
		if CalcEquiproomItemCount(6,1,4308,1) >= bil_1 then
			ConsumeEquiproomItem(bil_1,6,1,4308,-1)
			AddItem(bil_In_3[1], bil_In_3[2], bil_In_3[3], 1, 0, 0, 0)
			return Msg2Player(bil.C(10, "Nh�n ���c "..bil_In_1))
		else
			return CreateNewSayEx("<npc>M�nh �� Ph� [Ho�ng Kim] trong h�nh trang hi�n t�i c�a ��i hi�p kh�ng ��, kh�ng th� ��i "..bil.C(1, bil_In_1).." ���c, y�u c�u "..bil_1.." M�nh �� Ph� [Ho�ng Kim]", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
		end
	end
	return CreateNewSayEx("<npc>S� d�ng "..bil.C(1, bil_1).." M�nh �� Ph� [Ho�ng Kim] �� ��i 1 "..bil.C(4, bil_In_1)..", ��i hi�p ch�c ch�n mu�n ��i ch�?",
		{
			{"��ng � ��i "..bil_In_1, bilManhDoPho_GetAtlas, {bil_In_1, bil_In_2, bil_In_3, 1}},
			{"K�t th�c ��i tho�i.", bil.OnCancel},
		}
	)
end


























