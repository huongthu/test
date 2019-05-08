-- script viet hoa By http://tranhba.com  th­ëng thiÖn khiÕn cho 
-- script viet hoa By http://tranhba.com hehongpeng 2004-12-27 
Include("\\script\\global\\shangchenghead.lua")

CityData = {0, 0, 0, 0, 0, 0, 0}; 

function main() 
if (nil) then 
Say("VËt phÈm sai lÇm #", 0) 
return 
end 
-- script viet hoa By http://tranhba.com  häc lÊy tån m©m v¨n kiÖn , b¶o ®¶m chØ häc lÊy mét lÇn 
loadsavevalue() 

local aryszContent = 
{ 
"<#> th­ëng thiÖn khiÕn cho : ta lµ tr«ng coi th­ëng thiÖn lµm ®İch sø gi¶ , ta cã thÓ gióp ng­¬i c¸i g× ®©y ? ", 
"<#> ®Ò giao th­ëng thiÖn lµm /onsubmit", 
"<#> nhËn lÊy t­ëng th­ëng /ontakeprize", 
"<#> tuÇn tra bæn bang sÏ chiÕm dÉn thµnh phè ®İch chiÕn c«ng /onchecknum", 
"<#> hiÓu râ lÇn nµy ho¹t ®éng /onhelp", 
"<#> ta ch¼ng qua lµ tíi ®i d¹o mét chót /oncancel", 
} 

Say(aryszContent[1], 5, aryszContent[2], aryszContent[3], aryszContent[4], aryszContent[5], aryszContent[6]); 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc mét nhµ ch¬i chç ë bang héi chiÕm lÜnh ®İch thµnh phè , trë vÒ t¸c dÉn trŞ gi¸ 
function gettongownercity() 
-- script viet hoa By http://tranhba.com  lÊy ®­îc nhµ ch¬i bang héi tªn 
local strTongName = GetTongName() 
if (strTongName == nil or strTongName == "") then 
return 0 
end 

-- script viet hoa By http://tranhba.com  chia ra lÊy ®­îc b¶y ®¹i thµnh thŞ ®İch bang héi tªn cïng nhµ ch¬i bang héi tªn so s¸nh 
local strCityTongName 

for nCityID=1, 7 do 
strCityTongName = GetCityOwner(nCityID) 
if (strCityTongName ~= "") then 
if (strCityTongName == strTongName) then 
return nCityID 
end 
end 
end 

-- script viet hoa By http://tranhba.com  bµy tá nhµ ch¬i chç ë bang héi kh«ng cã chiÕm lÜnh thµnh phè 
return 0 
end 

-- script viet hoa By http://tranhba.com  mét thµnh phè ®İch th­ëng thiÖn lµm gia t¨ng ®Õn b¾t ®Çu t­ëng th­ëng ®İch sè l­îng 
function beginadward(nCityIndex) 
-- script viet hoa By http://tranhba.com  ®Çu tiªn thanh kh«ng tÊt c¶ thµnh phè mÖt mái kÕ ®İch th­ëng thiÖn lµm 
for i=1, 7 do 
SetGlbValue(arraycitytoglobalvalue[i], 0) 
end 

-- script viet hoa By http://tranhba.com  thanh kh«ng tÊt c¶ mÖt mái ®Õm hÕt theo 
for i=1, 7 do 
CityData[i] = 0 
end 

local strTongName = GetCityOwner(nCityIndex) 
-- script viet hoa By http://tranhba.com  tån tr÷ muèn th­ëng ®İch thµnh phè t¸c dÉn 
SetGlbValue(AEXP_GLOBAL_ADWARD_CITY, nCityIndex) 

-- script viet hoa By http://tranhba.com  thiÕt trİ t­ëng th­ëng ®İch kú h¹n chãt 
-- script viet hoa By http://tranhba.com  tån tr÷ thêi gian thay ®æi l­îng ( hÖ thèng thêi gian ) 
	local nEnddate = GetCurrentTime() + AEXP_ADWARD_HOURNUM * 60 * 60
SetGlbValue(AEXP_GLOBAL_ENDDATE, nEnddate) 

-- script viet hoa By http://tranhba.com  tiÕn hµnh tån m©m 
savevalue() 

-- script viet hoa By http://tranhba.com  gia t¨ng thÕ giíi biÓu hiÖn tin tøc 
AddGlobalCountNews("Bang héi "..strTongName.." chiÕm lÜnh thµnh phè ®İch chiÕn c«ng ®¹t tíi ®¹t ®­îc ®em lÖ ®İch yªu cÇu , xin/mêi nªn gióp tÊt c¶ bang chóng ®Õn D­¬ng Ch©u th­ëng thiÖn khiÕn cho chç nhËn lÊy t­ëng th­ëng , t­ëng th­ëng kú h¹n v× "..AEXP_ADWARD_HOURNUM.." giê , qu¸ h¹n kh«ng hËu . tÊt c¶ thµnh phè chiÕn c«ng toµn bé thanh kh«ng ", 1) 
end 

function onsubmit() 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n chiÕm lÜnh thµnh phè ®İch bang héi 
local nCityIndex = gettongownercity() 
if (nCityIndex < 1) then 
Say("<#> ng­¬i kh«ng cã gia nhËp bang héi hoÆc lµ ng­¬i bang héi kh«ng cã chiÕm lÜnh thµnh phè , kh«ng c¸ch nµo ®Ò giao th­ëng thiÖn lµm . ", 0) 
return 
end 

-- script viet hoa By http://tranhba.com  më ra cho cïng giíi mÆt 
local nNum = GetGlbValue(arraycitytoglobalvalue[nCityIndex]) 
GiveItemUI("§Ò giao th­ëng thiÖn lµm ","Th­ëng thiÖn lµm cã thÓ gia t¨ng bang héi chiÕm lÜnh thµnh phè ®İch chiÕn c«ng , khi chiÕn c«ng tİch lòy ®Õn sè l­îng nhÊt ®Şnh , bæn bang sÏ tÊt c¶ bang chóng còng sÏ lÊy ®­îc ®¹i t­ëng , c¸c ng­¬i bang ph¸i tr­íc m¾t chiÕm lÜnh thµnh thŞ lµ <color=read>"..arraycityindextoname[nCityIndex].."<color>, chiÕn c«ng v× :<color=read>"..nNum.."<color>", "onsubmitconfirm", "oncancel" ); 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc nh­ng ®¹t ®­îc t­ëng th­ëng ®İch lÖnh bµi sè l­îng 
function GetMaxCardCount() 
local count = GetTongMemberCount() 
if (count == 0) then 
return 999999999 
end 
	if (count > 1500) then	-- script viet hoa By http://tranhba.com  (1500, +¡Ş)
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
Msg2Player("Ng­¬i kh«ng cã nãi ®ãng th­ëng thiÖn lµm ") 
return 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n bæn bang sÏ chiÕm dÉn ®İch thµnh phè 
local nCityIndex = gettongownercity(); 
if (nCityIndex < 1) then 
Say("Ng­¬i kh«ng cã gia nhËp bang héi hoÆc lµ ng­¬i bang héi kh«ng cã chiÕm lÜnh thµnh phè , kh«ng c¸ch nµo ®Ò giao th­ëng thiÖn lµm . ", 0) 
return 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n vËt phÈm lµ hay kh«ng v× th­ëng thiÖn lµm 
for i = 1, nCount do 
local nItemIndex = GetGiveItemUnit(i) 
ItemGenre, DetailType, ParticularType = GetItemProp(nItemIndex) 

if (ItemGenre ~= AEXP_AWARDMEDIAL_NGENTYPE or 
DetailType ~= AEXP_AWARDMEDIAL_DETAILTYPE or 
ParticularType ~= AEXP_AWARDMEDIAL_PARTYPE) then 
Msg2Player("Ng­¬i thËt gièng nh­ cã ®å kh«ng ph¶i lµ th­ëng thiÖn lµm yªu #") 
return 0 
end 
end 
local nTotalNum = 0; 
-- script viet hoa By http://tranhba.com  thñ tiªu tÊt c¶ th­ëng thiÖn lµm 
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
Msg2Player("C¸c ng­¬i bang ph¸i chiÕm lÜnh ®İch thµnh phè "..arraycityindextoname[nCityIndex].." ®¹t ®­îc t­ëng th­ëng , ng­¬i nhanh lªn ®i nhËn lÊy t­ëng th­ëng ®i ") 
WriteLog( "["..date("%Y-%m-%d %X").."] bang héi :"..strTongName.." thµnh phè "..arraycityindextoname[nCityIndex].." ®¹t ®­îc t­ëng th­ëng . "..GetAccount().."("..GetName()..") ®Ò giao liÔu "..nTotalNum.." c¸ th­ëng thiÖn lµm (Current OnlineTime: "..GetGameTime().." sec)" ); 
beginadward(nCityIndex) 
else 
		CityData[nCityIndex] = CityData[nCityIndex] + nTotalNum
if (CityData[nCityIndex] > AEXP_ADDMAX_SAVE) then 
CityData[nCityIndex] = 0 
WriteLog( "["..date("%Y-%m-%d %X").."] bang héi "..strTongName.." thµnh phè "..arraycityindextoname[nCityIndex].." bëi v× "..GetAccount().."("..GetName()..") ®Ò giao liÔu "..nTotalNum.." c¸ th­ëng thiÖn lµm , th­ëng thiÖn lµm v­ît qua tån m©m sè l­îng tiÕn hµnh tån m©m , th­ëng thiÖn lµm sè l­îng v× :"..nNum.."(Current OnlineTime: "..GetGameTime().." sec)" ); 
savevalue() 
end 
Msg2Player("C¸c ng­¬i bang héi chiÕn c«ng t¨ng lªn "..nTotalNum..", tr­íc m¾t lµ :"..nNum); 
end 
end 

function ontakeprize() 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhµ ch¬i bang héi chiÕm ®o¹t thµnh phè ®İch t¸c dÉn 
local nCityIndex = gettongownercity() 
if (nCityIndex < 1 ) then 
Say("<#> ng­¬i kh«ng cã gia nhËp bang héi hoÆc ng­¬i bang héi kh«ng cã chiÕm lÜnh thµnh phè , kh«ng c¸ch nµo ®¹t ®­îc t­ëng th­ëng . ", 0); 
return 0 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhµ ch¬i bang héi chiÕm ®o¹t thµnh thŞ lµ hay kh«ng lÊy ®­îc ®İch t­ëng th­ëng 
local nAdwardCityIndex = GetGlbValue(AEXP_GLOBAL_ADWARD_CITY) 
if (nAdwardCityIndex < 1) then 
Say("<#> tr­íc mÆt kh«ng cã thµnh phè ®¹t ®­îc t­ëng th­ëng , kh«ng c¸ch nµo nhËn lÊy . ", 0); 
return 0 
end 

if (nAdwardCityIndex ~= nCityIndex) then 
Say("<#> ng­¬i chç ë bang héi chiÕm lÜnh thµnh phè ®İch thµnh phè chiÕn c«ng kh«ng ®ñ , kh«ng cã ®¹t ®­îc t­ëng th­ëng . ", 0); 
return 0 
end 

local nNow = GetCurrentTime() 
local nLastdate = GetGlbValue(AEXP_GLOBAL_ENDDATE); 
if (nNow > nLastdate) then 
Say("<#> dÉn t­ëng kú h¹n ®· qua , kh«ng c¸ch nµo nhËn lÊy lÇn nµy thµnh phè chiÕn c«ng lÊy ®­îc t­ëng th­ëng . ", 0); 
SetTask(1074,0); 
return 0 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhµ ch¬i ®İch vµo gióp thêi gian 
if (GetJoinTongTime() < AEXP_PLAYERTONG_LIMIT * 24 * 60) then 
Say("<#> ng­¬i vµo gióp thêi gian kh«ng tíi <color=red>"..AEXP_PLAYERTONG_LIMIT.."<color> ngµy , kh«ng c¸ch nµo nhËn lÊy t­ëng th­ëng . ", 0); 
return 0 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhµ ch¬i mét lÇn cuèi cïng ®İch dÉn t­ëng nhËt kú 
local today = tonumber(date("%Y%m%d")) 
local nLastAdward = GetTask(AEXP_TASK_ADWARDDATE) 
if (today == nLastAdward) then 
Say("<#> h«m nay t­ëng th­ëng ng­¬i ®· nhËn lÊy , kh«ng thÓ lÇn n÷a nhËn lÊy l©u . ", 0); 
return 0 
end 

-- script viet hoa By http://tranhba.com  nÕu nh­ tÊt c¶ ®iÒu kiÖn còng tháa m·n nh­ vËy cho cïng t­ëng th­ëng 
if(GetTask(1074) ~= 1) then 
Say("<#> ng­¬i ch­a tõng ®Ò giao th­ëng thiÖn lµm v× bang héi lµm cèng hiÕn , kh«ng thÓ nhËn lÊy t­ëng th­ëng . ",0); 
return 0 
end 
giveprize(); 
return 1 
end 

-- script viet hoa By http://tranhba.com  nÕu nh­ ®Òu ®­îc c«ng nh­ vËy , cho nhµ ch¬i t­ëng th­ëng 
function giveprize() 
-- script viet hoa By http://tranhba.com  t­ëng th­ëng ( tiªn th¶o lé ®İch t­ëng th­ëng ) 
-- script viet hoa By http://tranhba.com  ngay sau ®ã t¹o thµnh t­ëng th­ëng 
local iRand = random(1,1) 
if (iRand == 1) then 
local nExpRate = 0-- script viet hoa By http://tranhba.com GetNpcExpRate() 
if (nExpRate == nil) then 
nExpRate = 1 
end 
if (nExpRate <= 100) then 
AddSkillState(440, 1, 1, AEXP_ADWARD_TIME * FRAME2TIME * 60 * 60); 
SetTask(1074,0); 
Say("Chóc mõng ng­¬i , ng­¬i thu ®­îc ë "..AEXP_ADWARD_TIME.." giê bªn trong kinh nghiÖm gÊp ®«i ®İch t­ëng th­ëng ", 0) 
else 
Say("<#> thËt xin lçi , tr­íc m¾t t¹m thêi kh«ng c¸ch nµo cho ng­¬i kinh nghiÖm t¨ng gÊp béi . ", 0) 
return 1 
end 
else 
-- script viet hoa By http://tranhba.com  ë chç nµy t¨ng thªm kh¸c t­ëng th­ëng ®i 
end 

-- script viet hoa By http://tranhba.com  ®o¹n v¨n nµy ®Ó ®­a tíi ®©y cßn lµ tr­íc mÆt ? 
-- script viet hoa By http://tranhba.com  thiÕt trİ nhµ ch¬i cuèi cïng dÉn t­ëng nhËt kú 
WriteLog( "["..date("%Y-%m-%d %X").."] thµnh phè chiÕn c«ng mÖt mái kÕ ®Õn nhÊt ®Şnh h¹n ®é . nhµ ch¬i "..GetAccount().."("..GetName()..") nhËn lÊy t­ëng th­ëng (Current OnlineTime: "..GetGameTime().." sec)" ); 

-- script viet hoa By http://tranhba.com  thiÕt trİ lÇn tr­íc dÉn t­ëng ®İch nhËt kú 
local today = tonumber(date("%Y%m%d")) 
SetTask(AEXP_TASK_ADWARDDATE, today) 
end 

function onchecknum() 
-- script viet hoa By http://tranhba.com  lÊy ®­îc nhµ ch¬i chç ë bang héi chiÕm lÜnh thµnh phè ®İch t¸c dÉn 
-- script viet hoa By http://tranhba.com  nÕu nh­ İt h¬n 1 nh­ vËy bµy tá nhµ ch¬i ®İch bang héi kh«ng cã chiÕm lÜnh thµnh phè 
local nCityIndex = gettongownercity() 
if (nCityIndex < 1 ) then 
Say("<#> ng­¬i kh«ng cã gia nhËp bang héi hoÆc lµ ng­¬i chç ë bang héi kh«ng cã chiÕm lÜnh thµnh phè , kh«ng cã thµnh phè chiÕn c«ng tİch lòy . ", 0); 
return 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc nhµ ch¬i bang héi chiÕm lÜnh thµnh phè ®İch th­ëng thiÖn dÉn sè l­îng 
local nNum = GetGlbValue(arraycitytoglobalvalue[nCityIndex]) 
Say("<#> c¸c ng­¬i bang héi chiÕm lÜnh thµnh phè v× <color=red>"..arraycityindextoname[nCityIndex].."<color>, thµnh phè chiÕn c«ng v× :<color=red>"..nNum.."<color>", 0); 
end 

function oncancel() 
return 
end 

function onhelp() 
Talk(2, "continuefun_help","<#> th­ëng thiÖn ph¹t ¸c hÖ thèng giíi thiÖu : nhµ ch¬i cã thÓ ë 50 cÊp trë lªn b¶n ®å , ®¸nh tr¸ch r¬i xuèng lÊy ®­îc th­ëng thiÖn lµm cïng ph¹t ¸c lµm .7 ®¹i thµnh thŞ chiÕm lÜnh bang ph¸i ®İch thµnh viªn nh­ng ®Õn D­¬ng Ch©u th­ëng thiÖn khiÕn cho [ n÷ ] ®Ò giao th­ëng thiÖn lµm , lµm gèc gióp ®İch thµnh phè tİch lòy t­¬ng øng l­îng ®İch chiÕn c«ng .","TÊt c¶ nhµ ch¬i cã thÓ ®Õn D­¬ng Ch©u ph¹t ¸c khiÕn cho # nam # sö dông ph¹t ¸c lµm trõng ph¹t # ®¹i thµnh thŞ . mçi khi nhµ ch¬i ®èi víi mét thµnh phè ®Ò giao mét ph¹t ¸c lµm , lµ nªn thµnh phè ®İch th­ëng thiÖn lµm tİch lòy sè l­îng ®em gi¶m ®i mét ."); 
end 

function continuefun_help() 
Talk(3, "","Khi mét thµnh phè tİch lòy ®İch chiÕn c«ng ®¹t tíi sè l­îng nhÊt ®Şnh , tÊt c¶ vµo gióp thêi gian lín h¬n # ngµy th¶ v× bang héi ®Ò giao liÔu th­ëng thiÖn lµm ®İch ®İch thµnh viªn , còng cã thÓ ë mét ngµy dÉn t­ëng thêi gian bªn trong ®¹t ®­îc # giê kinh nghiÖm gÊp ®«i ®İch ®Æc thï t­ëng th­ëng , h¬n n÷a nh÷ng thµnh thŞ kh¸c ®İch th­ëng thiÖn lµm sè l­îng thanh linh .","Chó ı :<color=red> trong lóc ë chç nµy xin kh«ng cÇn sö dông tiªn th¶o lé , h¬n n÷a mét khi tö vong gÊp ®«i kinh nghiÖm mÊt ®i hiÖu lùc .<color> ë dÉn t­ëng trong lóc , nh­ cã kú tha thµnh phè chiÕn c«ng lÇn n÷a ®¹t tíi t­ëng th­ëng ®iÒu kiÖn , lµ b¾t ®Çu v× míi bang ph¸i ph¸t t­ëng , nµy tr­íc kh«ng dÉn phÇn th­ëng bang chóng ®em kh«ng thÓ lÊy ®­îc bÊt kú t­ëng th­ëng .","Bang héi kİch th­íc cïng thµnh phè cÇn chiÕn c«ng ®İch quan hÖ : nh©n sè <=300, chiÕn c«ng 9999;300< nh©n sè <=600, chiÕn c«ng 19999;600< nh©n sè <=900, chiÕn c«ng 29999;900< nh©n sè <=1500, chiÕn c«ng 39999;1500< nh©n sè , chiÕn c«ng 49999."); 
end
