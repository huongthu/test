-- ��ٽű�
-- Li_Xin 2004-8-17

-- ÿ����ȡ����
--Include("\\script\\global\\vip_function.lua");
Include("\\script\\global\\systemconfig.lua"); -- ϵͳ����
Include("\\script\\event\\eventhead.lua");
--Include("\\script\\event\\equippackage\\event.lua")
Include("\\script\\task\\system\\task_string.lua")

function main()
	
	local aryszContent = 
	{
		"<dec><npc> ta l� ph� tr�ch g�i l� v�t ��ch l� quan , m�t n�m trung ��ch tr�ng ��i ng�y l� ta c�ng s� c� l� v�t g�i . h�n n�a c�n c� phong ph� nhi�u m�u ��ch ho�t ��ng c� th� tham gia , ng��i mu�n tham d� c�i n�o ho�t ��ng ��y?",
		"<#> ta ch�ng qua l� t�i �i d�o m�t ch�t/no",										--
		"<#>m� ra trang b� c�m nang/OnEquippackage",
	}
	local btns ={};
	btns[1] = aryszContent[1];
	btns[2] = aryszContent[2];
	
	tinsert(btns, 2, aryszContent[3]);
	
	CreateTaskSay (btns);
end
			
function no()

end
