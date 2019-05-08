-- script viet hoa By http://tranhba.com  tinh luy�n th�ch h� th�ng wangbin 2010-4-7 
Include("\\script\\lib\\common.lua")
Include("\\script\\lib\\player.lua")
Include("\\script\\global\\playerlist.lua")

MAXCOUNT_EVERYDAY = 30 -- script viet hoa By http://tranhba.com  m�i ng�y tu luy�n linh l� ��ch s� l�n h�n ch� 
MIN_LEVEL = 90 
TIMEOUT_REFINING = 30 -- script viet hoa By http://tranhba.com  luy�n ch� m�t h�n nguy�n linh l� c�n th�i gian # ph�t # 
TOTALENERGY_LIMIT_PERMONTH = 8000000 -- script viet hoa By http://tranhba.com  m�i th�ng nhi�u nh�t ch� c� th� gia t�ng 80000 ��ch tinh luy�n th�ch 
POTION_ENERGY = 100 -- script viet hoa By http://tranhba.com  s� d�ng h�n nguy�n linh l� nh�ng ��t ���c ��ch tinh luy�n th�ch tr� gi� 
ITEM_YUGUAN = {6, 1, 2311, 1, 0, 0} -- script viet hoa By http://tranhba.com  ng�c lon 
ITEM_HUNYUANLINGLU = {6, 1, 2312, 1, 0, 0} -- script viet hoa By http://tranhba.com  h�n nguy�n linh l� 
TASK_HUNYUANLINGLU_STARTDATE	= 2673					-- script viet hoa By http://tranhba.com  �������������� * 1000000 + ��Ԫ��¶��ʼ�������ڣ�YYMMDD��
TASK_HUNYUANLINGLU_REFINING		= 2674					-- script viet hoa By http://tranhba.com  ��Ԫ��¶����������� * 100000 + �Ƿ��������� * 10000 + ��Ԫ��¶�ۼ�����ʱ�䣨���ӣ�
TASK_HUNYUANLINGLU_USEDATE = 2675 -- script viet hoa By http://tranhba.com  l�n tr��c s� d�ng h�n nguy�n linh l� ��ch nh�t k� #YYYYMMDD# 
TASK_HUNYUANLINGLU_TOTALENERGY = 2676 -- script viet hoa By http://tranhba.com  tr��c m�t s� d�ng h�n nguy�n linh l� t�ng l�n bao nhi�u tinh luy�n th�ch 
TASK_REFININGCOUNT = 2793 -- script viet hoa By http://tranhba.com  ��i tu luy�n h�n nguy�n linh l� s� l��ng 

HunyuanPotion = {} 

function HunyuanPotion:New(player) 
local tb = clone(HunyuanPotion) 
tb.m_Player = player 
return tb 
end 

function HunyuanPotion:EncodeDateTask(count, date) 
	local task = count * 1000000 + date
self.m_Player:SetTask(TASK_HUNYUANLINGLU_STARTDATE, task) 
end 

function HunyuanPotion:DecodeDateTask() 
local task = self.m_Player:GetTask(TASK_HUNYUANLINGLU_STARTDATE) 
local count = floor(task / 1000000) 
local time = mod(task, 1000000) 
return count, time 
end 

function HunyuanPotion:EncodeRefiningTask(count, flag, time) 
	local task = count * 100000 + flag * 10000 + time
self.m_Player:SetTask(TASK_HUNYUANLINGLU_REFINING, task) 
end 

function HunyuanPotion:DecodeRefiningTask() 
local task = self.m_Player:GetTask(TASK_HUNYUANLINGLU_REFINING) 
local count = floor(task / 100000) 
local left = mod(task, 100000) 
local flag = floor(left / 10000) 
local time = mod(left, 10000) 
return count, flag, time 
end 

-- script viet hoa By http://tranhba.com  tu�n tra c� hay kh�ng �ang tu luy�n 
function HunyuanPotion:GetRefiningFlag() 
local _, flag, _ = self:DecodeRefiningTask() 
return flag 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� c� hay kh�ng �ang tu luy�n 
function HunyuanPotion:SetRefiningFlag(flag) 
local count, _, time = self:DecodeRefiningTask() 
self:EncodeRefiningTask(count, flag, time) 
end 

-- script viet hoa By http://tranhba.com  tu�n tra h�m nay �� tu luy�n s� l�n 
function HunyuanPotion:GetCurrentDateRefineCount(curr_date) 
if (not curr_date) then 
curr_date = tonumber(GetLocalDate("%y%m%d")) 
end 
local count, date = self:DecodeDateTask() 
if (curr_date ~= date) then 
return 0 
else 
return count 
end 
end 

-- script viet hoa By http://tranhba.com  thanh tr� h�m nay �� tu luy�n s� l�n 
function HunyuanPotion:ClearCurrentDateRefineCount() 
local _, date = self:DecodeDateTask() 
self:EncodeDateTask(0, date) 
end 

-- script viet hoa By http://tranhba.com  gia t�ng h�m nay �� tu luy�n s� l�n 
function HunyuanPotion:AddCurrentDateRefineCount(curr_date) 
if (not curr_date) then 
curr_date = tonumber(GetLocalDate("%y%m%d")) 
end 
local count, date = self:DecodeDateTask() 
if (curr_date ~= date) then 
date = curr_date 
count = 1 
else 
		count = count + 1
end 
self:EncodeDateTask(count, date) 
end 

-- script viet hoa By http://tranhba.com  l�y ���c b�t ��u tu luy�n nh�t k� 
function HunyuanPotion:GetRefineDate() 
local count, date = self:DecodeDateTask() 
return date 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� b�t ��u tu luy�n nh�t k� 
function HunyuanPotion:SetRefineDate(date) 
local count, _ = self:DecodeDateTask() 
self:EncodeDateTask(count, date) 
end 

-- script viet hoa By http://tranhba.com  l�y ���c �� tu luy�n xong th�nh linh l� s� l��ng 
function HunyuanPotion:GetFinishedCount() 
local count, flag, time = self:DecodeRefiningTask() 
return count 
end 

-- script viet hoa By http://tranhba.com  gia t�ng �� tu luy�n xong th�nh linh l� s� l��ng 
function HunyuanPotion:AddFinishedCount() 
local count, flag, time = self:DecodeRefiningTask() 
	self:EncodeRefiningTask(count + 1, flag, time)
end 

-- script viet hoa By http://tranhba.com  thanh tr� �� tu luy�n xong th�nh linh l� s� l��ng 
function HunyuanPotion:ClearFinishedCount() 
local count, flag, time = self:DecodeRefiningTask() 
self:EncodeRefiningTask(0, flag, time) 
end 

-- script viet hoa By http://tranhba.com  gi�m b�t �� tu luy�n xong th�nh linh l� s� l��ng 
function HunyuanPotion:ReduceFinishedCount(count) 
local count_now, flag, time = self:DecodeRefiningTask() 
if (count_now <= count) then 
count_now = 0 
else 
count_now = count_now - count 
end 
self:EncodeRefiningTask(count_now, flag, time) 
end 

-- script viet hoa By http://tranhba.com  tu�n tra th�i gian tu luy�n # ph�t # 
function HunyuanPotion:GetRefiningTime() 
local _, _, time = self:DecodeRefiningTask() 
return time 
end 

-- script viet hoa By http://tranhba.com  gia t�ng th�i gian tu luy�n # ph�t # 
function HunyuanPotion:AddRefiningTime(minutes) 
local count, flag, time = self:DecodeRefiningTask() 
	time = time + minutes
self:EncodeRefiningTask(count, flag, time) 
local msg = format("��i hi�p ��ch h�n nguy�n linh l� �� luy�n ���c %d ph�t .", time) 
self.m_Player:Msg2Player(msg) 
end 

-- script viet hoa By http://tranhba.com  thanh tr� th�i gian tu luy�n # ph�t # 
function HunyuanPotion:ClearRefiningTime() 
local count, flag, time = self:DecodeRefiningTask() 
if (time > 0) then 
self:EncodeRefiningTask(count, flag, 0) 
end 
end 

-- script viet hoa By http://tranhba.com  ti�u hao ng�c lon 
function HunyuanPotion:ConsumeYuguan(count) 
if (count <= 0 or 
self.m_Player:CalcEquiproomItemCount( 
ITEM_YUGUAN[1], 
ITEM_YUGUAN[2], 
ITEM_YUGUAN[3], 
ITEM_YUGUAN[4]) < count) then 
return 0 
end 
local result = self.m_Player:ConsumeEquiproomItem( 
count, 
ITEM_YUGUAN[1], 
ITEM_YUGUAN[2], 
ITEM_YUGUAN[3], 
ITEM_YUGUAN[4]) 
if (result == 1) then 
return 1 
else 
return 0 
end 
end 

-- script viet hoa By http://tranhba.com  s� d�ng h�n nguy�n linh l� 
-- script viet hoa By http://tranhba.com  gia t�ng tinh luy�n th�ch ��ch tham s� by wangjingjun 
function HunyuanPotion:Use(nEnergy) 
-- script viet hoa By http://tranhba.com  n�u nEnergy v� v� �ch , l� d�ng cam ch�u ��ch h�n nguy�n linh l� ��ch tr� gi� , n�u kh�ng v� m�i gia t�ng ��ch tr� gi� 
nEnergy = nEnergy or POTION_ENERGY 
local player = self.m_Player 
local old_energy = player:GetEnergy() 
local nToday = GetLocalDate("%Y%m%d") 
local nLastDate = player:GetTask(TASK_HUNYUANLINGLU_USEDATE) 
local nCurAddEnergy = player:GetTask(TASK_HUNYUANLINGLU_TOTALENERGY) 
local nCurMonth = floor(nToday/100) 
local nLastMonth = floor(nLastDate/100) 

if (nCurMonth ~= nLastMonth) then 
nLastDate = nToday; 
nCurAddEnergy = 0; 
end 

	if (old_energy + nEnergy > 2000000000) then
player:Say("# tinh luy�n th�ch c�a h�ng ��t t�i �i�m cao nh�t , kh�ng th� ti�p t�c s� d�ng h�n nguy�n linh l� ") 
return 0 
	elseif (nCurAddEnergy + nEnergy > TOTALENERGY_LIMIT_PERMONTH) then
player:Say(format("M�i ng��i m�i th�ng nhi�u nh�t ch� c� th� %d tinh luy�n th�ch ", TOTALENERGY_LIMIT_PERMONTH)) 
return 0 
elseif (self.m_Player:AddEnergy(nEnergy) ~= 1) then 
player:Say("Gia t�ng tinh luy�n th�ch �i�m th�t b�i .") 
return 0 
else 
		nCurAddEnergy = nCurAddEnergy + nEnergy
player:SetTask(TASK_HUNYUANLINGLU_USEDATE, nLastDate) 
player:SetTask(TASK_HUNYUANLINGLU_TOTALENERGY, nCurAddEnergy) 

local account = player:GetAccount() 
local name = player:GetName() 
local new_energy = player:GetEnergy() 
WriteLog(format("%s(%s) use hunyuanlinglu to add enery(%d=>%d) cur month energy (%d)", 
player:GetAccount(), 
player:GetName(), 
old_energy, 
self.m_Player:GetEnergy(), 
nCurAddEnergy)) 
player:Msg2Player(format("Gia t�ng %d tinh luy�n th�ch �i�m , n�n th�ng �� ��t ���c %d tinh luy�n th�ch .", nEnergy, nCurAddEnergy)) 
return 1 
end 
end 

JingliList = {m_List = {}} 

function JingliList:Add(index, item) 
self.m_List[index] = item 
end 

function JingliList:Del(index) 
self.m_List[index] = nil 
end 

function JingliList:GetCount() 
local count = 0 
for key, value in self.m_List do 
if (value) then 
			count = count + 1
end 
end 
return count 
end 

function JingliList:Find(index) 
return self.m_List[index] 
end 

function JingliList:OnTime(player, id) 
local jingli = self:Find(player) 
if (not jingli) then 
return 0 
else 
local result = jingli:OnTime() 
if (result == 0) then 
jingli:Destroy() 
return 0 
else 
return result, player 
end 
end 
end 

Jingli = {} 

function Jingli:New(player, potion) 
local tb = clone(Jingli) 
tb.m_Timeout = 18 * 60 
tb.m_Player = player 
if (not potion) then 
tb.m_Potion = HunyuanPotion:New(player) 
tb.m_Potion:AddCurrentDateRefineCount(nil) 
else 
tb.m_Potion = potion 
end 
tb.m_TimerId = AddTimer(18 * 60, "JingliList:OnTime", player.m_PlayerIndex) 
JingliList:Add(player.m_PlayerIndex, tb) 
tb.m_Potion:SetRefiningFlag(1) 
tb.m_OwnerName = player:GetName() 

player:Msg2Player("B�t ��u tu luy�n h�n nguy�n linh l� ") 
WriteLog(format("%s(%s) begin hunyunlnglu refining", 
player:GetAccount(), 
player:GetName())) 
return tb 
end 

function Jingli:Destroy() 
if (self.m_TimerId > 0) then 
DelTimer(self.m_TimerId) 
self.m_TimerId = 0 
JingliList:Del(self.m_Player.m_PlayerIndex) 
self.m_Player = nil 
self.m_OwnerName = "" 
end 
end 

function Jingli:GetTime() 
return self.m_Potion:GetRefiningTime() 
end 

function Jingli:ClearRefining() 
self.m_Potion:ClearRefiningTime() 
self.m_Potion:SetRefiningFlag(0) 
end 

function Jingli:OnTime() 
local player = self.m_Player 
local potion = self.m_Potion 
local name = player:GetName() 
if (self.m_OwnerName ~= name) then 
WriteLog(format("[ERROR JINGLI]owner chanage: %s => %s", self.m_OwnerName, name)) 
return 0 
end 
potion:AddRefiningTime(1) 
if (potion:GetRefiningTime() < TIMEOUT_REFINING) then 
return self.m_Timeout 
end 
self:Success() 
potion:ClearRefiningTime() 
local count = player:GetTask(TASK_REFININGCOUNT) 
if (count > 0) then 
-- script viet hoa By http://tranhba.com  ti�p t�c luy�n ch� ng��i/c�i k� ti�p h�n nguy�n linh l� 
player:SetTask(TASK_REFININGCOUNT, count - 1) 
potion:AddCurrentDateRefineCount(nil) 
return self.m_Timeout 
else 
-- script viet hoa By http://tranhba.com  k�t th�c luy�n ch� 
potion:SetRefiningFlag(0) 
player:SetTask(TASK_REFININGCOUNT, 0) 
return 0 
end 
end 

function Jingli:Success() 
local account = self.m_Player:GetAccount() 
local name = self.m_Player:GetName() 
local item = self.m_Player:AddItemIntoEquipmentBox( 
ITEM_HUNYUANLINGLU[1], 
ITEM_HUNYUANLINGLU[2], 
ITEM_HUNYUANLINGLU[3], 
ITEM_HUNYUANLINGLU[4], 
ITEM_HUNYUANLINGLU[5], 
ITEM_HUNYUANLINGLU[6]) 
if (item > 0) then 
WriteLog(format("%s(%s) refine hunyuanlinglu ok", account, name)) 
self.m_Player:Msg2Player("��i hi�p �� ch� t�o th�nh c�ng 1 c� h�n nguy�n linh l� ") 

Jiluhunyuan(1) 
else 
self.m_Potion:AddFinishedCount() 
WriteLog(format("%s(%s) add stored hunyuanlinglu(%d)", 
account, 
name, 
self.m_Potion:GetFinishedCount())) 
self.m_Player:Msg2Player("��i hi�p �� ch� t�o th�nh c�ng m�t h�n nguy�n linh l� , m�i ���c <color=red> hoa �n s� ��o <color> ho�c l� <color=red> b�y ��i th�nh th� <color> nh�n l�y .") 
end 
end 

-- script viet hoa By http://tranhba.com  NPC ��i tho�i nh�p kh�u 
function dlg_entrance(playerindex) 
local player = PlayerList:GetPlayer(playerindex) 
-- script viet hoa By http://tranhba.com  player:Say("N�y ch�c n�ng t�m kh�ng m� ra . ") 
JingliDlg:Main(player) 
end 

-- script viet hoa By http://tranhba.com  luy�n ch� h�n nguy�n linh l� 
function dlg_refine() 
local player = PlayerList:GetPlayer(PlayerIndex) 
return JingliDlg:Refine(player) 
end 

-- script viet hoa By http://tranhba.com  nh�n l�y h�n nguy�n linh l� 
function dlg_get() 
local player = PlayerList:GetPlayer(PlayerIndex) 
JingliDlg:Draw(player) 
end 

-- script viet hoa By http://tranhba.com  thi�t tr� tu luy�n s� l��ng 
function dlg_inputcount() 
local player = PlayerList:GetPlayer(PlayerIndex) 
local potion = HunyuanPotion:New(player) 
local count = JingliDlg:Check(player, potion, 0) 
if (count > 0) then 
player:AskClientForNumber( 
"callback_inputcount", 
1, 
count, 
" ng��i ngh� ch� t�o bao nhi�u c� ?") 
end 
end 

function callback_inputcount(count) 
if (count > 0) then 
local player = PlayerList:GetPlayer(PlayerIndex) 
local potion = HunyuanPotion:New(player) 
JingliDlg:Refine(player, potion, count) 
end 
end 

JingliDlg = {} 

function JingliDlg:Check(player, potion, count_input) 
if (player:GetLevel() < MIN_LEVEL) then 
local fmt = " ch� t�o h�n nguy�n linh l� c�n ��t t�i nh�t ��nh v� c�ng t�i ngh� , ��i hi�p %s mu�n luy�n ��n <color=red>%d<color> c�p m�i c� th� ��n c�i n�y nga " 
local msg = nil 
if (player:GetSex() == 1) then 
msg = format(fmt,"N� hi�p ", MIN_LEVEL) 
else 
msg = format(fmt,"Thi�u hi�p ", MIN_LEVEL) 
end 
player:Say(msg) 
return 0 
elseif (player:IsCharged() == 0) then 
player:Say("Ch� c� �� sung tr� gi� nh�n v�t m�i c� th� luy�n ch� h�n nguy�n linh l� ") 
return 0 
elseif (potion:GetFinishedCount() > 0) then 
player:Say("Xin/m�i nh�n l�y �� luy�n ch� t�t h�n nguy�n linh l� .") 
return 0 
end 
local count_day = potion:GetCurrentDateRefineCount(nil) -- script viet hoa By http://tranhba.com  ng�y �� �� tu luy�n s� l�n 
local count_cur = player:GetTask(TASK_REFININGCOUNT) -- script viet hoa By http://tranhba.com  li�n t�c tu luy�n s� l�n 
if (count_day >= MAXCOUNT_EVERYDAY) then 
player:Say( 
format("H�m nay c�c h� �� luy�n ch� qu� <color=red>%d<color> l�n , xin/m�i ng�y mai tr� l�i �i .", 
MAXCOUNT_EVERYDAY)) 
return 0 
end 
local count_ok = MAXCOUNT_EVERYDAY - count_day - count_cur 
if (count_ok <= 0) then 
player:Say("Tu luy�n s� l�n �� �� , xin/m�i ng�y mai tr� l�i luy�n ch� h�n nguy�n linh l� �i ?") 
return 0 
elseif (count_ok < count_input) then 
player:Say(format("H�m nay nhi�u nh�t ch� c� th� nhi�u h�n n�a luy�n %d h�n nguy�n linh l� , xin/m�i ��a v�o c�n luy�n ch� s� l��ng .", count_ok)) 
return 0 
else 
return count_ok 
end 
end 

function JingliDlg:Main(player) 
player:Say( 
" th� gian v�n v�t ��u c� thi�n ��a linh kh� , n�u nh� ng��i c� ng�c lon li�n c� th� ti�n h�nh nh�n l�y thu t�p , thu t�p ���c 30 ph�t sau , nh�n l�y c� th� ch� th�nh h�n nguy�n linh l� . s� d�ng linh l� sau , c� th� gia t�ng n�i l�c !? ", 
3, 
" b�t ��u luy�n h�n nguy�n linh l� /dlg_inputcount", 
" nh�n l�y �� ph�t h�n nguy�n linh l� ./dlg_get", 
" k�t th�c ��i tho�i /Cancel") 
end 

function JingliDlg:Refine(player, potion, count) 
if (count <= 0 or self:Check(player, potion, count) == 0) then 
return 0 
elseif (potion:ConsumeYuguan(count) ~= 1) then 
player:Say(format( 
" t�ch th�y kh� th�nh s�ng , ng��i c�n kh�ng c� <color=red>%d<color> ng�c lon , l�o phu c�ng th�c th� v� s�ch <enter><color=yellow>< ng�c lon c�ng � ��y k� tr�n c�c b�n ra , xin �i�m k�ch m�n �nh d��i g�c ph�i vi�n v� �ch c�ch ><color>", 
count)) 
return 0 
end 
if (potion:GetRefiningFlag() == 0) then 
Jingli:New(player) 
player:AddTask(TASK_REFININGCOUNT, count - 1) 
else 
player:AddTask(TASK_REFININGCOUNT, count) 
end 
WriteLog(format("%s(%s) start hunyuanlinglu refining, count(%d)", 
player:GetAccount(), 
player:GetName(), 
count)) 
player:Say(format("N�i n�y ng�c lon d�n c� b�a , ng��i nhanh l�n m�t ch�t �i thu t�p , sau �� <color=red>%d ph�t <color> c� th� ho�n th�nh !", TIMEOUT_REFINING)) 
return 1 
end 

function JingliDlg:Draw(player) 
local potion = HunyuanPotion:New(player) 
local count = potion:GetFinishedCount() 
if (count <= 0) then 
player:Say("Ng��i c�n kh�ng c� cho ta h�n nguy�n linh l� ") 
return 
end 
local item_count = 0 
for i = 1, count do 
local idx = player:AddItemIntoEquipmentBox( 
ITEM_HUNYUANLINGLU[1], 
ITEM_HUNYUANLINGLU[2], 
ITEM_HUNYUANLINGLU[3], 
ITEM_HUNYUANLINGLU[4], 
ITEM_HUNYUANLINGLU[5], 
ITEM_HUNYUANLINGLU[6]) 
if (idx <= 0) then 
break 
else 
			item_count = item_count + 1
end 
end 
if (item_count == 0) then 
player:Say("Th�nh an l�p trang b� .") 
return 
end 
potion:ReduceFinishedCount(item_count) 
WriteLog(format("%s(%s) receive stored hunyuanlinglu, count(%d)", 
player:GetAccount(), 
player:GetName(), 
item_count)) 
Jiluhunyuan(item_count) 
if (item_count < count) then 
player:Say(format("Ng��i l� h�n nguy�n linh l� <color=red>%d<color> ng��i cho ta , mau chu�n b� trang b� nh�n l�y <color=red>%d<color> h�n nguy�n linh l� ", 
item_count, 
count - item_count)) 
else 
player:Say(format("��y l� <color=red>%d<color> ng��i cho ta h�n nguy�n linh l� , xin/m�i nh�n l�y .", item_count)) 
end 
end 

-- script viet hoa By http://tranhba.com  ti�n v�o ho�c l� r�i �i tr� ch�i th� gi�i 
function WorldEntranceLogin(nPlayerIndex, bExchangeIn) 
WorldEntrance(nPlayerIndex, 1) 
end 

function WorldEntranceLogout(nPlayerIndex) 
WorldEntrance(nPlayerIndex, 0) 
end 

function WorldEntrance(playerindex, in) 
if (in == 1) then 
local player = PlayerList:GetPlayer(playerindex) 
local potion = HunyuanPotion:New(player) 
Enter(player, potion) 
else 
local obj = JingliList:Find(playerindex) 
if (obj) then 
obj:Destroy() 
end 
end 
end 

function Enter(player, potion) 
if (potion:GetRefiningFlag() == 1) then 
Jingli:New(player, potion) 
end 
end 


function Jiluhunyuan(nCount) 
if nCount <= 0 then 
return 
end 
AddStatData("linluchanchu_lianzhilinlu", nCount) -- script viet hoa By http://tranhba.com  s� li�u ch�n �i�m th� nh�t k� 
end 
