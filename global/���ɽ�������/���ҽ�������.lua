-- 峨嵋接引弟子 模板 峨嵋锦衣尼
-- By: Dan_Deng(2003-10-28) 由人物对话修改而来
-- Update: Dan_Deng(2004-05-25) 体服技能全开修改（调用外部文件方式）
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "Nga My C萴 Y Ni"

function default_talk()
end

function select()
	UTask_em = nt_getTask(1)
	UTask_cy = nt_getTask(6)
	if ((UTask_cy > 5*256) and (UTask_cy < 10*256)) then		-- 已接了翠烟入门任务
		Talk(1,"","C� ngi n祔 v鑞 l� mu鑞 gia nh藀 Th髖 Y猲 m玭! M鏸 ngi c� ch� hng ri猲g c馻 m譶h! Ta c騨g kh玭g mi詎 cng! ")
	elseif (GetSeries() == 2) and (GetCamp() == 0) and (UTask_cy < 5*256) and (UTask_em < 5*256) then		--水系、未入翠烟峨嵋
		if (GetLevel() >= 10) then						--等级达到十级
			Say("Gia nh藀 Nga My ph竔, ch髇g ta s� l� t� mu閕 1 nh�!  H鋋 ph骳 c飊g hng! ", 3, "Gia nh藀 Nga Mi ph竔/go", "в ta suy ngh� k� l筰 xem/no","T譵 hi觰 tinh hoa v� ngh� c竎 m玭 ph竔/Uworld1000_knowmagic")
		else
			Say("Trc ti猲 mu閕 h穣 luy謓 t藀 l筰 c╪ b秐, t n <color=Red>c蕄 10<color> ch髇g ta s� l� t� mu閕 1 nh�! ", 0)		
		end
	end		-- 不是水系的就不再多说话了。
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(13,13)		  			--设置重生点
	nt_setTask(1, 10*256)				-- 直接入门
	SetFaction("emei")       			--玩家加入峨嵋派
	SetCamp(1)
	SetCurCamp(1)
	-- SetRank(13)
	nt_setTask(137,61)
	SetLastFactionNumber(4)
-- 直接处理流程
--	nt_setTask(1,80*256)
--	SetRank(63)
--	Msg2Player("欢迎你加入峨嵋派，测试中直接学会本门所有技能。")
	-- add_em(10)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	add_em(70)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	-- AddMagic(210, 1)
-- 结束
	Msg2Player("Hoan ngh猲h b筺 gia nh藀 Nga Mi ph竔, tr� th祅h B� Y Ni. H鋍 頲 Nh蕋 Di謕 Tri Thu, Phi猽 Tuy誸 Xuy猲 V﹏")
	AddNote("gia nh藀 Nga Mi Ph竔, tr� th祅h B� Y Ni")
	Msg2Faction("emei",GetName().." t� h玬 nay gia nh藀 Nga Mi ph竔. Xin b竔 ki課 c竎 v� s� t�. Mong c竎 v� quan t﹎ ch� gi竜!",GetName())
	-- NewWorld(13, 1898, 4978)			--把玩家传送到门派入口
AddMagic(328,20)
AddMagic(380,20)
AddMagic(712,20)
AddMagic(332)
AddMagic(210, 1)
SetRank(63)
end;


function return_yes()
	NewWorld(13, 1898, 4978)			--把玩家传送到门派入口
end;

function em_check_yes()
	if (GetSeries() ~= 2) then
		Talk(1,"","Ng� h祅h c馻 ngi kh竎 v韎 b鋘 ta!  дn y l祄 g�? H穣 l猲 di詎 n h鋍 h醝 th猰!")
	elseif (HaveMagic(91) >= 0) then		-- 做完了50级任务,佛光普照
		nt_setTask(1,60*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  c� th� 甶 nh薾 nhi謒 v� xu蕋 s�.")
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
	Say("Ti觰 s� mu閕 l筰 xu鑞g n骾 ch琲 �? C� c莕 ta a v� n骾 kh玭g?",2,"L筰 l祄 phi襫 t� t� n鱝 r錳!/return_yes","Kh玭g c莕 u!  t� S� t� /return_no")
end

function Uworld1000_jiaoyuemei()
	nt_setTask(1000,260)
	Msg2Player("е t� ti誴 d蒼 Nga Mi b秓 b筺  l�  t� c馻 m玭 ph竔, c� th� tr鵦 ti誴 g苝 Long Ng� n鉯 chuy謓.")
end

function no()
end;
