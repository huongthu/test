-- script viet hoa By http://tranhba.com  d�ng h� l�a ch�n c�ch tuy�n b�y qu�n l�c ch�n c�a v�n 
-- script viet hoa By http://tranhba.com 2004.11.24 
Include("\\script\\global\\baijuwanhead.lua");
Include("\\script\\global\\judgeoffline_limit.lua");		-- script viet hoa By http://tranhba.com  2006��10��30�ռ������������г��г����Ժ��������йܵĽű�  by peres
Include("\\script\\item\\ib\\zimudai.lua");
Include("\\script\\lib\\player.lua")
Include("\\script\\trip\\define.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_autooffline4player.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

NUM_OFFLINE_PERMITREGION_MAXX = 20; --   c�ch kh�ng cho ph�p b�y qu�n �i�m ��ch nh� nh�t b�n k�nh 


arraymap = 
{ 
["1"] = " ph��ng t��ng ", 
["11"] = " th�nh �� ", 
["37"] = " bi�n kinh ", 
["80"] = " D��ng Ch�u ", 
["78"] = " t��ng d��ng ", 
["162"] = " ��i L� ", 
["176"] = " tr��c khi an ", 
["20"] = " giang t�n th�n ", 
["53"] = " ba l�ng huy�n ", 
["54"] = " nam nh�c tr�n ", 
["99"] = " v�nh nh�c tr�n ", 
["100"] = " Chu ti�n tr�n ", 
["101"] = " ��o h��ng th�n ", 
["121"] = " long m�n tr�n ", 
["153"] = " th�ch c� tr�n ", 
["174"] = " long tuy�n th�n ", 
["13"] = " Nga Mi ", 
["25"] = " ���ng m�n ", 
["49"] = " ng�y nh�n ", 
-- script viet hoa By http://tranhba.com  ["59"] = " Thi�n v��ng ", 
["81"] = " V� ���ng ", 
["103"] = " Thi�u L�m ", 
["115"] = " C�i Bang ", 
["131"] = " C�n L�n ", 
["154"] = " th�y kh�i ", 
["183"] = " n�m ��c ", 
-- script viet hoa By http://tranhba.com  ["208"] = " ��i lao ", -- script viet hoa By http://tranhba.com by t� kh�ng ph�i l� c� 2007/11/13 c�m ch� ��i lao b�y qu�n 
["235"] = " hoa ��o ��o # m�t #", 
["236"] = " hoa ��o ��o # hai #", 
["237"] = " hoa ��o ��o # ba #", 
["238"] = " hoa ��o ��o # b�n #", 
["239"] = " hoa ��o ��o # n�m #", 
["240"] = " hoa ��o ��o # s�u #", 
["241"] = " hoa ��o ��o # b�y #", 
["835"] = " V� danh c�c ( m�t )", 
["836"] = " V� danh c�c ( hai )", 
["837"] = " V� danh c�c ( ba )", 
["838"] = " V� danh c�c ( b�n )", 
["839"] = " V� danh c�c ( n�m )", 
["840"] = " V� danh c�c ( s�u )", 
["586"] = " c�ng c�ng bang h�i b�n �� ", 
["587"] = " th�nh �� bang h�i b�n �� ", 
["588"] = " ��i L� bang h�i b�n �� ", 
["589"] = " ph��ng t��ng bang h�i b�n �� ", 
["590"] = " tr��c khi an bang h�i b�n �� ", 
["591"] = " t��ng d��ng bang h�i b�n �� ", 
["593"] = " D��ng Ch�u bang h�i b�n �� ", 
["594"] = " bi�n kinh bang h�i b�n �� ", 
["595"] = " c�ng c�ng bang h�i b�n �� ", 
["596"] = " c�ng c�ng bang h�i b�n �� ", 
["597"] = " c�ng c�ng bang h�i b�n �� ", 
}; 

aryLimitRegionmax = { 
--   ba l�ng huy�n 
[53]={ 
{1548, 3266},
{1542, 3256},
{1547, 3276},
{1564, 3277},
}, 
} 


function judgeoffline(player_count, offline_count) 

-- script viet hoa By http://tranhba.com  szHour = date("%H"); 
-- script viet hoa By http://tranhba.com  nHour = tonumber(szHour); 

-- script viet hoa By http://tranhba.com  sparetime = GetTask(AEXP_TASKID); 
-- script viet hoa By http://tranhba.com  if (nHour >= AEXP_INVALIDTIMEBEGIN and nHour < AEXP_INVALIDTIMEEND) then 
-- script viet hoa By http://tranhba.com  Say("<#> ng��i � ��y <color=red>"..AEXP_INVALIDTIMEBEGIN..":00<color>-<color=red>"..AEXP_INVALIDTIMEEND..":00<color> th�i gian �o�n b�n trong l�a ch�n c�ch tuy�n b�y qu�n , c� th� ti�p t�c b�y s�p giao d�ch , nh�ng l� s� kh�ng ��t ���c kinh nghi�m tr� gi� , s� kh�ng t� ��ng nh�n l�y ph�c duy�n . kho�ng th�i gian n�y h� th�ng s� kh�ng kh�u tr� ng��i c�ch tuy�n b�y qu�n th�i gian , m� ng��i nh�ng ti�n h�nh tr� ch�i th�i gian l� s� ti�p t�c t�nh to�n . ", 2,"Ng��i nh�t ��nh ph�i ti�n v�o c�ch tuy�n b�y qu�n sao ?/judgecontion","T�m th�i kh�ng c�n . /donothing"); 
-- script viet hoa By http://tranhba.com  return 5 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  judgecontion(); 
-- script viet hoa By http://tranhba.com  end 
judgecontion(); 

return 0 
end 

function UyThacNhanExpBCH(_1)
	if _1 == 1111 then
		return bilAutoOfflineLiveAllowBeginOfflineLive(1111)
	end

	if GetTask(5887) <= 0 then
		return bil.Talk("Q�y nh�n s� hi�n �� h�t th�i gian �y th�c c�a B�ch C�u Ho�n, kh�ng th� s� d�ng c�ng n�ng n�y!")
	end
	
	local _, a = bil.SplitTime(GetTask(5887))
	return Say("Th�i gian �y th�c b�ng B�ch C�u Ho�n c�a qu� nh�n s� c�n "..a..", qu� nh�n s� c� mu�n ti�p t�c �y th�c?",2,
		"Ti�p t�c �y th�c!/#UyThacNhanExpBCH(1111)",
		"T�m th�i ch�a c�n d�ng ��n/donothing")
end

function judgecontion() 
	if bilAllowUyThacBachCauHoan ~= 1 then
		Say("Hi�n t�i m�y ch� ch� h� tr� ch�c n�ng <color=yellow>�y th�c mi�n ph�<color>, gi�p c�c th��ng gia b�n h�ng.", 2, "Mi�n ph� �y th�c, h� tr� b�n h�ng/beginoffline", "K�t th�c ��i tho�i./donothing"); 
	else
		Say("Hi�n t�i m�y ch� ch� h� tr� ch�c n�ng <color=yellow>�y th�c mi�n ph�<color>, gi�p c�c th��ng gia b�n h�ng.", 3,
		"Mi�n ph� �y th�c, h� tr� b�n h�ng/beginoffline",
		"�y th�c nh�n �i�m kinh nghi�m b�ng B�ch C�u Ho�n/UyThacNhanExpBCH",
		"K�t th�c ��i tho�i./donothing"); 
	end
end 

-- script viet hoa By http://tranhba.com  b�t ��u � tuy�n b�y qu�n 
function begin_onlinecommission() 
local bRet = check_if_can_offline() 
if bRet then 
return bRet 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n d�ng h� c�n th�a l�i th�i gian 
local sparetime = getsparetime(); 
if (sparetime <= 0) then 
Say("<#> ng��i c�n th�a l�i c�ch tuy�n b�y qu�n kinh nghi�m th�i gian l� 0 ph�t , ho�c l� c�ng kh�ng l�a ch�n c�ch tuy�n b�y qu�n k� n�ng , xin/m�i l�n n�a x�c nh�n sau s� d�ng n�a n�n ch�c n�ng . ", 0); 
return 3 
end 

if (GetOnlineCommissionStatus() ~= 0) then 
Msg2Player("<#> ng��i b�y gi� �� � � tuy�n b�y x�a v�o ") 
else 
Msg2Player("Ng�i �ang ��ng � � tuy�n �y th�c tr�ng th�i ") 
SetOnlineCommissionStatus(1) 
WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tbegin_onlinecommission, last online time:%s", 
GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo())); 
-- script viet hoa By http://tranhba.com EnableClientInput(0) 
end 
end 

-- script viet hoa By http://tranhba.com  k�t th�c � tuy�n b�y qu�n 
function end_onlinecommission() 
if (GetOnlineCommissionStatus() == 0) then 
Msg2Player("<#> tr��c m�t ng��i kh�ng c� � tuy�n �y th�c ") 
else 
SetOnlineCommissionStatus(0) 
-- script viet hoa By http://tranhba.com EnableClientInput(1) 
Msg2Player("<#> ng��i �� h�y b� � tuy�n �y th�c ") 
WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tend_onlinecommission, last online time:%s", 
GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo())); 
end 
end 

function check_if_can_offline() 

local nTripMode = GetTripMode() 
if nTripMode == TRIP_MODE_SERVER then 
Talk(1, "","Xin ��i hi�p l��ng th� , kh�ng th� � n�i c�ng c�ng s� d�ng t�nh n�ng �y th�c") 
return 1 
end 
-- script viet hoa By http://tranhba.com  ��u ti�n ph�n �o�n d�ng h� ch� � khu v�c 
mapid = SubWorldIdx2MapCopy(SubWorld); 
strmapid = ""..mapid..""; 
-- script viet hoa By http://tranhba.com  kh�ng c� � tr��c m�t tr�n b�n �� 
if (arraymap[strmapid] == nil) then 
Say("��i hi�p kh�ng th� � khu v�c n�y s� d�ng ch�c n�ng �y th�c, m�i ��i hi�p ��n khu v�c cho ph�p �y th�c # bao g�m t�t c� th�nh tr�n # th�n trang v� b�n trong th�p ��i m�n ph�i. ", 0); 
return 1 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n c� hay kh�ng � m�t �t h�n ch� khu v�c , n�i th� d� nh� phu xe # Thi�n v��ng gi�p ch� 
if offlineCheckPermitRegion()~=1 then 
Say("��i hi�p kh�ng th� � khu v�c n�y s� d�ng ch�c n�ng �y th�c, m�i ��i hi�p ��n khu v�c cho ph�p �y th�c # bao g�m t�t c� th�nh tr�n # th�n trang v� b�n trong th�p ��i m�n ph�i. ", 0); 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  ph�n �o�n d�ng h� ��ch tr�ng th�i chi�n ��u 
if (GetFightState() ~= 0) then 
Say("��i hi�p kh�ng th� � khu v�c n�y s� d�ng ch�c n�ng �y th�c, m�i ��i hi�p ��n khu v�c cho ph�p �y th�c # bao g�m t�t c� th�nh tr�n # th�n trang v� b�n trong th�p ��i m�n ph�i. ", 0); 
return 2 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n d�ng h� c�n th�a l�i th�i gian 
-- script viet hoa By http://tranhba.com  local sparetime = getsparetime(); 
-- script viet hoa By http://tranhba.com  if (sparetime <= 0) then 
-- script viet hoa By http://tranhba.com  Say("<#> ng��i c�n th�a l�i c�ch tuy�n b�y qu�n kinh nghi�m th�i gian l� 0 ph�t , ho�c l� c�ng kh�ng l�a ch�n c�ch tuy�n b�y qu�n k� n�ng , xin/m�i l�n n�a x�c nh�n sau s� d�ng n�a n�n ch�c n�ng . ", 0); 
-- script viet hoa By http://tranhba.com  return 3 
-- script viet hoa By http://tranhba.com  end 

-- script viet hoa By http://tranhba.com  khi m�t m�y ph�c v� kh� nh�n s� c�a v��t qua 800 ng��i , l� kh�ng cho ph�p nh� ch�i � n�i n�y thai ph�c v� kh� b�n trong ti�n h�nh c�ch tuy�n b�y qu�n 
player_count = GetPlayerCount(); 
local nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_LIMIT; 
if (mapid >= 835 and mapid <= 840) then 
nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_SPECIAL;-- script viet hoa By http://tranhba.com 750 
end; 
if (player_count > nmax_count_limit) then 
Say("N�i n�y t�p n�p �n �o nh� v�y l�m sao ��i hi�p c� th� �y th�c, m�i �i ��n c�c khu v�c tr�ng v�ng h�n.",0); 
return 4 
end 
end 

function beginoffline() 
-- local bRet = check_if_can_offline() 
-- if bRet then 
-- return bRet 
-- end 
if (GetFightState() ~= 0) then 
Say("��i hi�p kh�ng th� � khu v�c n�y s� d�ng ch�c n�ng �y th�c, m�i ��i hi�p ��n khu v�c cho ph�p �y th�c bao g�m: t�t c� th�nh tr�n, th�n trang v� b�n trong th�p ��i m�n ph�i.", 0); 
return 2
end
if (GetOnlineCommissionStatus() ~= 0) then 
	Talk(1, "", "�y th�c kh�ng th�nh c�ng!")
return 1 
end 
-- script viet hoa By http://tranhba.com  b�t ��u c�ch tuy�n treo ky 
-- Bil_SetTask(2, 1)
-- OfflineLive(PlayerIndex); 
if GetLevel() < 10 then
	Talk(1, "", "Ng��i ch�i d��i c�p 10 kh�ng ���c ph�p �y th�c, mong ��i hi�p th�ng c�m!")
	return 1
end
	local nMapId, nX, nY = GetWorldPos(); 
	local nLimitX, nLimitY = 0,0; 
	local szDirection, nDistance = "", 0; 
	local i=0; 
	if aryLimitRegionmax[nMapId] then 
		for i=1, getn(aryLimitRegionmax[nMapId]) do 
			nLimitX = aryLimitRegionmax[nMapId][i][1]; 
			nLimitY = aryLimitRegionmax[nMapId][i][2]; 
			szDirection, nDistance = getDirection({nX, nY}, {nLimitX, nLimitY}); 
			if nDistance<=NUM_OFFLINE_PERMITREGION_MAXX then 
Say("N�i n�y l� khu v�c �� anh em pk gi�i tr� ng��i kh�ng ���c �y th�c g�n ��y xin h�y ch�n v� tr� kh�c.", 0); 

				return 1
			end
end
ForbitAura(1)
bilAutoOfflineLiveMain()
end
end 

-- script viet hoa By http://tranhba.com  c�i g� ��u kh�ng l�m h�m s� , c� th� nhi�u ��a ph��ng �i�u d�ng ��n , s�a ��i ph�i th�i �i�m xin ch� � 
function donothing() 

end 

TASKID_OFFLINELIVE_EXP = { 
AEXP_SMALL_TIME_TASKID, 
AEXP_TASKID, 
AEXP_SPECIAL_TIME_TASKID, 
AEXP_TIANXING_TIME_TASKID 
} 

TASKID_OFFLINELIVE_SKILL = { 
AEXP_SMALL_SKILL_TASKID, 
AEXP_SKILL_TIME_TASKID, 
AEXP_SPECIAL_SKILL_TASKID 
} 

function getsparetime() 
-- script viet hoa By http://tranhba.com  ph�n �o�n d�ng h� c�n th�a l�i th�i gian 
local nLeftTime = 0 
for i = 1, getn(TASKID_OFFLINELIVE_EXP) do 
		nLeftTime = nLeftTime + GetTask(TASKID_OFFLINELIVE_EXP[i])
end 
if (GetTask(AEXP_SKILL_ID_TASKID) ~= 0) then 
local nTime = 0 
for i = 1, getn(TASKID_OFFLINELIVE_SKILL) do 
			nTime = nTime + GetTask(TASKID_OFFLINELIVE_SKILL[i])
end 
if (nLeftTime < nTime) then 
nLeftTime = nTime 
end 
end 
return nLeftTime 
end 

-- script viet hoa By http://tranhba.com  l�a ch�n c�ch tuy�n b�y qu�n k� n�ng 
function selectofflineskill() 
local aryExpSkill = getexpskill(); 
local nExpSkillCount = getn(aryExpSkill); 
local aryszExpSkill = {}; 
local szSayCmd = " xin/m�i l�a ch�n �y th�c ch�c n�ng :"; 
for i = 1, nExpSkillCount do 
aryszExpSkill[i] = format("%s/#onSetUpgradeSkill(%d)",aryExpSkill[i][2],aryExpSkill[i][1]); 
end 
tinsert(aryszExpSkill, "Tr? l t�c /judgecontion") 
Say(szSayCmd, getn(aryszExpSkill), aryszExpSkill); 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� c�ch tuy�n b�y qu�n k� n�ng 
function onSetUpgradeSkill(nUpgradeSkillID) 
SetTask(AEXP_SKILL_ID_TASKID, nUpgradeSkillID); 
judgecontion(); 
end 

function offlineaward() 
local player = Player:New(PlayerIndex) 
DynamicExecute( 
		"\\script\\global\\offlineaward.lua",
"dlg_offlineaward", 
player) 
end 

