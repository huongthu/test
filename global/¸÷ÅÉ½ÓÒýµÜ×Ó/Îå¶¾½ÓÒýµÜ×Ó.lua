-- 各门派接引弟子脚本　五毒
-- By: Dan_Deng(2003-10-27)
-- Update: Dan_Deng(2004-05-25) 体服技能全开修改（调用外部文件方式）
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "Ng� чc T秐 Nh﹏"

function default_talk()
end

function defection_get()
	Talk(1,"","Ha! Ha! Ha! Qu� nhi猲 l� tu蕁 ki謙 th鴆 th阨!Ngi ch� c莕 n g苝 l穙 gi� Л阯g C鮱 xin ly gi竜 sau  n g苝 gi竜 ch� H綾 Di謓 Lang Qu﹏ c馻 ta  b竜 danh l� c� th� nh藀 m玭")
	nt_setTask(10,5*256+10)
	Msg2Player("Mu鑞 gia nh藀 Ng� чc gi竜, ch� c莕 xin ph衟 Л阯g C鮱, sau  n g苝 H綾 Di謓 Lang Qu﹏ b竜 danh!")
	AddNote("Mu鑞 gia nh藀 Ng� чc gi竜, ch� c莕 xin ph衟 Л阯g C鮱, sau  n g苝 H綾 Di謓 Lang Qu﹏ b竜 danh!")
end

function enroll_select()
	UTask_wu = nt_getTask(10)
	UTask_tm = nt_getTask(2)
	if ((UTask_tm > 5*256) and (UTask_tm < 10*256)) then		-- 已接了唐门入门任务
		Talk(1,"","Ngi kh玭g mu鑞 gia nh藀 th� bi課 kh醝 y 甶! H鮩! Hao c� n鯽 ng祔 nc b鋞 c馻 ta")
	elseif (GetSeries() == 1) and (GetCamp() == 0) and (UTask_tm < 5*256) and (UTask_wu < 5*256) then		--木系、未入唐门五毒
		if (GetLevel() >= 10) then						--等级达到十级
			Say("Sao h�? C� mu鑞 gia nh藀 b鎛 gi竜 kh玭g?", 3, "Gia nh藀 Ng� чc Gi竜/go", "в ta suy ngh� k� l筰 xem/no","T譵 hi觰 tinh hoa v� ngh� c竎 m玭 ph竔/Uworld1000_knowmagic")
		else
			Talk(1,"","C╪ b秐 c馻 ngi c遪 k衜 l緈! H穣 甶 luy謓 t藀 th猰, bao gi� n c蕄 10 l筰 n t譵 ta!")
		end
	end		-- 不是木系的就不再多说话了。
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(183,70)		  			--设置重生点
	nt_setTask(10,10*256)				-- 直接入门
	SetFaction("wudu")       			--玩家加入峨嵋派
	SetCamp(2)
	SetCurCamp(2)
	-- SetRank(49)
	nt_setTask(137,70)
	SetLastFactionNumber(3)
-- 直接处理流程
--	nt_setTask(10,80*256)
--	SetRank(80)
--	Msg2Player("欢迎你加入五毒教，测试中直接学会本门所有技能。")
	-- add_wu(10)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	add_wu(70)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	-- AddMagic(210, 1)
-- 结束
	Msg2Player("Hoan ngh猲h b筺 Gia nh藀 Ng� чc gi竜, tr� th祅h Ng� чc уng T�! H鋍 頲 чc Sa Chng, Huy誸 o чc S竧.")
	AddNote("Gia nh藀 Ng� чc gi竜, tr� th祅h Ng� чc уng T�.")
	Msg2Faction("wudu",GetName().." t� h玬 nay gia nh藀 Ng� чc gi竜, xin b竔 ki課 c竎 v� huynh t�. Mong c竎 v� quan t﹎ ch� gi竜!",GetName())
	-- NewWorld(183, 1746, 2673)			--把玩家传送到门派入口
AddMagic(353,20)
AddMagic(355,20)
AddMagic(711,20)
AddMagic(390)
AddMagic(210, 1)
SetRank(80)
end;




function return_yes()
	NewWorld(183, 1746, 2673)			--把玩家传送到门派入口
end;

function wu_check_yes()					-- 按技能确定任务变量的检查。。。尚未相应更新
	if (GetSeries() ~= 2) then
		Talk(1,"","Ng� h祅h c馻 ngi kh竎 h� M閏 v韎 b鋘 ta!  дn y l祄 g�? H穣 l猲 di詎 n h鋍 h醝 甶!")
	elseif (HaveMagic(91) >= 0) then		-- 做完了50级任务,佛光普照
		nt_setTask(1,60*256)
		Talk(1,"","Ta  ph鬰 h錳 l筰 tr筺g th竔 nhi謒 v� c馻 ngi! B﹜ gi� ngi c� th� 甶 nh薾 nhi謒 v� xu蕋 s� ")
	elseif (HaveMagic(88) >= 0) then		-- 做完了40级任务,不灭不绝
		nt_setTask(1,50*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 40.")
	elseif (HaveMagic(85) >= 0) then		-- 做完了30级任务,一叶知秋
		nt_setTask(1,40*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 30.")
	elseif (HaveMagic(82) >= 0) then		-- 做完了20级任务,四象同归
		nt_setTask(1,30*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 20.")
	elseif (HaveMagic(77) >= 0) then		-- 做完了10级任务,峨眉剑法
		nt_setTask(1,20*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 10.")
	else
		nt_setTask(1,10*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  c� th� nh薾 nhi謒 v� c蕄 10.")
	end
end;

function em_check_no()
	Say("Nghe n鉯 tr猲 n骾 v鮝 xu蕋 hi謓 m閠 i nam thanh n� t�,ngi v閕 v祅g n xem h�? H�! H�! H�!",2,"Ha! Ha! C秏 phi襫 a t筰 h� 甶 m閠 chuy課!/return_yes","Ch璦 c莕! Ta c遪 vi謈 ph秈 l祄!/no")
end

function Uworld1000_jiaoyuwudu()
	nt_setTask(1000,260)
	Msg2Player("е t� ti誴 d蒼 Ng� чc b秓 b筺  l�  t� c馻 m玭 pah�, c� th� tr鵦 ti誴 甶 g苝 Long Ng� n鉯 chuy謓.")
end

function no()
end;
