--------------------------------------------------------------------------------------------------------
-- File Name		:	thorenhoangkim.lua
--	Author			:	Alone_ (Nguyen Khai)
--	Create Time	:	27/10/2017 - 20:20
--	Description		:	
--------------------------------------------------------------------------------------------------------
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
IncludeLib("ITEM")
IncludeLib("SETTING")
IncludeLib("QUESTKEY")

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")
Include("\\script\\dailogsys\\dailogsay.lua")


function main()
dofile("script/global/quanlygame/sukien/14thang2/nguyetlao.lua")

	tbOpt =
	{
		"<dec><npc>Valentine nÂng nµn  m ∏p",
                                           "Gh–p 1 Socola ß∆c Bi÷t/ghep1socola",
                                           "Gh–p 10 Socola ß∆c Bi÷t/ghep10socola",
                                           "Gh–p 100 Socola ß∆c Bi÷t/ghep100socola",


		"K’t thÛc ÆËi thoπi./no",
	}
	CreateTaskSay(tbOpt)
end


function ghep1socola()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>ßπi hi÷p <color=yellow>%s<color=cyan> gh–p thµnh c´ng 1  <color=gold><Socola ß∆c Bi÷t Tas><color=green><enter><color=yellow>< Tπi Nguy÷t L∑o ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Socola Th≠Íng",tbProp={6,1,4482,1},nCount=5},
				{szName="Ti“n ßÂng",tbProp={4,417,1,1},nCount=1},

			},
		tbProduct = {szName="Thµnh Ph»m",tbProp={6,1,4483,1,1},nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy™n li÷u c«n : 5 socola th≠Íng + 1 xu Æ” gh–p thµnh socola Æ∆c bi÷t")
end 

function ghep10socola()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>ßπi hi÷p <color=yellow>%s<color=cyan> gh–p thµnh c´ng 10  <color=gold><Socola ß∆c Bi÷t Tas><color=green><enter><color=yellow>< Tπi Nguy÷t L∑o ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Socola Th≠Íng",tbProp={6,1,4482,1},nCount=50},
				{szName="Ti“n ßÂng",tbProp={4,417,1,1},nCount=10},

			},
		tbProduct = {szName="Thµnh Ph»m",tbProp={6,1,4483,1,1},nCount = 10,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy™n li÷u c«n : 5 socola th≠Íng + 1 xu Æ” gh–p thµnh 1 socola Æ∆c bi÷t")
end 


function ghep100socola()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>ßπi hi÷p <color=yellow>%s<color=cyan> gh–p thµnh c´ng 100  <color=gold><Socola ß∆c Bi÷t Tas><color=green><enter><color=yellow>< Tπi Nguy÷t L∑o ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Socola Th≠Íng",tbProp={6,1,4482,1},nCount=500},
				{szName="Ti“n ßÂng",tbProp={4,417,1,1},nCount=100},

			},
		tbProduct = {szName="Thµnh Ph»m",tbProp={6,1,4483,1,1},nCount = 100,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy™n li÷u c«n : 5 socola th≠Íng + 1 xu Æ” gh–p thµnh 1 socola Æ∆c bi÷t")
end 

