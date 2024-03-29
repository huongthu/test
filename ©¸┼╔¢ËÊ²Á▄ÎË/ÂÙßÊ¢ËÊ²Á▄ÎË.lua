-- 峨嵋接引弟子 模板 峨嵋锦衣尼
-- By: Dan_Deng(2003-10-28) 由人物对话修改而来
-- Update: Dan_Deng(2004-05-25) 体服技能全开修改（调用外部文件方式）
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "Nga My C萴 Y Ni"

function default_talk()
	player_Faction = GetFaction()
	Uworld1000 = nt_getTask(1000)
	if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 4 ) then
			nt_setTask(1000,250)
			Talk(1,"Uworld1000_jiaoyuemei","Ngi  l�  t� c馻 b鎛 ph竔, kh玭g c莕 甶 n鱝, c� th� tr鵦 ti誴 g苝 Long Ng� n鉯 chuy謓.")
	elseif (player_Faction == "emei") then
		Say("Ti觰 s� mu閕 l筰 xu鑞g n骾 ch琲 �? C� c莕 ta a v� n骾 kh玭g?",4,"L筰 l祄 phi襫 t� t� n鱝 r錳!/return_yes", "T譵 hi觰 khu v鵦 luy謓 c玭g/map_help","T譵 hi觰 v� ngh� b鎛 m玭/skill_help","Kh玭g c莕 u!  t� S� t� /no")
--		Say("峨嵋锦衣尼：不好意思，因为有些人的任务状态不正确，我们正在重新为门下弟子进行检查。你要检查你的任务状态吗？如果你认为你的状态是正确的就不必检查了。",2,"检查/em_check_yes","不用了/em_check_no")
	elseif (player_Faction == "cuiyan") then				
		Talk(1,"","Qu� ph竔 danh ch蕁 V﹏ Nam. Trc gi� ch璦 c飊g b鎛 ph竔 qua l筰. Kh玭g bi誸 c� g� ch� gi竜! ")
	elseif (player_Faction == "tangmen") then
		Talk(1,"","Ngi l� ngi c馻 Th鬰 Nam Л阯g M玭? B鎛 m玭 l� danh m玭 ch竛h ph竔, trc gi� kh玭g qua l筰 v韎 nh鱪g ngi c� t� tng kh玭g ch輓h th鑞g")
	elseif (player_Faction == "wudu") then
		Talk(1,"","B鋘 t� ma ngo筰 o c竎 ngi!  Ai ai c騨g mu鑞 ti猽 di謙! ")
	elseif (player_Faction == "tianwang") then
		Talk(1,"","Qu� bang bang ch� Dng Anh l� m閠 b薱 n� trung h祇 ki謙!  B莕 ni t� l﹗ ngng m�!  Mong s� c� ng祔 di謓 ki課! ")
	elseif (player_Faction == "shaolin") then
		Talk(1,"","A di  ph藅!  Th� ra l� h遖 thng  Thi誹 l﹎, kh玭g bi誸 Huy襫 Nh﹏ i s� g莕 y c� kh醗 kh玭g?")
	elseif (player_Faction == "wudang") then
		Talk(1,"","V� 產ng hi謕 ngh躠, danh ch蕁 thi猲 h�. Чo Nh蕋 Ch﹏ Nh﹏ c馻 qu� ph竔 v� chng m玭 c馻 b鎛 ph竔 giao t譶h th﹎ s﹗. Hai ph竔 ch髇g ta c� th� n鉯 l�  anh em m閠 nh� ")
	elseif (player_Faction == "kunlun") then
		Talk(1,"","T� ph竔 v� qu� ph竔 ch璦 h� qua l筰, kh玭g bi誸 c� g� ch� gi竜!?")
	elseif (player_Faction == "tianren") then
		Talk(1,"","C竎 ngi ph� thu閏 Kim qu鑓, lu玭 d適 ng� giang s琻  Чi t鑞g ta. V� l﹎ ch輓h ph竔 ch髇g ta v� c竎 ngi th� kh玭g i tr阨 chung! ")
	elseif (player_Faction == "gaibang") then
		Talk(1,"","Qu� bang ngi ng th� m筺h, h祇 kh� xung thi猲, b鎛 gi竜 r蕋 vui 頲 k誸 giao v韎 nh鱪g b籲g h鱱 nh� v藋! ")
	elseif (nt_getTask(75) == 255) then		-- 学了野球拳的，不允许再入门派
		Talk(1,"","T� h鋍 kh� luy謓!  B莕 ni v� c飊g b閕 ph鬰! ")
	else						-- 只要不属于10个门派，不再单独检测“无门派”
		UTask_em = nt_getTask(1)
		if ((UTask_em > 5*256) and (UTask_em < 10*256)) then		-- 入门任务中
			Talk(1,"","Mu閕  ti誴 nh薾 nhi謒 v� nh藀 m玭 v韎  Di謕 B╪g H﹏ nh璶g v蒼 ch璦 ho祅 th祅h. Trc ti猲 h穣 th玭g qua cu閏 kh秓 nghi謒 Tr� C莔 Th�, sau   l猲 d鑓 To祅 Thi猲 Ph� l蕐 B筩h Ng鋍 Nh� �! ")
		elseif (UTask_em >= 70*256) and (player_Faction ~= "emei") then					--已经出师
			Say("Th� ra l� S� t�, d筼 n祔 c� kh醗 kh玭g?",3,"T譵 hi觰 s� trng luy謓 c玭g/map_help","T譵 hi觰 v� ngh� b鎛 m玭/skill_help","K誸 th骳 i tho筰/no")
		else
			Talk(1,"select","Trong thi猲 h� c竎 m玭 ph竔 do n� nhi s竛g l藀 th� b鎛 m玭 ng u!  е t� b鎛 m玭 kh玭g nh鱪g v� ngh� cao cng, c莔 k� thi h鋋 u tinh th玭g!  Ai n鉯 giang h� l� th� gi韎 c馻 nam nh﹏ th� c� nh譶 b鎛 ph竔 m� l祄 gng")
		end
	end
end;

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
	SetRevPos(13,13)		  			--设置重生点
	nt_setTask(1, 10*256)				-- 直接入门
	SetFaction("emei")       			--玩家加入峨嵋派
	SetCamp(1)
	SetCurCamp(1)
	SetRank(13)
	nt_setTask(137,61)
	SetLastFactionNumber(4)
-- 直接处理流程
--	nt_setTask(1,80*256)
--	SetRank(63)
--	Msg2Player("欢迎你加入峨嵋派，测试中直接学会本门所有技能。")
	add_em(10)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
-- 结束
	Msg2Player("Hoan ngh猲h b筺 gia nh藀 Nga Mi ph竔, tr� th祅h B� Y Ni. H鋍 頲 Nh蕋 Di謕 Tri Thu, Phi猽 Tuy誸 Xuy猲 V﹏")
	AddNote("gia nh藀 Nga Mi Ph竔, tr� th祅h B� Y Ni")
	Msg2Faction("emei",GetName().."t� h玬 nay gia nh藀 Nga Mi ph竔. Xin b竔 ki課 c竎 v� s� t�. Mong c竎 v� quan t﹎ ch� gi竜!",GetName())
	NewWorld(13, 1898, 4978)			--把玩家传送到门派入口

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
