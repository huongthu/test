Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")

bilTbAllSkill = {
	shaolin = {
		[1] = {10,14},
		[2] = {4,6,8},
		[3] = {15},
		[4] = {16},
		[5] = {20},
		[6] = {11,19,271},
		[7] = {21,273},
		[9] = {318, 319, 321}, 
		[12]= {709}, 
		[15]= {1055, 1056, 1057},
	},
	tianwang = {
		[1] = {29,30,34},
		[2] = {23,24,26},
		[3] = {33},
		[4] = {31,35,37},
		[5] = {40},
		[6] = {42},
		[7] = {32,36,41,324},
		[9] = {322, 325, 323}, 
		[12]= {708}, 
		[15]= {1058, 1059, 1060},
	},
	tangmen = {
		[1] = {45},
		[2] = {43,347},
		[3] = {303},
		[4] = {47,50,54,343},
		[5] = {345},
		[6] = {349},
		[7] = {48,58,249,341},
		[9] = {339, 302, 342, 351,}, 
		[12]= {710}, 
		[15]= {1069, 1070, 1071, 1110},
	},
	wudu = {
		[1] = {63,65},
		[2] = {60,62,67},
		[3] = {66,70},
		[4] = {64,68,69,384},
		[5] = {73,356},
		[6] = {72},
		[7] = {71,74,75},
		[9] = {353, 355, 390}, 
		[12]= {711}, 
		[15]= {1066, 1067},
	},
	emei = {
		[1] = {80,85},
		[2] = {77,79},
		[3] = {93},
		[4] = {82,89,385},
		[5] = {86},
		[6] = {92},
		[7] = {88,91,252,282},
		[9] = {380, 328, 332}, 
		[12]= {712}, 
		[15]= {1061, 1062, 1114},
	},
	cuiyan = {
		[1] = {99,102},
		[2] = {95,97},
		[3] = {269},
		[4] = {105,113},
		[5] = {100},
		[6] = {109},
		[7] = {108,111,114},
		[9] = {336, 337}, 
		[12]= {713}, 
		[15]= {1063, 1065},
	},
	gaibang = {
		[1] = {119,122},
		[2] = {115,116},
		[3] = {129},
		[4] = {124,274},
		[5] = {277},
		[6] = {125,128},
		[7] = {130,360},
		[9] = {357, 359}, 
		[12]= {714}, 
		[15]= {1073, 1074}
	},
	tianren = {
		[1] = {135,145},
		[2] = {131,132,136},
		[3] = {137},
		[4] = {138,140,141},
		[5] = {364},
		[6] = {143},
		[7] = {142,148,150},
		[9] = {361, 362, 391}, 
		[12]= {715}, 
		[15]= {1075, 1076},
	},
	wudang = {
		[1] = {153,155},
		[2] = {151,152},
		[3] = {159},
		[4] = {158,164},
		[5] = {160},
		[6] = {157},
		[7] = {165,166,267},
		[9] = {365, 368}, 
		[12]= {716}, 
		[15]= {1078, 1079},
	},
	kunlun = {
		[1] = {169,179},
		[2] = {167,168,171,392},
		[3] = {174},
		[4] = {172,173,178,393},
		[5] = {175,181},
		[6] = {90,176},
		[7] = {182,275,630},
		[9] = {372, 375, 394}, 
		[12]= {717}, 
		[15]= {1080, 1081},
	},
}

_bilSectTable = 
{
	[1] = {"shaolin", "Thi�u L�m ph�i", 0, 0, 1, 72},
	[2] = {"tianwang", "Thi�n V��ng Bang", 0, 1, 3, 79},
	[3] = {"tangmen", "���ng M�n", 1, 2, 3, 76},
	[4] = {"wudu", "Ng� ��c Gi�o", 1, 3, 2, 80},
	[5] = {"emei", "Nga My ph�i", 2, 4, 1, 74},
	[6] = {"cuiyan", "Th�y Y�n m�n", 2, 5, 3, 67},
	[7] = {"gaibang", "C�i Bang", 3, 6, 1, 78},
	[8] = {"tianren", "Thi�n Nh�n Gi�o", 3, 7, 2, 81},
	[9] = {"wudang", "V� �ang ph�i", 4, 8, 1, 73},
	[10] = {"kunlun", "C�n L�n ph�i", 4, 9, 3, 75},
	-- [11] = {"huashan", "Hoa S�n ph�i"},
}

_bilSkillNoChoiceTb = {351, 390, 332, 391, 394,}

function bilChangeToushiSureOK()
	local bilFac = GetFaction()
	bilDoClearSkillCore()
	for i = 1, getn(bilTbAllSkill[bilFac][9]) do
		if HaveMagic(bilTbAllSkill[bilFac][9][i]) ~= -1 then
			Bil_SetTask(i + 6, GetCurrentMagicLevel(bilTbAllSkill[bilFac][9][i], 0))
		end
	end
	if HaveMagic(bilTbAllSkill[bilFac][12][1]) ~= -1 then
		Bil_SetTask(10, GetCurrentMagicLevel(bilTbAllSkill[bilFac][12][1], 0))
	end
	for i =1, 7 do
		for j = 1, getn(bilTbAllSkill[bilFac][i]) do
			if HaveMagic(bilTbAllSkill[bilFac][i][j]) ~= -1 then
				DelMagic(bilTbAllSkill[bilFac][i][j])
			end
		end
	end
	for j9 = 1, getn(bilTbAllSkill[bilFac][9]) do
		if HaveMagic(bilTbAllSkill[bilFac][9][j9]) ~= -1 then
			DelMagic(bilTbAllSkill[bilFac][9][j9])
		end
	end
	for j12 = 1, getn(bilTbAllSkill[bilFac][12]) do
		if HaveMagic(bilTbAllSkill[bilFac][12][j12]) ~= -1 then
			DelMagic(bilTbAllSkill[bilFac][12][j12])
		end
	end
	for j15 = 1, getn(bilTbAllSkill[bilFac][15]) do
		if HaveMagic(bilTbAllSkill[bilFac][15][j15]) ~= -1 then
			DelMagic(bilTbAllSkill[bilFac][15][j15])
		end
	end
	bilDoClearPropCore()
	SetFaction("")
	SetCamp(0)
	SetCurCamp(0)
	Bil_SetTask(11, 1)
	Msg2SubWorld("<color=Earth><color=Orange>Ch��ng m�n nh�n: <color>Ta �� ph� b� to�n b� v� c�ng tr�n ng��i c�a <color=wood>"..GetName().."<color>, h�m nay tr�c xu�t <color=wood>"..GetName().."<color> ra kh�i s� m�n, th�ng b�o ��n c�c �� t� b�n ph�i bi�t tin!<color>")
	Msg2SubWorld("<color=wood>"..GetName().."<color> <color=Earth>t� h�m nay ch�nh th�c r�i kh�i m�n ph�i, xin b�i bi�t c�c v� s� huynh, s� t� t�i ��y, �� gia nh�p m�n ph�i kh�c!")
	Msg2Player("<color=yellow>To�n b� k� n�ng m�n ph�i �� b� ph� b�, �i�m ti�m n�ng c�ng �� ���c t�y l�i, xin ��i hi�p ki�m tra l�i.")
	Msg2Player("<color=yellow>Sau khi r�i kh�i m�n ph�i,��i hi�p c� th� ��n g�p b�t c� ch��ng m�n nh�n c�a m�n ph�i n�o �� xin gia nh�p l�i, to�n b� �i�m k� n�ng �� luy�n �c s� �c gi� nguy�n.")
	local Bil_LogFileName = "script/global/bil4i3n/bil4i3n_log/change_sect.log"
	local Bi_FileLog = openfile(Bil_LogFileName, "a");
	write(Bi_FileLog, format("%s\tAccount: %s\tNamePlayer: %s\tOldFaction: %s\tLevel: %d\tBil_GetTask_7_8_9_10: %d_%d_%d_%d\tBil_GetTask(11): %d\tGetProp: %d\tGetMagicPoint: %d\tKick Out Sect _OK!\n", date("%d-%m-%Y %H:%M:%S"), GetAccount(), GetName(), bilFac, GetLevel(), Bil_GetTask(7), Bil_GetTask(8), Bil_GetTask(9), Bil_GetTask(10), Bil_GetTask(11), GetProp(), GetMagicPoint()))
	closefile(Bi_FileLog)
	Talk(3, "KickOutSelf", "<color=Orange>Ho�nh Ba Ti�n T�: <color>To�n b� <color=yellow>v� c�ng m�n ph�i<color> tr�n ng��i ��i hi�p <color=green>�� b� ph� b�<color>, t�t c� <color=yellow>�i�m ti�m n�ng<color> c�ng �� b� <color=green>t�y l�i<color>, xin ��i hi�p ki�m tra l�i!", " <color=yellow>L�u �:<color> Say khi r�i kh�i m�n ph�i, n�u mu�n gia nh�p v�o m�n ph�i m�i ��i hi�p c� th� ��n g�p tr�c ti�p <enter><color=Orange>ch��ng m�n m�n ph�i<color> �� �� xin gia nh�p l�i!", "Ta bi�t r�i.")
end

function bilDoClearSkillCore()
	i = HaveMagic(210)	
	j = HaveMagic(400)	
	n = RollbackSkill()		
	x = 0
	if (i ~= -1) then x = x + i end		
	if (j ~= -1) then x = x + j end
	rollback_point = n - x		
	if (rollback_point + GetMagicPoint() < 0) then	
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210,i) end	
	if (j ~= -1) then AddMagic(400,j) end	
end;

function bilDoClearPropCore()
		base_str = {35,20,25,30,20}	
		base_dex = {25,35,25,20,15}
		base_vit = {25,20,25,30,25}
		base_eng = {15,25,25,20,40}
		player_series = GetSeries() + 1
		Utask88 = GetTask(88)
		AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88,1))		
		AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88,2))
		AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88,3))
		AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88,4))
end;

function FALSE(nValue)
	if (nValue == nil or nValue == 0 or nValue == "") then
		return 1
	else
		return nil
	end
end

function bilPartner2Sect(bilFactionSelect)
	if FALSE(_bilSectTable[bilFactionSelect][1]) then
		return Msg2Player("G�p l�i khi chuy�n ��i m�n ph�i, b�n c� th� th� l�i, n�u v�n g�p l�i y�u c�u li�n h� v�i GM �� �c gi�i quy�t!")
	end
	if Bil_GetTask(11) ~= 1 and GetFaction() == _bilSectTable[bilFactionSelect][1] then
		return Say("�� r�i kh�i m�n ph�i v� gia nh�p v�o 1 m�n ph�i kh�c, ng��i h�y �em theo <color=yellow>T�n v�t m�n ph�i<color> v� ��n g�p <color=Orange>Ho�nh Ba Ti�n T�<color> � <color=earth>Ba l�ng huy�n<color>, mu�i �y s� h��ng d�n t�n t�nh cho ng��i", 1, "�a t� s� ph�, h�n ng�y g�p l�i ng��i/OnCancel")
	end
	if Bil_GetTask(11) ~= 1 then
		return Say("Gia nh�p m�n ph�i kh�c kh�ng ph�i l� chuy�n �� �em ra��a gi�n, ng��i �� xin ph�p ch��ng m�n ch�a?", 1, "H�n ng��i sau n�y s� g�p l�i!/OnCancel")
	end
	return Say("Ng��i th�t s� mu�n gia nh�p v�o <color=green>".._bilSectTable[bilFactionSelect][2].."<color> ch�?", 2, "�� t� �� suy ngh� k�, mong ng��i cho ph�p �� t� gia nh�p/#bilPartner2SectSureSelSkill("..bilFactionSelect..")", "Cho �� t� suy ngh� l�i!/OnCancel")
end

function bilPartner2SectSureSelSkill(bilFacSel)

	-- th�m t�nh n�ng y�u c�u t�n v�t cho m�n ph�i ��t bi�t
	local bil_1, bil_2 = GetSex(), 0
	if bilFacSel == 1 or bilFacSel == 2 then
		if bil_1 == 1 then
			bil_2 = 1
		end
	elseif bilFacSel == 5 or bilFacSel == 6 then
		if bil_1 == 0 then
			bil_2 = 1
		end
	end
	
	if bil_2 ~= 0 then
		if bil_1 == 1 then
			if ConsumeItem(3, 0, 6, 1, 1671, -1) < 1 then -- t�n v�t D��ng anh
				return Say("<color=Orange>Ch��ng M�n Nh�n: <color>Tr��c nay Thi�u L�m v� Thi�n V��ng bang ch� cho ph�p nam nh�n gia nh�p, tuy nhi�n n�u ng��i c� <color=white>T�n V�t D��ng Anh<color> b�n m�nh th� ta c� th� ph� l� cho ng��i gia nh�p!", 1, "�� �� qu�n mang theo T�n V�t D��ng Anh./OnCancel")
			else
				ConsumeEquiproomItem(1,6,1,1671,-1)
			end
		elseif bil_1 == 0 then
			if ConsumeItem(3, 0, 6, 1, 4301, -1) < 1 then -- t�n v�t Thanh hi�u s� th�i
				return Say("<color=Orange>Ch��ng M�n Nh�n: <color>Tr��c nay Nga My v� Th�y Y�n ph�i ch� cho ph�p n� nh�n gia nh�p, tuy nhi�n n�u ng��i c� <color=white>T�n V�t Thanh Hi�u S� Th�i<color> b�n m�nh th� ta c� th� ph� l� cho ng��i gia nh�p!", 1, "�� �� qu�n mang theo T�n V�t Thanh Hi�u S� Th�i./OnCancel")
			else
				ConsumeEquiproomItem(1,6,1,4301,-1)
			end
		end
	end
	-- th�m t�nh n�ng y�u c�u t�n v�t cho m�n ph�i ��t bi�t
	
	local tbOp = {}
	for i = 1, getn(bilTbAllSkill[_bilSectTable[bilFacSel][1]][9]) do 
		tinsert(tbOp, GetSkillName(bilTbAllSkill[_bilSectTable[bilFacSel][1]][9][i]).."/#bilPartner2SectSure("..bilFacSel..", "..bilTbAllSkill[_bilSectTable[bilFacSel][1]][9][i]..")")
	end
	return Say("Ng��i h�y ch�n b� k� n�ng m� ng��i theo �u�i, ta s�  ch� d�y cho ng��i k� h�n v� b� chi�u th�c n�y!", getn(tbOp), tbOp)
end
	
function bilPartner2SectSure(bilSectSelect, bilSkillSel)
	for i = 1, getn(_bilSkillNoChoiceTb) do
		if bilSkillSel == _bilSkillNoChoiceTb[i] then
			return Talk(2, "", "Ng��i c�ng tinh m�t l�m, nh�ng m� k� n�ng <color=fire>"..GetSkillName(bilSkillSel).."<color> n�y kh�ng th� luy�n ���c, ng��i c� th� ch�n l�i!", "�a t� s� ph�!")
		end
	end
	if FALSE(_bilSectTable[bilSectSelect][1]) then
		return Msg2Player("G�p l�i khi chuy�n ��i m�n ph�i, b�n c� th� th� l�i, n�u v�n g�p l�i y�u c�u li�n h� v�i GM �� �c gi�i quy�t!")
	end
	local bilKillPointHighest
	if Bil_GetTask(7) > Bil_GetTask(8) then
		if Bil_GetTask(7) > Bil_GetTask(9) then
			bilKillPointHighest = Bil_GetTask(7)
		else
			bilKillPointHighest = Bil_GetTask(9)
		end
	else
		if Bil_GetTask(8) > Bil_GetTask(9) then
			bilKillPointHighest = Bil_GetTask(8)
		else
			bilKillPointHighest = Bil_GetTask(9)
		end
	end
	for i = 1, 7 do
		for j = 1, getn(bilTbAllSkill[_bilSectTable[bilSectSelect][1]][i]) do
			AddMagic(bilTbAllSkill[_bilSectTable[bilSectSelect][1]][i][j], 0)
		end
	end
	local bilSkill7, bilSkill8, bilSkill9 = 0, 0, 0
	local bilLoopSkill = bilTbAllSkill[_bilSectTable[bilSectSelect][1]][9]
	if bilKillPointHighest > 0 then
		AddMagic(bilSkillSel, bilKillPointHighest)
	else
		AddMagic(bilSkillSel, 1)
	end
	for bilSk = 1, getn(bilLoopSkill) do
		if bilLoopSkill[bilSk] ~= bilSkillSel then
			if (Bil_GetTask(7) > 0 and Bil_GetTask(7) ~= bilKillPointHighest) and Bil_GetTask(7) ~= bilSkill7 then
				AddMagic(bilLoopSkill[bilSk], Bil_GetTask(7))
				bilSkill7 = Bil_GetTask(7)
			elseif (Bil_GetTask(8) > 0 and Bil_GetTask(8) ~= bilKillPointHighest) and Bil_GetTask(8) ~= bilSkill8 then
				AddMagic(bilLoopSkill[bilSk], Bil_GetTask(8))
				bilSkill8 = Bil_GetTask(8)
			elseif (Bil_GetTask(9) > 0 and Bil_GetTask(9) ~= bilKillPointHighest) and Bil_GetTask(9) ~= bilSkill9 then
				AddMagic(bilLoopSkill[bilSk], Bil_GetTask(9))
				bilSkill9 = Bil_GetTask(9)
			else
				AddMagic(bilLoopSkill[bilSk], 1)
			end
		end
	end
	for bilSkilNoP = 1, getn(_bilSkillNoChoiceTb) do
		if bilLoopSkill[getn(bilLoopSkill)] == _bilSkillNoChoiceTb[bilSkilNoP] then
			AddMagic(_bilSkillNoChoiceTb[bilSkilNoP], 0)
		end
	end
	if Bil_GetTask(10) ~= 0 then
		AddMagic(bilTbAllSkill[_bilSectTable[bilSectSelect][1]][12][1], Bil_GetTask(10))
	end
	SetSeries(_bilSectTable[bilSectSelect][3])
	SetFaction(_bilSectTable[bilSectSelect][1])
	SetLastFactionNumber(_bilSectTable[bilSectSelect][4])
	SetCamp(_bilSectTable[bilSectSelect][5])
	SetCurCamp(_bilSectTable[bilSectSelect][5])
	-- SetRank(_bilSectTable[bilSectSelect][6])
	Bil_SetTask(11, 0)
	Msg2SubWorld(GetName().." <color=earth>t� h�m nay gia nh�p ".._bilSectTable[bilSectSelect][2]..", tr��c ti�n ��n b�i ki�n c�c v� s� huynh, s� t�!<color>")
	Msg2SubWorld("<color=fire>"..GetName().."<color> <color=earth>�� b�i nh�p l�m m�n h� c�a <color=Orange>".._bilSectTable[bilSectSelect][2]..", ".._bilSectTable[bilSectSelect][2].."<color> ch�ng ta �� m�nh, nay l�i nh� h� m�c th�m c�nh!<color>")
	Msg2Player("<color=yellow>�� gia nh�p th�nh c�ng v�o m�n ph�i m�i, xin ��i hi�p ki�m tra l�i!")
	local Bil_LogFileName = "script/global/bil4i3n/bil4i3n_log/change_sect.log"
	local Bi_FileLog = openfile(Bil_LogFileName, "a");
	write(Bi_FileLog, format("%s\tAccount: %s\tNamePlayer: %s\tJoinFaction: %s\tLevel: %d\tBil_GetTask_7_8_9_10: %d_%d_%d_%d\tBil_GetTask(11): %d\tGetProp: %d\tGetMagicPoint: %d\n", date("%d-%m-%Y %H:%M:%S"), GetAccount(), GetName(), GetFaction(), GetLevel(), Bil_GetTask(7), Bil_GetTask(8), Bil_GetTask(9), Bil_GetTask(10), Bil_GetTask(11), GetProp(), GetMagicPoint()))
	closefile(Bi_FileLog)
	Talk(2, "KickOutSelf", "N�u nh� ng��i �� mu�n gia nh�p b�n ph�i, sau n�y ph�ichuy�n t�m m� kh� luy�n, s�m c� ng�y ng� ra ���c <enter>tuy�t k� v� h�c", "�a t� s� ph�")
end

function OnCancel()
end
