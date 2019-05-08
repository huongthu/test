IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

local bil_tb_GiaHanThuat = {
	bil_1 = {
		[4309] = {30, "Gia H�n Thu�t (l�n)"},
		[4388] = {15, "Gia H�n Ho�ng Kim"},
	},
	bil_2 = {
		n_IndexS = nil,
		n_ParticularType = nil,
		n_BindState = nil,
		s_ItemName = nil,
		s_LinkImg = "<link=image:\\spr\\item\\script\\beidouchuangongshu.spr><link><color><color=orange>Gia H�n Thu�t: <color>",
	},
}

function main(bil_In_1,nItemIndex)
	local bil_1 = bil.Pack(GetItemProp(bil_In_1))
	%bil_tb_GiaHanThuat.bil_2.n_IndexS = bil_In_1
	%bil_tb_GiaHanThuat.bil_2.n_ParticularType = bil_1[3]
	if bil.True(%bil_tb_GiaHanThuat.bil_1[bil_1[3]]) then
		GiveItemUI("Gia h�n v�t ph�m", "Gia h�n v�t ph�m s� d�ng<enter>"..%bil_tb_GiaHanThuat.bil_1[bil_1[3]][2].."<enter>���c c�ng th�m "..%bil_tb_GiaHanThuat.bil_1[bil_1[3]][1].." ng�y!", "bilFuc_GiaHanThuat_2", "bil.OnCancel", 1)
	else
		Msg2Player("H� th�ng kh�ng nh�n d�ng ���c v�t ph�m, phi�n b�n vui l�ng b�o c�o l�i v�i GM!")
	end
	return 1
end

function bilFuc_GiaHanThuat_2(bil_In_1, bil_In_2,nItemIndex)
	if bil_In_2 then
		if bil.True(bil_In_2) then
			local bil_3 = %bil_tb_GiaHanThuat.bil_2
			local bil_4 = %bil_tb_GiaHanThuat.bil_1
			if CalcEquiproomItemCount(6,1,bil_3.n_ParticularType,-1) >= 1 then
				if (IsMyItem(bil_In_2) ~= 1) then
					return CreateNewSayEx(%bil_tb_GiaHanThuat.bil_2.s_LinkImg.."V�t ph�m m� ��i hi�p c�n gia h�n �� kh�ng c�n trong h�nh trang, ��i hi�p vui l�ng ki�m tra l�i h�nh trang c�a m�nh!", {{"K�t th�c ��i tho�i.", bil.OnCancel}}) 
				else
					ConsumeEquiproomItem(1,6,1,bil_3.n_ParticularType,-1)
					ITEM_SetExpiredTime(bil_In_2, FormatTime2Date(bil_4[bil_3.n_ParticularType][1] * 24 * 60 *60 + ITEM_GetExpiredTime(bil_In_2)))
					SyncItem(bil_In_2)
					SetItemBindState(bil_In_2, -2)
				end
			else
				return CreateNewSayEx(%bil_tb_GiaHanThuat.bil_2.s_LinkImg.."Kh�ng t�m th�y "..bil_4[bil_3.n_ParticularType][2].." trong h�nh trang c�a ��i hi�p, gia h�n v�t ph�m th�t b�i!", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
			end
			return Msg2Player(bil.C(10, "Gia h�n th�nh c�ng "..bil_3.s_ItemName..", th�i h�n s� d�ng ���c c�ng d�n th�m "..bil_4[bil_3.n_ParticularType][1].." ng�y!"))
		end
	end
	if bil_In_1 ~= 1 then
		return CreateNewSayEx(%bil_tb_GiaHanThuat.bil_2.s_LinkImg.."M�i l�n gia h�n b�n ch� c� th� s� d�ng m�t v�t ph�m duy nh�t!", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
	end
	local bil_1 = GetGiveItemUnit(bil_In_1)
	local bil_2 = bil.Pack(GetItemProp(bil_1))
	local nBindState = GetItemBindState(bil_1)

	%bil_tb_GiaHanThuat.bil_2.n_BindState = GetItemBindState(bil_1)
	%bil_tb_GiaHanThuat.bil_2.s_ItemName = GetItemName(bil_1)
	
	if (nBindState ~= -2) then
		Talk(1, "", "V�t ph�m kh�a v�nh vi�n nh�n ���c t� code vip m�i c� th� gia h�n!");
		return
	elseif ITEM_GetExpiredTime(bil_1) <= 0 then
		return CreateNewSayEx(%bil_tb_GiaHanThuat.bil_2.s_LinkImg.."V�t ph�m n�y kh�ng c� th�i h�n s� d�ng n�n kh�ng th� gia h�n!", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
	elseif (ITEM_GetExpiredTime(bil_1) - GetCurServerTime()) >= 29679085 then
		return CreateNewSayEx(%bil_tb_GiaHanThuat.bil_2.s_LinkImg.."V�t ph�m "..%bil_tb_GiaHanThuat.bil_2.s_ItemName.." th�i gian s� d�ng c�n qu� nhi�u, v��t qu� m�c cho ph�p, kh�ng th� ti�n h�nh gia h�n th�m!", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
	end

	return CreateNewSayEx(%bil_tb_GiaHanThuat.bil_2.s_LinkImg.."S� d�ng "..%bil_tb_GiaHanThuat.bil_1[%bil_tb_GiaHanThuat.bil_2.n_ParticularType][2].." �� gia h�n v�t ph�m "..%bil_tb_GiaHanThuat.bil_2.s_ItemName.." th�m "..%bil_tb_GiaHanThuat.bil_1[%bil_tb_GiaHanThuat.bil_2.n_ParticularType][1].." ng�y?", {{"X�c nh�n gia h�n v�t ph�m "..%bil_tb_GiaHanThuat.bil_2.s_ItemName, bilFuc_GiaHanThuat_2, {0, bil_1}}, {"K�t th�c ��i tho�i!", bil.OnCancel}})
end
















