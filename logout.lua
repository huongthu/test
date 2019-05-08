-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  FileName : logout.lua 
-- script viet hoa By http://tranhba.com  Author : lailigao 
-- script viet hoa By http://tranhba.com  CreateTime : 2005-04-06 23:17:18 
-- script viet hoa By http://tranhba.com  Desc : nhµ ch¬i ®¨ng ra ch©n vèn ( ë thèi lui ra trß ch¬i hoÆc nh¶y qua dïng/uèng tr­íc ®iÒu dông ) 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
CP_TASKID_LOGOUT = 1094 -- script viet hoa By http://tranhba.com  ®¹i héi vâ l©m dù chän cuéc so tµi 0: ®· b¶o tån t­¬ng quan nhiÖm vô thay ®æi l­îng # 1# kh«ng b¶o tån 

Include("\\script\\task\\tollgate\\messenger\\messenger_lievegame.lua")
Include("\\script\\event\\storm\\logout.lua")	-- script viet hoa By http://tranhba.com Storm
Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua");
Include("\\script\\global\\playerlist.lua")
Include("\\script\\global\\logout_head.lua")

function main() 
if IsIPBonus() == 1 then 
IpBonus_Close() 
end; 
SetTask(CP_TASKID_LOGOUT, 0) 

for i = 1, getn(TB_LOGOUT_FILEFUN) do 
local reg = TB_LOGOUT_FILEFUN[i] 
DynamicExecute(reg[1], reg[2], PlayerIndex) 
end 

local MapId = SubWorldIdx2ID( SubWorld ) 
if ( MapId >= 387 and MapId <= 395) then 
messenger_livegame() 
end 

storm_logout() -- script viet hoa By http://tranhba.com Storm 
PlayerList:DelPlayer(PlayerIndex) 
end 

-- script viet hoa By http://tranhba.com  nh¶y qua dïng/uèng ch©n vèn 
function RemoveExchange() 
for i = 1, getn(TB_EXCHANGE_FILEFUN) do 
local reg = TB_EXCHANGE_FILEFUN[i] 
DynamicExecute(reg[1], reg[2], PlayerIndex) 
end 
PlayerList:DelPlayer(PlayerIndex) 
end 
