MONEY_ADDLIFETIME = 1000000 

function Checkup() 
-- script viet hoa By http://tranhba.com  bëi v× th«ng qua sö dông vËt phÈm gia t¨ng nãi chuyÖn phiÕm thÊt thêi gian , kiÓm tra kim tiÒn ®İch ®¹i m· th¶ vµo \\item\\chatroom\\pay.lua trung 
return 1 
end 

function Consume() 
if (DelCommonItem(6,1,1062) == 1) then 
Msg2Player("<#><color=green> nãi chuyÖn phiÕm thÊt thªm lóc thµnh c«ng <color>#") 
return 1 
end 
return 0 
end 
