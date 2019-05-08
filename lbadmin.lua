IncludeLib("SETTING")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\hotrothem.lua")
Include("\\script\\global\\dohoangkimmax.lua")
Include("\\script\\huashan\\npchuashan.lua")

local tbFaction =
{
	[1] =
	{
		szShowName = "Thi�u L�m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709, 1055, 1056, 1057},
		tbEquip =
		{
			{
				szFaction = "Thi�u L�m Quy�n",
				nFirstEquipId = 4863,
				tbEquipName =
				{
					" Minh Ph��ng ch�u li�n", " Minh Ph��ng t�ng m�o", " Minh Ph��ng th��ng gi�i", " Minh Ph��ng h� uy�n", " Minh Ph��ng y�u ��i",
					" Minh Ph��ng c� sa ", " Minh Ph��ng tri�n th� ", " Minh Ph��ng t�ng h�i ", " Minh Ph��ng y�u tr�y ", " Minh Ph��ng h� gi�i ",
				},
			},
			{
				szFaction = "Thi�u L�m C�n",
				nFirstEquipId = 4873,
				tbEquipName =
				{
					"Minh Ph��ng ch�u li�n", "Minh Ph��ng t�ng m�o", "Minh Ph��ng th��ng gi�i", "Minh Ph��ng h� uy�n", "Minh Ph��ng y�u ��i",
					"Minh Ph��ng c� sa", "Minh Ph��ng c�n", "Minh Ph��ng t�ng h�i", "Minh Ph��ng y�u tr�y", "Minh Ph��ng h� gi�i", 
				},
			},
			{
				szFaction = "Thi�u L�m �ao",
				nFirstEquipId = 4883,
				tbEquipName =
				{
					"Minh Ph��ng ch�u li�n", "Minh Ph��ng t�ng m�o", "Minh Ph��ng th��ng gi�i", "Minh Ph��ng h� uy�n", "Minh Ph��ng y�u ��i",
					"Minh Ph��ng c� sa", "Minh Ph��ng �ao", "Minh Ph��ng t�ng h�i", "Minh Ph��ng y�u tr�y", "Minh Ph��ng h� gi�i",
				},
			},
		},
	},
	[2] =
	{
		szShowName = "Thi�n V��ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708, 1058, 1059, 1060},
		tbEquip =
		{
			{
				szFaction = "Thi�n V��ng Ch�y",
				nFirstEquipId = 4893,
				tbEquipName =
				{
					"Minh Ph��ng ��nh quang li�n", "Minh Ph��ng ��nh quang kh�i", "Minh Ph��ng ��nh quang th��ng gi�i", "Minh Ph��ng ��nh quang th�c o�n", "Minh Ph��ng ��nh quang y�u ��i",
					"Minh Ph��ng ��nh quang kh�i", "Minh Ph��ng ��nh quang ch�y", "Minh Ph��ng ��nh quang ngoa", "Minh Ph��ng ��nh quang b�i", "Minh Ph��ng ��nh quang h� gi�i",
				},
			},
			{
				szFaction = "Thi�n V��ng Th��ng",
				nFirstEquipId = 4903,
				tbEquipName =
				{
					"Minh Ph��ng ng� phong li�n", "Minh Ph��ng ng� phong kh�i", "Minh Ph��ng ng� phong th��ng gi�i", "Minh Ph��ng ng� phong th�c o�n", "Minh Ph��ng ng� phong y�u ��i",
					"Minh Ph��ng ng� phong kh�i", "Minh Ph��ng ng� phong th��ng", "Minh Ph��ng ng� phong ngoa", "Minh Ph��ng ng� phong b�i", "Minh Ph��ng ng� phong h� gi�i",
				},
			},
			{
				szFaction = "Thi�n V��ng �ao",
				nFirstEquipId = 4913,
				tbEquipName =
				{
					"Minh Ph��ng bi�u phong li�n", "Minh Ph��ng bi�u phong kh�i", "Minh Ph��ng bi�u phong th��ng gi�i", "Minh Ph��ng bi�u phong th�c o�n", "Minh Ph��ng bi�u phong y�u ��i",
					"Minh Ph��ng bi�u phong kh�i", "Minh Ph��ng bi�u phong �ao", "Minh Ph��ng bi�u phong ngoa", "Minh Ph��ng bi�u phong b�i", "Minh Ph��ng bi�u phong h� gi�i",
				},
			},
		},
	},
	[3] =
	{
		szShowName = "���ng M�n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710, 1069, 1070, 1071},
		tbEquip =
		{
			{
				szFaction = "Phi �ao ���ng M�n",
				nFirstEquipId = 4983,
				tbEquipName =
				{
					"Minh Ph��ng n�c �nh h�ng li�n", "Minh Ph��ng n�c �nh qu�n", "Minh Ph��ng n�c �nh th��ng gi�i", "Minh Ph��ng n�c �nh h� uy�n", "Minh Ph��ng n�c �nh tri�n y�u",
					"Minh Ph��ng n�c �nh gi�p", "Minh Ph��ng n�c �nh phi �ao", "Minh Ph��ng n�c �nh ngoa", "Minh Ph��ng n�c �nh y�u tr�y", "Minh Ph��ng n�c �nh h� gi�i",
				},
			},
			{
				szFaction = "N� ���ng M�n",
				nFirstEquipId = 4993,
				tbEquipName =
				{
					"Minh Ph��ng c�c quang h�ng li�n", "Minh Ph��ng c�c quang qu�n", "Minh Ph��ng c�c quang th��ng gi�i", "Minh Ph��ng c�c quang h� uy�n", "Minh Ph��ng c�c quang tri�n y�u",
					"Minh Ph��ng c�c quang gi�p", "Minh Ph��ng c�c quang n� ", "Minh Ph��ng c�c quang ngoa ", "Minh Ph��ng c�c quang y�u tr�y ", "Minh Ph��ng c�c quang h� gi�i ",
				},
			},
			{
				szFaction = "Phi Ti�u ���ng M�n",
				nFirstEquipId = 5003,
				tbEquipName =
				{
					" Minh Ph��ng th��c kim h�ng li�n ", " Minh Ph��ng th��c kim qu�n ", " Minh Ph��ng th��c kim th��ng gi�i ", " Minh Ph��ng th��c kim h� uy�n ", " Minh Ph��ng th��c kim tri�n y�u ",
					" Minh Ph��ng th��c kim gi�p ", " Minh Ph��ng th��c kim phi ti�u ", " Minh Ph��ng th��c kim ngoa ", " Minh Ph��ng th��c kim y�u tr�y ", " Minh Ph��ng th��c kim h� gi�i ",
				},
			},
		},
	},
	[4] =
	{
		szShowName = "Ng� ��c Gi�o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711, 1066, 1067},
		tbEquip =
		{
			{
				szFaction = "Ng� ��c Ch��ng",
				nFirstEquipId = 4963,
				tbEquipName =
				{
					" Minh Ph��ng ��c sa h�ng li�n ", " H�ch H� ��c sa ph�t ��i ", " Minh Ph��ng ��c sa th��ng gi�i ", " Minh Ph��ng ��c sa h� uy�n ", " Minh Ph��ng ��c sa y�u ��i ",
					" Minh Ph��ng ��c sa b� trang ", " Minh Ph��ng ��c sa tri�n th� ", " Minh Ph��ng ��c sa ngoa ", " Minh Ph��ng ��c sa y�u tr�y ", " Minh Ph��ng ��c sa h� gi�i ",
				},
			},
			{
				szFaction = "Ng� ��c �ao",
				nFirstEquipId = 4973,
				tbEquipName =
				{
					" Minh Ph��ng u linh h�ng li�n ", " H�ch H� u linh ph�t ��i ", " Minh Ph��ng u linh th��ng gi�i ", " Minh Ph��ng u linh h� uy�n ", " Minh Ph��ng u linh y�u ��i ",
					" Minh Ph��ng u linh b� trang ", " Minh Ph��ng u linh �ao ", " Minh Ph��ng u linh ngoa ", " Minh Ph��ng u linh y�u tr�y ", " Minh Ph��ng u linh h� gi�i ",
				},
			},
		},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = "emei",
		nShortFaction = "em",
		tbSkill = {380, 328, 712, 1061, 1062, 1114},
		tbEquip =
		{
			{
				szFaction = "Nga Mi Ki�m",
				nFirstEquipId = 4923,
				tbEquipName =
				{
					"Minh Ph��ng l�u v�n ch�u li�n", "Minh Ph��ng l�u v�n ph�t ��i", "Minh Ph��ng l�u v�n th��ng gi�i", "Minh Ph��ng l�u v�n h� uy�n", "Minh Ph��ng l�u v�n y�u ��i ",
					"Minh Ph��ng l�u v�n sam", "Minh Ph��ng l�u v�n ki�m", "Minh Ph��ng l�u v�n ngoa", "Minh Ph��ng l�u v�n b�i ", "Minh Ph��ng l�u v�n h� gi�i ",
				},
			},
			{
				szFaction = "Nga Mi Ch��ng",
				nFirstEquipId = 4933,
				tbEquipName =
				{
					"Minh Ph��ng h�n ng�c ch�u li�n ", "Minh Ph��ng h�n ng�c ph�t ��i", "Minh Ph��ng h�n ng�c th��ng gi�i", "Minh Ph��ng h�n ng�c h� uy�n", "Minh Ph��ng h�n ng�c y�u ��i",
					"Minh Ph��ng h�n ng�c sam", "Minh Ph��ng h�n ng�c tri�n th� ", "Minh Ph��ng h�n ng�c ngoa ", "Minh Ph��ng h�n ng�c b�i ", "Minh Ph��ng h�n ng�c h� gi�i ",
				},
			},
		},
	},
	[6] =
	{
		szShowName = "Th�y Y�n",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713, 1063, 1065},
		tbEquip =
		{
			{
				szFaction = "Th�y Y�n �ao (Ngo�i)",
				nFirstEquipId = 4943,
				tbEquipName =
				{
					"Minh Ph��ng h�ng nhan ch�u li�n ", "Minh Ph��ng h�ng nhan ph�t ��i", "Minh Ph��ng h�ng nhan th��ng gi�i", "Minh Ph��ng h�ng nhan h� uy�n", "Minh Ph��ng h�ng nhan y�u ��i",
					"Minh Ph��ng h�ng nhan sam", "Minh Ph��ng h�ng nhan �ao ", "Minh Ph��ng h�ng nhan ngoa ", "Minh Ph��ng h�ng nhan b�i ", "Minh Ph��ng h�ng nhan h� gi�i ",
				},
			},
			{
				szFaction = "Th�y Y�n Song �ao (N�i)",
				nFirstEquipId = 4953,
				tbEquipName =
				{
					"Minh Ph��ng �o th�i ch�u li�n ", "Minh Ph��ng �o th�i ph�t ��i", "Minh Ph��ng �o th�i th��ng gi�i", "Minh Ph��ng �o th�i h� uy�n", "Minh Ph��ng �o th�i y�u ��i",
					"Minh Ph��ng �o th�i sam", "Minh Ph��ng �o th�i �ao ", "Minh Ph��ng �o th�i ngoa ", "Minh Ph��ng �o th�i b�i ", "Minh Ph��ng �o th�i h� gi�i ",
				},
			},
		},
	},
	[7] =
	{
		szShowName = "C�i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714, 1073, 1074},
		tbEquip =
		{
			{
				szFaction = "C�i Bang Ch��ng",
				nFirstEquipId = 5013,
				tbEquipName =
				{
					" Minh Ph��ng h� ph�p h�ng li�n", " Minh Ph��ng h� ph�p ��u ho�n", " Minh Ph��ng h� ph�p th��ng gi�i ", " Minh Ph��ng h� ph�p h� uy�n ", " Minh Ph��ng h� ph�p th�c y�u",
					" Minh Ph��ng h� ph�p c�i y", " Minh Ph��ng h� ph�p tri�n th� ", " Minh Ph��ng h� ph�p ngoa ", "Minh Ph��ng h� ph�p b�i ", " Minh Ph��ng h� ph�p h� gi�i ",
				},
			},
			{
				szFaction = "C�i Bang B�ng",
				nFirstEquipId = 5023,
				tbEquipName =
				{
					"Minh Ph��ng tr�ng gi�i h�ng li�n", "Minh Ph��ng tr�ng gi�i ��u ho�n", "Minh Ph��ng tr�ng gi�i th��ng gi�i ", "Minh Ph��ng tr�ng gi�i h� uy�n", "Minh Ph��ng tr�ng gi�i th�c y�u",
					"Minh Ph��ng tr�ng gi�i c�i y", "Minh Ph��ng tr�ng gi�i tr��ng", "Minh Ph��ng tr�ng gi�i ngoa", "Minh Ph��ng tr�ng gi�i b�i", "Minh Ph��ng tr�ng gi�i h� gi�i ",
				},
			},
		},
	},
	[8] =
	{
		szShowName = "Thi�n Nh�n Gi�o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715, 1075, 1076},
		tbEquip =
		{
			{
				szFaction = "Chi�n Nh�n",
				nFirstEquipId = 5033,
				tbEquipName =
				{
					"Minh Ph��ng x�ch minh h�ng li�n", "H�ch H� x�ch minh kh�i", "Minh Ph��ng x�ch minh th��ng gi�i", "Minh Ph��ng x�ch minh h� o�n", "Minh Ph��ng x�ch minh y�u ��i",
					"Minh Ph��ng x�ch minh gi�p", "Minh Ph��ng x�ch minh th��ng", "Minh Ph��ng x�ch minh ngoa", "Minh Ph��ng x�ch minh b�i", "Minh Ph��ng x�ch minh h� gi�i",
				},
			},
			{
				szFaction = "Ma Nh�n",
				nFirstEquipId = 5043,
				tbEquipName =
				{
					"Minh Ph��ng s�t vi�m h�ng li�n", "H�ch H� s�t vi�m kh�i", "Minh Ph��ng s�t vi�m th��ng gi�i", "Minh Ph��ng s�t vi�m h� o�n", "Minh Ph��ng s�t vi�m y�u ��i",
					"Minh Ph��ng s�t vi�m gi�p", "Minh Ph��ng s�t vi�m �ao", "Minh Ph��ng s�t vi�m ngoa", "Minh Ph��ng s�t vi�m b�i", "Minh Ph��ng s�t vi�m h� gi�i",
				},
			},
		},
	},
	[9] =
	{
		szShowName = "V� �ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716, 1078, 1079},
		tbEquip =
		{
			{
				szFaction = "V� �ang Kh�",
				nFirstEquipId = 5053,
				tbEquipName =
				{
					" Minh Ph��ng ti�n �m ph� ", " Minh Ph��ng ti�n �m qu�n", " Minh Ph��ng ti�n �m th��ng gi�i ", " Minh Ph��ng ti�n �m t� ", " Minh Ph��ng ti�n �m ph�p ��i ",
					" Minh Ph��ng ti�n �m ��o b�o ", " Minh Ph��ng ti�n �m ki�m ", " Minh Ph��ng ti�n �m ngoa ", " Minh Ph��ng ti�n �m b�i ", " Minh Ph��ng ti�n �m h� gi�i ",
				},
			},
			{
				szFaction = "V� �ang Ki�m",
				nFirstEquipId = 5063,
				tbEquipName =
				{
					" Minh Ph��ng ��o minh ph� ", " Minh Ph��ng ��o minh qu�n ", " Minh Ph��ng ��o minh th��ng gi�i ", " Minh Ph��ng ��o minh t� ", " Minh Ph��ng ��o minh ph�p ��i ",
					" Minh Ph��ng ��o minh ��o b�o ", " Minh Ph��ng ��o minh ki�m ", " Minh Ph��ng ��o minh ngoa ", " Minh Ph��ng ��o minh b�i ", " Minh Ph��ng ��o minh h� gi�i ",
				},
			},
		},
	},
	[10] =
	{
		szShowName = "C�n L�n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717, 1080, 1081},
		tbEquip =
		{
			{
				szFaction = "C�n L�n �ao",
				nFirstEquipId = 5073,
				tbEquipName =
				{
					"Minh Ph��ng thi�n canh h�ng li�n ", "Minh Ph��ng thi�n canh ��o qu�n", "Minh Ph��ng thi�n canh th��ng gi�i", "Minh Ph��ng thi�n canh h� uy�n", "Minh Ph��ng thi�n canh ph�p ��i",
					"Minh Ph��ng thi�n canh ��o b�o", "Minh Ph��ng thi�n canh �ao", "Minh Ph��ng thi�n canh ngoa", "Minh Ph��ng thi�n canh b�i", "Minh Ph��ng thi�n canh h� gi�i",
				},
			},
			{
				szFaction = "C�n L�n Ki�m",
				nFirstEquipId = 5083,
				tbEquipName =
				{
					"Minh Ph��ng ng�o s��ng h�ng li�n ", "Minh Ph��ng ng�o s��ng ��o qu�n", "Minh Ph��ng ng�o s��ng th��ng gi�i", "Minh Ph��ng ng�o s��ng h� uy�n", "Minh Ph��ng ng�o s��ng ph�p ��i",
					"Minh Ph��ng ng�o s��ng ��o b�o", "Minh Ph��ng ng�o s��ng ki�m ", "Minh Ph��ng ng�o s��ng ngoa ", "Minh Ph��ng ng�o s��ng b�i", "Minh Ph��ng ng�o s��ng h� gi�i",
				},
			},
		},
	},
}

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")

function dmcreattongtest()
local strTongName = GetTongName()
local tszTitle = "Ch�o m�ng b�n �� tham gia h� th�ng <color=yellow>Bang H�i<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,5,"Nh�n �i�u ki�n t�o bang h�i./dmcreatetong","Gia nh�p bang h�i./dmjointong","T�o bang h�i./dmcreateit","Tho�t./no","Tr� l�i.")
else
	Say(tszTitle,0)
end	
end

function dmcreatetong()	
if  GetCamp() ~= 4 then
		SetCamp(4)
		SetCurCamp(4)
		AddRepute(100000)
		AddLeadExp(1000000)
		AddLeadExp(1000000)

		AddLeadExp(1000000)

		AddEventItem(195)
		Earn(1000000)
		if GetLevel() <= 100 then
			for i=1,100 do
				AddOwnExp(100000000)
			end
		end
Msg2Player("<color=yellow>Ng��i �� h�i �� t�t c� �i�u ki�n �� t�o Bang H�i!<color>")
else
end
end

function dmjointong()
if  GetCamp() ~= 4 then

		if GetLevel() <= 100 then
			for i=1,100 do
				AddOwnExp(100000000)
			end
		end

		SetCamp(4)
		SetCurCamp(4)
Msg2Player("<color=yellow>Gia nh�p Bang h�i th�nh c�ng!<color>")
else
end
end

function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("Ki�m hi�p ch��ng m�n nh�n:Khai s�ng bang h�i, m� r�ng b� nghi�p." ,2,"B�t ��u d�ng bang/Direct_CreateTong","��i ta m�t ch�t/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
		Talk(6,"create_pay", "Ng��i ch�i: Ki�m hi�p ch��ng m�n nh�n, xin h�i ta ph�i l�m nh� th� n�o m�i ca th� khai t�ng l�p ph�i tr� th�nh Bang ch� ��y?", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ng��i ph�i c� �� n�ng l�c l�nh ��o, c� 16 ng��i c�ng ch� h��ng c�ng ng��i l�p bang, tr�i qua 3 ng�y Kh�o Nghi�m K� ", "Ch��ng m�n nh�n:  N�u trong 3 ng�y c� ng��i r�i bang th� n�i trong 3 ng�y �� ng��i ph�i t�m ng��i kh�c thay th�.", "Ch��ng m�n nh�n:  Ng��i ph�i c� �� t�i l�nh ��o v� t�n v�t �� l� Nh�c V��ng Ki�m", "Ng��i ch�i: Nh�c V��ng Ki�m ? Ng��i n�i l� thanh ki�m n�y � ? ", "Ki�m hi�p ch��ng m�n nh�n : Th� ra l� ng��i �� c� n�... Kh�ng t�, qu� nhi�n tu�i tr� t�i cao!!! ")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: N�u nh� mu�n th�nh l�p bang h�i, ng��i c� th� v� n� b� ra 1 l��ng l�n th�i gian, s�c l�c c�ng t�m huy�t, kh�ng th� n�a ���ng h�y b�." )
		else
			Talk(6,"", "Ki�m hi�p ch��ng m�n nh�n:  Ng��i mu�n h�i �i�u ki�n l�p bang �? �� ta n�i cho ng��i r�.", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ph�i xu�t x�,  ti�p theo ng��i kh�ng th� � b�t k� bang h�i n�o kh�c, ng��i nh�t �inh ph�i c� danh v�ng giang h�, cu�i c�ng l� t�i l�nh ��o ph�i h�n 30 c�p.", "Ki�m hi�p ch��ng m�n nh�n: Sau �� �i chi�n tr��ng t�m m�t thanh Nh�c V��ng Ki�m l�m bang ch� t�n v�t l� ���c r�i.")
		end
	end
end

function create_pay()
	Say("Ki�m hi�p ch��ng m�n nh�n: Ng��i c�n l� phi l� 100 v�n l��ng b�c." ,2,"Kh�ng th�nh v�n ��, ta c� �em 100v l��ng ��y! /create_pay_yes","Ta kh�ng �em �� ti�n r�i. /create_pay_no")
end
function create_pay_yes()
	if (GetCash() >= 1000000) then
		Pay(1000000)		
		DelItem(195)		
		SetTask(99,1)				
		Direct_CreateTong()		
	else
		Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: Vi�c duy tr� bang h�i r�t t�n k�m, ng��i ph�i c� g�ng c�ng m�i ng��i t�ch g�p �� Bang H�i ���c gi�u m�nh. ")	end
end

function Direct_CreateTong()
	CreateTong(1)				
end

function main()
dofile("script/global/lbadmin.lua")
dofile("script/global/hotrothem.lua")
dofile("script/global/dohoangkimmax.lua")
local tbSay = {}
tinsert(tbSay,"Qu�n L� Gamer./thongtingamer")
tinsert(tbSay,"Shop/yes")
tinsert(tbSay,"Ch�c N�ng Bang H�i/dmcreattongtest")
tinsert(tbSay,"N�ng �i�m Kinh Nghi�m./diemexp")
tinsert(tbSay,"Nh�n �i�m - Ti�n - V�ng S�ng./hotro")
tinsert(tbSay,"Nh�n Skill./nhanskill")
tinsert(tbSay,"Nh�n V�t Ph�m Tr�ng Sinh./bacdautst")
tinsert(tbSay,"Hoa S�n Ph�i./hoasonphai")
tinsert(tbSay,"Ta Mu�n L�y V�t Ph�m - Gi�i Ch�./show_item")
tinsert(tbSay,"Thay ��i Tr�ng Th�i./trangthai")
tinsert(tbSay,"Trang B� Hi�m - V�t ph�m kh�c./fifong")
tinsert(tbSay,"Nh�n Trang B� Maxop./dohoangkimmax")
tinsert(tbSay,"Nh�n Trang B�./cucphkhac")
tinsert(tbSay,"Ho�ng Kim M�n Ph�i - �� Xanh - �� T�m./hkmpdoxanh")
tinsert(tbSay,"L�y Ng�a./layngua")
--tinsert(tbSay,"Ch�n X�ng Hi�u./xunghieu")
tinsert(tbSay,"Tho�t/no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n nh�ng g� m� b�n mu�n !", getn(tbSay), tbSay)
Say("Xin ch�o <color=yellow>"..GetName().."<color>..! <enter>M�nh l�<color=green> Th�ng H�n Pro,<color> m�nh s� gi�p b�n test game n�y.!<enter>Xin m�i b�n ch�n<color=red> ch�c n�ng �� test",getn(tbSay), tbSay)
return 1
end

function hoasonphai()
	local szTitle = "<npc>L�n n�y ph�i <color=blue>Hoa S�n<color> ta t�i su�t,  giang h� l�i th�m nhi�u bi�n ��ng"
	local tbOpt =
	{
		{"H�i chuy�n", noi},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229 }
local tbEquipFreeCell =
{
{2, 1}, {2, 2}, {1, 1}, {1, 2}, {2, 1},
{2, 3}, {2, 4}, {2, 2}, {1, 2}, {1, 1},
}

local tbFactionSeries =
{
[1] = {1, 2},
[2] = {3, 4},
[3] = {5, 6},
[4] = {7, 8},
[5] = {9, 10},
}

function yes()
Sale(142)
end

function diemexp()
local tbSay = {}
tinsert(tbSay,"N�ng l�n 1 c�p ./lv1")
tinsert(tbSay,"N�ng l�n 10 c�p./lvup10")
tinsert(tbSay,"N�ng l�n c�p 150./level_up_to150")
tinsert(tbSay,"N�ng l�n c�p 180./level_up_to180")
tinsert(tbSay,"N�ng l�n c�p 195./level_up_to195")
tinsert(tbSay,"Tho�t/no")
tinsert(tbSay,"Tr� l�i")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y c�p �� m� b�n mu�n !", getn(tbSay), tbSay)
end

function xunghieu()
local tbSay = {}
tinsert(tbSay,"Thi�u L�m ./xunghieu1")
tinsert(tbSay,"Thi�n V��ng./xunghieu2")
tinsert(tbSay,"Ng� ��c./xunghieu3")
tinsert(tbSay,"���ng M�n./xunghieu4")
tinsert(tbSay,"Nga Mi./xunghieu5")
tinsert(tbSay,"Th�y Y�n./xunghieu6")
tinsert(tbSay,"C�i Bang./xunghieu7")
tinsert(tbSay,"Thi�n Nh�n./xunghieu8")
tinsert(tbSay,"V� �ang./xunghieu9")
tinsert(tbSay,"C�n L�n./xunghieu10")
tinsert(tbSay,"Hoa S�n./xunghieu11")
tinsert(tbSay,"Tho�t/no")
tinsert(tbSay,"Tr� l�i")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n M�n Ph�i  !", getn(tbSay), tbSay)
end

function xunghieu1()
SetRank(72)
Msg2Player("B�n ���c x�ng hi�u: H� Ph�p Tr��ng L�o.")
end
function xunghieu2()
SetRank(69)
Msg2Player("B�n ���c x�ng hi�u: K�nh Thi�n Nguy�n So�i.")
end
function xunghieu3()
SetRank(80)
Msg2Player("B�n ���c x�ng hi�u: U Minh Qu� V��ng.")
end
function xunghieu4()
SetRank(76)
Msg2Player("B�n ���c x�ng hi�u: L�c C�c Tr��ng L�o.")
end
function xunghieu5()
SetRank(64)
Msg2Player("B�n ���c x�ng hi�u: Kim ��nh Th�nh N�.")
end
function xunghieu6()
SetRank(67)
Msg2Player("B�n ���c x�ng hi�u: Hoa Th�n.")
end
function xunghieu7()
SetRank(78)
Msg2Player("B�n ���c x�ng hi�u: C�u ��i Tr��ng L�o.")
end
function xunghieu8()
SetRank(81)
Msg2Player("B�n ���c x�ng hi�u: Th�nh Gi�o Tr��ng L�o.")
end
function xunghieu9()
SetRank(73)
Msg2Player("B�n ���c x�ng hi�u: Huy�n V� Ch�n Nh�n.")
end
function xunghieu10()
SetRank(75)
Msg2Player("B�n ���c x�ng hi�u: H� Ph�i Ch�n Qu�n.")
end
function xunghieu11()
SetRank(89)
Msg2Player("B�n ���c x�ng hi�u: V� L��ng Thi�n T�n.")
end
function bacdautst()
local tbSay = {}
tinsert(tbSay,"Nh�n B�c ��u TST C� S� Thi�n./bacdau1")
tinsert(tbSay,"Nh�n B�c ��u TST ��i Th�a T�m Ph�p./bacdau2")
tinsert(tbSay,"Tho�t/no")
tinsert(tbSay,"Tr� l�i")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, Xin h�y l�a ch�n v�t ph�m b�n c�n...!", getn(tbSay), tbSay)
end

function  lv1()
AddOwnExp(10000000000000)
end

function  lvup10()
for i=1,10 do
AddOwnExp(10000000000000)
end
end

function level_up_to150()
	local nCurLevel = GetLevel()
	if nCurLevel >= 150 then
		if ST_IsTransLife() == 1 then
			Talk(1, "", "Ng��i �� ��t c�p 150 r�i.")
		else
			Talk(1, "", "�i chuy�n sinh tr��c �i r�i tr� l�i th�ng c�p.")
		end
		return
	end
	local nAddLevel = 150 - nCurLevel
	ST_LevelUp(nAddLevel)
end

function level_up_to180()
	local nCurLevel = GetLevel()
	if nCurLevel >= 180 then
		if ST_IsTransLife() == 1 then
			Talk(1, "", "Ng��i �� ��t c�p 180 r�i.")
		else
			Talk(1, "", "�i chuy�n sinh tr��c �i r�i tr� l�i th�ng c�p.")
		end
		return
	end
	local nAddLevel = 180 - nCurLevel
	ST_LevelUp(nAddLevel)
end

function level_up_to195()
	local nCurLevel = GetLevel()
	if nCurLevel >= 195 then
		if ST_IsTransLife() == 1 then
			Talk(1, "", "Ng��i �� ��t c�p 195 r�i.")
		else
			Talk(1, "", "�i chuy�n sinh tr��c �i r�i tr� l�i th�ng c�p.")
		end
		return
	end
	local nAddLevel = 195 - nCurLevel
	ST_LevelUp(nAddLevel)
end

function trangthai()
local tbSay = {}
tinsert(tbSay,"Ch�nh Ph�i./mauvang")
tinsert(tbSay,"T� Ph�i./mautim")
tinsert(tbSay,"Trung L�p./mauxanh")
tinsert(tbSay,"S�t Th�./maudo")
tinsert(tbSay,"Luy�n C�ng./mautrang")
tinsert(tbSay,"Admin./mauadmin")
tinsert(tbSay,"Tho�t/no")
tinsert(tbSay,"Tr� l�i")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n tr�ng th�i m� b�n mu�n !", getn(tbSay), tbSay)
end

function mautrang()
SetCurCamp(0)
SetCamp(0)
end

function mauvang()
SetCurCamp(1)
SetCamp(1)
end
function mautim()
SetCurCamp(2)
SetCamp(2) 
end
function mauxanh()
SetCurCamp(3)
SetCamp(3) 
end
function maudo()
SetCurCamp(4)
SetCamp(4) 
end

function mauadmin()
SetCurCamp(5)
SetCamp(5) 
end

function nhanskill()
local tbSay = {}
tinsert(tbSay,"V�o Ph�i V� H�c Skill 150./choose_faction")
tinsert(tbSay,"Nh�n Skill 180./nhanskill180")
tinsert(tbSay,"Nh�n Skill 150./skill150")
tinsert(tbSay,"K� N�ng 120./kynang120")
tinsert(tbSay,"K� N�ng 90./kynang90")
tinsert(tbSay,"Tho�t/no")
tinsert(tbSay,"Tr� l�i")
Say("Xin m�i <color=yellow>"..GetName().."<color> ch�n Skill  !", getn(tbSay), tbSay)
end

function no()
end
local tbFreeItem =
{
{szName="H�i Thi�n T�i T�o C�m Nang.", tbProp={6,1,1781,1,0,0}, tbParam={60}},
{szName="C�n Kh�n Song Tuy�t B�i.", tbProp={6,1,2219,0,0,0}},
{szName="Nh�c V��ng Ki�m.", tbProp={6,1,2340,0,0,0}},
{szName="Qu� Huy Ho�ng Cao C�p.", tbProp={6,1,1075,1,0,0}},
{szName="Th�p To�n ��i B�.", tbProp={6,1,1399,1,0,0}},
{szName="Vi�m �� �� B�o.", tbProp={6,1,2805,1,0,0}},
{szName="T�ng Kim B� B�o.", tbProp={6,1,2741,1,0,0}},
{szName="��i L�c Ho�n L� H�p.", tbProp={6,1,2517,1,0,0}},
{szName="H�n Huy�t Long C�u.", tbProp={0,10,18,1,0,0}, nWidth=2, nHeigth=3},
}

function kynang90()
AddItem(6,1,2426,0,0,0,0)
AddItem(6,1,2424,0,0,0,0)
AddItem(6,1,2426,0,0,0,0)
AddItem(6,1,2424,0,0,0,0)
AddItem(6,1,2426,0,0,0,0)
AddItem(6,1,2424,0,0,0,0)
end
function kynang120()
AddItem(6,1,2425,0,0,0,0)
AddItem(6,1,1125,0,0,0,0)
end

function nhanskill180()
local nFaction = GetLastFactionNumber() + 1
if nFaction==0 then
Say("Kh�ng c� m�n ph�i m� ��i nh�n skill th�t truy�n, ta kh�ng c� th�i gian ��a v�i ng��i", 0)
return
else
for i=1,10 do
if (nFaction==i) then
if (HaveMagic(SKILL_180[i]) == -1) then
AddMagic(SKILL_180[i],20)
Say("B�n h�c ���c k� n�ng c�p 180 <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
else
Say("Ng��i �� c� k� n�ng th�t truy�n r�i, ��ng tham lam", 0)
return
end
end
end
end
end
function cucphkhac()
dohoangkim()
end
function bachkim()
local tab_Content =
{
"Thi�u L�m./bktl",
"Thi�n V��ng./bktv",
"���ng M�n./bkdm",
"Ng� ��c./bk5d",
"Nga Mi./bknm",
"Thu� Y�n./bkty",
"C�i Bang./bkcb",
"Thi�n Nh�n./bktn",
"V� �ang./bkvd",
"C�n L�n./bkcl",
"Tho�t./no",
"Tr� l�i."
}
Say("Xin m�i <color=yellow>"..GetName().."<color>, H�y ch�n trang b� m� b�n mu�n !", getn(tbSay), tbSay)
end
function bktl()
AddGoldItem(0, 11)
AddGoldItem(0, 6)
end
function bktv()
AddGoldItem(0, 16)
AddGoldItem(0, 21)
AddGoldItem(0, 26)
end
function bknm()
AddGoldItem(0, 31)
end
function bkty()
AddGoldItem(0, 46)
end
function bk5d()
AddGoldItem(0, 61)
end
function bkdm()
AddGoldItem(0, 71)
AddGoldItem(0, 76)
AddGoldItem(0, 81)
end
function bkcb()
AddGoldItem(0, 96)
end
function bktn()
AddGoldItem(0, 101)
end
function bkvd()
for i=4346,4355 do
AddPlatinaItem(3, i)
end
end
function bkcl()
AddGoldItem(0, 126)
end
function hacthan()
for i=4833,4837 do
AddGoldItem(0, i)
end
end

function hkmpdoxanh()
local tab_Content =
{
"Trang B� Ho�ng Kim M�n Ph�i./sethoangkimmonphai",
"V� Kh� HKMP./bachkim",
"L�y �� Xanh./laydoxanh",
"L�y �� T�m./dotim1",
"B� An Bang./anbang",
"[C�c Ph�m] An Bang./anbang1",
"[Ho�n M�] An Bang./anbang2",
"[Li�n ��u] An Bang./anbang3",
"Th�i./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n trang b� m� b�n mu�n !", getn(tab_Content), tab_Content)
end

function anbang()
for i=216,219 do
AddGoldItem(0, i)
end
end

function anbang1()
for i=408,411  do
AddGoldItem(0, i)
end
end

function anbang2()
for i=210,213  do
AddGoldItem(0, i)
end
end

function anbang3()
for i=394,397  do
AddGoldItem(0, i)
end
end

function sethoangkimmonphai()
sethkmp()
end

tbDoXanh =
{
[1]=
{
szName = "D�y chuy�n",
tbEquip =
{
{"To�n th�ch h�ng li�n",0,4,0},
{"L�c Ph� Th�y H� Th�n ph� ",0,4,1},
}
},
[2]=
{
szName = "�o gi�p",
tbEquip =
{
{"Th�t B�o C� Sa",0,2,0},
{"Ch�n V� Th�nh Y",0,2,1},
{"Thi�n Nh�n M�t Trang",0,2,2},
{"Gi�ng Sa B�o",0,2,3},
{"���ng Ngh� gi�p",0,2,4},
{"V�n L�u Quy T�ng Y",0,2,5},
{"Tuy�n Long b�o",0,2,6},
{"Long Ti�u ��o Y",0,2,8},
{"C�u V� B�ch H� trang",0,2,9},
{"Tr�m H��ng sam",0,2,10},
{"T�ch L�ch Kim Ph�ng gi�p",0,2,11},
{"V�n Ch�ng T� T�m Y",0,2,12},
{"L�u Ti�n Qu�n",0,2,13},
}
},
[3]=
{
szName = "�ai l�ng",
tbEquip =
{
{"Thi�n T�m Y�u ��i",0,6,0},
{"B�ch Kim Y�u ��i",0,6,1},
}
},
[4]=
{
szName = "Gi�y",
tbEquip =
{
{"C�u Ti�t X��ng V� Ngoa",0,5,0},
{"Thi�n T�m Ngoa",0,5,1},
{"Kim L� h�i",0,5,2},
{"Phi Ph�ng Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao tay",
tbEquip =
{
{"Long Ph�ng Huy�t Ng�c Tr�c",0,8,0},
{"Thi�n T�m H� Uy�n",0,8,1},
}
},
[6]=
{
szName = "N�n",
tbEquip =
{
{"T� L� m�o",0,7,0},
{"Ng� l�o qu�n",0,7,1},
{"Tu La Ph�t k�t",0,7,2},
{"Th�ng Thi�n Ph�t Qu�n",0,7,3},
{"Y�m Nh�t kh�i",0,7,4},
{"Tr�ch Tinh ho�n",0,7,5},
{"� T�m M�o",0,7,6},
{"Quan �m Ph�t Qu�n",0,7,7},
{"�m D��ng V� C�c qu�n",0,7,8},
{"Huy�n T� Di�n Tr�o",0,7,9},
{"Long Huy�t ��u ho�n",0,7,10},
{"Long L�n Kh�i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Ph�ng Tri�n S� ",0,7,13},
}
},
[7]=
{
szName = "V� kh� c�n chi�n",
tbEquip =
{
{"Huy�n Thi�t Ki�m",0,0,0},
{"��i Phong �ao",0,0,1},
{"Kim C� B�ng",0,0,2},
{"Ph� Thi�n K�ch",0,0,3},
{"Ph� Thi�n ch�y",0,0,4},
{"Th�n Nh�t Tr�m",0,0,5},
}
},
[8]=
{
szName = "Ng�c b�i",
tbEquip =
{
{"Long Ti�n H��ng Nang",0,9,0},
{"D��ng Chi B�ch Ng�c",0,9,1},
}
},
[9]=
{
szName = "V� kh� t�m xa",
tbEquip =
{
{"B� V��ng Ti�u",0,1,0},
{"To�i Nguy�t �ao",0,1,1},
{"Kh�ng T��c Linh",0,1,2},
}
},
[10]=
{
szName = "Nh�n",
tbEquip =
{
{"To�n Th�ch Gi�i Ch� ",0,3,0},
}
},
}
function laydoxanh()
local tbOpt = {}
for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"Tho�t."})
CreateNewSayEx("<npc>Xin m�i l�a ch�n trang b�:", tbOpt)
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"Tho�t."})
local szTitle = format("<npc>Xin m�i l�a ch�n trang b�:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
local tbOpt = {}
tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
tinsert(tbOpt, {"M�c", laydoxanh3, {nIndex, nType, 1}})
tinsert(tbOpt, {"Th�y", laydoxanh3, {nIndex, nType, 2}})
tinsert(tbOpt, {"H�a", laydoxanh3, {nIndex, nType, 3}})
tinsert(tbOpt, {"Th� ", laydoxanh3, {nIndex, nType, 4}})


tinsert(tbOpt, {"Tho�t."})
local szTitle = format("<npc>Ch�n h�:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 60, "S� l��ng:", {laydoxanh4, {nIndex, nType, nSeries}})
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
for i=1,nCount do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10) end
end

function hotro()
local tab_Content =
{
"V�ng s�ng danh hi�u./DanhHieu",
"Nh�n 5 vi�n KNB./cszb",
"L�y 100 ti�n ��ng./tiendong",
"Ti�n./tien",
"T�y �i�m./clear_attibute_point",
"Danh v�ng,Ph�c duy�n./danhvongphucduyen",
"T�i l�nh ��o./lanhdao",
"�i�m c�ng hi�n./conghien",
"�i�m k� n�ng./pointkynang",
"�i�m ti�m n�ng./pointtiemnang",
"Nh�n LB g�i boss./gm_functionboss",
"Th�i./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n nh�ng g� m� b�n mu�n !", getn(tab_Content), tab_Content)
end
function pointkynang()
AddMagicPoint(200)
Msg2Player("B�n nh�n ���c 200 �i�m K� N�ng.")
end;

function pointtiemnang()
AddProp(1000)
Msg2Player("B�n nh�n ���c 1000 �i�m Ti�m N�ng.")
end;


function lanhdao()
AddLeadExp(20000)
end

function tien()
Earn(1000000000)
Msg2Player("B�n nh�n ���c 1000000000 v�n .")
end

function danhvongphucduyen()
AddRepute(1000);
FuYuan_Start();
FuYuan_Add(1000);
Msg2Player("B�n nh�n ���c 1000 �i�m Danh V�ng.")
end
function conghien()
AddContribution(100000)
Msg2Player("B�n nh�n ���c 100000 �i�m C�ng Hi�n.")
end

function gm_functionboss()
for i =1,5 do
AddItem(6,1,1022,0,0,0)
end
end

function DanhHieu()
local tab_Content =
{
"V�ng s�ng Admin./vsadmin",
"V� L�m Ki�t Xu�t./vlkx",
"V� L�m Minh Ch� 1./vlmc1",
"V� L�m Minh Ch� 2./vlmc2",
"Ng� Long Cu�ng �ao./ngulongcd",
"��i H�i Server./daihoisv",
"Thi�n H� �� Nh�t Bang./thdnb",
"Tuy�t Th� Cao Th�./tuyetthect",
"M�nh Long Tranh B�./manhlongtb",
"Th�i./no",
"Tr� l�i"
}
Say("Xin m�i <color=yellow>"..GetName().."<color> ch�n Danh Hi�u !", getn(tab_Content), tab_Content);
end


function vsadmin()
n_title = 228---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function vlkx()
n_title = 85 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function vlmc2()
n_title = 3000 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function vlmc1()
n_title = 188 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function ngulongcd()
n_title = 165 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function daihoisv()
n_title = 150 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function thdnb()
n_title = 189 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function tuyetthect()
n_title = 235 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function manhlongtb()
n_title = 263 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end

function layngua()
local tab_Content =
{
"Ng�a nh�m 1./vip1",
"Ng�a nh�m 2./vip2",
"Ng�a nh�m 3./vip3",
"Ng�a nh�m 4./vip4",
"Ng�a nh�m 5./vip5",
"M� b�i Si�u quang./mabaisq",
"S� t� ho�ng kim./sutu",
"Si�u quang./sieuquang",
"H�n Huy�t Long C�u./longcau",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin m�i <color=yellow>"..GetName().."<color> ch�n Ng�a m� b�n mu�n !", getn(tab_Content), tab_Content);
end
function vip5()
for i=5093,5097 do
AddGoldItem(0, i)
end
end
function sutu()
AddGoldItem(0, 4480)
end
function sieuquang()
AddGoldItem(0, 4366)
end
function longcau()
AddGoldItem(0, 3879)
end
function mabaisq()
AddItem(6,1,3483,0,0,0,0)
end
function vip1()
AddItem(0,10,6,10,0,0,0)
AddItem(0,10,7,10,0,0,0)
AddItem(0,10,8,10,0,0,0)
AddItem(0,10,9,10,0,0,0)
AddItem(0,10,10,10,0,0,0)

end
function vip2()
AddItem(0,10,11,10,0,0,0)
AddItem(0,10,12,10,0,0,0)
AddItem(0,10,13,10,0,0,0)
AddItem(0,10,14,10,0,0,0)
AddItem(0,10,15,10,0,0,0)

end
function vip3()
AddItem(0,10,16,10,0,0,0)
AddItem(0,10,17,10,0,0,0)
AddItem(0,10,18,10,0,0,0)
AddItem(0,10,19,10,0,0,0)
AddItem(0,10,20,10,0,0,0)

end
function vip4()
AddItem(0,10,21,10,0,0,0)
AddItem(0,10,22,10,0,0,0)
AddItem(0,10,23,10,0,0,0)
AddItem(0,10,24,10,0,0,0)
AddItem(0,10,25,10,0,0,0)
end

function level_up_to150()
local nCurLevel = GetLevel()
if nCurLevel >= 150 then
if ST_IsTransLife() == 1 then
Talk(1, "", "Ng��i �� ��t c�p 150 r�i.")
else
Talk(1, "", "�i chuy�n sinh tr��c �i r�i tr� l�i th�ng c�p.")
end
return
end
local nAddLevel = 150 - nCurLevel
ST_LevelUp(nAddLevel)
end

function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function choose_faction()
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i r�i.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Tr� v�", dialog_main})
	tinsert(tbOpt, {"Tho�t."})
	CreateNewSayEx("<npc>M�t khi gia nh�p m�n ph�i kh�ng th� thay ��i, h�y suy ngh� k�.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<npc>X�c nh�n mu�n gia nh�p m�n ph�i ?<color=yellow>%s<color> m�n ph�i?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X�c nh�n!", do_set_faction, {nIndex}},
		{"Tr� v�.", choose_faction},
		{"Tho�t."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", %tbFaction[nIndex].nShortFaction, 0)
	for i=1, getn(%tbFaction[nIndex].tbSkill) do
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	Talk(1, "KickOutSelf", format("Ng��i �� gia nh�p th�nh c�ng ph�i %s", %tbFaction[nIndex].szShowName))
end

function show_faction()
	if check_faction() == 1 then
		Talk(1, "", "Gia nh�p m�n ph�i m�i ca th� nh�n trang b�")
		return
	end
	local nFactionId = GetLastFactionNumber() + 1
	local tbOpt = {}
	local tbSubFaction = %tbFaction[nFactionId].tbEquip
	for i=1, getn(tbSubFaction) do
		tinsert(tbOpt, {tbSubFaction[i].szFaction, show_equip, {nFactionId, i}})
	end
	tinsert(tbOpt, {"Tr� v�.", main})
--	tinsert(tbOpt, {"
	tinsert(tbOpt, {"Tho�t."})
	CreateNewSayEx("<npc>Xin m�i l�a ch�n ph�i.", tbOpt)
end

function show_equip(nFactionId, nSubFactionId)
local tbEquip = %tbFaction[nFactionId]["tbEquip"][nSubFactionId]
local tbEquipName = tbEquip["tbEquipName"]
local nFirstEquipId = tbEquip["nFirstEquipId"]
local tbOpt = {}
for i=1, getn(tbEquipName) do
tinsert(tbOpt, {tbEquipName[i], get_equip, {i, nFirstEquipId + i - 1}})
end
tinsert(tbOpt, {"Tr� v�", show_faction})
tinsert(tbOpt, {"Tho�t."})
local szTitle = format("<npc>L�y �� %s Kim �", tbEquip.szFaction)
CreateNewSayEx(szTitle, tbOpt)
end

function get_equip(nIndex, nEquipId)
local nWidth = %tbEquipFreeCell[nIndex][1]
local nHeigth = %tbEquipFreeCell[nIndex][2]
if CountFreeRoomByWH(nWidth, nHeigth) < 1 then
Talk(1, "", format("C�n �t nh�t 1 c�i %dx%d t�i �eo l�ng", nWidth, nHeigth))
return
end
AddGoldItem(0, nEquipId)
end
function daithanhbikip15x()
AddItem(6,1,30446,0,0,0)
end

function bacdau1()
AddItem(6,1,1390,0,0,0)
end
function bacdau2()
AddItem(6,1,2974,0,0,0)
end
function show_item()
local tbOpt = {}
local nCount = getn(%tbFreeItem)
local szOption = ""
for i=1, nCount-1 do
szOption = format("Nh�n %s", %tbFreeItem[i].szName)
tinsert(tbOpt, {szOption, get_item, {i}})
end
szOption = format("Nh�n %s", %tbFreeItem[nCount].szName)
tinsert(tbOpt, {szOption, get_single_item, {nCount}})
tinsert(tbOpt, {"Nh�n c�c ph�m gi�i ch�...", get_normal_item})
tinsert(tbOpt, {"Nh�n ��i th�nh b� k�p 150", daithanhbikip15x})
tinsert(tbOpt, {"Tr� v�.", main})
tinsert(tbOpt, {"Tho�t."})
CreateNewSayEx("<npc>H�y ch�n v�t ph�m!", tbOpt)
end

function get_normal_item()
local tab_Content =
{
"H�ng Bang Chi Gi�i./xb_jz",
"Tr�n Nh�c Chi Gi�i./zy_jz",
"Th��ng Ph��ng Chi Gi�i./sf_jz",
"Thi�n H� Gi�i./sh_jz",
"�� Ho�ng Chi Gi�i./dh_jz",
"Thi�n T� Chi Gi�i./tz_jz",
"Th� T�c To�n Gi�i./sz_jz",
"C�n Kh�n Gi�i Ch� (C�c ph�m)./jz08",
"L�nh B� Nguy�n M�ng Chi Gi�i (M�i)./jz08x",
"Tho�t./no",
"Tr� l�i."
}
Say("Xin m�i ch�n Gi�i Ch� !", getn(tab_Content), tab_Content);
end

function fifong()
local tab_Content =
{
"Phi phong./phiphong",
"�n./an",
"Trang s�c./trangsuc",
"Trang s�c h�ng �nh./honganh",
--"M�t n�./matna",
"Kho�ng th�ch - STG - Huy�n tinh - Ph�c duy�n./khoangth",
"H�c th�n./hacthan",
"Long T��ng./longtuong",
"V� li�t./vuliet",
"Unknow./unknow",
"Huynh ��./huynhde",
"C� s�n./coson",
"D��ng th�n./duongthan",
"��ng S�t./dongsat",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin m�i ch�n !", getn(tab_Content), tab_Content);
end

function honganh()
local tab_Content = 
{
"H�ng �nh./honganh1",
"H�ng �nh [Ho�n M�]./honganh2",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin m�i ch�n !", getn(tab_Content), tab_Content)
end

function honganh1()
for i=204,207 do
AddGoldItem(0, i)
end
end

function honganh2()
for i=434,437 do
AddGoldItem(0, i)
end
end

function trangsuc()
local tab_Content =
{
"Trang s�c 1./trangsuc1",
"Trang s�c 2./trangsuc2",
"Long ��m./longdam",
"Cu�ng Lan./cuonglan",
"Tho�t./no",
"Tr� l�i."
}
Say("Xin m�i ch�n !", getn(tab_Content), tab_Content);
end

function huytinh()
dotim()
end


function matna()
local tab_Content =
{
"M�t n� 1./matna1",
"M�t n� 2./matna2",
"M�t n� 3./matna3",
"M�t n� 4./matna4",
"M�t n� 5./matna5",
"Tho�t./no",
"Tr� l�i."
}
Say("Xin m�i ch�n !", getn(tab_Content), tab_Content);
end

function coson()
AddGoldItem(0, 4441)
AddGoldItem(0, 4445)
AddGoldItem(0, 4449)
AddGoldItem(0, 4453)
AddGoldItem(0, 4457)
AddGoldItem(0, 4461)
AddGoldItem(0, 4465)
AddGoldItem(0, 4469)
end
function huynhde()
for i=4436,4437 do
AddGoldItem(0, i)
end
for i=4481,4482 do
AddGoldItem(0, i)
end
end
function vuliet()
for i=5208,5212 do
AddGoldItem(0, i)
end
end
function pro1()
for i=430,441 do
AddGoldItem(0, i)
end
end
function dongsat()
for i=494,497 do
AddGoldItem(0, i)
end
for i=378,379 do
AddGoldItem(0, i)
end
end 
function duongthan()
for i=514,520 do
AddGoldItem(0, i)
end
end

function unknow()
for i=5198,5202 do
AddGoldItem(0, i)
end
end

function phiphong()	local tab_Content = {
"Phi Phong c�p th�p./phiphong1",
"Phi Phong Ph� Quang./phiphongphequang",
"Phi Phong Kh�p Th�n./phiphongkhapthan",
"Phi Phong K�nh Thi�n./phiphongkinhthien",
"Phi Phong V� C�c./phiphongvocuc",
"Phi Phong Cao C�p./phiphongcaocap",
"Tho�t./no",
"Tr� l�i."
	}
Say("Xin m�i <color=yellow>"..GetName().."<color> ch�n Phi Phong m� b�n mu�n !", getn(tab_Content), tab_Content)
end
function phiphong1()
for i=3465,3475 do
AddGoldItem(0, i)
end
end

function phiphongphequang()
for i=3476,3478 do
AddGoldItem(0, i)
end
end

function phiphongkhapthan()
for i=3479,3481 do
AddGoldItem(0, i)
end
end

function phiphongkinhthien()
for i=3482,3484 do
AddGoldItem(0, i)
end
end

function phiphongvocuc()
for i=3485,3487 do
AddGoldItem(0, i)
end
end

function phiphongcaocap()
for i=3488,3490 do
AddGoldItem(0, i)
end
end
function an()
AddGoldItem(0, 3223)
AddGoldItem(0, 3224)
AddGoldItem(0, 3214)
AddGoldItem(0, 3213)
end

function trangsuc1()
for i=3542,3554 do
AddGoldItem(0, i)
end
for i=3491,3506 do
AddGoldItem(0, i)
end
end
function trangsuc2()
AddGoldItem(0,3506)
AddGoldItem(0,3880)
AddGoldItem(0,3881)
AddGoldItem(0,3882)
AddGoldItem(0,3883)
AddGoldItem(0,3884)
AddGoldItem(0,3885)
AddGoldItem(0,3886)
AddGoldItem(0,3887)
AddGoldItem(0,3888)
end

function longdam()
for i=4483,4487 do
AddGoldItem(0, i)
end
end

function cuonglan()
for i=4488,4492 do
AddGoldItem(0, i)
end
end

function cszb()
AddEventItem(343)
AddEventItem(343)
AddEventItem(343)
AddEventItem(343)
AddEventItem(343)
end
function xb_jz()
AddGoldItem(0, 508)
end 
function zy_jz()
AddGoldItem(0, 509)
end 
function sf_jz()
AddGoldItem(0, 510)
end 
function sh_jz()
AddGoldItem(0, 511)
end 
function dh_jz()
AddGoldItem(0, 530)
end 
function tz_jz()
AddGoldItem(0, 531)
end 
function sz_jz()
AddGoldItem(0, 498)
end 
function jz08()
AddGoldItem(0, 3878)
end 
function jz08x()
AddGoldItem(0, 3541)
end 

function get_item(nIndex)
local nMaxCount = CalcFreeItemCellCount()
g_AskClientNumberEx(0, nMaxCount, "Xin m�i ��a v�o nh�n l�y", {get_item_back, {nIndex}})
end

function get_item_back(nIndex, nCount)
if nCount <= 0 then
return
end
if CalcFreeItemCellCount() < nCount then
Talk(1, "", format("C�n �t nh�t <color=yellow>%d<color> t�i kh�ng gian...", nCount))
return
end
local szLogTitle = format("[liguan]get_free_item_%s", %tbFreeItem[nIndex].szName)
tbAwardTemplet:GiveAwardByList(%tbFreeItem[nIndex], szLogTitle, nCount)
end

function get_single_item(nIndex)
local tbItem = %tbFreeItem[nIndex]
if CountFreeRoomByWH(tbItem.nWidth, tbItem.nHeigth) < 1 then
Talk(1, "", format("C�n �t nh�t 1 %dx%d �ı����O��", tbItem.nWidth, tbItem.nHeigth))
return
end
local szLogTitle = format("[liguan]get_free_item_%s", tbItem.szName)
tbAwardTemplet:GiveAwardByList(tbItem, szLogTitle)
end

function clear_attibute_point()
local tbOpt =
{
{"T�y �i�m k� n�ng.", clear_skill},
{"T�y �i�m ti�m n�ng.", clear_prop},
{"Tr� v�", main},
{"Tho�t."},
}
CreateNewSayEx("<npc>Ng��i v�n quy�t ��nh mu�n t�y t�y?", tbOpt)
end

function clear_skill()
local tbOpt =
{
{"X�c nh�n", do_clear_skill},
{"�� ta suy ngh� l�i."},
{"Tr� v�", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng��i v�n quy�t ��nh mu�n t�y t�y?", tbOpt)
end

function do_clear_skill()
local i = HaveMagic(210) -- �Ṧ�������
local j = HaveMagic(400) -- ���︻��ƶ���������
local n = RollbackSkill() -- ������ܲ��������м���?�? ?�����Ṧ�����⼼�ܣ?
local x = 0
if (i ~= -1) then i = 1; x = x + i end -- �⸽���ж����ų���δѧ��� Ṧ���˷���-1�Ӷ���֢��������������
if (j ~= -1) then x = x + j end
local rollback_point = n - x -- �Ѽ��ܵ㵱�����е�������� �����?۳��Ṧ�?
if (rollback_point + GetMagicPoint() < 0) then -- ���ϴ�ɸ˸���������0��? ?��Ժ󶵴�ϴ�㱣?��?
rollback_point = -1 * GetMagicPoint()
end
AddMagicPoint(rollback_point)
if (i ~= -1) then AddMagic(210, i) end -- ���ѧ�u�Ṧ�?�ӻ�ԭ�еȼ�
if (j ~= -1) then AddMagic(400, j) end -- ���ѧ�u���︻�Aƶ��ݬ���� ��
Msg2Player("T�y t�y th�nh c�ng! Ng��i c� "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
KickOutSelf()
end

function clear_prop()
local tbOpt =
{
{"X�c nh�n", do_clear_prop},
{"�� ta suy ngh� l�i."},
{"Tr� v�", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng��i v�n quy�t ��nh mu�n t�y t�y?", tbOpt)
end

function do_clear_prop()
local base_str = {35,20,25,30,20} 
local base_dex = {25,35,25,20,15}
local base_vit = {25,20,25,30,25}
local base_eng = {15,25,25,20,40}
local player_series = GetSeries() + 1

local Utask88 = GetTask(88)
AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))
AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end

function write_info()
tbInputDialog:InputServer()
end
function dotim() local tab_Content = {
"V�t ph�m h� tr�/khoangth",
"M�t n�/manat",
"Tho�t."
}
Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;

function dotim1()
local	tab_Content= 
{
"V� Kh�/weapon",
"Y Ph�c/shirt",
"��nh M�o/hat",
"H� Uy�n/glove",
"Y�u ��i/belt",
"H�i T�/shoe",
"Th�i./no",
"Tr� l�i"
}
Say(" Xin m�i ch�n  ? ", getn(tab_Content), tab_Content);
end

function weapon()
local tab_Content = {
"Ki�m/kiem",
"�ao/dao",
"B�ng/bong",
"Th��ng/kick",
"Ch�y/chuy",
"Song �ao/songdao",
"Phi Ti�u/phitieu",
"Phi �ao/phidao",
"T� Ti�n/tutien",
"Tho�t."
}
Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function kiem()
AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function dao()
AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function bong()
AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function kick()
AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function chuy()
AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function songdao()
AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function phitieu()
AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function phidao()
AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function tutien()
AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1) 
end


function shirt()
local tab_Content = {
"Th�t B�o C� Sa/aothieulam",
"Ch�n V� Th�nh Y/aovodang",
"Thi�n Nh�n M�t Trang/aothiennhan",
"Gi�ng Sa B�o/sabao",
"���ng Ngh� Gi�p/dng",
"V�n L�u Quy T�ng Y/aocaibang",
"Tuy�n Long B�o/longbao",
"Long Ti�u ��o Y/daoy",
"C�u V� B�ch H� Trang/hotrang",
"Tr�m H��ng Sam/huongsam",
"T�ch L�ch Kim Ph�ng Gi�p/kimphung",
"V�n Ch�ng T� T�m Y/tamy",
"L�u Ti�n Qu�n/tienquan",
"Tho�t."
}
Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function aothieulam()
AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aovodang()
AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aothiennhan()
AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function sabao()
AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dng()
AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aocaibang()
AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longbao()
AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function daoy()
AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hotrang()
AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function huongsam()
AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimphung()
AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tamy()
AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tienquan()
AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hat()
local tab_Content = {
"T� L� M�o/lomao",
"Ng� L�o Qu�n/laoquan",
"Tu La Ph�t K�t/phatket",
"Th�ng Thi�n Ph�t Qu�n/phatquan",
"Y�m Nh�t Kh�i/nhatkhoi",
"Tr�ch Tinh Ho�n/tinhhoan",
"� T�m M�o/tammao",
"Quan �m Ph�t Qu�n/quanam",
"�m D��ng V� C�c Qu�n/amduong",
"Huy�n T� Di�n Tr�o/dientrao",
"Long Huy�t ��u Ho�n/longhuyet",
"Long L�n Kh�i/lankhoi",
"Thanh Tinh Thoa/tinhthoa",
"Kim Ph�ng Tri�n S�/triensi",
"Tho�t."
}
Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function lomao()
AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function laoquan()
AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatket()
AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatquan()
AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function nhatkhoi()
AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhhoan()
AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tammao()
AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function quanam()
AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end


function amduong()
AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dientrao()
AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longhuyet()
AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function lankhoi()
AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhthoa()
AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function triensi()
AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function glove()
local tab_Content = {
"Long Ph�ng Huy�t Ng�c Tr�c/ngoctrac",
"Thi�n T�m H� Uy�n/houyen",
"Tho�t."
}
Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function ngoctrac()
AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function houyen()
AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function belt()
local tab_Content = {
"Thi�n T�m Y�u ��i/thientamyeu",
"B�ch Kim Y�u ��i/bachkimyeudai",
"Tho�t."
}
Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function thientamyeu()
AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function bachkimyeudai()
AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function shoe()
local tab_Content = {
"C�u Ti�t X��ng V� Ngoa/cuutien",
"Thi�n T�m Ngoa/thientam",
"Kim L� H�i/kimlu",
"Phi Ph�ng Ngoa/phiphung",
"Tho�t."
}
Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function cuutien()
AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function thientam()
AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimlu()
AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phiphung()
AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end
function khoangth()
local tab_Content = {
"Huy�n tinh/huytin",
"Kho�ng th�ch/kdb",
"S�t th� gi�n 80./stg80",
"S�t th� gi�n 90./stg90",
"Th�y tinh/thuyti",
"Ph�c duy�n/phucd",
"Tho�t./no",
"Tr� l�i."
}
Say(" Ng��i mu�n l�y g� n�o? ", getn(tab_Content), tab_Content);
end;

function huytin() 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
AddItem(6,1,147,10,0,0,0) 
end


function kdb()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,0,0,0)
AddItem(6,1,154,1,1,0,0) 
AddItem(6,1,154,1,2,0,0) 
AddItem(6,1,154,1,3,0,0) 
AddItem(6,1,154,1,4,0,0) 
end


function stg80()
AddItem(6,1,400,80,0,0,0) 
AddItem(6,1,400,80,1,0,0) 
AddItem(6,1,400,80,2,0,0) 
AddItem(6,1,400,80,3,0,0) 
AddItem(6,1,400,80,4,0,0) 
end

function stg90()
AddItem(6,1,400,90,0,0,0) 
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 
AddItem(6,1,400,90,3,0,0) 
AddItem(6,1,400,90,4,0,0) 
end

function thuyti()
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
AddEventItem(239) 
end

function phucd()
AddItem(6,1,122,1,0,0,0)
AddItem(6,1,123,1,0,0,0) 
AddItem(6,1,124,1,0,0,0)
end

function bktl()
AddGoldItem(0, 11)
AddGoldItem(0, 6)
end
function bktv()
AddGoldItem(0, 16)
AddGoldItem(0, 21)
AddGoldItem(0, 26)
end
function bknm()
AddGoldItem(0, 31)
end
function bkty()
AddGoldItem(0, 46)
end
function bk5d()
AddGoldItem(0, 61)
end
function bkdm()
AddGoldItem(0, 71)
AddGoldItem(0, 76)
AddGoldItem(0, 81)
end
function bkcb()
AddGoldItem(0, 96)
end
function bktn()
AddGoldItem(0, 101)
end
function bkvd()
for i=4346,4355 do
AddPlatinaItem(3, i)
end
end
function bkcl()
AddGoldItem(0, 126)
end

function longtuong()
for i=5219,5227 do
AddGoldItem(0, i)
end
end

function matna1()
for i=4493,4523 do
AddGoldItem(0, i)
end
end
function matna2()
for i=4524,4554 do
AddGoldItem(0, i)
end
end
function matna3()
for i=4555,4585 do
AddGoldItem(0, i)
end
end
function matna4()
for i=4586,4616 do
AddGoldItem(0, i)
end
end
function matna5()
for i=4617,4630 do
AddGoldItem(0, i)
end
end

function skill150()
if check_faction() == 1 then
	Talk(1, "", "Ch�a gia nh�p m�n ph�i kh�ng th� nh�n Skill ���c.")
	return
end
mp = GetFaction()
if GetLevel() >= 150 then	
if GetTask(5007) == 0 then
if mp == "shaolin" then
AddMagic(1055,20)
AddMagic(1056,20)
AddMagic(1057,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Thi�u L�m. ")
elseif mp == "tianwang" then
AddMagic(1058,20)
AddMagic(1059,20)
AddMagic(1060,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Thi�n V��ng. ")
elseif mp == "tangmen" then
AddMagic(1069,20)
AddMagic(1070,20)
AddMagic(1071,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a ���ng M�n. ")
elseif mp == "wudu" then
AddMagic(1066,20)
AddMagic(1067,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Ng� ��c.")
elseif mp == "emei" then
AddMagic(1061,20)
AddMagic(1062,20)
AddMagic(1114,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Nga My.")
elseif mp == "cuiyan" then
AddMagic(1063,20)
AddMagic(1065,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Th�y Y�n.")
elseif mp == "gaibang" then
AddMagic(1073,20)
AddMagic(1074,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a C�i Bang.")
elseif mp == "tianren" then
AddMagic(1075,20)
AddMagic(1076,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a Thi�n Nh�n.")
elseif mp == "wudang" then
AddMagic(1078,20)
AddMagic(1079,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a V� �ang.")
elseif mp == "kunlun" then
AddMagic(1080,20)
AddMagic(1081,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Ch�c m�ng b�n �� h�c ���c tuy�t k� 150 c�a C�n L�n.")
end
else
Talk(1, "", "Ng��i �� nh�n r�i kh�ng th� nh�n n�a.")
end
else
Talk(1, "", "Luy�n ��n c�p 150 r�i h�y ��n t�m ta")
end
end


function thongtingamer() 
    local nNam = tonumber(GetLocalDate("%Y")); 
    local nThang = tonumber(GetLocalDate("%m")); 
    local nNgay = tonumber(GetLocalDate("%d")); 
    local nGio = tonumber(GetLocalDate("%H")); 
    local nPhut = tonumber(GetLocalDate("%M")); 
    local nGiay = tonumber(GetLocalDate("%S")); 
    local nW, nX, nY = GetWorldPos() 
    local nIdPlay = PlayerIndex 
    local tbSay = {}
			tinsert(tbSay,"Th�ng tin ng��i ch�i./Show")
			tinsert(tbSay,"Thao t�c l�n ng��i ch�i./luachonid1")
			tinsert(tbSay,"Tho�t/no")
			tinsert(tbSay,"Tr� l�i.")
		Say("Xin Ch�o <color=red>"..GetName().."<color>!\nT�a �� hi�n t�i: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color> \n<color>Index:           <color=green>"..nIdPlay.."<color>\nS� SHXT: <color=green>        "..GetTask(T_SonHaXaTac).."<color> m�nh.\nHi�n �ang C�:    <bclr=red><color=yellow>["..GetPlayerCount().."]<color><bclr> ng��i ch�i trong game.\n", getn(tbSay), tbSay)
end 

function Show() 
AskClientForNumber("Show1",1,1180,"Nh�p s� ti�n c�n chuy�n") 
end 


function Show1(num) 
local nNum = num + 20 
for i=num,nNum do 
    gmidx=PlayerIndex 
    PlayerIndex=i 
    TarName=GetName() 
    PlayerIndex=gmidx 
    Msg2Player("PlayIndex:<color=green> "..i.."<color> - T�n:<color=green> "..TarName..""); 
end 
end

function luachonid1() 
AskClientForNumber("one",0,5000,"Nh�p ID ng��i ch�i") 
end 

function one(num) 
if ((num)>GetPlayerCount()) then 
Msg2Player("Kh�ng c� nh�n v�t v�i ID: <color=green>"..num.."<color> ���c ch�n !!"); 
else 
SetTaskTemp(200,num) 
    gmName=GetName() 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    tk=GetAccount() 
    lev=GetLevel() 
    xp=GetExp() 
    cam=GetCamp() 
    fac=GetFaction() 
    cash=GetCash() 
    lif=GetExtPoint(1) 
    man=GetMana() 
    apo=GetEnergy() 
    spo=GetRestSP() 
    cr=GetColdR() 
    pr=GetTask(747) 
    phr=GetPhyR() 
    fr=GetFireR() 
    lr=GetLightR() 
    eng=GetEng() 
    dex=GetDex() 
    strg=GetStrg() 
    vit=GetVit() 
    w,x,y=GetWorldPos() 
    xinxi = GetInfo() 
    ObjName=GetName() 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n v�t t�n:<color=metal> "..ObjName.."<color>"); 
    local tbSay=  {}
			tinsert(tbSay,"T�ng c�p �� cho ng��i ch�i./tangcap1")
			tinsert(tbSay,"H� tr� ti�n ��ng./bufskillsgm1")
			tinsert(tbSay,"H� tr� ti�n v�n./themtienvan1")
			tinsert(tbSay,"Di chuy�n nh�n v�t v� BLH./move")
            tinsert(tbSay,"Add �i�m cho ng��i ch�i../buffpoint")
            tinsert(tbSay,"K�ch nh�n v�t./kick")
			tinsert(tbSay,"C�m Ch�t./camchat")
			tinsert(tbSay,"M� Ch�t./mochat")
            tinsert(tbSay,"Tho�t./no")
			tinsert(tbSay,"Tr� l�i.")            
    Say("T�i Kho�n:<color=green> "..tk.."<color>  - Nh�n V�t   :<color=green> "..ObjName.."<color>\nC�p ��   :<color=green> "..lev.."<color>           - Kinh nghi�m: <color=green>"..xp.."%<color>\nM�u      :<color=green> "..cam.."<color>             - M�n ph�i   :<color=green>"..fac.."<color>\nTi�n M�t :<color=green> "..(cash/10000).." v�n<color> - Ti�n ��ng  :<color=green>"..lif.." ��ng<color>\nV� tr�   : <color=blue>"..w.."<color>,<color=green>"..x.."<color>,<color=green>"..y.."<color>", getn(tbSay), tbSay)
    Msg2Player("Ng��i ch�i <color=cyan>"..xinxi) 
end 
end; 
function themtienvan1() 
AskClientForNumber("themtienvan",0,2000000000,"Nh�p s� ti�n c�n chuy�n") 
end 
function themtienvan(num) 
nNum = num/10000 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=green>"..gmName.."<color> �� th�m <color=metal>"..nNum.."<color> v�n l��ng cho b�n !"); 
Earn(num) 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c b�n th�m <color=metal>"..nNum.."<color> v�n l��ng th�nh c�ng"); 
end; 
function bufskillsgm1() 
AskClientForNumber("buffskillsgm",0,500,"s� l��ng ti�n ��ng") 
end 
function buffskillsgm(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=green>"..gmName.."<color> �� chuy�n <color=metal>"..num.."<color> ti�n ��ng cho b�n !"); 
AddStackItem(num,4,417,1,1,0,0,0) 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c b�n t�ng <color=metal>"..num.."<color> ti�n ��ng th�nh c�ng"); 
end;
function buffpoint() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=green>"..gmName.."<color> �� t�ng �i�m theo y�u c�u!"); 

PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c b�n t�ng �i�m theo y�u c�u th�nh c�ng"); 
end; 

function tangcap1() 
AskClientForNumber("tangcap",0,200,"c�p c�n t�ng") 
end 
function tangcap(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=green>"..gmName.."<color> �� t�ng <color=metal>"..num.."<color> c�p �� cho b�n !"); 
for i=1,num  do 
AddOwnExp(999999999999) 
end 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c b�n t�ng <color=metal>"..num.."<color> c�p �� th�nh c�ng"); 
end; 
function move() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
w,x,y=GetWorldPos() 
if (w~=53) then 
SetFightState(0) 
NewWorld(53,200*8,200*16) 
else 
SetPos(1630, 3255) 
end 
Msg2Player("Qu�n l� <color=green>"..gmName.."<color> �� di chuy�n b�n v� Ba L�ng Huy�n"); 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c b�n di chuy�n v� Ba L�ng Huy�n th�nh c�ng"); 
end 

function kick() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=green>"..gmName.."<color> �� kick k�t t�i kho�n cho b�n"); 
KickOutSelf() 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c b�n kick k�t t�i kho�n th�nh c�ng"); 
end; 

function camchat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(1) 
Msg2Player("B�n b� kh�a Ch�t tr�n m�i t�n s� !") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh�n V�t:<color=red> "..ObjName.."<color> �� B� C�m Chat Tr�n M�i T�n S� !",1) 
end 

function mochat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(0) 
Msg2Player("B�n ���c m� kh�a Ch�t tr�n m�i t�n s� !") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh�n V�t:<color=green> "..ObjName.."<color> ���c M� Chat Tr�n M�i T�n S� !",1)  
end