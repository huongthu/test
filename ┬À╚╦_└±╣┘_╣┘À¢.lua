-- 礼官脚本
-- Li_Xin 2004-8-17

-- 每日领取奖励
--Include("\\script\\global\\vip_function.lua");
Include("\\script\\global\\systemconfig.lua"); -- 系统配置
Include("\\script\\event\\eventhead.lua");
--Include("\\script\\event\\equippackage\\event.lua")
Include("\\script\\task\\system\\task_string.lua")

function main()
	
	local aryszContent = 
	{
		"<dec><npc> ta l� ph� tr竎h g雐 l� v藅 ch l� quan , m閠 n╩ trung ch tr鋘g i ng祔 l� ta c騨g s� c� l� v藅 g雐 . h琻 n鱝 c遪 c� phong ph� nhi襲 m祏 ch ho箃 ng c� th� tham gia , ngi mu鑞 tham d� c竔 n祇 ho箃 ng y?",
		"<#> ta ch糿g qua l� t韎 甶 d筼 m閠 ch髏/no",										--
		"<#>m� ra trang b� c萴 nang/OnEquippackage",
	}
	local btns ={};
	btns[1] = aryszContent[1];
	btns[2] = aryszContent[2];
	
	tinsert(btns, 2, aryszContent[3]);
	
	CreateTaskSay (btns);
end
			
function no()

end
