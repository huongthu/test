ROLENAMEQUERY_FREE = 0 -- script viet hoa By http://tranhba.com  n�n vai tr� t�n kh�ng b� s� d�ng 
ROLENAMEQUERY_INVALID = 1 -- script viet hoa By http://tranhba.com  n�n vai tr� t�n phi ph�p 
ROLENAMEQUERY_USED = 2 -- script viet hoa By http://tranhba.com  n�n vai tr� t�n �� b� s� d�ng 
-- script viet hoa By http://tranhba.com  
ROLENAMECHANGE_SUCCESS = 0 -- script viet hoa By http://tranhba.com  h�n t�n th�nh c�ng 
ROLENAMECHANGE_FAILURE = 1 -- script viet hoa By http://tranhba.com  h�n t�n th�t b�i 
ROLENAMECHANGE_INVALID = 2 -- script viet hoa By http://tranhba.com  n�n vai tr� t�n phi ph�p 
ROLENAMECHANGE_USED = 3 -- script viet hoa By http://tranhba.com  n�n vai tr� t�n �� b� s� d�ng 
ROLENAMECHANGE_ONLINE = 4 -- script viet hoa By http://tranhba.com  n�n vai tr� � tuy�n 

function QueryNameResult(newname, result) 
local msg = "<color=red>" .. newname .. "<color>" 
if (result == ROLENAMEQUERY_FREE) then 
msg = msg .. " danh t� n�y c�n kh�ng c� b� s� d�ng " 
elseif (result == ROLENAMEQUERY_USED) then 
msg = msg .. " danh t� n�y �� b� s� d�ng " 
else 
msg = msg .. " danh t� n�y kh�ng c� hi�u qu� , kh�ng th� s� d�ng " 
end 
Talk(1, "", msg) 
end 

function ChangeNameResult(newname, result) 
local msg = "<color=red>" .. newname .. "<color>" 
if (result == ROLENAMECHANGE_FAILURE) then 
msg = msg .. " danh t� n�y kh�ng th� s� d�ng " 
elseif (result == ROLENAMECHANGE_USED or result == ROLENAMECHANGE_ONLINE) then 
msg = msg .. " danh t� n�y �� b� s� d�ng " 
else 
msg = msg .. " danh t� n�y kh�ng c� hi�u qu� , kh�ng th� s� d�ng " 
end 
Talk(1, "", msg) 
end 
