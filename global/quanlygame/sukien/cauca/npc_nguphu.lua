IncludeLib("SPREADER")
IncludeLib("SETTING")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\global\\quanlygame\\sukien\\cauca\\head.lua")
IncludeLib("LEAGUE");
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
dofile("script/global/quanlygame/sukien/cauca/npc_nguphu.lua")	
	AskDeal()
end
function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
end

function AskDeal()
Say("Ta c� b�n c�c lo�i d�ng c� ��nh b�t c�. Kh�ch quan n�u b� l� kh�ng mua th� th�t v� c�ng ��ng ti�c!", 4, 
	"��i C� l�y ph�n th��ng/doi_phan_thuong",
	"Kh�ng c�n ��u/OnCancelBuy_xxg");
end;



function doi_phan_thuong()
	local tbDialog = 
{ 
"<dec><npc>\n<color=yewllow>H�m nay �i c�u c� d� tr�ng m�a b�i thu ��i hi�p c�n ��i g� kh�ng?<color>", 
"��i 4 con (L�c-r�-tr�-b�ng) =  1 M�nh ABHM /doicalayday",
"K�t th�c ��i tho�i /0", 
} 
CreateTaskSay(tbDialog) 
end



function doicalayday() 
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="C� L�c",tbProp={6,1,4442},nCount = 1},
				{szName="C� R�",tbProp={6,1,4443},nCount = 1},
				{szName="C� Tr�",tbProp={6,1,4444},nCount = 1},
				{szName="C� B�ng",tbProp={6,1,4445},nCount = 1},
                                                                                                                                                                                                                                                        },
		tbProduct = {szName="M�nh",tbProp={4,random(747,770),1,1},nCount = 1,},
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end