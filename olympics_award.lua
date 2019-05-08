GLBID_GOLD_COUNT = 3; -- script viet hoa By http://tranhba.com  toµn côc thay ®æi l­îng ID of th­îng nhÊt thêi ®o¹n Trung quèc ®éi ®¹t ®­îc ®Ých kim bµi ®Õm 
GLBID_SILVER_COUNT = 4; -- script viet hoa By http://tranhba.com  toµn côc thay ®æi l­îng ID of th­îng nhÊt thêi ®o¹n Trung quèc ®éi ®¹t ®­îc ®Ých ng©n bµi ®Õm 
GLBID_BRONZE_COUNT = 5; -- script viet hoa By http://tranhba.com  toµn côc thay ®æi l­îng ID of th­îng nhÊt thêi ®o¹n Trung quèc ®éi ®¹t ®­îc ®Ých ng©n bµi ®Õm 
EXTPOINT_LAST_AWARD_DATETIME = 6; -- script viet hoa By http://tranhba.com  ph¸t triÓn ®iÓm ID of nhµ ch¬i lÇn tr­íc nhËn lÊy lÔ phÈm ®Ých thêi gian 

-- script viet hoa By http://tranhba.com  dÉn t­ëng thêi gian ®o¹n ( { lóc ®Çu thêi gian , kÕt thóc thêi gian } thêi gian c¸ch thøc v× HHMM ) 
aryAwardTime = { { 1000, 1400 }, { 1900, 2000 }, { 2300, 2400 } }; 

-- script viet hoa By http://tranhba.com " toµn côc thay ®æi l­îng ID of t­ëng bµi ®Õm " ®Ých ®Õm tæ 
arynMedalCountGlbID = { GLBID_GOLD_COUNT, GLBID_SILVER_COUNT, GLBID_BRONZE_COUNT }; 

-- script viet hoa By http://tranhba.com  phÇn th­ëng ®Õm tæ 
aryAwardItem = {{ " tiªn th¶o lé ", {6,1,71,1,0,0,0} }, -- script viet hoa By http://tranhba.com  kim bµi phÇn th­ëng 
{ " b¹ch c©u hoµn ", {6,1,74,1,0,0,0} }, -- script viet hoa By http://tranhba.com  ng©n bµi phÇn th­ëng 
{ " ph¸o b«ng ", {6,0,11,1,0,0,0} }}; -- script viet hoa By http://tranhba.com  ®ång bµi phÇn th­ëng 

-- script viet hoa By http://tranhba.com  ¸o vËn chuyÓn lÔ trë vÒ trÞ gi¸ #3 c¸ # kim bµi ®Õm , ng©n bµi ®Õm , ®ång bµi ®Õm # nÕu kim bµi ®Õm v× sè ©m -1: kh«ng sung t¹p -2: tr­íc mÆt kh«ng ph¶i lµ dÉn t­ëng thêi gian -3: ®· dÉn qu¸ t­ëng 
function olympics_Award() 
-- script viet hoa By http://tranhba.com  kh«ng sung t¹p 
if( IsCharged() ~= 1 ) then 
return -1; 
end 

local nCurrTime = tonumber( date( "%H%M" ) ); 
local nAwardTimeCount = getn( aryAwardTime ); 
local nCurrTimeIndex = -1; 

for i = 1, nAwardTimeCount do 
if( aryAwardTime[i][1] <= nCurrTime and nCurrTime < aryAwardTime[i][2] ) then 
nCurrTimeIndex = i; 
break; 
end 
end 

-- script viet hoa By http://tranhba.com  tr­íc mÆt kh«ng ph¶i lµ dÉn t­ëng thêi gian 
if( nCurrTimeIndex == -1 ) then 
return -2; 
end 

local nCurrAwardDateTime = tonumber( date( "%m%d" )..nCurrTimeIndex ); 
local nLastAwardDateTime = GetExtPoint( EXTPOINT_LAST_AWARD_DATETIME ); 

if( nCurrAwardDateTime == nLastAwardDateTime ) then 
-- script viet hoa By http://tranhba.com  ®· dÉn qu¸ t­ëng 
return -3; 
else 
local nMedalRankCount = getn( arynMedalCountGlbID ); 
local arynMedalCount = {}; 

for i = 1, nMedalRankCount do 
arynMedalCount[i] = GetGlbValue( arynMedalCountGlbID[i] ); 
for j =1, arynMedalCount[i] do 
AddItem( aryAwardItem[i][2][1], aryAwardItem[i][2][2], aryAwardItem[i][2][3], aryAwardItem[i][2][4], aryAwardItem[i][2][5], aryAwardItem[i][2][6] , aryAwardItem[i][2][7]); 
end 
if( arynMedalCount[i] > 0 ) then 
Msg2Player("Ng­¬i thu ®­îc "..arynMedalCount[i].." c¸ "..aryAwardItem[i][1] ); 
end 
end 

-- script viet hoa By http://tranhba.com  thiÕt trÝ dÉn t­ëng dÊu hiÖu 
if( nCurrAwardDateTime > nLastAwardDateTime and ( arynMedalCount[1] > 0 or arynMedalCount[2] > 0 or arynMedalCount[3] > 0 ) ) then 
AddExtPoint( EXTPOINT_LAST_AWARD_DATETIME, nCurrAwardDateTime - nLastAwardDateTime ); 
else 
PayExtPoint( EXTPOINT_LAST_AWARD_DATETIME, nLastAwardDateTime - nCurrAwardDateTime ); 
end 

return arynMedalCount[1], arynMedalCount[2], arynMedalCount[3]; 
end 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhµ ch¬i cã hay kh«ng sung qu¸ t¹p 
function IsCharged() 
if( GetExtPoint( 0 ) >= 1 ) then 
return 1; 
else 
return 0; 
end 
end
