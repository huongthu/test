
-- script viet hoa By http://tranhba.com  d� t�u nhi�m v� li�n ch�n v�n ��u v�n ki�n 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2004/12/25 l� gi�ng sinh bu�i s�ng 

IncludeLib("FILESYS"); 

TL_MAXTIMES = 20 -- script viet hoa By http://tranhba.com  m�i li�n c� 20 c� nhi�m v� 
TL_MAXLINKS = 20 -- script viet hoa By http://tranhba.com  m�i ho�n c� 20 c� li�n 
TL_MAXLOOPS = 10 -- script viet hoa By http://tranhba.com  nh� ch�i t�ng c�ng c� th� l�m 10 ho�n ��ch nhi�m v� 
TL_MAXLINKSCOUNT = 4 -- script viet hoa By http://tranhba.com  m�i li�n nhi�u nh�t ch� c� th� l�m 4 l�n 

TL_UPLEVELEXP = "TaskLink_UpLevel" 


-- script viet hoa By http://tranhba.com  h�c l�y v�n ki�n l�c ��ch t� ph� chu�i ��nh ngh�a 
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


-- script viet hoa By http://tranhba.com  nhi�m v� li�n TABLE FILE ��ch d� t�i nh�p 
TabFile_Load("\\settings\\task\\tasklink_buygoods.txt",TL_BUYGOODS)
TabFile_Load("\\settings\\task\\tasklink_findgoods.txt",TL_FINDGOODS)
TabFile_Load("\\settings\\task\\tasklink_showgoods.txt",TL_SHOWGOODS)
TabFile_Load("\\settings\\task\\tasklink_findmaps.txt",TL_FINDMAPS)
TabFile_Load("\\settings\\task\\tasklink_upground.txt",TL_UPGROUND)
TabFile_Load("\\settings\\task\\tasklink_worldmaps.txt",TL_WORLDMAPS)
TabFile_Load("\\settings\\task\\levellink.txt",TL_LEVELLINK) -- script viet hoa By http://tranhba.com  ÿ���ȼ����Ӧ�ĳ�ʼ�ȼ�
TabFile_Load("\\settings\\task\\tasklink_mainlink.txt",TL_MAINTASKLEVEL) -- script viet hoa By http://tranhba.com  ÿ��������������Ӧ�ĵȼ�������ֵļ���
TabFile_Load("\\settings\\npc\\player\\level_exp.txt",TL_UPLEVELEXP) -- script viet hoa By http://tranhba.com  ��������ľ����

TabFile_Load("\\settings\\task\\award_basic.txt",TL_AWARDBASIC)
TabFile_Load("\\settings\\task\\award_link.txt",TL_AWARDLINK)
TabFile_Load("\\settings\\task\\award_loop.txt",TL_AWARDLOOP)



-- script viet hoa By http://tranhba.com  x�c ��nh nh� ch�i tr��c m�t ��ch nhi�m v� tr�ng th�i ph�i l� thu�c v� th� m�y ho�n 
function GetFirstLoop() 
-- script viet hoa By http://tranhba.com  b�i v� t�m th�i kh�ng c� ho�n ��ch s� kh�c bi�t , cho n�n ch� c� th� v� 1 
return 1 
end 


-- script viet hoa By http://tranhba.com  cu�i c�ng ��ch th�u xu�t h�m s� , cho nh� ch�i nhi�m v� h�n n�a ��a v�i nhi�m v� thay ��i l��ng trung 
function DealTask() 

-- script viet hoa By http://tranhba.com  ��u ti�n x�c ��nh nh� ch�i ��ch nhi�m v� c�p b�c 
local myTaskLevel = GetTaskState(2) 

print ("Get The TaskLevel: "..myTaskLevel) 

-- script viet hoa By http://tranhba.com  sau �� ng�u nhi�n t�nh ra n�n c�p b�c h�n ti�n h�nh c�i g� lo�i h�nh nhi�m v� 
local myTaskType = GetTaskType(myTaskLevel) 

SetPlayerTaskTpye(myTaskType) 

print ("Get The TaskType: "..myTaskType) 

-- script viet hoa By http://tranhba.com  cu�i c�ng n�a h�c t��ng �ng bi�u x�c ��nh c� th� nhi�m v� � bi�u c�ch trung ��ch ���c s� 
local myTaskID = GetTaskLink(myTaskType,myTaskLevel) 

SaveTaskTableCol(myTaskID) 

print ("Get The TaskColID: "..myTaskID) 

-- script viet hoa By http://tranhba.com  n�u nh� l� thu t�p b�n �� nhi�m v� l� ghi ch�p b�n �� ��ch bi�n s� c�ng mu�n thu t�p ��ch quy�n tr�c lo�i h�nh 
local myTaskMapID = tonumber(TabFile_GetCell(TL_FINDMAPS,myTaskID,"MapID")) 
local myMapType = tonumber(TabFile_GetCell(TL_FINDMAPS,myTaskID,"MapType")) 
local myMapNum = tonumber(TabFile_GetCell(TL_FINDMAPS,myTaskID,"Num")) 

-- script viet hoa By http://tranhba.com  th� 5 lo�i nhi�m v� ph�n �o�n �i�u ki�n 
local myTaskValueType 

-- script viet hoa By http://tranhba.com  ghi ch�p nhi�m v� thay ��i l��ng 
-- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ch nhi�m v� lo�i h�nh 
SetPlayerTaskTpye(myTaskType) 

-- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ch nhi�m v� c� th� bi�u c�ch ���c ��m 
SaveTaskTableCol(myTaskID) 

-- script viet hoa By http://tranhba.com  ��i �ng b�t ��ng nhi�m v� l�m b�t ��ng thay ��i l��ng t�n tr� x� l� 

if ( myTaskType == 1 ) then 
elseif ( myTaskType == 2 ) then 
elseif ( myTaskType == 3 ) then 
elseif ( myTaskType == 4 ) then 
SetTask(1031,myTaskMapID) 
SetTask(1032,SetByte(GetTask(1032),1,myMapType)) 
SetTask(1032,SetByte(GetTask(1032),2,myMapNum)) 
SetTask(1025,0) -- script viet hoa By http://tranhba.com  thanh kh�ng th� ra l� b�n �� ch� s� l��ng 
elseif ( myTaskType == 5 ) then -- script viet hoa By http://tranhba.com  n�u nh� l� thu�c v� tr� s� th�ng c�p ��ch nhi�m v� , l� ph�n �o�n l� lo�i n�o tr� s� 

myTaskValueType = tonumber(TabFile_GetCell(TL_UPGROUND,myTaskID,"NumericType")) 

if (myTaskValueType == 2) then 
print(" l�y ���c th�ng c�p kinh nghi�m nhi�m v� #") 
SetTask(1033,GetLevel()) 
SetTask(1034,GetExp()) 
elseif (myTaskValueType == 3) then 
print(" l�y ���c th�ng c�p danh v�ng ��ch nhi�m v� #") 
SetTask(1026,GetRepute()) 
elseif (myTaskValueType == 4) then 
print(" l�y ���c th�ng c�p ph�c duy�n ��ch nhi�m v� #") 
SetTask(1026,FuYuan_Get()) 
elseif (myTaskValueType == 5) then 
print(" l�y ���c th�ng c�p PK tr� gi� ��ch nhi�m v� #") 
SetTask(1026,GetPK()) 
end 

elseif ( myTaskType == 6 ) then 
end 

SetTaskCourse(1) -- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� ti�n tri�n ti�n �� v� 1 

end 


-- script viet hoa By http://tranhba.com  nhi�m v� tu�n ho�n khi ��n m�t v�ng 
function TaskProcess() 

local myTaskTimes = GetTaskState(1) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch s� l�n 
local myTaskLinks = GetTaskState(2) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch li�n ��m 
local myTaskLoops = GetTaskState(3) -- script viet hoa By http://tranhba.com  nh� ch�i ti�n h�nh ���c ��ch ho�n ��m 
local myTaskCancel = GetTaskState(4) 
local myTaskLinksCount = GetTaskState(6) -- script viet hoa By http://tranhba.com  ki�m tr�c nh� ch�i � tr��c m�t ��ch li�n trung �� ti�n h�nh m�y l�n 

if (myTaskTimes ~= 0) then 
	myTaskTimes = myTaskTimes + 1
	if (myTaskTimes >= TL_MAXTIMES + 1) then
myTaskTimes = 1 
		myTaskLinksCount = myTaskLinksCount + 1
myTaskCancel = 0 -- script viet hoa By http://tranhba.com  h�y b� s� l�n v� 0 
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



-- script viet hoa By http://tranhba.com  ki�m tr�c h�m s� , d�ng �� x�c nh�n nh� ch�i c� hay kh�ng �� ho�n th�nh nhi�m v� 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� 
-- script viet hoa By http://tranhba.com  1# �� ��t th�nh �i�u ki�n 
-- script viet hoa By http://tranhba.com  0# v�n ch�a/kh�ng th� ho�n th�nh 
-- script viet hoa By http://tranhba.com  truy�n v�o tham s� nTaskGoods c� nhi�u c� ph��ng th�c bi�u ��t 
-- script viet hoa By http://tranhba.com  n�u nh� l� nhi�m v� 1 l�i c�a # ch�ng lo�i # lo�i kh�c # t� lo�i # ng� h�nh # c�p b�c 
-- script viet hoa By http://tranhba.com  n�u nh� l� nhi�m v� 2 l�i c�a # ch�ng lo�i # lo�i kh�c # t� lo�i # ng� h�nh # c�p b�c # ma ph�p thu�c t�nh ID# ma ph�p thu�c t�nh h� h�n # ma ph�p thu�c t�nh th��ng h�n 
-- script viet hoa By http://tranhba.com  n�u nh� l� nhi�m v� 3 l�i c�a # ma ph�p thu�c t�nh ID# ma ph�p thu�c t�nh h� h�n # ma ph�p thu�c t�nh th��ng h�n 
function CheckTask(nTaskGoods) 

local i,j 

-- script viet hoa By http://tranhba.com  nhi�m v� c�n c�u v�t ph�m 
local myTaskGoods 

-- script viet hoa By http://tranhba.com  nhi�m v� c�n c�u xin v�t ph�m ��ch ch�ng lo�i # lo�i kh�c # t� lo�i # ng� h�nh # c�p b�c 
local myGenre,myDetail,myParticular,myGoodsFive,myLevel,myMagicID,myMagicMax,myMagicMin 

-- script viet hoa By http://tranhba.com  nhi�m v� c�n c�u xin v�t ph�m ��ch ch�ng lo�i , kh�ng mang theo ma ph�p thu�c t�nh c�ng mang ma ph�p thu�c t�nh 
local myGoodsClean,myGoodsMagic 

-- script viet hoa By http://tranhba.com  nhi�m v� mu�n c�u b�n �� ch� ID, b�n �� ch� ��ch s� l��ng c�ng b�n �� ch� ��ch lo�i h�nh 
local myTaskMaps,myTaskMapNum,myTaskMapType 

-- script viet hoa By http://tranhba.com  nhi�m v� mu�n c�u xin th�ng c�p ��ch tr� s� c�ng tr� s� lo�i h�nh 
local myTaskValue,myTaskValueType 

-- script viet hoa By http://tranhba.com  nhi�m v� mu�n c�u n�i s�ng x� t�c �� s� l��ng 
local myWorldMaps,nWorldMaps 

-- script viet hoa By http://tranhba.com  l�y ���c nh� ch�i tr��c m�t s� nh�n ��ch nhi�m v� lo�i h�nh 
local myTaskType = GetPlayerTaskType() 
local myTaskID = GetTaskTableCol() 

if ( myTaskType == 1) then 

myGenre = tonumber(TabFile_GetCell(TL_BUYGOODS,myTaskID,"Genre")) 
myDetail = tonumber(TabFile_GetCell(TL_BUYGOODS,myTaskID,"Detail")) 
myParticular = tonumber(TabFile_GetCell(TL_BUYGOODS,myTaskID,"Particular")) 
myGoodsFive = tonumber(TabFile_GetCell(TL_BUYGOODS,myTaskID,"GoodsFive")) 
myLevel = tonumber(TabFile_GetCell(TL_BUYGOODS,myTaskID,"Level")) 

myTaskGoods = {myGenre,myDetail,myParticular,myGoodsFive,myLevel} 

print("Nhi�m v� mu�n c�u v�t ph�m v� #"..myGenre..myDetail..myParticular..myLevel..myGoodsFive) 
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
myGoodsClean = {nTaskGoods[1],nTaskGoods[2],nTaskGoods[3],nTaskGoods[4],nTaskGoods[5]} -- script viet hoa By http://tranhba.com  n�u nh� kh�ng c�n ph�n �o�n ma ph�p thu�c t�nh l� l�y n�y tr� gi� 
myGoodsMagic = {nTaskGoods[1],nTaskGoods[2],nTaskGoods[3],nTaskGoods[4],nTaskGoods[5],nTaskGoods[6],nTaskGoods[7],nTaskGoods[8]} 

if (myMagicID == "n") then 
print("Nhi�m v� mu�n c�u v�t ph�m v� #"..myGenre..myDetail..myParticular..myLevel..myGoodsFive) 
if (nTaskGoods[1] == myTaskGoods[1]) and (nTaskGoods[2] == myTaskGoods[2]) and (nTaskGoods[3] == myTaskGoods[3]) and (nTaskGoods[4] == myTaskGoods[4]) and (nTaskGoods[5] == myTaskGoods[5]) then 
return 1 
else 
return 0 
end 
else 
print("Nhi�m v� mu�n c�u v�t ph�m v� #"..myGenre..myDetail..myParticular..myLevel..myGoodsFive.." ma ph�p thu�c t�nh #"..myMagicID.." nh� nh�t tr� gi� #"..myMagicMin.." l�n nh�t tr� gi� #"..myMagicMax) 
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

print("Nhi�m v� mu�n c�u v�t ph�m v� #"..myMagicID..myMagicMin..myMagicMax) 

if ( nTaskGoods[1] == myMagicID) and ( nTaskGoods[2] >= myMagicMin ) then 
return 1 
else 
return 0 
end 

elseif ( myTaskType == 4) then 

myTaskMapNum = GetTask(1025) 

print ("Nhi�m v� mu�n c�u b�n �� s� l��ng v� #"..tonumber(TabFile_GetCell(TL_FINDMAPS,myTaskID,"Num"))); 

if (myTaskMapNum>=tonumber(TabFile_GetCell(TL_FINDMAPS,myTaskID,"Num"))) then 
myTaskMapNum = 0 
SetTask(1025,myTaskMapNum) -- script viet hoa By http://tranhba.com  l�n n�a ��a 0 
return 1 
else 
return 0 
end 

elseif (myTaskType == 5) then 

myTaskValueType = tonumber(TabFile_GetCell(TL_UPGROUND,myTaskID,"NumericType")) 

if (myTaskValueType == 2) then 

print("Tr��c m�t ��ch nhi�m v� l� th�ng c�p kinh nghi�m lo�i h�nh ") 
if (CountUpLevelExp(GetTask(1033),GetTask(1034)) >= tonumber(TabFile_GetCell(TL_UPGROUND,myTaskID,"NumericValue"))) then 
return 1 
else 
return 0 
end 
elseif (myTaskValueType == 3) then -- script viet hoa By http://tranhba.com  danh v�ng tr� gi� 

print("Tr��c m�t ��ch nhi�m v� l� th�ng c�p danh v�ng ��ch lo�i h�nh ") 
if (GetRepute() >= GetTask(1026)) then 
return 1 
else 
return 0 
end 
elseif (myTaskValueType == 4) then -- script viet hoa By http://tranhba.com  ph�c duy�n tr� gi� 

print("Tr��c m�t ��ch nhi�m v� l� th�ng c�p ph�c duy�n ��ch lo�i h�nh ") 
if (FuYuan_Get() >= GetTask(1026)) then 
return 1 
else 
return 0 
end 
elseif (myTaskValueType == 5) then -- script viet hoa By http://tranhba.com  PK tr� gi� 

print("Tr��c m�t ��ch nhi�m v� l� th�ng c�p PK tr� gi� ��ch lo�i h�nh ") 
if (GetPK() >= GetTask(1026)) then 
return 1 
else 
return 0 
end 
end 

elseif (myTaskType == 6) then 
myWorldMaps = tonumber(TabFile_GetCell(TL_WORLDMAPS,myTaskID,"Num")) 
if (GetTask(1027) >= myWorldMaps) then 
nWorldMaps = GetTask(1027) - myWorldMaps -- script viet hoa By http://tranhba.com  � ch� n�y san li�u c�n n�i s�ng x� t�c �� m�nh v�n 
SetTask(1027,nWorldMaps) 
return 1 
else 
return 0 
end 
end 

end 



-- script viet hoa By http://tranhba.com  cho nh� ch�i ph�t t��ng th��ng ��ch t�ng h�m s� 
function GivePlayerAward() 

-- script viet hoa By http://tranhba.com  truy�n cho t��ng th��ng m�t b�n ��ch tham s� # 
-- script viet hoa By http://tranhba.com  n�u nh� l� v�t ph�m l�i c�a l� theo th� t� v� # t��ng th��ng lo�i h�nh , Quality#Genre#Detail#Particular#Level#GoodsFive#Magiclevel , c�ng n�i r� ch� vi�t 
-- script viet hoa By http://tranhba.com  n�u nh� l� kim ti�n l� theo th� t� v� # t��ng th��ng lo�i h�nh , kim ti�n ��ch s� l��ng 
-- script viet hoa By http://tranhba.com  n�u nh� l� kinh nghi�m tho�i l� theo th� t� v� # t��ng th��ng lo�i h�nh , kinh nghi�m s� l��ng 
-- script viet hoa By http://tranhba.com  n�u nh� l� ng�u nhi�n c� h�i ho�c l� h�y b� c� h�i l� ch� ghi ch�p v� th� nh�t v� t��ng th��ng lo�i h�nh 
local myAwardArry = { 
{0,0,0,0,0,0,0,0,""}, 
{0,0,0,0,0,0,0,0,""}, 
{0,0,0,0,0,0,0,0,""} 
} 

-- script viet hoa By http://tranhba.com  t��ng th��ng ��ch ��m t� , chia ra l�m c�c lo�i t��ng th��ng ��ch quy�n n�ng 
-- script viet hoa By http://tranhba.com  theo th� t� v� # kim ti�n # kinh nghi�m # v�t ph�m # n�a ng�u nhi�n m�t l�n c� h�i # h�y b� nhi�m v� c� h�i 
-- script viet hoa By http://tranhba.com  0 c�n l�i l� c�i n�o t��ng th��ng lo�i h�nh �� b� ch�n l�a 
local myMainAwardRate = {30,30,30,9,1} 

local myTaskValue1,myTaskValue2,myMainValue -- script viet hoa By http://tranhba.com  t�m th�i thay ��i l��ng , d�ng �� ghi ch�p h�c ��n ��ch tr� s� 
-- script viet hoa By http://tranhba.com  d�ng cho t��ng th��ng truy�n v�o ��ch t� ph� chu�i 
local myAwardGoods,myAwardExp,myAwardMoney,myAwardCancal,myAwardChange = "","","","","" 

local myArawdGoods = {0,0,0,0,0,0} -- script viet hoa By http://tranhba.com  t��ng th��ng v�t ph�m t��ng ��i �ng ��ch ��m t� 

local myAwardType 

local myAwardArryIndex = 1 -- script viet hoa By http://tranhba.com  d�ng �� ghi ch�p t��ng th��ng ��m t� l� �� ghi ch�p bao nhi�u c� 

local myRandomNum,myRandomSeed -- script viet hoa By http://tranhba.com  ng�u nhi�n ��m c�ng ng�u nhi�n m�m m�ng 

myTimes = GetTaskState(1) 
myLinks = GetTaskState(2) 

myTaskType = GetPlayerTaskType() 

local _nSeed = SetRandSeed(GetTask(1037)) 


print("B�t ��u ti�n h�nh t��ng th��ng lo�i h�nh l�a ch�n #") 

for i=1,3 do -- script viet hoa By http://tranhba.com  tu�n ho�n ch�n l�a ba t��ng th��ng ch�ng lo�i 

myAwardType,myMainAwardRate = GetAwardTypeForRate(myMainAwardRate) 

print("Th� "..i.." c� tu�n ho�n tr�ng tuy�n tr�ch li�u t��ng th��ng lo�i h�nh #"..myAwardType); 

if (myAwardType==1) then -- script viet hoa By http://tranhba.com  n�u nh� t��ng th��ng lo�i h�nh l� ti�n 

print ("Tr��c m�t ��ch nhi�m v� lo�i h�nh l� #"..GetTaskTextID(myTaskType).." , tr��c m�t ��ch nhi�m v� bi�u c�ch ���c s� l� #"..GetTaskTableCol()); 

myTaskValue1 = tonumber(TabFile_GetCell(GetTaskTextID(myTaskType),GetTaskTableCol(),"TaskValue1")) 
myTaskValue2 = tonumber(TabFile_GetCell(GetTaskTextID(myTaskType),GetTaskTableCol(),"TaskValue2")) 
-- script viet hoa By http://tranhba.com  tr�i qua th�m ng�i tr� gi� t�nh to�n sau ��ch nhi�m v� t��ng th��ng gi� tr� 
			myMainValue = myTaskValue1 + (myTaskValue2 * (1+(myLinks+myTimes)*0.1))

myMainValue = floor((myMainValue / 2) * (C_Random(80,120) * 0.01)) -- script viet hoa By http://tranhba.com  t�nh to�n sau cho ra th�c t� kim ti�n l��ng 

myAwardMoney = format("%s%s",myMainValue,"Kim ti�n "); 

myAwardArry[myAwardArryIndex] = {1,myMainValue,0,0,0,0,0,0,myAwardMoney} 
			myAwardArryIndex = myAwardArryIndex + 1

print(" l�y ���c m�t kim ti�n ��ch t��ng th��ng #"..myAwardMoney); 

elseif (myAwardType==2) then -- script viet hoa By http://tranhba.com  n�u nh� t��ng th��ng ch�nh l� kinh nghi�m 

myTaskValue1 = tonumber(TabFile_GetCell(GetTaskTextID(myTaskType),GetTaskTableCol(),"TaskValue1")) 
myTaskValue2 = tonumber(TabFile_GetCell(GetTaskTextID(myTaskType),GetTaskTableCol(),"TaskValue2")) 
-- script viet hoa By http://tranhba.com  tr�i qua th�m ng�i tr� gi� t�nh to�n sau ��ch nhi�m v� t��ng th��ng gi� tr� 
			myMainValue = myTaskValue1 + (myTaskValue2 * (1+(myLinks+myTimes)*0.1))

myMainValue = floor((myMainValue / 2) * (C_Random(80,120) * 0.01)) -- script viet hoa By http://tranhba.com  t�nh to�n sau cho ra th�c t� kinh nghi�m tr� gi� l��ng 

myAwardExp = format("%s%s",myMainValue,"Ch�t kinh nghi�m tr� gi� ") 

myAwardArry[myAwardArryIndex] = {2,myMainValue,0,0,0,0,0,0,myAwardExp} 
			myAwardArryIndex = myAwardArryIndex + 1

print(" l�y ���c m�t kinh nghi�m tr� gi� ��ch t��ng th��ng #"..myAwardExp); 

elseif (myAwardType==3) then -- script viet hoa By http://tranhba.com  n�u nh� t��ng th��ng ch�nh l� v�t ph�m 

myTaskValue1 = GivePlayerAward_Goods(1) -- script viet hoa By http://tranhba.com  ��u ti�n l�y ���c t��ng th��ng v�t ph�m ��ch ���c ��m 

myQuality = tonumber(TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"Quality")) 
myGenre = tonumber(TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"Genre")) 
myDetail = tonumber(TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"Detail")) 
myParticular = tonumber(TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"Particular")) 
myLevel = tonumber(TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"Level")) 
myGoodsFive = tonumber(TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"GoodsFive")) 


myArawdGoods = TabFile_GetCell(TL_AWARDBASIC,myTaskValue1,"Name") 

myAwardArry[myAwardArryIndex] = {3,myMainValue,myQuality,myGenre,myDetail,myParticular,myLevel,myGoodsFive,myArawdGoods} 
			myAwardArryIndex = myAwardArryIndex + 1

print(" l�y ���c m�t v�t ph�m ��ch t��ng th��ng #"..myArawdGoods); 

elseif (myAwardType==4) then -- script viet hoa By http://tranhba.com  n�u nh� t��ng th��ng ch�nh l� l�n n�a ng�u nhi�n m�t l�n c� h�i 

myAwardChange = " l�n n�a n�a l�a ch�n m�t l�n " 
myAwardArry[myAwardArryIndex] = {4,0,0,0,0,0,0,0,myAwardExp} 
			myAwardArryIndex = myAwardArryIndex + 1

print(" l�y ���c m�t c� h�i l�a ch�n ��ch t��ng th��ng "); 

elseif (myAwardType==5) then -- script viet hoa By http://tranhba.com  n�u nh� t��ng th��ng ch�nh l� m�t l�n h�y b� nhi�m v� c� h�i 

myAwardChange = " m�t l�n c� th� h�y b� nhi�m v� c� h�i " 
myAwardArry[myAwardArryIndex] = {5,0,0,0,0,0,0,0,myAwardExp} 
			myAwardArryIndex = myAwardArryIndex + 1	

print(" l�y ���c m�t l�n h�y b� c� h�i t��ng th��ng "); 

end 
end 

SetRandSeed(_nSeed) 
-- script viet hoa By http://tranhba.com  tr� v� �� c�u t�o t�t t��ng th��ng ��m t� 
return myAwardArry 

end 


-- script viet hoa By http://tranhba.com  t� h�m s� , c�n c� t��ng th��ng li�n c�n th�a l�i lo�i h�nh l�y ra t��ng th��ng 
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
myAwardRate[i] = 0 -- script viet hoa By http://tranhba.com  � to�n c�c thay ��i l��ng TL_MainAwardRate trung gi�m �i m�t tr� gi� 
return i,myAwardRate 
end 
end 

print ("Ch�n v�n ch�n l�y nhi�m v� t��ng th��ng lo�i h�nh l�c b� l�i #"); 

end 


-- script viet hoa By http://tranhba.com  s�u t�m t��ng th��ng li�t bi�u , l�y ���c t��ng �ng t��ng th��ng 
-- script viet hoa By http://tranhba.com  myAwardType# t��ng th��ng ��ch lo�i h�nh 
-- script viet hoa By http://tranhba.com  1# nhi�m v� c�n b�n t��ng th��ng 2# nhi�m v� li�n ho�n th�nh t��ng th��ng 3: nhi�m v� ho�n ho�n th�nh t��ng th��ng 
function GivePlayerAward_Goods(myAwardType) 

local myTaskValue1,myTaskValue2 -- script viet hoa By http://tranhba.com  t� nhi�m v� bi�u c�ch trong h�c l�y nhi�m v� t��ng th��ng gi� tr� 
local myLinks,myTimes -- script viet hoa By http://tranhba.com  li�n t�c ho�n th�nh s� l�n c�ng li�n ��m 
local myMainValue -- script viet hoa By http://tranhba.com  tr�i qua th�m ng�i tr� gi� t�nh to�n sau ��ch nhi�m v� t��ng th��ng gi� tr� 
local myTaskType = GetPlayerTaskType() 
local myAwardTextID 

local myAwardTable 

local FinalAward -- script viet hoa By http://tranhba.com  cu�i c�ng tr� v� ��ch t��ng th��ng 

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

-- script viet hoa By http://tranhba.com  tr�i qua th�m ng�i tr� gi� t�nh to�n sau ��ch nhi�m v� t��ng th��ng gi� tr� 
	myMainValue = myTaskValue1 + (myTaskValue2 * (1+(myLinks+myTimes)*0.1))

myAwardTable = AssignValue_AwardRate(Task_AwardBasic,myMainValue) 

FinalAward = TabFile_GetCell(myAwardTextID,GetAward(myAwardTable),"Name") 

-- script viet hoa By http://tranhba.com  print (" l�y ���c li�u "..myTaskTextID.." nhi�m v� lo�i h�nh trung ��ch "..FinalAward.." t��ng th��ng ") 

return GetAward(myAwardTable) -- script viet hoa By http://tranhba.com  tr� v� t��ng th��ng ch� � ���c ��m 

end 


-- script viet hoa By http://tranhba.com  � �� t�o th�nh quy�n n�ng li�t bi�u ��ch t��ng th��ng trung ch�n l�a ra m�t t��ng th��ng , tr� v� tr� gi� l� t��ng th��ng ch� � bi�u c�ch ���c ��m 
function GetAward(myAwardVariable) 

local i,j,k = 0,0,0 
local myMainRate = 0 -- script viet hoa By http://tranhba.com  t�ng ��ch t��ng th��ng quy�n n�ng 

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


-- script viet hoa By http://tranhba.com  t� h�m s� , d�ng �� x�c ��nh tr��c m�t nh� ch�i s� nh�n ���c ��ch nhi�m v� c� th� l� lo�i n�o lo�i h�nh nhi�m v� 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� l� 1~6 , n�u v� 0 l� nh� ch�i c�n kh�ng c� x�c ph�t nhi�m v� li�n 
function GetPlayerTaskType() 

local myTaskType 

-- script viet hoa By http://tranhba.com  myTaskType = strsub(format("%d",GetTask(1021),1,1)) 
myTaskType = GetTask(1021) 

return myTaskType 

end 


-- script viet hoa By http://tranhba.com  t� h�m s� , d�ng �� thi�t nh�t ��nh tr��c nh� ch�i s� nh�n ���c ��ch nhi�m v� c� th� l� lo�i n�o lo�i h�nh nhi�m v� 
function SetPlayerTaskTpye(myTaskType) 
SetTask(1021,myTaskType) 
end 


-- script viet hoa By http://tranhba.com  t� h�m s� , d�ng �� l�y ���c nh� ch�i ��ch gi�i t�nh , tr�c ti�p tr� v� t� ph� chu�i 
function GetPlayerSex() 
local mySex -- script viet hoa By http://tranhba.com  d�ng �� bi�u hi�n nh�n v�t gi�i t�nh ��ch t� ph� 

if (GetSex() == 0) then 
mySex = " c�ng t� " 
else 
mySex = " n� hi�p " 
end 

return mySex 
end 


-- script viet hoa By http://tranhba.com  t� h�m s� , d�ng �� ghi ch�p nh� ch�i nhi�m v� tr��c m�t s� c� th� ��i �ng bi�u c�ch ���c ��m 
function SaveTaskTableCol(myTaskCol) 
SetTask(1030,myTaskCol) 
end 


-- script viet hoa By http://tranhba.com  t� h�m s� , d�ng �� h�c l�y nh� ch�i nhi�m v� tr��c m�t s� ��i �ng c� th� bi�u c�ch ���c ��m 
function GetTaskTableCol() 
return GetTask(1030) 
end 


-- script viet hoa By http://tranhba.com  t� h�m s� , ki�m tr�c nhi�m v� tr�ng th�i 
-- script viet hoa By http://tranhba.com  1# tr��c m�t ti�n h�nh ��ch s� l�n 
-- script viet hoa By http://tranhba.com  2# tr��c m�t ti�n h�nh ��ch li�n ��m 
-- script viet hoa By http://tranhba.com  3# tr��c m�t ti�n h�nh ��ch ho�n ��m 
-- script viet hoa By http://tranhba.com  4# c�n th�a l�i h�y b� ��ch s� l�n 
-- script viet hoa By http://tranhba.com  5# nh� ch�i tr��c m�t s� nh�n ��ch nhi�m v� s� ch�a ��ng � 1021 th��ng 
-- script viet hoa By http://tranhba.com  6# nh� ch�i � m�i m�t v�ng ��ch n�n li�n trung �� l�m m�y l�n , l�n nh�t v� 4 
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


-- script viet hoa By http://tranhba.com  t� h�m s� , thi�t tr� nhi�m v� tr�ng th�i 
-- script viet hoa By http://tranhba.com  1# tr��c m�t ti�n h�nh ��ch s� l�n 
-- script viet hoa By http://tranhba.com  2# tr��c m�t ti�n h�nh ��ch li�n ��m 
-- script viet hoa By http://tranhba.com  3# tr��c m�t ti�n h�nh ��ch ho�n ��m 
-- script viet hoa By http://tranhba.com  4# c�n th�a l�i h�y b� ��ch s� l�n 
-- script viet hoa By http://tranhba.com  5# nh� ch�i tr��c m�t s� nh�n ��ch nhi�m v� s� ch�a ��ng � 1021 th��ng 
-- script viet hoa By http://tranhba.com  6# nh� ch�i � m�i m�t v�ng ��ch n�n li�n trung �� l�m m�y l�n , l�n nh�t v� 4 
function SetTaskState(myTaskState,myTaskValue) 

local n 

if ( myTaskState <= 4) then 
n = GetTask(1020) 
SetTask(1020,SetByte(n,myTaskState,myTaskValue)) 
elseif ( myTaskState == 5) then -- script viet hoa By http://tranhba.com  n�u nh� l� 5 l�i c�a c�n l�i l� ghi ch�p nh� ch�i tr��c m�t s� nh�n ��ch nhi�m v� s� � 1021 th��ng 
SetTask(1021,myTaskValue) 
elseif ( myTaskState == 6) then 
SetTask(1035,myTaskValue) 
end 

end 


-- script viet hoa By http://tranhba.com  t� h�m s� , thi�t tr� nhi�m v� tr��c m�t ��ch ti�n tr�nh tr�ng th�i , 1#2#3 
function SetTaskCourse(myTaskCourse) 
SetTask(1028,myTaskCourse) 
end 


-- script viet hoa By http://tranhba.com  t� h�m s� , l�y ���c nhi�m v� tr��c m�t ��ch ti�n tr�nh tr�ng th�i , 1#2#3 
function GetTaskCourse() 
return GetTask(1028) 
end 



-- script viet hoa By http://tranhba.com  ////////////////////////////////////////////////////////////// 
-- script viet hoa By http://tranhba.com  // h�c bi�u c�ng nhi�m v� tr� s� x� l� // 
-- script viet hoa By http://tranhba.com ////////////////////////////////////////////////////////////// 

-- script viet hoa By http://tranhba.com  s�u t�m c�p b�c t��ng ��i �ng nhi�m v� bi�u , x�c ��nh nh� ch�i tr��c m�t ��ch nhi�m v� li�n �� nh�t ��ng c�p l� thu�c v� c�p n�o 
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


-- script viet hoa By http://tranhba.com  s�u t�m nhi�m v� li�n t�ng bi�u , l�y ���c t��ng �ng c�p b�c ��ch ng�u nhi�n lo�i h�nh nhi�m v� 
-- script viet hoa By http://tranhba.com  truy�n v�o tham s� myTaskLevel v� nhi�m v� li�n ��ch c�p b�c 1~20 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� l� 1~6 1# v�t ph�m mua 2# v�t ph�m t�m ki�m 3# v�t ph�m bi�u di�n 4# b�n �� thu t�p 5# tr� s� th�ng c�p 6# n�i s�ng x� t�c 
function GetTaskType(myTaskLevel) 

local i,j,k = 0,0,0 
local myMainRate = 0 -- script viet hoa By http://tranhba.com  t�t c� nhi�m v� lo�i h�nh � m�t c�i c�p b�c d�m t�ng so t� s� 
local myTaskType -- script viet hoa By http://tranhba.com  tr� v� ��ch nhi�m v� lo�i h�nh 

print("mylevel: "..myTaskLevel) 

for i = 1,getn(Task_MainLevelRate[myTaskLevel]) do 
		myMainRate = myMainRate + Task_MainLevelRate[myTaskLevel][i]
end 

print ("Nhi�m v� lo�i h�nh quy�n n�ng t�ng s� # "..myMainRate) 


-- script viet hoa By http://tranhba.com  c�n c� quy�n n�ng c�ng th�c cu�i c�ng ng�u nhi�n t�nh to�n ra nhi�m v� lo�i h�nh 
j = C_Random(1,myMainRate) 

print ("Nhi�m v� lo�i h�nh quy�n n�ng ng�u nhi�n ��m # "..j) 

for i = 1,getn(Task_MainLevelRate[myTaskLevel]) do 
		k = k + Task_MainLevelRate[myTaskLevel][i]
if ( j < k) then 
print ("Tu�n ho�n k�t th�c , l�a ch�n nhi�m v� lo�i h�nh #"..i) 
return i 
end 
print ("Tr��c m�t tu�n ho�n l�c kh�ng c� l�a ch�n ��n nhi�m v� lo�i h�nh . nhi�m v� quy�n n�ng ��ch m�t m�i th�m t�ng tr� gi� l� # "..k) 
end 

-- script viet hoa By http://tranhba.com  d� th��ng x� l� , n�u nh� nh� ch�i c�ng ch�n kh�ng t�i nhi�m v� lo�i h�nh tho�i li�n ch�n 4 

print("Ch�n v�n �ang ch�n tr�ch nhi�m v� lo�i h�nh th�i �i�m b� l�i #"); 

return 0 

end 


-- script viet hoa By http://tranhba.com  s�u t�m nhi�m v� li�n , l�y ���c t��ng �ng nhi�m v� 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� l� n�n nhi�m v� � bi�u trung ��ch ���c s� 
function GetTaskLink(myTaskType,myTaskLevel) 

local myTaskCol -- script viet hoa By http://tranhba.com  ghi ch�p nhi�m v� ���c s� 

if ( myTaskType == 1 ) then -- script viet hoa By http://tranhba.com  n�u nh� l� mua v�t ph�m ��ch nhi�m v� 
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







-- script viet hoa By http://tranhba.com  c�n c� nhi�m v� li�t bi�u d�m quy�n n�ng ng�u nhi�n l�a ra nhi�m v� , tr� v� tr� gi� l� t��ng �ng nhi�m v� bi�u c�ch ��ch ���c s� 
function SelectTask(myTaskTable,myTaskLevel) 

local i,j,k = 0,0,0 
local myMainRate = 0 -- script viet hoa By http://tranhba.com  nhi�m v� t�ng quy�n n�ng 

print (" l�a ch�n nhi�m v� c�p b�c : "..myTaskLevel.." ") 

print ("Nhi�m v� c�p b�c trong t�ng c�ng c� "..getn(myTaskTable[myTaskLevel]).." c� nhi�m v� ") 

for i=1,getn(myTaskTable[myTaskLevel]) do 
		myMainRate = myMainRate + myTaskTable[myTaskLevel][i][2]
end 

print (" l�a ch�n ��n ��ch c� th� nhi�m v� t�ng quy�n n�ng #"..myMainRate) 

-- script viet hoa By http://tranhba.com  c�n c� quy�n n�ng c�ng th�c cu�i c�ng ng�u nhi�n t�nh to�n ra c� th� nhi�m v� 
j = C_Random(1,myMainRate) 

-- script viet hoa By http://tranhba.com  print ("Nhi�m v� t�ng quy�n n�ng : "..myMainRate) 
-- script viet hoa By http://tranhba.com  print ("Ng�u nhi�n ��n ��ch nhi�m v� quy�n n�ng : "..j) 

for i=1,getn(myTaskTable[myTaskLevel]) do 

		k = k + myTaskTable[myTaskLevel][i][2]

if ( j < k ) then 
-- script viet hoa By http://tranhba.com  print (" l�a ch�n ��n bi�u c�ch trung ��ch th� "..myTaskTable[myTaskLevel][i][1].." ���c . ") 
return myTaskTable[myTaskLevel][i][1] 
end 

end 

-- script viet hoa By http://tranhba.com  d� th��ng x� l� , n�u nh� nh� ch�i ch�n kh�ng ���c l� tr� v� 0 
print ("Ch�n v�n �ang ch�n tr�ch c� th� nhi�m v� l�c b� l�i #") 
return 0 

end 



-- script viet hoa By http://tranhba.com  t� h�m s� , ph�n tr� v� m�t c�i nhi�m v� lo�i h�nh s� ��i �ng bi�u c�ch ��ch t� ph� ti�u ch� 
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


-- script viet hoa By http://tranhba.com  t�nh to�n m�t c�i nhi�m v� ��ch quy�n n�ng � k� tr��c m�t c�p b�c trung chi�m �o�t ��ch ph�n tr�m so 
-- script viet hoa By http://tranhba.com  myTableName truy�n v�o ��ch mu�n h�c l�y bi�u c�ch ��ch t� ph� 
-- script viet hoa By http://tranhba.com  myTaskRate nhi�m v� tr��c m�t ��ch quy�n n�ng 
-- script viet hoa By http://tranhba.com  myTableCol s� h�c bi�u ��ch nh�m ( t� ph� ho�c l� con s� ) 
function CountTaskRate(myTableName,myTaskRate,myTableCol) 

local i 
local myTotalRate = 0 
local myReadRate 
local myPercent 

local myTableRow = TabFile_GetRowCount(myTableName) -- script viet hoa By http://tranhba.com  l�y ���c TABLE v�n ki�n ��ch t�ng ���c ��m 

for i = 3,myTableRow-1 do 
myReadRate = tonumber(TabFile_GetCell(myTableName,myTableRow,myTableCol)) 
		myTotalRate = myTotalRate + myReadRate
		i = i + 1
end 

myPercent = (myTaskRate / myTotalRate) * 100 

return myPercent 

end 



-- script viet hoa By http://tranhba.com  t�nh to�n t� c�u c�p b�c th�ng c�p ��n nh� ch�i tr��c m�t ��ch c�p b�c c�n bao nhi�u kinh nghi�m tr� gi� 
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



-- script viet hoa By http://tranhba.com  t� h�m s� , l�y ���c nhi�m v� t��ng �ng n�i r� , tr� v� m�t �o�n t� ph� chu�i 
function GetTaskInfo() 

local myTaskMainInfo,myTaskOrder,myTaskInfo1,myTaskInfo2,myTaskInfo3 

local myTaskType = GetPlayerTaskType() 

if (myTaskType == 1) then 

print(" l�y ���c ��ch ���c s� #"..GetTaskTableCol()) 

-- script viet hoa By http://tranhba.com  v�t ph�m t�n 
myTaskOrder = TabFile_GetCell(TL_BUYGOODS,GetTaskTableCol(),"TaskInfo1") 

print("Nhi�m v� n�i r� #"..TabFile_GetCell(TL_BUYGOODS,GetTaskTableCol(),"TaskInfo1")) 

-- script viet hoa By http://tranhba.com  m�c ��ch ��a t�n 
myTaskInfo1 = TabFile_GetCell(TL_BUYGOODS,GetTaskTableCol(),"TaskInfo") 

myTaskMainInfo = format("%s%s%s%s%s","�i ",myTaskInfo1,"Ch� mua ",myTaskOrder,"V�i t�i ta . "); 

elseif (myTaskType == 2) then 

-- script viet hoa By http://tranhba.com  ma ph�p thu�c t�nh 
myTaskOrder = TabFile_GetCell(TL_FINDGOODS,GetTaskTableCol(),"MagicCnName") 
-- script viet hoa By http://tranhba.com  c� th� v� kh� lo�i kh�c 
myTaskInfo1 = TabFile_GetCell(TL_FINDGOODS,GetTaskTableCol(),"TaskInfo") 
-- script viet hoa By http://tranhba.com  nh� nh�t ma ph�p thu�c t�nh 
myTaskInfo2 = TabFile_GetCell(TL_FINDGOODS,GetTaskTableCol(),"MinValue") 
-- script viet hoa By http://tranhba.com  l�n nh�t ma ph�p thu�c t�nh 
myTaskInfo3 = TabFile_GetCell(TL_FINDGOODS,GetTaskTableCol(),"MaxValue") 

if (myTaskOrder=="n") then 

myTaskMainInfo = format("%s%s%s","�i t�m <color=red>",myTaskInfo1,"<color> v�i t�i ta . "); 
else 
myTaskMainInfo = format("%s%s%s%s%s%s%s","�i t�m <color=red>",myTaskOrder,"<color> �t nh�t ",myTaskInfo2,"��ch ",myTaskInfo1,"V�i t�i ta . "); 
end 

elseif (myTaskType == 3) then 

-- script viet hoa By http://tranhba.com  ma ph�p thu�c t�nh Trung v�n t�n 
myTaskOrder = TabFile_GetCell(TL_SHOWGOODS,GetTaskTableCol(),"MagicCnName") 
-- script viet hoa By http://tranhba.com  ma ph�p thu�c t�nh ��ch nh� nh�t tr� gi� 
myTaskInfo1 = TabFile_GetCell(TL_SHOWGOODS,GetTaskTableCol(),"MinValue") 
-- script viet hoa By http://tranhba.com  ma ph�p thu�c t�nh ��ch l�n nh�t tr� gi� 
myTaskInfo2 = TabFile_GetCell(TL_SHOWGOODS,GetTaskTableCol(),"MaxValue") 

myTaskMainInfo = format("%s%s%s%s%s%s%s","�i t�m m�t d�ng <color=red>",myTaskOrder,"<color> �t nh�t v� ",myTaskInfo1,"Cao nh�t v� ",myTaskInfo2,"��ch trang b� ho�c l� qu�ng th�ch cho ta . "); 

elseif (myTaskType == 4) then 

-- script viet hoa By http://tranhba.com  b�n �� ��ch t�n 
myTaskOrder = TabFile_GetCell(TL_FINDMAPS,GetTaskTableCol(),"TaskInfo1") 

-- script viet hoa By http://tranhba.com  mu�n ��ch b�n �� s� l��ng 
myTaskInfo1 = TabFile_GetCell(TL_FINDMAPS,GetTaskTableCol(),"Num") 

-- script viet hoa By http://tranhba.com  b�n �� ��ch lo�i h�nh 
myTaskInfo2 = TabFile_GetCell(TL_FINDMAPS,GetTaskTableCol(),"MapType") 

if (tonumber(myTaskInfo2) == 1) then 
myTaskInfo3 = " b�n �� ch� " 
else 
myTaskInfo3 = " b� ch� " 
end 

myTaskMainInfo = format("%s%s%s%s%s%s%s%s","��n <color=red>",myTaskOrder,"<color> ch� cho ta t�m ",myTaskInfo1,"Cu�n ",myTaskOrder,myTaskInfo3,"T�i . ") 

elseif (myTaskType == 5) then 

-- script viet hoa By http://tranhba.com  c�n t�ng l�n tr� s� lo�i h�nh 
myTaskOrder = TabFile_GetCell(TL_UPGROUND,GetTaskTableCol(),"NumericType") 

-- script viet hoa By http://tranhba.com  c�n t�ng l�n tr� s� t�ng s� 
myTaskInfo1 = TabFile_GetCell(TL_UPGROUND,GetTaskTableCol(),"NumericValue") 

if (tonumber(myTaskOrder) == 1) then 
myTaskInfo2 = " c�p c�p b�c " 
elseif (tonumber(myTaskOrder) == 2) then 
myTaskInfo2 = " ch�t kinh nghi�m tr� gi� " 
elseif (tonumber(myTaskOrder) == 3) then 
myTaskInfo2 = " �i�m danh v�ng " 
elseif (tonumber(myTaskOrder) == 4) then 
myTaskInfo2 = " �i�m ph�c duy�n " 
elseif (tonumber(myTaskOrder) == 5) then 
myTaskInfo2 = " �i�m PK tr� gi� " 
end 

myTaskMainInfo = format("%s%s%s%s","�i t�ng l�n ",myTaskInfo1," ",myTaskInfo2) 

elseif (myTaskType == 6) then 
-- script viet hoa By http://tranhba.com  c�n b�t ���c n�i s�ng x� t�c �� m�nh v�n 
myTaskOrder = TabFile_GetCell(TL_WORLDMAPS,GetTaskTableCol(),"Num") 

myTaskMainInfo = format("%s%s%s","�i cho ta thu t�p ",myTaskOrder,"T� n�i s�ng x� t�c �� ��ch m�nh v�n t�i . ") 
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

for i = 1,20 do -- script viet hoa By http://tranhba.com  t� �� nh�t c�p ��n th� hai m��i c�p ��ch l�ch l�n tu�n ho�n 
for j = 2,myTableRow do 
myColText = format("%s%s","TaskRate",i) 
myReadRate = tonumber(TabFile_GetCell(myTaskTextID,j,myColText)) 

if (myReadRate ~= nil) then -- script viet hoa By http://tranhba.com  n�u nh� � nhi�m v� li�n c�p b�c quy�n n�ng b�n trong c� m�y tr� gi� l�i c�a , l� thu�c v� c�i n�y c�p b�c 

					myTaskIndex[i] = myTaskIndex[i] + 1
myTaskVariable[i][myTaskIndex[i]] = {j,myReadRate} 
end 
end 
-- script viet hoa By http://tranhba.com  print ("The "..myTaskTextID.." 's Task: "..i.." have: "..getn(myTaskVariable[i]).." members."); 
end 

-- script viet hoa By http://tranhba.com  print (format("%s%s%s",myTaskTextID," : ","finshed!!!")) 

return myTaskVariable 

end 


-- script viet hoa By http://tranhba.com  t�t c� nhi�m v� lo�i h�nh � m�i c�p b�c trung so t� s� ��ch t�c d�n 
function AssignValue_TaskRate(myTaskVariable,myTaskTextID) 

local i,j,k 

myTaskVariable = {} 
myTaskVariable[1] = {} 

local myTableRow = TabFile_GetRowCount(myTaskTextID) -- script viet hoa By http://tranhba.com  l�y ���c TABLE v�n ki�n ��ch t�ng ���c ��m 
local myTableCol -- script viet hoa By http://tranhba.com  th�ng nh�t t� ph� chu�i , c�u t�o bi�u ��u ti�u ch� #"level20" 
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


-- script viet hoa By http://tranhba.com  c�u t�o t��ng th��ng n�i t�n bi�u c�ch 
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
print("T��ng th��ng lo�i h�nh #"..myTaskTextID.." nhi�m v� t��ng th��ng ���c s� #"..j.." t��ng th��ng gi� tr� #"..myTaskVariable[i][2]) 
end 

return myTaskVariable 

end 


-- script viet hoa By http://tranhba.com  th�nh l�p t��ng th��ng quy�n n�ng t�c d�n bi�u 
-- script viet hoa By http://tranhba.com  truy�n v�o tham s� #myTaskVariable l� nguy�n th�y ��ch t��ng th��ng gi� tr� li�t bi�u , myAwardValue l� t�nh to�n sau ��ch v�t ph�m t�ng gi� tr� l��ng 
-- script viet hoa By http://tranhba.com  tr� v� tr� gi� l� m�i t��ng th��ng ��ch bi�u c�ch v�n ki�n ���c s� t�c d�n thay v� quy�n n�ng 
function AssignValue_AwardRate(myAwardVariable,myAwardValue) 

local i,j = 0,0 
local myAwardRate = {} -- script viet hoa By http://tranhba.com  chuy�n ��i sau ��ch quy�n n�ng bi�u 
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
