-- script viet hoa By http://tranhba.com  phu xe ®èi tho¹i 
CurStation = 1; 
Include("\\script\\global\\station.lua")
IncludeLib("BATTLE") 
function main(sel) 
BT_LeaveBattle() 
SetCurCamp(GetCamp()) 
SetFightState(0) 
local mapid = SubWorldIdx2ID(SubWorld); 
local tbOpp = {"§· ®i qua ®Şa ph­¬ng /WayPointFun", 
" ®· ®i qua thµnh phè /StationFun", 
" trë vÒ tr­íc ®İch ®Şa ph­¬ng /TownPortalFun"}; 
-- script viet hoa By http://tranhba.com  if (mapid == 325) then 
tinsert(tbOpp, format("§Õn kim ph­¬ng chç ghi danh (K)/#battle_transprot(2,%d)", mapid)); 
-- script viet hoa By http://tranhba.com  end; 
tinsert(tbOpp,"Kh«ng cÇn /OnCancel"); 
Say("Chóng ta chiÕn tr­êng phu xe vµo sanh ra tö , lÊy t¸nh m¹ng cña m×nh kiÕm tiÒn # xin/mêi cèng hiÕn mÊy ng©n l­îng !", getn(tbOpp), tbOpp); 
end; 

function OnCancel() 
end; 
function battle_transprot(nSel, mapid) 
local tbsongjin_pos = {1541, 3178}; -- script viet hoa By http://tranhba.com  tèng ph­¬ng täa ®é ®iÓm 
local szstr = " tèng ph­¬ng (T)"; 
if (nSel == 2) then 
tbsongjin_pos = {1570, 3085}; 
szstr = " kim ph­¬ng (K)"; 
end; 
if (mapid >= 323 and mapid <= 325) then 
NewWorld( mapid, tbsongjin_pos[1], tbsongjin_pos[2]); 
Msg2Player("§· tiÕn vµo chç ghi danh " ); 
end 
end; 
