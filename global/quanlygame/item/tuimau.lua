--�����
Include("\\script\\global\\_camnangdonghanh.lua")


function main(nItemIndex)
motuimau()
return 1
end

function motuimau()
if GetLastFactionNumber() == 1 then
              PlayerFunLib:AddSkillState(1221,1,3,5400,1)
             -- PlayerFunLib:AddSkillState(1041,1,3,5400,1)
end
local nSubWorldID = GetWorldPos();
if (nSubWorldID == 380) or (nSubWorldID == 386)  then
Bil_SupportHealingMana_NguHoa()
	else
		Talk(1,"", "T�i m�u ch� cho ph�p s� d�ng t�i khu v�c t�ng kim")
		return
	end
end
