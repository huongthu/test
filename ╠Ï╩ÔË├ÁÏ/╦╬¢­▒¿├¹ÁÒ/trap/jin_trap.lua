-- script viet hoa By http://tranhba.com  t�ng kim t�ng kim ghi danh �i�m to Chu ti�n tr�n 
-- script viet hoa By http://tranhba.com Trap ID# t�ng kim ghi danh �i�m 1 
IncludeLib("BATTLE") 
function main(sel) 
local nMode = GetTripMode() 
if nMode == 2 then 
return 
end 
BT_LeaveBattle() 
SetFightState(1) 
NewWorld(100, 1406, 3486); 
end; 
