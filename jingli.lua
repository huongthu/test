-- script viet hoa By http://tranhba.com  tinh luyÖn th¹ch hÖ thèng wangbin 2010-4-7 
Include("\\script\\lib\\common.lua")
Include("\\script\\lib\\player.lua")
Include("\\script\\global\\playerlist.lua")

MAXCOUNT_EVERYDAY = 30 -- script viet hoa By http://tranhba.com  mçi ngµy tu luyÖn linh lé ®Ých sè lÇn h¹n chÕ 
MIN_LEVEL = 90 
TIMEOUT_REFINING = 30 -- script viet hoa By http://tranhba.com  luyÖn chÕ mét hçn nguyªn linh lé cÇn thêi gian # phót # 
TOTALENERGY_LIMIT_PERMONTH = 8000000 -- script viet hoa By http://tranhba.com  mçi th¸ng nhiÒu nhÊt chØ cã thÓ gia t¨ng 80000 ®Ých tinh luyÖn th¹ch 
POTION_ENERGY = 100 -- script viet hoa By http://tranhba.com  sö dông hçn nguyªn linh lé nh­ng ®¹t ®­îc ®Ých tinh luyÖn th¹ch trÞ gi¸ 
ITEM_YUGUAN = {6, 1, 2311, 1, 0, 0} -- script viet hoa By http://tranhba.com  ngäc lon 
ITEM_HUNYUANLINGLU = {6, 1, 2312, 1, 0, 0} -- script viet hoa By http://tranhba.com  hçn nguyªn linh lé 
TASK_HUNYUANLINGLU_STARTDATE	= 2673					-- script viet hoa By http://tranhba.com  µ±ÈÕÒÑÐÞÁ¶´ÎÊý * 1000000 + »ìÔªÁéÂ¶¿ªÊ¼ÐÞÁ¶ÈÕÆÚ£¨YYMMDD£©
TASK_HUNYUANLINGLU_REFINING		= 2674					-- script viet hoa By http://tranhba.com  »ìÔªÁéÂ¶ÐÞÁ¶Íê³ÉÊýÁ¿ * 100000 + ÊÇ·ñÕýÔÚÐÞÁ¶ * 10000 + »ìÔªÁéÂ¶ÀÛ¼ÆÐÞÁ¶Ê±¼ä£¨·ÖÖÓ£©
TASK_HUNYUANLINGLU_USEDATE = 2675 -- script viet hoa By http://tranhba.com  lÇn tr­íc sö dông hçn nguyªn linh lé ®Ých nhËt kú #YYYYMMDD# 
TASK_HUNYUANLINGLU_TOTALENERGY = 2676 -- script viet hoa By http://tranhba.com  tr­íc mÆt sö dông hçn nguyªn linh lé t¨ng lªn bao nhiªu tinh luyÖn th¹ch 
TASK_REFININGCOUNT = 2793 -- script viet hoa By http://tranhba.com  ®îi tu luyÖn hçn nguyªn linh lé sè l­îng 

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

-- script viet hoa By http://tranhba.com  tuÇn tra cã hay kh«ng ®ang tu luyÖn 
function HunyuanPotion:GetRefiningFlag() 
local _, flag, _ = self:DecodeRefiningTask() 
return flag 
end 

-- script viet hoa By http://tranhba.com  thiÕt trÝ cã hay kh«ng ®ang tu luyÖn 
function HunyuanPotion:SetRefiningFlag(flag) 
local count, _, time = self:DecodeRefiningTask() 
self:EncodeRefiningTask(count, flag, time) 
end 

-- script viet hoa By http://tranhba.com  tuÇn tra h«m nay ®· tu luyÖn sè lÇn 
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

-- script viet hoa By http://tranhba.com  thanh trõ h«m nay ®· tu luyÖn sè lÇn 
function HunyuanPotion:ClearCurrentDateRefineCount() 
local _, date = self:DecodeDateTask() 
self:EncodeDateTask(0, date) 
end 

-- script viet hoa By http://tranhba.com  gia t¨ng h«m nay ®· tu luyÖn sè lÇn 
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

-- script viet hoa By http://tranhba.com  lÊy ®­îc b¾t ®Çu tu luyÖn nhËt kú 
function HunyuanPotion:GetRefineDate() 
local count, date = self:DecodeDateTask() 
return date 
end 

-- script viet hoa By http://tranhba.com  thiÕt trÝ b¾t ®Çu tu luyÖn nhËt kú 
function HunyuanPotion:SetRefineDate(date) 
local count, _ = self:DecodeDateTask() 
self:EncodeDateTask(count, date) 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc ®· tu luyÖn xong thµnh linh lé sè l­îng 
function HunyuanPotion:GetFinishedCount() 
local count, flag, time = self:DecodeRefiningTask() 
return count 
end 

-- script viet hoa By http://tranhba.com  gia t¨ng ®· tu luyÖn xong thµnh linh lé sè l­îng 
function HunyuanPotion:AddFinishedCount() 
local count, flag, time = self:DecodeRefiningTask() 
	self:EncodeRefiningTask(count + 1, flag, time)
end 

-- script viet hoa By http://tranhba.com  thanh trõ ®· tu luyÖn xong thµnh linh lé sè l­îng 
function HunyuanPotion:ClearFinishedCount() 
local count, flag, time = self:DecodeRefiningTask() 
self:EncodeRefiningTask(0, flag, time) 
end 

-- script viet hoa By http://tranhba.com  gi¶m bít ®· tu luyÖn xong thµnh linh lé sè l­îng 
function HunyuanPotion:ReduceFinishedCount(count) 
local count_now, flag, time = self:DecodeRefiningTask() 
if (count_now <= count) then 
count_now = 0 
else 
count_now = count_now - count 
end 
self:EncodeRefiningTask(count_now, flag, time) 
end 

-- script viet hoa By http://tranhba.com  tuÇn tra thêi gian tu luyÖn # phót # 
function HunyuanPotion:GetRefiningTime() 
local _, _, time = self:DecodeRefiningTask() 
return time 
end 

-- script viet hoa By http://tranhba.com  gia t¨ng thêi gian tu luyÖn # phót # 
function HunyuanPotion:AddRefiningTime(minutes) 
local count, flag, time = self:DecodeRefiningTask() 
	time = time + minutes
self:EncodeRefiningTask(count, flag, time) 
local msg = format("§¹i hiÖp ®Ých hçn nguyªn linh lé ®· luyÖn ®­îc %d phót .", time) 
self.m_Player:Msg2Player(msg) 
end 

-- script viet hoa By http://tranhba.com  thanh trõ thêi gian tu luyÖn # phót # 
function HunyuanPotion:ClearRefiningTime() 
local count, flag, time = self:DecodeRefiningTask() 
if (time > 0) then 
self:EncodeRefiningTask(count, flag, 0) 
end 
end 

-- script viet hoa By http://tranhba.com  tiªu hao ngäc lon 
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

-- script viet hoa By http://tranhba.com  sö dông hçn nguyªn linh lé 
-- script viet hoa By http://tranhba.com  gia t¨ng tinh luyÖn th¹ch ®Ých tham sæ by wangjingjun 
function HunyuanPotion:Use(nEnergy) 
-- script viet hoa By http://tranhba.com  nÕu nEnergy v× v« Ých , lµ dïng cam chÞu ®Ých hçn nguyªn linh lé ®Ých trÞ gi¸ , nÕu kh«ng v× míi gia t¨ng ®Ých trÞ gi¸ 
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
player:Say("# tinh luyÖn th¹ch cöa hµng ®¹t tíi ®iÓm cao nhÊt , kh«ng thÓ tiÕp tôc sö dông hçn nguyªn linh lé ") 
return 0 
	elseif (nCurAddEnergy + nEnergy > TOTALENERGY_LIMIT_PERMONTH) then
player:Say(format("Mçi ng­êi mçi th¸ng nhiÒu nhÊt chØ cã thÓ %d tinh luyÖn th¹ch ", TOTALENERGY_LIMIT_PERMONTH)) 
return 0 
elseif (self.m_Player:AddEnergy(nEnergy) ~= 1) then 
player:Say("Gia t¨ng tinh luyÖn th¹ch ®iÓm thÊt b¹i .") 
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
player:Msg2Player(format("Gia t¨ng %d tinh luyÖn th¹ch ®iÓm , nªn th¸ng ®· ®¹t ®­îc %d tinh luyÖn th¹ch .", nEnergy, nCurAddEnergy)) 
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

player:Msg2Player("B¾t ®Çu tu luyÖn hçn nguyªn linh lé ") 
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
-- script viet hoa By http://tranhba.com  tiÕp tôc luyÖn chÕ ng­êi/c¸i kÕ tiÕp hçn nguyªn linh lé 
player:SetTask(TASK_REFININGCOUNT, count - 1) 
potion:AddCurrentDateRefineCount(nil) 
return self.m_Timeout 
else 
-- script viet hoa By http://tranhba.com  kÕt thóc luyÖn chÕ 
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
self.m_Player:Msg2Player("§¹i hiÖp ®· chÕ t¹o thµnh c«ng 1 c¸ hçn nguyªn linh lé ") 

Jiluhunyuan(1) 
else 
self.m_Potion:AddFinishedCount() 
WriteLog(format("%s(%s) add stored hunyuanlinglu(%d)", 
account, 
name, 
self.m_Potion:GetFinishedCount())) 
self.m_Player:Msg2Player("§¹i hiÖp ®· chÕ t¹o thµnh c«ng mét hçn nguyªn linh lé , mêi ®­îc <color=red> hoa Èn sÜ ®¶o <color> hoÆc lµ <color=red> b¶y ®¹i thµnh thÞ <color> nhËn lÊy .") 
end 
end 

-- script viet hoa By http://tranhba.com  NPC ®èi tho¹i nhËp khÈu 
function dlg_entrance(playerindex) 
local player = PlayerList:GetPlayer(playerindex) 
-- script viet hoa By http://tranhba.com  player:Say("Nµy chøc n¨ng t¹m kh«ng më ra . ") 
JingliDlg:Main(player) 
end 

-- script viet hoa By http://tranhba.com  luyÖn chÕ hçn nguyªn linh lé 
function dlg_refine() 
local player = PlayerList:GetPlayer(PlayerIndex) 
return JingliDlg:Refine(player) 
end 

-- script viet hoa By http://tranhba.com  nhËn lÊy hçn nguyªn linh lé 
function dlg_get() 
local player = PlayerList:GetPlayer(PlayerIndex) 
JingliDlg:Draw(player) 
end 

-- script viet hoa By http://tranhba.com  thiÕt trÝ tu luyÖn sè l­îng 
function dlg_inputcount() 
local player = PlayerList:GetPlayer(PlayerIndex) 
local potion = HunyuanPotion:New(player) 
local count = JingliDlg:Check(player, potion, 0) 
if (count > 0) then 
player:AskClientForNumber( 
"callback_inputcount", 
1, 
count, 
" ng­¬i nghÜ chÕ t¹o bao nhiªu c¸ ?") 
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
local fmt = " chÕ t¹o hçn nguyªn linh lé cÇn ®¹t tíi nhÊt ®Þnh vâ c«ng tµi nghÖ , ®¹i hiÖp %s muèn luyÖn ®Õn <color=red>%d<color> cÊp míi cã thÓ ®Õn c¸i nµy nga " 
local msg = nil 
if (player:GetSex() == 1) then 
msg = format(fmt,"N÷ hiÖp ", MIN_LEVEL) 
else 
msg = format(fmt,"ThiÕu hiÖp ", MIN_LEVEL) 
end 
player:Say(msg) 
return 0 
elseif (player:IsCharged() == 0) then 
player:Say("ChØ cã ®· sung trÞ gi¸ nh©n vËt míi cã thÓ luyÖn chÕ hçn nguyªn linh lé ") 
return 0 
elseif (potion:GetFinishedCount() > 0) then 
player:Say("Xin/mêi nhËn lÊy ®· luyÖn chÕ tèt hçn nguyªn linh lé .") 
return 0 
end 
local count_day = potion:GetCurrentDateRefineCount(nil) -- script viet hoa By http://tranhba.com  ngµy ®ã ®· tu luyÖn sè lÇn 
local count_cur = player:GetTask(TASK_REFININGCOUNT) -- script viet hoa By http://tranhba.com  liªn tôc tu luyÖn sè lÇn 
if (count_day >= MAXCOUNT_EVERYDAY) then 
player:Say( 
format("H«m nay c¸c h¹ ®· luyÖn chÕ qu¸ <color=red>%d<color> lÇn , xin/mêi ngµy mai trë l¹i ®i .", 
MAXCOUNT_EVERYDAY)) 
return 0 
end 
local count_ok = MAXCOUNT_EVERYDAY - count_day - count_cur 
if (count_ok <= 0) then 
player:Say("Tu luyÖn sè lÇn ®· ®ñ , xin/mêi ngµy mai trë l¹i luyÖn chÕ hçn nguyªn linh lé ®i ?") 
return 0 
elseif (count_ok < count_input) then 
player:Say(format("H«m nay nhiÒu nhÊt chØ cã thÓ nhiÒu h¬n n÷a luyÖn %d hçn nguyªn linh lé , xin/mêi ®­a vµo cÇn luyÖn chÕ sè l­îng .", count_ok)) 
return 0 
else 
return count_ok 
end 
end 

function JingliDlg:Main(player) 
player:Say( 
" thÕ gian v¹n vËt ®Òu cã thiªn ®Þa linh khÝ , nÕu nh­ ng­¬i cã ngäc lon liÒn cã thÓ tiÕn hµnh nhËn lÊy thu tËp , thu tËp ®­îc 30 phót sau , nhËn lÊy cã thÓ chÕ thµnh hçn nguyªn linh lé . sö dông linh lé sau , cã thÓ gia t¨ng néi lùc !? ", 
3, 
" b¾t ®Çu luyÖn hçn nguyªn linh lé /dlg_inputcount", 
" nhËn lÊy ®· ph¸t hçn nguyªn linh lé ./dlg_get", 
" kÕt thóc ®èi tho¹i /Cancel") 
end 

function JingliDlg:Refine(player, potion, count) 
if (count <= 0 or self:Check(player, potion, count) == 0) then 
return 0 
elseif (potion:ConsumeYuguan(count) ~= 1) then 
player:Say(format( 
" tÝch thñy khã thµnh s«ng , ng­¬i cßn kh«ng cã <color=red>%d<color> ngäc lon , l·o phu còng thóc thñ v« s¸ch <enter><color=yellow>< ngäc lon còng ë ®©y kú tr©n c¸c b¸n ra , xin ®iÓm kÝch mµn ¶nh d­íi gãc ph¶i viªn v« Ých c¸ch ><color>", 
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
player:Say(format("N¬i nµy ngäc lon d¸n cã bïa , ng­¬i nhanh lªn mét chót ®i thu tËp , sau ®ã <color=red>%d phót <color> cã thÓ hoµn thµnh !", TIMEOUT_REFINING)) 
return 1 
end 

function JingliDlg:Draw(player) 
local potion = HunyuanPotion:New(player) 
local count = potion:GetFinishedCount() 
if (count <= 0) then 
player:Say("Ng­¬i cßn kh«ng cã cho ta hçn nguyªn linh lé ") 
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
player:Say("ThØnh an lËp trang bÞ .") 
return 
end 
potion:ReduceFinishedCount(item_count) 
WriteLog(format("%s(%s) receive stored hunyuanlinglu, count(%d)", 
player:GetAccount(), 
player:GetName(), 
item_count)) 
Jiluhunyuan(item_count) 
if (item_count < count) then 
player:Say(format("Ng­êi lµ hçn nguyªn linh lé <color=red>%d<color> ng­¬i cho ta , mau chuÈn bÞ trang bÞ nhËn lÊy <color=red>%d<color> hçn nguyªn linh lé ", 
item_count, 
count - item_count)) 
else 
player:Say(format("§©y lµ <color=red>%d<color> ng­¬i cho ta hçn nguyªn linh lé , xin/mêi nhËn lÊy .", item_count)) 
end 
end 

-- script viet hoa By http://tranhba.com  tiÕn vµo hoÆc lµ rêi ®i trß ch¬i thÕ giíi 
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
AddStatData("linluchanchu_lianzhilinlu", nCount) -- script viet hoa By http://tranhba.com  sè liÖu ch«n ®iÓm thø nhÊt kú 
end 
