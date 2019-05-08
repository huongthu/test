IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

bilTbTransLife = {
	-- bil_tb_1: �i�m k� n�ng - bil_tb_2: �i�m ti�m n�ng - bil_tb_3: kh�ng t�nh t�i �a (c�ng d�n) - bil_tb_4: k� n�ng t�i �a - bil_tb_5: ��ng c�p y�u c�u - bil_tb_6: ti�n v�n y�u c�u
	[1] = {bil_tb_1 = 20, bil_tb_2 = 200, bil_tb_3 = 2, bil_tb_4 = 1, bil_tb_5 = 190, bil_tb_6 = 10000000},
	[2] = {bil_tb_1 = 20, bil_tb_2 = 200, bil_tb_3 = 2, bil_tb_4 = 2, bil_tb_5 = 190, bil_tb_6 = 20000000},
	[3] = {bil_tb_1 = 20, bil_tb_2 = 200, bil_tb_3 = 2, bil_tb_4 = 3, bil_tb_5 = 190, bil_tb_6 = 30000000},
	[4] = {bil_tb_1 = 20, bil_tb_2 = 200, bil_tb_3 = 2, bil_tb_4 = 4, bil_tb_5 = 190, bil_tb_6 = 40000000},
	[5] = {bil_tb_1 = 20, bil_tb_2 = 200, bil_tb_3 = 2, bil_tb_4 = 5, bil_tb_5 = 190, bil_tb_6 = 50000000},
}

function main()
	return bilTbTransLife:MainNPC()
end

function bilTbTransLife:MainNPC()
	local bil_1 = {
		{"Xin gi�p �� t� ti�n h�nh Tr�ng Sinh", self.AboutNext, {0}},
		{"T�i h� ch� v� t�nh �i ngang qua!", bil.OnCancel},
	}
	return CreateNewSayEx("<npc><color=green>C�i tr�n nh� n�y quanh n�m tr�ngs�ng nh� g��ng, t�n Minh nguy�t tr�n c�ng t� �� m� ra.<color>Nh� ng��i ��n n�i h�o l�nh n�y ch�ng hay c� vi�c g� <enter>ch� gi�o?", bil_1)
end

function bilTbTransLife:AboutNext(bilSel)
	local TSK_ZHUANSHENG_FLAG = 2547
	local bil_1 = ST_GetTransLifeCount() + 1
	if bil_1 > getn(bilTbTransLife) then
		return CreateNewSayEx("<npc>C�c h� �� ��t ��n gi�i h�n Tr�ng sinh, hi�n ch�a c� th�ng tin v� Tr�ng sinh l�n th� "..bil.C(2, bil_1).." xin h�y ��i tin t�c v� l�n Tr�ng sinh ti�p theo!", {{"K�t th�c ��i tho�i!", bil.OnCancel}})
	end
	local bil_2_1, bil_2_2, bil_2_3, bil_2_4, bil_2_5, bil_2_6, bil_2_7, bil_2_8 = 0,0,0, "", "", "", 0, {}
	for bil_2 = 1, bil_1 do 
		bil_2_1 = bil_2_1 + bilTbTransLife[bil_2].bil_tb_1
		bil_2_2 = bil_2_2 + bilTbTransLife[bil_2].bil_tb_2
		bil_2_3 = bil_2_3 + bilTbTransLife[bil_2].bil_tb_3
	end
	if GetLevel() >= bilTbTransLife[bil_1].bil_tb_5 then 
		bil_2_4 = "-- <pic=135>  <color=green>[��t] <color>" 
	else 
		bil_2_4 = "-- <pic=137> <color=red>[Ch�a ��t]<color>" 
		bil_2_7 = 1
	end
	if GetCash() >= bilTbTransLife[bil_1].bil_tb_6 then
		bil_2_5 = "-- <pic=135> <color=green>[��t] <color>" 
	else 
		bil_2_5 = "-- <pic=137> <color=red>[Ch�a ��t]<color>" 
		bil_2_7 = 2
	end
	if GetTask(TSK_ZHUANSHENG_FLAG) == 1 then
		bil_2_6 = "-- <pic=135> <color=green>[��t] <color>" 
	else 
		bil_2_6 = "-- <pic=137> <color=red>[Ch�a ��t]<color>" 
		bil_2_7 = 3
	end
	if bil_2_7 ~= 0 then
		tinsert(bil_2_8, {"Xem ra �� t� ch�a chu�n b� k�, �� l�m phi�n ng��i!", bil.OnCancel})
	else
		tinsert(bil_2_8, {"X�c nh�n Tr�ng sinh, mong s� ph� gi�p ��!", bilTbTransLife.CheckPlayer})
		tinsert(bil_2_8, {"Xem ra �� t� ch�a chu�n b� k�, �� l�m phi�n ng��i!", bil.OnCancel})
	end
	return CreateNewSayEx("<npc>Ti�p theo l�: "..bil.C(2, "Tr�ng sinh - "..bil_1)
		.."<enter><enter>Y�u c�u:"
		.."<enter>"..bil.C(5, "��ng c�p: ")..bil.C(2, bilTbTransLife[bil_1].bil_tb_5.." c�p ")..bil_2_4
		.."<enter>"..bil.C(5, "Ng�n l��ng: ")..bil.C(2, bilTbTransLife[bil_1].bil_tb_6.." l��ng ")..bil_2_5
		.."<enter>"..bil.C(5, "B�c ��u tr��ng sinh thu�t: ")..bil.C(2, "1 cu�n ")..bil_2_6
		.."<enter><enter>L�i �ch:"
		.."<enter>"..bil.C(1, "T�ng k� n�ng: ")..bil.C(2, bil_2_1.." �i�m")
		.."<enter>"..bil.C(1, "T�ng ti�m n�ng: ")..bil.C(2, bil_2_2.." �i�m")
		.."<enter>"..bil.C(1, "T�ng kh�ng t�nh t�i �a: ")..bil.C(2, bil_2_3.." �i�m")
		.."<enter>"..bil.C(1, "T�ng k� n�ng t�i �a: ")..bil.C(2, bilTbTransLife[bil_1].bil_tb_4.." �i�m"),
		bil_2_8)
end

function bilTbTransLife:CheckPlayer()
	local bil_1 = ST_GetTransLifeCount() + 1
	local TSK_ZHUANSHENG_FLAG = 2547
	if bil_1 > getn(bilTbTransLife) then
		return CreateNewSayEx("<npc>C�c h� �� ��t ��n gi�i h�n Tr�ng sinh, hi�n ch�a c� th�ng tin v� Tr�ng sinh l�n th� "..bil.C(2, bil_1).." xin h�y ��i tin t�c v� l�n Tr�ng sinh ti�p theo!", {{"K�t th�c ��i tho�i!", bil.OnCancel}})
	end
	if GetLevel() < bilTbTransLife[bil_1].bil_tb_5 then 
		return CreateNewSayEx("<npc>��ng c�p c�a nh� ng��i ch�a �� "..bil.C(2, bilTbTransLife[bil_1].bil_tb_5)..", ta kh�ng th� gi�p g� ���c!", {{"Xem ra �� t� ch�a chu�n b� k�, �� l�m phi�n ng��i!", bil.OnCancel}})
	end
	if GetCash() < bilTbTransLife[bil_1].bil_tb_6 then
		return CreateNewSayEx("<npc>Ng�n l��ng tr�n ng��i ng��i ch�a �� "..bil.C(2, bilTbTransLife[bil_1].bil_tb_6).." l��ng, ta kh�ng th� gi�p g� ���c!", {{"Xem ra �� t� ch�a chu�n b� k�, �� l�m phi�n ng��i!", bil.OnCancel}})
	end
	if GetTask(TSK_ZHUANSHENG_FLAG) ~= 1 then
		return CreateNewSayEx("<npc>Nh� ng��i ch�a h�c quy�n "..bil.C(2, "C� S� Thi�n")..", ta kh�ng th� gi�p g� ���c!", {{"Xem ra �� t� ch�a chu�n b� k�, �� l�m phi�n ng��i!", bil.OnCancel}})
	end
	if (CalcItemCount(2,0,-1,-1,-1) > 0) then
		return CreateNewSayEx("<npc>�� ti�n h�nh Tr�ng sinh, lu�n   h�i chuy�n th� nh� ng��i c�n ph�i "..bil.C(2,"c�i b� to�n b� trangb� v� v�t ph�m tr�n ng��i").." m�i c� th� ti�n h�nh thao   t�c ���c!", {{"Xem ra �� t� ch�a chu�n b� k�, �� l�m phi�n ng��i!", bil.OnCancel}})
	end
	return CreateNewSayEx("<npc>Sau khi h�c xong cu�n "..bil.C(2, "��i Th�a  T�m Ph�p").." ng��i s� tr� v� v�i c�p "..bil.C(1, "10")..", ng��i c� mu�n <enter>ti�p t�c kh�ng!", {{"Xin s� ph� ra tay!", bilTbTransLife.GoTransLife},{"Xem ra �� t� ch�a chu�n b� k�, �� l�m phi�n ng��i!", bil.OnCancel}})
end

function bilTbTransLife:GoTransLife()
	local bil_1 = ST_GetTransLifeCount() + 1
	if GetCash() < bilTbTransLife[bil_1].bil_tb_6 then
		return CreateNewSayEx("<npc>Ng�n l��ng tr�n ng��i ng��i ��u r�i nh�, m�i �� m� �� kh�ng th�y ��u n�a!", {{"Xem ra �� t� ch�a chu�n b� k�, �� l�m phi�n ng��i!", bil.OnCancel}})
	else
		Pay(bilTbTransLife[bil_1].bil_tb_6)
	end
	Msg2Player("h�c ���c "..bil.C(2, "B�c ��u Tr��ng Sinh Thu�t - ��i Th�a T�m Ph�p"))
	return ST_DoTransLife()
end























