-- 唐门接引弟子 模板 唐门侍卫
-- By: Dan_Deng(2003-10-28) 由人物对话修改而来
-- Update: Dan_Deng(2004-05-25) 体服技能全开修改（调用外部文件方式）
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "Л阯g M玭 Th� v� "

function default_talk()
	player_Faction = GetFaction()
	Uworld1000 = nt_getTask(1000)
	if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 2 ) then
			nt_setTask(1000,250)
			Talk(1,"Uworld1000_jiaoyutangmen","Ngi  l�  t� c馻 b鎛 ph竔, kh玭g c莕 甶 n鱝, c� th� tr鵦 ti誴 g苝 Long Ng� n鉯 chuy謓.")
	elseif (player_Faction == "tangmen") then
		Say("M玭 ch� ph竔 ngi n y l祄 g�??",4,"Xin a t筰 h� v� T鎛g n!/return_yes","T譵 hi觰 khu v鵦 luy謓 c玭g/map_help","T譵 hi觰 v� ngh� b鎛 m玭/skill_help","Ta ph秈 甶 l祄 vi謈 kh竎 y/no")
--		Say("唐门侍卫：不好意思，因为有些人的任务状态不正确，我们正在重新为门下弟子进行检查。你要检查你的任务状态吗？如果你认为你的状态是正确的就不必检查了。",2,"检查/tm_check_yes","不用了/tm_check_no")
	elseif (player_Faction == "emei") then				
		Talk(1,"","Qu� ph竔 i v� b鎛 m玭 trc t韎 nay ch璦 h� qua l筰! Kh玭g bi誸 c� g� ch� gi竜!")
	elseif (player_Faction == "cuiyan") then
		Talk(1,"","B鎛 m玭 h祅h s� tuy kh玭g theo lu藅 l�, nh璶g c騨g kh玭g bao gi� b総 n箃 nh鱪g ph� n� y誹 畊鑙!")
	elseif (player_Faction == "wudu") then
		Talk(1,"","чc dc c馻 Ng� c gi竜 tuy l頸 h筰 nh璶g c騨g ch璦 ch綾  th緉g 頲 竚 kh� c馻 Л阯g m玭! L骳 n祇 r秐h r鏸 ta xin th豱h gi竜 v礽 chi猽!")
	elseif (player_Faction == "tianwang") then
		Talk(1,"","Qu� bang xa t薾 чng ёnh H�, trc gi� h譶h nh� ch璦 qua l筰 v韎 b鎛 bang! Xin h醝 c� g� ch� gi竜?!")
	elseif (player_Faction == "shaolin") then
		Talk(1,"","B鎛 m玭 x璦 nay v鑞 ch糿g 璦 g� c竔 b鋘 t� x璶g l� danh m玭 ch輓h ph竔 c竎 ngi")
	elseif (player_Faction == "wudang") then
		Talk(1,"","B鎛 m玭 x璦 nay v鑞 ch糿g 璦 g� c竔 b鋘 t� x璶g l� danh m玭 ch輓h ph竔 c竎 ngi")
	elseif (player_Faction == "kunlun") then
		Talk(1,"","C� g� ch� gi竜?")
	elseif (player_Faction == "tianren") then
		Talk(1,"","Ta ngi v鑞 kh玭g ch th�, c騨g ch璦 k誸 qua b籲g h鱱! Kh玭g bi誸 ph秈 i i th� n祇 cho ti謓 y!")
	elseif (player_Faction == "gaibang") then
		Talk(1,"","Kh玭g ng� c竔 b鋘 ╪ m祔  m� c騨g c� th� vang danh thi猲 h�! T筰 h� th藅 mu玭 ph莕 b竔 ph鬰")
	elseif (nt_getTask(75) == 255) then		-- 学了野球拳的，不允许再入门派
		Talk(1,"","T� h鋍 kh� luy謓! Ti襫  r蕋 s竛g l筺! T筰 h� v� c飊g b閕 ph鬰!")
	else
		UTask_tm = nt_getTask(2)
		if ((UTask_tm > 5*256) and (UTask_tm < 10*256)) then		-- 入门任务中
			Talk(1,"","Ngi  ti誴 nh薾 nhi謒 v� nh藀 m玭 � Tr骳 H秈 Tam Quan n gi� v蒼 ch璦 ho祅 th祅h. H穣 mau 甶 l蕐 3 c﹜ g藋 tr骳 Xanh, T輒, Tr緉g mang n giao cho ng m玭 � l鑙 ra!")
		elseif (UTask_tm >= 70) and (GetFaction() ~= "tangmen") then					--已经出师
			Say("L﹗ qu� kh玭g g苝! Sau khi xu蕋 s�  l藀 n猲 k� t輈h g� ch璦? K� nghe th�!",3,"T譵 hi觰 s� trng luy謓 c玭g/map_help","T譵 hi觰 v� ngh� b鎛 m玭/skill_help","K誸 th骳 i tho筰/no")
		else
			Talk(2, "select", "Л阯g m玭 h飊g c� Xuy猲 Th鬰, 竚 kh� v� h醓 kh�  l鮪g danh thi猲 h�. Ngi trong giang h� nghe n Л阯g m玭 th秠 u bi課 s綾,  th蕐 s� l頸 h筰 c馻 b鎛 m玭", "C竔 g� l� V� l﹎ ch輓h o, d﹏ t閏 i ngh躠? To祅 l� b鋘 l竜 to衪. B鎛 m玭 kh玭g 璦 b鋘 ch輓h o, c騨g ch糿g k誸 giao v韎 t� o. Mu鑞 gia nh藀 b鎛 m玭 kh玭g ph秈 l� chuy謓 n gi秐!")
		end
	end
end;

function select()
	UTask_tm = nt_getTask(2)
	UTask_wu = nt_getTask(10)
	if ((UTask_wu > 5*256) and (UTask_wu < 10*256)) then		-- 已接了五毒入门任务
		Talk(1,"","T礽 hoa tu蕁 ki謙 nh� ngi, l筰 甶 gia nh﹑ Ng� чc gi竜.Ch薱! Цng ti誧! Цng ti誧!")
	elseif (GetSeries() == 1) and (GetCamp() == 0) and (UTask_wu < 5*256) and (UTask_tm < 5*256) then		--木系、未入五毒唐门
		if (GetLevel() >= 10) then						--等级达到十级
			Say("B鎛 m玭 竚 kh�  l鮪g danh thi猲 h�. C筸 b蓎 thu藅 c騨g khi課 v� l﹎ nhi襲 phen khi誴 v輆. Ngi c� mu鑞 t譵 hi觰 m閠 v礽 s� trng kh玭g?", 3, "Gia nh藀 Л阯g M玭/go", "в ta suy ngh� k� l筰 xem/no","T譵 hi觰 tinh hoa v� ngh� c竎 m玭 ph竔/Uworld1000_knowmagic")
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
	SetRevPos(25,15)	 				--设置重生点
	nt_setTask(2, 10*256)
	SetFaction("tangmen")      				--玩家加入唐门
	SetCamp(3)
	SetCurCamp(3)
	SetRank(25)
	nt_setTask(137,62)
	SetLastFactionNumber(2)
-- 直接处理流程
--	nt_setTask(2,80*256)
--	SetRank(76)
--	Msg2Player("欢迎你加入唐门，测试中直接学会本门所有技能。")
	add_tm(10)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
-- 结束
	Msg2Player("Hoan ngh猲h b筺 gia nh藀 Л阯g m�, tr� th祅h T筽 d辌h! H鋍 頲 v� c玭g T輈h L辌h Кn")
	AddNote("Gia nh藀 Л阯g M玭, tr� th祅h T筽 d辌h.")
	Msg2Faction("tangmen",GetName().."t� h玬 nay gia nh藀 Л阯g M玭, xin b竔 ki課 c竎 v� huynh t�. Mong c竎 v� quan t﹎ ch� gi竜!",GetName())
	NewWorld(25, 3982, 5235)				--把玩家传送到门派入口

end;

function return_yes()
	NewWorld(25, 3982, 5235)			--把玩家传送到门派入口
end;

function tm_check_yes()
	if (GetSeries() ~= 1) then
		Talk(1,"","Ngi kh玭g thu閏 nh鉳 Ng� h祅h c馻 ta, n y l祄 g�? H穣 l猲 di詎 n h鋍 h醝 th猰 甶")
	elseif (HaveMagic(58) >= 0) then		-- 做完了50级任务,天罗地网
		nt_setTask(2,60*256)
		Talk(1,"","Ta  ph鬰 h錳 l筰 tr筺g th竔 nhi謒 v� c馻 ngi! B﹜ gi� ngi c� th� 甶 nh薾 nhi謒 v� xu蕋 s� ")
	elseif (HaveMagic(54) >= 0) then		-- 做完了40级任务,漫天花雨
		nt_setTask(2,50*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 40.")
	elseif (HaveMagic(50) >= 0) then		-- 做完了30级任务,追心箭
		nt_setTask(2,40*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 30.")
	elseif (HaveMagic(47) >= 0) then		-- 做完了20级任务,夺魂镖
		nt_setTask(2,30*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 20.")
	elseif (HaveMagic(43) >= 0) then		-- 做完了10级任务,唐门暗器
		nt_setTask(2,20*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 10.")
	else
		nt_setTask(2,10*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  c� th� nh薾 nhi謒 v� c蕄 10.")
	end
end;

function tm_check_no()
	Say("M玭 ch� ph竔 ngi n y l祄 g�??",2,"Xin a t筰 h� v� T鎛g n!/return_yes","Ta ph秈 甶 l祄 vi謈 kh竎 y/return_no")
end

function Uworld1000_jiaoyutangmen()
	nt_setTask(1000,260)
	Msg2Player("е t� ti誴 d蒼 Л阯g M玭 b秓 b筺  l�  t� c馻 m玭 ph竔, c� th� tr鵦 ti誴 甶 g苝 Long Ng� n鉯 chuy謓.")
end

function no()
end;
