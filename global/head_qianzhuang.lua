--------------------------------------
-- 钱庄功能的头文件

Include("\\script\\global\\systemconfig.lua") -- 系统配置

IncludeForRegionVer("\\script\\global\\", "gamebank_head.lua")

--------------------------------------

QUESTKEY_TICKET = 488;					-- 银票的物品ID
EXTPOINT_TICKET = 2;					-- 银票的扩展点
EXTPOINT_TICKET_NEW = 6;
QUESTKEY_TICKET_NEW = 962

EXTPOINT_MAXVAL = 32768;	
			-- 扩展点的最大值
---------------------------------------------------------------
--使用银票功能函数 银票分银票和新银票两种，本function 统一处理
--输入参数，ticket 银票数量 logstr 操作描述（会记日志）
--返回值为 -1异常 0银票不够 1 银票扣除成功
--如果银票不够，不会扣银票的

function qz_use_silver( ticket , logstr)
	if (logstr == nil) then
		logstr = " [ch璦 r鈃"
	end
	
	if (SYSCFG_GAMEBANK_TICKET_USE == nil) then -- 出错了~~
		print("use_ticket have close, but something is wrong...");
		Msg2Player("Ch鴆 n╪g b� l鏸!");
		return -1
	end
	
	if (ticket < 1 or ticket == nil) then
		Msg2Player("Ch鴆 n╪g b� l鏸!")
		return -1
	end
	local nCountOld = GetItemCountEx(488);--旧银票
	local nCountNew = GetItemCountEx(962);
	if (nCountOld + nCountNew < ticket) then
		return 0;
	end
	
	local nDelCountOld = ticket;
	local nDelCountNew = 0;
	if (nCountOld < ticket) then
		nDelCountOld = nCountOld;
		nDelCountNew = ticket - nCountOld;
	end;
	for i = 1, nDelCountOld do
		DelItemEx(488);
	end
	for i = 1, nDelCountNew do
		DelItemEx(962);
	end
	WriteGoldLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: d飊g"..ticket.."T蕀 ng﹏ phi誹"..logstr, 0, 0, 0, (-ticket));
	
	if (nDelCountOld > 0) then
		UseSilver(2, 2, nDelCountOld); -- 银票兑换为铜钱的消耗统计(直接消耗的元宝银票，与铜钱兑换等同处理)
	end;
	if (nDelCountNew > 0) then
		UseSilver(3, 2, nDelCountNew); -- 银票兑换为铜钱的消耗统计(直接消耗的元宝银票，与铜钱兑换等同处理)
	end;
	SaveNow(); -- 立即存盘
	return 1;
end
