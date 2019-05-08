-- 各门派接引弟子脚本　昆仑
-- By: Dan_Deng(2003-10-27)
-- Update: Dan_Deng(2004-05-25) 体服技能全开修改（调用外部文件方式）
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "C玭 L玭 H� Ph竝"

function default_talk()
	player_Faction = GetFaction()
	Uworld1000 = nt_getTask(1000)
	if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 9 ) then
			nt_setTask(1000,250)
			Talk(1,"Uworld1000_jiaoyukunlun","Ngi  l�  t� c馻 b鎛 ph竔, kh玭g c莕 甶 n鱝, c� th� tr鵦 ti誴 g苝 Long Ng� n鉯 chuy謓.")
	elseif (player_Faction == "cuiyan") then
		Talk(1,"","Qu� ng l� m� n�! Ngi x� T﹜ B綾 kh� h祅 kh� m� s竛h 頲! ")
	elseif (player_Faction == "emei") then				
		Talk(1,"","N� l璾 th� n猲 h鋍 c竎h ch╩ s鉩 ch錸g con! Vung gm m骯 ki誱 ch糿g ra th� th鑞g g�!  ng l� th阨 th� o lo筺! ")
	elseif (player_Faction == "tangmen") then
		Talk(1,"","Л阯g m玭 竚 kh� l祄 sao c� th� so s竛h v韎 ch� thu藅 o ph竝 thi猲 t玭 c馻 b鋘 ta! ")
	elseif (player_Faction == "wudu") then
		Talk(1,"","A! T� ma ngo筰 o l筰 d竚 xu蕋 hi謓 � y! H穣 xem thanh ki誱 c馻 l穙 gia y! ")
	elseif (player_Faction == "tianwang") then
		Talk(1,"","Thi猲 vng bang tuy hi謓 nay kh� m筺h, nh璶g do m閠 n� l璾 l穘h o!  R錳 c騨g c� ng祔 l祄 ti猽 tan c� nghi謕")
	elseif (player_Faction == "shaolin") then
		Talk(1,"","Ai c騨g b秓 Thi誹 l﹎ l� v� h鋍 ch輓h t玭g nh璶g s竛h sao 頲 v韎 Thi猲 s� o thu藅 c馻 C玭 L玭 ta?")
	elseif (player_Faction == "wudang") then
		Talk(1,"","Hai ph竔 ch髇g ta c飊g thu閏 o gia!  Vi謈 g� c� ph秈 ph﹏ tranh cao th蕄! ")
	elseif (player_Faction == "kunlun") then
		Say("Th� gi韎 ngo礽 kia ti p ch� kh玭g nh� x� T﹜ b綾 kh� h祅 n祔! C� mu鑞 甶 v� kh玭g?",4,"V� th玦!  t� o huynh! /return_yes","T譵 hi觰 khu v鵦 luy謓 c玭g/map_help","T譵 hi觰 v� ngh� b鎛 m玭/skill_help","Ch琲 vui nh� th� n祔, v� s韒 l祄 g�?/no")
	elseif (player_Faction == "tianren") then
		Talk(1,"","Di謙 s筩h c萿 Kim ch輓h l� b鎛 ph薾 c� i ta!  L筰 y n誱 th� m閠 ki誱 c馻 l穙 gia n祇! ")
	elseif (player_Faction == "gaibang") then
		Talk(1,"","C竔 bang anh h飊g!  H�!  Th鵦 ch蕋 ch� l� m閠 b鋘 � h頿 ch� ra g�! ")
	elseif (nt_getTask(75) == 255) then		-- 学了野球拳的，不允许再入门派
		Talk(1,"","T� h鋍 kh� luy謓!  T筰 h� v� c飊g b閕 ph鬰! ")
	else						-- 只要不属于10个门派，不再单独检测“无门派”
		UTask_kl = nt_getTask(9)
--		if (GetSeries() == 4) and (GetCamp() == 4) and (GetLevel() >= 50) and (UTask_kl < 5*256) and (nt_getTask(5) == 70*256) then		-- 转门派任务启动
--			Say("昆仑护法：跟着道一老儿有什么好混的嘛，道一那老家伙四岁才会说话，七岁还尿裤子，你想你跟着他有什么前途！不如来我们昆仑派算了，象哥哥我这样仙风道骨，难道你不羡慕吗？",2,"嗯...可以考虑/defection_get","造谣诽谤，招摇撞骗之徒，我呸！/no")
		if ((UTask_kl > 5*256) and (UTask_kl < 10*256)) then		-- 入门任务中
			Talk(1,"","B鎛 ph竔 kh玭g nh薾 nh鱪g k� li bi課g!  Trc ti猲 h穣 ho祅 th祅h nhi謒 v� nh藀 m玭, sau h穣 t輓h! ")
		elseif (UTask_kl >= 70*256) and (player_Faction ~= "kunlun") then					--已经出师
			Say("Nghe n鉯 sau khi ngi xu鑞g n骾  l藀 ch髏 c玭g danh, c� nh� n s�  s� mu閕 ch髇g ta kh玭g?",3,"T譵 hi觰 s� trng luy謓 c玭g/map_help","T譵 hi觰 v� ngh� b鎛 m玭/skill_help","K誸 th骳 i tho筰/no")
		else
			Talk(1,"enroll_select","C玭 L玭 ph竔 � T﹜ V鵦 xa x玦, r蕋 輙 giao h秓 v韎 Trung Nguy猲. Tr秈 qua m蕐 i chng m玭  d莕 tr� th祅h m閠 trong Nh蕋 i m玭 ph竔. ")
		end
	end
end;

function defection_get()
	Talk(1,"","Ngi m韎 l� anh h飊g th鴆 th阨!  H穣 mau 甶 n鉯 v韎 l穙 Чo nhi, sau  n di謓 ki課 chng m玭 Tuy襫 C� T� c馻 ta  xin nh藀 m玭! ")
	nt_setTask(9,5*256+10)
	Msg2Player("Mu鑞 gia nh藀 C玭 L玭 ph竔, h穣 甶 xin ph衟 Чo Nh蕋 Ch﹏ Nh﹏, sau  n di謓 ki課 chng m玭 Tuy襫 C� T� l� 頲!")
	AddNote("Mu鑞 gia nh藀 C玭 L玭 ph竔, h穣 甶 xin ph衟 Чo Nh蕋 Ch﹏ Nh﹏, sau  n di謓 ki課 chng m玭 Tuy襫 C� T� l� 頲!")
end

function enroll_select()
	UTask_kl = nt_getTask(9)
	UTask_wd = nt_getTask(5)
	if ((UTask_wd > 5*256) and (UTask_wd < 10*256)) then		-- 已接了武当入门任务
		Talk(1,"","Th� ra ngi v鑞 mu鑞 gia nh藀 V� ng!  C騨g t鑤 th玦!  Nh﹏ s� Trung nguy猲 th輈h s飊g b竔 c竎 danh m玭 ch輓h ph竔")
	elseif (GetSeries() == 4) and (GetCamp() == 0) and (UTask_wd < 5*256) and (UTask_kl < 5*256) then		--水系、未入武当昆仑
		if (GetLevel() >= 10) then						--等级达到十级
			Say("B鎛 m玭 tinh th玭g o ch� ki誱 thu藅. B鋘 V� ng  l� c竔 th� g� ch�!  C� mu鑞 gia nh藀 b鎛 ph竔 kh玭g?", 3, "Gia nh藀 C玭 L玭/go", "в ta suy ngh� k� l筰 xem/no","T譵 hi觰 tinh hoa v� ngh� c竎 m玭 ph竔/Uworld1000_knowmagic")
		else
			Talk(1,"","C╪ b秐 c馻 ngi c遪 k衜 qu�!  H穣 luy謓 n c蕄 10 甶 r錳 n t譵 ta! ")
		end
	end		-- 不是土系的就不再多说话了。
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	SetRevPos(131,57)		  				-- 等待提供重生点
	nt_setTask(9,10*256)						-- 直接入门
	SetFaction("kunlun")      			-- 玩家加入昆仑
	SetCamp(3)
	SetCurCamp(3)
	SetRank(19)
	nt_setTask(137,69)
	SetLastFactionNumber(9)
-- 直接处理流程
--	nt_setTask(9,80*256)
--	SetRank(75)
--	Msg2Player("欢迎你加入武当派，测试中直接学会本门所有技能。")
	add_kl(10)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
-- 结束
	Msg2Player("Hoan ngh猲h b筺 gia nh藀 C玭 L玭 ph竔. Tr� th祅h Ph蕋 tr莕  t�! H鋍 頲 H� Phong Ph竝, Cu錸g L玦 Ch蕁 мa")
	AddNote("Gia nh藀 C玭 L玭 ph竔, tr� th祅h Ph蕋 Tr莕  t�.")
	Msg2Faction("kunlun",GetName().."t� h玬 nay gia nh藀 C玭 L玭 ph竔! Xin b竔 ki課 c竎 v� o huynh s� t�! Mong c竎 v� quan t﹎ ch� gi竜!",GetName())
	NewWorld(131, 1582, 3175)			-- 等待提供坐标

end;

function return_yes()
	NewWorld(131, 1582, 3175)			--把玩家传送到门派入口
end;

function kl_check_yes()			-- 按技能确定任务变量的检查。。。尚未相应更新
	if (GetSeries() ~= 2) then
		Talk(1,"","Ng� h祅h c馻 ngi kh竎 v韎 b鋘 ta!  дn y l祄 g�? H穣 l猲 di詎 n h鋍 h醝 th猰!")
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
	Say("Th� gi韎 ngo礽 kia ti p ch� kh玭g nh� x� T﹜ b綾 kh� h祅 n祔! C� mu鑞 甶 v� kh玭g?",2,"V� th玦!  t� o huynh! /return_yes","Ch琲 vui nh� th� n祔, v� s韒 l祄 g�?/no")
end

function Uworld1000_jiaoyukunlun()
	nt_setTask(1000,260)
	Msg2Player("е t� ti誴 d蒼 C玭 L玭 ph竔 b秓 b筺 kh玭g c莕 甶 n鱝, c� th� tr鵦 ti誴 g苝 Long Ng� n鉯 chuy謓")
end

function no()
end;
