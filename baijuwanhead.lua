-- script viet hoa By http://tranhba.com baijuwanhead.lua 
-- script viet hoa By http://tranhba.com  ®Þnh nghÜa th­êng l­îng 

AEXP_SMALL_TIME_TASKID = 1801; -- script viet hoa By http://tranhba.com  ghi chÐp tiÓu B¹ch c©u # lÊy ®©y lµ béi sè ®Ých # kinh nghiÖm treo ky cßn thõa l¹i thêi gian 
AEXP_TASKID = 605; -- script viet hoa By http://tranhba.com  ghi chÐp râ rµng c©u # tiÓu B¹ch c©u ®Ých 1.5 lÇn # cßn thõa l¹i treo ky thêi gian nhiÖm vô thay ®æi l­îng 
AEXP_SPECIAL_TIME_TASKID = 2317; -- script viet hoa By http://tranhba.com  ghi chÐp ®Æc hiÖu râ rµng c©u # tiÓu B¹ch c©u ®Ých 2 lÇn hiÖu qu¶ # kinh nghiÖm treo ky cßn thõa l¹i thêi gian 
AEXP_TIANXING_TIME_TASKID = 2655; -- script viet hoa By http://tranhba.com  ghi chÐp thiªn tinh b¹ch c©u hoµn # tiÓu B¹ch c©u ®Ých 5 lÇn # cßn thõa l¹i treo ky thêi gian nhiÖm vô thay ®æi l­îng 

AEXP_SMALL_SKILL_TASKID = 1802 -- script viet hoa By http://tranhba.com  ghi chÐp kü n¨ng tiÓu B¹ch c©u # lÊy ®©y lµ béi sè ®Ých # kü n¨ng treo ky cßn thõa l¹i thêi gian 
AEXP_SKILL_TIME_TASKID = 2315; -- script viet hoa By http://tranhba.com  ghi chÐp kü n¨ng râ rµng c©u # kü n¨ng tiÓu B¹ch c©u ®Ých 1.5 lÇn hiÖu qu¶ # cßn thõa l¹i treo kü n¨ng thêi gian nhiÖm vô thay ®æi l­îng 
AEXP_SPECIAL_SKILL_TASKID = 2318; -- script viet hoa By http://tranhba.com  ghi chÐp ®Æc hiÖu kü n¨ng râ rµng c©u # kü n¨ng tiÓu B¹ch c©u ®Ých 2 lÇn hiÖu qu¶ # kü n¨ng treo ky cßn thõa l¹i thêi gian 

AEXP_SKILL_ID_TASKID = 2316; -- script viet hoa By http://tranhba.com  ghi chÐp c¸ch tuyÕn treo kü n¨ng th¨ng cÊp ®Ých kü n¨ng ID nhiÖm vô thay ®æi l­îng 

AEXP_FREQ = 5; -- script viet hoa By http://tranhba.com  khÊu trõ lóc mçi lÇn tuÇn hoµn khÊu trõ thêi gian , kinh nghiÖm mçi 5 phót gia t¨ng mét lÇn 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com  ®em thêi gian chuyÓn hãa thµnh trinh ®Õm , 18 trinh t­¬ng ®­¬ng víi trong trß ch¬i 1 gi©y 
AEXP_MAXTIME = 10000 * 3600 * FRAME2TIME; -- script viet hoa By http://tranhba.com  dông hé cã thÓ tÝch lòy ®Ých lín nhÊt thêi gian 
AEXP_BIGCHANGE = 8 * 3600 * FRAME2TIME; -- script viet hoa By http://tranhba.com  mét râ rµng c©u hoµn gia t¨ng ®Ých thêi gian 8 giê 
AEXP_SMALLCHANGE = AEXP_BIGCHANGE -- script viet hoa By http://tranhba.com  mét b¹ch c©u hoµn gia t¨ng ®Ých thêi gian 
AEXP_SKILLCHANGE = AEXP_BIGCHANGE -- script viet hoa By http://tranhba.com  mét kü n¨ng râ rµng c©u hoµn gia t¨ng ®Ých thêi gian 
AEXP_SPECIALCHANGE = AEXP_BIGCHANGE -- script viet hoa By http://tranhba.com  mét ®Æc hiÖu b¹ch c©u hoµn gia t¨ng ®Ých thêi gian 
AEXP_SPECIALSKILLCHANGE = AEXP_BIGCHANGE -- script viet hoa By http://tranhba.com  mét ®Æc hiÖu kü n¨ng râ rµng c©u hoµn gia t¨ng ®Ých thêi gian 

AEXP_INTERVAL = 5 * 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  gia t¨ng kinh nghiÖm chu kú 
-- script viet hoa By http://tranhba.com  râ rµng c©u hoµn ®Ých cÆn kÏ tin tøc 
AEXP_BIG_NGENTYPE = 6; 
AEXP_BIG_DETAILTYPE = 1; 
AEXP_BIG_PARTYPE = 130; 
-- script viet hoa By http://tranhba.com  b¹ch c©u hoµn ®Ých cÆn kÏ tin tøc 
AEXP_SMALL_NGENTYPE = 6; 
AEXP_SMALL_DETAILTYPE = 1; 
AEXP_SMALL_PARTYPE = 74; 
-- script viet hoa By http://tranhba.com  thªm kinh nghiÖm cÊp bËc h¹n chÕ 
AEXP_NEEDLEVEL = 50; 
AEXP_NEEDLEVEL_PARTNER = 10; -- script viet hoa By http://tranhba.com  ®ång b¹n ë bµy qu¶n lóc ®¹t ®­îc kinh nghiÖm thÊp nhÊt cÊp bËc 
AEXP_OFFLINE_PLAYERCOUNT_LIMIT = 800; -- script viet hoa By http://tranhba.com  khi mét m¸y phôc vô khÝ nh©n sè cña v­ît qua nµy sè l­îng , lµ kh«ng cho phÐp nhµ ch¬i ë n¬i nµy thai phôc vô khÝ bªn trong tiÕn hµnh c¸ch tuyÕn bµy qu¶n 
AEXP_OFFLINE_PLAYERCOUNT_SPECIAL = 750; -- script viet hoa By http://tranhba.com  chuyªn dông bµy qu¶n phôc vô khÝ cho phÐp bµy qu¶n nh©n sè 
AEXP_INVALIDTIMEBEGIN = 18; -- script viet hoa By http://tranhba.com  c¸ch tuyÕn treo ky kh«ng cã hiÖu qu¶ ®Ých lóc ®Çu thêi gian 
AEXP_INVALIDTIMEEND = 24; -- script viet hoa By http://tranhba.com  c¸ch tuyÕn treo ky kh«ng cã hiÖu qu¶ ®Ých ng­ng h¼n thêi gian 

AEXP_TEMPOFFLINETASKID = 170; -- script viet hoa By http://tranhba.com  sö dông b¹ch c©u hoµn lóc ®Ých nhiÖm vô thay ®æi l­îng 

AEXP_120SKILL_UPGRADE_EXP = 137500; -- script viet hoa By http://tranhba.com 120 kü n¨ng ®é thuÇn thôc t¨ng lªn v× ®Þnh trÞ gi¸ 

-- script viet hoa By http://tranhba.com  c¸ch tuyÕn treo kü n¨ng c¸c kü n¨ng cÊp bËc ®èi øng ®é thuÇn thôc t¨ng lªn tû lÖ 
ARY_UPGRADE_SKILL_EXP_PERCENT = { 0.0775, 0.0388, 0.0258, 0.0194, 0.0155, 0.013, 0.0111, 0.0097, 0.0086, 0.0039, 
0.0035, 0.0032, 0.0030, 0.0028, 0.0026, 0.0024, 0.0023, 0.0022, 0.0020 }; 
-- script viet hoa By http://tranhba.com  c¸ch tuyÕn treo kü n¨ng nh­ng t¨ng lªn kü n¨ng ID 
ARY_UPGRADE_SKILL = { 318, 319, 321, 322, 323, 325, 339, 302, 342, 353, 355, 328, 380, 336, 337, 357, 359, 362, 361, 368, 365, 375, 372, 709, 708, 710, 711, 712, 713, 714, 715, 716, 717 }; 

-- script viet hoa By http://tranhba.com  ®èi øng m«n ph¸i 1 0 2 3 4 5 6 7 8 9 
ARY_120SKILLID = { 708, 709, 710, 711, 712, 713, 714, 715, 716, 717 }; 
-- script viet hoa By http://tranhba.com  150 cÊp kü n¨ng 
ARY_UPGRADE_SKILL_150 = {1055,1056,1057,1059,1060,1058,1066,1067,1069,1070,1071,1061,1062,1114,1063,1065,1075,1076,1074,1073,1079,1078,1080,1081,} 

-- script viet hoa By http://tranhba.com Include("\\script\\missions\\boss\\makeboss_head.lua") 
IncludeLib("SETTING") 

if (GetProductRegion() == "cn_ib") then 
Include("\\script\\item\\ib\\zimudai.lua"); 
end 

-- script viet hoa By http://tranhba.com  tuÇn tra cßn thõa l¹i thêi gian 
function get_left_time() 
-- script viet hoa By http://tranhba.com  b¹ch c©u hoµn 
local nSmallExpSpareTime = GetTask(AEXP_SMALL_TIME_TASKID); 
local nSmallExpSpareTime_Hours, nSamllExpSpareTime_Minutes = getFrame2MinAndSec(nSmallExpSpareTime); -- script viet hoa By http://tranhba.com  cho dông hé ®Ò kú biÓu hiÖn ®Õn phót 

-- script viet hoa By http://tranhba.com  kü n¨ng b¹ch c©u hoµn 
local nSamllSkillSpareTime = GetTask(AEXP_SMALL_SKILL_TASKID); 
local nSamllSkillSpareTime_Hours, nSamlllSkillSpareTime_Minutes = getFrame2MinAndSec(nSamllSkillSpareTime); -- script viet hoa By http://tranhba.com  cho dông hé ®Ò kú biÓu hiÖn ®Õn phót 

-- script viet hoa By http://tranhba.com  b×nh th­êng râ rµng c©u hoµn 
local nExpSpareTime = GetTask(AEXP_TASKID); 
local nExpSpareTime_Hours, nExpSpareTime_Minutes = getFrame2MinAndSec(nExpSpareTime); -- script viet hoa By http://tranhba.com  cho dông hé ®Ò kú biÓu hiÖn ®Õn phót 

-- script viet hoa By http://tranhba.com  kü n¨ng râ rµng c©u hoµn 
local nSkillExpSpareTime = GetTask(AEXP_SKILL_TIME_TASKID); 
local nSkillExpSpareTime_Hours, nSkillExpSpareTime_Minutes = getFrame2MinAndSec(nSkillExpSpareTime); -- script viet hoa By http://tranhba.com  cho dông hé ®Ò kú biÓu hiÖn ®Õn phót 

-- script viet hoa By http://tranhba.com  ®Æc hiÖu râ rµng c©u hoµn 
local nSpecialExpSpareTime = GetTask(AEXP_SPECIAL_TIME_TASKID); 
local nSpecialExpSpareTime_Hours, nSpecialExpSpareTime_Minutes = getFrame2MinAndSec(nSpecialExpSpareTime); 

-- script viet hoa By http://tranhba.com  ®Æc hiÖu kü n¨ng râ rµng c©u hoµn 
local nSpecialSkillSpareTime = GetTask(AEXP_SPECIAL_SKILL_TASKID); 
local nSpecialSkillSpareTime_Hours, nSpecialSkillSpareTime_Minutes = getFrame2MinAndSec(nSpecialSkillSpareTime); 

-- script viet hoa By http://tranhba.com  thiªn tinh b¹ch c©u hoµn 
local nTianxingExpSpareTime = GetTask(AEXP_TIANXING_TIME_TASKID); 
local nTianxingExpSpareTime_Hours, nTianxingExpSpareTime_Minutes = getFrame2MinAndSec(nTianxingExpSpareTime); 


if (GetProductRegion() == "cn_ib") then 
-- script viet hoa By http://tranhba.com  bµy s¹p 
local restStall = GetTask(AEXP_STALL_TIME_TASKID) 
local nStall_Hour, nStall_Min = getFrame2MinAndSec(restStall) 

-- script viet hoa By http://tranhba.com  oµnh lai tiªn th¶o lé 
local nXianCaoTime = GetTask(AEXP_XIANCAO_TIME_TASKID); 
local nXianCao_Hour, nXianCao_Min = getFrame2MinAndSec(nXianCaoTime); 
end 

local nSkillExpID = GetTask(AEXP_SKILL_ID_TASKID); 
local szSkillExpName = ""; 
if (nSkillExpID ~= 0) then 
szSkillExpName = "<color=yellow>"..GetSkillName(nSkillExpID).."<color>"; 
else 
szSkillExpName = "<color=blue> kh«ng lùa chän kü n¨ng <color>"; 
end 

local szmsg = format("Ng­¬i c¸ch tuyÕn bµy qu¶n cßn thõa l¹i thêi gian lµ : thiªn tinh b¹ch c©u hoµn <color=red>%d<color> giê <color=red>%d<color> phót ".. 
"<enter> ®Æc hiÖu râ rµng c©u hoµn <color=red>%d<color> giê <color=red>%d<color> phót ".. 
"<enter> râ rµng c©u hoµn <color=red>%d<color> giê <color=red>%d<color> phót ".. 
"<enter> b¹ch c©u hoµn <color=red>%d<color> giê <color=red>%d<color> phót ".. 
"<enter> kü n¨ng ®é thuÇn thôc (%s): ®Æc hiÖu kü n¨ng râ rµng c©u hoµn <color=red>%d<color> giê <color=red>%d<color> phót ".. 
"<enter> kü n¨ng râ rµng c©u hoµn <color=red>%d<color> giê <color=red>%d<color> phót ".. 
"<enter> kü n¨ng b¹ch c©u hoµn <color=red>%d<color> giê <color=red>%d<color> phót ".. 
"<enter> bµy qu¶n lóc nÕu nh­ cã thiªn tinh b¹ch c©u hoµn hiÖu qu¶ , ­u tiªn theo nh­ nµy hiÖu qu¶ cho cïng kinh nghiÖm còng khÊu trõ kú ®èi øng hiÖu qu¶ thêi gian . ", 
nTianxingExpSpareTime_Hours, nTianxingExpSpareTime_Minutes, 
nSpecialExpSpareTime_Hours,nSpecialExpSpareTime_Minutes, 
nExpSpareTime_Hours,nSamllExpSpareTime_Minutes, 
nSmallExpSpareTime_Hours,nExpSpareTime_Minutes, 
szSkillExpName, nSpecialSkillSpareTime_Hours,nSpecialSkillSpareTime_Minutes, 
nSkillExpSpareTime_Hours,nSkillExpSpareTime_Minutes, 
nSamllSkillSpareTime_Hours,nSamlllSkillSpareTime_Minutes); 

Describe(szmsg, 1,"KÕt thóc ®èi tho¹i /cancel"); 
end 


-- script viet hoa By http://tranhba.com  trî gióp chøc n¨ng 
function help() 
Talk(1,"help1","C¸ch tuyÕn bµy qu¶n cÆn kÏ giíi thiÖu # ng­¬i cã thÓ ë kú tr©n c¸c chç dïng kim tÖ mua râ rµng c©u hoµn . "); 
end 
function help1() 
Talk(2,"help2","Mét <color=blue> b¹ch c©u hoµn <color> cã thÓ c¸ch tuyÕn bµy qu¶n <color=red>1 giê <color> , mét <color=blue> râ rµng c©u hoµn <color> cã thÓ c¸ch tuyÕn bµy qu¶n <color=red>8<color> giê , mét <color=blue> tr­êng hiÖu râ rµng c©u hoµn <color> cã thÓ c¸ch tuyÕn bµy qu¶n <color=red>80<color> giê , cã thÓ tÝch lòy c¸ch tuyÕn bµy qu¶n thêi gian . ", 
" ng­¬i cã thÓ ë b¶y ®¹i thµnh thÞ ®Ých <color=red> sè kh«ng phiÕn <color> chç tuÇn tra ng­¬i cßn thõa l¹i c¸ch tuyÕn bµy qu¶n thêi gian , còng cã thÓ ®ang sö dông c¸ch tuyÕn bµy qu¶n vËt phÈm lóc tuÇn tra . "); 
end 

function help2() 
Talk(1,"help3","Sö dông h¹n chÕ # ng­¬i cã thÓ ë tÊt c¶ thµnh trÊn # th«n trang cïng víi thËp ®¹i bªn trong m«n ph¸i , lùa chän thèi lui ra giíi mÆt # theo nh­ Esc kiÖn b¾n ra ®Ých giíi mÆt # trung ®Ých c¸ch tuyÕn bµy qu¶n chän h¹ng , tù ®éng tiÕn vµo c¸ch tuyÕn bµy qu¶n tr¹ng th¸i . "); 
end 
function help3() 
Talk(2,"help4", "# ®¹i # b¹ch c©u hoµn sö dông hiÖu qu¶ # ë ng­¬i tiÕn vµo c¸ch tuyÕn bµy qu¶n tr¹ng th¸i sau , c¸ch tuyÕn bµy qu¶n thêi gian b¾t ®Çu tÝnh to¸n . hÖ thèng sÏ cÊt gi÷ ng­¬i tr­íc mÆt tr¹ng th¸i # bao gåm bµy s¹p ë bªn trong # tiÕn vµo c¸ch tuyÕn bµy qu¶n . c¸ch tuyÕn bµy qu¶n tr¹ng th¸i trung , <color=red>50 cÊp trë xuèng <color> ®Ých nhµ ch¬i sÏ kh«ng ®¹t ®­îc kinh nghiÖm trÞ gi¸ . ","<color=red>50 cÊp cïng 50 cÊp trë lªn <color> ®Ých nhµ ch¬i mçi <color=red>5 phót <color> cã thÓ ®¹t ®­îc t­¬ng øng kinh nghiÖm trÞ gi¸ , nh­ng lµ c¸ch tuyÕn bµy qu¶n tr¹ng th¸i trung sö dông nh÷ng kh¸c gia t¨ng kinh nghiÖm vËt phÈm # tiªn th¶o lé # t¸m tr©n phóc th¸ng ®oµn viªn bÝnh # kh«ng cã hiÖu qu¶ , th¶ vËt phÈm ®Ých c«ng hiÖu thêi gian vÉn sÏ suy gi¶m . c¸ch tuyÕn bµy qu¶n tr¹ng th¸i trung , tiÕp tôc tÝnh to¸n ng­¬i nh­ng tiÕn hµnh trß ch¬i thêi gian . "); 
end 
function help4() 
Talk(2,"help5","Kü n¨ng # ®¹i # b¹ch c©u hoµn sö dông hiÖu qu¶ # ë ng­¬i tiÕn vµo c¸ch tuyÕn bµy qu¶n tr¹ng th¸i sau , c¸ch tuyÕn bµy qu¶n thêi gian b¾t ®Çu tÝnh to¸n . hÖ thèng sÏ cÊt gi÷ ng­¬i tr­íc mÆt tr¹ng th¸i # bao gåm bµy s¹p ë bªn trong # tiÕn vµo c¸ch tuyÕn bµy qu¶n . c¸ch tuyÕn bµy qu¶n tr¹ng th¸i trung , 90 cÊp kü n¨ng ®Ých ®é thuÇn thôc mçi 5 phót sÏ tù ®éng t¨ng lªn 1 lÇn . ","Ng­¬i cã thÓ ë bµy qu¶n tr­íc lùa chän h¶o cÇn t¨ng lªn ®é thuÇn thôc ®Ých 90 cÊp kü n¨ng . c¸ch tuyÕn bµy qu¶n tr¹ng th¸i trung , tiÕp tôc tÝnh to¸n ng­¬i nh­ng tiÕn hµnh trß ch¬i thêi gian . "); 
end 
function help5() 
Talk(2,"","Khi ng­¬i ®Ých c¸ch tuyÕn bµy qu¶n thêi gian hoÆc lµ ng­¬i nh­ng tiÕn hµnh trß ch¬i thêi gian lµ <color=red>0<color> , ng­¬i sÏ tù ®éng h¹ tuyÕn . khi ng­¬i ë tiÕn vµo c¸ch tuyÕn bµy qu¶n tr¹ng th¸i sau , nÕu nh­ phôc vô khÝ më l¹i , ng­¬i sÏ tù ®éng h¹ tuyÕn , ®ång thêi b¶o tån ng­¬i cßn thõa l¹i c¸ch tuyÕn bµy qu¶n thêi gian , h¬n n÷a sÏ kh«ng nÆng ngay c¶ . ","Khi ng­¬i lÇn n÷a ®¨ng lôc trß ch¬i lóc , sÏ tù ®éng kÕt thóc c¸ch tuyÕn bµy qu¶n tr¹ng th¸i , ®ång thêi b¶o tån ng­¬i cßn thõa l¹i c¸ch tuyÕn bµy qu¶n thêi gian . "); 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc nhµ ch¬i cã thÓ c¸ch tuyÕn treo kü n¨ng th¨ng cÊp ®Ých kü n¨ng 
function getexpskill() 
local aryExpSkill = {}; 
local nExpSkillCount = 0; 
local nAllUpgradeSkillCount = getn(ARY_UPGRADE_SKILL); 
for i = 1, nAllUpgradeSkillCount do 
local nCurSkillID = ARY_UPGRADE_SKILL[i]; 
local nCurSkillLevel = GetCurrentMagicLevel(nCurSkillID, 0); 
if (nCurSkillLevel >= 1 and nCurSkillLevel <= getn(ARY_UPGRADE_SKILL_EXP_PERCENT)) then 
			nExpSkillCount = nExpSkillCount + 1;
aryExpSkill[nExpSkillCount] = {}; 
aryExpSkill[nExpSkillCount][1] = nCurSkillID; 
aryExpSkill[nExpSkillCount][2] = GetSkillName(nCurSkillID); 
end 
end 
return aryExpSkill; 
end 

-- script viet hoa By http://tranhba.com  lùa chän c¸ch tuyÕn bµy qu¶n kü n¨ng 
function selectofflineskill() 
local aryExpSkill = getexpskill(); 
local nExpSkillCount = getn(aryExpSkill); 
local aryszExpSkill = {}; 
local szSayCmd = " xin/mêi lùa chän ngµi cÇn c¸ch tuyÕn bµy qu¶n kü n¨ng :"; 
for i = 1, nExpSkillCount do 
aryszExpSkill[i] = format("%s/#onSetUpgradeSkill(%d)",aryExpSkill[i][2],aryExpSkill[i][1]); 
end 
tinsert(aryszExpSkill,"Trë vÒ /judgecontion") 
Say(szSayCmd, getn(aryszExpSkill), aryszExpSkill); 
end 

-- script viet hoa By http://tranhba.com  thiÕt trÝ c¸ch tuyÕn bµy qu¶n kü n¨ng 
function onSetUpgradeSkill(nUpgradeSkillID, funcCallBack) 
SetTask(AEXP_SKILL_ID_TASKID, nUpgradeSkillID); 
funcCallBack(); 
end 

-- script viet hoa By http://tranhba.com  c¨n cø kü n¨ng cÊp bËc ®é thuÇn thôc tù ®éng thiÕt trÝ c¸ch tuyÕn treo kü n¨ng th¨ng cÊp ®Ých kü n¨ng ID 
function autosetupgradeskill() 
local nSkillCount = getn(ARY_UPGRADE_SKILL); 
local nUpgradeSkillID = 0; 
local nUpgradeSkillLevel = 0; 
local nUpgradeSkillExp = 0; 
for i = 1, nSkillCount do 
local nCurSkillID = ARY_UPGRADE_SKILL[i]; 
local nCurSkillLevel = GetCurrentMagicLevel(nCurSkillID, 0); 
local nCurSkillExp = GetSkillExp(nCurSkillID); 
if (nCurSkillLevel >= 1 and nCurSkillLevel <= getn(ARY_UPGRADE_SKILL_EXP_PERCENT) and 
(nCurSkillLevel > nUpgradeSkillLevel or 
(nCurSkillLevel == nUpgradeSkillLevel and nCurSkillExp > nUpgradeSkillExp))) then 
nUpgradeSkillID = nCurSkillID; 
nUpgradeSkillLevel = nCurSkillLevel; 
nUpgradeSkillExp = nCurSkillExp; 
end 
end 
SetTask(AEXP_SKILL_ID_TASKID, nUpgradeSkillID); 
end 

function getFrame2MinAndSec(nframe) 
local minutes = floor(nframe / (FRAME2TIME * 60)); -- script viet hoa By http://tranhba.com  cho dông hé ®Ò kú biÓu hiÖn ®Õn phót 
local hours = floor(minutes / 60); 
local minutes = minutes - hours * 60; 
return hours, minutes; 
end; 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n nhµ ch¬i cã hay kh«ng sung qu¸ t¹p 
function IsCharged() 
if( GetExtPoint( 0 ) >= 1 ) then 
return 1; 
else 
return 0; 
end 
end; 

function cancel() 
-- script viet hoa By http://tranhba.com do nothing 
end; 

function getBaiJutimeinfo() 
-- script viet hoa By http://tranhba.com  ®Æc hiÖu râ rµng c©u hoµn b×nh th­êng râ rµng c©u hoµn b¹ch c©u hoµn 
local tbAexpTask = {AEXP_TIANXING_TIME_TASKID,AEXP_SPECIAL_TIME_TASKID,AEXP_TASKID, AEXP_SMALL_TIME_TASKID, 
-- script viet hoa By http://tranhba.com  ®Æc hiÖu kü n¨ng râ rµng c©u hoµn kü n¨ng râ rµng c©u hoµn kü n¨ng b¹ch c©u hoµn 
AEXP_SPECIAL_SKILL_TASKID, AEXP_SKILL_TIME_TASKID, AEXP_SMALL_SKILL_TASKID}; 
local tbszItem = {"offlineitem_tianxing", "offlineitem_special", "offlineitem_normal", "offlineitem_small", 
"skillofflineitem_special", "skillofflineitem_normal", "skillofflineitem_small"}; 
local szmsg = ""; 
for i = 1, getn(tbAexpTask) do 
local nhour, nminite = getFrame2MinAndSec(GetTask(tbAexpTask[i])); -- script viet hoa By http://tranhba.com  cho dông hé ®Ò kú biÓu hiÖn ®Õn phót 
szmsg = format("%s\n %s lasttime:%d hour %d minite", szmsg, tbszItem[i], nhour, nminite); 
end; 
return szmsg; 
end; 

function writeUseBaiJulog(szitem, nhour,nmin) 
local szlog = format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tuse<%s>, lasttime %d hour %d minite", 
GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), szitem, nhour, nmin); 
WriteLog(szlog); 
end;
