-- script viet hoa By http://tranhba.com  ®èi tho¹i NPC liÖt biÓu 
-- script viet hoa By http://tranhba.com  wangbin 2010.12.10 
-- script viet hoa By http://tranhba.com  dïng c¸i nµy lo¹i còng kh«ng cÇn n÷a v× míi x©y ®èi tho¹i NPC thiÕt trÝ ®èi tho¹i ch©n vèn , chØ cÇn trùc tiÕp thùc hiÖn mét lo¹i liÒn cã thÓ 

-- script viet hoa By http://tranhba.com  tû nh­ # cã thÓ ë ch©n cña ng­¬i vèn ®¹i m· trung thùc hiÖn mét lo¹i NpcChefu 
-- script viet hoa By http://tranhba.com  phu xe 
-- script viet hoa By http://tranhba.com  NpcChefu = { 
-- script viet hoa By http://tranhba.com  m_Caption = " phu xe # muèn ngåi xe ®i n¬i nµo ? ", 
-- script viet hoa By http://tranhba.com  m_Options = { 
-- script viet hoa By http://tranhba.com  " ta muèn ®i thµnh ®« ", 
-- script viet hoa By http://tranhba.com  " ta muèn ®i §¹i Lý ", 
-- script viet hoa By http://tranhba.com  " ta muèn ®i biÖn kinh ", 
-- script viet hoa By http://tranhba.com  " ta muèn ®i t­¬ng d­¬ng ", 
-- script viet hoa By http://tranhba.com  " ta muèn ®i D­¬ng Ch©u ", 
-- script viet hoa By http://tranhba.com  " ta muèn ®i tr­íc khi an ", 
-- script viet hoa By http://tranhba.com  " còng kh«ng ®i ®©u c¶ " 
-- script viet hoa By http://tranhba.com  } 
-- script viet hoa By http://tranhba.com  } 
-- script viet hoa By http://tranhba.com  trë vÒ trÞ gi¸ #string, {string, string, ...} 
-- script viet hoa By http://tranhba.com  hoÆc lµ #string 
-- script viet hoa By http://tranhba.com  function NpcChefu:Say(player, param) 
-- script viet hoa By http://tranhba.com  return self.m_Caption, self.Options 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  sel lµ m_Options ®Ých t¸c dÉn 
-- script viet hoa By http://tranhba.com  function NpcChefu:OnAnswer(player, sel, param) 
-- script viet hoa By http://tranhba.com  if (sel > 0 and sel < 8) then 
-- script viet hoa By http://tranhba.com  local mapid, x, y = GetStationPos(sel) 
-- script viet hoa By http://tranhba.com  if (mapid ~= nil and NewWorld(mapid, x, y) == 1) then 
-- script viet hoa By http://tranhba.com  Msg2Player("Ngåi yªn, chóng ta ®i ") 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  gia t¨ng phu xe NPC# tham sæ theo thø tù v× # tªn , npcid , mapid, x, y, thùc hiÖn lo¹i 
-- script viet hoa By http://tranhba.com  nNpcIndex = DlgNpcManager:AddNpc("Phu xe ", 238, 949, 51264, 101984, NpcChefu) 
-- script viet hoa By http://tranhba.com  thñ tiªu phu xe NPC: 
-- script viet hoa By http://tranhba.com  DlgNpcManager:DelNpc(nNpcIndex) 

Include("\\script\\global\\playerlist.lua") 

DlgNpcManager = { 
m_Npcs = {}, 
m_Idxs = {}, 
m_Index = 0, 
} 

function DlgNpcManager:AddNpc(name, npcid, mapid, x, y, npc, param) 
local index = AddNpc(npcid, 1, SubWorldID2Idx(mapid), x, y, 1, name, 0) 
if (index <= 0) then 
WriteLog(format("[ERROR]Failed to create dialog npc(%s,%d,%d,%d,%d)", name, npcid, mapid, x, y)) 
return 0 
end 
local tb = {} 
tb.Npc = npc 
tb.Index = index 
tb.PackNo = curpack() 
tb.Param = param 
SetNpcScript(index, "\\script\\global\\dlgnpc_list.lua", index) 
	self.m_Index = self.m_Index + 1
self.m_Npcs[self.m_Index] = tb 
self.m_Idxs[index] = self.m_Index 
return self.m_Index 
end 

function DlgNpcManager:DelNpc(index) 
local tb = self.m_Npcs[index] 
if (tb ~= nil) then 
if (tb.Index > 0) then 
DelNpc(tb.Index) 
end 
self.m_Npcs[index] = nil 
self.m_Idxs[tb.Index] = nil 
end 
end 

function DlgNpcManager:GetNpcIndex(index) 
local tb = self.m_Npcs[index] 
if (not tb) then 
return 0 
end 
return tb.Index 
end 

function DlgNpcManager:GetNpc(index) 
local nIndex = self.m_Idxs[index] 
if (not nIndex) then 
return nil 
end 
return self.m_Npcs[nIndex] 
end 

function say(player, index, caption, options) 
if (caption ~= nil) then 
base = base or 0 
if (not options) then 
player:Say(caption) 
elseif (type(options) == "table") then 
local answers = {} 
for i = 1, getn(options) do 
tinsert(answers, format("%s/#select(%d,%d)", options[i], index, i)) 
end 
player:Say(caption, getn(answers), answers) 
elseif (type(options) == "string") then 
local option = format("%s/select(%d,%d)", options, index, 1) 
player:Say(caption, 1, option) 
end 
end 
end 

function main(index) 
local player = PlayerList:GetPlayer(PlayerIndex) 
if (not player) then 
return 
end 
local tb = DlgNpcManager:GetNpc(index) 
if (not tb or not tb.Npc or not tb.Npc.Say) then 
return 
end 
local pack = usepack(tb.PackNo) 
local caption, options, base = tb.Npc:Say(player, tb.Param) 
say(player, index, caption, options) 
usepack(pack) 
end 

function select(index, sel) 
local player = PlayerList:GetPlayer(PlayerIndex) 
if (not player) then 
return 
end 
local tb = DlgNpcManager:GetNpc(index) 
if (not tb or not tb.Npc or not tb.Npc.OnAnswer) then 
return 
end 
local pack = usepack(tb.PackNo) 
local caption, options = tb.Npc:OnAnswer(player, sel, tb.Param) 
say(player, index, caption, options) 
usepack(pack) 
end 
