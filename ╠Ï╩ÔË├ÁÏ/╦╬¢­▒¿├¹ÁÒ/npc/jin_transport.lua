-- script viet hoa By http://tranhba.com  phu xe ��i tho�i 
CurStation = 1; 
Include("\\script\\global\\station.lua")
IncludeLib("BATTLE"); 

function main(sel) 
BT_LeaveBattle() 
SetCurCamp(GetCamp()) 
SetFightState(0) 
local mapid = SubWorldIdx2ID(SubWorld); 
local tbOpp = {"�� �i qua ��a ph��ng /WayPointFun", 
" �� �i qua th�nh ph� /StationFun", 
" tr� v� tr��c ��ch ��a ph��ng /TownPortalFun"}; 
-- script viet hoa By http://tranhba.com  if (mapid == 325) then 
tinsert(tbOpp, format("��n t�ng ph��ng ghi danh �i�m (T)/#battle_transprot(1,%d)", mapid)); 
-- script viet hoa By http://tranhba.com  end; 
tinsert(tbOpp,"Kh�ng c�n /OnCancel"); 
Say("Ch�ng ta chi�n tr��ng phu xe v�o sanh ra t� , l�y t�nh m�ng c�a m�nh ki�m ti�n # xin/m�i c�ng hi�n m�y ng�n l��ng !", getn(tbOpp), tbOpp); 
end; 

function OnCancel() 
end; 
function battle_transprot(nSel, mapid) 
local tbsongjin_pos = {1541, 3178}; -- script viet hoa By http://tranhba.com  t�ng ph��ng t�a �� �i�m 
local szstr = " kim ph��ng (T)"; 
if (nSel == 2) then 
tbsongjin_pos = {1570, 3085}; 
szstr = " t�ng ph��ng (K)"; 
end; 
if (mapid >= 323 and mapid <= 325) then 
NewWorld( mapid, tbsongjin_pos[1], tbsongjin_pos[2]); 
Msg2Player("�� ��n ghi danh �i�m " ); 
end 
end; 
