Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_chuyenmonphai.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_log\\bil4i3n_awardplayertop_tb.lua")
IncludeLib("RELAYLADDER");
IL("TITLE");

_bilTbFac = {{"shaolin", "Thi�u L�m"},{"tianwang", "Thi�n V��ng"},{"tangmen", "���ng M�n"},{"wudu", "Ng� ��c"},{"emei", "Nga My"},{"cuiyan", "Th�y Y�n"},{"gaibang", "C�i Bang"},{"tianren", "Thi�n Nh�n"},{"wudang", "V� �ang"},{"kunlun", "C�n L�n"},}

function bilGetAwardTOPRace(bilSel, bilType, bilTOP)
	local bil_a = { -- b�ng danh s�ch cao th� v� ph�n th��ng
		{ -- Danh s�ch c�c cao th� nh�n th��ng
			bil_a1 = { -- danh s�ch 10 cao th� th� gi�i
					-- bil_a4_1: Normal Items[ID, s� l��ng, h�n s� d�ng, kh�a v�nh vi�n: 2] - bil_a4_2: ti�n v�n - bil_a4_3: GoldItems[ID, s� l��ng, h�n s� d�ng, kh�a v�nh vi�n: 2]
				[1] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{1,1,0,0},{4,1,0,0},{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[2] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{2,1,0,0},{4,1,0,0},{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[3] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{3,1,0,0},{4,1,0,0},{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[4] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[5] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[6] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[7] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[8] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[9] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
				[10] = {bil_a2 = "name", bil_a3 = "level", bil_a4 = {bil_a4_1 = {{5,2,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0},},bil_a4_2 = 500000, bil_a4_3 = {}},},
			},
			bil_a5 = { -- danh s�ch c�c cao th� m�n ph�i v� ph�n th��ng
				{ -- danh s�ch c�c cao th�: bil_a5_1: T�n nh�n v�t - bil_a5_2: ��ng c�p
					[1] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- thi�u l�m
					[2] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- thi�n v��ng
					[3] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- ���ng m�n
					[4] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- ng� ��c
					[5] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- nga my
					[6] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- th�y y�n
					[7] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- c�i bang
					[8] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- thi�n nh�n
					[9] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- v� �ang
					[10] = {{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},{bil_a5_1 = "", bil_a5_2 = 0},}, -- c�n l�n
				},
				{ -- danh s�ch c�c ph�n th��ng c�a top m�n ph�i
					-- bil_a4_1: NormalItems - bil_a4_2: ti�n v�n - bil_a4_3: GoldItems[ID, s� l��ng, h�n s� d�ng, kh�a v�nh vi�n: 2]
					[1] = {bil_a4_1 = {{5,1,0,0},{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0}}, bil_a4_2 = 500000, bil_a4_3 = {}},
					[2] = {bil_a4_1 = {{6,6,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0}}, bil_a4_2 = 500000, bil_a4_3 = {}},
					[3] = {bil_a4_1 = {{6,3,0,0},{7,1,0,0},{8,1,0,0},{9,1,0,0}}, bil_a4_2 = 500000, bil_a4_3 = {}},
				},
			},
		},
		{ -- Danh s�ch c�c ph�n th��ng c�n trao
			[1] = {{0,10,6,10,random(0,4),0},"Ng�a B�n Ti�u"},
			[2] = {{0,10,8,10,random(0,4),0},"Ng�a Phi V�n"},
			[3] = {{0,10,5,10,random(0,4),0},"Ng�a Chi�u D�"},
			[4] = {{6,1,2340,0,0,0},"Nh�c v��ng ki�m"},
			[5] = {{4,343,0,0,0,0},"Kim nguy�n b�o"},
			[6] = {{4,353,0,0,0,0},"Tinh h�ng b�o th�ch"},
			[7] = {{4,238,0,0,0,0},"Lam th�y tinh"},
			[8] = {{4,239,0,0,0,0},"T� th�y tinh"},
			[9] = {{4,240,0,0,0,0},"L�c th�y tinh"},
		},
	}
	local bil_1, bil_2 = "<color=Orange>L� Quan: <color>", "<link=image:\\spr\\skill\\others\\title_dg.spr><link><color><npc>"
	if bilType then
		local bil_9, bil_10, bil_19
		local bil_12 = bil_a[2]
		if bilType == 1 then
			bil_9 = bil_a[1].bil_a1[bilTOP].bil_a4
			bil_19 = "Cao th� th� gi�i"
		elseif bilType == 2 then
			bil_9 = bil_a[1].bil_a5[2][bilTOP]
			bil_19 = "Cao th� m�n ph�i"
		end
		Msg2Player("<color=yellow>Ph�n th��ng c�a TOP: "..bilTOP.." - "..bil_19..":")
		for bil_10 = 1, getn(bil_9["bil_a4_1"]) do
			for bil_14 = 1, bil_9["bil_a4_1"][bil_10][2] do
				local bil_11 = AddItem(unpack(bil_12[bil_9["bil_a4_1"][bil_10][1]][1]))
				if bil_9["bil_a4_1"][bil_10][3] > 0 then
					local bil_15 = FormatTime2Date(tonumber(bil_9["bil_a4_1"][bil_10][3]) * 24 * 60 *60 + GetCurServerTime());
					ITEM_SetExpiredTime(bil_11, bil_15);
					SyncItem(bil_11);
				end
				if bil_9["bil_a4_1"][bil_10][4] == 2 then
					SetItemBindState(bil_11,-2)
				end
			end
			Msg2Player("<color=green>"..bil_9["bil_a4_1"][bil_10][2].." - "..bil_12[bil_9["bil_a4_1"][bil_10][1]][2])
		end
		if bil_9["bil_a4_2"] > 0 then
			Earn(bil_9["bil_a4_2"])
			Msg2Player("<color=green>"..bil_9["bil_a4_2"].." L��ng")
		end
		if getn(bil_9["bil_a4_3"]) > 0 then
			for bil_16 = 1, getn(bil_9["bil_a4_3"]) do
				for bil_17 = 1, bil_9["bil_a4_3"][bil_16][2] do
					local bil_18 = AddGoldItem(0, bil_12[bil_9["bil_a4_3"][bil_16][1]][1][1])
					if bil_9["bil_a4_3"][bil_16][3] > 0 then
						local bil_15 = FormatTime2Date(tonumber(bil_9["bil_a4_3"][bil_16][3]) * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bil_18, bil_15);
						SyncItem(bil_18);
					end
					if bil_9["bil_a4_3"][bil_16][4] == 2 then
						SetItemBindState(bil_18,-2)
					end
				end
				Msg2Player("<color=green>"..bil_9["bil_a4_3"][bil_16][2].." - "..bil_12[bil_9["bil_a4_3"][bil_16][1]][2])
			end
		end
		return Talk(1, "", bil_1.."��i hi�p �� nh�n ���c ph�n th��ng x�ng ��ng, xin ki�m tra l�i trong h�nh trang!")
	end
	if bilSel then
		local bil_6 = {{"Quay l�i", bilGetAwardTOPRace}, {"Th�i, ta ch� gh� th�m ng�i!", OnCancel}}
		if bilSel == 11 then
			local bil_4 = ""
			for bil_5 = 1, getn(bil_a[1].bil_a1) do
				bil_4 = bil_4.."H�ng <color=fire> "..bil_5.."<color>: T�n: <color=yellow>"..bil_a[1].bil_a1[bil_5].bil_a2.."<color> - ��ng c�p: <color=green>"..bil_a[1].bil_a1[bil_5].bil_a3.."<color><enter>"
			end
			return CreateNewSayEx(bil_2.."Danh s�ch c�c cao th� th� gi�i!<enter>"..bil_4, bil_6)
		end
		if bilSel == 22 then
			local bil_4 = ""
			for bil_5 = 1, getn(bil_a[1].bil_a5[1]) do
				bil_4 = bil_4.._bilTbFac[bil_5][2]..": 1 - <color=yellow>"..bil_a[1].bil_a5[1][bil_5][1].bil_a5_1.."<color>, 2 - <color=yellow>"..bil_a[1].bil_a5[1][bil_5][2].bil_a5_1.."<color>, 3 - <color=yellow>"..bil_a[1].bil_a5[1][bil_5][3].bil_a5_1.."<color><enter>"
			end
			return CreateNewSayEx(bil_2.."Danh s�ch c�c cao th� m�n ph�i!<enter>"..bil_4, bil_6)
		end
		if bilSel == 1 then
			local bil_7 = GetName()
			for bil_8 = 1, getn(bil_a[1].bil_a1) do
				if bil_a[1].bil_a1[bil_8].bil_a2 == bil_7 then
					if GetTask(5971) == 0 then
						if CalcFreeItemCellCount() < 50 then
							return Say(bil_1.."V� ��i hi�p c�n ph�i �� tr�ng �t nh�t l� 50 � tr�ng trong h�nh trang m�i c� th� nh�n th��ng!", 1, "��i t� �� ta s�p x�p l�i!/OnCancel")
						end
						SetTask(5971, tonumber(date("%y%m%d")))
						return Talk(1, "#bilGetAwardTOPRace(0, 1, "..bil_8..")", bil_1.."Th� ra ��i hi�p l� ng��i ��ng TOP "..bil_8.." c�a th� gi�i, n� ph�c, n� ph�c!")
					else
						return Talk(1,"",bil_1.."Ch�ng ph�i c�c h� �� ti�n h�nh nh�n th��ng  r�i sao, ch� l� ��n ch�c L�o gi� n�y!")
					end
				end
			end
			return Talk(1,"#bilGetAwardTOPRace(11)",bil_1.."V� ��i hi�p ��y l�i ��n ��y ch�c gh�o L�o   gi� n�y sao, ch� l� ta nh�n l�m, t�n c�a ng��i ��u c�trong danh s�ch n�y!") 
		end
		if bilSel == 2 then
			local bil_7 = GetName()
			for bil_8 = 1, getn(bil_a[1].bil_a5[1]) do
				for bil_20 = 1, getn(bil_a[1].bil_a5[1][bil_8]) do
					if bil_a[1].bil_a5[1][bil_8][bil_20].bil_a5_1 == bil_7 then
						if GetTask(5971) == 0 then
							if CalcFreeItemCellCount() < 50 then
								return Say(bil_1.."V� ��i hi�p c�n ph�i �� tr�ng �t nh�t l� 50 � tr�ng trong h�nh trang m�i c� th� nh�n th��ng!", 1, "��i t� �� ta s�p x�p l�i!/OnCancel")
							end
							SetTask(5971, tonumber(date("%y%m%d")))
							return Talk(1, "#bilGetAwardTOPRace(0,2,"..bil_20..")", bil_1.."Th� ra ��i hi�p l� ng��i ��ng TOP "..bil_20.." c�a ph�i ".._bilTbFac[bil_8][2]..", n� ph�c, n� ph�c!")
						else
							return Talk(1,"",bil_1.."Ch�ng ph�i c�c h� �� ti�n h�nh nh�n th��ng  r�i sao, ch� l� ��n ch�c L�o gi� n�y!")
						end
					end
				end
			end
			return Talk(1,"#bilGetAwardTOPRace(22)",bil_1.."V� ��i hi�p ��y l�i ��n ��y ch�c gh�o L�o   gi� n�y sao, ch� l� ta nh�n l�m, t�n c�a ng��i ��u c�trong danh s�ch n�y!") 
		end
	end
	local bil_3 = {
		-- "> T�i h� ��n nh�n th��ng c� tham gia �ua TOP!/bilAwardJoinTopRacing",
		-- "> Ta mu�n nh�n th��ng l� cao th� Th� Gi�i/#bilGetAwardTOPRace(1)",
		"Ta mu�n xem danh s�ch cao th� Th� Gi�i/#bilGetAwardTOPRace(11)",
		-- "> Ta mu�n nh�n th��ng l� cao th� M�n Ph�i/#bilGetAwardTOPRace(2)",
		-- "Ta mu�n xem danh s�ch cao th� M�n Ph�i/#bilGetAwardTOPRace(22)",
		-- "> Nh�n th��ng cao th� top 4 ��n 10 c�a M�n Ph�i/#bilGetAwardTOPRace_Top4_10Fac(1111)",
		-- "Xem danh s�ch cao th� top 4 ��n 10 c�a M�n Ph�i/#bilGetAwardTOPRace_Top4_10Fac(2222)",
		"Th�i, ta ch� gh� th�m ng�i!/OnCancel"
	}
	return Say(bil_1.."Hi�n t�i ��c C� Ki�m ch� �� c� trong tay <enter>danh s�ch c�a th�p ��i cao th� ���ng ��i v� c�c s� <enter>huynh s� t� trong c�c m�n ph�i, nh�ng hi�p kh�ch n�y s�ng ��ng ���c nh�n nh�ng ph�n th��ng gi� tr� t� ��c C� Ki�m, ch�ng hay ��i hi�p ��n ��y l� c� vi�c g�?", getn(bil_3), bil_3)
end

function bilAwardJoinTopRacing()
	if GetTask(5966) == 1234 then
		if GetTask(5965) == 0 then
			local bilIndxIt = AddItem(6,1,71,1,1,1)
			SetItemBindState(bilIndxIt,-2)
			local bilIndxIt2 = AddItem(6,1,71,1,1,1)
			SetItemBindState(bilIndxIt2,-2)
			local bilIndxIt3 = AddItem(6,1,71,1,1,1)
			SetItemBindState(bilIndxIt3,-2)
			
			SetTask(5965, 1)
			return Talk(1, "", "<color=Orange>L� Quan: <color>Ch�c m�ng c�c h� �� nh�n ���c 3 <color=yellow>Ti�n Th�o L�<color>!")
		else
			return Talk(1, "", "<color=Orange>L� Quan: <color>Ch�ng ph�i c�c h� �� nh�n th��ng n�y r�i sao!")
		end
	else
		return Talk(1, "", "<color=Orange>L� Quan: <color>H�nh nh� tr��c 19h ng�y 08/08 c�c h� ch�a tham gia �ua TOP c�ng anh em th� ph�i!")
	end
end

function bilGetAwardTOPRace_Top4_10Fac(bilSel, bilFac)
	local bil_1, bil_2 = "<color=Orange>L� Quan: <color>", "<link=image:\\spr\\skill\\others\\title_dg.spr><link><color><npc>"
	local bilDanhSachTOP4_10 = { -- danh s�ch c�c cao th�: bil_a5_1: T�n nh�n v�t - bil_a5_2: ��ng c�p
		[1] = {{bil_a5_1 = "", bil_a5_2 = 114},{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 0},}, -- thi�u l�m
		[2] = {{bil_a5_1 = "", bil_a5_2 = 112},{bil_a5_1 = "", bil_a5_2 = 112},{bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 111},}, -- thi�n v��ng
		[3] = {{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 0}, {bil_a5_1 = "", bil_a5_2 = 0}, {bil_a5_1 = "", bil_a5_2 = 0}, {bil_a5_1 = "", bil_a5_2 = 0},}, -- ���ng m�n
		[4] = {{bil_a5_1 = "", bil_a5_2 = 112},{bil_a5_1 = "", bil_a5_2 = 111},{bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 112},}, -- ng� ��c
		[5] = {{bil_a5_1 = "", bil_a5_2 = 114},{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 112},}, -- nga my
		[6] = {{bil_a5_1 = "", bil_a5_2 = 112},{bil_a5_1 = "", bil_a5_2 = 111},{bil_a5_1 = "", bil_a5_2 = 110}, {bil_a5_1 = "", bil_a5_2 = 90}, {bil_a5_1 = "", bil_a5_2 = 89}, {bil_a5_1 = "", bil_a5_2 = 86}, {bil_a5_1 = "", bil_a5_2 = 86},}, -- th�y y�n
		[7] = {{bil_a5_1 = "", bil_a5_2 = 112},{bil_a5_1 = "", bil_a5_2 = 111},{bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 111}, {bil_a5_1 = "", bil_a5_2 = 0},}, -- c�i bang
		[8] = {{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 0}, {bil_a5_1 = "", bil_a5_2 = 0}, {bil_a5_1 = "", bil_a5_2 = 0}, {bil_a5_1 = "", bil_a5_2 = 0},}, -- thi�n nh�n
		[9] = {{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112},}, -- v� �ang
		[10] = {{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 113},{bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112}, {bil_a5_1 = "", bil_a5_2 = 112},}, -- c�n l�n
	}
	local bilTbSel = {}
	if bilSel == 2222 then
		tinsert(bilTbSel, "Xem TOP Thi�u L�m/#bilGetAwardTOPRace_Top4_10Fac(3333, 1)")
		tinsert(bilTbSel, "Xem TOP Thi�n V��ng/#bilGetAwardTOPRace_Top4_10Fac(3333, 2)")
		tinsert(bilTbSel, "Xem TOP ���ng M�n/#bilGetAwardTOPRace_Top4_10Fac(3333, 3)")
		tinsert(bilTbSel, "Xem TOP Ng� ��c/#bilGetAwardTOPRace_Top4_10Fac(3333, 4)")
		tinsert(bilTbSel, "Xem TOP Nga My/#bilGetAwardTOPRace_Top4_10Fac(3333, 5)")
		tinsert(bilTbSel, "Xem TOP Th�y Y�n/#bilGetAwardTOPRace_Top4_10Fac(3333, 6)")
		tinsert(bilTbSel, "Xem TOP C�i Bang/#bilGetAwardTOPRace_Top4_10Fac(3333, 7)")
		tinsert(bilTbSel, "Xem TOP Thi�n Nh�n/#bilGetAwardTOPRace_Top4_10Fac(3333, 8)")
		tinsert(bilTbSel, "Xem TOP V� �ang/#bilGetAwardTOPRace_Top4_10Fac(3333, 9)")
		tinsert(bilTbSel, "Xem TOP C�n L�n/#bilGetAwardTOPRace_Top4_10Fac(3333, 10)")
		tinsert(bilTbSel, "K�t th�c ��i tho�i/OnCancel")
		return Say(bil_1.."Hi�n t�i ��c C� Ki�m ch� �� c� trong tay <enter>danh s�ch c�a th�p ��i cao th� ���ng ��i v� c�c s� <enter>huynh s� t� trong c�c m�n ph�i, nh�ng hi�p kh�ch n�y s�ng ��ng ���c nh�n nh�ng ph�n th��ng gi� tr� t� ��c C� Ki�m, ch�ng hay ��i hi�p ��n ��y l� c� vi�c g�?", getn(bilTbSel), bilTbSel)
	elseif bilSel == 3333 then
		local DanhsachbilTop1_10MonPhai = "Danh s�ch c�c cao th� top m�n ph�i t� 4 ��n 10!"
		for i = 1, getn(bilDanhSachTOP4_10[bilFac]) do
			DanhsachbilTop1_10MonPhai = DanhsachbilTop1_10MonPhai.."\nTOP "..(i+3)..": T�n: <color=yellow>"..bilDanhSachTOP4_10[bilFac][i].bil_a5_1.."<color> - C�p: <color=Orange>"..bilDanhSachTOP4_10[bilFac][i].bil_a5_2.."<color>"
		end
		return CreateNewSayEx(bil_2..DanhsachbilTop1_10MonPhai, {{"Quay l�i", bilGetAwardTOPRace}, {"Th�i, ta ch� gh� th�m ng�i!", OnCancel}})
	elseif bilSel == 1111 then
		local bilGetNamePlayer = GetName()
		for i = 1, 10 do
			for j = 1, getn(bilDanhSachTOP4_10[i]) do
				if bilDanhSachTOP4_10[i][j].bil_a5_1 == bilGetNamePlayer then
					if GetTask(5971) == 0 then
						if CalcFreeItemCellCount() >= 10 then
							AddItem(4,353,0,0,0,0)
							AddItem(4,353,0,0,0,0)
							AddItem(4,239,0,0,0,0)
							Earn(200000)
							SetTask(5971, tonumber(date("%y%m%d")))
							return Talk(1, "", bil_1.."Th� ra c�c h� l� "..bilGetNamePlayer.." TOP "..(j+3).." c�a m�n ph�i ".._bilTbFac[i][2].." b�i ph�c b�i ph�c!")
						else
							return Say(bil_1.."V� ��i hi�p c�n ph�i �� tr�ng �t nh�t l� 10 � tr�ng trong h�nh trang m�i c� th� nh�n th��ng!", 1, "��i t� �� ta s�p x�p l�i!/OnCancel")
						end
					else
						return Talk(1,"",bil_1.."Ch�ng ph�i c�c h� �� ti�n h�nh nh�n th��ng  r�i sao, ch� l� ��n ch�c L�o gi� n�y!")
					end
				end
			end
		end
		return Talk(1,"",bil_1.."H�nh nh� c�c h� kh�ng c� t�n trong b�ng danh s�ch c�c cao th� m�n ph�i t� 4 ��n 10 th� ph�i!")
	end
end

function bilAwardCityWar()
	local bilTbbilAwardCityWarPlayer = 
	{
		{bilName = "V� h�", bilNamePlayer = "", bilCity = "Ph��ng T��ng", bilTitleID = 153},
		{bilName = "V� h�", bilNamePlayer = "", bilCity = "T��ng D��ng", bilTitleID = 157},
		{bilName = "V� h�", bilNamePlayer = "", bilCity = "D��ng Ch�u", bilTitleID = 158},
		{bilName = "V� h�", bilNamePlayer = "", bilCity = "Th�nh ��", bilTitleID = 154},
		{bilName = "V� h�", bilNamePlayer = "", bilCity = "��i L�", bilTitleID = 155},
		{bilName = "V� h�", bilNamePlayer = "", bilCity = "L�m An", bilTitleID = 159},
		{bilName = "V� h�", bilNamePlayer = "", bilCity = "Bi�n Kinh", bilTitleID = 156},
	}
	for i = 1, getn(bilTbbilAwardCityWarPlayer) do
		if (bilTbbilAwardCityWarPlayer[i].bilNamePlayer == GetName()) then
			local bilTimeActive = ((7 - tonumber(date("%w"))) * 24) + (24 - tonumber(GetLocalDate("%H")))
			if tonumber(date("%w")) == 0 then
				bilTimeActive = (24 - tonumber(GetLocalDate("%H")))
			end
			local nServerTime = GetCurServerTime()+ (bilTimeActive * 60 * 60);
			local nDate	= FormatTime2Number(nServerTime);
			local nDay	= floor(mod(nDate,1000000) / 10000);
			local nMon	= mod(floor(nDate / 1000000) , 100)
			local bilTimeActived	= nMon * 1000000 + nDay * 10000
			Title_AddTitle(bilTbbilAwardCityWarPlayer[i].bilTitleID, 2, bilTimeActived)
			Title_ActiveTitle(bilTbbilAwardCityWarPlayer[i].bilTitleID)
			SetTask(1122, bilTbbilAwardCityWarPlayer[i].bilTitleID)
			-- Say("Ch�c m�ng ��i hi�p �� nh�n ���c danh hi�u <enter><color=yellow>Th�nh Ch� "..bilTbbilAwardCityWarPlayer[i].bilCity.."<color> <enter>th�i gian k�ch ho�t c�n <color=green>"..bilTimeActive.."<color> gi� .<enter>M�t l�n n�a b�n trang r�t l�y l�m vinh d� khi trao <enter>th��ng cho ��i hi�p, h�y ti�p t�c c� g�ng!")
			Msg2Player("Ch�c m�ng ��i hi�p �� nh�n ���c danh hi�u <enter><color=yellow>Th�nh Ch� "..bilTbbilAwardCityWarPlayer[i].bilCity.."<color> <enter>th�i gian k�ch ho�t c�n <color=green>"..bilTimeActive.."<color> gi� !")
		end
	end
		if GetName() == "Nh��1�Th�i�Quen"	then
			if GetTask(5955) < 6 then  -- ki�m tra �� nh�n th��ng ch�a, t�ng l�n theo ��t c�ng th�nh
				if CalcFreeItemCellCount() < 20 then Say("��i hi�p c�n �� tr�ng h�nh trang c�a m�nh 20 � m�i c� th� nh�n v�t ph�m!") return 1 end
				SetTask(5955, 6)	-- ki�m tra �� nh�n th��ng ch�a, t�ng l�n theo ��t c�ng th�nh
				
				-------------- th��ng c�c v�t ph�m
					-- 1000 c�i t�i nguy�n li�u VU LAN
						for i = 1, 4 do
							local bilItemIndex = AddStackItem(250,6,1,4265,1,0,0,0)
							local nExpiredDate = FormatTime2Date(30 * 24 * 60 *60 + GetCurServerTime());
							ITEM_SetExpiredTime(bilItemIndex, nExpiredDate);
							SyncItem(bilItemIndex);
						end
					-- 2 KNB
						AddItem(4,343,1,0,0,0)
						AddItem(4,343,1,0,0,0)
					-- 5 T� th�y tinh
						AddItem(4,239,1,0,0,0)
						AddItem(4,239,1,0,0,0)
						AddItem(4,239,1,0,0,0)
						AddItem(4,239,1,0,0,0)
						AddItem(4,239,1,0,0,0)
					-- 5 Tinh h�ng b�o th�ch
						AddItem(4,353,1,0,0,0)
						AddItem(4,353,1,0,0,0)
						AddItem(4,353,1,0,0,0)
						AddItem(4,353,1,0,0,0)
						AddItem(4,353,1,0,0,0)
					-- 1000 v�n l��ng
						Earn(10000000)
				-------------- th��ng c�c v�t ph�m
			else
				return Msg2Player("Ch�ng ph�i c�c h� �� nh�n th��ng l� th�nh ch� r�i sao!")
			-- end
		end
	end
	local bilMsg = ""
	for i = 1, getn(bilTbbilAwardCityWarPlayer) do
		bilMsg = bilMsg.."\nTh�nh: <color=yellow>"..bilTbbilAwardCityWarPlayer[i].bilCity.."<color> Th�i Th�: <color=green>"..bilTbbilAwardCityWarPlayer[i].bilName.."<color>"
	end
	return CreateNewSayEx("<link=image:\\spr\\skill\\others\\title_dg.spr><link><color>".."<npc>C�c h� kh�ng ph�i l� Th�nh ch�, chuy�n l�m   ch� th�nh tr� kh�ng ph�i l� chuy�n nh�, ch�ng l� c�c  h� l�i �em ra ��a sao?<enter><color=fire>D��i ��y l� danh s�ch c�c Th�i th� c�a c�c Th�nh th�.<color>"..bilMsg, {{"Th�i, ta ch� ��n th�m ng�i th�i!", OnCancel}})
end

function bilUpdateTOPPlayerPrivWeek()
	local bilOpenFileTopWrite = openfile("script/global/bil4i3n/bil4i3n_log/bil4i3n_awardplayertop_tb.lua", "w")
	write(bilOpenFileTopWrite, "_bilPlayersNameTb = \n{\n\tTopCaoThu = \n\t\t{", "\n")
	for i = 1, 4 do
		local szName, nValue = Ladder_GetLadderInfo(10287, i);
		write(bilOpenFileTopWrite, "\t\t\t["..i.."] = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	end
	write(bilOpenFileTopWrite, "\t\t},\n\tTopPhuHo = \n\t\t{", "\n")
	for i = 1, 4 do
		local szName, nValue = Ladder_GetLadderInfo(10288, i);
		write(bilOpenFileTopWrite, "\t\t\t["..i.."] = {Name = '"..szName.."', Money = "..nValue..",},", "\n")
	end
	write(bilOpenFileTopWrite, "\t\t},\n\TopMonPhai = \n\t\t{", "\n")
	
	local szName, nValue = Ladder_GetLadderInfo(10277, 1);
	write(bilOpenFileTopWrite, "\t\t\tshaolin = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10278, 1);
	write(bilOpenFileTopWrite, "\t\t\ttianwang = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10279, 1);
	write(bilOpenFileTopWrite, "\t\t\ttangmen = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10280, 1);
	write(bilOpenFileTopWrite, "\t\t\twudu = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10281, 1);
	write(bilOpenFileTopWrite, "\t\t\temei = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10282, 1);
	write(bilOpenFileTopWrite, "\t\t\tcuiyan = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10283, 1);
	write(bilOpenFileTopWrite, "\t\t\tgaibang = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10284, 1);
	write(bilOpenFileTopWrite, "\t\t\ttianren = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10285, 1);
	write(bilOpenFileTopWrite, "\t\t\twudang = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10286, 1);
	write(bilOpenFileTopWrite, "\t\t\tkunlun = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	
	write(bilOpenFileTopWrite, "\t\t},\n}", "\n")
	closefile(bilOpenFileTopWrite)
	LoadScript("\\script\\global\\bil4i3n\\bil4i3n_log\\bil4i3n_awardplayertop_tb.lua")
	dofile("script/global/·��_���.lua")
	for i=10277, 10286 do -- m�n ph�i cao th�
		Ladder_ClearLadder(i)
	end
	for i=10265, 10275 do -- m�n ph�i ph� h�
		Ladder_ClearLadder(i)
	end
	Ladder_ClearLadder(10288) -- ph� h�
	Msg2SubWorld("<color=yellow>Danh s�ch c�c cao th� c�a tu�n<enter>tr��c �� ���c c�p nh�t, c�c nh�n s� c� t�n<enter>trong danh s�ch c�n ��n g�p L� quan �� nh�n<enter>th��ng!")
	AddLocalNews("<color=yellow>Danh s�ch c�c cao th� c�a tu�n tr��c �� ���c c�p nh�t, c�c nh�n s� c� t�n trong danh s�ch c�n ��n g�p L� quan �� nh�n th��ng!")
end

function bilGetAwardTOPPlayers()
	local bilTbOp = {}
	tinsert(bilTbOp, "> Ta ��n �� nh�n th��ng TOP cao th� tu�n tr��c!/#bilReceiveAward(1)")
	tinsert(bilTbOp, "Ta mu�n xem danh s�ch cao th� tu�n tr��c!/#bilViewTOP(1)")
	tinsert(bilTbOp, "> Ta ��n �� nh�n th��ng TOP ph� h� tu�n tr��c!/#bilReceiveAward(2)")
	tinsert(bilTbOp, "Ta mu�n xem danh s�ch ph� h� tu�n tr��c!/#bilViewTOP(2)")
	tinsert(bilTbOp, "> Ta ��n �� nh�n th��ng TOP m�n ph�i tu�n tr��c!/#bilReceiveAward(3)")
	tinsert(bilTbOp, "Ta mu�n xem danh s�ch cao th� m�n ph�i tu�n tr��c!/#bilViewTOP(3)")
	tinsert(bilTbOp, "Ta ��n �� h�i th�m ng�i th�i!/OnCancel")
	Say("<color=Orange>L� quan: <color>".."Tu�n m�i �� ��n, t�t c� c�c cao th� c�a tu�ntr��c �� ���c ghi danh, �� t�n vinh c�c v� cao th�,  b�n trang s� ��t bi�t trao th��ng cho nh�ng nh�n t�i n�y!", getn(bilTbOp), bilTbOp)
end

_bilTitleTopLvl = 
{
	{bilTitleID = 328, TitleName = "Cao th� thi�n h� h�ng nh�t",},
	{bilTitleID = 329, TitleName = "Cao th� thi�n h� h�ng hai",},
	{bilTitleID = 330, TitleName = "Cao th� thi�n h� h�ng ba",},
	{bilTitleID = 331, TitleName = "Cao th� thi�n h� h�ng t�",},
}

_bilTitleTopMoney =
{
	{bilTitleID = 332, TitleName = "Gi�u nh�t thi�n h� h�ng nh�t",},
	{bilTitleID = 333, TitleName = "Gi�u nh�t thi�n h� h�ng hai",},
	{bilTitleID = 334, TitleName = "Gi�u nh�t thi�n h� h�ng ba",},
	{bilTitleID = 335, TitleName = "Gi�u nh�t thi�n h� h�ng t�",},
}

_bilTitleFaction = 
{
	shaolin = 
		{
			[0] = {bilTitleID = 336, TitleName = "Thi�u l�m ��i s� huynh",},
			[1] = {bilTitleID = 337, TitleName = "Thi�u l�m ��i s� t�",},
		},
	tianwang = 
		{
			[0] = {bilTitleID = 338, TitleName = "Thi�n v��ng ��i s� huynh",},
			[1] = {bilTitleID = 339, TitleName = "Thi�n v��ng ��i s� t�",},
		},
	tangmen = 
		{
			[0] = {bilTitleID = 340, TitleName = "���ng m�n ��i s� huynh",},
			[1] = {bilTitleID = 341, TitleName = "���ng m�n ��i s� t�",},
		},
	wudu = 
		{
			[0] = {bilTitleID = 342, TitleName = "Ng� ��c ��i s� huynh",},
			[1] = {bilTitleID = 343, TitleName = "Ng� ��c ��i s� t�",},
		},
	emei = 
		{
			[0] = {bilTitleID = 344, TitleName = "Nga my ��i s� huynh",},
			[1] = {bilTitleID = 345, TitleName = "Nga my ��i s� t�",},
		},
	cuiyan = 
		{
			[0] = {bilTitleID = 346, TitleName = "Th�y y�n ��i s� huynh",},
			[1] = {bilTitleID = 347, TitleName = "Th�y y�n ��i s� t�",},
		},
	gaibang = 
		{
			[0] = {bilTitleID = 348, TitleName = "C�i bang ��i s� huynh",},
			[1] = {bilTitleID = 349, TitleName = "C�i bang ��i s� t�",},
		},
	tianren = 
		{
			[0] = {bilTitleID = 350, TitleName = "Thi�n nh�n ��i s� huynh",},
			[1] = {bilTitleID = 351, TitleName = "Thi�n nh�n ��i s� t�",},
		},
	wudang = 
		{
			[0] = {bilTitleID = 352, TitleName = "V� �ang ��i s� huynh",},
			[1] = {bilTitleID = 353, TitleName = "V� �ang ��i s� t�",},
		},
	kunlun = 
		{
			[0] = {bilTitleID = 354, TitleName = "C�n l�n ��i s� huynh",},
			[1] = {bilTitleID = 355, TitleName = "C�n l�n ��i s� t�",},
		},
}

function bilReceiveAward(bilSel)
	if bilSel == 1 then
		for i = 1, 4 do
			if _bilPlayersNameTb["TopCaoThu"][i].Name == GetName() then
				return bilReceiveAwardActive(bilSel, i)
			end
		end
		return Talk(1, "", "��i hi�p kh�ng c� trong danh s�ch nh�n th��ng c�a <enter>tu�n n�y, ��i hi�p c� th� v�o ph�n xem danh s�ch �� <enter>bi�t ai ���c nh�n th��ng!")
	elseif bilSel == 2 then
		for i = 1, 4 do
			if _bilPlayersNameTb["TopPhuHo"][i].Name == GetName() then
				return bilReceiveAwardActive(bilSel, i)
			end
		end
		return Talk(1, "", "��i hi�p kh�ng c� trong danh s�ch nh�n th��ng c�a <enter>tu�n n�y, ��i hi�p c� th� v�o ph�n xem danh s�ch �� <enter>bi�t ai ���c nh�n th��ng!")
	elseif bilSel == 3 then
		local bilCheckFac = 0
		for facloop = 1, 10 do
			if _bilSectTable[facloop][1] == GetFaction() then
				if _bilPlayersNameTb["TopMonPhai"][GetFaction()].Name == GetName() then
					return bilReceiveAwardActive(bilSel, GetFaction())
				else
					bilCheckFac = 1
				end
			end
		end
		if bilCheckFac == 1 then
			return Talk(1, "", "��i hi�p kh�ng c� trong danh s�ch nh�n th��ng c�a <enter>tu�n n�y, ��i hi�p c� th� v�o ph�n xem danh s�ch �� <enter>bi�t ai ���c nh�n th��ng!")
		end
		return Talk(1, "", "<color=metal>��i hi�p ch�a l� �� t� c�a gi�o ph�i n�o c� n�n kh�ng th� nh�n th��ng � m�c n�y!<color>")
	end
end

function bilReceiveAwardActive(RankType, RankNum)
	local bilTitleIDAward
	local bilTitleIDName
	if RankType == 1 then
		bilTitleIDAward = _bilTitleTopLvl[RankNum].bilTitleID
		bilTitleIDName = _bilTitleTopLvl[RankNum].TitleName
	elseif RankType == 2 then
		bilTitleIDAward = _bilTitleTopMoney[RankNum].bilTitleID
		bilTitleIDName = _bilTitleTopMoney[RankNum].TitleName
	elseif RankType == 3 then
		bilTitleIDAward = _bilTitleFaction[GetFaction()][GetSex()].bilTitleID
		bilTitleIDName = _bilTitleFaction[GetFaction()][GetSex()].TitleName
	end
	local bilTimeActive = ((7 - tonumber(date("%w"))) * 24) + (24 - tonumber(GetLocalDate("%H")))
	if tonumber(date("%w")) == 0 then
		bilTimeActive = (24 - tonumber(GetLocalDate("%H")))
	end
	local nServerTime = GetCurServerTime()+ (bilTimeActive * 60 * 60);
	local nDate	= FormatTime2Number(nServerTime);
	local nDay	= floor(mod(nDate,1000000) / 10000);
	local nMon	= mod(floor(nDate / 1000000) , 100)
	local bilTimeActived	= nMon * 1000000 + nDay * 10000
	Title_AddTitle(bilTitleIDAward, 2, bilTimeActived)
	Title_ActiveTitle(bilTitleIDAward)
	SetTask(1122, bilTitleIDAward)
	Say("Ch�c m�ng ��i hi�p �� nh�n ���c danh hi�u <enter><color=yellow>"..bilTitleIDName.."<color> <enter>th�i gian k�ch ho�t c�n <color=green>"..bilTimeActive.."<color> gi� .<enter>M�t l�n n�a b�n trang r�t l�y l�m vinh d� khi trao <enter>th��ng cho ��i hi�p, h�y ti�p t�c c� g�ng!")
end

function bilViewTOP(sel)
	local bilStr = ""
	if sel == 1 then
		if FALSE(_bilPlayersNameTb["TopCaoThu"][1].Name) then
			bilStr = "<color=Orange>L� quan: <color>Hi�n t�i ch�a c� x�p h�ng, xin ��i hi�p ��i th�ng b�o!\n"
		else
			for i = 1, 4 do
				bilStr = bilStr.."Cao th� Top [<color=yellow>"..i.."<color>]: <color=fire>".._bilPlayersNameTb["TopCaoThu"][i].Name.."<color> - ��ng c�p: <color=green>".._bilPlayersNameTb["TopCaoThu"][i].Level.."<color>\n"
			end
		end
	elseif sel == 2 then
		if FALSE(_bilPlayersNameTb["TopPhuHo"][1].Name) then
			bilStr = "<color=Orange>L� quan: <color>Hi�n t�i ch�a c� x�p h�ng, xin ��i hi�p ��i th�ng b�o!\n"
		else
			for i = 1, 4 do
				bilStr = bilStr.."Ph� h� TOP [<color=yellow>"..i.."<color>]: <color=fire>".._bilPlayersNameTb["TopPhuHo"][i].Name.."<color> - Ti�n: <color=green>".._bilPlayersNameTb["TopPhuHo"][i].Money.."<color> l��ng\n"
			end
		end
	elseif sel == 3 then
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["shaolin"].Name) then
			bilStr = bilStr.."<color=white>Hi�n ch�a c� danh s�ch c�a Thi�u l�m<color>\n"
		else
			bilStr = bilStr.."Cao th� <color=yellow>Thi�u l�m<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["shaolin"].Name.."<color> - ��ng c�p: <color=green>".._bilPlayersNameTb["TopMonPhai"]["shaolin"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["tianwang"].Name) then
			bilStr = bilStr.."<color=white>Hi�n ch�a c� danh s�ch c�a Thi�n v��ng<color>\n"
		else
			bilStr = bilStr.."Cao th� <color=yellow>Thi�n v��ng<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["tianwang"].Name.."<color> - ��ng c�p: <color=green>".._bilPlayersNameTb["TopMonPhai"]["tianwang"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["tangmen"].Name) then
			bilStr = bilStr.."<color=white>Hi�n ch�a c� danh s�ch c�a ���ng m�n<color>\n"
		else
			bilStr = bilStr.."Cao th� <color=yellow>���ng m�n<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["tangmen"].Name.."<color> - ��ng c�p: <color=green>".._bilPlayersNameTb["TopMonPhai"]["tangmen"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["wudu"].Name) then
			bilStr = bilStr.."<color=white>Hi�n ch�a c� danh s�ch c�a Ng� ��c<color>\n"
		else
			bilStr = bilStr.."Cao th� <color=yellow>Ng� ��c<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["wudu"].Name.."<color> - ��ng c�p: <color=green>".._bilPlayersNameTb["TopMonPhai"]["wudu"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["emei"].Name) then
			bilStr = bilStr.."<color=white>Hi�n ch�a c� danh s�ch c�a Nga my<color>\n"
		else
			bilStr = bilStr.."Cao th� <color=yellow>Nga my<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["emei"].Name.."<color> - ��ng c�p: <color=green>".._bilPlayersNameTb["TopMonPhai"]["emei"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["cuiyan"].Name) then
			bilStr = bilStr.."<color=white>Hi�n ch�a c� danh s�ch c�a Th�y y�n<color>\n"
		else
			bilStr = bilStr.."Cao th� <color=yellow>Th�y y�n<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["cuiyan"].Name.."<color> - ��ng c�p: <color=green>".._bilPlayersNameTb["TopMonPhai"]["cuiyan"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["gaibang"].Name) then
			bilStr = bilStr.."<color=white>Hi�n ch�a c� danh s�ch c�a C�i bang<color>\n"
		else
			bilStr = bilStr.."Cao th� <color=yellow>C�i bang<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["gaibang"].Name.."<color> - ��ng c�p: <color=green>".._bilPlayersNameTb["TopMonPhai"]["gaibang"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["tianren"].Name) then
			bilStr = bilStr.."<color=white>Hi�n ch�a c� danh s�ch c�a Thi�n nh�n<color>\n"
		else
			bilStr = bilStr.."Cao th� <color=yellow>Thi�n nh�n<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["tianren"].Name.."<color> - ��ng c�p: <color=green>".._bilPlayersNameTb["TopMonPhai"]["tianren"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["wudang"].Name) then
			bilStr = bilStr.."<color=white>Hi�n ch�a c� danh s�ch c�a V� �ang<color>\n"
		else
			bilStr = bilStr.."Cao th� <color=yellow>V� �ang<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["wudang"].Name.."<color> - ��ng c�p: <color=green>".._bilPlayersNameTb["TopMonPhai"]["wudang"].Level.."<color>\n"
		end
		if FALSE(_bilPlayersNameTb["TopMonPhai"]["kunlun"].Name) then
			bilStr = bilStr.."<color=white>Hi�n ch�a c� danh s�ch c�a C�n l�n<color>\n"
		else
			bilStr = bilStr.."Cao th� <color=yellow>C�n l�n<color>: <color=fire>".._bilPlayersNameTb["TopMonPhai"]["kunlun"].Name.."<color> - ��ng c�p: <color=green>".._bilPlayersNameTb["TopMonPhai"]["kunlun"].Level.."<color>\n"
		end
	end
	CreateNewSayEx("<link=image:\\spr\\skill\\others\\title_dg.spr><link><color>"..bilStr, {{"Quay l�i", bilGetAwardTOPPlayers}, {"K�t th�c ��i tho�i", OnCancel}})
end

function bilGetItem2AccountClone(bilS, bil_3)
	local bil_1 = { 
		[1]= {"D�y chuy�n - N�", {0,4,0,1}},
		[2]= {"D�y chuy�n - Nam", {0,4,1,1}},
		[3]= {"Ng�c b�i - N�", {0,9,0,1}},
		[4]= {"Ng�c b�i - Nam", {0,9,1,1}},
		[5]= {"Nh�n - Nam, N�", {0,3,0,1}},
	} 
	if bilS then
		if bilS == -2 then
			SetTaskTemp(246, bil_3)
			return AskClientForNumber("bilGetItem2AccountClone",0,99,"Nh�p s� l��ng")
		elseif bilS == -1 then
			local bil_2 = {}
			for i = 1, getn(bil_1) do 
				tinsert(bil_2, bil_1[i][1].."/#bilGetItem2AccountClone(-2, "..i..")")
			end
			tinsert(bil_2, "Th�i kh�ng l�y g� c�!/OnCancel")
			return Say("L�y trang b� cho Acc Clone!", getn(bil_2), bil_2)
		else
			local bil_5 = GetTaskTemp(246)
			for bil_4 = 1, bilS do
				if CalcFreeItemCellCount() > 0 then
					AddItem(bil_1[bil_5][2][1], bil_1[bil_5][2][2], bil_1[bil_5][2][3], random(1, 10), random(0, 4), 1, 1)
				end
			end
			return SetTaskTemp(246, 0)
		end
	end
end

function FALSE(nValue)
	if (nValue == nil or nValue == 0 or nValue == "") then
		return 1
	else
		return nil
	end
end

function OnCancel()
end
