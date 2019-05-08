
-- script viet hoa By http://tranhba.com  d· tÈu nhiÖm vô liªn ch©n vèn ®Çu v¨n kiÖn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2004/12/25 lÔ gi¸ng sinh buæi s¸ng 

IncludeLib("FILESYS"); 

TL_MAXTIMES = 20 -- script viet hoa By http://tranhba.com  mçi liªn cã 20 c¸ nhiÖm vô 
TL_MAXLINKS = 20 -- script viet hoa By http://tranhba.com  mçi hoµn cã 20 c¸ liªn 
TL_MAXLOOPS = 10 -- script viet hoa By http://tranhba.com  nhµ ch¬i tæng céng cã thÓ lµm 10 hoµn ®Ých nhiÖm vô 
TL_MAXLINKSCOUNT = 4 -- script viet hoa By http://tranhba.com  mçi liªn nhiÒu nhÊt chØ cã thÓ lµm 4 lÇn 

TL_UPLEVELEXP = "TaskLink_UpLevel" 


-- script viet hoa By http://tranhba.com  häc lÊy v¨n kiÖn lóc ®Ých tù phï chuçi ®Þnh nghÜa 
TL_BUYGOODS = "TaskLink_BuyGoods" 
TL_FINDGOODS = "TaskLink_FindGoods" 
TL_SHOWGOODS = "TaskLink_ShowGoods" 
TL_FINDMAPS = "TaskLink_FindMaps" 
TL_UPGROUND = "TaskLink_UpGround" 
TL_WORLDMAPS = "TaskLink_WorldMaps" 
TL_LEVELLINK = "TaskLink_Level" 
TL_MAINTASKLEVEL = "TaskLink_MainLevel" 
TL_AWARDBASIC = "Award_Basic" 
TL_AWARDLINK = "Award_Link" 
TL_AWARDLOOP = "Award_Loop" 


-- script viet hoa By http://tranhba.com  nhiÖm vô liªn TABLE FILE ®Ých dù t¸i nhËp 
TabFile_Load("\\settings\\task\\tasklink_buygoods.txt",TL_BUYGOODS)
TabFile_Load("\\settings\\task\\tasklink_findgoods.txt",TL_FINDGOODS)
TabFile_Load("\\settings\\task\\tasklink_showgoods.txt",TL_SHOWGOODS)
TabFile_Load("\\settings\\task\\tasklink_findmaps.txt",TL_FINDMAPS)
TabFile_Load("\\settings\\task\\tasklink_upground.txt",TL_UPGROUND)
TabFile_Load("\\settings\\task\\tasklink_worldmaps.txt",TL_WORLDMAPS)
TabFile_Load("\\settings\\task\\levellink.txt",TL_LEVELLINK) -- script viet hoa By http://tranhba.com  Ã¿¸öµÈ¼¶Ïà¶ÔÓ¦µÄ³õÊ¼µÈ¼¶
TabFile_Load("\\settings\\task\\tasklink_mainlink.txt",TL_MAINTASKLEVEL) -- script viet hoa By http://tranhba.com  Ã¿¸öÈÎÎñÀàÐÍÔÚÏàÓ¦µÄµÈ¼¶ÀïÃæ³öÏÖµÄ¼¸ÂÊ
TabFile_Load("\\settings\\npc\\player\\level_exp.txt",TL_UPLEVELEXP) -- script viet hoa By http://tranhba.com  Éý¼¶ËùÐèµÄ¾­Ñé±í

TabFile_Load("\\settings\\task\\award_basic.txt",TL_AWARDBASIC)
TabFile_Load("\\settings\\task\\award_link.txt",TL_AWARDLINK)
TabFile_Load("\\settings\\task\\award_loop.txt",TL_AWARDLOOP)



-- script viet hoa By http://tranhba.com  x¸c ®Þnh nhµ ch¬i tr­íc mÆt ®Ých nhiÖm vô tr¹ng th¸i ph¶i lµ thuéc vÒ thø mÊy hoµn 
function GetFirstLoop() 
-- script viet hoa By http://tranhba.com  bëi v× t¹m thêi kh«ng cã hoµn ®Ých sù kh¸c biÖt , cho nªn chØ cã thÓ v× 1 
return 1 
end 


-- script viet hoa By http://tranhba.com  cuèi cïng ®Ých th©u xuÊt hµm sè , cho nhµ ch¬i nhiÖm vô h¬n n÷a ®­a víi nhiÖm vô thay ®æi l­îng trung 
function DealTask() 

-- script viet hoa By http://tranhba.com  ®Çu tiªn x¸c ®Þnh nhµ ch¬i ®Ých nhiÖm vô cÊp bËc 
local myTaskLevel = GetTaskState(2) 

print ("Get The TaskLevel: "..myTaskLevel) 

-- script viet hoa By http://tranhba.com  sau ®ã ngÉu nhiªn tÝnh ra nªn cÊp bËc h¼n tiÕn hµnh c¸i g× lo¹i h×nh nhiÖm vô 
local myTaskType = GetTaskType(myTaskLevel) 

SetPlayerTaskTpye(myTaskType) 

print ("Get The TaskType: "..myTaskType) 

-- script viet hoa By http://tranhba.com  cuèi cïng n÷a häc t­¬ng øng biÓu x¸c ®Þnh cô thÓ nhiÖm vô ë biÓu c¸ch trung ®Ých ®­îc sè 
local myTaskID = GetTaskLink(myTaskType,myTaskLevel) 

SaveTaskTableCol(myTaskID) 

print ("Get The TaskColID: "..myTaskID) 

-- script viet hoa By http://tranhba.com  nÕu nh­ lµ thu tËp b¶n ®å nhiÖm vô lµ ghi chÐp b¶n ®å ®Ých biªn sè cïng muèn thu tËp ®Ých quyÓn trôc lo¹i h×nh 
local myTaskMapID = tonumber(TabFile_GetCell(TL_FINDMAPS,myTaskID,"MapID")) 
local myMapType = tonumber(TabFile_GetCell(TL_FINDMAPS,myTaskID,"MapType")) 
local myMapNum = tonumber(TabFile_GetCell(TL_FINDMAPS,myTaskID,"Num")) 

-- script viet hoa By http://tranhba.com  thø 5 lo¹i nhiÖm vô ph¸n ®o¸n ®iÒu kiÖn 
local myTaskValueType 

-- script viet hoa By http://tranhba.com  ghi chÐp nhiÖm vô thay ®æi l­îng 
-- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®Ých nhiÖm vô lo¹i h×nh 
SetPlayerTaskTpye(myTaskType) 

-- script viet hoa By http://tranhba.com  ghi chÐp nhµ ch¬i ®Ých nhiÖm vô cô thÓ biÓu c¸ch ®­îc ®Õm 
SaveTaskTableCol(myTaskID) 

-- script viet hoa By http://tranhba.com  ®èi øng bÊt ®ång nhiÖm vô lµm bÊt ®ång thay ®æi l­îng tån tr÷ xö lý 

if ( myTaskType == 1 ) then 
elseif ( myTaskType == 2 ) then 
elseif ( myTaskType == 3 ) then 
elseif ( myTaskType == 4 ) then 
SetTask(1031,myTaskMapID) 
SetTask(1032,SetByte(GetTask(1032),1,myMapType)) 
SetTask(1032,SetByte(GetTask(1032),2,myMapNum)) 
SetTask(1025,0) -- script viet hoa By http://tranhba.com  thanh kh«ng th× ra lµ b¶n ®å chÝ sè l­îng 
elseif ( myTaskType == 5 ) then -- script viet hoa By http://tranhba.com  nÕu nh­ lµ thuéc vÒ trÞ sè th¨ng cÊp ®Ých nhiÖm vô , lµ ph¸n ®o¸n lµ lo¹i nµo trÞ sè 

myTaskValueType = tonumber(TabFile_GetCell(TL_UPGROUND,myTaskID,"NumericType")) 

if (myTaskValueType == 2) then 
print(" lÊy ®­îc th¨ng cÊp kinh nghiÖm nhiÖm vô #") 
SetTask(1033,GetLevel()) 
SetTask(1034,GetExp()) 
elseif (myTaskValueType == 3) then 
print(" lÊy ®­îc th¨ng cÊp danh väng ®Ých nhiÖm vô #") 
SetTask(1026,GetRepute()) 
elseif (myTaskValueType == 4) then 
print(" lÊy ®­îc th¨ng cÊp phóc duyªn ®Ých nhiÖm vô #") 
SetTask(1026,FuYuan_Get()) 
elseif (myTaskValueType == 5) then 
print(" lÊy ®­îc th¨ng cÊp PK trÞ gi¸ ®Ých nhiÖm vô #") 
SetTask(1026,GetPK()) 
end 

elseif ( myTaskType == 6 ) then 
end 

SetTaskCourse(1) -- script viet hoa By http://tranhba.com  thiÕt trÝ nhiÖm vô tiÕn triÓn tiÕn ®é v× 1 

end 


-- script viet hoa By http://tranhba.com  nhiÖm vô tuÇn hoµn khi ®Õn mét vßng 
function TaskProcess() 

local myTaskTimes = GetTaskState(1) -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn hµnh ®­îc ®Ých sè lÇn 
local myTaskLinks = GetTaskState(2) -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn hµnh ®­îc ®Ých liªn ®Õm 
local myTaskLoops = GetTaskState(3) -- script viet hoa By http://tranhba.com  nhµ ch¬i tiÕn hµnh ®­îc ®Ých hoµn ®Õm 
local myTaskCancel = GetTaskState(4) 
local myTaskLinksCount = GetTaskState(6) -- script viet hoa By http://tranhba.com  kiÓm tr¾c nhµ ch¬i ë tr­íc mÆt ®Ých liªn trung ®· tiÕn hµnh mÊy lÇn 

if (myTaskTimes ~= 0) then 
	myTaskTimes = myTaskTimes + 1
	if (myTaskTimes >= TL_MAXTIMES + 1) then
myTaskTimes = 1 
		myTaskLinksCount = myTaskLinksCount + 1
myTaskCancel = 0 -- script viet hoa By http://tranhba.com  hñy bá sè lÇn v× 0 
		if (myTaskLinksCount >= TL_MAXLINKSCOUNT + 1) then
			myTaskLinks = myTaskLinks + 1
myTaskLinksCount = 0 
end 

end 

	if (myTaskLinks >= TL_MAXLINKS + 1) then
myTaskLinks = GetFirstLink() 
		myTaskLoops = myTaskLoops + 1
end 
end 

SetTaskState(1,myTaskTimes) 
SetTaskState(2,myTaskLinks) 
SetTaskState(3,myTaskLoops) 
SetTaskState(4,myTaskCancel) 
SetTaskState(6,myTaskLinksCount) 

DealTask() 

main() 

end 



-- script viet hoa By http://tranhba.com  kiÓm tr¾c hµm sè , dïng ®Ó x¸c nhËn nhµ ch¬i cã hay kh«ng ®· hoµn thµnh nhiÖm vô 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ 
-- script viet hoa By http://tranhba.com  1# ®· ®¹t thµnh ®iÒu kiÖn 
-- script viet hoa By http://tranhba.com  0# vÉn ch­a/kh«ng thÓ hoµn thµnh 
-- script viet hoa By http://tranhba.com  truyÒn vµo tham sæ nTaskGoods cã nhiÒu c¸ ph­¬ng thøc biÓu ®¹t 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ nhiÖm vô 1 lêi cña # chñng lo¹i # lo¹i kh¸c # tÕ lo¹i # ngò hµnh # cÊp bËc 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ nhiÖm vô 2 lêi cña # chñng lo¹i # lo¹i kh¸c # tÕ lo¹i # ngò hµnh # cÊp bËc # ma ph¸p thuéc tÝnh ID# ma ph¸p thuéc tÝnh h¹ h¹n # ma ph¸p thuéc tÝnh th­îng h¹n 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ nhiÖm vô 3 lêi cña # ma ph¸p thuéc tÝnh ID# ma ph¸p thuéc tÝnh h¹ h¹n # ma ph¸p thuéc tÝnh th­îng h¹n 
function CheckTask(nTaskGoods) 

local i,j 

-- script viet hoa By http://tranhba.com  nhiÖm vô cÇn cÇu vËt phÈm 
local myTaskGoods 

-- script viet hoa By http://tranhba.com  nhiÖm vô cÇn cÇu xin vËt phÈm ®Ých chñng lo¹i # lo¹i kh¸c # tÕ lo¹i # ngò hµnh # cÊp bËc 
local myGenre,myDetail,myParticular,myGoodsFive,myLevel,myMagicID,myMagicMax,myMagicMin 

-- script viet hoa By http://tranhba.com  nhiÖm vô cÇn cÇu xin vËt phÈm ®Ých chñng lo¹i , kh«ng mang theo ma ph¸p thuéc tÝnh cïng mang ma ph¸p thuéc tÝnh 
local myGoodsClean,myGoodsMagic 

-- script viet hoa By http://tranhba.com  nhiÖm vô muèn cÇu b¶n ®å chÝ ID, b¶n ®å chÝ ®Ých sè l­îng cïng b¶n ®å chÝ ®Ých lo¹i h×nh 
local myTaskMaps,myTaskMapNum,myTaskMapType 

-- script viet hoa By http://tranhba.com  nhiÖm vô muèn cÇu xin th¨ng cÊp ®Ých trÞ sè cïng trÞ sè lo¹i h×nh 
local myTaskValue,myTaskValueType 

-- script viet hoa By http://tranhba.com  nhiÖm vô muèn cÇu nói s«ng x· t¾c ®å sè l­îng 
local myWorldMaps,nWorldMaps 

-- script viet hoa By http://tranhba.com  lÊy ®­îc nhµ ch¬i tr­íc mÆt së nhËn ®Ých nhiÖm vô lo¹i h×nh 
local myTaskType = GetPlayerTaskType() 
local myTaskID = GetTaskTableCol() 

if ( myTaskType == 1) then 

myGenre = tonumber(TabFile_GetCell(TL_BUYGOODS,myTaskID,"Genre")) 
myDetail = tonumber(TabFile_GetCell(TL_BUYGOODS,myTaskID,"Detail")) 
myParticular = tonumber(TabFile_GetCell(TL_BUYGOODS,myTaskID,"Particular")) 
myGoodsFive = tonumber(TabFile_GetCell(TL_BUYGOODS,myTaskID,"GoodsFive")) 
myLevel = tonumber(TabFile_GetCell(TL_BUYGOODS,myTaskID,"Level")) 

myTaskGoods = {myGenre,myDetail,myParticular,myGoodsFive,myLevel} 

print("NhiÖm vô muèn cÇu vËt phÈm v× #"..myGenre..myDetail..myParticular..myLevel..myGoodsFive) 
if (nTaskGoods[1] == myTaskGoods[1]) and (nTaskGoods[2] == myTaskGoods[2]) and (nTaskGoods[3] == myTaskGoods[3]) and (nTaskGoods[4] == myTaskGoods[4]) and (nTaskGoods[5] == myTaskGoods[5]) then 
return 1 
else 
return 0 
end 

elseif ( myTaskType == 2) then 

myGenre = tonumber(TabFile_GetCell(TL_FINDGOODS,myTaskID,"Genre")) 
myDetail = tonumber(TabFile_GetCell(TL_FINDGOODS,myTaskID,"Detail")) 
myParticular = tonumber(TabFile_GetCell(TL_FINDGOODS,myTaskID,"Particular")) 
myGoodsFive = tonumber(TabFile_GetCell(TL_FINDGOODS,myTaskID,"GoodsFive")) 
myLevel = tonumber(TabFile_GetCell(TL_FINDGOODS,myTaskID,"Level")) 
myMagicID = tonumber(TabFile_GetCell(TL_FINDGOODS,myTaskID,"MagicEnName")) 
myMagicMax = tonumber(TabFile_GetCell(TL_FINDGOODS,myTaskID,"MaxValue")) 
myMagicMin = tonumber(TabFile_GetCell(TL_FINDGOODS,myTaskID,"MinValue")) 

myTaskGoods = {myGenre,myDetail,myParticular,myGoodsFive,myLevel,myMagicID,myMagicMin,myMagicMax} 
myGoodsClean = {nTaskGoods[1],nTaskGoods[2],nTaskGoods[3],nTaskGoods[4],nTaskGoods[5]} -- script viet hoa By http://tranhba.com  nÕu nh­ kh«ng cÇn ph¸n ®o¸n ma ph¸p thuéc tÝnh lµ lÊy nµy trÞ gi¸ 
myGoodsMagic = {nTaskGoods[1],nTaskGoods[2],nTaskGoods[3],nTaskGoods[4],nTaskGoods[5],nTaskGoods[6],nTaskGoods[7],nTaskGoods[8]} 

if (myMagicID == "n") then 
print("NhiÖm vô muèn cÇu vËt phÈm v× #"..myGenre..myDetail..myParticular..myLevel..myGoodsFive) 
if (nTaskGoods[1] == myTaskGoods[1]) and (nTaskGoods[2] == myTaskGoods[2]) and (nTaskGoods[3] == myTaskGoods[3]) and (nTaskGoods[4] == myTaskGoods[4]) and (nTaskGoods[5] == myTaskGoods[5]) then 
return 1 
else 
return 0 
end 
else 
print("NhiÖm vô muèn cÇu vËt phÈm v× #"..myGenre..myDetail..myParticular..myLevel..myGoodsFive.." ma ph¸p thuéc tÝnh #"..myMagicID.." nhá nhÊt trÞ gi¸ #"..myMagicMin.." lín nhÊt trÞ gi¸ #"..myMagicMax) 
if (nTaskGoods[1] == myTaskGoods[1]) and (nTaskGoods[2] == myTaskGoods[2]) and (nTaskGoods[3] == myTaskGoods[3]) and (nTaskGoods[6] == myTaskGoods[6]) and (tonumber(nTaskGoods[7]) >= myTaskGoods[7]) then 
return 1 
else 
return 0 
end 
end 

elseif ( myTaskType == 3) then 

myMagicID = tonumber(TabFile_GetCell(TL_SHOWGOODS,myTaskID,"MagicEnName")) 
myMagicMin = tonumber(TabFile_GetCell(TL_SHOWGOODS,myTaskID,"MinValue")) 
myMagicMax = tonumber(TabFile_GetCell(TL_SHOWGOODS,myTaskID,"MaxValue")) 

print("NhiÖm vô muèn cÇu vËt phÈm v× #"..myMagicID..myMagicMin..myMagicMax) 

if ( nTaskGoods[1] == myMagicID) and ( nTaskGoods[2] >= myMagicMin ) then 
return 1 
else 
return 0 
end 

elseif ( myTaskType == 4) then 

myTaskMapNum = GetTask(1025) 

print ("NhiÖm vô muèn cÇu b¶n ®å sè l­îng v× #"..tonumber(TabFile_GetCell(TL_FINDMAPS,myTaskID,"Num"))); 

if (myTaskMapNum>=tonumber(TabFile_GetCell(TL_FINDMAPS,myTaskID,"Num"))) then 
myTaskMapNum = 0 
SetTask(1025,myTaskMapNum) -- script viet hoa By http://tranhba.com  lÇn n÷a ®­a 0 
return 1 
else 
return 0 
end 

elseif (myTaskType == 5) then 

myTaskValueType = tonumber(TabFile_GetCell(TL_UPGROUND,myTaskID,"NumericType")) 

if (myTaskValueType == 2) then 

print("Tr­íc m¾t ®Ých nhiÖm vô lµ th¨ng cÊp kinh nghiÖm lo¹i h×nh ") 
if (CountUpLevelExp(GetTask(1033),GetTask(1034)) >= tonumber(TabFile_GetCell(TL_UPGROUND,myTaskID,"NumericValue"))) then 
return 1 
else 
return 0 
end 
elseif (myTaskValueType == 3) then -- script viet hoa By http://tranhba.com  danh väng trÞ gi¸ 

print("Tr­íc m¾t ®Ých nhiÖm vô lµ th¨ng cÊp danh väng ®Ých lo¹i h×nh ") 
if (GetRepute() >= GetTask(1026)) then 
return 1 
else 
return 0 
end 
elseif (myTaskValueType == 4) then -- script viet hoa By http://tranhba.com  phóc duyªn trÞ gi¸ 

print("Tr­íc m¾t ®Ých nhiÖm vô lµ th¨ng cÊp phóc duyªn ®Ých lo¹i h×nh ") 
if (FuYuan_Get() >= GetTask(1026)) then 
return 1 
else 
return 0 
end 
elseif (myTaskValueType == 5) then -- script viet hoa By http://tranhba.com  PK trÞ gi¸ 

print("Tr­íc m¾t ®Ých nhiÖm vô lµ th¨ng cÊp PK trÞ gi¸ ®Ých lo¹i h×nh ") 
if (GetPK() >= GetTask(1026)) then 
return 1 
else 
return 0 
end 
end 

elseif (myTaskType == 6) then 
myWorldMaps = tonumber(TabFile_GetCell(TL_WORLDMAPS,myTaskID,"Num")) 
if (GetTask(1027) >= myWorldMaps) then 
nWorldMaps = GetTask(1027) - myWorldMaps -- script viet hoa By http://tranhba.com  ë chç nµy san liÔu cÇn nói s«ng x· t¾c ®å m¶nh vôn 
SetTask(1027,nWorldMaps) 
return 1 
else 
return 0 
end 
end 

end 



-- script viet hoa By http://tranhba.com  cho nhµ ch¬i ph¸t t­ëng th­ëng ®Ých tæng hµm sè 
function GivePlayerAward() 

-- script viet hoa By http://tranhba.com  truyÒn cho t­ëng th­ëng mÆt b¶n ®Ých tham sæ # 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ vËt phÈm lêi cña lµ theo thø tù v× # t­ëng th­ëng lo¹i h×nh , Quality#Genre#Detail#Particular#Level#GoodsFive#Magiclevel , cïng nãi râ ch÷ viÕt 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ kim tiÒn lµ theo thø tù v× # t­ëng th­ëng lo¹i h×nh , kim tiÒn ®Ých sè l­îng 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ kinh nghiÖm tho¹i lµ theo thø tù v× # t­ëng th­ëng lo¹i h×nh , kinh nghiÖm sè l­îng 
-- script viet hoa By http://tranhba.com  nÕu nh­ lµ ngÉu nhiªn c¬ héi hoÆc lµ hñy bá c¬ héi lµ chØ ghi chÐp vÞ thø nhÊt v× t­ëng th­ëng lo¹i h×nh 
local myAwardArry = { 
{0,0,0,0,0,0,0,0,""}, 
{0,0,0,0,0,0,0,0,""}, 
{0,0,0,0,0,0,0,0,""} 
} 

-- script viet hoa By http://tranhba.com  t­ëng th­ëng ®Ých ®Õm tæ , chia ra lµm c¸c lo¹i t­ëng th­ëng ®Ých quyÒn nÆng 
-- script viet hoa By http://tranhba.com  theo thø tù v× # kim tiÒn # kinh nghiÖm # vËt phÈm # n÷a ngÉu nhiªn mét lÇn c¬ héi # hñy bá nhiÖm vô c¬ héi 
-- script viet hoa By http://tranhba.com  0 cßn l¹i lµ c¸i nµo t­ëng th­ëng lo¹i h×nh ®· bÞ chän lùa 
local myMainAwardRate = {30,30,30,9,1} 

local myTaskValue1,myTaskValue2,myMainValue -- script viet hoa By http://tranhba.com  t¹m thêi thay ®æi l­îng , dïng ®Ó ghi chÐp häc ®Õn ®Ých trÞ sè 
-- script viet hoa By http://tranhba.com  dïng cho t­ëng th­ëng truyÒn vµo ®Ých tù phï chuçi 
local myAwardGoods,myAwardExp,myAwardMoney,myAwardCancal,myAwardChange = "","","","","" 

local myArawdGoods = {0,0,0,0,0,0} -- script viet hoa By http://tranhba.com  t­ëng th­ëng vËt phÈm t­¬ng ®èi øng ®Ých ®Õm tæ 

local myAwardType 

local myAwardArryIndex = 1 -- script viet hoa By http://tranhba.com  dïng ®Ó ghi chÐp t­ëng th­ëng ®Õm tæ lý ®· ghi chÐp bao nhiªu c¸ 

local myRandomNum,myRandomSeed -- script viet hoa By http://tranhba.com  ngÉu nhiªn ®Õm cïng ngÉu nhiªn mÇm mãng 

myTimes = GetTaskState(1) 
myLinks = GetTaskState(2) 

myTaskType = GetPlayerTaskType() 

local _nSeed = SetRandSeed(GetTask(1037)) 


print("B¾t ®Çu tiÕn hµnh t­ëng th­ëng lo¹i h×nh lùa chän #") 

for i=1,3 do -- script viet hoa By http://tranhba.com  tuÇn hoµn chän lùa ba t­ëng th­ëng chñng lo¹i 

myAwardType,myMainAwardRate = GetAwardTypeForRate(myMainAwardRate) 

print("Thø "..i.." c¸ tuÇn hoµn tróng tuyÓn tr¹ch liÔu t­ëng th­ëng lo¹i h×nh #"..myAwardType); 

if (myAwardType==1) then -- script viet hoa By http://tranhba.com  nÕu nh­ t­ëng th­ëng lo¹i h×nh lµ tiÒn 

print ("Tr­íc mÆt ®Ých nhiÖm vô lo¹i h×nh lµ #"..GetTaskTextID(myTaskType).." , tr­íc mÆt ®Ých nhiÖm vô biÓu c¸ch ®­îc sè lµ #"..GetTaskTableCol()); 

myTaskValue1 = tonumber(TabFile_GetCell(GetTaskTextID(myTaskType),GetTaskTableCol(),"TaskValue1")) 
myTaskValue2 = tonumber(TabFile_GetCell(GetTaskTextID(myTaskType),GetTaskTableCol(),"TaskValue2")) 
-- script viet hoa By http://tranhba.com  tr¶i qua thªm ngåi trÞ gi¸ tÝnh to¸n sau ®Ých nhiÖm vô t­ëng th­ëng gi¸ trÞ 
			myMainValue = myTaskValue1 + (myTaskValue2 * (1+(myLinks+myTimes)*0.1))

myMainValue = floor((myMainValue / 2) * (C_Random(80,120) * 0.01)) -- script viet hoa By http://tranhba.com  tÝnh to¸n sau cho ra thùc tÕ kim tiÒn l­îng 

myAwardMoney = format("%s%s",myMainValue,"Kim tiÒn "); 

myAwardArry[myAwardArryIndex] = {1,myMainValue,0,0,0,0,0,0,myAwardMoney} 
			myAwardArryIndex = myAwardArryIndex + 1

print(" lÊy ®­îc mét kim tiÒn ®Ých t­ëng th­ëng #"..myAwardMoney); 

elseif (myAwardType==2) then -- script viet hoa By http://tranhba.com  nÕu nh­ t­ëng th­ëng chÝnh lµ kinh nghiÖm 

myTaskValue1 = tonumber(TabFile_GetCell(GetTaskTextID(myTaskType),GetTaskTableCol(),"TaskValue1")) 
myTaskValue2 = tonumber(TabFile_GetCell(GetTaskTextID(myTaskType),GetTaskTableCol(),"TaskValue2")) 
-- script viet hoa By http://tranhba.com  tr¶i qua thªm ngåi trÞ gi¸ tÝnh to¸n sau ®Ých nhiÖm vô t­ëng th­ëng gi¸ trÞ 
			myMainValue = myTaskValue1 + (myTaskValue2 * (1+(myLinks+myTimes)*0.1))

myMainValue = floor((myMainValue / 2) * (C_Random(80,120) * 0.01)) -- script viet hoa By http://tranhba.com  tÝnh to¸n sau cho ra thùc tÕ kinh nghiÖm trÞ gi¸ l­îng 

myAwardExp = format("%s%s",myMainValue,"Chót kinh nghiÖm trÞ gi¸ ") 

myAwardArry[myAwardArryIndex] = {2,myMainValue,0,0,0,0,0,0,myAwardExp} 
			myAwardArryIndex = myAwardArryIndex + 1

print(" lÊy ®­îc mét kinh nghiÖm trÞ gi¸ ®Ých t­ëng th­ëng #"..myAwardExp); 

elseif (myAwardType==3) then -- script viet hoa By http://tranhba.com  nÕu nh­ t­ëng th­ëng chÝnh lµ vËt phÈm 

myTaskValue1 = GivePlayerAward_Goods(1) -- script viet hoa By http://tranhba.com  ®Çu tiªn lÊy ®­îc t­ëng th­ëng vËt phÈm ®Ých ®­îc ®Õm 

myQuality = tonumber(TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"Quality")) 
myGenre = tonumber(TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"Genre")) 
myDetail = tonumber(TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"Detail")) 
myParticular = tonumber(TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"Particular")) 
myLevel = tonumber(TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"Level")) 
myGoodsFive = tonumber(TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"GoodsFive")) 


myArawdGoods = TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"Name") 

myAwardArry[myAwardArryIndex] = {3,myMainValue,myQuality,myGenre,myDetail,myParticular,myLevel,myGoodsFive,myArawdGoods} 
			myAwardArryIndex = myAwardArryIndex + 1

print(" lÊy ®­îc mét vËt phÈm ®Ých t­ëng th­ëng #"..myArawdGoods); 

elseif (myAwardType==4) then -- script viet hoa By http://tranhba.com  nÕu nh­ t­ëng th­ëng chÝnh lµ lÇn n÷a ngÉu nhiªn mét lÇn c¬ héi 

myAwardChange = " lÇn n÷a n÷a lùa chän mét lÇn " 
myAwardArry[myAwardArryIndex] = {4,0,0,0,0,0,0,0,myAwardExp} 
			myAwardArryIndex = myAwardArryIndex + 1

print(" lÊy ®­îc mét c¬ héi lùa chän ®Ých t­ëng th­ëng "); 

elseif (myAwardType==5) then -- script viet hoa By http://tranhba.com  nÕu nh­ t­ëng th­ëng chÝnh lµ mét lÇn hñy bá nhiÖm vô c¬ héi 

myAwardChange = " mét lÇn cã thÓ hñy bá nhiÖm vô c¬ héi " 
myAwardArry[myAwardArryIndex] = {5,0,0,0,0,0,0,0,myAwardExp} 
			myAwardArryIndex = myAwardArryIndex + 1	

print(" lÊy ®­îc mét lÇn hñy bá c¬ héi t­ëng th­ëng "); 

end 
end 

SetRandSeed(_nSeed) 
-- script viet hoa By http://tranhba.com  trë vÒ ®· cÊu t¹o tèt t­ëng th­ëng ®Õm tæ 
return myAwardArry 

end 


-- script viet hoa By http://tranhba.com  tö hµm sè , c¨n cø t­ëng th­ëng liªn cßn thõa l¹i lo¹i h×nh lÊy ra t­ëng th­ëng 
function GetAwardTypeForRate(myAwardRate) 

local i,j,k = 0,0,0 
local myAwardMainRate = 0 

for i=1,getn(myAwardRate) do 
	myAwardMainRate = myAwardMainRate + myAwardRate[i]
end 

j=C_Random(1,myAwardMainRate) 

for i=1,getn(myAwardRate) do 
	k = k + myAwardRate[i]
if (i<k) then 
myAwardRate[i] = 0 -- script viet hoa By http://tranhba.com  ë toµn côc thay ®æi l­îng TL_MainAwardRate trung gi¶m ®i mét trÞ gi¸ 
return i,myAwardRate 
end 
end 

print ("Ch©n vèn chän lÊy nhiÖm vô t­ëng th­ëng lo¹i h×nh lóc bÞ lçi #"); 

end 


-- script viet hoa By http://tranhba.com  s­u tÇm t­ëng th­ëng liÖt biÓu , lÊy ®­îc t­¬ng øng t­ëng th­ëng 
-- script viet hoa By http://tranhba.com  myAwardType# t­ëng th­ëng ®Ých lo¹i h×nh 
-- script viet hoa By http://tranhba.com  1# nhiÖm vô c¨n b¶n t­ëng th­ëng 2# nhiÖm vô liªn hoµn thµnh t­ëng th­ëng 3: nhiÖm vô hoµn hoµn thµnh t­ëng th­ëng 
function GivePlayerAward_Goods(myAwardType) 

local myTaskValue1,myTaskValue2 -- script viet hoa By http://tranhba.com  tõ nhiÖm vô biÓu c¸ch trong häc lÊy nhiÖm vô t­ëng th­ëng gi¸ trÞ 
local myLinks,myTimes -- script viet hoa By http://tranhba.com  liªn tôc hoµn thµnh sè lÇn cïng liªn ®Õm 
local myMainValue -- script viet hoa By http://tranhba.com  tr¶i qua thªm ngåi trÞ gi¸ tÝnh to¸n sau ®Ých nhiÖm vô t­ëng th­ëng gi¸ trÞ 
local myTaskType = GetPlayerTaskType() 
local myAwardTextID 

local myAwardTable 

local FinalAward -- script viet hoa By http://tranhba.com  cuèi cïng trë vÒ ®Ých t­ëng th­ëng 

if (myAwardType == 1) then 
myAwardTextID = TL_AWARDBASIC 
elseif (myAwardType == 2) then 
myAwardTextID = TL_AWARDLINK 
elseif (myAwardType == 3) then 
myAwardTextID = TL_AWARDLOOP 
end 

myTimes = GetTaskState(1) 
myLinks = GetTaskState(2) 

myTaskValue1 = tonumber(TabFile_GetCell(GetTaskTextID(myTaskType),GetTaskTableCol(),"TaskValue1")) 
myTaskValue2 = tonumber(TabFile_GetCell(GetTaskTextID(myTaskType),GetTaskTableCol(),"TaskValue2")) 

-- script viet hoa By http://tranhba.com  tr¶i qua thªm ngåi trÞ gi¸ tÝnh to¸n sau ®Ých nhiÖm vô t­ëng th­ëng gi¸ trÞ 
	myMainValue = myTaskValue1 + (myTaskValue2 * (1+(myLinks+myTimes)*0.1))

myAwardTable = AssignValue_AwardRate(Task_AwardBasic,myMainValue) 

FinalAward = TabFile_GetCell(myAwardTextID,GetAward(myAwardTable),"Name") 

-- script viet hoa By http://tranhba.com  print (" lÊy ®­îc liÔu "..myTaskTextID.." nhiÖm vô lo¹i h×nh trung ®Ých "..FinalAward.." t­ëng th­ëng ") 

return GetAward(myAwardTable) -- script viet hoa By http://tranhba.com  trë vÒ t­ëng th­ëng chç ë ®­îc ®Õm 

end 


-- script viet hoa By http://tranhba.com  ë ®· t¹o thµnh quyÒn nÆng liÖt biÓu ®Ých t­ëng th­ëng trung chän lùa ra mét t­ëng th­ëng , trë vÒ trÞ gi¸ lµ t­ëng th­ëng chç ë biÓu c¸ch ®­îc ®Õm 
function GetAward(myAwardVariable) 

local i,j,k = 0,0,0 
local myMainRate = 0 -- script viet hoa By http://tranhba.com  tæng ®Ých t­ëng th­ëng quyÒn nÆng 

for i=1,getn(myAwardVariable) do 
		myMainRate = myMainRate + myAwardVariable[i][2]
end 

j = C_Random(1,myMainRate) 

for i=1,getn(myAwardVariable) do 
		k = k + myAwardVariable[i][2]
if (j<k) then 
return i 
end 
end 

end 


-- script viet hoa By http://tranhba.com  tö hµm sè , dïng ®Ó x¸c ®Þnh tr­íc mÆt nhµ ch¬i së nhËn ®­îc ®Ých nhiÖm vô cô thÓ lµ lo¹i nµo lo¹i h×nh nhiÖm vô 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ lµ 1~6 , nÕu v× 0 lµ nhµ ch¬i cßn kh«ng cã xóc ph¸t nhiÖm vô liªn 
function GetPlayerTaskType() 

local myTaskType 

-- script viet hoa By http://tranhba.com  myTaskType = strsub(format("%d",GetTask(1021),1,1)) 
myTaskType = GetTask(1021) 

return myTaskType 

end 


-- script viet hoa By http://tranhba.com  tö hµm sè , dïng ®Ó thiÕt nhÊt ®Þnh tr­íc nhµ ch¬i së nhËn ®­îc ®Ých nhiÖm vô cô thÓ lµ lo¹i nµo lo¹i h×nh nhiÖm vô 
function SetPlayerTaskTpye(myTaskType) 
SetTask(1021,myTaskType) 
end 


-- script viet hoa By http://tranhba.com  tö hµm sè , dïng ®Ó lÊy ®­îc nhµ ch¬i ®Ých giíi tÝnh , trùc tiÕp trë vÒ tù phï chuçi 
function GetPlayerSex() 
local mySex -- script viet hoa By http://tranhba.com  dïng ®Ó biÓu hiÖn nh©n vËt giíi tÝnh ®Ých tù phï 

if (GetSex() == 0) then 
mySex = " c«ng tö " 
else 
mySex = " n÷ hiÖp " 
end 

return mySex 
end 


-- script viet hoa By http://tranhba.com  tö hµm sè , dïng ®Ó ghi chÐp nhµ ch¬i nhiÖm vô tr­íc mÆt së cô thÓ ®èi øng biÓu c¸ch ®­îc ®Õm 
function SaveTaskTableCol(myTaskCol) 
SetTask(1030,myTaskCol) 
end 


-- script viet hoa By http://tranhba.com  tö hµm sè , dïng ®Ó häc lÊy nhµ ch¬i nhiÖm vô tr­íc mÆt së ®èi øng cô thÓ biÓu c¸ch ®­îc ®Õm 
function GetTaskTableCol() 
return GetTask(1030) 
end 


-- script viet hoa By http://tranhba.com  tö hµm sè , kiÓm tr¾c nhiÖm vô tr¹ng th¸i 
-- script viet hoa By http://tranhba.com  1# tr­íc mÆt tiÕn hµnh ®Ých sè lÇn 
-- script viet hoa By http://tranhba.com  2# tr­íc mÆt tiÕn hµnh ®Ých liªn ®Õm 
-- script viet hoa By http://tranhba.com  3# tr­íc mÆt tiÕn hµnh ®Ých hoµn ®Õm 
-- script viet hoa By http://tranhba.com  4# cßn thõa l¹i hñy bá ®Ých sè lÇn 
-- script viet hoa By http://tranhba.com  5# nhµ ch¬i tr­íc mÆt së nhËn ®Ých nhiÖm vô sè chøa ®ùng ë 1021 th­îng 
-- script viet hoa By http://tranhba.com  6# nhµ ch¬i ë mçi mét vßng ®Ých nªn liªn trung ®· lµm mÊy lÇn , lín nhÊt v× 4 
function GetTaskState(myTaskState) 

local n 

if ( myTaskState <= 4) then 
n = GetByte(GetTask(1020),myTaskState) 
elseif ( myTaskState == 5) then 
n = GetTask() 
elseif ( myTaskState == 6) then 
n = GetTask(1035) 
end 

return n 

end 


-- script viet hoa By http://tranhba.com  tö hµm sè , thiÕt trÝ nhiÖm vô tr¹ng th¸i 
-- script viet hoa By http://tranhba.com  1# tr­íc mÆt tiÕn hµnh ®Ých sè lÇn 
-- script viet hoa By http://tranhba.com  2# tr­íc mÆt tiÕn hµnh ®Ých liªn ®Õm 
-- script viet hoa By http://tranhba.com  3# tr­íc mÆt tiÕn hµnh ®Ých hoµn ®Õm 
-- script viet hoa By http://tranhba.com  4# cßn thõa l¹i hñy bá ®Ých sè lÇn 
-- script viet hoa By http://tranhba.com  5# nhµ ch¬i tr­íc mÆt së nhËn ®Ých nhiÖm vô sè chøa ®ùng ë 1021 th­îng 
-- script viet hoa By http://tranhba.com  6# nhµ ch¬i ë mçi mét vßng ®Ých nªn liªn trung ®· lµm mÊy lÇn , lín nhÊt v× 4 
function SetTaskState(myTaskState,myTaskValue) 

local n 

if ( myTaskState <= 4) then 
n = GetTask(1020) 
SetTask(1020,SetByte(n,myTaskState,myTaskValue)) 
elseif ( myTaskState == 5) then -- script viet hoa By http://tranhba.com  nÕu nh­ lµ 5 lêi cña cßn l¹i lµ ghi chÐp nhµ ch¬i tr­íc mÆt së nhËn ®Ých nhiÖm vô sè ë 1021 th­îng 
SetTask(1021,myTaskValue) 
elseif ( myTaskState == 6) then 
SetTask(1035,myTaskValue) 
end 

end 


-- script viet hoa By http://tranhba.com  tö hµm sè , thiÕt trÝ nhiÖm vô tr­íc mÆt ®Ých tiÕn tr×nh tr¹ng th¸i , 1#2#3 
function SetTaskCourse(myTaskCourse) 
SetTask(1028,myTaskCourse) 
end 


-- script viet hoa By http://tranhba.com  tö hµm sè , lÊy ®­îc nhiÖm vô tr­íc mÆt ®Ých tiÕn tr×nh tr¹ng th¸i , 1#2#3 
function GetTaskCourse() 
return GetTask(1028) 
end 



-- script viet hoa By http://tranhba.com  ////////////////////////////////////////////////////////////// 
-- script viet hoa By http://tranhba.com  // häc biÓu cïng nhiÖm vô trÞ sè xö lý // 
-- script viet hoa By http://tranhba.com ////////////////////////////////////////////////////////////// 

-- script viet hoa By http://tranhba.com  s­u tÇm cÊp bËc t­¬ng ®èi øng nhiÖm vô biÓu , x¸c ®Þnh nhµ ch¬i tr­íc mÆt ®Ých nhiÖm vô liªn ®Ö nhÊt ®¼ng cÊp lµ thuéc vÒ cÊp nµo 
function GetFirstLink() 

local i 
local myLevel = GetLevel() 
local myTotalCol = tonumber(TabFile_GetRowCount(TL_LEVELLINK)) 

for i = 2,myTotalCol do 
if (myLevel > tonumber(TabFile_GetCell(TL_LEVELLINK,i,"level"))) then 

elseif (myLevel <= tonumber(TabFile_GetCell(TL_LEVELLINK,i,"level"))) then 
if (i == 2) then 
return tonumber(TabFile_GetCell(TL_LEVELLINK,2,"task")) 
end 
return tonumber(TabFile_GetCell(TL_LEVELLINK,i-1,"task")) 
end 
end 

-- script viet hoa By http://tranhba.com  return tonumber(TabFile_GetCell(TL_LEVELLINK,j,"task")) 
end 


-- script viet hoa By http://tranhba.com  s­u tÇm nhiÖm vô liªn tæng biÓu , lÊy ®­îc t­¬ng øng cÊp bËc ®Ých ngÉu nhiªn lo¹i h×nh nhiÖm vô 
-- script viet hoa By http://tranhba.com  truyÒn vµo tham sæ myTaskLevel v× nhiÖm vô liªn ®Ých cÊp bËc 1~20 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ lµ 1~6 1# vËt phÈm mua 2# vËt phÈm t×m kiÕm 3# vËt phÈm biÓu diÔn 4# b¶n ®å thu tËp 5# trÞ sè th¨ng cÊp 6# nói s«ng x· t¾c 
function GetTaskType(myTaskLevel) 

local i,j,k = 0,0,0 
local myMainRate = 0 -- script viet hoa By http://tranhba.com  tÊt c¶ nhiÖm vô lo¹i h×nh ë mét c¸i cÊp bËc dÆm tæng so tû sè 
local myTaskType -- script viet hoa By http://tranhba.com  trë vÒ ®Ých nhiÖm vô lo¹i h×nh 

print("mylevel: "..myTaskLevel) 

for i = 1,getn(Task_MainLevelRate[myTaskLevel]) do 
		myMainRate = myMainRate + Task_MainLevelRate[myTaskLevel][i]
end 

print ("NhiÖm vô lo¹i h×nh quyÒn nÆng tæng sè # "..myMainRate) 


-- script viet hoa By http://tranhba.com  c¨n cø quyÒn nÆng c«ng thøc cuèi cïng ngÉu nhiªn tÝnh to¸n ra nhiÖm vô lo¹i h×nh 
j = C_Random(1,myMainRate) 

print ("NhiÖm vô lo¹i h×nh quyÒn nÆng ngÉu nhiªn ®Õm # "..j) 

for i = 1,getn(Task_MainLevelRate[myTaskLevel]) do 
		k = k + Task_MainLevelRate[myTaskLevel][i]
if ( j < k) then 
print ("TuÇn hoµn kÕt thóc , lùa chän nhiÖm vô lo¹i h×nh #"..i) 
return i 
end 
print ("Tr­íc m¾t tuÇn hoµn lóc kh«ng cã lùa chän ®Õn nhiÖm vô lo¹i h×nh . nhiÖm vô quyÒn nÆng ®Ých mÖt mái thªm tæng trÞ gi¸ lµ # "..k) 
end 

-- script viet hoa By http://tranhba.com  dÞ th­êng xö lý , nÕu nh­ nhµ ch¬i còng chän kh«ng tíi nhiÖm vô lo¹i h×nh tho¹i liÒn chän 4 

print("Ch©n vèn ®ang chän tr¹ch nhiÖm vô lo¹i h×nh thêi ®iÓm bÞ lçi #"); 

return 0 

end 


-- script viet hoa By http://tranhba.com  s­u tÇm nhiÖm vô liªn , lÊy ®­îc t­¬ng øng nhiÖm vô 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ lµ nªn nhiÖm vô ë biÓu trung ®Ých ®­îc sè 
function GetTaskLink(myTaskType,myTaskLevel) 

local myTaskCol -- script viet hoa By http://tranhba.com  ghi chÐp nhiÖm vô ®­îc sè 

if ( myTaskType == 1 ) then -- script viet hoa By http://tranhba.com  nÕu nh­ lµ mua vËt phÈm ®Ých nhiÖm vô 
myTaskCol = SelectTask(Task_BuyGoods,myTaskLevel) 
elseif ( myTaskType == 2 ) then 
myTaskCol = SelectTask(Task_FindGoods,myTaskLevel) 
elseif ( myTaskType == 3 ) then 
myTaskCol = SelectTask(Task_ShowGoods,myTaskLevel) 
elseif ( myTaskType == 4 ) then 
myTaskCol = SelectTask(Task_FindMaps,myTaskLevel) 
elseif ( myTaskType == 5 ) then 
myTaskCol = SelectTask(Task_UpGround,myTaskLevel) 
elseif ( myTaskType == 6 ) then 
myTaskCol = SelectTask(Task_WorldMaps,myTaskLevel) 
end 

return myTaskCol 

end 







-- script viet hoa By http://tranhba.com  c¨n cø nhiÖm vô liÖt biÓu dÆm quyÒn nÆng ngÉu nhiªn lùa ra nhiÖm vô , trë vÒ trÞ gi¸ lµ t­¬ng øng nhiÖm vô biÓu c¸ch ®Ých ®­îc sè 
function SelectTask(myTaskTable,myTaskLevel) 

local i,j,k = 0,0,0 
local myMainRate = 0 -- script viet hoa By http://tranhba.com  nhiÖm vô tæng quyÒn nÆng 

print (" lùa chän nhiÖm vô cÊp bËc : "..myTaskLevel.." ") 

print ("NhiÖm vô cÊp bËc trong tæng céng cã "..getn(myTaskTable[myTaskLevel]).." c¸ nhiÖm vô ") 

for i=1,getn(myTaskTable[myTaskLevel]) do 
		myMainRate = myMainRate + myTaskTable[myTaskLevel][i][2]
end 

print (" lùa chän ®Õn ®Ých cô thÓ nhiÖm vô tæng quyÒn nÆng #"..myMainRate) 

-- script viet hoa By http://tranhba.com  c¨n cø quyÒn nÆng c«ng thøc cuèi cïng ngÉu nhiªn tÝnh to¸n ra cô thÓ nhiÖm vô 
j = C_Random(1,myMainRate) 

-- script viet hoa By http://tranhba.com  print ("NhiÖm vô tæng quyÒn nÆng : "..myMainRate) 
-- script viet hoa By http://tranhba.com  print ("NgÉu nhiªn ®Õn ®Ých nhiÖm vô quyÒn nÆng : "..j) 

for i=1,getn(myTaskTable[myTaskLevel]) do 

		k = k + myTaskTable[myTaskLevel][i][2]

if ( j < k ) then 
-- script viet hoa By http://tranhba.com  print (" lùa chän ®Õn biÓu c¸ch trung ®Ých thø "..myTaskTable[myTaskLevel][i][1].." ®­îc . ") 
return myTaskTable[myTaskLevel][i][1] 
end 

end 

-- script viet hoa By http://tranhba.com  dÞ th­êng xö lý , nÕu nh­ nhµ ch¬i chän kh«ng ®­îc lµ trë vÒ 0 
print ("Ch©n vèn ®ang chän tr¹ch cô thÓ nhiÖm vô lóc bÞ lçi #") 
return 0 

end 



-- script viet hoa By http://tranhba.com  tö hµm sè , ph¶n trë vÒ mét c¸i nhiÖm vô lo¹i h×nh së ®èi øng biÓu c¸ch ®Ých tù phï tiªu chÝ 
function GetTaskTextID(myTaskType) 

local myTaskTextID 

if (myTaskType == 1) then 
myTaskTextID = TL_BUYGOODS 
elseif (myTaskType == 2) then 
myTaskTextID = TL_FINDGOODS 
elseif (myTaskType == 3) then 
myTaskTextID = TL_SHOWGOODS 
elseif (myTaskType == 4) then 
myTaskTextID = TL_FINDMAPS 
elseif (myTaskType == 5) then 
myTaskTextID = TL_UPGROUND 
elseif (myTaskType == 6) then 
myTaskTextID = TL_WORLDMAPS 
end 

return myTaskTextID 
end 


-- script viet hoa By http://tranhba.com  tÝnh to¸n mét c¸i nhiÖm vô ®Ých quyÒn nÆng ë kú tr­íc mÆt cÊp bËc trung chiÕm ®o¹t ®Ých phÇn tr¨m so 
-- script viet hoa By http://tranhba.com  myTableName truyÒn vµo ®Ých muèn häc lÊy biÓu c¸ch ®Ých tù phï 
-- script viet hoa By http://tranhba.com  myTaskRate nhiÖm vô tr­íc mÆt ®Ých quyÒn nÆng 
-- script viet hoa By http://tranhba.com  myTableCol së häc biÓu ®Ých nhãm ( tù phï hoÆc lµ con sè ) 
function CountTaskRate(myTableName,myTaskRate,myTableCol) 

local i 
local myTotalRate = 0 
local myReadRate 
local myPercent 

local myTableRow = TabFile_GetRowCount(myTableName) -- script viet hoa By http://tranhba.com  lÊy ®­îc TABLE v¨n kiÖn ®Ých tæng ®­îc ®Õm 

for i = 3,myTableRow-1 do 
myReadRate = tonumber(TabFile_GetCell(myTableName,myTableRow,myTableCol)) 
		myTotalRate = myTotalRate + myReadRate
		i = i + 1
end 

myPercent = (myTaskRate / myTotalRate) * 100 

return myPercent 

end 



-- script viet hoa By http://tranhba.com  tÝnh to¸n tõ cùu cÊp bËc th¨ng cÊp ®Õn nhµ ch¬i tr­íc m¾t ®Ých cÊp bËc cÇn bao nhiªu kinh nghiÖm trÞ gi¸ 
function CountUpLevelExp(myOldLevel,myOldExp) 

local i 
local myLevel = GetLevel() 
local myExp = GetExp() 

local myTotalExp = 0 

if (myOldLevel<myLevel) then 


for i=myOldLevel,myLevel do 
		myTotalExp = myTotalExp + tonumber(TabFile_GetCell(TL_UPLEVELEXP,i+1,2))
end 

myTotalExp = (myTotalExp - myOldExp) - myExp 

return myTotalExp 
else 
return myExp - myOldExp 
end 

end 



-- script viet hoa By http://tranhba.com  tö hµm sè , lÊy ®­îc nhiÖm vô t­¬ng øng nãi râ , trë vÒ mét ®o¹n tù phï chuçi 
function GetTaskInfo() 

local myTaskMainInfo,myTaskOrder,myTaskInfo1,myTaskInfo2,myTaskInfo3 

local myTaskType = GetPlayerTaskType() 

if (myTaskType == 1) then 

print(" lÊy ®­îc ®Ých ®­îc sè #"..GetTaskTableCol()) 

-- script viet hoa By http://tranhba.com  vËt phÈm tªn 
myTaskOrder = TabFile_GetCell(TL_BUYGOODS,GetTaskTableCol(),"TaskInfo1") 

print("NhiÖm vô nãi râ #"..TabFile_GetCell(TL_BUYGOODS,GetTaskTableCol(),"TaskInfo1")) 

-- script viet hoa By http://tranhba.com  môc ®Ých ®Þa tªn 
myTaskInfo1 = TabFile_GetCell(TL_BUYGOODS,GetTaskTableCol(),"TaskInfo") 

myTaskMainInfo = format("%s%s%s%s%s","§i ",myTaskInfo1,"Chç mua ",myTaskOrder,"Véi tíi ta . "); 

elseif (myTaskType == 2) then 

-- script viet hoa By http://tranhba.com  ma ph¸p thuéc tÝnh 
myTaskOrder = TabFile_GetCell(TL_FINDGOODS,GetTaskTableCol(),"MagicCnName") 
-- script viet hoa By http://tranhba.com  cô thÓ vò khÝ lo¹i kh¸c 
myTaskInfo1 = TabFile_GetCell(TL_FINDGOODS,GetTaskTableCol(),"TaskInfo") 
-- script viet hoa By http://tranhba.com  nhá nhÊt ma ph¸p thuéc tÝnh 
myTaskInfo2 = TabFile_GetCell(TL_FINDGOODS,GetTaskTableCol(),"MinValue") 
-- script viet hoa By http://tranhba.com  lín nhÊt ma ph¸p thuéc tÝnh 
myTaskInfo3 = TabFile_GetCell(TL_FINDGOODS,GetTaskTableCol(),"MaxValue") 

if (myTaskOrder=="n") then 

myTaskMainInfo = format("%s%s%s","§i t×m <color=red>",myTaskInfo1,"<color> véi tíi ta . "); 
else 
myTaskMainInfo = format("%s%s%s%s%s%s%s","§i t×m <color=red>",myTaskOrder,"<color> Ýt nhÊt ",myTaskInfo2,"§Ých ",myTaskInfo1,"Véi tíi ta . "); 
end 

elseif (myTaskType == 3) then 

-- script viet hoa By http://tranhba.com  ma ph¸p thuéc tÝnh Trung v¨n tªn 
myTaskOrder = TabFile_GetCell(TL_SHOWGOODS,GetTaskTableCol(),"MagicCnName") 
-- script viet hoa By http://tranhba.com  ma ph¸p thuéc tÝnh ®Ých nhá nhÊt trÞ gi¸ 
myTaskInfo1 = TabFile_GetCell(TL_SHOWGOODS,GetTaskTableCol(),"MinValue") 
-- script viet hoa By http://tranhba.com  ma ph¸p thuéc tÝnh ®Ých lín nhÊt trÞ gi¸ 
myTaskInfo2 = TabFile_GetCell(TL_SHOWGOODS,GetTaskTableCol(),"MaxValue") 

myTaskMainInfo = format("%s%s%s%s%s%s%s","§i t×m mét d¹ng <color=red>",myTaskOrder,"<color> Ýt nhÊt v× ",myTaskInfo1,"Cao nhÊt v× ",myTaskInfo2,"§Ých trang bÞ hoÆc lµ qu¸ng th¹ch cho ta . "); 

elseif (myTaskType == 4) then 

-- script viet hoa By http://tranhba.com  b¶n ®å ®Ých tªn 
myTaskOrder = TabFile_GetCell(TL_FINDMAPS,GetTaskTableCol(),"TaskInfo1") 

-- script viet hoa By http://tranhba.com  muèn ®Ých b¶n ®å sè l­îng 
myTaskInfo1 = TabFile_GetCell(TL_FINDMAPS,GetTaskTableCol(),"Num") 

-- script viet hoa By http://tranhba.com  b¶n ®å ®Ých lo¹i h×nh 
myTaskInfo2 = TabFile_GetCell(TL_FINDMAPS,GetTaskTableCol(),"MapType") 

if (tonumber(myTaskInfo2) == 1) then 
myTaskInfo3 = " b¶n ®å chÝ " 
else 
myTaskInfo3 = " bÝ chÝ " 
end 

myTaskMainInfo = format("%s%s%s%s%s%s%s%s","§Õn <color=red>",myTaskOrder,"<color> chç cho ta t×m ",myTaskInfo1,"Cuèn ",myTaskOrder,myTaskInfo3,"Tíi . ") 

elseif (myTaskType == 5) then 

-- script viet hoa By http://tranhba.com  cÇn t¨ng lªn trÞ sè lo¹i h×nh 
myTaskOrder = TabFile_GetCell(TL_UPGROUND,GetTaskTableCol(),"NumericType") 

-- script viet hoa By http://tranhba.com  cÇn t¨ng lªn trÞ sè tæng sè 
myTaskInfo1 = TabFile_GetCell(TL_UPGROUND,GetTaskTableCol(),"NumericValue") 

if (tonumber(myTaskOrder) == 1) then 
myTaskInfo2 = " cÊp cÊp bËc " 
elseif (tonumber(myTaskOrder) == 2) then 
myTaskInfo2 = " chót kinh nghiÖm trÞ gi¸ " 
elseif (tonumber(myTaskOrder) == 3) then 
myTaskInfo2 = " ®iÓm danh väng " 
elseif (tonumber(myTaskOrder) == 4) then 
myTaskInfo2 = " ®iÓm phóc duyªn " 
elseif (tonumber(myTaskOrder) == 5) then 
myTaskInfo2 = " ®iÓm PK trÞ gi¸ " 
end 

myTaskMainInfo = format("%s%s%s%s","§i t¨ng lªn ",myTaskInfo1," ",myTaskInfo2) 

elseif (myTaskType == 6) then 
-- script viet hoa By http://tranhba.com  cÇn b¾t ®­îc nói s«ng x· t¾c ®å m¶nh vôn 
myTaskOrder = TabFile_GetCell(TL_WORLDMAPS,GetTaskTableCol(),"Num") 

myTaskMainInfo = format("%s%s%s","§i cho ta thu tËp ",myTaskOrder,"Tê nói s«ng x· t¾c ®å ®Ých m¶nh vôn tíi . ") 
end 

return myTaskMainInfo 

end 



function AssignValue(myTaskVariable,myTaskTextID) 

local i,j,k = 0,0,0 
local myTaskIndex = {} 
myTaskVariable = {} 
myTaskVariable[1] = {} 
myTaskVariable[1][1] = {} 

local myTableRow = TabFile_GetRowCount(myTaskTextID) 
local myColText 
local myReadRate 

-- script viet hoa By http://tranhba.com  print (format("%s%s%s",myTaskTextID," : ",myTableRow)) 

for i = 1,20 do 
myTaskVariable[i]={} 
for j=1,myTableRow - 1 do 
myTaskVariable[i][j] = {0,0} 
end 
end 

for i = 1,20 do 
myTaskIndex[i] = 0 
end 

for i = 1,20 do -- script viet hoa By http://tranhba.com  tõ ®Ö nhÊt cÊp ®Õn thø hai m­¬i cÊp ®Ých lÞch lÇn tuÇn hoµn 
for j = 2,myTableRow do 
myColText = format("%s%s","TaskRate",i) 
myReadRate = tonumber(TabFile_GetCell(myTaskTextID,j,myColText)) 

if (myReadRate ~= nil) then -- script viet hoa By http://tranhba.com  nÕu nh­ ë nhiÖm vô liªn cÊp bËc quyÒn nÆng bªn trong cã mÊy trÞ gi¸ lêi cña , lµ thuéc vÒ c¸i nµy cÊp bËc 

					myTaskIndex[i] = myTaskIndex[i] + 1
myTaskVariable[i][myTaskIndex[i]] = {j,myReadRate} 
end 
end 
-- script viet hoa By http://tranhba.com  print ("The "..myTaskTextID.." 's Task: "..i.." have: "..getn(myTaskVariable[i]).." members."); 
end 

-- script viet hoa By http://tranhba.com  print (format("%s%s%s",myTaskTextID," : ","finshed!!!")) 

return myTaskVariable 

end 


-- script viet hoa By http://tranhba.com  tÊt c¶ nhiÖm vô lo¹i h×nh ë mçi cÊp bËc trung so tû sè ®Ých t¸c dÉn 
function AssignValue_TaskRate(myTaskVariable,myTaskTextID) 

local i,j,k 

myTaskVariable = {} 
myTaskVariable[1] = {} 

local myTableRow = TabFile_GetRowCount(myTaskTextID) -- script viet hoa By http://tranhba.com  lÊy ®­îc TABLE v¨n kiÖn ®Ých tæng ®­îc ®Õm 
local myTableCol -- script viet hoa By http://tranhba.com  thèng nhÊt tù phï chuçi , cÊu t¹o biÓu ®Çu tiªu chÝ #"level20" 
local myRate 

for i = 1,TL_MAXLINKS do 
myTaskVariable[i]={} 
for j=1,6 do 
myTaskVariable[i][j] = 0 
end 
end 

k = 0 

for i = 1,TL_MAXLINKS do 
for j = 2,myTableRow do 
k = j - 1 
myTableCol = format("%s%s","level",i) 
myRate = tonumber(TabFile_GetCell(myTaskTextID,j,myTableCol)) 
myTaskVariable[i][k] = myRate 
-- script viet hoa By http://tranhba.com  print ("MyTaskLevel: "..i.." MyTaskType: "..k.." MyRate: "..myRate) 
end 
end 

return myTaskVariable 

end 


-- script viet hoa By http://tranhba.com  cÊu t¹o t­ëng th­ëng néi tån biÓu c¸ch 
function AssignValue_Award(myTaskVariable,myTaskTextID) 

local i,j = 0,1 

myTaskVariable = {} 
myTaskVariable[1] = {} 

local myTableRow = TabFile_GetRowCount(myTaskTextID) 

for i = 1,myTableRow - 1 do 
myTaskVariable[i]={} 
end 

for i = 1,myTableRow - 1 do 
		j = i + 1
myTaskVariable[i] = {j,tonumber(TabFile_GetCell(myTaskTextID,j,"TaskValue"))} 
print("T­ëng th­ëng lo¹i h×nh #"..myTaskTextID.." nhiÖm vô t­ëng th­ëng ®­îc sè #"..j.." t­ëng th­ëng gi¸ trÞ #"..myTaskVariable[i][2]) 
end 

return myTaskVariable 

end 


-- script viet hoa By http://tranhba.com  thµnh lËp t­ëng th­ëng quyÒn nÆng t¸c dÉn biÓu 
-- script viet hoa By http://tranhba.com  truyÒn vµo tham sæ #myTaskVariable lµ nguyªn thñy ®Ých t­ëng th­ëng gi¸ trÞ liÖt biÓu , myAwardValue lµ tÝnh to¸n sau ®Ých vËt phÈm tæng gi¸ trÞ l­îng 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ lµ mçi t­ëng th­ëng ®Ých biÓu c¸ch v¨n kiÖn ®­îc sè t¸c dÉn thay v× quyÒn nÆng 
function AssignValue_AwardRate(myAwardVariable,myAwardValue) 

local i,j = 0,0 
local myAwardRate = {} -- script viet hoa By http://tranhba.com  chuyÓn ®æi sau ®Ých quyÒn nÆng biÓu 
local myAwardNum = getn(myAwardVariable) 

for i = 1,myAwardNum do 
myAwardRate[i]={} 
end 

for i=1,myAwardNum do 
j=floor((myAwardValue/(myAwardNum*(myAwardVariable[i][2])))*10000000) 
myAwardRate[i] = {i,j} 
end 

return myAwardRate 

end
