IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

local bilImgCn = "<link=image:\\spr\\skill\\christmas\\star2.spr><link><color>"
local bil_tb_Award = {
	[1] = {{6,1,4302,1,0,0,0}, "Ph�c l�i ��n [Th�n m�]"},
	[2] = {{6,1,4303,1,0,0,0}, "Ph�c l�i ��n [H�ng �nh]"},
	[3] = {{6,1,4304,1,0,0,0}, "Ph�c l�i ��n [Nhu t�nh]"},
	[4] = {{6,1,4305,1,0,0,0}, "Ph�c l�i ��n [Hi�p c�t]"},
	[5] = {{6,1,4306,1,0,0,0}, "Ph�c l�i ��n [��nh qu�c]"},
	[6] = {{6,1,4307,1,0,0,0}, "Ph�c l�i ��n [An bang]"},
	[7] = {{6,1,71,1,0,0,0}, "Ti�n th�o l�"},
	[8] = {{6,1,1181,1,0,0,0}, "Ti�n th�o l� (��c bi�t)"},
	[9] = {{6,1,23,1,0,0,0}, "Thi�t la h�n"},
	[10] = {{4,353,1,1,0,0,0}, "Tinh h�ng b�o th�ch"},
	[11] = {{4,238,1,1,0,0,0}, "Lam th�y tinh"},
	[12] = {{4,239,1,1,0,0,0}, "T� th�y tinh"},
	[13] = {{4,240,1,1,0,0,0}, "L�c th�y tinh"},
	[14] = {{4,489,1,1,0,0,0}, "L�nh b�i phong l�ng ��"},
	[15] = {{6,1,124,1,0,0,0}, "Ph�c duy�n ��i"},
	[16] = {{6,1,2514,1,0,0,0}, "M�nh s�n h� x� t�c x1000"},
	[17] = {{6,1,1082,1,0,0,0}, "H�i th�nh ph� (nh�)"},
	[18] = {{6,1,1083,1,0,0,0}, "H�i th�nh ph� (l�n)"},
	[19] = {{6,1,1427,1,0,0,0}, "T� m�u l�nh"},
	[20] = {{6,1,1617,1,0,0,0}, "Vi�m �� l�nh"},
	[21] = {{6,1,400,90,random(0,4),0,0}, "S�t th� gi�n (C�p 90)"},
	[22] = {{6,1,1448,1,0,0,0}, "M�c b�c truy�n t�ng l�nh"},
	[23] = {{6,1,26,1,0,0,0}, "V� l�m m�t t�ch"},
	[24] = {{6,1,22,1,0,0,0}, "T�y t� kinh"},
	[25] = {{6,1,1403,1,0,0,0}, "�� ph� - Hi�p c�t thuy�t huy�t sam"},
	[26] = {{6,1,1404,1,0,0,0}, "�� ph� - Hi�p c�t �a t�nh ho�n"},
	[27] = {{6,1,1405,1,0,0,0}, "�� ph� - Hi�p c�t �an t�m gi�i"},
	[28] = {{6,1,1406,1,0,0,0}, "�� ph� - Hi�p c�t t�nh � k�t"},
	[29] = {{6,1,1407,1,0,0,0}, "�� ph� - Nhu t�nh c�n qu�c ngh� th��ng"},
	[30] = {{6,1,1408,1,0,0,0}, "�� ph� - Nhu t�nh th�c n� h�ng li�n"},
	[31] = {{6,1,1409,1,0,0,0}, "�� ph� - Nhu t�nh ph�ng nghi gi�i ch�"},
	[32] = {{6,1,1410,1,0,0,0}, "�� ph� - Nhu t�nh tu� t�m ng�c b�i"},
	[33] = {{6,1,1399,1,0,0,0}, "Th�p to�n ��i b� th�n �an"},
	[34] = {{6,1,1308,1,0,0,0}, "M�nh B� thi�n th�ch (ti�u)"},
	[35] = {{6,1,1309,1,0,0,0}, "M�nh B� thi�n th�ch (trung)"},
	[36] = {{6,1,1310,1,0,0,0}, "M�nh B� thi�n th�ch (��i)"},
	
	[37] = {{1, 204}, "Trang b� H�ng �nh"},
	[38] = {{1, 205}, "Trang b� H�ng �nh"},
	[39] = {{1, 206}, "Trang b� H�ng �nh"},
	[40] = {{1, 207}, "Trang b� H�ng �nh"},
	
	[41] = {{0,10,5,6,random(0,4),0,0}, "Th�n m� � V�n ��p Tuy�t"},
	[42] = {{0,10,5,7,random(0,4),0,0}, "Th�n m� X�ch Th�"},
	-- [43] = {{0,10,5,8,random(0,4),0,0}, "Th�n m� Tuy�t �nh"},
	-- [44] = {{0,10,5,9,random(0,4),0,0}, "Th�n m� ��ch L�"},
	
	[43] = {{6,1,4308,1,0,0,0}, "M�nh �� Ph� [Ho�ng Kim]"},
}

local bil_tb_PhucLoi = {
	["_TM"] = {
		{bil_1 = "�i�m t�ch l�y ph�c l�i Th�n m�", bil_2 = 5918, bil_3 = 5917},
		{bil_1 = {0,10,5,6,random(0,4),0,0}, bil_2 = 3000, bil_3 = "� V�n ��p Tuy�t"},
		{bil_1 = {0,10,5,7,random(0,4),0,0}, bil_2 = 7000, bil_3 = "X�ch Th�"},
		{bil_1 = {0,10,5,8,random(0,4),0,0}, bil_2 = 12000, bil_3 = "Tuy�t �nh"},
		{bil_1 = {0,10,5,9,random(0,4),0,0}, bil_2 = 18000, bil_3 = "��ch L�"},
		{bil_1 = {0,10,5,10,random(0,4),0,0}, bil_2 = 26000, bil_3 = "Chi�u D� Ng�c S� T�"},
		{bil_1 = {0,10,8,10,random(0,4),0,0}, bil_2 = 38000, bil_3 = "Phi V�n"},
		{bil_1 = {0,10,6,10,random(0,4),0,0}, bil_2 = 52000, bil_3 = "B�n Ti�u"},
	},
	["_HA"] = {
		{bil_1 = "�i�m t�ch l�y ph�c l�i H�ng �nh", bil_2 = 5916, bil_3 = 5915},
		{bil_1 = {1,205}, bil_2 = 3000, bil_3 = "H�ng �nh Ki�m B�i"},
		{bil_1 = {1,206}, bil_2 = 7000, bil_3 = "H�ng �nh M�c T�c"},
		{bil_1 = {1,207}, bil_2 = 12000, bil_3 = "H�ng �nh T� Chi�u"},
		{bil_1 = {1,204}, bil_2 = 18000, bil_3 = "H�ng �nh Th�m Vi�n Uy�n"},
	},
	["_NT"] = {
		{bil_1 = "�i�m t�ch l�y ph�c l�i Nhu t�nh", bil_2 = 5914, bil_3 = 5913},
		{bil_1 = {1,193}, bil_2 = 3000, bil_3 = "Nhu T�nh Tu� T�m Ng�c B�i"},
		{bil_1 = {1,192}, bil_2 = 8000, bil_3 = "Nhu T�nh Ph�ng Nghi Gi�i Ch�"},
		{bil_1 = {1,191}, bil_2 = 15000, bil_3 = "Nhu T�nh Th�c N� H�ng Li�n"},
		{bil_1 = {1,190}, bil_2 = 24000, bil_3 = "Nhu T�nh C�n Qu�c Ngh� Th��ng"},
	},
	["_HC"] = {
		{bil_1 = "�i�m t�ch l�y ph�c l�i Hi�p c�t", bil_2 = 5912, bil_3 = 5911},
		{bil_1 = {1,189}, bil_2 = 3000, bil_3 = "Hi�p C�t T�nh � K�t"},
		{bil_1 = {1,188}, bil_2 = 8000, bil_3 = "Hi�p C�t �an T�m Gi�i"},
		{bil_1 = {1,187}, bil_2 = 15000, bil_3 = "Hi�p C�t �a T�nh Ho�n"},
		{bil_1 = {1,186}, bil_2 = 24000, bil_3 = "Hi�p C�t Thi�t Huy�t Sam"},
	},
	["_DQ"] = {
		{bil_1 = "�i�m t�ch l�y ph�c l�i ��nh qu�c", bil_2 = 5910, bil_3 = 5909},
		{bil_1 = {1,163}, bil_2 = 6000, bil_3 = "��nh Qu�c Ng�n T�m Y�u ��i"},
		{bil_1 = {1,162}, bil_2 = 10000, bil_3 = "��nh Qu�c T� ��ng H� uy�n"},
		{bil_1 = {1,161}, bil_2 = 18000, bil_3 = "��nh Qu�c X�ch Quy�n Nhuy�n Ngoa"},
		{bil_1 = {1,159}, bil_2 = 31000, bil_3 = "��nh Qu�c Thanh Sa Tr��ng Sam"},
		{bil_1 = {1,160}, bil_2 = 49000, bil_3 = "��nh Qu�c � Sa Ph�t Qu�n"},
	},
	["_AB"] = {
		{bil_1 = "�i�m t�ch l�y ph�c l�i An bang", bil_2 = 5908, bil_3 = 5907},
		{bil_1 = {1,166}, bil_2 = 24000, bil_3 = "An Bang �i�n Ho�ng Th�ch Ng�c B�i"},
		{bil_1 = {1,167}, bil_2 = 34000, bil_3 = "An Bang K� Huy�t Th�ch Gi�i Ch�"},
		{bil_1 = {1,165}, bil_2 = 48000, bil_3 = "An Bang C�c Hoa Th�ch Ch� ho�n"},
		{bil_1 = {1,164}, bil_2 = 66000, bil_3 = "An Bang B�ng Tinh Th�ch H�ng Li�n"},
	},
}

function bilPhucLoi_Main()
	local bil_1 = %bilImgCn.."Tham gia ho�t ��ng c�ng nhi�u, t�ch l�y c�ng l�n, ph�n th��ng c�ng gi� tr�!<enter>"
		..bil.C(1,"N�p th� l�n ��u ").." - c�c ph�n th��ng s� t� t�o m�i ng�u nhi�n v�o 0h00<enter>"
		..bil.C(1,"T�ch l�y ph�c l�i").." - ph�n th��ng s� kh�i t�o l�i m�i khi ��t ��n m�c th��ng cao nh�t!<enter>"
		..bil.C(1, "T�ch l�y")..": Th�n m� "..bil.C(2, GetTask(5918))..", H�ng �nh "..bil.C(2, GetTask(5916))..", Nhu t�nh "..bil.C(2, GetTask(5914))..", Hi�p c�t "..bil.C(2, GetTask(5912))..", ��nh qu�c "..bil.C(2, GetTask(5910))..", An bang "..bil.C(2, GetTask(5908))
	local bil_2 = {
		{"Qu� n�p th� l�n ��u", bilPhucLoi_NapTheLanDau},
		{"S� d�ng m� d� th��ng (GiftCode)", bilPhucLoi_GetGiftCode},
		{"T�ch l�y �i�m nh�n Th�n M�", bilPhucLoi_PhucLoiDon, {"_TM"}},
		{"T�ch l�y �i�m nh�n trang b� H�ng �nh", bilPhucLoi_PhucLoiDon, {"_HA"}},
		{"T�ch l�y �i�m nh�n trang b� Nhu T�nh", bilPhucLoi_PhucLoiDon, {"_NT"}},
		{"T�ch l�y �i�m nh�n trang b� Hi�p C�t", bilPhucLoi_PhucLoiDon, {"_HC"}},
		{"T�ch l�y �i�m nh�n trang b� ��nh Qu�c", bilPhucLoi_PhucLoiDon, {"_DQ"}},
		{"T�ch l�y �i�m nh�n trang b� An Bang", bilPhucLoi_PhucLoiDon, {"_AB"}},
		{"K�t th�c ��i tho�i.", bil.OnCancel},
	}
	CreateNewSayEx(bil_1, bil_2)
end

function bilPhucLoi_GetGiftCode(bil_In_1)
	local bil_tb_1 = {
		bil_Code = {
			{bil_sGift = "GiftCode h� tr� t�n th�", bil_nExtNum = 2, bil_nExtValue = 1, bil_nTaskSave = 5899, bil_listAw = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17}, bil_sMsg = "Trang ch� ho�c Fanpage v�o m�c GiftCode"},
		},
		bil_Award = {
			[1] = {bil_Pr1Item = {6,1,2514,1,0,0,0}, bil_Pr2Item = {-2, 0,"M�nh S�n h� x� t�c x1000"}},
			[2] = {bil_Pr1Item = {6,1,1082,1,0,0,0}, bil_Pr2Item = {-2, 0,"H�i th�nh ph� nh�"}},
			[3] = {bil_Pr1Item = {6,1,1617,1,0,0,0}, bil_Pr2Item = {-2, 0,"Vi�m �� l�nh"}},
			[4] = {bil_Pr1Item = {6,1,400,90,0,0,0}, bil_Pr2Item = {-2, 0,"S�t th� gi�n c�p 90"}},
			[5] = {bil_Pr1Item = {4,489,1,1,0,0,0}, bil_Pr2Item = {-2, 0,"L�nh b�i phong l�ng ��"}},
			[6] = {bil_Pr1Item = {6,1,122,1,0,0,0}, bil_Pr2Item = {-2, 0,"Ph�c duy�n ti�u"}},
			[7] = {bil_Pr1Item = {6,1,72,1,0,0,0}, bil_Pr2Item = {-2, 0,"Thi�n s�n th�o l�"}},
			[8] = {bil_Pr1Item = {6,1,73,1,0,0,0}, bil_Pr2Item = {-2, 0,"B�ch qu� l�"}},
			[9] = {bil_Pr1Item = {4,239,1,1,0,0,0}, bil_Pr2Item = {-2, 0,"T� th�y tinh"}},
			[10] = {bil_Pr1Item = {6,1,23,1,0,0,0}, bil_Pr2Item = {-2, 0,"Thi�t la h�n"}},
			[11] = {bil_Pr1Item = {6,0,6,1,0,0,0}, bil_Pr2Item = {-2, 0,"Phi t�c ho�n"}},
			[12] = {bil_Pr1Item = {6,0,2,1,0,0,0}, bil_Pr2Item = {-2, 0,"Gia b�o ho�n"}},
			[13] = {bil_Pr1Item = {6,0,3,1,0,0,0}, bil_Pr2Item = {-2, 0,"��i l�c ho�n"}},
			[14] = {bil_Pr1Item = {6,0,11,1,0,0,0}, bil_Pr2Item = {-2, 0,"Ph�o hoa"}},
			[15] = {bil_Pr1Item = {6,0,20,1,0,0,0}, bil_Pr2Item = {-2, 0,"Hoa h�ng"}},
			[16] = {bil_Pr1Item = {6,0,1012,1,0,0,0}, bil_Pr2Item = {-2, 0,"Qu� m�u xanh"}},
			[17] = {bil_Pr1Item = {6,0,1013,1,0,0,0}, bil_Pr2Item = {-2, 0,"Hoa tuy�t"}},
		}
	}
	if bil_In_1 then
		if bil_In_1 >= 1 then
			local bil_3 = bil_tb_1.bil_Code[bil_In_1]
			if GetTask(bil_3.bil_nTaskSave) ~= bil_3.bil_nExtValue then
				if GetExtPoint(bil_3.bil_nExtNum) == bil_3.bil_nExtValue then
					if bilOpenTestGame == 1 then
						return CreateNewSayEx(%bilImgCn.."Trong th�i gian "..bil.C(1, "Open Test Game kh�ng th� nh�n").." g�i ph�n th��ng "..bil_3.bil_sGift..", h�y ��i ��n Open Game.", {{"T�i h� bi�t r�i", bil.OnCancel}})
					elseif CountFreeRoomByWH(2,9) < 1 then
						return CreateNewSayEx(%bilImgCn.."B�n vui l�ng �� tr�ng �t nh�t 18 � h�nh trang (2x9) �� tr�nh t�nh tr�ng t�n th�t v�t ph�m", {{"��i ta m�t t�", bil.OnCancel}})
					end
					SetTask(bil_3.bil_nTaskSave, bil_3.bil_nExtValue)
					local bil_4 = 0
					for bil_l_2 = 1, getn(bil_3.bil_listAw) do
						bil_4 = AddItem(unpack(bil_tb_1.bil_Award[bil_3.bil_listAw[bil_l_2]].bil_Pr1Item))
						if bil_tb_1.bil_Award[bil_3.bil_listAw[bil_l_2]].bil_Pr2Item[2] ~= 0 then
							ITEM_SetExpiredTime(bil_4, FormatTime2Date(bil_tb_1.bil_Award[bil_3.bil_listAw[bil_l_2]].bil_Pr2Item[2] * 24 * 60 *60 + GetCurServerTime()))
							SyncItem(bil_4)
						end
						if bil_tb_1.bil_Award[bil_3.bil_listAw[bil_l_2]].bil_Pr2Item[1] ~= 0 then
							SetItemBindState(bil_4, bil_tb_1.bil_Award[bil_3.bil_listAw[bil_l_2]].bil_Pr2Item[1])
						end
					end
					return Msg2Player(bil.C(10, "Nh�n g�i ph�n th��ng "..bil_3.bil_sGift.." th�nh c�ng, xin ki�m tra l�i h�nh trang!"))
				else
					return CreateNewSayEx(%bilImgCn.."B�n ch�a tham gia ho�t ��ng n�y, �� tham gia ho�t ��ng nh�n th��ng "..bil.C(1, bil_3.bil_sGift).." b�n c� th� theo d�i tr�n "..bil.C(2, bil_3.bil_sMsg)..". N�u nh� �� tham gia nh�ng ch�a nh�n ���c ph�n th��ng b�n vui l�ng tho�t game v� ��ng nh�p l�i sau �� h�y nh�n th��ng!", {{"K�t th�c ��i tho�i", bil.OnCancel}})
				end
			else
				return CreateNewSayEx(%bilImgCn.."B�n �� nh�n g�i ph�n th��ng tham gia "..bil_3.bil_sGift.." n�y r�i!", {{"K�t th�c ��i tho�i", bil.OnCancel}})
			end
		end
	end
	local bil_1, bil_2 = getn(bil_tb_1.bil_Code), {}
	if bil_1 > 0 then
		for bil_l_1 = 1, bil_1 do
			tinsert(bil_2, {"Nh�n th��ng "..bil_tb_1.bil_Code[bil_l_1].bil_sGift, bilPhucLoi_GetGiftCode, {bil_l_1}})
		end
		tinsert(bil_2, {"K�t th�c ��i tho�i", bil.OnCancel})
		return CreateNewSayEx(%bilImgCn.."Vui l�ng ch�n g�i ph�n th��ng m� b�n �� tham gia. N�u ch�a tham gia b�n c� th� theo d�i c�c th�ng tin ph�n  th��ng � Trang ch�, Fanpage ho�c th�ng b�o trong game.", bil_2)
	else
		return CreateNewSayEx(%bilImgCn.."<enter><enter><enter><enter>Hi�n t�i ch�a c� ch��ng tr�nh ph�t th��ng n�o trong   m�c n�y, ��i hi�p vui l�ng quay l�i sau!", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
	end
end

function bilPhucLoi_PhucLoiDon(bil_In_1, bil_In_2)
	local bil_1 = %bil_tb_PhucLoi[bil_In_1]
	local bil_2 = getn(bil_1)
	local bil_3 = GetTask(bil_1[1].bil_2)
	local bil_4 = GetTask(bil_1[1].bil_3)
	local bil_5 = bil_1[bil_4+2].bil_2
	local bil_6 = bil_1[bil_4+2].bil_3
	if bil_In_2 then
		local bil_7
		if bil_3 >= bil_5 then
			if CalcFreeItemCellCount() < 20 then
				return CreateNewSayEx(%bilImgCn.."Ph�i �� tr�ng �t nh�t "..bil.C(2,"20 � h�nh trang").." m�i c� th� nh�n ph�n th��ng n�y!", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
			end
			if bil_In_1 == "_TM" then
				bil_7 = AddItem(unpack(bil_1[bil_4+2].bil_1))
			else
				bil_7 = AddGoldItem(0, bil_1[bil_4+2].bil_1[2])
			end
			ITEM_SetExpiredTime(bil_7, FormatTime2Date(14 * 24 * 60 *60 + GetCurServerTime()))
			SyncItem(bil_7)
			SetTask(bil_1[1].bil_3, bil_4 + 1)
			AddLocalNews(bil.C(9, GetName().." Nh�n ���c "..bil_6.." t� ho�t ��ng t�ch l�y �i�m ph�c l�i, uy ch�n thi�n h�!"), 1)
			Msg2SubWorld(bil.C(9, GetName().." Nh�n ���c "..bil_6.." t� ho�t ��ng t�ch l�y �i�m ph�c l�i, uy ch�n thi�n h�!"))
			if GetTask(bil_1[1].bil_3) >= bil_2 -1 then
				SetTask(bil_1[1].bil_3, 0)
				SetTask(bil_1[1].bil_2, 0)
				Msg2Player(bil.C(10, "�� nh�n ���c ph�n th��ng t�i �a c�a h�ng m�c "..bil_1[1].bil_1.." ti�n h�nh l�m m�i h�ng m�c n�y th�nh c�ng!"))
			end
			return
		else
			return CreateNewSayEx(%bilImgCn.."T�ch l�y hi�n t�i c�a c�c h� kh�ng �� �� nh�n th��ng  m�c ti�p theo. Y�u c�u t�ch l�y "..bil.C(2, bil_3).."/"..bil.C(1, bil_5).."<enter>H�y tham gia v�o c�c ho�t ��ng �� nh�n th�m �i�m th��ng!", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
		end
	end
	CreateNewSayEx(%bilImgCn..bil.C(1, bil_1[1].bil_1).."<enter><enter>T�ch l�y hi�n t�i: "..bil.C(2, bil_3).." �i�m<enter><enter>��t m�c ti�p theo "..bil.C(1, bil_3.."/"..bil_5).." nh�n th��ng: <enter><enter>"..bil.C(4, bil_6), {{"Nh�n th��ng ngay!", bilPhucLoi_PhucLoiDon, {bil_In_1, 1}}, {"K�t th�c ��i tho�i.", bil.OnCancel}})
end

function bilPhucLoi_NapTheLanDau()
	if bilAllowPhucLoiCaNhan ~= 1 then
		return CreateNewSayEx(%bilImgCn.."<bclr=red><enter><enter><enter><enter>"..bil.C(1,"Hi�n t�i t�nh n�ng n�y �ang t�m ��ng!").."<bclr>", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
	end
	local bil_tb_1 = {{1, 2},{2, 2},{3, 2},{4, 2},{5, 2},{6, 2},{8, 1},{9, 3},{14, 1},{16, 1},{20, 1},{21, 1},{41, 1},{33, 1},}
	local bil_tb_2 = {5921, 5922, 5923, 5924, 5925, 5926}
	if GetTask(5928) ~= tonumber(date("%y%m%d")) then
		if GetTask(5927) == 0 then
			local bil_1 = %bilImgCn.."Th��ng n�p th� "..bil.C(1, "L�n ��u trong ��i").." c�c v�t ph�m s� b� kh�a. Th��ng n�p th� "..bil.C(2, "L�n ��u trong ng�y").." v�t ph�m s� kh�ng kh�a v� t�o m�i danh s�ch v�o m�i 0h00 h�ng ng�y.<enter>Danh s�ch c�c ph�n th��ng n�p th� l�n ��u trong ��i:<enter>"
			for bil_l_1 = 1, getn(bil_tb_1) do
				bil_1 = bil_1.."<enter>"..%bil_tb_Award[bil_tb_1[bil_l_1][1]][2].." x"..bil_tb_1[bil_l_1][2]
			end
			return CreateNewSayEx(bil_1, {{"Nh�n th��ng ngay!", bilPhucLoi_NapTheLanDau2}, {"K�t th�c ��i tho�i.", bil.OnCancel}})
		else
			if GetTask(5920) ~= tonumber(date("%y%m%d")) then
				SetTask(5920, tonumber(date("%y%m%d")))
				local bil_tb_ran_1 = bil.InitRandMemTb(getn(%bil_tb_Award))
				for bil_l_2 = 1, getn(bil_tb_2) do
					SetTask(bil_tb_2[bil_l_2], bil_tb_ran_1[bil_l_2])
				end
			end
			local bil_2 = %bilImgCn..bil.C(1,"Ph�n th��ng s� t�o m�i m�i 0h00 h�ng ng�y")..bil.C(2,"<enter>Danh s�ch c�c ph�n th��ng c�a h�m nay:<enter>")
			for bil_l_3 = 1, getn(bil_tb_2) do
				bil_2 = bil_2.."<enter>"..%bil_tb_Award[GetTask(bil_tb_2[bil_l_3])][2]
			end
			return CreateNewSayEx(bil_2, {{"Nh�n th��ng ngay!", bilPhucLoi_NapTheLanDau2}, {"K�t th�c ��i tho�i.", bil.OnCancel}})
		end
	else
		return CreateNewSayEx(%bilImgCn.."<enter><enter><enter><enter><bclr=red>"..bil.C(1, "H�m nay b�n �� nh�n ph�n th��ng n�y r�i!").."<bclr>", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
	end
end

function bilPhucLoi_NapTheLanDau2()
	if GetTask(5919) ~= tonumber(date("%y%m%d")) then
		return CreateNewSayEx(%bilImgCn.."T�i kho�n: "..bil.C(1, GetAccount()).." kh�ng c� trong danh s�ch �� n�p th� h�m nay n�n v�n ch�a �� �i�u ki�n �� nh�n ph�n th��ng n�y!", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
	elseif CalcFreeItemCellCount() < 20 then
		return CreateNewSayEx(%bilImgCn.."Ph�i �� tr�ng �t nh�t "..bil.C(2,"20 � h�nh trang").." m�i c� th� nh�n ph�n th��ng n�y!", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
	elseif GetFightState() ~= 0 then
		return CreateNewSayEx(%bilImgCn.."Ph�n th��ng n�y ch� c� th� nh�n � khu v�c "..bil.C(2,"phi chi�n ��u")..", vui l�ng r�i kh�i khu v�c n�y r�i h�y nh�n l�i ph�n th��ng!", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
	end
	local bil_tb_1 = {{1, 2},{2, 2},{3, 2},{4, 2},{5, 2},{6, 2},{8, 1},{9, 3},{14, 1},{16, 1},{20, 1},{21, 1},{41, 1},{33, 1},}
	local bil_tb_2, bil_1 = {5921, 5922, 5923, 5924, 5925, 5926}, 0
	if bil.TaskDate(5928, GetTask(5927) + 1, 5927) == 0 then
		if GetTask(5927) == 1 then
			for bil_l_1 = 1, getn(bil_tb_1) do
				for bil_l_2 = 1, bil_tb_1[bil_l_1][2] do
					bil_1 = AddItem(unpack(%bil_tb_Award[bil_tb_1[bil_l_1][1]][1]))
					ITEM_SetExpiredTime(bil_1, FormatTime2Date(14 * 24 * 60 *60 + GetCurServerTime()));
					SyncItem(bil_1);
					SetItemBindState(bil_1, -2)
				end
				Msg2Player(bil.C(10, "Nh�n ���c "..%bil_tb_Award[bil_tb_1[bil_l_1][1]][2]))
			end
			return Msg2Player(bil.C(9, "Nh�n ���c ph�n th��ng th� n�p ��u ti�n th�nh c�ng, xin ki�m tra l�i h�nh trang!"))
		else
			for bil_l_3 = 1, getn(bil_tb_2) do
				if %bil_tb_Award[GetTask(bil_tb_2[bil_l_3])][1][1] == 1 then
					bil_1 = AddGoldItem(0, %bil_tb_Award[GetTask(bil_tb_2[bil_l_3])][1][2])
				else
					bil_1 = AddItem(unpack(%bil_tb_Award[GetTask(bil_tb_2[bil_l_3])][1]))
				end
				Msg2Player(bil.C(10, "Nh�n ���c "..%bil_tb_Award[GetTask(bil_tb_2[bil_l_3])][2]))
				ITEM_SetExpiredTime(bil_1, FormatTime2Date(14 * 24 * 60 *60 + GetCurServerTime()));
				SyncItem(bil_1);
			end
			return Msg2Player(bil.C(9, "Nh�n ���c ph�n th��ng n�p th� ��u ti�n trong ng�y th�nh c�ng, xin ki�m tra l�i h�nh trang!"))
		end
	else
		return CreateNewSayEx(%bilImgCn.."H�m nay �� nh�n ph�n th��ng ph�c l�i n�y r�i, ��i h�m sau h�y ti�p t�c!", {{"K�t th�c ��i tho�i.", bil.OnCancel}})
	end
end

function bilPhucLoi_CheckNapThe_Logs(_1)
	local a, b, c = bil.IniFile, ("day_"..(date("%d_%m_%y"))), "day_all"
	
	a.Load("doanh_thu.dat")
	
	local d = a.Get("doanhthu", b) or 0
	local e = a.Get("doanhthu", c) or 0
	
	d = bil.False(d) and 0 or d
	e = bil.False(e) and 0 or e
	
	a.Set("doanhthu", b, (tonumber(d) + _1))
	a.Set("doanhthu", c, (tonumber(e) + _1))
	
	a.Release()
end

function bilPhucLoi_CheckNapThe()
	local bil_1 = GetTask(5930)
	local bil_2 = GetExtPoint(1)
	local bil_3 = (bil_2 - bil_1)
	if bil_2 > 1 then
		if bil_2 > bil_1 then
			SetTask(5929, GetTask(5929) + 1)
			SetTask(5919, tonumber(date("%y%m%d")))
			SetTask(5906, GetTask(5906) + (bil_3))
			bilPhucLoi_CheckNapThe_Logs(bil_3)
			-- if GetTask(5928) ~= tonumber(date("%y%m%d")) then
				-- Msg2Player(bil.C(9, "N�p th� l�n ��u th�nh c�ng, hi�n b�n c� th� m� ")..bil.C(1, "C�m nang ��ng h�nh ")..bil.C(9, "�� nh�n ph�n th��ng n�p th� l�n ��u!"))
			-- end
			
			if bil_3 >= 50 and GetTask(5864) == 0 then
				SetTask(5864, 1)
				Msg2Player(bil.C(9, "N�p th� l�n ��u m�nh gi� 50k th�nh c�ng, hi�n b�n c� th� m� ")..bil.C(1, "C�m nang ��ng h�nh ")..bil.C(9, "�� nh�n ph�n th��ng n�p th� l�n ��u!"))
			end
		end
		SetTask(5930, bil_2)
	end
end

function bilPhucLoi_NapTheLanDau_50k()
	if GetTask(5864) == 1 then
		if (bilDenyAfterOpenTopRacing == 1) then
			return bil.Talk("�ang trong th�i gian  �ua top, kh�ng th� s� d�ng c�ng n�ng n�y, xin h�y quay l�i sau!")
		end
	
		if CountFreeRoomByWH(3,9) < 1 then
			return bil.Talk("Vui l�ng �� tr�ng �t nh�t 27(3x9) � tr�ng m�i c� th� nh�n ph�n th��ng n�y!")
		end
		
		local a = {
			{
				P = {
					i = {
						{v = {6,1,71,1,0,0,0}, n = 3, b = -2, e = 0, ne = "Ti�n th�o l� 1 gi�", l = "PhucLoi_NapTheLanDau_50K"},
						{v = {6,1,72,1,0,0,0}, n = 2, b = -2, e = 0, ne = "Thi�n s�n b�o l�", l = "PhucLoi_NapTheLanDau_50K"},
						{v = {6,1,125,1,0,0,0}, n = 2, b = -2, e = 0, ne = "Qu� hoa t�u", l = "PhucLoi_NapTheLanDau_50K"},
						{v = {6,1,23,1,0,0,0}, n = 2, b = -2, e = 0, ne = "Thi�t la h�n", l = "PhucLoi_NapTheLanDau_50K"},
						{v = {6,0,6,1,0,0,0}, n = 2, b = -2, e = 0, ne = "Phi t�c ho�n", l = "PhucLoi_NapTheLanDau_50K"},
						{v = {0,10,5,random(6,9),0,0,0}, n = 1, b = -2, e = (5*24*60*60), ne = "Ng�a c�p 80", l = "PhucLoi_NapTheLanDau_50K"},
					},
					c = {{SetTask, {5864, 2}}},
				}
			}
		}
		bil.Say(a)
		SetTask(5864, 2)
		
		Msg2Player("Nh�n th��ng n�p th� l�n ��u th�nh c�ng!")
	elseif GetTask(5864) < 1 then
		return bil.Talk("B�n ch�a �� �i�u ki�n �� nh�n th��ng!")
	elseif GetTask(5864) > 1 then
		return bil.Talk("B�n �� nh�n g�i ph�n th��ng n�y r�i!")
	end
end
























