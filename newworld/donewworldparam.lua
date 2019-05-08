-- script viet hoa By http://tranhba.com donewworldparam.lua 

Include("\\script\\lib\\string.lua")
Include("\\script\\maps\\newworldscript_h.lua")

aryChangeWorldExec = {} 
function PraseParam(szParam) 
if (szParam == nil) then 
return nil 
end 
if (aryChangeWorldExec[SubWorld] == nil) then -- script viet hoa By http://tranhba.com  cßn kh«ng cã hµm sè liªn , ph©n tÝch tham sæ 
aryChangeWorldExec[SubWorld] = {} 
local aryFuns = split(szParam, '|') 
for i = 1,getn(aryFuns) do 
local ExecFun = aryFuncStore[aryFuns[i]] 
if (ExecFun == nil)then 
print("Error: (Ne v¹n v¹n orld:%d) kh«ng cã ®Þnh nghÜa hµm sè %s", SubWorld, aryFuns[i]) 
else 
aryChangeWorldExec[SubWorld][i] = ExecFun; 
end 
end 
end 
return 1; 
end 

function DoNewWorldParam(szParam, bIn) 
if (PraseParam(szParam) == 1) then 
for i = 1,getn(aryChangeWorldExec[SubWorld]) do -- script viet hoa By http://tranhba.com  thi hµnh hµm sè liªn 
aryChangeWorldExec[SubWorld][i](bIn) 
end 
end 
end 
