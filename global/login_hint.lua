Include("\\script\\lib\\common.lua")
Include("\\script\\global\\rename_head.lua")

--活动定义
EVENTS_TB = {
--	{
--		--显示活动条件
--		ndate = {051101, 051131},	--起止日期，可选
--		ntime = {2000, 2359},		--起止时间，可选
--		level = {1, 200},			--起止级别，可选
--		taskequal = {taskid, taskvalue},	--任务变量系等，可选
--		tasknot = {taskid, taskvalue},		--任务变量不等，可选
--		checkfunc = func			--检测函数，可选。函数返回nil表示不触发，否则触发
--		
--		--活动描述
--		name = "某某活动",			--活动名称，必需
--		describe = "简单说明文字",	--活动说明，也可以用一个函数返回字符串，可选
--		detail =
--[[　　这里可以写很兜文字，详细描述你的活动。
--　　方括号的形式可以自由换行。
--　　也可以用一个函数返回字符串]],	--活动详情，可选 \___二者只可选其一
--		callback = nil,				--回调函数，可选 /
--		link = nil,					--Describe对话link信息，可选（使用detail时有效）
--	},
	{
		ndate = {070414,160424},
		name = "Ho箃 ng Th竛g 3",
		describe = "T� <color=yellow>14/4/2007<color> n <color=yellow>24/4/2016<color>, 產ng ho箃 ng th阨 gian b猲 trong , t蕋 c� 產ng nh tr竎h luy謓 c玭g trong qu� tr譶h ch nh� ch琲 甧m c� c� h閕 nh苩 頲 <color=yellow> h祅g h鉧 i <color>. c莔 h祅g h鉧 i c飊g ng﹏ lng n c竎 th祅h ph� NPC thng phi課 ch� i l蕐 <color=yellow> nguy猲 li謚 ch鴄 ng t骾 <color>.",
	},
	{	--3级以前龙五教育任务
		level = {1, 3},
		tasknot = {1014, 2},
		name = "Hng d蒼 nhi謒 v�",
		describe = " Nh薾 nhi謒 v� s� nh藀 t筰 Long Ng�",
		callback = Uworld1000_word,
	},
	{	--武林联赛——孝秀
		level = {80, 119},
		name = "V� l﹎ li猲 u",
		describe = "Ngi c� th� n quan vi猲 ghi danh tham gia v� l﹎ li猲 u .",
		detail =
[[ V� l﹎ li猲 u 產ng ng trong giai 畂筺 chu萵 b�, c蕄 b薱 c馻 ngi c� th� tham gia <color=yellow> V� l﹎ li猲 u <color>. 
B竜 danh t筰 : <color=yellow> Bi謓 kinh (222, 191)<color>, <color=yellow> L﹎ An (182, 204)<color>.]], 
	},
	{	--武林联赛——高级
		level = {120, 200},
		name = "V� l﹎ li猲 u",
		describe = "Ngi c� th� n quan vi猲 ghi danh tham gia v� l﹎ li猲 u .",
		detail =
[[ V� l﹎ li猲 u 產ng ng trong giai 畂筺 chu萵 b�  , c蕄 b薱 c馻 ngi c� th� tham gia <color=yellow> v� l﹎ li猲 u <color>. 
B竜 danh t筰 : <color=yellow> Чi L� (200, 197)<color>, <color=yellow> Dng Ch﹗ (219, 190)<color>.]], 
	},
	{	--辉煌之夜
		name = "Ho箃 ng m huy ho祅g",
		describe = "Minh ch� V� l﹎ чc c� Ki誱 khai m� ho箃 ng� Ho箃 ng m huy ho祅g抦鏸 bu鎖 t鑙 b総 u t�  7 gi� 30 ph髏 . ",
		detail =
[[ Trc m総 l� gi� 甶襲 m璦 thu薾 th阨 gian , v� th辬h t譶h p t� giang h� v� l﹎ nh﹏ s� , minh ch� v� l﹎ truy襫 nh﹏ c� h祅h ' huy ho祅g m ' ho箃 ng . ho箃 ng t� m鏸 ng祔 19 甶觤 30 t竎h ra m韎 , m鏸 l莕 ho箃 ng 30 ph髏 . c� th� n閕 dung c� th� 甶 t譵 l� quan m� .]], 
	},

	 {
	 	name = "<#>фi t猲 nh﹏ v藅",
	 	describe = "<#>B雐 v� � c騨g d飊g/u鑞g trong qu� tr譶h, ng礽 ch vai tr� t猲 thay v� h緉 nh� ch琲 ch vai tr� t猲 xu蕋 hi謓 n苙g t猲 t譶h hu鑞g, v� v藋 h� th鑞g  gi髉 ng礽 t� ng h琻 t猲 , n誹 nh� ng礽 c莕 l莕 n鱝 s鯽 i vai tr� t猲 l阨 c馻 , m阨 頲 c竎 tay m韎 th玭 ch tay m韎 ph� bi課 r閚g r穒 vi猲 ch� l鵤 ch鋘 s鯽 i vai tr� t猲 . ng礽 ch� c� th� s鯽 i m閠 l莕 vai tr� t猲 , cho n猲 xin/m阨 c萵 th薾 c tng 鴑g n鉯 r� .",
	 },
	 {
	 	name = "<#>фi t猲 Bang h閕",
	 	describe = "B雐 v� � c騨g d飊g/u鑞g trong qu� tr譶h, ng礽 ch� � bang h閕, bang h閕 t猲 thay v� h緉 bang h閕 t猲 xu蕋 hi謓 n苙g t猲 t譶h hu鑞g, v� v藋 h� th鑞g  gi髉 ng礽 ch� � bang h閕 t� ng h琻 t猲 , n誹 nh� bang ch� c莕 l莕 n鱝 s鯽 i bang h閕 t猲 l阨 c馻 , m阨 頲 c竎 tay m韎 th玭 ch tay m韎 ph� bi課 r閚g r穒 vi猲 ch� l鵤 ch鋘 s鯽 i bang h閕 t猲 . bang ch� ch� c� th� s鯽 i m閠 l莕 bang h閕 t猲 , cho n猲 xin/m阨 c萵 th薾 c tng 鴑g n鉯 r� .",
	 },
}

EVENT_HINT_LINK = "<link=image[0,1]:\\spr\\npcres\\enemy\\enemy060\\enemy060_st.spr>Ho箃 ng:<link>"
EVENT_HINT_TIMES = 3	--每天上线提示次数

--如果有较复杂的活动需要自定义一些函数。请在息面Include，并使用：
--	if EVENTS_TB then EVENTS_TB[getn(EVENTS_TB)+1] = {……} end
--的方式添加
--=================================================================
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
Include("\\script\\event\\great_night\\huangzhizhang\\event.lua")
--=================================================================

--登⒔时调用的函数
function event_hint_login(bExchangeIn)
	-- 跨服过来的就不用再提示了
	if (bExchangeIn == 1) then
		return
	end
	local n_date = tonumber(GetLocalDate("%y%m%d"));
	local n_time = tonumber(GetLocalDate("%H%M"));
	local n_times;
	if (GetTask(2308) ~= n_date) then	--不是今天登⒔的
		SetTask(2308, n_date);
		SetTask(2309, 0);
		n_times = 0;
	else
		n_times = GetTask(2309);
	end
	if (n_times >= EVENT_HINT_TIMES) then	--已达到提示次数，不再提示
		return
	end
	
	local n_level = GetLevel();
	local tb = {};
	for i = 1, getn(EVENTS_TB) do
		if event_hint_check(EVENTS_TB[i], n_date, n_time, n_level) then	--符合条件
			tb[getn(tb)+1] = i;
		end
	end
	if (getn(tb) == 1) then	--只有一个活动，直接显示详情
		event_show_detail(tb, 1);
	elseif (getn(tb) > 0) then	--兜个活动
		event_show_all(tb);
	end
	
	SetTask(2309, n_times + 1)
	
	bingfu_hint()	--并服更名，临时添加的高优先级上线提示，不属于规范的使用
end

--检查某个活动是否需要通知当前玩家
function event_hint_check(tb_event, n_date, n_time, n_level)
	local tb = tb_event.ndate;
	if (tb) then	--限定日期
		if (n_date < tb[1] or n_date > tb[2]) then	--日期不符
			return
		end			
	end
	tb = tb_event.ntime;
	if (tb) then	--限定时间
		if (n_time < tb[1] or n_time > tb[2]) then	--日期不符
			return
		end			
	end
	tb = tb_event.level;
	if (tb) then	--限定级别
		if (n_level < tb[1] or n_level > tb[2]) then	--级别不符
			return
		end			
	end
	tb = tb_event.taskequal
	if (tb) then	--任务变量系等
		if (GetTask(tb[1]) ~= tb[2]) then
			return
		end			
	end
	tb = tb_event.tasknot
	if (tb) then	--任务变量不等
		if (GetTask(tb[1]) == tb[2]) then
			return
		end			
	end
	local func = tb_event.checkfunc
	if (func) then	--函数判断
		if (not func()) then
			return
		end			
	end
	return 1
end

--显示所有活动
function event_show_all(tb)
	local str = "<enter>";
	local tb_option = {};
	for i = 1, getn(tb) do
		local tb_event = EVENTS_TB[tb[i]];
		str = str .. "<color=red>" .. tb_event.name .. "<color><enter>";
		if (tb_event.describe) then
			local str_des
			if (type(tb_event.describe) == "function") then
				str_des = tb_event.describe()
			else
				str_des = tostring(tb_event.describe)
			end
			str = str .. "  " .. str_des .. "<color><enter>";
		end
		if (tb_event.detail or tb_event.callback) then
			tb_option[getn(tb_option)+1] = tb_event.name.." chi ti誸/#event_show_detail({"..join(tb).."},"..i..")";
		end
	end
	tb_option[getn(tb_option)+1] = "H玬 nay nh綾 nh� ta/event_hint_stop";
	tb_option[getn(tb_option)+1] = "Ta  bi誸!/no";
	Describe(EVENT_HINT_LINK..str, getn(tb_option), tb_option);
end

--显示某一指定活动详情（全部，当前第几个）
function event_show_detail(tb, n)
	local tb_event = EVENTS_TB[tb[n]];
	if (tb_event.callback) then
		tb_event.callback();
	else
		local str = "<enter><color=red>"..tb_event.name.."<color><enter>"
		local tb_option = {};
		if (getn(tb) > 1) then
			tb_option[1] = "Ta mu鑞 t譵 hi觰 v� ho箃 ng/#event_show_all({"..join(tb).."})";
		end
		tb_option[getn(tb_option)+1] = "H玬 nay nh綾 nh� ta/event_hint_stop";
		tb_option[getn(tb_option)+1] = "Ta  bi誸!/no";
		if (tb_event.link) then
			str = tb_event.link .. str
		else
			str = EVENT_HINT_LINK .. str
		end
		if (tb_event.detail) then
			if (type(tb_event.detail) == "function") then
				str = str .. tb_event.detail()
			else
				str = str .. tb_event.detail
			end
		elseif (tb_event.describe) then
			if (type(tb_event.describe) == "function") then
				str = str .. tb_event.describe()
			else
				str = str .. tostring(tb_event.describe)
			end
		end
		Describe(str, getn(tb_option), tb_option);
	end
end

function event_hint_stop()
	SetTask(2309, EVENT_HINT_TIMES);
end

function bingfu_hint()
	-- 角色改名提示
	local msg = ""
	if (check_renamerole() == 1) then
		msg = msg .. "<> B雐 v� � c騨g d飊g/u鑞g trong qu� tr譶h , h� th鑞g  gi髉 ng礽 t� ng h琻 t猲 , m阨 頲 c竎 tay m韎 th玭 ch tay m韎 ph� bi課 r閚g r穒 vi猲 ch� l鵤 ch鋘 <color=red> s鯽 i vai tr� t猲 <color> . " 
	end
	-- 帮会改名提示
	if (check_renametong() == 1) then
		msg = msg .. "<> B雐 v� � c騨g d飊g/u鑞g trong qu� tr譶h , h� th鑞g  gi髉 ng礽 ch� � bang h閕 t� ng h琻 t猲 , m阨 頲 c竎 tay m韎 th玭 ch tay m韎 ph� bi課 r閚g r穒 vi猲 ch� l鵤 ch鋘 <color=red> s鯽 i bang h閕 t猲 <color> . " 
	end
	if (check_castellan_remedy() == 1) then
		msg = msg .. "<> B雐 v� c騨g d飊g/u鑞g trong qu� tr譶h h� th鑞g t� ng thu v� li評 ng礽 ch� � bang h閕 ch th祅h ph� qu秐 l� quy襫 , ng礽 c� th� n c竎 tay m韎 th玭 ch tay m韎 ph� bi課 r閚g r穒 vi猲 ch� <color=red> nh薾 l蕐 tng 鴑g b錳 thng <color> , nh薾 l蕐 bang h閕 b錳 thng ch鴆 n╪g � <color=red> c騨g d飊g/u鑞g sau trong v遪g m閠 th竛g <color> h鱱 hi謚 . " 
	end
	
	if (msg ~= "") then
		Say(msg, 1, "<#>Ta  bi誸/cancel")
	end
end

if login_add then login_add(event_hint_login, 0) end

