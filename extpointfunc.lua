Include("\\script\\global\\systemconfig.lua") -- script viet hoa By http://tranhba.com  h� th�ng ph�i tr� 

IncludeForRegionVer("\\script\\global\\", "extpointfunc_proc.lua")

function OnExtPointChange(nExtPointIndex, nChangeValue) 
return OnExtPointChange_Proc(nExtPointIndex, nChangeValue); 
end 
