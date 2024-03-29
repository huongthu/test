-- 天王接引弟子 模板 天王将领
-- By: Dan_Deng(2003-10-28) 由人物对话修改而来
-- Update: Dan_Deng(2004-05-25) 体服技能全开修改（调用外部文件方式）
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )

npc_name = "Thi猲 Vng Tng L躰h"

function default_talk()
	player_Faction = GetFaction()
	Uworld1000 = nt_getTask(1000)
	if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 1 ) then
			nt_setTask(1000,250)
			Talk(1,"Uworld1000_jiaoyutianwang","Ngi  l�  t� c馻 b鎛 gi竜, kh玭g c莕 甶 n鱝, c� th� tr鵦 ti誴 g苝 Long Ng� n鉯 chuy謓.")
	elseif (player_Faction == "emei") then				
		Talk(1,"","Thanh Hi觰 S� Th竔 c馻 qu� ph竔 tinh th玭g ph藅 h鋍, v� ngh� cao cng, b鎛 m玭 ngng m�  l﹗!")
	elseif (player_Faction == "cuiyan") then				
		Talk(1,"","N� nh﹏ v鑞  phi襫, n� nh﹏ bi誸 v� c玭g l筰 c祅g phi襫 h琻! Ngi c馻 qu� ph竔 ch髇g ta kh玭g d竚 tr猽 v祇!")
	elseif (player_Faction == "tangmen") then
		Talk(1,"","Ngi h鋍 v� c莕 ph秈 quang minh l鏸 l筩! Ta gh衪 nh蕋 b鋘 ngi d飊g 竚 kh� h� c th� ngi kh竎!")
	elseif (player_Faction == "wudu") then				
		Talk(1,"","Tuy b鎛 bang kh玭g m� mu閕 t輓 nhi謒 b蕋 c� danh m玭 ch輓h ph竔 n祇 nh璶g c騨g coi khinh b鋘 h� c  h蘮!")
	elseif (player_Faction == "shaolin") then				
		Talk(1,"","C玭g phu Thi誹 L﹎ th� c� g� hay ho? H遖 thng c kinh gi醝 m韎 l� ng, h鋍 ngi ta nh nhau  l祄 gi?")
	elseif (player_Faction == "wudang") then				
		Talk(1,"","Xin chuy觧 l阨 h醝 th╩ c馻 t筰 h� n Чo Nh蕋 Ch﹏ Nh﹏! C� d辮 s� n  th豱h gi竜 ngi!")
	elseif (player_Faction == "kunlun") then				
		Talk(1,"","Qu� ph竔 g莕 y ph竧 tri觧 th莕 t鑓! Qu� kh玭g ph秈 h� danh! Nh璶g c騨g ng qu� xem thng v� l﹎ Trung nguy猲!")
	elseif (player_Faction == "tianren") then				
		Talk(1,"","Ch髇g ta quy誸 kh玭g giao h秓 v韎 b鋘 ngi Kim!")
	elseif (player_Faction == "gaibang") then
		Talk(1,"","Qu� bang v� b鎛 bang h頿 th祅h Thi猲 h� lng i bang, c� c� h閕 ch髇g ta n猲 th﹏ thi誸 h琻 n鱝")
	elseif (player_Faction == "tianwang") then
		Say("Huynh ! C� mu鑞 ta a v� o kh玭g?",4,"Л頲!  t� huynh i!/return_yes", "T譵 hi觰 khu v鵦 luy謓 c玭g/map_help","T譵 hi觰 v� ngh� b鎛 m玭/skill_help","Kh玭g c莕 u!  t�!  /no")
--		Say("天王将领：不好意思，因为有些人的任务状态不正确，我们正在重新为门下弟子进行检查。你要检查你的任务状态吗？如果你认为你的状态是正确的就不必检查了。",2,"检查/tw_check_yes","不用了/tw_check_no")
	elseif (nt_getTask(75) == 255) then		-- 学了野球拳的，不允许再入门派
		Talk(1,"","T� h鋍 kh� luy謓! T筰 h� v� c飊g b閕 ph鬰!")
	else						-- 只要不属于10个门派，不再单独检测“无门派”
		UTask_tw = nt_getTask(3)
--		if ((UTask_tw > 5*256) and (UTask_tw < 10*256)) then		-- 入门任务中
--			Talk(1,"","天王将领：你已经在天王岛孙道领处接了本帮的入门任务，但是尚未完成，你需要去巴陵县酒馆买到美酒“蓬莱春”")
		if (UTask_tw >= 70*256) then					--天王帮出师
			Say("H秓 huynh ! Ch髇g ta l筰 g苝 nhau r錳! C� c� h閕 ta s� u鑞g ru c飊g nhau!",3,"T譵 hi觰 s� trng luy謓 c玭g/map_help","T譵 hi觰 v� ngh� b鎛 m玭/skill_help","K誸 th骳 i tho筰/no")
		elseif (UTask_tw == 5*256+80) and (GetByte(nt_getTask(38),1) == 127) then		-- 天王记名完成，但是有BUG的人的修补
			Talk(1,"","Th藅 xin l鏸! L骳 ngi ti課 h祅h nhi謒 v� K� danh  t�, ch髇g ta ghi gh衟 c� sai s鉻! Nh璶g b﹜ gi�  s鯽 l筰 r錳")
			if (HaveMagic(29) >= 0) then		-- 学会了斩龙诀的（本门弟子），设置为已出师
				nt_setTask(3,70*256)
			else										-- 否则就清零，包括以前叛到少林的。
				nt_setTask(3,0)
			end
		else
			Talk(3, "select", "Bang ch� Dng Anh v� ngh� cao cng, gan d� h琻 ngi, kh玭g k衜 g� tu mi nam t�!", "B鎛 m玭 quy lu藅 uy nghi猰, ngi ng th� m筺h! Kh玭g ai trong thi猲 h� d竚 coi khinh!", "B鎛 bang v鮝 ch鑞g Kim v鮝 kh竛g T鑞g! Huynh  u xu蕋 th﹏ l� d﹏ ngh蘯, phi猽 b箃 giang h� l� v� k� sinh nhai! Ai l祄 vua b鋘 ta ch� c莕 quan t﹎")
		end
	end
end;

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
	SetRevPos(59,21)	  				--设置重生点
	nt_setTask(3, 10*256)
	SetFaction("tianwang")       			--玩家加入天王帮
	SetCamp(3)
	SetCurCamp(3)
	SetRank(43)
	nt_setTask(137,63)
	SetLastFactionNumber(1)
-- 直接处理流程
--	nt_setTask(3,80*256)
--	SetRank(69)
--	Msg2Player("欢迎你加入天王帮，测试中直接学会本门所有技能。")
	add_tw(10)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
-- 结束
	Msg2Player("Hoan ngh猲h b筺 gia nh藀 Thi猲 Vng bang! H穣 kh雐 u t� m閠 ngi Th� v�!")
	Msg2Player("H鋍 頲 v� c玭g Kinh L玦 Tr秏, H錳 Phong L筩 Nh筺, Tr秏 Long Quy誸")
	AddNote("Gia nh藀 Thi猲 Vng Bang, tr� th祅h Th� V�.")
	Msg2Faction("tianwang",GetName().." t� h玬 nay gia nh藀 Thi猲 Vng bang, xin b竔 ki課 c竎 v� huynh ! Mong c竎 v� quan t﹎ ch� gi竜!",GetName())
	NewWorld(59,1552,3188)			--把玩家传送到门派入口
end;

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


