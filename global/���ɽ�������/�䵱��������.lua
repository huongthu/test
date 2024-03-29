-- 武当接引弟子 模板 武当道人
-- By: Dan_Deng(2003-10-28) 由人物对话修改而来
-- Update: Dan_Deng(2004-05-25) 体服技能全开修改（调用外部文件方式）
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "V� ng Чo Nh﹏"

function default_talk()
end

function select()
	UTask_wd = nt_getTask(5)
	UTask_kl = nt_getTask(9)
	if ((UTask_kl > 5*256) and (UTask_kl < 10*256)) then		-- 已接了昆仑入门任务
		Talk(1,"","Th� ra ngi v鑞 mu鑞 n C玭 L玭 h鋍 ph� ph竝 o thu藅!")
	elseif (GetSeries() == 4) and (GetCamp() == 0) and (UTask_kl < 5*256) and (UTask_wd < 5*256) then		--火系、未入昆仑武当
		if (GetLevel() >= 10) then						--等级达到十级
			Say("N誹 mu鑞 gia nh藀 b鎛 ph竔 ph秈 thay i t﹎ t輓h, chuy觧 t﹎ tu h祅h, tng lai c� r蕋 nhi襲 c� h閕 ch� n ngi!", 3, "Gia nh藀 V� ng/go", "в ta suy ngh� k� l筰 xem/no","T譵 hi觰 tinh hoa v� ngh� c竎 m玭 ph竔/Uworld1000_knowmagic")
		else
			Say("C╪ b秐 c馻 ngi c遪 k衜 l緈! H穣 甶 luy謓 t藀 th猰, bao gi� n <color=Red>c蕄 10<color> l筰 n t譵 ta", 0)
		end
	end
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(81,40)	 					--设置重生点
	nt_setTask(5, 10*256)
	SetFaction("wudang")      				--玩家加入武当
	SetCamp(1)
	SetCurCamp(1)
	-- SetRank(7)
	nt_setTask(137,65)
	SetLastFactionNumber(8)
-- 直接处理流程
--	nt_setTask(5,80*256)
--	SetRank(73)
--	Msg2Player("欢迎你加入武当派，测试中直接学会本门所有技能。")
	-- add_wd(10)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	add_wd(70)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	-- AddMagic(210, 1)
-- 结束
	Msg2Player("Hoan ngh猲 b筺 gia nh藀 V� ng ph竔! H穣 b総 u t� m閠 Чo ng! H鋍 頲 v� c玭g N� L玦 Ch�, Thng h秈 Minh Nguy謙!")
	AddNote("gia nh藀 V� ng ph竔, tr� th祅h Чo ng!")
	Msg2Faction("wudang",GetName().." t� h玬 nay gia nh藀 V� ng ph竔, trc ti猲 n b竔 ki課 c竎 v� s� huynh, s� t�!",GetName())
	-- NewWorld(81, 1574, 3224)				--把玩家传送到门派入口
AddMagic(365,20)
AddMagic(368,20)
AddMagic(716,20)
AddMagic(210, 1)
SetRank(73)
end;




function return_yes()
	NewWorld(81, 1574, 3224)			--把玩家传送到门派入口
end;

function wd_check_yes()
	if (GetSeries() ~= 4) then
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  c� th� 甶 nh薾 nhi謒 v� xu蕋 s�.")
	elseif (HaveMagic(164) >= 0) then		-- 做完了50级任务,剥及而复
		nt_setTask(5,60*256)
		Talk(1,"","Ta  ph鬰 h錳 l筰 tr筺g th竔 nhi謒 v� c馻 ngi! B﹜ gi� ngi c� th� 甶 nh薾 nhi謒 v� xu蕋 s� ")
	elseif (HaveMagic(161) >= 0) then		-- 做完了40级任务,两仪心法
		nt_setTask(5,50*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 40.")
	elseif (HaveMagic(158) >= 0) then		-- 做完了30级任务,剑飞惊天
		nt_setTask(5,40*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 30.")
	elseif (HaveMagic(156) >= 0) then		-- 做完了20级任务,纯阳心法
		nt_setTask(5,30*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 20.")
	elseif (HaveMagic(151) >= 0) then		-- 做完了10级任务,武当剑法
		nt_setTask(5,20*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 10.")
	else
		nt_setTask(5,10*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  c� th� nh薾 nhi謒 v� c蕄 10.")
	end
end

function wd_check_no()
	Say("Ta lu玭 nh� v� s� ph�! g 蕐 kh玭g bi誸 c� kh醗 kh玭g!?",2,"Nh� s� huynh a ta v� n骾!/return_yes","S� ph� l� ngi ng k輓h!/return_no")
end

function check_WDtask()
	if (nt_getTask(5) == 30*256+50) then		-- 任务变量错误
		if (GetFaction() == "wudang") then		-- 未出师重做所有任务
			nt_setTask(5,10*256)
			Say("D� li謚 c馻 ngi c� ch髏 sai s鉻! Ngi h穣 ch辵 kh� th鵦 hi謓 l筰 nhi謒 v� c蕄 10 nh�!",1,"Xin 產 t� /no")
		elseif (HaveMagic(164) >= 0) then			-- 已出师(学会了“剥及而复”并且不在门派中)的设为正常出师
			nt_setTask(5,70*256)
			Say("D� li謚 c馻 ngi c� ch髏 sai s鉻! Ta  gi髉 ngi ch豱h s鯽! Hi謓 gi� ngi  xu蕋 s�!",1,"Xin 產 t� /no")
		else										-- 其它设为未入武当派
			nt_setTask(5,0)
			Say("D� li謚 c馻 ngi c� ch髏 sai s鉻! B﹜ gi� ngi 產ng trong t譶h tr筺g ch璦 gia nh藀 m玭 ph竔",1,"Xin 產 t� /no")
		end
	end
end

function Uworld1000_jiaoyuwudang()
	nt_setTask(1000,260)
	Msg2Player("е t� ti誴 d蒼 V� ng b秓 b筺  l�  t� c馻 m玭 pah�, c� th� tr鵦 ti誴 甶 g苝 Long Ng� n鉯 chuy謓.")
end



function no()
end;
