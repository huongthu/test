Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_chuyenmonphai.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\changefeature\\feature_man.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

-----------------------------------------------------------------------
	-- 6,1,1670: T�n v�t m�n ph�i
	-- 6,1,1671: T�n v�t D��ng anh
-----------------------------------------------------------------------

function main()
	bilMain()
end

function bilMain()
	if bilCheckDuaTop:FuncMain() then
		return
	end
	
	if GetTask(5994) ~= 0 then
		local a, b = bil.Str2Byte(GetName(), 1)
		local c = tonumber(b..(strlen(a)))
		local d = GetTask(5994)
		
		if d == c or d == 1111112 then
			SetTask(5994, 1111112)
			return Talk(1, "change_rolename3", "V�n ch�a ch�n ���c t�n nh�n v�t �ng � v�i ��i hi�p sao?")
		else
			SetTask(5994, 0)
		end
	end
	
	Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>C�c nh�n s� giang h� mu�n thay ��i t�n tu�i, chuy�n ��i m�n ph�i ��u qua m�t tay c�a <enter>ti�u mu�i, kh�ng bi�t v� ��i hi�p c�n ti�u mu�n n�y <enter>gi�p vi�c g�?", 6, 
		-- "Phi�n mu�n gi�p ta ��i t�n Bang h�i/bilChangeTongName_Check",
		"Phi�n mu�n gi�p ta r�i ph�i v� chuy�n ��i m�n ph�i/bilChangeToushiCheck",
		"Phi�n mu�i gi�p ta thay ��i ngo�i h�nh trang b�/bilChangeFeature",
		"Phi�n mu�i gi�p ta chuy�n sang "..bilCovertSex(GetSex()).." gi�i/#bilChangeSex("..GetSex()..")",
		"Phi�n mu�n gi�p ta ��i t�n/change_rolename",
		"T�i h� mu�n h�i th�m v� 1 s� l�nh b�i ��t bi�t!/#HoanhBaTT_MuaLenhBaiDB()",
		"K�t th�c ��i tho�i./OnCancel"
	)
end

function HoanhBaTT_MuaLenhBaiDB(_1, _2, _3)
	local a = {
		{{6,1,1671,1,0,0,0}, "T�n v�t c�a D��ng Anh", 150, "v�t n�y giao cho D��ng Anh c� th� k�t n�p 1 n� nh�n s� b�t k� n�o �� v�o Thi�n v��ng bang"},
		{{6,1,4317,1,0,0,0}, "T�nh Danh Chi L�nh", 250, "v�t n�y d�ng �� thay ��i t�n tu�i trong giang h�"},
	}

	if _1 then

			if _2 then
				if _2 == 1 then
					if _3 then
						if _3 == 1 then
							if CalcEquiproomItemCount(4,417,1,-1) < a[_1][3] then
								return Talk(1, "", a[_1][2].." c� gi� "..a[_1][3].." xu, h�nh nh� thi�u hi�p ch�a mang �� ti�n ��ng th� ph�i!")
							end
							ConsumeEquiproomItem(a[_1][3],4,417,1,-1)
							AddItem(unpack(a[_1][1]))
							return Msg2Player("Mua ���c "..a[_1][2].." t� ch� Ho�nh Ba Ti�n T�!")
						end
					end
				
					return Say(a[_1][2].." c� gi� "..a[_1][3].." Xu, kh�ng bi�t v� thi�u hi�p c� mu�n mua kh�ng?", 2, "Ta mu�n mua t�n v�t n�y!/#HoanhBaTT_MuaLenhBaiDB(".._1..", 1, 1)", "Th�i, ��t qu�!/OnCancel")
				end
			end
		
			return Talk(2, "#HoanhBaTT_MuaLenhBaiDB(".._1..", 1)", "Mu�n xem qua "..a[_1][2].." �!", "��y, m�i thi�u hi�p, "..a[_1][4].."!, Gi� c�a t�n v�t n�y l� "..a[_1][3].." xu!")

	end

	return Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>� ��y ti�u n� c� l�u gi�a m�t s� l�nh b�i ��t bi�t kh�c, kh�ng bi�t v� thi�u hi�p ��y mu�n xem m�n n�o?", 2,
		"Ta mu�n xem qua T�n v�t c�a D��ng Anh./#HoanhBaTT_MuaLenhBaiDB(1)",
		"Ta mu�n xem qua Danh T�nh L�nh./#HoanhBaTT_MuaLenhBaiDB(2)",
		"K�t th�c ��i tho�i./OnCancel"
	)
end

function bilChangeFeature()
	Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>Ti�u mu�i c� th� t�o ra 'ngo�i h�nhtrang b�' theo nh� � mu�n, ch� c�n thu th�p �� nguy�nli�u c�n thi�t nh� <color=Orange>Ti�n ��ng<color> v� <color=yellow>trang b� c�n thay ��i<color>�em ��n ��y th� mu�i s� gi�p ��i hi�p thay ��i <color=green>ngo�i h�nh trang b� nh� � mu�n<color>. N�n nh� ti�u mu�i ch� c� <enter>th� gi�p ��i hi�p thay ��i ngo�i h�nh trang b� m� <enter><color=yellow>kh�ng thay ��i �� m�nh y�u c�a trang b�<color> ��u nh�.",
		4,
		-- 3,
		"Ta mu�n xem tr��c ngo�i h�nh trang b�/bilChangeFeature_PriView",
		"Gi�p ta Thay ��i ngo�i h�nh trang b� �ng � nh�t!/bilWant2ChangeFeature",
		"X�a hi�u �ng ngo�i h�nh xem th�/RestoreOwnFeature",
		"K�t th�c ��i tho�i./OnCancel")
end

function bilChangeFeature_PriView()
	tbFeatureNpc:SelectType()
end

function bilWant2ChangeFeature()
	Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>M�i l�n mu�i thay ��i ngo�i h�nh   c�a trang b� ��i hi�p c�n ph�i t�n <color=yellow>10 Ti�n ��ng<color>, ��i  hi�p ��ng � th�c hi�n ch�!<enter>ID nh�p v�o l� s� th� t� c�a ngo�i h�nh xem � ph�n <color=green>  'Xem tr��c ngo�i h�nh trang b�'<color>.",2, "Ta ��ng � v� �� chu�n b� nguy�n li�u!/bilWant2ChangeFeature_Sure", "Th�i �� ta suy ngh� l�i t� n�a!/OnCancel")
end

function bilWant2ChangeFeature_Sure()
	tbFeatureNpc:InjectToItem()
end

function bilChangeToushiCheck()
	Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>Ng��i chuy�n ��i m�n ph�i sang m�n ph�i m�i s� ���c <color=green>gi� l�i<color> c�c �i�m �� c� c�a c�c k� <enter>n�ng c�p <color=yellow>90 v� 120<color> n�u ch�a h�c k� n�ng s� kh�ng c� <enter>c�c �i�m c�ng l�i n�y, sau khi r�i kh�i m�n ph�i ��i hi�p s� ���c <color=green>t�y l�i<color> ho�n to�n �i�m <color=yellow>ti�m n�ng v� k� <enter>n�ng<color>, ��i hi�p mu�n li�n h� v�i ch��ng m�n nh�n �� <enter>r�i <color=Orange>kh�i m�n ph�i<color> ch�?", 2, 
		"Phi�n mu�i gi�p ta n�i m�t ti�ng v�i ch��ng m�n/bilChangeToushiSure",
		"Hay l� mu�n cho ta th�i gian suy ngh� l�i nh�/OnCancel"
	)
end

function bilChangeToushiSure()
	if (CalcItemCount(2,0,-1,-1,-1) > 0) then
		return Say("<color=Orange>Ho�nh Ba Ti�n T�: <color> �� chuy�n ��i m�n ph�i ��i hi�p   c�n th�o b� to�n b� trang b� tr�n ng��i th� ti�u mu�im�i gi�p ���c!", 1, "���c r�i! mu�i ��i ta 1 t�!/OnCancel")
	end
	Talk(1, "bilChangeToushiSure_Check", "<color=Orange>Ho�nh Ba Ti�n T�: <color>�� li�n h� v�i ch��ng m�n nh�n, ��ihi�p c�n ph�i giao T�n v�t m�n ph�i ra �� l�m tin th�ti�u mu�n m�i c� th� gi�p ���c, h�y ��t T�n v�t m�n <enter>ph�i v�o � sau.")
end

function bilChangeToushiSure_Check()
	GiveItemUI("Tr�nh t�n v�t m�n ph�i", "B� t�n v�t m�n ph�i v�o � tr�ng b�n d��i.", "bilChangeToushiSure_Check2", "OnCancel", 1);
end

function bilChangeToushiSure_Check2(bilVal)
	local bilFac = GetFaction()
	if (bilVal ~= 1) then
		return Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>T�n V�t M�n Ph�i kh�ng ph�i l� m�n �� ch�i c�a tr� con, ��i hi�p kh�ng n�n ��a v�i ti�u mu�n nh� v�y!",2 ,
			"Tr�nh l�i m�n ph�i t�n v�t/bilChangeToushiSure_Check",
			"M�n ph�p cho ta t�m l�i m�t l�n n�a/OnCancel"
		)
	end
	if bilFac == "" or bilFac == nil then
		return Talk(1, "", "<color=Orange>Ho�nh Ba Ti�n T�: <color>��i hi�p ch�a gia nh�p m�n ph�i th� l�m sao c� ch��ng m�n nh�n m� c�n ti�u mu�i n�i gi�p!")
	elseif GetTongName() ~= "" then
		return Say("��i hi�p l� ng��i �� c� bang h�i, kh�ng th� li�n l�c v�i Ch��ng m�n nh�n.")
	end
	if bilCheckFactionToushi(bilFac) == 0 then
		return Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>�� r�i kh�i m�n ph�i th� ��i hi�p  ph�i l� ng��i c�a m�n ph�i, hi�n t�i ��i hi�p ch�a l�m�n �� c�a ph�i n�o c�, h�y ��n g�p ch��ng m�n �� v�ol�i ph�i r�i m�i ��n ��y g�p ti�u mu�i", 1, "Ta bi�t r�i!/OnCancel")
	end
	local bilItemIdx = GetGiveItemUnit(bilVal);
	local nG, nD, nP = GetItemProp(bilItemIdx);
	if nG ~= 6 or nD ~= 1 or nP ~= 1670 then
		local bilNameItem = GetItemName(bilItemIdx)
		return Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>T�n V�t M�n Ph�i kh�ng ph�i l� m�n �� ch�i c�a tr� con, ��i hi�p kh�ng n�n ��a v�i ti�u mu�n nh� v�y!<enter>��i hi�p sao l�i ��a cho ti�u mu�i <color=green>"..bilNameItem.."<color>, ��y ��u ph�i T�n v�t!",2 ,
			"Tr�nh l�i m�n ph�i t�n v�t/bilChangeToushiSure_Check",
			"M�n ph�p cho ta t�m l�i m�t l�n n�a/OnCancel"
		)
	end
	RemoveItemByIndex(bilItemIdx);
	return bilChangeToushiSureOK()
end

_bilFactionCheckTb = 
{
	{"shaolin", "Thi�u L�m ph�i"},
	{"tianwang", "Thi�n V��ng Bang"},
	{"tangmen", "���ng M�n"},
	{"wudu", "Ng� ��c Gi�o"},
	{"emei", "Nga My ph�i"},
	{"cuiyan", "Th�y Y�n m�n"},
	{"gaibang", "C�i Bang"},
	{"tianren", "Thi�n Nh�n Gi�o"},
	{"wudang", "V� �ang ph�i"},
	{"kunlun", "C�n L�n ph�i"},
	{"huashan", "Hoa S�n ph�i"},
}

function bilCheckFactionToushi(bilFac)
	for i = 1, getn(_bilFactionCheckTb) do
		if bilFac == _bilFactionCheckTb[i][1] then
			return 1
		end
	end
	return 0
end

function bilChangePlayerName_Check()
	Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>V� ��i hi�p mu�n thay ��i t�n tu�i c�a m�nh?", 3, 
		"T�m hi�u t�n nh�n v�t c�n s� d�ng ���c kh�ng/query_rolename",
		"Thay ��i t�n nh�n v�t c�a m�nh/change_rolename",
		"K�t th�c ��i tho�i./OnCancel"
	)
end

function change_rolename()
	Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>C�c b��c c� th�: R�i Bang H�i n�u  c�, ��i tho�i v�i  NPC, nh�p t�n nh�n v�t c�n thay <enter>��i v�o, b�n s� t� ��ng r�i m�ng. Sau 3 ph�t ��ng <enter>nh�p l�i, n�u t�n nh�n v�t �� thay ��i th� ���c xem  ��i t�n th�nh c�ng. N�u xu�t hi�n m�t s� hi�n t��ng  l� xin li�n h� GM gi�i quy�t.",
		2,
		"B�t ��u thay ��i t�n nh�n v�t/change_rolename2",
		"�� ta suy ngh� l�i/OnCancel")
end

function bilChangeTongName_Check()
	Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>V� ��i hi�p c�n ��i l�i t�n bang h�i sao?", 3,
		"Ki�m tra t�n Bang h�i c�n s� d�ng ���c kh�ng?/query_tongname",
		"S�a ��i t�n Bang h�i c�a m�nh/change_tongname",
		"�� l�n sau ta thay ��i v�y/OnCancel")
end

function change_tongname()
	Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>C�c b��c c� th�: ��i tho�i v�i NPC, nh�p t�n bang h�ic�n thay ��i v�o, b�n s� t� ��ng r�i m�ng. Sau 3 ph�t ��ng nh�p l�i, n�u t�n bang h�i �� thay ��i th� ���c xem ��i t�n th�nh c�ng; n�u ch�a thay ��i, m�i b�n  th�c hi�n l�i c�c b��c tr�n. N�u xu�t hi�n m�t s� <enter>hi�n t��ng l� xin li�n h� GM gi�i quy�t.", 2,
		"B�t ��u thay ��i t�n Bang h�i/change_tongname2",
		"�� ta suy ngh� l�i/cancel");
end

function bilCovertSex(Num)
	if Num == 0 then
		return "N�"
	else
		return "Nam"
	end
end

function change_tongname2()
	local bilTongName, bilTongID = GetTong()
	if bilTongName == "" or bilTongID == 0 then
		return Talk(1, "", "<color=Orange>Ho�nh Ba Ti�n T�: <color>��i hi�p c�n ch�a gia nh�p bang h�i l�m sao ti�u mu�n c� th� thay ��i t�n Bang h�i cho ng�i ���c!")
	end
	AskClientForString("on_change_tongname", "", 1, 20, "Xin nh�p t�n Bang h�i m�i v�o");
end

function on_change_tongname(new_tong)
	if (GetTongMaster() ~= GetName()) then
		Talk(1, "", "<color=Orange>Ho�nh Ba Ti�n T�: <color>Ch� c� bang ch� m�i c� th� thay ��i t�n Bang h�i")
	else
		old_tong, res = GetTong()
		if (res == 1 and old_tong ~= "") then
			if (old_tong == new_tong) then
				Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>Kh�ng th� thay ��i t�n Bang h�i gi�ng nhau", 1, "Bi�t r�i!/OnCancel")
			else
				RenameTong(old_tong, new_tong)
			end
		end
	end
end

function query_tongname()
	AskClientForString("on_query_tongname", "", 1, 20, "Xin nh�p t�n Bang h�i mu�n t�m hi�u");
end

function on_query_tongname(new_tong)
	QueryTongName(new_tong)
end

function on_change_rolename_checknot1()
	return Say("B�n mu�n ��i t�n nh�n v�t! <enter>Xin xem l�i c�c vi�c c�n tr��c khi ��i t�n: <enter>"..bil.C(1, "H�y ch�c ch�n r�ng b�n �� ki�m tra t�n nh�n v�t n�y v� ch�a c� ng��i s� d�ng. <enter>").."N�u t�n nh�n v�t �� c� ng��i s� d�ng b�n s� b� m�t l�nh b�i ��i t�n v� t�n nh�n v�t s� kh�ng ���c ��i, vi�c n�y b�n tr�i ch� s� kh�ng ch�u tr�ch nhi�m.", 2, 
		"�� ch�c ch�n ki�m tra t�n n�y, v� ch�a c� ng��i s� d�ng!/change_rolename2",
		"�� t�i h� ki�m tra l�i t�n nh�n v�t n�y!/OnCancel")
end

function change_rolename3()
	AskClientForString("on_change_rolename", "", 1, 16, "T�n NV m�i 16 k� t�")
end

function change_rolename2()
	local _, nTongId = GetTongName()
	-- local bilSilverCount = GetItemCountEx( 343 );
	
	local a = CalcEquiproomItemCount(6,1,4317,-1)
	
	-- if bilSilverCount <= 0 then
	if a <= 0 then
		-- return Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>��i hi�p c�n ph�i mang theo Kim <enter>Nguy�n B�o l�m tin th� ti�u mu�i m�i c� th� gi�p ���c.", 1 , "��ng r�i, ta qu�n mang theo/cancel")
		return Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>��i hi�p c�n ph�i mang theo T�nh Danh Chi L�nh �� l�m tin th� ti�u mu�i m�i c� th� gi�p ���c.", 1 , "��ng r�i, ta qu�n mang theo/cancel")
	-- else
		-- if Bil_GetTask(6) >= 1 then
			-- if bilSilverCount < Bil_GetTask(6) + 1 then
				-- return Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>��i hi�p �� ��i t�n <color=yellow>"..Bil_GetTask(6).."<color> l�n r�i, ��i hi�p c�n ph�i c� <color=green>"..(Bil_GetTask(6) + 1).."<color> Kim Nguy�n B�o th� ti�u mu�n m�i  c� th� gi�p ���c", 1 , "��ng r�i, ta qu�n mang theo/OnCancel")
			-- end
		-- end
	end
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>��i hi�p �� c� Bang H�i kh�ng th� ti�n h�nh thao t�c n�y!<color>")
		return
	end
	AskClientForString("on_change_rolename", "", 1, 16, "T�n NV m�i 16 k� t�");
end

function on_change_rolename(new_name)
		if (GetName() == new_name) then
			Talk(1, "", "<color=Orange>Ho�nh Ba Ti�n T�: <color>B�n mu�n ��i t�n g�?")
		else
			if GetTask(5994) ~= 1111112 then
				SetTask(5994, 1111111)
			end
			QueryRoleName(new_name)
		end
end

function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "<#> Xin nh�p t�n nh�n v�t c�n t�m hi�u");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end

function bilChangeSex(bilPreSex)
	return Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>Chuy�n ��i gi�i t�nh l� ��i hi�p sϮ��c chuy�n sang <color=metal>"..bilCovertSex(GetSex()).."<color> gi�i, t�t c� m�i th� li�n quan <enter>��n nh�n v�t ��u ���c gi� nguy�n v� m�i l�n chuy�n <enter>gi�i ph�i ti�u hao th�m 1 <color=yellow>Kim Nguy�n B�o<color>, ��i hi�p <enter>v�n mu�n chuy�n ��i ch�?", 2, "Ta ��ng �!/#bilChangeSexSure("..bilPreSex..")", "Mu�i cho ta th�m th�i gian suy ngh� l�i ��!/OnCancel")
end

function bilChangeSexSure(PreSex)
	local bilSilverCount = GetItemCountEx( 343 );
	local bil_n_LastFac = GetLastFactionNumber()
	if bilSilverCount <= 0 then
		return Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>��i hi�p c�n ph�i mang theo Kim <enter>Nguy�n B�o l�m tin th� ti�u mu�i m�i c� th� gi�p ���c.", 1 , "��ng r�i, ta qu�n mang theo/OnCancel")
	else
		if Bil_GetTask(12) >= 1 then
			if bilSilverCount < Bil_GetTask(12) + 1 then
				return Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>��i hi�p �� ti�n h�nh chuy�n gi�i <color=yellow>"..Bil_GetTask(12).."<color> l�n r�i, �� ti�n h�nh chuy�n gi�i l�n ti�p theo ��i hi�p ph�i mang theo �t nh�t <color=yellow>"..(Bil_GetTask(12) + 1).."<color> Kim Nguy�n B�o th� ti�u mu�i m�i c� th� gi�p ���c!", 1 , "��ng r�i, ta qu�n mang theo/OnCancel")
			end
		end
	end
	
	-- Th�m y�u c�u T�n v�t ch��ng m�n cho c�c ph�i ��c bi�t
		local bil_n_CardT = 0
		if bil_n_LastFac == 0 or bil_n_LastFac == 1 then
			if PreSex == 0 then
				if ConsumeItem(3, 0, 6, 1, 1671, -1) < 1 then -- t�n v�t D��ng anh
					return Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>M�n ph�i Thi�n v��ng v� Thi�u l�m mu�n chuy�n gi�i y�u c�u ��i hi�p ph�i mang theo <color=white>T�n v�t D��ng Anh<color> th� ti�u mu�i m�i c� th� gi�p ��i hi�p ���c!", 1, "T�i h� qu�n mang theo T�n v�t D��ng Anh./OnCancel")
				else
					bil_n_CardT = 1
				end
			end
		elseif bil_n_LastFac == 4 or bil_n_LastFac == 5 then
			if PreSex == 1 then
				if ConsumeItem(3, 0, 6, 1, 4301, -1) < 1 then -- t�n v�t Thanh hi�u s� th�i
					return Say("<color=Orange>Ho�nh Ba Ti�n T�: <color>M�n ph�i Th�y y�n v� Nga my mu�n chuy�n gi�i y�u c�u ��i hi�p ph�i mang theo <color=white>T�n v�t Thanh Hi�u S� Th�i<color> th� ti�u mu�i m�i c� th� gi�p ��i hi�p ���c!", 1, "T�i h� qu�n mang theo T�n v�t Thanh Hi�u S� Th�i./OnCancel")
				else
					bil_n_CardT = 2
				end
			end
		end
	-- Th�m y�u c�u T�n v�t ch��ng m�n cho c�c ph�i ��c bi�t
	
	if PreSex == 0 then
		SetSex(1)
	elseif PreSex == 1 then
		SetSex(0)
	end
	Bil_SetTask(12, Bil_GetTask(12) + 1)
	for i =1, Bil_GetTask(12) do
		DelItemEx( 343 )
	end
	
	if bil_n_CardT == 1 then
		ConsumeEquiproomItem(1,6,1,1671,-1)
	elseif bil_n_CardT == 2 then
		ConsumeEquiproomItem(1,6,1,4301,-1)
	end
	
	local Bil_LogFileName = "script/global/bil4i3n/bil4i3n_log/change_sex.log"
	local Bi_FileLog = openfile(Bil_LogFileName, "a");
	write(Bi_FileLog, format("%s\tAccount: %s\tNamePlayer: %s\tPreSex: %d\tBeforSex: %d\tTimes & KNB: %d\n", date("%d-%m-%Y %H:%M:%S"), GetAccount(), GetName(), PreSex, GetSex(), Bil_GetTask(12)))
	closefile(Bi_FileLog)
	Msg2Player("<color=yellow>�� ti�n h�nh chuy�n gi�i cho ��i  hi�p th�nh c�ng, xin ki�m tra l�i!<color>")
	Talk(2, "KickOutSelf", "<color=Orange>Ho�nh Ba Ti�n T�: <color>�� ti�n h�nh chuy�n gi�i cho ��i <enter>hi�p l�n th� <color=yellow>"..Bil_GetTask(12).."<color> th�nh c�ng, xin ki�m tra l�i!", "�a t� mu�n!")
end

function OnCancel() end