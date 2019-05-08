-- 各门派接引弟子脚本　翠烟门
-- By: Dan_Deng(2003-10-27)
-- Update: Dan_Deng(2004-05-25) 体服技能全开修改（调用外部文件方式）
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "Th髖 Y猲 Hoa S� "

function default_talk()
end

function defection_get()
	Talk(1,"","Ch� c莕 mu閕 n th豱h c莡 Thanh Hi觰 S� Th竔 xin chuy觧 qua Th髖 Y猲 m玭, sau  n tr譶h ki課 v韎 Do穘 H祄 Y猲 chng m玭 c馻 ta th� c� th� 頲!  Y猲 t﹎!  Thanh Hi觰 S� Th竔 th玭g t譶h t l�, s� kh玭g l祄 kh� mu閕 u! ")
	nt_setTask(6,5*256+10)
	Msg2Player("Mu鑞 gia nh藀 Th髖 Y猲 m玭, ch� c莕 n xin ph衟 Thanh Hi觰 S� Th竔 sau  n tr譶h ki課 v韎 Do穘 H祄 Y猲 l� 頲!")
	AddNote("Mu鑞 gia nh藀 Th髖 Y猲 m玭, ch� c莕 n xin ph衟 Thanh Hi觰 S� Th竔 sau  n tr譶h ki課 v韎 Do穘 H祄 Y猲 l� 頲!")
end

function enroll_select()
	UTask_em = nt_getTask(1)
	UTask_cy = nt_getTask(6)
	if ((UTask_em > 5*256) and (UTask_em < 10*256)) then		-- 已接了翠烟入门任务
		Talk(1,"","L筰 c� th猰 1 ngi mu鑞 n c莡 kinh ni謒 ph藅! Th藅 l� ng ti誧! ")
	elseif (GetSeries() == 2) and (GetCamp() == 0) and (UTask_em < 5*256) and (UTask_cy < 5*256) then		--水系、未入峨嵋翠烟
		if (GetLevel() >= 10) then						--等级达到十级
			Say("Mu閕 c� mu鑞 gia nh藀 Th髖 Y猲 m玭 c馻 ch髇g ta kh玭g?", 3, "Gia nh藀 Th髖 Y猲 M玭/go", "в ta suy ngh� k� l筰 xem/no","T譵 hi觰 tinh hoa v� ngh� c竎 m玭 ph竔/Uworld1000_knowmagic")
		else
			Talk(1,"","Trc ti猲 mu閕 h穣 luy謓 t藀 l筰 c╪ b秐, t n <color=Red>c蕄 10<color> ch髇g ta s� l� t� mu閕 1 nh�! ")
		end
	end		-- 不是水系的就不再多说话了。
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(154,61)		  				-- 重生点
	nt_setTask(6,10*256)						-- 直接入门
	SetFaction("cuiyan")      			--玩家加入峨嵋派
	SetCamp(3)
	SetCurCamp(3)
	-- SetRank(31)
	nt_setTask(137,66)
	SetLastFactionNumber(5)
-- 直接处理流程
--	nt_setTask(6,80*256)
--	SetRank(67)
--	Msg2Player("欢迎你加入翠烟门，测试中直接学会本门所有技能。")
	-- add_cy(10)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	add_cy(70)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	-- AddMagic(210, 1)
-- 结束
	Msg2Player("Hoan ngh猲h b筺 gia nh藀 Th髖 Y猲 m玭! Tr� th祅h Hoa T�. H鋍頲 Phong Hoa Tuy誸 Nguy謙, Phong Quy觧 T祅 Tuy誸")
	AddNote("gia nh藀 Th髖 Y猲 m玭, tr� th祅h Hoa T� ")
	Msg2Faction("cuiyan",GetName().." t� h玬 nay gia nh藀 Th髖 Y猲 m玭. Xin b竔 ki課 c竎 v� s� t�. Mong c竎 v� quan t﹎ ch� gi竜!",GetName())
	-- NewWorld(154, 403, 1361)			-- 传到门派中
AddMagic(336,20)
AddMagic(337,20)
AddMagic(713,20)
AddMagic(210, 1)
SetRank(67)
end;



function return_yes()
	NewWorld(154, 403, 1361)			-- 传到门派中
end;

function cy_check_yes()					-- 由峨嵋改来。。。尚未相应更新
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

function cy_check_no()
	Say("Mu閕 l筰 l衝 甶 ch琲 n鱝 �?",2,"Uhm! Phi襫 t� t� a mu閕 v�!/return_yes","T� c� gi� v� nh� kh玭g th蕐 mu閕 l� 頲 r錳!/no")
end

function Uworld1000_jiaoyucuiyan()
	nt_setTask(1000,260)
	Msg2Player("е t� ti誴 d蒼 Th髖 Y猲 m玭 b秓 b筺 c� th� tr鵦 ti誴 甶 g苝 Long Ng� n鉯 chuy謓.")
end

function no()
end;
