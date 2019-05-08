-- script viet hoa By http://tranhba.com  ph�c duy�n h� th�ng 
-- script viet hoa By http://tranhba.com 2004.8.5 

TASKID_FY = 151; -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng ID of nh� ch�i ph�c duy�n tr� gi� 
TASKID_FY_START_ONLINE_TIME = 152; -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng ID of nh� ch�i m�t l�n cu�i c�ng b�t ��u t�ch to�n ph�c duy�n l�c ��ch � tuy�n th�i gian # gi�y # , -1 b�y t� ph�c duy�n t�ch to�n �� b� t�m ng�ng 
TASKID_FY_ADDITIONAL_TIME = 153; -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng ID of nh� ch�i ph�c duy�n b� t�m ng�ng tr��c nh�ng ��i ph�c duy�n ��ch � tuy�n th�i gian # gi�y # 
TASKID_GAIN_LAST_DATE = 154; -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng ID of nh� ch�i m�t l�n cu�i c�ng nh�n l�y ph�c duy�n nh�t k� 
TASKID_GAIN_TIMES_IN_DAY = 155; -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng ID of nh� ch�i m�t l�n cu�i c�ng nh�n l�y ph�c duy�n ng�y �� nh�n l�y ph�c duy�n ��ch s� l�n 

TIME_UNIT = 3600; -- script viet hoa By http://tranhba.com  c�n b�n th�i gian ��n v� #1 gi� # 
TIME_PER_FUYUAN = TIME_UNIT; -- script viet hoa By http://tranhba.com 1 �i�m ph�c duy�n ��i l�y c�n th�i gian #1 gi� # 
TIME_FUYUAN_THRESHOLD1 = 2 * TIME_UNIT; -- script viet hoa By http://tranhba.com  ph�c duy�n ��i l�y c�n c� ��ng l�c �ang l�c #2 gi� # 
TIME_FUYUAN_THRESHOLD2 = 4 * TIME_UNIT; -- script viet hoa By http://tranhba.com  ph�c duy�n suy gi�m l�c b�t ��u �ang l�c #4 gi� # 
FUYUAN_EXTRA = 2; -- script viet hoa By http://tranhba.com  t��ng th��ng ��ch ph�c duy�n �i�m 
TIMES_IN_DAY_EXTRA = 2; -- script viet hoa By http://tranhba.com  l�y ���c t��ng th��ng c�n m�t ng�y nh�n l�y ph�c duy�n ��ch s� l�n 

FUYUAN_MAX_GAIN = 100; -- script viet hoa By http://tranhba.com  m�t l�n nhi�u nh�t c� th� ��i l�y bao nhi�u �i�m ph�c duy�n 


-- script viet hoa By http://tranhba.com  kh�i ��ng ph�c duy�n t�ch to�n 
function FuYuan_Start() 
-- script viet hoa By http://tranhba.com  kh�ng sung t�p 
if( IsCharged() ~= 1 ) then 
return 0; 
end 
SetTask( TASKID_FY_START_ONLINE_TIME, GetGameTime() ); 
SetTask( TASKID_FY_ADDITIONAL_TIME, 0 ); 
SetTask( TASKID_GAIN_LAST_DATE, date("%Y%m%d") ); 
SetTask( TASKID_GAIN_TIMES_IN_DAY, 0 ); 
end 

-- script viet hoa By http://tranhba.com  t�m ng�ng ph�c duy�n t�ch to�n 
function FuYuan_Pause() 
if( IsFuYuanAvailable() ~= 1 ) then 
return 0; 
end 
local nFYStartOnlineTime = GetTask( TASKID_FY_START_ONLINE_TIME ); 
local nFYAdditionalTime = GetTask( TASKID_FY_ADDITIONAL_TIME ); 
if( IsFuYuanPaused() ~= 1 ) then 
if (nFYAdditionalTime < 0) then 
nFYAdditionalTime = 0 
end 
local nFYDiffer = GetGameTime() - nFYStartOnlineTime; 
if (nFYDiffer < 0) then 
nFYDiffer = 0 
end 
		local nFYTotalTime = nFYDiffer + nFYAdditionalTime;		
SetTask( TASKID_FY_ADDITIONAL_TIME, nFYTotalTime ); 
SetTask( TASKID_FY_START_ONLINE_TIME, -1 ); 
end 
end 

-- script viet hoa By http://tranhba.com  ti�p t�c ph�c duy�n t�ch to�n 
function FuYuan_Resume() 
if( IsFuYuanAvailable() ~= 1 or IsFuYuanPaused() ~= 1 ) then 
return 0; 
end 
SetTask( TASKID_FY_START_ONLINE_TIME, GetGameTime() ); 
end 

-- script viet hoa By http://tranhba.com  � tuy�n th�i gian ��i l�y ph�c duy�n ( tr� v� tr� gi� 1: b�nh th��ng nh�n l�y , 0: � tuy�n th�i gian kh�ng �� nh�n l�y ph�c duy�n , -1: kh�ng sung t�p ho�c ph�c duy�n t�ch to�n ch�a kh�i ��ng ) 
function FuYuan_Gain() 
if( IsFuYuanAvailable() ~= 1 ) then 
return -1; 
end 

local nFuYuanGained = 0; -- script viet hoa By http://tranhba.com  l�y ���c ��ch ph�c duy�n �i�m ; 
local nFYStartOnlineTime; 
local nFYTotalTime, nFYValidTime = FuYuan_GetDepositTime(); 
local nCurrentOnlineTime = GetGameTime(); 
local nFYGainLastDate = GetTask( TASKID_GAIN_LAST_DATE ); 
local nFYGainTimesInDay = GetTask( TASKID_GAIN_TIMES_IN_DAY ) 

-- script viet hoa By http://tranhba.com  � tuy�n th�i gian kh�ng �� nh�n l�y ph�c duy�n 
if( nFYValidTime < TIME_FUYUAN_THRESHOLD1 ) then 
return 0; 
end 

nFuYuanGained = floor( nFYValidTime / TIME_PER_FUYUAN ); 
	nFYGainTimesInDay = nFYGainTimesInDay + 1;
nFYStartOnlineTime = nCurrentOnlineTime - mod( nFYValidTime, TIME_UNIT ); 

-- script viet hoa By http://tranhba.com  m�t ng�y b�n trong nh�n l�y �� l�n ph�c duy�n , ng�ch ngo�i n�a t��ng th��ng ph�c duy�n 
if( tonumber(date("%Y%m%d")) == nFYGainLastDate ) then 
if( nFYGainTimesInDay == TIMES_IN_DAY_EXTRA ) then 
			nFuYuanGained = nFuYuanGained + FUYUAN_EXTRA;
end 
else 
nFYGainLastDate = date("%Y%m%d"); 
nFYGainTimesInDay = 1; 
end 

if( nFuYuanGained >= FUYUAN_MAX_GAIN ) then 
FuYuan_Add( FUYUAN_MAX_GAIN ); 
WriteLog( "["..date("%Y-%m-%d %X").."] "..GetAccount().."("..GetName()..") get over "..FUYUAN_MAX_GAIN.." FUYUAN. (Current OnlineTime: "..GetGameTime().." sec)" ); 
else 
FuYuan_Add( nFuYuanGained ); 
end 
SetTask( TASKID_FY_START_ONLINE_TIME, nFYStartOnlineTime ); 
SetTask( TASKID_FY_ADDITIONAL_TIME, 0 ); 
SetTask( TASKID_GAIN_LAST_DATE, nFYGainLastDate ); 
SetTask( TASKID_GAIN_TIMES_IN_DAY, nFYGainTimesInDay ); 
return 1; 
end 

-- script viet hoa By http://tranhba.com  ��t ���c nh� ch�i tr��c m�t c� th� ��i l�y ph�c duy�n ��ch t�ch l�y � tuy�n th�i gian # gi�y # #2 c� tr� v� tr� gi� , chia ra l�m ��i l�y ph�c duy�n ��ch t�t c� th�i gian c�ng h�u hi�u th�i gian # 
function FuYuan_GetDepositTime() 
if( IsFuYuanAvailable() ~= 1 ) then 
return 0, 0; 
end 
local nCurrentOnlineTime = GetGameTime(); 
local nFYStartOnlineTime = GetTask( TASKID_FY_START_ONLINE_TIME ); 
local nFYAdditionalTime = GetTask( TASKID_FY_ADDITIONAL_TIME ); 
local nFYTotalTime; 
local nFYValidTime; 
-- script viet hoa By http://tranhba.com  ph�c duy�n t�ch to�n �� b� t�m ng�ng 
if( IsFuYuanPaused() == 1 ) then 
if( GetTeamSize() > 1 ) then 
return 0, 0; -- script viet hoa By http://tranhba.com  h�p th�nh ��i tr�ng th�i h� kh�ng th� ti�p t�c ph�c duy�n t�ch to�n , ph�ng ng�a xu�t hi�n b�n nh�n � treo ky , ��i h�u thay m�t d�n ph�c duy�n ��ch d� th��ng xu�t hi�n l�c �em b�n th�n t�m ng�ng tr�ng th�i ph� h� 
else 
nFYStartOnlineTime = nCurrentOnlineTime; -- script viet hoa By http://tranhba.com  ch� c� th� ��i l�y t�m ng�ng tr��c t�ch to�n ��ch � tuy�n th�i gian 
FuYuan_Resume(); -- script viet hoa By http://tranhba.com  ti�p t�c ph�c duy�n t�ch to�n , ph�ng ng�a ph�c duy�n Pause m� kh�ng Resume li�n nh�n l�y ph�c duy�n ��ch t�nh hu�ng d� th��ng h� ��a ��n ph�c duy�n t�ch to�n ch�t kh�a 
end 
end 

if (nFYAdditionalTime < 0) then 
nFYAdditionalTime = 0; 
SetTask(TASKID_FY_ADDITIONAL_TIME, 0); 
end 

if ((nCurrentOnlineTime - nFYStartOnlineTime) < 0) then 
SetTask(TASKID_FY_START_ONLINE_TIME, nCurrentOnlineTime); 
nFYStartOnlineTime = nCurrentOnlineTime; 
end 

	nFYTotalTime = ( nCurrentOnlineTime - nFYStartOnlineTime ) + nFYAdditionalTime;	

if( nFYTotalTime <= TIME_FUYUAN_THRESHOLD2 ) then 
nFYValidTime = nFYTotalTime; 
else 
local nHour = floor( nFYTotalTime / TIME_UNIT ); 
		nFYValidTime = ( nHour - floor( ( nFYTotalTime - TIME_FUYUAN_THRESHOLD2 ) / ( 2 * TIME_UNIT ) ) ) * TIME_UNIT + mod( nFYTotalTime, TIME_PER_FUYUAN );
end 
return nFYTotalTime, nFYValidTime; 
end 

-- script viet hoa By http://tranhba.com  ��t ���c nh� ch�i ��ch ph�c duy�n tr� gi� 
function FuYuan_Get() 
return GetTask( TASKID_FY ); 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� nh� ch�i ��ch ph�c duy�n tr� gi� 
function FuYuan_Set( value ) 
if( IsFuYuanAvailable() ~= 1 ) then 
return 0; 
end 
SetTask( TASKID_FY, value ); 
SyncTaskValue( TASKID_FY ); 
return 1; 
end 

-- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i ��ch ph�c duy�n tr� gi� 
function FuYuan_Add( value ) 
	local nResult = FuYuan_Set( FuYuan_Get() + value );
if( nResult == 1 ) then 
Msg2Player( "<#> ng�i thu ���c "..value.."<#> �i�m ph�c duy�n " ); 
end 
return nResult; 
end 

-- script viet hoa By http://tranhba.com  gi�m b�t nh� ch�i ��ch ph�c duy�n tr� gi� 
function FuYuan_Reduce( value ) 
local nResult = FuYuan_Set( FuYuan_Get() - value ); 
if( nResult == 1 ) then 
Msg2Player( "<#> ng�i ti�u hao "..value.."<#> �i�m ph�c duy�n " ); 
end 
return nResult; 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n nh� ch�i c� hay kh�ng sung qu� t�p 
function IsCharged() 
if( GetExtPoint( 0 ) >= 1 ) then 
return 1; 
else 
return 0; 
end 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n nh� ch�i c� hay kh�ng �� kh�i ��ng ph�c duy�n t�ch to�n 
function IsFuYuanStarted() 
local nFYStartOnlineTime = GetTask( TASKID_FY_START_ONLINE_TIME ); 
if( nFYStartOnlineTime == 0 ) then 
return 0; 
else 
return 1; 
end 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n nh� ch�i c� th� hay kh�ng ti�n h�nh ph�c duy�n thao t�c 
function IsFuYuanAvailable() 
-- script viet hoa By http://tranhba.com  kh�ng sung t�p ho�c kh�ng kh�i ��ng ph�c duy�n t�ch to�n 
if( IsCharged() ~= 1 or IsFuYuanStarted() ~= 1 ) then 
return 0; 
else 
return 1; 
end 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n nh� ch�i ph�c duy�n t�ch to�n c� hay kh�ng �� b� t�m ng�ng 
function IsFuYuanPaused() 
local nFYStartOnlineTime = GetTask( TASKID_FY_START_ONLINE_TIME ); 
if( nFYStartOnlineTime < 0 ) then 
return 1; 
else 
return 0; 
end 
end 
