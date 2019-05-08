Include("\\script\\global\\rename_head.lua")

function ChangeTongNameResult(old_tong, new_tong, result) 
local msg = "<color=red>" .. new_tong .. "<color>" 
if (result == TONGNAMERES_SUCCESS) then 
local value = GetTask(TASKVALUE_BLEND) 
value = SetBit(value, 2, 0) 
SetTask(TASKVALUE_BLEND, value) 
msg = msg .. "<#> ��i t�n th�nh c�ng , �em v�i l�n sau duy tr� h�u sinh hi�u " 
elseif (result == TONGNAMERES_USED) then 
msg = msg .. "<#> danh t� n�y �� b� s� d�ng " 
elseif (result == TONGNAMERES_APPLY) then 
msg = msg .. "<#> danh t� n�y �� b� th�n th�nh " 
else 
msg = msg .. "<#> danh t� n�y kh�ng c� hi�u qu� , kh�ng th� s� d�ng " 
end 
Say(msg, 1, "<#> bi�t /cancel") 
end 