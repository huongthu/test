-- script viet hoa By http://tranhba.com  th��ng thi�n khi�n cho 
-- script viet hoa By http://tranhba.com hehongpeng 2004-12-27 
Include("\\script\\global\\shangchenghead.lua")

CityData = {0, 0, 0, 0, 0, 0, 0}; 

function main() 
if (nil) then 
Say("V�t ph�m sai l�m #", 0) 
return 
end 
-- script viet hoa By http://tranhba.com  h�c l�y t�n m�m v�n ki�n , b�o ��m ch� h�c l�y m�t l�n 
loadsavevalue() 

local aryszContent = 
{ 
"<#> th��ng thi�n khi�n cho : ta l� tr�ng coi th��ng thi�n l�m ��ch s� gi� , ta c� th� gi�p ng��i c�i g� ��y ? ", 
"<#> �� giao th��ng thi�n l�m /onsubmit", 
"<#> nh�n l�y t��ng th��ng /ontakeprize", 
"<#> tu�n tra b�n bang s� chi�m d�n th�nh ph� ��ch chi�n c�ng /onchecknum", 
"<#> hi�u r� l�n n�y ho�t ��ng /onhelp", 
"<#> ta ch�ng qua l� t�i �i d�o m�t ch�t /oncancel", 
} 

Say(aryszContent[1], 5, aryszContent[2], aryszContent[3], aryszContent[4], aryszContent[5], aryszContent[6]); 
end 

-- script viet hoa By http://tranhba.com  l�y ���c m�t nh� ch�i ch� � bang h�i chi�m l�nh ��ch th�nh ph� , tr� v� t�c d�n tr� gi� 
function gettongownercity() 
-- script viet hoa By http://tranhba.com  l�y ���c nh� ch�i bang h�i t�n 
local strTongName = GetTongName() 
if (strTongName == nil or strTongName == "") then 
return 0 
end 

-- script viet hoa By http://tranhba.com  chia ra l�y ���c b�y ��i th�nh th� ��ch bang h�i t�n c�ng nh� ch�i bang h�i t�n so s�nh 
local strCityTongName 

for nCityID=1, 7 do 
strCityTongName = GetCityOwner(nCityID) 
if (strCityTongName ~= "") then 
if (strCityTongName == strTongName) then 
return nCityID 
end 
end 
end 

-- script viet hoa By http://tranhba.com  b�y t� nh� ch�i ch� � bang h�i kh�ng c� chi�m l�nh th�nh ph� 
return 0 
end 

-- script viet hoa By http://tranhba.com  m�t th�nh ph� ��ch th��ng thi�n l�m gia t�ng ��n b�t ��u t��ng th��ng ��ch s� l��ng 
function beginadward(nCityIndex) 
-- script viet hoa By http://tranhba.com  ��u ti�n thanh kh�ng t�t c� th�nh ph� m�t m�i k� ��ch th��ng thi�n l�m 
for i=1, 7 do 
SetGlbValue(arraycitytoglobalvalue[i], 0) 
end 

-- script viet hoa By http://tranhba.com  thanh kh�ng t�t c� m�t m�i ��m h�t theo 
for i=1, 7 do 
CityData[i] = 0 
end 

local strTongName = GetCityOwner(nCityIndex) 
-- script viet hoa By http://tranhba.com  t�n tr� mu�n th��ng ��ch th�nh ph� t�c d�n 
SetGlbValue(AEXP_GLOBAL_ADWARD_CITY, nCityIndex) 

-- script viet hoa By http://tranhba.com  thi�t tr� t��ng th��ng ��ch k� h�n ch�t 
-- script viet hoa By http://tranhba.com  t�n tr� th�i gian thay ��i l��ng ( h� th�ng th�i gian ) 
	local nEnddate = GetCurrentTime() + AEXP_ADWARD_HOURNUM * 60 * 60
SetGlbValue(AEXP_GLOBAL_ENDDATE, nEnddate) 

-- script viet hoa By http://tranhba.com  ti�n h�nh t�n m�m 
savevalue() 

-- script viet hoa By http://tranhba.com  gia t�ng th� gi�i bi�u hi�n tin t�c 
AddGlobalCountNews("Bang h�i "..strTongName.." chi�m l�nh th�nh ph� ��ch chi�n c�ng ��t t�i ��t ���c �em l� ��ch y�u c�u , xin/m�i n�n gi�p t�t c� bang ch�ng ��n D��ng Ch�u th��ng thi�n khi�n cho ch� nh�n l�y t��ng th��ng , t��ng th��ng k� h�n v� "..AEXP_ADWARD_HOURNUM.." gi� , qu� h�n kh�ng h�u . t�t c� th�nh ph� chi�n c�ng to�n b� thanh kh�ng ", 1) 
end 

function onsubmit() 
-- script viet hoa By http://tranhba.com  ph�n �o�n chi�m l�nh th�nh ph� ��ch bang h�i 
local nCityIndex = gettongownercity() 
if (nCityIndex < 1) then 
Say("<#> ng��i kh�ng c� gia nh�p bang h�i ho�c l� ng��i bang h�i kh�ng c� chi�m l�nh th�nh ph� , kh�ng c�ch n�o �� giao th��ng thi�n l�m . ", 0) 
return 
end 

-- script viet hoa By http://tranhba.com  m� ra cho c�ng gi�i m�t 
local nNum = GetGlbValue(arraycitytoglobalvalue[nCityIndex]) 
GiveItemUI("�� giao th��ng thi�n l�m ","Th��ng thi�n l�m c� th� gia t�ng bang h�i chi�m l�nh th�nh ph� ��ch chi�n c�ng , khi chi�n c�ng t�ch l�y ��n s� l��ng nh�t ��nh , b�n bang s� t�t c� bang ch�ng c�ng s� l�y ���c ��i t��ng , c�c ng��i bang ph�i tr��c m�t chi�m l�nh th�nh th� l� <color=read>"..arraycityindextoname[nCityIndex].."<color>, chi�n c�ng v� :<color=read>"..nNum.."<color>", "onsubmitconfirm", "oncancel" ); 
end 

-- script viet hoa By http://tranhba.com  l�y ���c nh�ng ��t ���c t��ng th��ng ��ch l�nh b�i s� l��ng 
function GetMaxCardCount() 
local count = GetTongMemberCount() 
if (count == 0) then 
return 999999999 
end 
	if (count > 1500) then	-- script viet hoa By http://tranhba.com  (1500, +��)
return 49999 
elseif (count > 900) then -- script viet hoa By http://tranhba.com  (900, 1500] 
return 39999 
elseif (count > 600) then -- script viet hoa By http://tranhba.com  (600, 900] 
return 29999 
elseif (count > 300) then -- script viet hoa By http://tranhba.com  (300, 600] 
return 19999 
else -- script viet hoa By http://tranhba.com  (0, 300] 
return 9999 
end 
end 

function onsubmitconfirm(nCount) 
if (nCount < 1) then 
Msg2Player("Ng��i kh�ng c� n�i ��ng th��ng thi�n l�m ") 
return 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n b�n bang s� chi�m d�n ��ch th�nh ph� 
local nCityIndex = gettongownercity(); 
if (nCityIndex < 1) then 
Say("Ng��i kh�ng c� gia nh�p bang h�i ho�c l� ng��i bang h�i kh�ng c� chi�m l�nh th�nh ph� , kh�ng c�ch n�o �� giao th��ng thi�n l�m . ", 0) 
return 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n v�t ph�m l� hay kh�ng v� th��ng thi�n l�m 
for i = 1, nCount do 
local nItemIndex = GetGiveItemUnit(i) 
ItemGenre, DetailType, ParticularType = GetItemProp(nItemIndex) 

if (ItemGenre ~= AEXP_AWARDMEDIAL_NGENTYPE or 
DetailType ~= AEXP_AWARDMEDIAL_DETAILTYPE or 
ParticularType ~= AEXP_AWARDMEDIAL_PARTYPE) then 
Msg2Player("Ng��i th�t gi�ng nh� c� �� kh�ng ph�i l� th��ng thi�n l�m y�u #") 
return 0 
end 
end 
local nTotalNum = 0; 
-- script viet hoa By http://tranhba.com  th� ti�u t�t c� th��ng thi�n l�m 
for i = 1, nCount do 
nItemIndex = GetGiveItemUnit( i ) 
		nTotalNum = nTotalNum + GetItemStackCount(nItemIndex)
RemoveItemByIndex( nItemIndex ) 
end 

local nNum = GetGlbValue(arraycitytoglobalvalue[nCityIndex]) 
-- script viet hoa By http://tranhba.com if (nNum < 0) then 
-- script viet hoa By http://tranhba.com nNum = 0 
-- script viet hoa By http://tranhba.com end 
	nNum = nNum + nTotalNum;
SetGlbValue(arraycitytoglobalvalue[nCityIndex], nNum) 
SetTask(1074,1); 

local strTongName = GetCityOwner(nCityIndex) 
if (nNum >= GetMaxCardCount()) then 
Msg2Player("C�c ng��i bang ph�i chi�m l�nh ��ch th�nh ph� "..arraycityindextoname[nCityIndex].." ��t ���c t��ng th��ng , ng��i nhanh l�n �i nh�n l�y t��ng th��ng �i ") 
WriteLog( "["..date("%Y-%m-%d %X").."] bang h�i :"..strTongName.." th�nh ph� "..arraycityindextoname[nCityIndex].." ��t ���c t��ng th��ng . "..GetAccount().."("..GetName()..") �� giao li�u "..nTotalNum.." c� th��ng thi�n l�m (Current OnlineTime: "..GetGameTime().." sec)" ); 
beginadward(nCityIndex) 
else 
		CityData[nCityIndex] = CityData[nCityIndex] + nTotalNum
if (CityData[nCityIndex] > AEXP_ADDMAX_SAVE) then 
CityData[nCityIndex] = 0 
WriteLog( "["..date("%Y-%m-%d %X").."] bang h�i "..strTongName.." th�nh ph� "..arraycityindextoname[nCityIndex].." b�i v� "..GetAccount().."("..GetName()..") �� giao li�u "..nTotalNum.." c� th��ng thi�n l�m , th��ng thi�n l�m v��t qua t�n m�m s� l��ng ti�n h�nh t�n m�m , th��ng thi�n l�m s� l��ng v� :"..nNum.."(Current OnlineTime: "..GetGameTime().." sec)" ); 
savevalue() 
end 
Msg2Player("C�c ng��i bang h�i chi�n c�ng t�ng l�n "..nTotalNum..", tr��c m�t l� :"..nNum); 
end 
end 

function ontakeprize() 

-- script viet hoa By http://tranhba.com  ph�n �o�n nh� ch�i bang h�i chi�m �o�t th�nh ph� ��ch t�c d�n 
local nCityIndex = gettongownercity() 
if (nCityIndex < 1 ) then 
Say("<#> ng��i kh�ng c� gia nh�p bang h�i ho�c ng��i bang h�i kh�ng c� chi�m l�nh th�nh ph� , kh�ng c�ch n�o ��t ���c t��ng th��ng . ", 0); 
return 0 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n nh� ch�i bang h�i chi�m �o�t th�nh th� l� hay kh�ng l�y ���c ��ch t��ng th��ng 
local nAdwardCityIndex = GetGlbValue(AEXP_GLOBAL_ADWARD_CITY) 
if (nAdwardCityIndex < 1) then 
Say("<#> tr��c m�t kh�ng c� th�nh ph� ��t ���c t��ng th��ng , kh�ng c�ch n�o nh�n l�y . ", 0); 
return 0 
end 

if (nAdwardCityIndex ~= nCityIndex) then 
Say("<#> ng��i ch� � bang h�i chi�m l�nh th�nh ph� ��ch th�nh ph� chi�n c�ng kh�ng �� , kh�ng c� ��t ���c t��ng th��ng . ", 0); 
return 0 
end 

local nNow = GetCurrentTime() 
local nLastdate = GetGlbValue(AEXP_GLOBAL_ENDDATE); 
if (nNow > nLastdate) then 
Say("<#> d�n t��ng k� h�n �� qua , kh�ng c�ch n�o nh�n l�y l�n n�y th�nh ph� chi�n c�ng l�y ���c t��ng th��ng . ", 0); 
SetTask(1074,0); 
return 0 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n nh� ch�i ��ch v�o gi�p th�i gian 
if (GetJoinTongTime() < AEXP_PLAYERTONG_LIMIT * 24 * 60) then 
Say("<#> ng��i v�o gi�p th�i gian kh�ng t�i <color=red>"..AEXP_PLAYERTONG_LIMIT.."<color> ng�y , kh�ng c�ch n�o nh�n l�y t��ng th��ng . ", 0); 
return 0 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n nh� ch�i m�t l�n cu�i c�ng ��ch d�n t��ng nh�t k� 
local today = tonumber(date("%Y%m%d")) 
local nLastAdward = GetTask(AEXP_TASK_ADWARDDATE) 
if (today == nLastAdward) then 
Say("<#> h�m nay t��ng th��ng ng��i �� nh�n l�y , kh�ng th� l�n n�a nh�n l�y l�u . ", 0); 
return 0 
end 

-- script viet hoa By http://tranhba.com  n�u nh� t�t c� �i�u ki�n c�ng th�a m�n nh� v�y cho c�ng t��ng th��ng 
if(GetTask(1074) ~= 1) then 
Say("<#> ng��i ch�a t�ng �� giao th��ng thi�n l�m v� bang h�i l�m c�ng hi�n , kh�ng th� nh�n l�y t��ng th��ng . ",0); 
return 0 
end 
giveprize(); 
return 1 
end 

-- script viet hoa By http://tranhba.com  n�u nh� ��u ���c c�ng nh� v�y , cho nh� ch�i t��ng th��ng 
function giveprize() 
-- script viet hoa By http://tranhba.com  t��ng th��ng ( ti�n th�o l� ��ch t��ng th��ng ) 
-- script viet hoa By http://tranhba.com  ngay sau �� t�o th�nh t��ng th��ng 
local iRand = random(1,1) 
if (iRand == 1) then 
local nExpRate = 0-- script viet hoa By http://tranhba.com GetNpcExpRate() 
if (nExpRate == nil) then 
nExpRate = 1 
end 
if (nExpRate <= 100) then 
AddSkillState(440, 1, 1, AEXP_ADWARD_TIME * FRAME2TIME * 60 * 60); 
SetTask(1074,0); 
Say("Ch�c m�ng ng��i , ng��i thu ���c � "..AEXP_ADWARD_TIME.." gi� b�n trong kinh nghi�m g�p ��i ��ch t��ng th��ng ", 0) 
else 
Say("<#> th�t xin l�i , tr��c m�t t�m th�i kh�ng c�ch n�o cho ng��i kinh nghi�m t�ng g�p b�i . ", 0) 
return 1 
end 
else 
-- script viet hoa By http://tranhba.com  � ch� n�y t�ng th�m kh�c t��ng th��ng �i 
end 

-- script viet hoa By http://tranhba.com  �o�n v�n n�y �� ��a t�i ��y c�n l� tr��c m�t ? 
-- script viet hoa By http://tranhba.com  thi�t tr� nh� ch�i cu�i c�ng d�n t��ng nh�t k� 
WriteLog( "["..date("%Y-%m-%d %X").."] th�nh ph� chi�n c�ng m�t m�i k� ��n nh�t ��nh h�n �� . nh� ch�i "..GetAccount().."("..GetName()..") nh�n l�y t��ng th��ng (Current OnlineTime: "..GetGameTime().." sec)" ); 

-- script viet hoa By http://tranhba.com  thi�t tr� l�n tr��c d�n t��ng ��ch nh�t k� 
local today = tonumber(date("%Y%m%d")) 
SetTask(AEXP_TASK_ADWARDDATE, today) 
end 

function onchecknum() 
-- script viet hoa By http://tranhba.com  l�y ���c nh� ch�i ch� � bang h�i chi�m l�nh th�nh ph� ��ch t�c d�n 
-- script viet hoa By http://tranhba.com  n�u nh� �t h�n 1 nh� v�y b�y t� nh� ch�i ��ch bang h�i kh�ng c� chi�m l�nh th�nh ph� 
local nCityIndex = gettongownercity() 
if (nCityIndex < 1 ) then 
Say("<#> ng��i kh�ng c� gia nh�p bang h�i ho�c l� ng��i ch� � bang h�i kh�ng c� chi�m l�nh th�nh ph� , kh�ng c� th�nh ph� chi�n c�ng t�ch l�y . ", 0); 
return 
end 

-- script viet hoa By http://tranhba.com  l�y ���c nh� ch�i bang h�i chi�m l�nh th�nh ph� ��ch th��ng thi�n d�n s� l��ng 
local nNum = GetGlbValue(arraycitytoglobalvalue[nCityIndex]) 
Say("<#> c�c ng��i bang h�i chi�m l�nh th�nh ph� v� <color=red>"..arraycityindextoname[nCityIndex].."<color>, th�nh ph� chi�n c�ng v� :<color=red>"..nNum.."<color>", 0); 
end 

function oncancel() 
return 
end 

function onhelp() 
Talk(2, "continuefun_help","<#> th��ng thi�n ph�t �c h� th�ng gi�i thi�u : nh� ch�i c� th� � 50 c�p tr� l�n b�n �� , ��nh tr�ch r�i xu�ng l�y ���c th��ng thi�n l�m c�ng ph�t �c l�m .7 ��i th�nh th� chi�m l�nh bang ph�i ��ch th�nh vi�n nh�ng ��n D��ng Ch�u th��ng thi�n khi�n cho [ n� ] �� giao th��ng thi�n l�m , l�m g�c gi�p ��ch th�nh ph� t�ch l�y t��ng �ng l��ng ��ch chi�n c�ng .","T�t c� nh� ch�i c� th� ��n D��ng Ch�u ph�t �c khi�n cho # nam # s� d�ng ph�t �c l�m tr�ng ph�t # ��i th�nh th� . m�i khi nh� ch�i ��i v�i m�t th�nh ph� �� giao m�t ph�t �c l�m , l� n�n th�nh ph� ��ch th��ng thi�n l�m t�ch l�y s� l��ng �em gi�m �i m�t ."); 
end 

function continuefun_help() 
Talk(3, "","Khi m�t th�nh ph� t�ch l�y ��ch chi�n c�ng ��t t�i s� l��ng nh�t ��nh , t�t c� v�o gi�p th�i gian l�n h�n # ng�y th� v� bang h�i �� giao li�u th��ng thi�n l�m ��ch ��ch th�nh vi�n , c�ng c� th� � m�t ng�y d�n t��ng th�i gian b�n trong ��t ���c # gi� kinh nghi�m g�p ��i ��ch ��c th� t��ng th��ng , h�n n�a nh�ng th�nh th� kh�c ��ch th��ng thi�n l�m s� l��ng thanh linh .","Ch� � :<color=red> trong l�c � ch� n�y xin kh�ng c�n s� d�ng ti�n th�o l� , h�n n�a m�t khi t� vong g�p ��i kinh nghi�m m�t �i hi�u l�c .<color> � d�n t��ng trong l�c , nh� c� k� tha th�nh ph� chi�n c�ng l�n n�a ��t t�i t��ng th��ng �i�u ki�n , l� b�t ��u v� m�i bang ph�i ph�t t��ng , n�y tr��c kh�ng d�n ph�n th��ng bang ch�ng �em kh�ng th� l�y ���c b�t k� t��ng th��ng .","Bang h�i k�ch th��c c�ng th�nh ph� c�n chi�n c�ng ��ch quan h� : nh�n s� <=300, chi�n c�ng 9999;300< nh�n s� <=600, chi�n c�ng 19999;600< nh�n s� <=900, chi�n c�ng 29999;900< nh�n s� <=1500, chi�n c�ng 39999;1500< nh�n s� , chi�n c�ng 49999."); 
end
