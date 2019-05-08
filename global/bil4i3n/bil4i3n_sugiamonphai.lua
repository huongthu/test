Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

_bilTbAddSkillFactionManual = {
	[1] = {
		{"Thi�n V��ng Bang", 70},
		{"Thi�u L�m Ph�i", 70},
	},
	[2] = {
		{"���ng M�n Ph�i", 70},
		{"Ng� ��c Gi�o", 70},
	},
	[3] = {
		{"Nga My Ph�i", 70},
		{"Th�y Y�n M�n", 70},
	},
	[4] = {
		{"C�i Bang Ph�i", 70},
		{"Thi�n Nh�n Gi�o", 70},
	},
	[5] = {
		{"V� �ang Ph�i", 70},
		{"C�n L�n Ph�i", 70},
	},
}

function main()
	if GetLastFactionNumber() == -1 then
		local bilSeriesPl = GetSeries()
		local bilTbSayOp = {}
		for i = 1, 2 do
			tinsert(bilTbSayOp, _bilTbAddSkillFactionManual[bilSeriesPl + 1][i][1].."/#bilJoin2TheFaction_Ok("..bilSeriesPl..", "..i..")")
		end
		tinsert(bilTbSayOp, "K�t th�c ��i tho�i!/bil.OnCancel")
		return Say(bil.C(4, "S� gi� m�n ph�i: ").."Ta l� s� gi� c�a th�p ��i m�n ph�i n�i danh tr�n giang h�, ���c s� t�n nhi�m c�a ch��ng m�n c�c m�n ph�i ta c� th� ��c c�ch cho v� thi�u hi�p ��y gia nh�p m�n ph�i b�t k�, v� thi�u hi�p mu�n gia nh�p m�n ph�i n�o!", getn(bilTbSayOp), bilTbSayOp)
	else
		return Talk(1, "", bil.C(4, "S� gi� m�n ph�i: ").."V� thi�p hi�p �� l� ng��i c�a danh m�n ch�nh ph�i, n�u mu�n v� ��a b�n c�a b�n m�n c� th� v� 8 t�n th� th�n g�p c�c �� t� c�a m�n ph�i v� nh� h� ��a v� m�n ph�i!")
	end
end

function bilJoin2TheFaction_Ok(bilSeries, bilFac)
	local bilSeries = bilSeries + 1
	if bilSeries == 1 then
		if bilFac == 1 then
			SetFaction("tianwang")       	
			SetCamp(3)
			SetCurCamp(3)
			SetLastFactionNumber(1)
			add_tw(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan ngh�nh b�n gia nh�p Thi�n V��ng bang!")
			Msg2Faction(GetFaction(),GetName().." t� h�m nay gia nh�p Thi�n V��ng bang, xin b�i ki�n c�c v� huynh ��! Mong c�c v� quan t�m ch� gi�o!",GetName())
		elseif bilFac == 2 then
			SetFaction("shaolin")   
			SetCamp(1)
			SetCurCamp(1)
			SetLastFactionNumber(0)
			add_sl(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan ngh�nh b�n gia nh�p Thi�u L�m!")
			Msg2Faction("shaolin",GetName().." t� h�m nay gia nh�p Thi�u l�m, xin b�i ki�n c�c v� huynh ��! Mong c�c v� quan t�m ch� gi�o!",GetName())
		end
	elseif bilSeries == 2 then
		if bilFac == 1 then
			SetFaction("tangmen")
			SetCamp(3)
			SetCurCamp(3)
			SetLastFactionNumber(2)
			add_tm(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan ngh�nh b�n gia nh�p ���ng m�n!")
			Msg2Faction("tangmen",GetName().." t� h�m nay gia nh�p ���ng M�n, xin b�i ki�n c�c v� huynh t�. Mong c�c v� quan t�m ch� gi�o!",GetName())
		elseif bilFac == 2 then
			SetFaction("wudu") 
			SetCamp(2)
			SetCurCamp(2)
			SetLastFactionNumber(3)
			add_wu(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan ngh�nh b�n Gia nh�p Ng� ��c gi�o!")
			Msg2Faction("wudu",GetName().." t� h�m nay gia nh�p Ng� ��c gi�o, xin b�i ki�n c�c v� huynh t�. Mong c�c v� quan t�m ch� gi�o!",GetName())
		end
	elseif bilSeries == 3 then
		if bilFac == 1 then
			SetFaction("emei")       	
			SetCamp(1)
			SetCurCamp(1)
			SetLastFactionNumber(4)
			add_em(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan ngh�nh b�n gia nh�p Nga Mi ph�i!")
			Msg2Faction("emei",GetName().." t� h�m nay gia nh�p Nga Mi ph�i. Xin b�i ki�n c�c v� s� t�. Mong c�c v� quan t�m ch� gi�o!",GetName())
		elseif bilFac == 2 then
			add_cy(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			SetFaction("cuiyan")  
			SetCamp(3)
			SetCurCamp(3)
			SetLastFactionNumber(5)
			Msg2Player("Hoan ngh�nh b�n gia nh�p Th�y Y�n m�n!")
			Msg2Faction("cuiyan",GetName().." t� h�m nay gia nh�p Th�y Y�n m�n. Xin b�i ki�n c�c v� s� t�. Mong c�c v� quan t�m ch� gi�o!",GetName())
		end
	elseif bilSeries == 4 then
		if bilFac == 1 then
			SetFaction("gaibang")   
			SetCamp(1)
			SetCurCamp(1)
			SetLastFactionNumber(6)
			add_gb(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan ngh�nh b�n gia nh�p C�i bang!")
			Msg2Faction("gaibang",GetName().." T� h�m nay gia nh�p C�i bang! Xin b�i ki�n c�c v� s� huynh s� t�! Mong c�c v� quan t�m ch� gi�o!",GetName())
		elseif bilFac == 2 then
			SetFaction("tianren")      
			SetCamp(2)
			SetCurCamp(2)
			SetLastFactionNumber(7)
			Msg2Player("Gia nh�p Thi�n Nh�n gi�o!")
			Msg2Faction("tianren",GetName().." t� h�m nay gia nh�p Thi�n Nh�n gi�o! Xin b�i ki�n c�c v� ��o huynh s� t�! Mong c�c v� quan t�m ch� gi�o!",GetName())
			add_tr(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
		end
	elseif bilSeries == 5 then
		if bilFac == 1 then
			SetFaction("wudang")    
			SetCamp(1)
			SetCurCamp(1)
			SetLastFactionNumber(8)
			add_wd(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan ngh�n b�n gia nh�p V� �ang ph�i!")
			Msg2Faction("wudang",GetName().." t� h�m nay gia nh�p V� �ang ph�i, tr��c ti�n ��n b�i ki�n c�c v� s� huynh, s� t�!",GetName())
		elseif bilFac == 2 then
			SetFaction("kunlun")      		
			SetCamp(3)
			SetCurCamp(3)
			SetLastFactionNumber(9)
			add_kl(_bilTbAddSkillFactionManual[bilSeries][bilFac][2])
			AddMagic(210, 1)
			Msg2Player("Hoan ngh�nh b�n gia nh�p C�n L�n ph�i!")
			Msg2Faction("kunlun",GetName().." t� h�m nay gia nh�p C�n L�n ph�i! Xin b�i ki�n c�c v� ��o huynh s� t�! Mong c�c v� quan t�m ch� gi�o!",GetName())
		end
	end
end
