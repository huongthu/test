function OnDeath(Launcher) 

-- script viet hoa By http://tranhba.com  nÕu nh­ lµ d· ngo¹i b¶n ®å cho ®¸nh chÕt ng­êi thªm vinh dù ®¸nh chÕt trŞ gi¸ 
if IsTongWarMap(SubWorld) == 1 then 
local nLauncherIdx = NpcIdx2PIdx(Launcher); 
local nOrgPlayer = PlayerIndex; 
if (nLauncherIdx > 0) then 
-- script viet hoa By http://tranhba.com  ®em tr­íc mÆt nh©n vËt thiÕt trİ v× ®¸nh chÕt ng­êi 
PlayerIndex = nLauncherIdx; 
-- script viet hoa By http://tranhba.com  vinh dù ®¸nh chÕt thªm 1 
AddPvPKilledNum(1); 
-- script viet hoa By http://tranhba.com  ®em nh©n vËt thiÕt trİ trë vÒ bŞ ®¸nh chÕt ng­êi 
PlayerIndex = nOrgPlayer; 
end 
end 

end
