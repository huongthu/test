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
		szShowName = "ThiÕu L©m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709, 1055, 1056, 1057},
		tbEquip =
		{
			{
				szFaction = "ThiÕu L©m QuyÒn",
				nFirstEquipId = 4863,
				tbEquipName =
				{
					" Minh Ph­îng ch©u liªn", " Minh Ph­îng t¨ng m·o", " Minh Ph­îng th­îng giíi", " Minh Ph­îng hé uyÓn", " Minh Ph­îng yªu ®¸i",
					" Minh Ph­îng cµ sa ", " Minh Ph­îng triÒn thñ ", " Minh Ph­îng t¨ng hµi ", " Minh Ph­îng yªu trôy ", " Minh Ph­îng h¹ giíi ",
				},
			},
			{
				szFaction = "ThiÕu L©m C«n",
				nFirstEquipId = 4873,
				tbEquipName =
				{
					"Minh Ph­îng ch©u liªn", "Minh Ph­îng t¨ng m·o", "Minh Ph­îng th­îng giíi", "Minh Ph­îng hé uyÓn", "Minh Ph­îng yªu ®¸i",
					"Minh Ph­îng cµ sa", "Minh Ph­îng c«n", "Minh Ph­îng t¨ng hµi", "Minh Ph­îng yªu trôy", "Minh Ph­îng h¹ giíi", 
				},
			},
			{
				szFaction = "ThiÕu L©m §ao",
				nFirstEquipId = 4883,
				tbEquipName =
				{
					"Minh Ph­îng ch©u liªn", "Minh Ph­îng t¨ng m·o", "Minh Ph­îng th­îng giíi", "Minh Ph­îng hé uyÓn", "Minh Ph­îng yªu ®¸i",
					"Minh Ph­îng cµ sa", "Minh Ph­îng ®ao", "Minh Ph­îng t¨ng hµi", "Minh Ph­îng yªu trôy", "Minh Ph­îng h¹ giíi",
				},
			},
		},
	},
	[2] =
	{
		szShowName = "Thiªn V­¬ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708, 1058, 1059, 1060},
		tbEquip =
		{
			{
				szFaction = "Thiªn V­¬ng Chïy",
				nFirstEquipId = 4893,
				tbEquipName =
				{
					"Minh Ph­îng ®Þnh quang liªn", "Minh Ph­îng ®Þnh quang kh«i", "Minh Ph­îng ®Þnh quang th­îng giíi", "Minh Ph­îng ®Þnh quang thóc o¶n", "Minh Ph­îng ®Þnh quang yªu ®¸i",
					"Minh Ph­îng ®Þnh quang kh¶i", "Minh Ph­îng ®Þnh quang chïy", "Minh Ph­îng ®Þnh quang ngoa", "Minh Ph­îng ®Þnh quang béi", "Minh Ph­îng ®Þnh quang h¹ giíi",
				},
			},
			{
				szFaction = "Thiªn V­¬ng Th­¬ng",
				nFirstEquipId = 4903,
				tbEquipName =
				{
					"Minh Ph­îng ngù phong liªn", "Minh Ph­îng ngù phong kh«i", "Minh Ph­îng ngù phong th­îng giíi", "Minh Ph­îng ngù phong thóc o¶n", "Minh Ph­îng ngù phong yªu ®¸i",
					"Minh Ph­îng ngù phong kh¶i", "Minh Ph­îng ngù phong th­¬ng", "Minh Ph­îng ngù phong ngoa", "Minh Ph­îng ngù phong béi", "Minh Ph­îng ngù phong h¹ giíi",
				},
			},
			{
				szFaction = "Thiªn V­¬ng §ao",
				nFirstEquipId = 4913,
				tbEquipName =
				{
					"Minh Ph­îng biÓu phong liªn", "Minh Ph­îng biÓu phong kh«i", "Minh Ph­îng biÓu phong th­îng giíi", "Minh Ph­îng biÓu phong thóc o¶n", "Minh Ph­îng biÓu phong yªu ®¸i",
					"Minh Ph­îng biÓu phong kh¶i", "Minh Ph­îng biÓu phong ®ao", "Minh Ph­îng biÓu phong ngoa", "Minh Ph­îng biÓu phong béi", "Minh Ph­îng biÓu phong h¹ giíi",
				},
			},
		},
	},
	[3] =
	{
		szShowName = "§­êng M«n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710, 1069, 1070, 1071},
		tbEquip =
		{
			{
				szFaction = "Phi §ao §­êng M«n",
				nFirstEquipId = 4983,
				tbEquipName =
				{
					"Minh Ph­îng nÆc ¶nh h¹ng liªn", "Minh Ph­îng nÆc ¶nh qu¸n", "Minh Ph­îng nÆc ¶nh th­îng giíi", "Minh Ph­îng nÆc ¶nh hé uyÓn", "Minh Ph­îng nÆc ¶nh triÒn yªu",
					"Minh Ph­îng nÆc ¶nh gi¸p", "Minh Ph­îng nÆc ¶nh phi ®ao", "Minh Ph­îng nÆc ¶nh ngoa", "Minh Ph­îng nÆc ¶nh yªu trôy", "Minh Ph­îng nÆc ¶nh h¹ giíi",
				},
			},
			{
				szFaction = "Ná §­êng M«n",
				nFirstEquipId = 4993,
				tbEquipName =
				{
					"Minh Ph­îng cùc quang h¹ng liªn", "Minh Ph­îng cùc quang qu¸n", "Minh Ph­îng cùc quang th­îng giíi", "Minh Ph­îng cùc quang hé uyÓn", "Minh Ph­îng cùc quang triÒn yªu",
					"Minh Ph­îng cùc quang gi¸p", "Minh Ph­îng cùc quang ná ", "Minh Ph­îng cùc quang ngoa ", "Minh Ph­îng cùc quang yªu trôy ", "Minh Ph­îng cùc quang h¹ giíi ",
				},
			},
			{
				szFaction = "Phi Tiªu §­êng M«n",
				nFirstEquipId = 5003,
				tbEquipName =
				{
					" Minh Ph­îng th­íc kim h¹ng liªn ", " Minh Ph­îng th­íc kim qu¸n ", " Minh Ph­îng th­íc kim th­îng giíi ", " Minh Ph­îng th­íc kim hé uyÓn ", " Minh Ph­îng th­íc kim triÒn yªu ",
					" Minh Ph­îng th­íc kim gi¸p ", " Minh Ph­îng th­íc kim phi tiªu ", " Minh Ph­îng th­íc kim ngoa ", " Minh Ph­îng th­íc kim yªu trôy ", " Minh Ph­îng th­íc kim h¹ giíi ",
				},
			},
		},
	},
	[4] =
	{
		szShowName = "Ngò §éc Gi¸o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711, 1066, 1067},
		tbEquip =
		{
			{
				szFaction = "Ngò §éc Ch­ëng",
				nFirstEquipId = 4963,
				tbEquipName =
				{
					" Minh Ph­îng ®éc sa h¹ng liªn ", " H¹ch Hæ ®éc sa ph¸t ®¸i ", " Minh Ph­îng ®éc sa th­îng giíi ", " Minh Ph­îng ®éc sa hé uyÓn ", " Minh Ph­îng ®éc sa yªu ®¸i ",
					" Minh Ph­îng ®éc sa bÝ trang ", " Minh Ph­îng ®éc sa triÒn thñ ", " Minh Ph­îng ®éc sa ngoa ", " Minh Ph­îng ®éc sa yªu trôy ", " Minh Ph­îng ®éc sa h¹ giíi ",
				},
			},
			{
				szFaction = "Ngò §éc §ao",
				nFirstEquipId = 4973,
				tbEquipName =
				{
					" Minh Ph­îng u linh h¹ng liªn ", " H¹ch Hæ u linh ph¸t ®¸i ", " Minh Ph­îng u linh th­îng giíi ", " Minh Ph­îng u linh hé uyÓn ", " Minh Ph­îng u linh yªu ®¸i ",
					" Minh Ph­îng u linh bÝ trang ", " Minh Ph­îng u linh ®ao ", " Minh Ph­îng u linh ngoa ", " Minh Ph­îng u linh yªu trôy ", " Minh Ph­îng u linh h¹ giíi ",
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
				szFaction = "Nga Mi KiÕm",
				nFirstEquipId = 4923,
				tbEquipName =
				{
					"Minh Ph­îng l­u v©n ch©u liªn", "Minh Ph­îng l­u v©n ph¸t ®¸i", "Minh Ph­îng l­u v©n th­îng giíi", "Minh Ph­îng l­u v©n hé uyÓn", "Minh Ph­îng l­u v©n yªu ®¸i ",
					"Minh Ph­îng l­u v©n sam", "Minh Ph­îng l­u v©n kiÕm", "Minh Ph­îng l­u v©n ngoa", "Minh Ph­îng l­u v©n béi ", "Minh Ph­îng l­u v©n h¹ giíi ",
				},
			},
			{
				szFaction = "Nga Mi Ch­ëng",
				nFirstEquipId = 4933,
				tbEquipName =
				{
					"Minh Ph­îng hµn ngäc ch©u liªn ", "Minh Ph­îng hµn ngäc ph¸t ®¸i", "Minh Ph­îng hµn ngäc th­îng giíi", "Minh Ph­îng hµn ngäc hé uyÓn", "Minh Ph­îng hµn ngäc yªu ®¸i",
					"Minh Ph­îng hµn ngäc sam", "Minh Ph­îng hµn ngäc triÒn thñ ", "Minh Ph­îng hµn ngäc ngoa ", "Minh Ph­îng hµn ngäc béi ", "Minh Ph­îng hµn ngäc h¹ giíi ",
				},
			},
		},
	},
	[6] =
	{
		szShowName = "Thóy Yªn",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713, 1063, 1065},
		tbEquip =
		{
			{
				szFaction = "Thóy Yªn §ao (Ngo¹i)",
				nFirstEquipId = 4943,
				tbEquipName =
				{
					"Minh Ph­îng hång nhan ch©u liªn ", "Minh Ph­îng hång nhan ph¸t ®¸i", "Minh Ph­îng hång nhan th­îng giíi", "Minh Ph­îng hång nhan hé uyÓn", "Minh Ph­îng hång nhan yªu ®¸i",
					"Minh Ph­îng hång nhan sam", "Minh Ph­îng hång nhan ®ao ", "Minh Ph­îng hång nhan ngoa ", "Minh Ph­îng hång nhan béi ", "Minh Ph­îng hång nhan h¹ giíi ",
				},
			},
			{
				szFaction = "Thóy Yªn Song §ao (Néi)",
				nFirstEquipId = 4953,
				tbEquipName =
				{
					"Minh Ph­îng ¶o th¸i ch©u liªn ", "Minh Ph­îng ¶o th¸i ph¸t ®¸i", "Minh Ph­îng ¶o th¸i th­îng giíi", "Minh Ph­îng ¶o th¸i hé uyÓn", "Minh Ph­îng ¶o th¸i yªu ®¸i",
					"Minh Ph­îng ¶o th¸i sam", "Minh Ph­îng ¶o th¸i ®ao ", "Minh Ph­îng ¶o th¸i ngoa ", "Minh Ph­îng ¶o th¸i béi ", "Minh Ph­îng ¶o th¸i h¹ giíi ",
				},
			},
		},
	},
	[7] =
	{
		szShowName = "C¸i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714, 1073, 1074},
		tbEquip =
		{
			{
				szFaction = "C¸i Bang Ch­ëng",
				nFirstEquipId = 5013,
				tbEquipName =
				{
					" Minh Ph­îng hé ph¸p h¹ng liªn", " Minh Ph­îng hé ph¸p ®Çu hoµn", " Minh Ph­îng hé ph¸p th­îng giíi ", " Minh Ph­îng hé ph¸p hé uyÓn ", " Minh Ph­îng hé ph¸p thóc yªu",
					" Minh Ph­îng hé ph¸p c¸i y", " Minh Ph­îng hé ph¸p triÒn thñ ", " Minh Ph­îng hé ph¸p ngoa ", "Minh Ph­îng hé ph¸p béi ", " Minh Ph­îng hé ph¸p h¹ giíi ",
				},
			},
			{
				szFaction = "C¸i Bang Bæng",
				nFirstEquipId = 5023,
				tbEquipName =
				{
					"Minh Ph­îng trõng giíi h¹ng liªn", "Minh Ph­îng trõng giíi ®Çu hoµn", "Minh Ph­îng trõng giíi th­îng giíi ", "Minh Ph­îng trõng giíi hé uyÓn", "Minh Ph­îng trõng giíi thóc yªu",
					"Minh Ph­îng trõng giíi c¸i y", "Minh Ph­îng trõng giíi tr­îng", "Minh Ph­îng trõng giíi ngoa", "Minh Ph­îng trõng giíi béi", "Minh Ph­îng trõng giíi h¹ giíi ",
				},
			},
		},
	},
	[8] =
	{
		szShowName = "Thiªn NhÉn Gi¸o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715, 1075, 1076},
		tbEquip =
		{
			{
				szFaction = "ChiÕn NhÉn",
				nFirstEquipId = 5033,
				tbEquipName =
				{
					"Minh Ph­îng xÝch minh h¹ng liªn", "H¹ch Hæ xÝch minh kh«i", "Minh Ph­îng xÝch minh th­îng giíi", "Minh Ph­îng xÝch minh hé o¶n", "Minh Ph­îng xÝch minh yªu ®¸i",
					"Minh Ph­îng xÝch minh gi¸p", "Minh Ph­îng xÝch minh th­¬ng", "Minh Ph­îng xÝch minh ngoa", "Minh Ph­îng xÝch minh béi", "Minh Ph­îng xÝch minh h¹ giíi",
				},
			},
			{
				szFaction = "Ma NhÉn",
				nFirstEquipId = 5043,
				tbEquipName =
				{
					"Minh Ph­îng s¸t viªm h¹ng liªn", "H¹ch Hæ s¸t viªm kh«i", "Minh Ph­îng s¸t viªm th­îng giíi", "Minh Ph­îng s¸t viªm hé o¶n", "Minh Ph­îng s¸t viªm yªu ®¸i",
					"Minh Ph­îng s¸t viªm gi¸p", "Minh Ph­îng s¸t viªm ®ao", "Minh Ph­îng s¸t viªm ngoa", "Minh Ph­îng s¸t viªm béi", "Minh Ph­îng s¸t viªm h¹ giíi",
				},
			},
		},
	},
	[9] =
	{
		szShowName = "Vâ §ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716, 1078, 1079},
		tbEquip =
		{
			{
				szFaction = "Vâ §ang KhÝ",
				nFirstEquipId = 5053,
				tbEquipName =
				{
					" Minh Ph­îng tiªn ©m phï ", " Minh Ph­îng tiªn ©m qu¸n", " Minh Ph­îng tiªn ©m th­îng giíi ", " Minh Ph­îng tiªn ©m tô ", " Minh Ph­îng tiªn ©m ph¸p ®¸i ",
					" Minh Ph­îng tiªn ©m ®¹o bµo ", " Minh Ph­îng tiªn ©m kiÕm ", " Minh Ph­îng tiªn ©m ngoa ", " Minh Ph­îng tiªn ©m béi ", " Minh Ph­îng tiªn ©m h¹ giíi ",
				},
			},
			{
				szFaction = "Vâ §ang KiÕm",
				nFirstEquipId = 5063,
				tbEquipName =
				{
					" Minh Ph­îng ®¹o minh phï ", " Minh Ph­îng ®¹o minh qu¸n ", " Minh Ph­îng ®¹o minh th­îng giíi ", " Minh Ph­îng ®¹o minh tô ", " Minh Ph­îng ®¹o minh ph¸p ®¸i ",
					" Minh Ph­îng ®¹o minh ®¹o bµo ", " Minh Ph­îng ®¹o minh kiÕm ", " Minh Ph­îng ®¹o minh ngoa ", " Minh Ph­îng ®¹o minh béi ", " Minh Ph­îng ®¹o minh h¹ giíi ",
				},
			},
		},
	},
	[10] =
	{
		szShowName = "C«n L«n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717, 1080, 1081},
		tbEquip =
		{
			{
				szFaction = "C«n L«n §ao",
				nFirstEquipId = 5073,
				tbEquipName =
				{
					"Minh Ph­îng thiªn canh h¹ng liªn ", "Minh Ph­îng thiªn canh ®¹o qu¸n", "Minh Ph­îng thiªn canh th­îng giíi", "Minh Ph­îng thiªn canh hé uyÓn", "Minh Ph­îng thiªn canh ph¸p ®¸i",
					"Minh Ph­îng thiªn canh ®¹o bµo", "Minh Ph­îng thiªn canh ®ao", "Minh Ph­îng thiªn canh ngoa", "Minh Ph­îng thiªn canh béi", "Minh Ph­îng thiªn canh h¹ giíi",
				},
			},
			{
				szFaction = "C«n L«n KiÕm",
				nFirstEquipId = 5083,
				tbEquipName =
				{
					"Minh Ph­îng ng¹o s­¬ng h¹ng liªn ", "Minh Ph­îng ng¹o s­¬ng ®¹o qu¸n", "Minh Ph­îng ng¹o s­¬ng th­îng giíi", "Minh Ph­îng ng¹o s­¬ng hé uyÓn", "Minh Ph­îng ng¹o s­¬ng ph¸p ®¸i",
					"Minh Ph­îng ng¹o s­¬ng ®¹o bµo", "Minh Ph­îng ng¹o s­¬ng kiÕm ", "Minh Ph­îng ng¹o s­¬ng ngoa ", "Minh Ph­îng ng¹o s­¬ng béi", "Minh Ph­îng ng¹o s­¬ng h¹ giíi",
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
local tszTitle = "Chµo mõng b¹n ®· tham gia hÖ thèng <color=yellow>Bang Héi<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,5,"NhËn ®iÒu kiÖn t¹o bang héi./dmcreatetong","Gia nhËp bang héi./dmjointong","T¹o bang héi./dmcreateit","Tho¸t./no","Trë l¹i.")
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
Msg2Player("<color=yellow>Ng­¬i ®· héi ®ñ tÊt c¶ ®iªu kiÖn ®Ó t¹o Bang Héi!<color>")
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
Msg2Player("<color=yellow>Gia nhËp Bang héi thµnh c«ng!<color>")
else
end
end

function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("Kiªm hiÖp ch­ëng m«n nh©n:Khai s¸ng bang héi, më réng b¸ nghiÖp." ,2,"B¾t ®Çu dùng bang/Direct_CreateTong","§îi ta mét chót/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
		Talk(6,"create_pay", "Ng­êi ch¬i: Kiªm hiÖp ch­ëng m«n nh©n, xin hái ta ph¶i lµm nh­ thÕ nµo míi ca thÓ khai t«ng lËp ph¸i trë thµnh Bang chñ ®©y?", "Kiªm hiÖp ch­ëng m«n nh©n: §Çu tiªn ng­¬i ph¶i cã ®ñ n¨ng lùc l·nh ®¹o, cã 16 ng­êi cïng chÝ h­íng cïng ng­¬i lËp bang, tr¶i qua 3 ngµy Kh¶o NghiÖm Kú ", "Ch­ëng m«n nh©n:  NÕu trong 3 ngµy cã ng­êi rêi bang th× néi trong 3 ngµy ®ã ng­¬i ph¶i t×m ng­êi kh¸c thay thÕ.", "Ch­ëng m«n nh©n:  Ng­¬i ph¶i cã ®ñ tµi l·nh ®¹o vµ tÝn vËt ®ã lµ Nh¹c V­¬ng KiÕm", "Ng­êi ch¬i: Nh¹c V­¬ng Kiªm ? Ng­êi nãi lµ thanh kiªm nµy µ ? ", "Kiªm hiÖp ch­ëng m«n nh©n : Th× ra lµ ng­¬i ®· cã nã... Kh«ng tÖ, qu¶ nhiªn tuæi trÎ tµi cao!!! ")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Kiªm hiÖp ch­ëng m«n nh©n: Nªu nh­ muèn thµnh lËp bang héi, ng­¬i cã thÓ v× nã bá ra 1 l­îng lín thêi gian, søc lùc cïng t©m huyÕt, kh«ng thÓ n÷a ®­êng hñy bá." )
		else
			Talk(6,"", "Kiªm hiÖp ch­ëng m«n nh©n:  Ng­¬i muèn hái ®iÒu kiÖn lËp bang µ? §Ó ta nãi cho ng­¬i râ.", "Kiªm hiÖp ch­ëng m«n nh©n: ®Çu tiªn ph¶i xuÊt x­,  tiªp theo ng­¬i kh«ng thÓ ë bÊt kú bang héi nµo kh¸c, ng­¬i nhÊt ®inh ph¶i cã danh väng giang hå, cuèi cïng lµ tµi l·nh ®¹o ph¶i h¬n 30 cÊp.", "Kiªm hiÖp ch­ëng m«n nh©n: Sau ®ã ®i chiÕn tr­êng t×m mét thanh Nh¹c V­¬ng Kiªm lµm bang chñ tÝn vËt lµ ®­îc råi.")
		end
	end
end

function create_pay()
	Say("Kiªm hiÖp ch­ëng m«n nh©n: Ng­¬i cÇn lÖ phi lµ 100 v¹n l­îng b¹c." ,2,"Kh«ng thµnh vÊn ®ª, ta cã ®em 100v l­îng ®©y! /create_pay_yes","Ta kh«ng ®em ®ñ tiªn råi. /create_pay_no")
end
function create_pay_yes()
	if (GetCash() >= 1000000) then
		Pay(1000000)		
		DelItem(195)		
		SetTask(99,1)				
		Direct_CreateTong()		
	else
		Talk(1,"", "Kiªm hiÖp ch­ëng m«n nh©n: ViÖc duy tr× bang héi rÊt tèn kÐm, ng­êi ph¶i cè g¾ng cïng mäi ng­êi tÝch gãp ®Ó Bang Héi ®­îc giµu m¹nh. ")	end
end

function Direct_CreateTong()
	CreateTong(1)				
end

function main()
dofile("script/global/lbadmin.lua")
dofile("script/global/hotrothem.lua")
dofile("script/global/dohoangkimmax.lua")
local tbSay = {}
tinsert(tbSay,"Qu¶n Lý Gamer./thongtingamer")
tinsert(tbSay,"Shop/yes")
tinsert(tbSay,"Chøc N¨ng Bang Héi/dmcreattongtest")
tinsert(tbSay,"N©ng §iÓm Kinh NghiÖm./diemexp")
tinsert(tbSay,"NhËn §iÓm - TiÒn - Vßng S¸ng./hotro")
tinsert(tbSay,"NhËn Skill./nhanskill")
tinsert(tbSay,"NhËn VËt PhÈm Trïng Sinh./bacdautst")
tinsert(tbSay,"Hoa S¬n Ph¸i./hoasonphai")
tinsert(tbSay,"Ta Muèn LÊy VËt PhÈm - Giíi ChØ./show_item")
tinsert(tbSay,"Thay §æi Tr¹ng Th¸i./trangthai")
tinsert(tbSay,"Trang BÞ HiÕm - VËt phÈm kh¸c./fifong")
tinsert(tbSay,"NhËn Trang BÞ Maxop./dohoangkimmax")
tinsert(tbSay,"NhËn Trang BÞ./cucphkhac")
tinsert(tbSay,"Hoµng Kim M«n Ph¸i - §å Xanh - §å TÝm./hkmpdoxanh")
tinsert(tbSay,"LÊy Ngùa./layngua")
--tinsert(tbSay,"Chän X­ng HiÖu./xunghieu")
tinsert(tbSay,"Tho¸t/no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn !", getn(tbSay), tbSay)
Say("Xin chµo <color=yellow>"..GetName().."<color>..! <enter>M×nh lµ<color=green> Th«ng Hên Pro,<color> m×nh sÏ gióp b¹n test game nµy.!<enter>Xin mêi b¹n chän<color=red> chøc n¨ng ®Ó test",getn(tbSay), tbSay)
return 1
end

function hoasonphai()
	local szTitle = "<npc>LÇn nµy ph¸i <color=blue>Hoa S¬n<color> ta t¸i suÊt,  giang hå l¹i thªm nhiÒu biÕn ®éng"
	local tbOpt =
	{
		{"Hái chuyÖn", noi},
		{"Tho¸t"},
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
tinsert(tbSay,"N©ng lªn 1 cÊp ./lv1")
tinsert(tbSay,"N©ng lªn 10 cÊp./lvup10")
tinsert(tbSay,"N©ng lªn cÊp 150./level_up_to150")
tinsert(tbSay,"N©ng lªn cÊp 180./level_up_to180")
tinsert(tbSay,"N©ng lªn cÊp 195./level_up_to195")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y cÊp ®é mµ b¹n muèn !", getn(tbSay), tbSay)
end

function xunghieu()
local tbSay = {}
tinsert(tbSay,"ThiÕu L©m ./xunghieu1")
tinsert(tbSay,"Thiªn V­¬ng./xunghieu2")
tinsert(tbSay,"Ngò §éc./xunghieu3")
tinsert(tbSay,"§­êng M«n./xunghieu4")
tinsert(tbSay,"Nga Mi./xunghieu5")
tinsert(tbSay,"Thóy Yªn./xunghieu6")
tinsert(tbSay,"C¸i Bang./xunghieu7")
tinsert(tbSay,"Thiªn NhÉn./xunghieu8")
tinsert(tbSay,"Vâ §ang./xunghieu9")
tinsert(tbSay,"C«n L«n./xunghieu10")
tinsert(tbSay,"Hoa S¬n./xunghieu11")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän M«n Ph¸i  !", getn(tbSay), tbSay)
end

function xunghieu1()
SetRank(72)
Msg2Player("B¹n ®­îc x­ng hiÖu: Hé Ph¸p Tr­ëng L·o.")
end
function xunghieu2()
SetRank(69)
Msg2Player("B¹n ®­îc x­ng hiÖu: K×nh Thiªn Nguyªn So¸i.")
end
function xunghieu3()
SetRank(80)
Msg2Player("B¹n ®­îc x­ng hiÖu: U Minh Quû V­¬ng.")
end
function xunghieu4()
SetRank(76)
Msg2Player("B¹n ®­îc x­ng hiÖu: Lôc C¸c Tr­ëng L·o.")
end
function xunghieu5()
SetRank(64)
Msg2Player("B¹n ®­îc x­ng hiÖu: Kim §Ønh Th¸nh N÷.")
end
function xunghieu6()
SetRank(67)
Msg2Player("B¹n ®­îc x­ng hiÖu: Hoa ThÇn.")
end
function xunghieu7()
SetRank(78)
Msg2Player("B¹n ®­îc x­ng hiÖu: Cöu §¹i Tr­ëng L·o.")
end
function xunghieu8()
SetRank(81)
Msg2Player("B¹n ®­îc x­ng hiÖu: Th¸nh Gi¸o Tr­ëng L·o.")
end
function xunghieu9()
SetRank(73)
Msg2Player("B¹n ®­îc x­ng hiÖu: HuyÒn Vâ Ch©n Nh©n.")
end
function xunghieu10()
SetRank(75)
Msg2Player("B¹n ®­îc x­ng hiÖu: Hé Ph¸i Ch©n Qu©n.")
end
function xunghieu11()
SetRank(89)
Msg2Player("B¹n ®­îc x­ng hiÖu: V« L­îng Thiªn T«n.")
end
function bacdautst()
local tbSay = {}
tinsert(tbSay,"NhËn B¾c §Èu TST C¬ Së Thiªn./bacdau1")
tinsert(tbSay,"NhËn B¾c §Èu TST §¹i Thõa T©m Ph¸p./bacdau2")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin chµo <color=yellow>"..GetName().."<color>, Xin h·y lùa chän vËt phÈm b¹n cÇn...!", getn(tbSay), tbSay)
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
			Talk(1, "", "Ng­¬i ®· ®¹t cÊp 150 råi.")
		else
			Talk(1, "", "§i chuyÓn sinh tr­íc ®i råi trë l¹i th¨ng cÊp.")
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
			Talk(1, "", "Ng­¬i ®· ®¹t cÊp 180 råi.")
		else
			Talk(1, "", "§i chuyÓn sinh tr­íc ®i råi trë l¹i th¨ng cÊp.")
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
			Talk(1, "", "Ng­¬i ®· ®¹t cÊp 195 råi.")
		else
			Talk(1, "", "§i chuyÓn sinh tr­íc ®i råi trë l¹i th¨ng cÊp.")
		end
		return
	end
	local nAddLevel = 195 - nCurLevel
	ST_LevelUp(nAddLevel)
end

function trangthai()
local tbSay = {}
tinsert(tbSay,"ChÝnh Ph¸i./mauvang")
tinsert(tbSay,"Tµ Ph¸i./mautim")
tinsert(tbSay,"Trung LËp./mauxanh")
tinsert(tbSay,"S¸t Thñ./maudo")
tinsert(tbSay,"LuyÖn C«ng./mautrang")
tinsert(tbSay,"Admin./mauadmin")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän tr¹ng th¸i mµ b¹n muèn !", getn(tbSay), tbSay)
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
tinsert(tbSay,"Vµo Ph¸i Vµ Häc Skill 150./choose_faction")
tinsert(tbSay,"NhËn Skill 180./nhanskill180")
tinsert(tbSay,"NhËn Skill 150./skill150")
tinsert(tbSay,"Kü N¨ng 120./kynang120")
tinsert(tbSay,"Kü N¨ng 90./kynang90")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Skill  !", getn(tbSay), tbSay)
end

function no()
end
local tbFreeItem =
{
{szName="Håi Thiªn T¸i T¹o CÈm Nang.", tbProp={6,1,1781,1,0,0}, tbParam={60}},
{szName="Cµn Kh«n Song TuyÖt Béi.", tbProp={6,1,2219,0,0,0}},
{szName="Nh¹c V­¬ng KiÕm.", tbProp={6,1,2340,0,0,0}},
{szName="Qu¶ Huy Hoµng Cao CÊp.", tbProp={6,1,1075,1,0,0}},
{szName="ThËp Toµn §¹i Bæ.", tbProp={6,1,1399,1,0,0}},
{szName="Viªm §ª §å B¶o.", tbProp={6,1,2805,1,0,0}},
{szName="Tèng Kim BÝ B¶o.", tbProp={6,1,2741,1,0,0}},
{szName="§¹i Lùc Hoµn LÔ Hép.", tbProp={6,1,2517,1,0,0}},
{szName="H·n HuyÕt Long C©u.", tbProp={0,10,18,1,0,0}, nWidth=2, nHeigth=3},
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
Say("Kh«ng cã m«n ph¸i mµ ®åi nhËn skill thÊt truyÒn, ta kh«ng cã thêi gian ®ïa víi ng­¬i", 0)
return
else
for i=1,10 do
if (nFaction==i) then
if (HaveMagic(SKILL_180[i]) == -1) then
AddMagic(SKILL_180[i],20)
Say("B¹n häc ®­îc kü n¨ng cÊp 180 <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
else
Say("Ng­¬i ®· cã kü n¨ng thÊt truyÒn råi, ®õng tham lam", 0)
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
"ThiÕu L©m./bktl",
"Thiªn V­¬ng./bktv",
"§­êng M«n./bkdm",
"Ngò §éc./bk5d",
"Nga Mi./bknm",
"Thuý Yªn./bkty",
"C¸i Bang./bkcb",
"Thiªn NhÉn./bktn",
"Vâ §ang./bkvd",
"C«n L«n./bkcl",
"Tho¸t./no",
"Trë l¹i."
}
Say("Xin mêi <color=yellow>"..GetName().."<color>, H·y chän trang bÞ mµ b¹n muèn !", getn(tbSay), tbSay)
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
"Trang BÞ Hoµng Kim M«n Ph¸i./sethoangkimmonphai",
"Vò KhÝ HKMP./bachkim",
"LÊy §å Xanh./laydoxanh",
"LÊy §å TÝm./dotim1",
"Bé An Bang./anbang",
"[Cùc PhÈm] An Bang./anbang1",
"[Hoµn Mü] An Bang./anbang2",
"[Liªn §Êu] An Bang./anbang3",
"Th«i./no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän trang bÞ mµ b¹n muèn !", getn(tab_Content), tab_Content)
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
szName = "D©y chuyÒn",
tbEquip =
{
{"Toµn th¹ch h¹ng liªn",0,4,0},
{"Lôc PhØ Thóy Hé Th©n phï ",0,4,1},
}
},
[2]=
{
szName = "¸o gi¸p",
tbEquip =
{
{"ThÊt B¶o Cµ Sa",0,2,0},
{"Ch©n Vò Th¸nh Y",0,2,1},
{"Thiªn NhÉn MËt Trang",0,2,2},
{"Gi¸ng Sa Bµo",0,2,3},
{"§­êng Nghª gi¸p",0,2,4},
{"V¹n L­u Quy T«ng Y",0,2,5},
{"TuyÒn Long bµo",0,2,6},
{"Long Tiªu ®¹o Y",0,2,8},
{"Cöu VÜ B¹ch Hå trang",0,2,9},
{"TrÇm H­¬ng sam",0,2,10},
{"TÝch LÞch Kim Phông gi¸p",0,2,11},
{"V¹n Chóng TÒ T©m Y",0,2,12},
{"L­u Tiªn QuÇn",0,2,13},
}
},
[3]=
{
szName = "§ai l­ng",
tbEquip =
{
{"Thiªn Tµm Yªu §¸i",0,6,0},
{"B¹ch Kim Yªu §¸i",0,6,1},
}
},
[4]=
{
szName = "Giµy",
tbEquip =
{
{"Cöu TiÕt X­¬ng VÜ Ngoa",0,5,0},
{"Thiªn Tµm Ngoa",0,5,1},
{"Kim Lò hµi",0,5,2},
{"Phi Phông Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao tay",
tbEquip =
{
{"Long Phông HuyÕt Ngäc Tr¹c",0,8,0},
{"Thiªn Tµm Hé UyÓn",0,8,1},
}
},
[6]=
{
szName = "Nãn",
tbEquip =
{
{"Tú L« m·o",0,7,0},
{"Ngò l·o qu¸n",0,7,1},
{"Tu La Ph¸t kÕt",0,7,2},
{"Th«ng Thiªn Ph¸t Qu¸n",0,7,3},
{"YÓm NhËt kh«i",0,7,4},
{"TrÝch Tinh hoµn",0,7,5},
{"¤ Tµm M·o",0,7,6},
{"Quan ¢m Ph¸t Qu¸n",0,7,7},
{"¢m D­¬ng V« Cùc qu¸n",0,7,8},
{"HuyÒn Tª DiÖn Tr¸o",0,7,9},
{"Long HuyÕt §Çu hoµn",0,7,10},
{"Long L©n Kh«i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Phông TriÓn SÝ ",0,7,13},
}
},
[7]=
{
szName = "Vò khÝ c©n chiÕn",
tbEquip =
{
{"HuyÒn ThiÕt KiÕm",0,0,0},
{"§¹i Phong §ao",0,0,1},
{"Kim C« Bæng",0,0,2},
{"Ph¸ Thiªn KÝch",0,0,3},
{"Ph¸ Thiªn chïy",0,0,4},
{"Th«n NhËt Tr·m",0,0,5},
}
},
[8]=
{
szName = "Ngäc béi",
tbEquip =
{
{"Long Tiªn H­¬ng Nang",0,9,0},
{"D­¬ng Chi B¹ch Ngäc",0,9,1},
}
},
[9]=
{
szName = "Vò khÝ tÇm xa",
tbEquip =
{
{"B¸ V­¬ng Tiªu",0,1,0},
{"To¸i NguyÖt §ao",0,1,1},
{"Khæng T­íc Linh",0,1,2},
}
},
[10]=
{
szName = "NhÉn",
tbEquip =
{
{"Toµn Th¹ch Giíi ChØ ",0,3,0},
}
},
}
function laydoxanh()
local tbOpt = {}
for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"Tho¸t."})
CreateNewSayEx("<npc>Xin mêi lùa chän trang bÞ:", tbOpt)
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"Tho¸t."})
local szTitle = format("<npc>Xin mêi lùa chän trang bÞ:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
local tbOpt = {}
tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
tinsert(tbOpt, {"Méc", laydoxanh3, {nIndex, nType, 1}})
tinsert(tbOpt, {"Thñy", laydoxanh3, {nIndex, nType, 2}})
tinsert(tbOpt, {"Háa", laydoxanh3, {nIndex, nType, 3}})
tinsert(tbOpt, {"Thæ ", laydoxanh3, {nIndex, nType, 4}})


tinsert(tbOpt, {"Tho¸t."})
local szTitle = format("<npc>Chän hÖ:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 60, "Sè l­îng:", {laydoxanh4, {nIndex, nType, nSeries}})
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
for i=1,nCount do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10) end
end

function hotro()
local tab_Content =
{
"Vßng s¸ng danh hiÖu./DanhHieu",
"NhËn 5 viªn KNB./cszb",
"LÊy 100 tiÒn ®ång./tiendong",
"TiÒn./tien",
"TÈy ®iÓm./clear_attibute_point",
"Danh väng,Phóc duyªn./danhvongphucduyen",
"Tµi l·nh ®¹o./lanhdao",
"§iÓm cèng hiÕn./conghien",
"§iÓm kü n¨ng./pointkynang",
"§iÓm tiÒm n¨ng./pointtiemnang",
"NhËn LB gäi boss./gm_functionboss",
"Th«i./no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn !", getn(tab_Content), tab_Content)
end
function pointkynang()
AddMagicPoint(200)
Msg2Player("B¹n nhËn ®­îc 200 ®iÓm Kü N¨ng.")
end;

function pointtiemnang()
AddProp(1000)
Msg2Player("B¹n nhËn ®­îc 1000 ®iÓm TiÒm N¨ng.")
end;


function lanhdao()
AddLeadExp(20000)
end

function tien()
Earn(1000000000)
Msg2Player("B¹n nhËn ®­îc 1000000000 v¹n .")
end

function danhvongphucduyen()
AddRepute(1000);
FuYuan_Start();
FuYuan_Add(1000);
Msg2Player("B¹n nhËn ®­îc 1000 ®iÓm Danh Väng.")
end
function conghien()
AddContribution(100000)
Msg2Player("B¹n nhËn ®­îc 100000 ®iÓm Cèng HiÕn.")
end

function gm_functionboss()
for i =1,5 do
AddItem(6,1,1022,0,0,0)
end
end

function DanhHieu()
local tab_Content =
{
"Vßng s¸ng Admin./vsadmin",
"Vâ L©m KiÖt XuÊt./vlkx",
"Vâ L©m Minh Chñ 1./vlmc1",
"Vâ L©m Minh Chñ 2./vlmc2",
"Ngù Long Cuång §ao./ngulongcd",
"§¹i Héi Server./daihoisv",
"Thiªn H¹ §Ö NhÊt Bang./thdnb",
"TuyÖt ThÕ Cao Thñ./tuyetthect",
"M·nh Long Tranh B¸./manhlongtb",
"Th«i./no",
"Trë l¹i"
}
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Danh HiÖu !", getn(tab_Content), tab_Content);
end


function vsadmin()
n_title = 228---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function vlkx()
n_title = 85 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function vlmc2()
n_title = 3000 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function vlmc1()
n_title = 188 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function ngulongcd()
n_title = 165 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function daihoisv()
n_title = 150 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function thdnb()
n_title = 189 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function tuyetthect()
n_title = 235 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end
function manhlongtb()
n_title = 263 ---- ID Danh hiÖu
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
"Ngùa nhãm 1./vip1",
"Ngùa nhãm 2./vip2",
"Ngùa nhãm 3./vip3",
"Ngùa nhãm 4./vip4",
"Ngùa nhãm 5./vip5",
"M· bµi Siªu quang./mabaisq",
"S­ tö hoµng kim./sutu",
"Siªu quang./sieuquang",
"H·n HuyÕt Long C©u./longcau",
"Tho¸t./no",
"Trë l¹i"
}
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Ngùa mµ b¹n muèn !", getn(tab_Content), tab_Content);
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
Talk(1, "", "Ng­¬i ®· ®¹t cÊp 150 råi.")
else
Talk(1, "", "§i chuyÓn sinh tr­íc ®i råi trë l¹i th¨ng cÊp.")
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
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i råi.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Trë vª", dialog_main})
	tinsert(tbOpt, {"Tho¸t."})
	CreateNewSayEx("<npc>Mét khi gia nhËp m«n ph¸i kh«ng thÓ thay ®æi, h·y suy nghÜ kü.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<npc>X¸c nhËn muèn gia nhËp m«n ph¸i ?<color=yellow>%s<color> m«n ph¸i?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X¸c nhËn!", do_set_faction, {nIndex}},
		{"Trë vª.", choose_faction},
		{"Tho¸t."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
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
	Talk(1, "KickOutSelf", format("Ng­¬i ®· gia nhËp thµnh c«ng ph¸i %s", %tbFaction[nIndex].szShowName))
end

function show_faction()
	if check_faction() == 1 then
		Talk(1, "", "Gia nhËp m«n ph¸i míi ca thÓ nhËn trang bÞ")
		return
	end
	local nFactionId = GetLastFactionNumber() + 1
	local tbOpt = {}
	local tbSubFaction = %tbFaction[nFactionId].tbEquip
	for i=1, getn(tbSubFaction) do
		tinsert(tbOpt, {tbSubFaction[i].szFaction, show_equip, {nFactionId, i}})
	end
	tinsert(tbOpt, {"Trë vª.", main})
--	tinsert(tbOpt, {"
	tinsert(tbOpt, {"Tho¸t."})
	CreateNewSayEx("<npc>Xin mêi lùa chän ph¸i.", tbOpt)
end

function show_equip(nFactionId, nSubFactionId)
local tbEquip = %tbFaction[nFactionId]["tbEquip"][nSubFactionId]
local tbEquipName = tbEquip["tbEquipName"]
local nFirstEquipId = tbEquip["nFirstEquipId"]
local tbOpt = {}
for i=1, getn(tbEquipName) do
tinsert(tbOpt, {tbEquipName[i], get_equip, {i, nFirstEquipId + i - 1}})
end
tinsert(tbOpt, {"Trë vª", show_faction})
tinsert(tbOpt, {"Tho¸t."})
local szTitle = format("<npc>LÊy ®å %s Kim ¤", tbEquip.szFaction)
CreateNewSayEx(szTitle, tbOpt)
end

function get_equip(nIndex, nEquipId)
local nWidth = %tbEquipFreeCell[nIndex][1]
local nHeigth = %tbEquipFreeCell[nIndex][2]
if CountFreeRoomByWH(nWidth, nHeigth) < 1 then
Talk(1, "", format("CÇn Ýt nhÊt 1 c¸i %dx%d tói ®eo l­ng", nWidth, nHeigth))
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
szOption = format("NhËn %s", %tbFreeItem[i].szName)
tinsert(tbOpt, {szOption, get_item, {i}})
end
szOption = format("NhËn %s", %tbFreeItem[nCount].szName)
tinsert(tbOpt, {szOption, get_single_item, {nCount}})
tinsert(tbOpt, {"NhËn cùc phÈm giíi chØ...", get_normal_item})
tinsert(tbOpt, {"NhËn ®¹i thµnh bÝ kÝp 150", daithanhbikip15x})
tinsert(tbOpt, {"Trë vª.", main})
tinsert(tbOpt, {"Tho¸t."})
CreateNewSayEx("<npc>H·y chän vËt phÈm!", tbOpt)
end

function get_normal_item()
local tab_Content =
{
"H­ng Bang Chi Giíi./xb_jz",
"TrÊn Nh¹c Chi Giíi./zy_jz",
"Th­îng Ph­¬ng Chi Giíi./sf_jz",
"Thiªn Hµ Giíi./sh_jz",
"§Õ Hoµng Chi Giíi./dh_jz",
"Thiªn Tö Chi Giíi./tz_jz",
"ThÕ Tóc Toµn Giíi./sz_jz",
"Cµn Kh«n Giíi ChØ (Cùc phÈm)./jz08",
"L·nh B¸ Nguyªn Méng Chi Giíi (Míi)./jz08x",
"Tho¸t./no",
"Trë l¹i."
}
Say("Xin mêi chän Giíi ChØ !", getn(tab_Content), tab_Content);
end

function fifong()
local tab_Content =
{
"Phi phong./phiphong",
"Ên./an",
"Trang søc./trangsuc",
"Trang søc hång ¶nh./honganh",
--"MÆt n¹./matna",
"Kho¸ng th¹ch - STG - HuyÒn tinh - Phóc duyªn./khoangth",
"H¾c thÇn./hacthan",
"Long T­¬ng./longtuong",
"Vò liÖt./vuliet",
"Unknow./unknow",
"Huynh ®Ö./huynhde",
"Cè s¬n./coson",
"D­¬ng thÇn./duongthan",
"§éng S¸t./dongsat",
"Tho¸t./no",
"Trë l¹i"
}
Say("Xin mêi chän !", getn(tab_Content), tab_Content);
end

function honganh()
local tab_Content = 
{
"Hång ¶nh./honganh1",
"Hång ¶nh [Hoµn Mü]./honganh2",
"Tho¸t./no",
"Trë l¹i"
}
Say("Xin mêi chän !", getn(tab_Content), tab_Content)
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
"Trang søc 1./trangsuc1",
"Trang søc 2./trangsuc2",
"Long ®¶m./longdam",
"Cuång Lan./cuonglan",
"Tho¸t./no",
"Trë l¹i."
}
Say("Xin mêi chän !", getn(tab_Content), tab_Content);
end

function huytinh()
dotim()
end


function matna()
local tab_Content =
{
"MÆt n¹ 1./matna1",
"MÆt n¹ 2./matna2",
"MÆt n¹ 3./matna3",
"MÆt n¹ 4./matna4",
"MÆt n¹ 5./matna5",
"Tho¸t./no",
"Trë l¹i."
}
Say("Xin mêi chän !", getn(tab_Content), tab_Content);
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
"Phi Phong cÊp thÊp./phiphong1",
"Phi Phong PhÖ Quang./phiphongphequang",
"Phi Phong KhÊp ThÇn./phiphongkhapthan",
"Phi Phong K×nh Thiªn./phiphongkinhthien",
"Phi Phong V« Cùc./phiphongvocuc",
"Phi Phong Cao CÊp./phiphongcaocap",
"Tho¸t./no",
"Trë l¹i."
	}
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Phi Phong mµ b¹n muèn !", getn(tab_Content), tab_Content)
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
g_AskClientNumberEx(0, nMaxCount, "Xin mêi ®­a vµo nhËn lÊy", {get_item_back, {nIndex}})
end

function get_item_back(nIndex, nCount)
if nCount <= 0 then
return
end
if CalcFreeItemCellCount() < nCount then
Talk(1, "", format("CÇn Ýt nhÊt <color=yellow>%d<color> tói kh«ng gian...", nCount))
return
end
local szLogTitle = format("[liguan]get_free_item_%s", %tbFreeItem[nIndex].szName)
tbAwardTemplet:GiveAwardByList(%tbFreeItem[nIndex], szLogTitle, nCount)
end

function get_single_item(nIndex)
local tbItem = %tbFreeItem[nIndex]
if CountFreeRoomByWH(tbItem.nWidth, tbItem.nHeigth) < 1 then
Talk(1, "", format("CÇn Ýt nhÊt 1 %dx%d µÄ±³°ü¿O¼ä", tbItem.nWidth, tbItem.nHeigth))
return
end
local szLogTitle = format("[liguan]get_free_item_%s", tbItem.szName)
tbAwardTemplet:GiveAwardByList(tbItem, szLogTitle)
end

function clear_attibute_point()
local tbOpt =
{
{"TÈy ®iÓm kü n¨ng.", clear_skill},
{"TÈy ®iÓm tiÒm n¨ng.", clear_prop},
{"Trë vÒ", main},
{"Tho¸t."},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
end

function clear_skill()
local tbOpt =
{
{"X¸c nhËn", do_clear_skill},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
end

function do_clear_skill()
local i = HaveMagic(210) -- Çá¹¦¸íÝâ²ï×÷
local j = HaveMagic(400) -- ¡°½ï¸»¼·Æ¶¡±¸íÝâ²ï×÷
local n = RollbackSkill() -- Çå³ý¼¼ÄÜ²¢·µ»ØËùÓÐ¼¼ÄÜ?ã£? ?°üµ¨Çá¹¦µÈÌØÊâ¼¼ÄÜ£?
local x = 0
if (i ~= -1) then i = 1; x = x + i end -- Õâ¸½¾äÅÐ¶ÏÊÇÅÅ³ý´ÓÎ´Ñ§¹ýÇ á¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼Ö¢µãÊý¼ÆËã´íÎóÇé¿ö
if (j ~= -1) then x = x + j end
local rollback_point = n - x -- °Ñ¼¼ÄÜµãµ±×ö¿ÕÏÐµãÊý·µ»¹£ ¬µ«ÏÈ?Û³ýÇá¹¦µ?
if (rollback_point + GetMagicPoint() < 0) then -- Èç¹ûÏ´³É¸Ë¸ºÊý£¬Ôòµ±×÷0£¨? ?ªÒÔºó¶µ´ÎÏ´µã±£?ô£?
rollback_point = -1 * GetMagicPoint()
end
AddMagicPoint(rollback_point)
if (i ~= -1) then AddMagic(210, i) end -- Èç¹ûÑ§¹uÇá¹¦Ô?¼Ó»ØÔ­ÓÐµÈ¼¶
if (j ~= -1) then AddMagic(400, j) end -- Èç¹ûÑ§¹u¡°½ï¸»¼AÆ¶¡±Ý¬Ñù´¦ µí
Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i cã "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
KickOutSelf()
end

function clear_prop()
local tbOpt =
{
{"X¸c nhËn", do_clear_prop},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
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
"VËt phÈm hæ trî/khoangth",
"MÆt n¹/manat",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;

function dotim1()
local	tab_Content= 
{
"Vò KhÝ/weapon",
"Y Phôc/shirt",
"§Ønh M¹o/hat",
"Hæ UyÓn/glove",
"Yªu §¸i/belt",
"Hµi Tö/shoe",
"Th«i./no",
"Trë l¹i"
}
Say(" Xin mêi chän  ? ", getn(tab_Content), tab_Content);
end

function weapon()
local tab_Content = {
"KiÕm/kiem",
"§ao/dao",
"Bæng/bong",
"Th­¬ng/kick",
"Chïy/chuy",
"Song §ao/songdao",
"Phi Tiªu/phitieu",
"Phi §ao/phidao",
"Tô TiÔn/tutien",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
"ThÊt B¶o Cµ Sa/aothieulam",
"Ch©n Vò Th¸nh Y/aovodang",
"Thiªn NhÉn MËt Trang/aothiennhan",
"Gi¸ng Sa Bµo/sabao",
"§­êng Nghª Gi¸p/dng",
"V¹n L­u Quy T«ng Y/aocaibang",
"TuyÒn Long Bµo/longbao",
"Long Tiªu §¹o Y/daoy",
"Cöu VÜ B¹ch Hå Trang/hotrang",
"TrÇm H­¬ng Sam/huongsam",
"TÝch LÞch Kim Phông Gi¸p/kimphung",
"V¹n Chóng TÒ T©m Y/tamy",
"L­u Tiªn QuÇn/tienquan",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
"Tú L« M·o/lomao",
"Ngò L·o Qu¸n/laoquan",
"Tu La Ph¸t KÕt/phatket",
"Th«ng Thiªn Ph¸t Qu¸n/phatquan",
"YÓm NhËt Kh«i/nhatkhoi",
"TrÝch Tinh Hoµn/tinhhoan",
"¤ Tµm M·o/tammao",
"Quan ¢m Ph¸t Qu¸n/quanam",
"¢m D­¬ng V« Cùc Qu¸n/amduong",
"HuyÒn Tª DiÖn Tr¸o/dientrao",
"Long HuyÕt §Çu Hoµn/longhuyet",
"Long L©n Kh«i/lankhoi",
"Thanh Tinh Thoa/tinhthoa",
"Kim Phông TriÓn SÝ/triensi",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
"Long Phông HuyÕt Ngäc Tr¹c/ngoctrac",
"Thiªn Tµm Hé UyÓn/houyen",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
"Thiªn Tµm Yªu §¸i/thientamyeu",
"B¹ch Kim Yªu §¸i/bachkimyeudai",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
"Cöu TiÕt X­¬ng VÜ Ngoa/cuutien",
"Thiªn Tµm Ngoa/thientam",
"Kim Lò Hµi/kimlu",
"Phi Phông Ngoa/phiphung",
"Tho¸t."
}
Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
"HuyÒn tinh/huytin",
"Kho¸ng th¹ch/kdb",
"S¸t thñ gi¶n 80./stg80",
"S¸t thñ gi¶n 90./stg90",
"Thñy tinh/thuyti",
"Phóc duyªn/phucd",
"Tho¸t./no",
"Trë l¹i."
}
Say(" Ng­¬i muèn lÊy g× nµo? ", getn(tab_Content), tab_Content);
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
	Talk(1, "", "Ch­a gia nhËp m«n ph¸i kh«ng thÓ nhËn Skill ®­îc.")
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
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña ThiÕu L©m. ")
elseif mp == "tianwang" then
AddMagic(1058,20)
AddMagic(1059,20)
AddMagic(1060,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña Thiªn V­¬ng. ")
elseif mp == "tangmen" then
AddMagic(1069,20)
AddMagic(1070,20)
AddMagic(1071,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña §­êng M«n. ")
elseif mp == "wudu" then
AddMagic(1066,20)
AddMagic(1067,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña Ngò §éc.")
elseif mp == "emei" then
AddMagic(1061,20)
AddMagic(1062,20)
AddMagic(1114,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña Nga My.")
elseif mp == "cuiyan" then
AddMagic(1063,20)
AddMagic(1065,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña Thóy Yªn.")
elseif mp == "gaibang" then
AddMagic(1073,20)
AddMagic(1074,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña C¸i Bang.")
elseif mp == "tianren" then
AddMagic(1075,20)
AddMagic(1076,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña Thiªn NhÉn.")
elseif mp == "wudang" then
AddMagic(1078,20)
AddMagic(1079,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña Vâ §ang.")
elseif mp == "kunlun" then
AddMagic(1080,20)
AddMagic(1081,20)
SetTask(5007,GetTask(5007)+1)
Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña C«n L«n.")
end
else
Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a.")
end
else
Talk(1, "", "LuyÖn ®Õn cÊp 150 råi h·y ®Õn t×m ta")
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
			tinsert(tbSay,"Th«ng tin ng­êi ch¬i./Show")
			tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i./luachonid1")
			tinsert(tbSay,"Tho¸t/no")
			tinsert(tbSay,"Trë l¹i.")
		Say("Xin Chµo <color=red>"..GetName().."<color>!\nTäa ®é hiÖn t¹i: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color> \n<color>Index:           <color=green>"..nIdPlay.."<color>\nSè SHXT: <color=green>        "..GetTask(T_SonHaXaTac).."<color> m¶nh.\nHiÖn §ang Cã:    <bclr=red><color=yellow>["..GetPlayerCount().."]<color><bclr> ng­êi ch¬i trong game.\n", getn(tbSay), tbSay)
end 

function Show() 
AskClientForNumber("Show1",1,1180,"NhËp sè tiÒn cÇn chuyÓn") 
end 


function Show1(num) 
local nNum = num + 20 
for i=num,nNum do 
    gmidx=PlayerIndex 
    PlayerIndex=i 
    TarName=GetName() 
    PlayerIndex=gmidx 
    Msg2Player("PlayIndex:<color=green> "..i.."<color> - Tªn:<color=green> "..TarName..""); 
end 
end

function luachonid1() 
AskClientForNumber("one",0,5000,"NhËp ID ng­êi ch¬i") 
end 

function one(num) 
if ((num)>GetPlayerCount()) then 
Msg2Player("Kh«ng cã nh©n vËt víi ID: <color=green>"..num.."<color> ®­îc chän !!"); 
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
    Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color>"); 
    local tbSay=  {}
			tinsert(tbSay,"T¨ng cÊp ®é cho ng­êi ch¬i./tangcap1")
			tinsert(tbSay,"Hæ trî tiÒn ®ång./bufskillsgm1")
			tinsert(tbSay,"Hæ trî tiÒn v¹n./themtienvan1")
			tinsert(tbSay,"Di chuyÓn nh©n vËt vÒ BLH./move")
            tinsert(tbSay,"Add ®iÓm cho ng­êi ch¬i../buffpoint")
            tinsert(tbSay,"KÝch nh©n vËt./kick")
			tinsert(tbSay,"CÊm Ch¸t./camchat")
			tinsert(tbSay,"Më Ch¸t./mochat")
            tinsert(tbSay,"Tho¸t./no")
			tinsert(tbSay,"Trë l¹i.")            
    Say("Tµi Kho¶n:<color=green> "..tk.."<color>  - Nh©n VËt   :<color=green> "..ObjName.."<color>\nCÊp ®é   :<color=green> "..lev.."<color>           - Kinh nghiÖm: <color=green>"..xp.."%<color>\nMµu      :<color=green> "..cam.."<color>             - M«n ph¸i   :<color=green>"..fac.."<color>\nTiÒn MÆt :<color=green> "..(cash/10000).." v¹n<color> - TiÒn §ång  :<color=green>"..lif.." ®ång<color>\nVÞ trÝ   : <color=blue>"..w.."<color>,<color=green>"..x.."<color>,<color=green>"..y.."<color>", getn(tbSay), tbSay)
    Msg2Player("Ng­êi ch¬i <color=cyan>"..xinxi) 
end 
end; 
function themtienvan1() 
AskClientForNumber("themtienvan",0,2000000000,"NhËp sè tiÒn cÇn chuyÓn") 
end 
function themtienvan(num) 
nNum = num/10000 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=green>"..gmName.."<color> ®· thªm <color=metal>"..nNum.."<color> v¹n l­îng cho b¹n !"); 
Earn(num) 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> ®­îc b¹n thªm <color=metal>"..nNum.."<color> v¹n l­îng thµnh c«ng"); 
end; 
function bufskillsgm1() 
AskClientForNumber("buffskillsgm",0,500,"sè l­îng tiÒn ®ång") 
end 
function buffskillsgm(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=green>"..gmName.."<color> ®· chuyÓn <color=metal>"..num.."<color> tiÒn ®ång cho b¹n !"); 
AddStackItem(num,4,417,1,1,0,0,0) 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> ®­îc b¹n t¨ng <color=metal>"..num.."<color> tiÒn ®ång thµnh c«ng"); 
end;
function buffpoint() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=green>"..gmName.."<color> ®· t¨ng ®iÓm theo yªu cÇu!"); 

PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> ®­îc b¹n t¨ng ®iÓm theo yªu cÇu thµnh c«ng"); 
end; 

function tangcap1() 
AskClientForNumber("tangcap",0,200,"cÊp cÇn t¨ng") 
end 
function tangcap(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=green>"..gmName.."<color> ®· t¨ng <color=metal>"..num.."<color> cÊp ®é cho b¹n !"); 
for i=1,num  do 
AddOwnExp(999999999999) 
end 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> ®­îc b¹n t¨ng <color=metal>"..num.."<color> cÊp ®é thµnh c«ng"); 
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
Msg2Player("Qu¶n lý <color=green>"..gmName.."<color> ®· di chuyÓn b¹n vÒ Ba L¨ng HuyÖn"); 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> ®­îc b¹n di chuyÓn vÒ Ba LÆng HuyÖn thµnh c«ng"); 
end 

function kick() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=green>"..gmName.."<color> ®· kick kÑt tµi kho¶n cho b¹n"); 
KickOutSelf() 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> ®­îc b¹n kick kÑt tµi kho¶n thµnh c«ng"); 
end; 

function camchat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(1) 
Msg2Player("B¹n bÞ khãa Ch¸t trªn mäi tÇn sè !") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh©n VËt:<color=red> "..ObjName.."<color> §· BÞ CÊm Chat Trªn Mäi TÇn Sè !",1) 
end 

function mochat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(0) 
Msg2Player("B¹n ®­îc më khãa Ch¸t trªn mäi tÇn sè !") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh©n VËt:<color=green> "..ObjName.."<color> §­îc Më Chat Trªn Mäi TÇn Sè !",1)  
end