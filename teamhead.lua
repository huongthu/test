-- script viet hoa By http://tranhba.com  teamhead.lua ®éi ngò ®Şnh nghÜa ®İch ®Çu v¨n kiÖn 
-- script viet hoa By http://tranhba.com  By: Dan Deng(2003-12-30) 

function OtherPlayer(Player1Index, Fun, param1, param2)		-- script viet hoa By http://tranhba.com  ÔÚ±ğÈËÉíÉÏ’@ĞĞ½Å±¾º¯Êı
OldPlayer=PlayerIndex; 
PlayerIndex=Player1Index; 
Result = Fun(param1, param2) 
PlayerIndex = OldPlayer; 
return Result; 
end 
