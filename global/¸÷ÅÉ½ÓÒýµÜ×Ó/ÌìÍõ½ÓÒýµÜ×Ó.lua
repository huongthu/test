-- 天王接引弟子 模板 天王将领
-- By: Dan_Deng(2003-10-28) 由人物对话修改而来
-- Update: Dan_Deng(2004-05-25) 体服技能全开修改（调用外部文件方式）
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "Thi猲 Vng Tng L躰h"

function default_talk()
end

function select()
	UTask_tw = nt_getTask(3)
	UTask_sl = nt_getTask(7)			-- 暂时不允许重返少林再重返天王。
	if ((UTask_sl > 5*256) and (UTask_sl < 10*256)) then		-- 已接了少林入门任务
		Talk(1,"","Tuy huynh  gia nh藀 ph竔 Thi誹 l﹎ nh璶g r秐h r鏸 v蒼 c� th� n Thi猲 vng bang l祄 kh竎h!")
	elseif (GetCamp() == 0) and (GetSeries() == 0) and (UTask_sl < 5*256) and (UTask_tw < 5*256) then		--金系、未入少林天王
		if (GetLevel() >= 10) then					--等级达到十级
			Say("Gia nh藀 b鎛 bang, ch髇g ta s� l� huynh  m閠 nh�, h鋋 ph骳 c飊g hng!", 3, "Gia nh藀 Thi猲 Vng Bang/go", "в ta suy ngh� k� l筰 xem/no","T譵 hi觰 tinh hoa v� ngh� c竎 m玭 ph竔/Uworld1000_knowmagic")
		else
			Talk(1,"","C╪ b秐 c馻 ngi c遪 k衜 l緈! H穣 甶 luy謓 t藀 th猰, bao gi� n <color=Red>c蕄 10<color> l筰 n t譵 ta!")
		end
	end
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(59,21)	  				--设置重生点
	nt_setTask(3, 10*256)
	SetFaction("tianwang")       			--玩家加入天王帮
	SetCamp(3)
	SetCurCamp(3)
	-- SetRank(43)
	nt_setTask(137,63)
	SetLastFactionNumber(1)
-- 直接处理流程
--	nt_setTask(3,80*256)
--	SetRank(69)
--	Msg2Player("欢迎你加入天王帮，测试中直接学会本门所有技能。")
	-- add_tw(10)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	add_tw(70)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	-- AddMagic(210, 1)
-- 结束
	Msg2Player("Hoan ngh猲h b筺 gia nh藀 Thi猲 Vng bang! H穣 kh雐 u t� m閠 ngi Th� v�!")
	Msg2Player("H鋍 頲 v� c玭g Kinh L玦 Tr秏, H錳 Phong L筩 Nh筺, Tr秏 Long Quy誸")
	AddNote("Gia nh藀 Thi猲 Vng Bang, tr� th祅h Th� V�.")
	bilgoMsg2Fac()
	-- NewWorld(59,1552,3188)			--把玩家传送到门派入口
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(210, 1)
SetRank(69)
end;

function bilgoMsg2Fac()
	Msg2Faction(GetFaction(),GetName().." t� h玬 nay gia nh藀 Thi猲 Vng bang, xin b竔 ki課 c竎 v� huynh ! Mong c竎 v� quan t﹎ ch� gi竜!",GetName())
end




function return_yes()
	NewWorld(59, 1425, 3472)			--把玩家传送到门派入口
end;

function tw_check_yes()
	if (GetSeries() ~= 0) then
		Talk(1,"","Ng� h祅h c馻 ngi kh竎 h� Kim v韎 b鋘 ta! дn y l祄 g�? H穣 l猲 di詎 n h鋍 h醝 甶!")
	elseif (HaveMagic(41) >= 0) then		-- 做完了50级任务,血战八方
		nt_setTask(3,60*256)
		Talk(1,"","Ta  ph鬰 h錳 l筰 tr筺g th竔 nhi謒 v� c馻 ngi! B﹜ gi� ngi c� th� 甶 nh薾 nhi謒 v� xu蕋 s� ")
	elseif (HaveMagic(37) >= 0) then		-- 做完了40级任务,泼风斩
		nt_setTask(3,50*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 40.")
	elseif (HaveMagic(36) >= 0) then		-- 做完了30级任务,天王战意
		nt_setTask(3,40*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 30.")
	elseif (HaveMagic(33) >= 0) then		-- 做完了20级任务,静心诀
		nt_setTask(3,30*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 20.")
	elseif (HaveMagic(23) >= 0) then		-- 做完了10级任务,天王枪法
		nt_setTask(3,20*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 10.")
	else
		nt_setTask(3,10*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  c� th� nh薾 nhi謒 v� c蕄 10.")
	end
end

function tw_check_no()
	Say("Huynh ! C� mu鑞 ta a v� o kh玭g?",2,"Л頲!  t� huynh i!/return_yes","Kh玭g c莕 u!  t�!  /return_no")
end


function Uworld1000_jiaoyutianwang()
	nt_setTask(1000,260)
	Msg2Player("е t� ti誴 d蒼 Thi猲 Vng b秓 b筺  l�  t� c馻 bang ph竔, c� th� tr鵦 ti誴 甶 g苝 Long Ng� n鉯 chuy謓.")
end


function no()
end;


