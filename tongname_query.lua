Include("\\script\\global\\rename_head.lua")

function QueryTongNameResult(tong, result) 
local msg = "<color=red>" .. tong .. "<color>" 
if (result == TONGNAMERES_FREE) then 
msg = msg .. "<#> danh t� n�y c�n kh�ng c� b� s� d�ng " 
elseif (result == TONGNAMERES_USED) then 
msg = msg .. "<#> danh t� n�y �� b� s� d�ng " 
elseif (result == TONGNAMERES_APPLY) then 
msg = msg .. "<#> danh t� n�y �� b� th�n th�nh " 
else 
msg = msg .. "<#> danh t� n�y kh�ng c� hi�u qu� , kh�ng th� s� d�ng " 
end 
Say(msg, 1, "<#> bi�t /cancel") 
end 