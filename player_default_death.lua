function OnDeath(Launcher) 

-- script viet hoa By http://tranhba.com  n�u nh� l� d� ngo�i b�n �� cho ��nh ch�t ng��i th�m vinh d� ��nh ch�t tr� gi� 
if IsTongWarMap(SubWorld) == 1 then 
local nLauncherIdx = NpcIdx2PIdx(Launcher); 
local nOrgPlayer = PlayerIndex; 
if (nLauncherIdx > 0) then 
-- script viet hoa By http://tranhba.com  �em tr��c m�t nh�n v�t thi�t tr� v� ��nh ch�t ng��i 
PlayerIndex = nLauncherIdx; 
-- script viet hoa By http://tranhba.com  vinh d� ��nh ch�t th�m 1 
AddPvPKilledNum(1); 
-- script viet hoa By http://tranhba.com  �em nh�n v�t thi�t tr� tr� v� b� ��nh ch�t ng��i 
PlayerIndex = nOrgPlayer; 
end 
end 

end
