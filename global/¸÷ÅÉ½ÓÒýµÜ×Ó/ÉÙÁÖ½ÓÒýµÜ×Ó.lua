-- 各门派接引弟子脚本　少林
-- By: Dan_Deng(2003-10-27)
-- Update: Dan_Deng(2004-05-25) 体服技能全开修改（调用外部文件方式）
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "Thi誹 L﹎ La H竛"

function default_talk()
end

function defection_get()
	Talk(1,"","A di  ph藅! Huynh ch� c莕 th豱h c莡 qu� bang Dng bang ch�  r阨 kh醝 Thi猲 vng bang, r錳 n b萴 b竜 v韎 Huy襫 Nh﹏ phng trng l� c� th� nh藀 n t� t�!")
	nt_setTask(7,5*256+10)
	Msg2Player("Ch� c莕 th豱h c莡 Dng bang ch�  r阨 kh醝 Thi猲 vng bang, r錳 n b萴 b竜 v韎 Huy襫 Nh﹏ phng trng l� c� th� gia nh藀 Thi誹 l﹎!")
	AddNote("Ch� c莕 th豱h c莡 Dng bang ch�  r阨 kh醝 Thi猲 vng bang, r錳 n b萴 b竜 v韎 Huy襫 Nh﹏ phng trng l� c� th� gia nh藀 Thi誹 l﹎!")
end

function defection_no()
	Talk(1,"","V� ngh� b鎛 bang c騨g c� s� trng ri猲g kh玭g thua k衜 Thi誹 L﹎! Ta nguy謓 trung th祅h v韎 Dng bang ch� ")
end

function enroll_select()
	UTask_sl = nt_getTask(7)
	UTask_tw = nt_getTask(3)
	if ((UTask_tw > 5*256) and (UTask_tw < 10*256)) then		-- 已接了入门任务
		Talk(1,"","Thi猲 Vng bang 產ng l� c竔 gai trong m総 Kim qu鑓! Ngi ch鋘 nh� th� ch璦 h糿 l� t鑤!")
	elseif (GetSeries() == 0) and (GetCamp() == 0) and (UTask_tw < 5*256) and (UTask_sl < 5*256) then		--金系、未入天王少林
		if ((GetLevel() >= 10) and (HaveMagic(29) == -1)) then						--等级达到十级（并且没学过“斩龙决”）
			Say("Thi誹 L﹎ kh玭g h� danh l� danh m玭 ch輓h ph竔! Huynh  c� mu鑞 gia nh藀 kh玭g?", 3, "Gia nh藀 Thi誹 L﹎ ph竔/go", "в ta suy ngh� k� l筰 xem/no","T譵 hi觰 tinh hoa v� ngh� c竎 m玭 ph竔/Uworld1000_knowmagic")
		else
			Talk(1,"","C╪ b秐 c馻 ngi c遪 k衜 l緈! H穣 甶 luy謓 t藀 th猰, bao gi� n c蕄 10 l筰 n t譵 ta!")
		end
	end		-- 不是金系的就不再多说话了。
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(103,51)		  			--设置重生点
	nt_setTask(7,10*256)				-- 直接入门
	SetFaction("shaolin")       			--玩家加入门派
	SetCamp(1)
	SetCurCamp(1)
	-- SetRank(1)
	nt_setTask(137,67)
	SetLastFactionNumber(0)
-- 直接处理流程
--	nt_setTask(7,80*256)
--	SetRank(72)
--	Msg2Player("欢迎你加入少林派，测试中直接学会本门所有技能。")
	-- add_sl(10)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	add_sl(70)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	-- AddMagic(210, 1)
-- 结束
	Msg2Player("Hoan ngh猲h b筺 gia nh藀 Thi誹 L﹎, tr� th祅h T秓 мa t╪g! H鋍 頲 H祅g Long B蕋 V�, Kim Cang Ph鬰 Ma ")
	AddNote("Gia Nh藀 Thi誹 L﹎ ph竔, tr� th祅h T秓 мa t╪g.")
	Msg2Faction("shaolin",GetName().." t� h玬 nay gia nh藀 Thi誹 l﹎, xin b竔 ki課 c竎 v� huynh ! Mong c竎 v� quan t﹎ ch� gi竜!",GetName())
	-- NewWorld(103, 1845, 2983)			--把玩家传送到门派入口
AddMagic(318,20)
AddMagic(319,20)
AddMagic(321,20)
AddMagic(709,20)
AddMagic(210, 1)
SetRank(72)
end;




function return_yes()
	NewWorld(103, 1845, 2983)			--把玩家传送到门派入口
end;

function sl_check_yes()			-- 按技能确定任务变量的检查。。。尚未相应更新
	if (GetSeries() ~= 2) then
		Talk(1,"","Ng� h祅h c馻 ngi kh竎 h� Kim v韎 b鋘 ta!  дn y l祄 g�? H穣 l猲 di詎 n h鋍 h醝 甶!")
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
	Say("S� ! S� ph� l筰 ph竔  xu鑞g n骾 �?",2,"V﹏g! Nh� s� huynh a  v� n骾!/return_yes","Xin thay ta v蕁 an s� ph� /no")
end

function Uworld1000_jiaoyushaolin()
	nt_setTask(1000,260)
	Msg2Player("е t� ti誴 d蒼 Thi誹 L﹎ b秓 b筺  l�  t� c馻 m玭 ph竔, c� th� tr鵦 ti誴 甶 g苝 Long Ng� n鉯 chuy謓.")
end

function no()
end;
