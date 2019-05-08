GLBID_GOLD_COUNT = 3; -- script viet hoa By http://tranhba.com  to�n c�c thay ��i l��ng ID of th��ng nh�t th�i �o�n Trung qu�c ��i ��t ���c ��ch kim b�i ��m 
GLBID_SILVER_COUNT = 4; -- script viet hoa By http://tranhba.com  to�n c�c thay ��i l��ng ID of th��ng nh�t th�i �o�n Trung qu�c ��i ��t ���c ��ch ng�n b�i ��m 
GLBID_BRONZE_COUNT = 5; -- script viet hoa By http://tranhba.com  to�n c�c thay ��i l��ng ID of th��ng nh�t th�i �o�n Trung qu�c ��i ��t ���c ��ch ng�n b�i ��m 
EXTPOINT_LAST_AWARD_DATETIME = 6; -- script viet hoa By http://tranhba.com  ph�t tri�n �i�m ID of nh� ch�i l�n tr��c nh�n l�y l� ph�m ��ch th�i gian 

-- script viet hoa By http://tranhba.com  d�n t��ng th�i gian �o�n ( { l�c ��u th�i gian , k�t th�c th�i gian } th�i gian c�ch th�c v� HHMM ) 
aryAwardTime = { { 1000, 1400 }, { 1900, 2000 }, { 2300, 2400 } }; 

-- script viet hoa By http://tranhba.com " to�n c�c thay ��i l��ng ID of t��ng b�i ��m " ��ch ��m t� 
arynMedalCountGlbID = { GLBID_GOLD_COUNT, GLBID_SILVER_COUNT, GLBID_BRONZE_COUNT }; 

-- script viet hoa By http://tranhba.com  ph�n th��ng ��m t� 
aryAwardItem = {{ " ti�n th�o l� ", {6,1,71,1,0,0,0} }, -- script viet hoa By http://tranhba.com  kim b�i ph�n th��ng 
{ " b�ch c�u ho�n ", {6,1,74,1,0,0,0} }, -- script viet hoa By http://tranhba.com  ng�n b�i ph�n th��ng 
{ " ph�o b�ng ", {6,0,11,1,0,0,0} }}; -- script viet hoa By http://tranhba.com  ��ng b�i ph�n th��ng 

-- script viet hoa By http://tranhba.com  �o v�n chuy�n l� tr� v� tr� gi� #3 c� # kim b�i ��m , ng�n b�i ��m , ��ng b�i ��m # n�u kim b�i ��m v� s� �m -1: kh�ng sung t�p -2: tr��c m�t kh�ng ph�i l� d�n t��ng th�i gian -3: �� d�n qu� t��ng 
function olympics_Award() 
-- script viet hoa By http://tranhba.com  kh�ng sung t�p 
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

-- script viet hoa By http://tranhba.com  tr��c m�t kh�ng ph�i l� d�n t��ng th�i gian 
if( nCurrTimeIndex == -1 ) then 
return -2; 
end 

local nCurrAwardDateTime = tonumber( date( "%m%d" )..nCurrTimeIndex ); 
local nLastAwardDateTime = GetExtPoint( EXTPOINT_LAST_AWARD_DATETIME ); 

if( nCurrAwardDateTime == nLastAwardDateTime ) then 
-- script viet hoa By http://tranhba.com  �� d�n qu� t��ng 
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
Msg2Player("Ng��i thu ���c "..arynMedalCount[i].." c� "..aryAwardItem[i][1] ); 
end 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� d�n t��ng d�u hi�u 
if( nCurrAwardDateTime > nLastAwardDateTime and ( arynMedalCount[1] > 0 or arynMedalCount[2] > 0 or arynMedalCount[3] > 0 ) ) then 
AddExtPoint( EXTPOINT_LAST_AWARD_DATETIME, nCurrAwardDateTime - nLastAwardDateTime ); 
else 
PayExtPoint( EXTPOINT_LAST_AWARD_DATETIME, nLastAwardDateTime - nCurrAwardDateTime ); 
end 

return arynMedalCount[1], arynMedalCount[2], arynMedalCount[3]; 
end 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n nh� ch�i c� hay kh�ng sung qu� t�p 
function IsCharged() 
if( GetExtPoint( 0 ) >= 1 ) then 
return 1; 
else 
return 0; 
end 
end
