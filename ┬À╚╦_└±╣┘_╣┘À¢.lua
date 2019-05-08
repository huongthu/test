-- Àñ¹Ù½Å±¾
-- Li_Xin 2004-8-17

-- Ã¿ÈÕÁìÈ¡½±Àø
--Include("\\script\\global\\vip_function.lua");
Include("\\script\\global\\systemconfig.lua"); -- ÏµÍ³ÅäÖÃ
Include("\\script\\event\\eventhead.lua");
--Include("\\script\\event\\equippackage\\event.lua")
Include("\\script\\task\\system\\task_string.lua")

function main()
	
	local aryszContent = 
	{
		"<dec><npc> ta lµ phô tr¸ch gëi lÔ vËt ®İch lÔ quan , mét n¨m trung ®İch träng ®¹i ngµy lÔ ta còng sÏ cã lÔ vËt gëi . h¬n n÷a cßn cã phong phó nhiÒu mµu ®İch ho¹t ®éng cã thÓ tham gia , ng­¬i muèn tham dù c¸i nµo ho¹t ®éng ®©y?",
		"<#> ta ch¼ng qua lµ tíi ®i d¹o mét chót/no",										--
		"<#>më ra trang bŞ cÈm nang/OnEquippackage",
	}
	local btns ={};
	btns[1] = aryszContent[1];
	btns[2] = aryszContent[2];
	
	tinsert(btns, 2, aryszContent[3]);
	
	CreateTaskSay (btns);
end
			
function no()

end
