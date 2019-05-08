-- 各门派接引弟子脚本　丐帮
-- By: Dan_Deng(2003-10-27)
-- Update: Dan_Deng(2004-05-25) 体服技能全开修改（调用外部文件方式）
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "е t� 3 t骾 C竔 Bang "

function default_talk()
end

function defection_get()
	Talk(1,"","N誹  c� � h鑙 c秈, h穣 n g苝 Ho祅g Nhan H飊g Li謙  xin ly gi竜, sau  n di謓 ki課 Bang ch� H� Nh﹏ Ng�  xin nh藀 m玭")
	nt_setTask(8,5*256+10)
	Msg2Player("N誹 mu鑞 gia nh藀 C竔 bang, h穣 n g苝 Ho祅 Nhan H飊g Li謙  xin ly gi竜, sau  n di謓 ki課 Bang ch� H� Nh﹏ Ng�  xin nh藀 m玭")
	AddNote("N誹 mu鑞 gia nh藀 C竔 bang, h穣 n g苝 Ho祅 Nhan H飊g Li謙  xin ly gi竜, sau  n di謓 ki課 Bang ch� H� Nh﹏ Ng�  xin nh藀 m玭")
end

function defection_no()
	Talk(1,"","X璦 nay Th祅h vng b筰 kh蕌, c遪 n鉯 g� n chuy謓 ng sai?! C竔 bang c� lo筰  t� c� ch蕄 nh� ngi, s韒 mu閚 g� c騨g th﹏ b筰 danh li謙!")
end

function enroll_select()
	UTask_gb = nt_getTask(8)
	UTask_tr = nt_getTask(4)
	if ((UTask_tr > 5*256) and (UTask_tr < 10*256)) then		-- 已接了天忍入门任务
		Talk(1,"","C竔 Bang v� Thi猲 Nh蒼 x璦 nay v鑞 kh玭g i tr阨 chung! N誹 ngi  quy誸 t﹎ gia nh藀 Thi猲 Nh蒼, ta kh玭g c遪 g�  n鉯!")
	elseif (GetSeries() == 3) and (GetCamp() == 0) and (UTask_tr < 5*256) and (UTask_gb < 5*256) then		--火系、未入天忍丐帮
		if (GetLevel() >= 10) then						--等级达到十级
			Say("C� h鴑g th� gia nh藀 C竔 bang kh玭g? M鋓 ngi c� c琺 c飊g ╪, c� ru c飊g u鑞g!", 3, "Gia Nh藀 C竔 bang/go", "в ta suy ngh� k� l筰 xem/no","T譵 hi觰 tinh hoa v� ngh� c竎 m玭 ph竔/Uworld1000_knowmagic")
		else
			Talk(1,"","C╪ b秐 c馻 ngi c遪 k衜 l緈! H穣 甶 luy謓 t藀 th猰, bao gi� n c蕄 10 l筰 n t譵 ta!")
		end
	end		-- 不是火系的就不再多说话了。
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(115,53)		  			--等待提供重生点
	nt_setTask(8, 10*256)				-- 直接入门
	SetFaction("gaibang")       			--玩家加入门派
	SetCamp(1)
	SetCurCamp(1)
	-- SetRank(37)
	nt_setTask(137,68)
	SetLastFactionNumber(6)
-- 直接处理流程
--	nt_setTask(8,80*256)
--	SetRank(78)
--	Msg2Player("欢迎你加入丐帮，测试中直接学会本门所有技能。")
	-- add_gb(10)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	add_gb(70)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	-- AddMagic(210, 1)
-- 结束
	Msg2Player("Hoan ngh猲h b筺 gia nh藀 C竔 bang, tr� th祅h е t� kh玭g t骾! H鋍 頲 Ki課 Nh﹏ Th莕 Th�, Di猲 M玭 Th竎 B竧")
	AddNote("Gia nh藀 C竔 bang, tr� th祅h е t� kh玭g t骾.")
	Msg2Faction("gaibang",GetName().." T� h玬 nay gia nh藀 C竔 bang! Xin b竔 ki課 c竎 v� s� huynh s� t�! Mong c竎 v� quan t﹎ ch� gi竜!",GetName())
	-- NewWorld(115, 1501, 3672)			--把玩家传送到门派入口
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(210, 1)
SetRank(78)
end;




function return_yes()
	NewWorld(115, 1501, 3672)			--把玩家传送到门派入口
end;

function gb_check_yes()			-- 按技能确定任务变量的检查。。。尚未相应更新
	if (GetSeries() ~= 2) then
		Talk(1,"","Ng� h祅h c馻 ngi kh竎 h� H醓 v韎 b鋘 ta!  дn y l祄 g�? H穣 l猲 di詎 n h鋍 h醝 甶!")
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

function gb_check_no()
	Say("C� l阨 g� mu鑞 n鉯 v韎 bang ch� kh玭g? Hay mu鑞 ta a v� T鎛g n?",2,"Xin a t筰 h� v� T鎛g n!/return_yes","Xin chuy觧 d飉 l阨 h醝 th╩ s� ph� /no")
end

function Uworld1000_jiaoyugaibang()
	nt_setTask(1000,260)
	Msg2Player("Ngi  l�  t� c馻 b鎛 bang, kh玭g c莕 甶 n鱝, c� th� tr鵦 ti誴 g苝 Long Ng� n鉯 chuy謓.")
end

function no()
end;
