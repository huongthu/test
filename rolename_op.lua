ROLENAMEQUERY_FREE = 0 -- script viet hoa By http://tranhba.com  nªn vai trß tªn kh«ng bÞ sö dông 
ROLENAMEQUERY_INVALID = 1 -- script viet hoa By http://tranhba.com  nªn vai trß tªn phi ph¸p 
ROLENAMEQUERY_USED = 2 -- script viet hoa By http://tranhba.com  nªn vai trß tªn ®· bÞ sö dông 
-- script viet hoa By http://tranhba.com  
ROLENAMECHANGE_SUCCESS = 0 -- script viet hoa By http://tranhba.com  h¬n tªn thµnh c«ng 
ROLENAMECHANGE_FAILURE = 1 -- script viet hoa By http://tranhba.com  h¬n tªn thÊt b¹i 
ROLENAMECHANGE_INVALID = 2 -- script viet hoa By http://tranhba.com  nªn vai trß tªn phi ph¸p 
ROLENAMECHANGE_USED = 3 -- script viet hoa By http://tranhba.com  nªn vai trß tªn ®· bÞ sö dông 
ROLENAMECHANGE_ONLINE = 4 -- script viet hoa By http://tranhba.com  nªn vai trß ë tuyÕn 

function QueryNameResult(newname, result) 
local msg = "<color=red>" .. newname .. "<color>" 
if (result == ROLENAMEQUERY_FREE) then 
msg = msg .. " danh tù nµy cßn kh«ng cã bÞ sö dông " 
elseif (result == ROLENAMEQUERY_USED) then 
msg = msg .. " danh tù nµy ®· bÞ sö dông " 
else 
msg = msg .. " danh tù nµy kh«ng cã hiÖu qu¶ , kh«ng thÓ sö dông " 
end 
Talk(1, "", msg) 
end 

function ChangeNameResult(newname, result) 
local msg = "<color=red>" .. newname .. "<color>" 
if (result == ROLENAMECHANGE_FAILURE) then 
msg = msg .. " danh tù nµy kh«ng thÓ sö dông " 
elseif (result == ROLENAMECHANGE_USED or result == ROLENAMECHANGE_ONLINE) then 
msg = msg .. " danh tù nµy ®· bÞ sö dông " 
else 
msg = msg .. " danh tù nµy kh«ng cã hiÖu qu¶ , kh«ng thÓ sö dông " 
end 
Talk(1, "", msg) 
end 
