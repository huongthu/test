-- script viet hoa By http://tranhba.com  t�ng kim t�ng kim ghi danh �i�m to t��ng d��ng 
-- script viet hoa By http://tranhba.com Trap ID# t�ng kim ghi danh �i�m 1 
IncludeLib("BATTLE") 
function main(sel) 
local nMode = GetTripMode() 
if nMode == 2 then 
return 
end 
BT_LeaveBattle() 
SetFightState(1) 
NewWorld(78, 1768, 3098); 
end; 
