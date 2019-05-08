-- script viet hoa By http://tranhba.com  phóc duyªn hÖ thèng 
-- script viet hoa By http://tranhba.com 2004.8.5 

TASKID_FY = 151; -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng ID of nhµ ch¬i phóc duyªn trÞ gi¸ 
TASKID_FY_START_ONLINE_TIME = 152; -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng ID of nhµ ch¬i mét lÇn cuèi cïng b¾t ®Çu tÝch toµn phóc duyªn lóc ®Ých ë tuyÕn thêi gian # gi©y # , -1 bµy tá phóc duyªn tÝch toµn ®· bÞ t¹m ngõng 
TASKID_FY_ADDITIONAL_TIME = 153; -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng ID of nhµ ch¬i phóc duyªn bÞ t¹m ngõng tr­íc nh­ng ®æi phóc duyªn ®Ých ë tuyÕn thêi gian # gi©y # 
TASKID_GAIN_LAST_DATE = 154; -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng ID of nhµ ch¬i mét lÇn cuèi cïng nhËn lÊy phóc duyªn nhËt kú 
TASKID_GAIN_TIMES_IN_DAY = 155; -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng ID of nhµ ch¬i mét lÇn cuèi cïng nhËn lÊy phóc duyªn ngµy ®ã nhËn lÊy phóc duyªn ®Ých sè lÇn 

TIME_UNIT = 3600; -- script viet hoa By http://tranhba.com  c¨n b¶n thêi gian ®¬n vÞ #1 giê # 
TIME_PER_FUYUAN = TIME_UNIT; -- script viet hoa By http://tranhba.com 1 ®iÓm phóc duyªn ®æi lÊy cÇn thêi gian #1 giê # 
TIME_FUYUAN_THRESHOLD1 = 2 * TIME_UNIT; -- script viet hoa By http://tranhba.com  phóc duyªn ®æi lÊy cÇn c¬ ®óng lóc ®ang lóc #2 giê # 
TIME_FUYUAN_THRESHOLD2 = 4 * TIME_UNIT; -- script viet hoa By http://tranhba.com  phóc duyªn suy gi¶m lóc b¾t ®Çu ®ang lóc #4 giê # 
FUYUAN_EXTRA = 2; -- script viet hoa By http://tranhba.com  t­ëng th­ëng ®Ých phóc duyªn ®iÓm 
TIMES_IN_DAY_EXTRA = 2; -- script viet hoa By http://tranhba.com  lÊy ®­îc t­ëng th­ëng cÇn mét ngµy nhËn lÊy phóc duyªn ®Ých sè lÇn 

FUYUAN_MAX_GAIN = 100; -- script viet hoa By http://tranhba.com  mét lÇn nhiÒu nhÊt cã thÓ ®æi lÊy bao nhiªu ®iÓm phóc duyªn 


-- script viet hoa By http://tranhba.com  khëi ®éng phóc duyªn tÝch toµn 
function FuYuan_Start() 
-- script viet hoa By http://tranhba.com  kh«ng sung t¹p 
if( IsCharged() ~= 1 ) then 
return 0; 
end 
SetTask( TASKID_FY_START_ONLINE_TIME, GetGameTime() ); 
SetTask( TASKID_FY_ADDITIONAL_TIME, 0 ); 
SetTask( TASKID_GAIN_LAST_DATE, date("%Y%m%d") ); 
SetTask( TASKID_GAIN_TIMES_IN_DAY, 0 ); 
end 

-- script viet hoa By http://tranhba.com  t¹m ngõng phóc duyªn tÝch toµn 
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

-- script viet hoa By http://tranhba.com  tiÕp tôc phóc duyªn tÝch toµn 
function FuYuan_Resume() 
if( IsFuYuanAvailable() ~= 1 or IsFuYuanPaused() ~= 1 ) then 
return 0; 
end 
SetTask( TASKID_FY_START_ONLINE_TIME, GetGameTime() ); 
end 

-- script viet hoa By http://tranhba.com  ë tuyÕn thêi gian ®æi lÊy phóc duyªn ( trë vÒ trÞ gi¸ 1: b×nh th­êng nhËn lÊy , 0: ë tuyÕn thêi gian kh«ng ®ñ nhËn lÊy phóc duyªn , -1: kh«ng sung t¹p hoÆc phóc duyªn tÝch toµn ch­a khëi ®éng ) 
function FuYuan_Gain() 
if( IsFuYuanAvailable() ~= 1 ) then 
return -1; 
end 

local nFuYuanGained = 0; -- script viet hoa By http://tranhba.com  lÊy ®­îc ®Ých phóc duyªn ®iÓm ; 
local nFYStartOnlineTime; 
local nFYTotalTime, nFYValidTime = FuYuan_GetDepositTime(); 
local nCurrentOnlineTime = GetGameTime(); 
local nFYGainLastDate = GetTask( TASKID_GAIN_LAST_DATE ); 
local nFYGainTimesInDay = GetTask( TASKID_GAIN_TIMES_IN_DAY ) 

-- script viet hoa By http://tranhba.com  ë tuyÕn thêi gian kh«ng ®ñ nhËn lÊy phóc duyªn 
if( nFYValidTime < TIME_FUYUAN_THRESHOLD1 ) then 
return 0; 
end 

nFuYuanGained = floor( nFYValidTime / TIME_PER_FUYUAN ); 
	nFYGainTimesInDay = nFYGainTimesInDay + 1;
nFYStartOnlineTime = nCurrentOnlineTime - mod( nFYValidTime, TIME_UNIT ); 

-- script viet hoa By http://tranhba.com  mét ngµy bªn trong nhËn lÊy ®ñ lÇn phóc duyªn , ng¹ch ngo¹i n÷a t­ëng th­ëng phóc duyªn 
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

-- script viet hoa By http://tranhba.com  ®¹t ®­îc nhµ ch¬i tr­íc mÆt cã thÓ ®æi lÊy phóc duyªn ®Ých tÝch lòy ë tuyÕn thêi gian # gi©y # #2 c¸ trë vÒ trÞ gi¸ , chia ra lµm ®æi lÊy phóc duyªn ®Ých tÊt c¶ thêi gian cïng h÷u hiÖu thêi gian # 
function FuYuan_GetDepositTime() 
if( IsFuYuanAvailable() ~= 1 ) then 
return 0, 0; 
end 
local nCurrentOnlineTime = GetGameTime(); 
local nFYStartOnlineTime = GetTask( TASKID_FY_START_ONLINE_TIME ); 
local nFYAdditionalTime = GetTask( TASKID_FY_ADDITIONAL_TIME ); 
local nFYTotalTime; 
local nFYValidTime; 
-- script viet hoa By http://tranhba.com  phóc duyªn tÝch toµn ®· bÞ t¹m ngõng 
if( IsFuYuanPaused() == 1 ) then 
if( GetTeamSize() > 1 ) then 
return 0, 0; -- script viet hoa By http://tranhba.com  häp thµnh ®éi tr¹ng th¸i h¹ kh«ng thÓ tiÕp tôc phóc duyªn tÝch toµn , phßng ngõa xuÊt hiÖn bæn nh©n ë treo ky , ®éi h÷u thay mÆt dÉn phóc duyªn ®Ých dÞ th­êng xuÊt hiÖn lóc ®em b¶n th©n t¹m ngõng tr¹ng th¸i ph¸ h­ 
else 
nFYStartOnlineTime = nCurrentOnlineTime; -- script viet hoa By http://tranhba.com  chØ cã thÓ ®æi lÊy t¹m ngõng tr­íc tÝch toµn ®Ých ë tuyÕn thêi gian 
FuYuan_Resume(); -- script viet hoa By http://tranhba.com  tiÕp tôc phóc duyªn tÝch toµn , phßng ngõa phóc duyªn Pause mµ kh«ng Resume liÒn nhËn lÊy phóc duyªn ®Ých t×nh huèng dÞ th­êng h¹ ®­a ®Õn phóc duyªn tÝch toµn chÕt khãa 
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

-- script viet hoa By http://tranhba.com  ®¹t ®­îc nhµ ch¬i ®Ých phóc duyªn trÞ gi¸ 
function FuYuan_Get() 
return GetTask( TASKID_FY ); 
end 

-- script viet hoa By http://tranhba.com  thiÕt trÝ nhµ ch¬i ®Ých phóc duyªn trÞ gi¸ 
function FuYuan_Set( value ) 
if( IsFuYuanAvailable() ~= 1 ) then 
return 0; 
end 
SetTask( TASKID_FY, value ); 
SyncTaskValue( TASKID_FY ); 
return 1; 
end 

-- script viet hoa By http://tranhba.com  gia t¨ng nhµ ch¬i ®Ých phóc duyªn trÞ gi¸ 
function FuYuan_Add( value ) 
	local nResult = FuYuan_Set( FuYuan_Get() + value );
if( nResult == 1 ) then 
Msg2Player( "<#> ngµi thu ®­îc "..value.."<#> ®iÓm phóc duyªn " ); 
end 
return nResult; 
end 

-- script viet hoa By http://tranhba.com  gi¶m bít nhµ ch¬i ®Ých phóc duyªn trÞ gi¸ 
function FuYuan_Reduce( value ) 
local nResult = FuYuan_Set( FuYuan_Get() - value ); 
if( nResult == 1 ) then 
Msg2Player( "<#> ngµi tiªu hao "..value.."<#> ®iÓm phóc duyªn " ); 
end 
return nResult; 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhµ ch¬i cã hay kh«ng sung qu¸ t¹p 
function IsCharged() 
if( GetExtPoint( 0 ) >= 1 ) then 
return 1; 
else 
return 0; 
end 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhµ ch¬i cã hay kh«ng ®· khëi ®éng phóc duyªn tÝch toµn 
function IsFuYuanStarted() 
local nFYStartOnlineTime = GetTask( TASKID_FY_START_ONLINE_TIME ); 
if( nFYStartOnlineTime == 0 ) then 
return 0; 
else 
return 1; 
end 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhµ ch¬i cã thÓ hay kh«ng tiÕn hµnh phóc duyªn thao t¸c 
function IsFuYuanAvailable() 
-- script viet hoa By http://tranhba.com  kh«ng sung t¹p hoÆc kh«ng khëi ®éng phóc duyªn tÝch toµn 
if( IsCharged() ~= 1 or IsFuYuanStarted() ~= 1 ) then 
return 0; 
else 
return 1; 
end 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhµ ch¬i phóc duyªn tÝch toµn cã hay kh«ng ®· bÞ t¹m ngõng 
function IsFuYuanPaused() 
local nFYStartOnlineTime = GetTask( TASKID_FY_START_ONLINE_TIME ); 
if( nFYStartOnlineTime < 0 ) then 
return 1; 
else 
return 0; 
end 
end 
