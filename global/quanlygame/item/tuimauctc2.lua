--¾üÐè¹Ù
Include("\\script\\global\\_camnangdonghanh.lua")


function main(nItemIndex)
motuimauctc()
return 1
end

function motuimauctc()
local nSubWorldID = GetWorldPos();
if (nSubWorldID == 926) or (nSubWorldID == 927) or (nSubWorldID == 928) or (nSubWorldID == 929) or (nSubWorldID == 930) or (nSubWorldID == 931) or (nSubWorldID == 932) then
Bil_SupportHealingMana_NguHoa()
	else
		Talk(1,"", "Tói m¸u chØ cho phÐp sö dông t¹i khu vùc c«ng thµnh chiÕn")
		return
	end
end
