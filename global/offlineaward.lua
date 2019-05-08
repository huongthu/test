Include("\\script\\lib\\player.lua")
Include("\\script\\lib\\common.lua")
Include("\\script\\global\\login_head.lua")
Include("\\script\\trip\\define.lua")

MAXOFFLINETIME_EVERYDAY = 18		-- ·¿ÈÕ×î´óµëÏßÊ±¼ä£¨Ð¡Ê±£©

CHOICE_LIST = {}

LIMIT_LIST = {
	MAX_ADVTIME = 1440,
}

AWARDTYPE_FREE 				= 1
AWARDTYPE_SIHAIXIAOYAO 		= 2
AWARDTYPE_WUZHOULINGKONG	= 3
AWARDTYPE_JIUTIANYUNYOU		= 4

PILL_LIST = {
	[AWARDTYPE_SIHAIXIAOYAO] = {
		Name = "Tø h¶i tiªu dao ®an",
		Time = 60,	-- ÏûºÄµÄµëÏßÊ±¼ä£¨·ÖÖÓ£©
		ID = {6, 1, 2378, 1},
		CallBack = "apply_usesihaixiaoyao",
		},
	[AWARDTYPE_WUZHOULINGKONG] = {
		Name = "Ngò ch©u l¨ng kh«ng ®an",
		Time = 60,	-- ÏûºÄµÄµëÏßÊ±¼ä£¨·ÖÖÓ£©
		ID = {6, 1, 2397, 1},
		CallBack = "apply_usewuzhoulingkong",
		},
	[AWARDTYPE_JIUTIANYUNYOU] = {
		Name = "Cöu thiªn v©n du ®an",
		Time = 60,	-- ÏûºÄµÄµëÏßÊ±¼ä£¨·ÖÖÓ£©
		ID = {6, 1, 2379, 1},
		CallBack = "apply_usejiutianyunyou",
		}
}

AWARDEXP_LIST = {
	[AWARDTYPE_FREE				] = {15000,	30000,	40000,	40000,	60000,	72000,	86400,	103680},
	[AWARDTYPE_SIHAIXIAOYAO		] = {37500,	75000,	100000,	100000,	150000,	180000,	216000,	259200},
	[AWARDTYPE_WUZHOULINGKONG	] = {50000,	100000,	133333,	133333,	200000,	240000,	288000,	345600},
	[AWARDTYPE_JIUTIANYUNYOU	] = {62500,	125000,	166667,	166667,	250000,	300000,	360000,	432000},
}

OfflineAward = {}

-- ¼ÆËã¸½¸öÊ±¼äµã£¨¸ñÊ½Îªtime_t£©Ö®¼äµÄµëÏßÊ±¼ä£¨·ÖÖÓ£©£¬time1 <= time2
function OfflineAward:CalcOfflineTime(time1, time2)
	local t1 = Time2Tm(time1)
	local t2 = Time2Tm(time2)
	local date1 = Tm2Time(t1[1], t1[2], t1[3])
	local date2 = Tm2Time(t2[1], t2[2], t2[3])
	if (date1 > date2) then
		return 0
	end	
	if (date1 == date2) then
		local diff = floor((time2 - time1) / 60)
		if (diff > MAXOFFLINETIME_EVERYDAY * 60) then
			diff = MAXOFFLINETIME_EVERYDAY * 60
		end
		return diff
	end
	local minutes = floor((date2 - date1) * MAXOFFLINETIME_EVERYDAY / (60 * 24))
	if (t1[4] >= (24 - MAXOFFLINETIME_EVERYDAY)) then
		local reduce = floor(t1[4] * 60 + t1[5] - (24 - MAXOFFLINETIME_EVERYDAY) * 60)
		minutes = minutes - reduce
	end
	if (t2[4] >= MAXOFFLINETIME_EVERYDAY) then
		minutes = minutes + floor(MAXOFFLINETIME_EVERYDAY * 60)
	else
		local add = floor(t2[4] * 60 + t2[5])
		minutes = minutes + add
	end
	return minutes
end

function OfflineAward:CheckCondition(player)
	if (player:GetLevel() >= 50 or player:IsTransLife() == 1) then
		return 1
	else
		return 0
	end
end

function OfflineAward:Time2String(t)
	local tb = Time2Tm(t)
	return format("%d/%d/%d-%d/%d/%d", tb[3], tb[2], tb[1], tb[4], tb[5], tb[6])
end

TIME_START = Tm2Time(2014, 2, 28, 0, 0, 0)

function OfflineAward:GetLastOfflineTime(player)
	local time_offline = player:GetLastOfflineTime()
	local time_exchange = player:GetLastExchangeTime()
	if (time_offline < time_exchange) then
		time_offline = time_exchange
	end
---	if (time_offline < TIME_START) then
---		time_offline = TIME_START
---	end
	return time_offline
end

function OfflineAward:Login(player)
	local time_offline = self:GetLastOfflineTime(player)
	local time_login = player:GetLoginTime()
	if (time_login < time_offline) then
		time_login = time_offline
	end
	if (time_offline == 0) then
		time_offline = time_login
	end
	local time = self:CalcOfflineTime(time_offline, time_login)
	if (time > 0) then
		player:SetOfflineLowTime(time)
		if (player:GetOfflineAdvTime() + time > LIMIT_LIST.MAX_ADVTIME) then
			player:SetOfflineAdvTime(LIMIT_LIST.MAX_ADVTIME)
		else
			player:AddOfflineAdvTime(time)
		end
	else
		player:SetOfflineLowTime(0)
	end
	if (OfflineAward:CheckCondition(player) == 1) then
		dlg_offlineaward(player)
	end
end



function dlg_menu(player)
	if (OfflineAward:CheckCondition(player) == 1) then
		dlg_offlineaward(player)
	else
		player:Say("<color=red>CÊp 50 trë lªn (Bao gåm cÊp 50) <color> HoÆc lµ ng­êi ch¬i <color=red> ®· chuyÓn sinh míi cã thÓ sö dông ph­¬ng thøc nµy.")
	end
end

function dlg_offlineaward(player)
player:Say("<color=pink><pic=26>Chó ý - Chó ý  : <color=green>C¸c Nh©n SÜ Nhanh Chãng Update ®Ó tham gia even giç tæ Hïng V­¬ng ",2,"KÕt thóc ®èi tho¹i/no")

end


function apply_usesihaixiaoyao(count)
	local player = Player:New(PlayerIndex)
	apply_usepill(player, AWARDTYPE_SIHAIXIAOYAO, count)
end

function apply_usewuzhoulingkong(count)
	local player = Player:New(PlayerIndex)
	apply_usepill(player, AWARDTYPE_WUZHOULINGKONG, count)
end

function apply_usejiutianyunyou(count)

	local player = Player:New(PlayerIndex)
	apply_usepill(player, AWARDTYPE_JIUTIANYUNYOU, count)
end

function login(playerindex, exchange)
	local player = Player:New(playerindex)
	if (exchange == 0) then
		OfflineAward:Login(player)
	else
		player:SetOfflineLowTime(0)
	end
	CHOICE_LIST[playerindex] = nil
end

function logout(playerindex)
	--CHOICE_LIST[playerindex] = nil
SaveQuickly(playerindex)
end

if GetTripMode() ~= TRIP_MODE_SERVER then
	AddLoginFileFunction("\\script\\global\\offlineaward.lua", "login")
end


function kickgame1()
local nPlayerIndex = SearchPlayer(szName)
OfflineLive(PlayerIndex); 
KickOutSelf()
end
