-- 梦境 ⒎人_叛僧.lua  洗点功能NPC

Include("\\script\\missions\\clearskill\\clearhole.lua");

function main()
	-- 非法状态
	if (CSP_CheckValid() == 0) then
		CSP_WriteLog("Kh玭g th� n o t葃 t駓 ");
		Say("GM: <color=red>B筺 kh玭g th� v祇 t葃 t駓 o,  頲 h� th鑞g l璾 l筰, vui l遪g li猲 h� GM  頲 h� tr�! <color> ", 1, "R阨 kh鈏 t葃 t駓 o/LeaveHere_yes")
		return -1;
	end
	
	nLevel = GetLevel();
	if (nLevel < CSP_NEEDLEVEL) then
		Talk(1, "", "C蕄 b薱 c馻 ngi ch璦 "..CSP_NEEDLEVEL.."Kh玭g th� r阨 kh鈏 t葃 t駓 o. ")
		return -1;
	end

	nType = GetTask(CSP_TID_ClearType);
	if (nType == CSP_CTYPE_SKILL) then -- 只洗技能点
		local tbOpt = 
		{
			"T葃 甶觤 k� n╪g/DoClearSkill",
			"T葃 甶觤 ti襪 n╪g/add_prop",
			"Kh玭g t葃/OnCancel",
			"Li猲 quan n t葃 t駓/Help",
			"R琲� kh鈏 t葃 t駓 o /LeaveHere",
		}
		Say("Ngi mu鑞 t葃 <color=blue> 詍 k� n╪g<color>. уng � t葃?", getn(tbOpt), tbOpt)
	elseif (nType == CSP_CTYPE_PROP) then -- 只能潜能点
		local tbOpt = 
		{
			"T葃 甶觤 ti襪 n╪g/DoClearProp",
			"T╪g 甶觤 ti襪 n╪g/add_prop",
			"Kh玭g t葃/OnCancel",
			"Li猲 quan n t葃 t駓 /Help",
			"R阨 o t葃 t駓 /LeaveHere",
		}
		Say("Ngi mu鑞 t葃<color=blue> 甶觤 ti襪 n╪g<color>. уng � t葃 ? ", getn(tbOpt), tbOpt)
	else -- if (nType == CSP_NEEDJEWEL_ALL) then -- 全洗(nType可能是0，或3)
		local tbOpt = 
		{
			 "T葃 甶觤 k� n╪g/DoClearSkill",
			 "T葃 甶觤 ti襪 n╪g/DoClearProp", 
			 "T╪g 甶觤 ti襪 n╪g/add_prop", 
			 "Kh玭g t葃 /OnCancel", 
			 "Li猲 quan n t葃 t駓/Help", 
			 "R阨 o t葃 t駓/LeaveHere"
		}
		Say("Ngi ng � t葃 t駓? ", getn(tbOpt),tbOpt)
	end;
end

function add_prop()
	Say("Ngi ph秈 hi觰 r� c竎h t╪g 甶觤", 4,
			"S鴆 m筺h/add_prop_str",
			"Th﹏ ph竝/add_prop_dex",
			"Sinh kh�/add_prop_vit",
			"N閕 c玭g/add_prop_eng")
end

function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "M阨 nh藀 ch� s� s鴆 m筺h: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "M阨 nh藀 ch� s� th﹏ ph竝: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "M阨 nh藀 ch� s� sinh kh�:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "M阨 nh藀 ch� s� n閕 c玭g: ");
end

function enter_str_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddStrg(n_key);
end

function enter_dex_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddDex(n_key);
end

function enter_vit_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddVit(n_key);
end

function enter_eng_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddEng(n_key);
end

function DoClearSkill()
	Say("Ngi ng � t╪g k� n╪g ", 2, "T╪g k� n╪g/DoClearSkillCore","Kh玭g n╪g/OnCancel")
end
function DoClearSkillCore()
--	if (Pay(100000) == 0) then
--		Say("T葃 t駓 th祅h c玭g ngi c� th� t╪g l筰 甶觤", 0)
--		return
--	end

	i = HaveMagic(210)		-- 轻功另外操作
	j = HaveMagic(400)		-- “劫富济贫”另外操作
	n = RollbackSkill()		-- 清除技能并返回所有技能点（包括轻功等特殊技能）
	x = 0
	if (i ~= -1) then x = x + i end		-- 这两句判断是排除从未学过轻功的人返回-1从而导症点数计算错误情况
	if (j ~= -1) then x = x + j end
	rollback_point = n - x			-- 把技能点当做空闲点数返还，但先扣除轻功等
	if (rollback_point + GetMagicPoint() < 0) then		-- 如果洗成了负数，则当作0（为以后兜次洗点保留）
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210,i) end			-- 如果学过轻功则加回原有等级
	if (j ~= -1) then AddMagic(400,j) end			-- 如果学过“劫富济贫”同样处理
	Msg2Player("T葃 t駓 th祅h c玭g ngi c� th� t╪g l筰 甶觤"..rollback_point.."詍 k� n╪g c� th� ph﹏ ph鑙 l筰. ")
	Talk(1,"KickOutSelf","T葃 t駓 th祅h c玭g ngi c� th� t╪g l筰 甶觤"..rollback_point.."詍 k� n╪g c� th� ph﹏ ph鑙 l筰. ")
end;

function DoClearProp()
	Say("Ngi ng � t葃 甶觤 ti襪 n╪g? ", 2, "T葃 甶觤 ti襪 n╪g/DoClearPropCore", "Kh玭g t葃/OnCancel")
end

function DoClearPropCore()
		base_str = {35,20,25,30,20}			-- 五行人物的天生属性值
		base_dex = {25,35,25,20,15}
		base_vit = {25,20,25,30,25}
		base_eng = {15,25,25,20,40}
		player_series = GetSeries() + 1

		Utask88 = GetTask(88)
		AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88,1))			-- 将已分配潜能重置（task(88)是任务中直接奖励的力量、身法等）
		AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88,2))
		AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88,3))
		AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88,4))
end;

function OnCancel()
end;

function Help()
	strHelp = 
	{
		"Sau khi t葃 t駓 ngi c� th� ra ngo礽 nh m閏 nh薾,ho芻 c� th� l藀 nh鉳 v祇 s琻 ng th鵦 h祅h chi課 u,sau  r阨 o m韎 c� th� xem l� c o. ",
		"Ch� c﹏ ngi kh玭g r阨 o, ta c� th� gi髉 ngi t葃 t駓",
		"B猲 ngo礽 c� c竎 c閠 g� 3000 sinh l鵦 ;  bao c竧 10000 sinh l鵦 ; M閏 nh﹏ 30000 sinh l鵦  ngi t藀 luy謓 hi謚 qu�!",
		"N誹 nh� mu鑞 th鵦 h祅h c� th� v祇 s琻 ng n誹 nh� c� ch誸 c騨g kh玭g m蕋 m竧 g�",
		"Trong s琻 ng r蕋 h裵 nhi襲 nh蕋 ch� ch鴄 20 ngi n誹   ngi th� kh玭g n猲 v祇 trong. ",
		"Trong s琻 ng r蕋 h裵 nhi襲 nh蕋 ch� ch鴄 20 ngi n誹   ngi th� kh玭g n猲 v祇 trong ",
		"Cu鑙 c飊g l骳 n祇 khi th蕐 k� n╪g  th祅h th筼 th� c� th� g苝 ta a v� ch� c�"
	}
	Talk(7, "", strHelp[1], strHelp[2], strHelp[3], strHelp[4], strHelp[5], strHelp[6], strHelp[7]);
end;

function LeaveHere()
	Say("Ngi cho r籲g  th祅h th筼 mu鑞 r阨 o? ",2, "Mu鑞 r阨 kh鈏/LeaveHere2", "Vi謈 n祔 ta s� suy ngh� l筰/OnCanCel")
end

function LeaveHere2()
	Say("Mu鑞 r阨 kh鈏 o th� khi quay v� r蕋 kh�", 2, "Ta mu鑞 r阨 kh鈏 n琲 qu� qu竔 n祔/LeaveHere_yes", "Kh玭g ta s� � l筰/OnCanCel")
end

function LeaveHere_yes()
	W,X,Y = GetWorldPos();
	LeaveTeam()
	CSP_LeaveClearMap(W);
end
