-- script viet hoa By http://tranhba.com  teamhead.lua ��i ng� ��nh ngh�a ��ch ��u v�n ki�n 
-- script viet hoa By http://tranhba.com  By: Dan Deng(2003-12-30) 

function OtherPlayer(Player1Index, Fun, param1, param2)		-- script viet hoa By http://tranhba.com  �ڱ������ϒ@�нű�����
OldPlayer=PlayerIndex; 
PlayerIndex=Player1Index; 
Result = Fun(param1, param2) 
PlayerIndex = OldPlayer; 
return Result; 
end 
