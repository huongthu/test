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
		return "N÷ hiÖp";
	else
		return "§¹i hiÖp";
	end
end

function AskDeal()
Say("Ta cã b¸n c¸c lo¹i dông cô ®¸nh b¾t c¸. Kh¸ch quan nÕu bá lì kh«ng mua th× thËt v« cïng ®¸ng tiÕc!", 4, 
	"§æi C¸ lÊy phÇn th­ëng/doi_phan_thuong",
	"Kh«ng cÇn ®©u/OnCancelBuy_xxg");
end;



function doi_phan_thuong()
	local tbDialog = 
{ 
"<dec><npc>\n<color=yewllow>H«m nay ®i c©u c¸ då tróng mïa béi thu ®¹i hiÖp cÇn ®æi g× kh«ng?<color>", 
"§æi 4 con (Lãc-r«-trª-bãng) =  1 M·nh ABHM /doicalayday",
"KÕt thóc ®èi tho¹i /0", 
} 
CreateTaskSay(tbDialog) 
end



function doicalayday() 
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="C¸ Lãc",tbProp={6,1,4442},nCount = 1},
				{szName="C¸ R«",tbProp={6,1,4443},nCount = 1},
				{szName="C¸ Trª",tbProp={6,1,4444},nCount = 1},
				{szName="C¸ Bãng",tbProp={6,1,4445},nCount = 1},
                                                                                                                                                                                                                                                        },
		tbProduct = {szName="M·nh",tbProp={4,random(747,770),1,1},nCount = 1,},
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end