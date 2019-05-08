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
dofile("script/global/quanlygame/ductrangbi.lua")
	ThoRenHoangKim()
	return
end

function ThoRenHoangKim()
	tbOpt =
	{
		"<dec><npc>L�o ��y l� th� r�n gi�i nh�t l�ng n�y ng��i c�n l�o gi�p g� ko.",
                                           "L�c L�i Option Cho Trang B� HKMP/LocOptionHKOK",
	--"Gh�p Th�nh Trang S�c JXtinhVoLam/gheptrangsuc",
	--"Danh S�ch �p ��/danhsachFANH",
	--"N�ng C�p C�c Ph�m HKMP/MenuCucPham1",
	--"N�ng C�p Phi Phong/menuphiphong",
                      --"N�ng Ho�ng Kim �n/menuan",
                        --"Danh S�ch �p ��/epda",
                        "Nh�n T�n Th�/dsnhantanthu",




		--"N�ng C�p Ph�t S�ng HKMP/Make_Weapons",
		--"�p C�c ph�m ��nh Qu�c Y�u ��i/epcucphamyeudai",
		--"L�c ��nh Qu�c Y�u ��i - C�n Kh�n/loccucphamyeudai",





		--"Ta Mu�n Xoay L�i M�nh Ho�ng Kim/DoiHK",
		"R�p 100 M�nh �� Ph� Th�nh HKMP /luuyrapmanh",
		--"R� HKMP Th�nh 100 M�nh �� Ph� Xoay/PhanRaHK",
		--"Nh�n nguy�n li�u th� nghi�m t�nh n�ng \"v� kh� ph�t s�ng\"/VuKhiPhatQuang_Test",

		--"Nh�n V� Kh� HKMP de test/nhanvukhi",
                                         --  "L�c l�i thu�c t�nh trang b� HKMP/LocHKMPNo1",
                                           --"L�c L�i Option Cho Trang B� HKMP/LocOptionHKOK",
	--"N�ng Nhu T�nh Th�nh Ho�n M� Nhu T�nh/NCNhuTinh",
	--"L�c L�i Option CP Nhu T�nh/LOCNhuTinh",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end


function menuphiphong()
	tbOpt =
	{
		"<dec><npc>L�o ��y l� th� r�n gi�i nh�t l�ng n�y ng��i c�n l�o gi�p g� ko.",
		"Phi Phong L�ng V�n/phiphonglv",
		"Phi Phong Pha Qu�n/phiphongpq",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function danhsachFANH()
	tbOpt =
	{
		"<dec><npc>L�o ��y l� th� r�n gi�i nh�t l�ng n�y ng��i c�n l�o gi�p g� ko.",
		"R�p M�nh An Bang Ho�n M�/rapanbang",
		"R�p M�nh Nhu T�nh/rapnhutinh",
		--"R�p M�nh Hi�p C�t/raphiepcot",
		"R�p C�c Ph�m Nhu T�nh/rapcpnhutinh",
		"R�p C�c Ph�m C�n Kh�n/rapcpcankhon",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function epda()
	tbOpt =
	{
		"<dec><npc>L�o ��y l� th� r�n gi�i nh�t l�ng n�y ng��i c�n l�o gi�p g� ko.",
		"�� May M�n c�p 4/daychuyen",
		"�� C��ng H�a (c�p 4)/nhan1",
		--"�i�n Ho�ng Th�ch Ng�c B�i/ngocboi1",
		--"Huy�t Th�ch Gi�i Ch� /nhan2",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function rapcpnhutinh()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="�o nhu t�nh",tbProp={0,190},nQuality = 1,nCount = 2},
				{szName="�� C��ng H�a 1",tbProp={4,1676,1},nCount=50},
				{szName="�� C��ng H�a 2",tbProp={4,1677,1},nCount=50},
				{szName="�� C��ng H�a 3",tbProp={4,1678,1},nCount=50},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="T�i T�ng Kim",tbProp={6,1,4415,1},nCount=100},
				{szName="Xu",tbProp={4,417,1},nCount=500},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,541},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n : 2 �o nhu t�nh - �� c��ng h�a 1 2 3 m�i lo�i 50 - �� may m�n 1 2 3 m�i lo�i 200 - t�i t�ng kim 100 - xu 500")
end 

function phiphonglv()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng  <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=300},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=300},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=300},
				{szName="T�i T�ng Kim",tbProp={6,1,4415,1},nCount=50},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,544},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n : �� may m�n 1 2 3 m�i lo�i 300 - t�i t�ng kim 50 b�n s� ra ���c phi phong l�ng v�n")
end 

function phiphongpq()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng  <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Phi Phong Lang Van",tbProp={0,544},nQuality = 1,nCount = 1},
				{szName="�� qu�",tbProp={4,1688,1},nCount=200},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="T�i T�ng Kim",tbProp={6,1,4415,1},nCount=100},
				{szName="TTK",tbProp={6,1,22,1},nCount=20},
				{szName="VLMT",tbProp={6,1,26,1},nCount=20},



			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,545},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n :1 Phi Phong Lang van +  200 �� qu� + 200 �� may m�n 1 2 3 + 100 t�i T�ng Kim + 20 VLMT + 20 TTK")
end 

function rapcpcankhon()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="�� C��ng H�a 1",tbProp={4,1676,1},nCount=20},
				{szName="�� C��ng H�a 2",tbProp={4,1677,1},nCount=20},
				{szName="�� C��ng H�a 3",tbProp={4,1678,1},nCount=20},
				{szName="T�i T�ng Kim",tbProp={6,1,4415,1},nCount=100},
				{szName="Xu",tbProp={4,417,1},nCount=1000},
				{szName="M�nh C�n Kh�n 1",tbProp={4,1679,1},nCount=100},
				{szName="M�nh C�n Kh�n 2",tbProp={4,1680,1},nCount=100},
				{szName="M�nh C�n Kh�n 3",tbProp={4,1681,1},nCount=100},
				{szName="M�nh C�n Kh�n 4",tbProp={4,1682,1},nCount=100},
				{szName="M�nh C�n Kh�n 5",tbProp={4,1683,1},nCount=100},
				{szName="M�nh C�n Kh�n 6",tbProp={4,1684,1},nCount=100},
				{szName="M�nh C�n Kh�n 7",tbProp={4,1685,1},nCount=100},
				{szName="M�nh C�n Kh�n 8",tbProp={4,1686,1},nCount=100},
				{szName="M�nh C�n Kh�n 9",tbProp={4,1687,1},nCount=100},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,428},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u �p c�n kh�n gi�i ch� c�n : M�nh c�n kh�n 1 2 3 4 5 6 7 8 9 m�i lo�i 100 - t�i t�ng kim 100 - xu 1000 - �� c��ng h�a 1 2 3 m�i lo�i 20 ")
end 

function rapnhutinh()
	tbOpt =
	{
		"<dec><npc>L�o ��y l� th� r�n gi�i nh�t l�ng n�y ng��i c�n l�o gi�p g� ko.",
		"Nhu T�nh C�n Qu�c Ngh� Th��ng/aonhutinhmanh",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function raphiepcot()
	tbOpt =
	{
		"<dec><npc>L�o ��y l� th� r�n gi�i nh�t l�ng n�y ng��i c�n l�o gi�p g� ko.",
		"Hi�p C�t T�nh � k�t/hiepcotngocboi",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function epcucphamyeudai()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="�ai ��nh Qu�c Th��ng",tbProp={0,163},nQuality = 1,nCount = 5},
				{szName="M�nh 3 Huy�t Th�ch Ch�",tbProp={4,767,1},nCount=50},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=20},
				{szName="B�o R��ng HKMP",tbProp={6,1,4423,1},nCount=2},
				{szName="Xu",tbProp={4,417,1},nCount=100},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,407},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function loccucphamyeudai()
	tbOpt =
	{
		"<dec><npc>L�o ��y l� th� r�n gi�i nh�t l�ng n�y ng��i c�n l�o gi�p g� ko.",
		"L�c C�c Ph�m ��nh Qu�c Y�u ��i/loccucphamyeudai2",
		"L�c C�n Kh�n Gi�i Ch�/loccankhonchi",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function loccucphamyeudai2()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> l�c th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="�ai ��nh Qu�c CP",tbProp={0,407},nQuality = 1,nCount = 1},
				{szName="Xu",tbProp={4,417,1},nCount=30},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,407},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function loccankhonchi()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> l�c th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="C�n Kh�n Gi�i Ch�",tbProp={0,428},nQuality = 1,nCount = 1},
				{szName="Xu",tbProp={4,417,1},nCount=30},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,428},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function hiepcotngocboi()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> H�p th�nh c�ng <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ti�n ��ng",tbProp={4,417,1},nCount=10},
				{szName="M�nh 1",tbProp={4,771,1},nCount=1},
				{szName="M�nh 2",tbProp={4,772,1},nCount=1},
				{szName="M�nh 3",tbProp={4,773,1},nCount=1},
				{szName="M�nh 4 - 5 - 6",tbProp={4,774,1},nCount=1},
				{szName="M�nh 5",tbProp={4,775,1},nCount=1},
				{szName="M�nh 6",tbProp={4,776,1},nCount=1},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,189},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function aonhutinhmanh()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> H�p th�nh c�ng <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ti�n ��ng",tbProp={4,417,1},nCount=50},
				{szName="M�nh 1",tbProp={4,777,1},nCount=1},
				{szName="M�nh 2",tbProp={4,778,1},nCount=1},
				{szName="M�nh 3",tbProp={4,779,1},nCount=1},
				{szName="M�nh 4 - 5 - 6",tbProp={4,780,1},nCount=1},
				{szName="M�nh 5",tbProp={4,781,1},nCount=1},
				{szName="M�nh 6",tbProp={4,782,1},nCount=1},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,190},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function daychuyen()
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ti�n ��ng",tbProp={4,417,1,1},nCount=1},
				{szName="da mm 1",tbProp={4,1668,1,1},nCount=5},
				{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				{szName="da mm 3",tbProp={4,1670,1,1},nCount=5},
				{szName="t�i TK",tbProp={6,1,4415,1,0},nCount=1},
				--{szName="M�nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M�nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={4,1671,1,1},nQuality = 1,nCount = 1,nRate= 20,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function nhan1()
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ti�n ��ng",tbProp={4,417,1},nCount=1},
				{szName="CH 1",tbProp={4,1676,1},nCount=3},
				{szName="CH 2",tbProp={4,1677,1},nCount=3},
				{szName="CH 3",tbProp={4,1678,1},nCount=3},
				{szName="T�i TK",tbProp={6,1,4415,1,0},nCount=1},
				--{szName="M�nh 5",tbProp={4,757,1},nCount=1},
				--{szName="M�nh 6",tbProp={4,758,1},nCount=1},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={4,1689,1},nQuality = 1,nCount = 1,nRate= 20,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function ngocboi1()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> H�p th�nh c�ng <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ti�n ��ng",tbProp={4,417,1},nCount=10},
				{szName="M�nh 1",tbProp={4,759,1},nCount=1},
				{szName="M�nh 2",tbProp={4,760,1},nCount=1},
				{szName="M�nh 3",tbProp={4,761,1},nCount=1},
				{szName="M�nh 4 -5 - 6",tbProp={4,762,1},nCount=1},
				{szName="M�nh 5",tbProp={4,763,1},nCount=1},
				{szName="M�nh 6",tbProp={4,764,1},nCount=1},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,426},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function nhan2()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> H�p th�nh c�ng <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ti�n ��ng",tbProp={4,417,1},nCount=10},
				{szName="M�nh 1",tbProp={4,765,1},nCount=1},
				{szName="M�nh 2",tbProp={4,766,1},nCount=1},
				{szName="M�nh 3",tbProp={4,767,1},nCount=1},
				{szName="M�nh 4 -5 - 6",tbProp={4,768,1},nCount=1},
				{szName="M�nh 5",tbProp={4,769,1},nCount=1},
				{szName="M�nh 6",tbProp={4,770,1},nCount=1},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,427},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function NCNhuTinh()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> N�ng C�p �o nhu t�nh th�nh <color=gold><%s><color=green><enter><color=yellow>< T�i Th� Luy�n Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="�o Nhu T�nh",tbProp={0,190},nQuality = 1,nCount = 1},
				{szName="VLMT",tbProp={6,1,22,1},nCount=50},
				{szName="TTK",tbProp={6,1,26,1},nCount=50},
				{szName="T�i T�ng Kim",tbProp={6,1,4415,1},nCount=100},
				{szName="Kim C��ng",tbProp={4,1667,1},nCount=15},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,541},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function LOCNhuTinh()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> L�c th�nh c�ng thu�c t�nh <color=gold><%s><color=green><enter><color=yellow>< T�i Th� Luy�n Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="CP Nhu T�nh",tbProp={0,541},nQuality = 1,nCount = 1},
				{szName="T�i T�ng Kim",tbProp={6,1,4415,1},nCount=10},
				{szName="Xu",tbProp={4,417,1},nCount=50},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,541},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 



function luuyrapmanh()
	tbOpt =
	{
		"<dec><npc>L�u � khi h�p t� 100 m�nh ra HKMP t��ng �ng s� nh�n ���c 1 trnag b� HKMP v�nh vi�n r�t c� gi� trޭ",
                                                       "Ta �� ��c hi�u r�i ta mu�n r�p HKMP/EpHoangKim",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end






function no()
end



function Make_Weapons()
	--szDescription = format("+ 1 T� Th�y Tinh\n+ 1 L�c Th�y Tinh\n+ 1 Lam Th�y Tinh\n+ 50 Ti�n ��ng\n=> Trang b� ��p long lanh.")
	szDescription = format("+ 100 Ti�n ��ng\n=> Trang b� ph�t s�ng.")

	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_MakeWeapons", "no", 1)
		--GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_MakeWeapons(nCount)
	if nCount == 0 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "no")
	end
	
	local tbDatabase = 
	{
		tbWeapons = {},
		tbItem = {},
		tbStone1 = {},
		tbStone2 = {},
		tbStone3 = {},
	}
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		szItemName = GetItemName(nItemIndex)
		nItemTime = ITEM_GetExpiredTime(nItemIndex)
		nQuality = GetItemQuality(nItemIndex)
		local tbMagicItem =
		{
			[4] =
			{
				[238] = 1,
				[239] = 1,
				[240] = 1,
                                                                                                                                                                                                                                                                                                                                          [417] = 1,
			},

		}
		
		local nIndex = 0
		if nG == 4 then
			nIndex = nD
		end

		if nG == 4 then
			if nIndex == 238 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone1, nItemIndex)
				end
			elseif nIndex == 239 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone2, nItemIndex)
				end
			elseif nIndex == 240 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone3, nItemIndex)
				end
			end
		end

		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
					return
				end
			 else
				Talk(1, "no", "Th�t th� l�i! Kh� n�ng c�a ta ca gi�i h�n, kh�ng th� n�ng c�p <color=red>trang b�<color> n�y ���c.")
				return
			end
		end
		
		local TAB_WEAPONS =
		{
			["0,0,0"] = {},
			["0,0,1"] = {},
			["0,0,2"] = {},
			["0,0,3"] = {},
			["0,0,4"] = {},
			["0,0,5"] = {},
			["0,1,0"] = {},
			["0,1,1"] = {},
			["0,1,2"] = {},
		}
		local tbIndex = format("%d,%d,%d", nG, nD, nP)
		if TAB_WEAPONS[tbIndex] then
			tinsert(tbDatabase.tbWeapons, nItemIndex)
		end
		
		local nFaction = GetLastFactionNumber()
		nRandomAccess = random(1,100)
		nRandomRes = random(1, 100)
		nSucces = 1
		if nG == 0 and nD == 0 and nP == 0 then
			if nFaction == 8 then  ----------------------------------------------------------Kiem Vo Dang
				if nRandomAccess > 1 then
					nIndexRes = 59
				 else
					nSucces = 0
				end
			 elseif nFaction == 4 then ----------------------------------------------------------Kiem Nga Mi
				if nRandomAccess > 1 then
					nIndexRes = 57
				 else
					nSucces = 0
				end
			 elseif nFaction == 9 then ----------------------------------------------------------Kiem Con Lon
				if nRandomAccess > 1 then
					nIndexRes = 58
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 0 and nRandomRes < 33 then
					if nRandomAccess > 1 then
						nIndexRes = 57
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 33 and nRandomRes < 66 then
					if nRandomAccess > 1 then
						nIndexRes = 58
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 66 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 59
					 else
						nSucces = 0
					end
				end
			 end
		                                                                                   elseif nG == 0 and nD == 0 and nP == 1 then
			if nFaction == 0 or nFaction == 1 then
				if nRandomAccess > 1 then
					nIndexRes = 52
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 3 then ----------------------------------------------------------Dao Ngu Doc
				if nRandomAccess > 1 then
					nIndexRes = 53
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 5 then   ----------------------------------------------------------Dao Thuy Yen
				if nRandomAccess > 1 then
					nIndexRes = 54
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 9 then   ----------------------------------------------------------Dao Con Lon
				if nRandomAccess > 1 then
					nIndexRes = 56
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 25 then
					if nRandomAccess > 1 then
						nIndexRes = 52
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 25 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 53
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 50 and nRandomRes < 75 then
					if nRandomAccess > 1 then
						nIndexRes = 54
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 75 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 56
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		                                                                                  elseif nG == 0 and nD == 0 and nP == 2 then
			if nFaction == 0 then -------------------------------------------------Bong Thieu Lam
				if nRandomAccess > 1 then
					nIndexRes = 40
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 6 then -------------------------------------------------Bong Cai Bang
				if nRandomAccess > 1 then
					nIndexRes = 41
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 40
						nSucces = 1
					 else
						nSucces = 0
						end
				 elseif nRandomRes >= 50 and nRandomRes < 100 then
					if nRandomAccess > 1 then
						nIndexRes = 41
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		                                                                                  elseif nG == 0 and nD == 0 and nP == 3 then
			if nFaction == 7 then
				if nRandomAccess > 1 then
					nIndexRes = 51
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 1 then
				if nRandomAccess > 1 then
					nIndexRes = 50
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 51
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 50 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 50
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		 elseif nG == 0 and nD == 0 and nP == 4 then
			if nRandomAccess > 1 then
			nIndexRes = 60
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 0 and nP == 5 then
			if nRandomAccess > 1 then
				nIndexRes = 61
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 0 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 1 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 2 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		end
	end
	

	if nItemTime ~= 0 then
		Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng��i ch�a ��t v� kh� c�n n�ng c�p v�o � tr�ng")
		return
	end
	
	--local nCountStone1 = getn(tbDatabase.tbStone1)
	--if nCountStone1 ~= 1 then
		--Talk(1, "no", "C�n c� 1 vi�n <color=red>Lam Th�y Tinh<color> m�i c� th� n�ng c�p.")
		--return
	--end
	
	--local nCountStone2 = getn(tbDatabase.tbStone2)
	--if nCountStone2 ~= 1 then
		--Talk(1, "no", "C�n c� 1 vi�n <color=red>T� Th�y Tinh<color> m�i c� th� n�ng c�p.")
		--return
	--end
	
	--local nCountStone3 = getn(tbDatabase.tbStone3)
	--if nCountStone3 ~= 1 then
		--Talk(1, "no", "C�n c� 1 vi�n <color=red>L�c Th�y Tinh<color> m�i c� th� n�ng c�p.")
		--return
	--end

	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 100) then
		Talk(1, "no", "C�n c� 100 <color=red>Ti�n ��ng<color> m�i c� th� n�ng c�p.")
		return
	end
	--local nIDX = GetGiveItemUnit(n)
	--local nQuality = GetItemQuality(nIDX)
	--if nQuality ~= 1 then
		--Talk(1, "", "Trang b� ng��i ��t v�o kh�ng ph�i l� trang b� ho�ng kim")
		--return
	--end

	
	--RemoveItemByIndex(tbDatabase.tbStone1[1])
	--RemoveItemByIndex(tbDatabase.tbStone2[1])
	--RemoveItemByIndex(tbDatabase.tbStone3[1])
	RemoveItemByIndex(tbDatabase.tbItem[1])
                                                                                  ConsumeEquiproomItem(100,4,417,1,1)

	if nSucces == 0 then
		Msg2Player("R�t ti�c! Th�t b�i l� chuy�n b�nh th��ng c�a binh gia,huynh ��i ��ng n�n ch� h�y c� g�ng l�n n�a s� ���c nh� �.")
	elseif nSucces == 1 then
		_Weapons(tbDatabase.tbWeapons[1], nIndexRes)
		Msg2Player("<color=yellow>Ch�c m�ng b�n �� n�ng c�p th�nh c�ng v� kh� ph�t quang.")
                                                                                                                                                                     Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> �� n�ng c�p th�nh c�ng v� kh�<color=green> Ph�t S�ng!")
                                                                                                                                                                     SaveNow();
                                                                                   local epphatsang = "script/global/bil4i3n/bil4i3n_log/vukhiphatsang.log"
	local moepphatsang = openfile(epphatsang  , "a");
	--write(moepphatsang,format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] N�ng c�p th�nh c�ng v� kh� ph�t s�ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	 write(moepphatsang, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Ep Thanh Cong Vu Khi Phat Sang\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(moepphatsang)
	else
		print("Bug tinh nang nang cap Vu Khi phat quang")
	end
end

function _Weapons(nItemIndex, nIndexRes)
	SetItemNewFeature(nItemIndex, nIndexRes)
	print(nIndexRes)
end

function no()
end

function VuKhiPhatQuang_Test()
	AddItem(4,240,1,0,0,0)
	AddItem(4,238,1,0,0,0)
	AddItem(4,239,1,0,0,0)
	--AddItem(4,417,1,0,0,0)
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={4,417,1,0,0,0},nCount=50,},}, "test", 1); 

end

function nhanvukhi()
--tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,11},nCount=1,nQuality = 1,nExpiredTime=1440},}, "test", 1); 
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,16},nCount=1,nQuality = 1,},}, "test", 1); 

end



--------------------------hkmp han su dung-------------------------

function LocOptionHKOK()
	local title = "L�c Trang b� HKMP"
	g_GiveItemUI(title, "NL c�n 30xu + 30 t�i t�ng kim + 30 �� Qu� �� l�c ra option m�i ", {GiveUIOK4}, nil, nil)   --- 100 ti�n ��ng l�u � 100 ti�n ��ng ph�i �� ngo�i h�nh trang
end


--------------��nh ngh�a b�ng trang b� HKMP tbHKMP : th�m v�o nhi�u d�ng t� id th�p t�i cao

tbHKMP = {

		[1]={	
			{"M�ng Long Ch�nh H�ng T�ng M�o",1}, 
			{"M�ng Long Kim Ti Ch�nh H�ng C� Sa",2},
			{"M�ng Long Huy�n Ti Ph�t ��i",3},
			{"M�ng Long Ph�t Ph�p Huy�n B�i",4},
			{"M�ng Long ��t Ma T�ng h�i",5},
			{"Ph�c Ma T� Kim C�n",6},
			{"Ph�c Ma Huy�n Ho�ng C� Sa",7},
			{"Ph�c Ma � Kim Nhuy�n �i�u",8},
			{"Ph�c Ma Ph�t T�m Nhuy�n Kh�u",9},
			{"Ph�c Ma Ph� �� T�ng h�i",10},
{"T� Kh�ng Gi�ng Ma Gi�i �ao",11},
{"T� Kh�ng T� Kim C� Sa",12},
{"T� Kh�ng H� ph�p Y�u ��i",13},
{"T� Kh�ng Nhuy�n B� H� Uy�n",14},
{"T� Kh�ng Gi�i Lu�t Ph�p gi�i",15},
{"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",16},
{"H�m Thi�n V� Th�n T��ng Kim Gi�p",17},
{"H�m Thi�n Uy V� Th�c y�u ��i",18},
{"H�m Thi�n H� ��u Kh�n Th�c Uy�n",19},
{"H�m Thi�n Th�a Long Chi�n Ngoa",20},
{"K� Nghi�p B�n L�i To�n Long th��ng",21},
{"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",22},
{"K� Nghi�p B�ch H� V� Song kh�u",23},
{"K� Nghi�p H�aV�n K� L�n Th� ",24},
{"K� Nghi�p Chu T��c L�ng V�n Ngoa",25},
{"Ng� Long L��ng Ng�n B�o �ao",26},
{"Ng� Long Chi�n Th�n Phi Qu�i gi�p",27},
{"Ng� Long Thi�n M�n Th�c Y�u ho�n",28},
{"Ng� Long T�n Phong H� y�n",29},
{"Ng� Long Tuy�t M�nh Ch� ho�n",30},
{"V� Gian � Thi�n Ki�m",31},
{"V� Gian Thanh Phong Truy Y",32},
{"V� Gian Ph�t V�n Ti ��i",33},
{"V� Gian C�m V�n H� Uy�n",34},
{"V� Gian B�ch Ng�c B�n Ch� ",35},
{"V� Ma Ma Ni qu�n",36},
{"V� Ma T� Kh�m C� Sa",37},
{"V� Ma B�ng Tinh Ch� Ho�n",38},
{"V� Ma T�y T��ng Ng�c Kh�u ",39},
{"V� Ma H�ng Truy Nhuy�n Th�p h�i",40},
{"V� Tr�n Ng�c N� T� T�m qu�n",41},
{"V� Tr�n Thanh T�m H��ng Thi�n Ch�u",42},
{"V� Tr�n T� Bi Ng�c Ban Ch� ",43},
{"V� Tr�n Ph�t T�m T� H�u Y�u Ph�i",44},
{"V� Tr�n Ph�t Quang Ch� Ho�n",45},
{"T� Ho�ng Ph�ng Nghi �ao",46},
{"T� Ho�ng Tu� T�m Khinh Sa Y",47},
{"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",48},
{"T� Ho�ng B�ng Tung C�m uy�n",49},
{"T� Ho�ng Th�y Ng�c Ch� Ho�n",50},
{"B�ch H�i Uy�n ��ng Li�n Ho�n �ao",51},
{"B�ch H�i Ho�n Ch�u V� Li�n",52},
{"B�ch H�i H�ng Linh Kim Ti ��i",53},
{"B�ch H�i H�ng L�ng Ba",54},
{"B�ch H�i Khi�n T� Ch� ho�n",55},
{"U Lung Kim X� Ph�t ��i",56},
{"U Lung X�ch Y�t M�t trang",57},
{"U Lung Thanh Ng� Tri�n y�u",58},
{"U Lung Ng�n Th�m H� Uy�n",59},
{"U Lung M�c Th� Nhuy�n L� ",60},
{"Minh �o T� S�t ��c Nh�n",61},
{"Minh �o U ��c �m Y",62},
{"Minh �o ��c Y�t Ch� Ho�n",63},
{"Minh �o H� C�t H� uy�n",64},
{"Minh �o Song Ho�n X� H�i",65},
{"Ch� Ph��c Ph� gi�p ��u ho�n",66},
{"Ch� Ph��c Di�t L�i C�nh Ph� ",67},
{"Ch� Ph��c U �o Ch� Ho�n",68},
{"Ch� Ph��c Xuy�n T�m ��c Uy�n",69},
{"Ch� Ph��c B�ng H�a Th�c C�t Ngoa",70},
{"B�ng H�n ��n Ch� Phi �ao",71},
{"B�ng H�n Huy�n Y Th�c Gi�p",72},
{"B�ng H�n T�m Ti�n Y�u Kh�u",73},
{"B�ng H�n Huy�n Thi�n B�ng H�a B�i",74},
{"B�ng H�n Nguy�t �nh Ngoa",75},
{"Thi�n Quang Hoa V� M�n Thi�n",76},
{"Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ",77},
{"Thi�n Quang S�m La Th�c ��i",78},
{"Thi�n Quang Song B�o H�n Thi�t Tr�c",79},
{"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",80},
{"S�m Hoang Phi Tinh �o�t H�n",81},
{"S�m Hoang KimTi�n Li�n Ho�n Gi�p",82},
{"S�m Hoang H�n Gi�o Y�u Th�c",83},
{"S�m Hoang Huy�n Thi�t T��ng Ng�c B�i",84},
{"S�m Hoang Tinh V�n Phi L� ",85},
{"��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n",86},
{"��a Ph�ch H�c Di�m Xung Thi�n Li�n",87},
{"��a Ph�ch T�ch L�ch L�i H�a Gi�i",88},
{"��a Ph�ch Kh�u T�m tr�c",89},
{"��a Ph�ch ��a H�nh Thi�n L� Ngoa",90},
{"��ng C�u Phi Long ��u ho�n",91},
{"��ng C�u Gi�ng Long C�i Y",92},
{"��ng C�u Ti�m Long Y�u ��i",93},
{"��ng C�u Kh�ng Long H� Uy�n",94},
{"��ng C�u Ki�n Long Ban Ch� ",95},
{"��ch Kh�i L�c Ng�c Tr��ng",96},
{"��ch Kh�i C�u ��i C�i Y",97},
{"��ch Kh�i Tri�n M�ng y�u ��i",98},
{"��ch Kh�i C�u T�ch B� H� uy�n",99},
{"��ch Kh�i Th�o Gian Th�ch gi�i",100},
{"Ma S�t Qu� C�c U Minh Th��ng",101},
{"Ma S�t T�n D��ng �nh Huy�t Gi�p",102},
{"Ma S�t X�ch K� T�a Y�u Kh�u",103},
{"Ma S�t C� H�a Li�u Thi�n uy�n",104},
{"Ma S�t V�n Long Th� Ch�u gi�i",105},
{"Ma Ho�ng Kim Gi�p Kh�i",106},
{"Ma Ho�ng �n Xu�t H� H�ng Khuy�n",107},
{"Ma Ho�ng Kh� C�c Th�c y�u ��i",108},
{"Ma Ho�ng Huy�t Y Th� Tr�c",109},
{"Ma Ho�ng ��ng ��p Ngoa",110},
{"Ma Th� Li�t Di�m Qu�n Mi�n",111},
{"Ma Th� L� Ma Ph� T�m Li�n",112},
{"Ma Th� Nghi�p H�a U Minh Gi�i",113},
{"Ma Th� Huy�t Ng�c Th�t S�t B�i",114},
{"Ma Th� s�n  H�i Phi H�ng L� ",115},
{"L�ng Nh�c Th�i C�c Ki�m",116},
{"L�ng Nh�c V� Ng� ��o b�o",117},
{"L�ng Nh�c N� L�i Gi�i",118},
{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",119},
{"L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",120},
{"C�p Phong Ch�n V� Ki�m",121},
{"C�p Phong Tam Thanh Ph� ",122},
{"C�p Phong Huy�n Ti Tam �o�n c�m",123},
{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",124},
{"C�p Phong Thanh T�ng Ph�p gi�i",125},
{"S��ng Tinh Thi�n Ni�n H�n Thi�t",126},
{"S��ng Tinh Ng�o S��ng ��o b�o",127},
{"S��ng Tinh Thanh Phong L� ��i",128},
{"S��ng Tinh Thi�n Tinh B�ng Tinh th� ",129},
{"S��ng Tinh Phong B�o ch� ho�n",130},
{"L�i Khung H�n Tung B�ng B�ch quan",131},
{"L�i Khung Thi�n ��a H� ph� ",132},
{"L�i Khung Phong L�i Thanh C�m ��i",133},
{"L�i Khung Linh Ng�c U�n L�i",134},
{"L�i Khung C�u Thi�n D�n L�i gi�i",135},
{"V� �o B�c Minh ��o qu�n",136},
{"V� �o Ki B�n ph� ch� ",137},
{"V� �o Th�c T�m ch� ho�n",138},
{"V� �o Thanh �nh Huy�n Ng�c B�i",139},
{"V� �o Tung Phong Tuy�t �nh ngoa",140},


},
}

function GiveUIOK4(putCount) --ep phi phong 9
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o trang b� HKMP")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
		return
	end	
	local ts1 = ITEM_GetExpiredTime(itemIndex) -- timestamp: thoi gian tin = s tu 1/1/1970
	--local ts2 = GetLocalTime()
	--local t = ts1 - ts2
	--  local ntime = t/60 
	--print(ts1,ntime)
	--if (t >0) then
		
		--1,14,20,34,40,49,53,78,91,99,111,119,124,129
		local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local hkmpTable = tbHKMP[1]
		local minId = hkmpTable[1][2]
		local maxId = hkmpTable[3][2]   --- d�y cu�i c�ng c�a bant tbHKMP ��nh ngh�a � tr�n			
		if (goldEquipIndex < 1) or (goldEquipIndex > 140) or (ts1 >0) then 
			Talk(1,"", "Xin vui l�ng ��t v�o 1 trang b� HKMP v� trang b� ph�i kh�ng c� h�n s� d�ng")
			return
		end
	local nSilverCount0 = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount0 < 30) then
		Talk(1, "no", "C�n c� 30 <color=red>Ti�n ��ng<color> �� ngo�i h�nh trang m�i c� th� l�c trang b�.")
		return
		end
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4415,1) ;
	if(nSilverCount1 < 30) then
		Talk(1, "no", "C�n c� 30 <color=red>T�ng Kim T�ch L�y Bao<color> �� ngo�i h�nh trang m�i c� th� l�c trang b� .")
		return
		end
                       local nSilverCount1 = CalcEquiproomItemCount(4,1688,1,1) ;
	if(nSilverCount1 < 30) then
		Talk(1, "no", "C�n c� 30 <color=red>T�ng Kim T�ch L�y Bao<color> �� ngo�i h�nh trang m�i c� th� l�c trang b� .")
		return
		end

	
		if (RemoveItemByIndex(itemIndex) == 1) then
                                                                                   tenhk = tbHKMP[1][goldEquipIndex][1] 
			local requireIngradent = CalcEquiproomItemCount(4, 417, 1, -1)
			local ndxit = AddGoldItem(0, goldEquipIndex )
			local rate = CalcEquiproomItemCount(4, 417, 1, -1); 
			if (rate >= 20) then
			ConsumeEquiproomItem(30, 4, 417, 1, 1)
			ConsumeEquiproomItem(30, 6, 1, 4415, 1)
                                                                        ConsumeEquiproomItem(30, 4, 1688, 1, 1)
				--ITEM_SetExpiredTime(ndxit,ntime)
				SyncItem(ndxit);
Msg2SubWorld("<pic=7>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> l�c l�i option trang b� <color=gold>"..tenhk.."<color> th�nh c�ng <color=yellow>T�i NPC Th� R�n.")
				else
		Talk(1, "", "Kh�ng �� nguy�n li�u xin h�y ki�m tra l�i.")
		return
		end
	else
		Talk(1,"", "Trang b� kh�ng c� trong danh s�ch nguy�n li�u kh�ng ��ng")
		return
	end
end





-------------------------------------

function logExchangeItem(gradientItem, gradientnumber, item) 
	local account = GetAccount()
	local name = GetName()
	local row = {account, name, gradientItem, gradientnumber, item}
	local fileName = "logdoido_.txt"
	local tbDataFromFile = tbVngLib_File:TableFromFile("dulieu/",fileName, {"*w", "*w", "*n", "*n", "*n"})
	local tbData = {}
	tbData[1] = {"Account", "Character", "Gradient", "Grandient Number", "Item"}
	if (tbDataFromFile == nil) then			
		tbData[2] = row
	else		
		for i = 1, getn(tbDataFromFile) do
			tbData[1 + i] = tbDataFromFile[i]
		end
		tbData[getn(tbData) + 1]  = row
	end
	tbVngLib_File:Table2File("dulieu/", fileName, "w", tbData)	
end




----=====================================
tbListIDItem  =
	{
		[1] = {1497,1},
		[2] = {1498,2},
		[3] = {1499,3},
		[4] = {1500,4},
		[5] = {1501,5},
		[6] = {1502,6},
		[7] = {1503,7},
		[8] = {1504,8},
		[9] = {1505,9},
		[10] = {1506,10},
		[11] = {1507,11},
		[12] = {1508,12},
		[13] = {1509,13},
		[14] = {1510,14},
		[15] = {1511,15},
		[16] = {1512,16},
		[17] = {1513,17},
		[18] = {1514,18},
		[19] = {1515,19},
		[20] = {1516,20},
		[21] = {1517,21},
		[22] = {1518,22},
		[23] = {1519,23},
		[24] = {1520,24},
		[25] = {1521,25},
		[26] = {1522,26},
		[27] = {1523,27},
		[28] = {1524,28},
		[29] = {1525,29},
		[30] = {1526,30},
		[31] = {1527,31},
		[32] = {1528,32},
		[33] = {1529,33},
		[34] = {1530,34},
		[35] = {1531,35},
		[36] = {1532,36},
		[37] = {1533,37},
		[38] = {1534,38},
		[39] = {1535,39},
		[40] = {1536,40},
		[41] = {1537,41},
		[42] = {1538,42},
		[43] = {1539,43},
		[44] = {1540,44},
		[45] = {1541,45},
		[46] = {1542,46},
		[47] = {1543,47},
		[48] = {1544,48},
		[49] = {1545,49},
		[50] = {1546,50},
		[51] = {1547,51},
		[52] = {1548,52},
		[53] = {1549,53},
		[54] = {1550,54},
		[55] = {1551,55},
		[56] = {1552,56},
		[57] = {1553,57},
		[58] = {1554,58},
		[59] = {1555,59},
		[60] = {1556,60},
		[61] = {1557,61},
		[62] = {1558,62},
		[63] = {1559,63},
		[64] = {1560,64},
		[65] = {1561,65},
		[66] = {1562,66},
		[67] = {1563,67},
		[68] = {1564,68},
		[69] = {1565,69},
		[70] = {1566,70},
		[71] = {1567,71},
		[72] = {1568,72},
		[73] = {1569,73},
		[74] = {1570,74},
		[75] = {1571,75},
		[76] = {1572,76},
		[77] = {1573,77},
		[78] = {1574,78},
		[79] = {1575,79},
		[80] = {1576,80},
		[81] = {1577,81},
		[82] = {1578,82},
		[83] = {1579,83},
		[84] = {1580,84},
		[85] = {1581,85},
		[86] = {1582,86},
		[87] = {1583,87},
		[88] = {1584,88},
		[89] = {1585,89},
		[90] = {1586,90},
		[91] = {1587,91},
		[92] = {1588,92},
		[93] = {1589,93},
		[94] = {1590,94},
		[95] = {1591,95},
		[96] = {1592,96},
		[97] = {1593,97},
		[98] = {1594,98},
		[99] = {1595,99},
		[100] = {1596,100},
		[101] = {1597,101},
		[102] = {1598,102},
		[103] = {1599,103},
		[104] = {1600,104},
		[105] = {1601,105},
		[106] = {1602,106},
		[107] = {1603,107},
		[108] = {1604,108},
		[109] = {1605,109},
		[110] = {1606,110},
		[111] = {1607,111},
		[112] = {1608,112},
		[113] = {1609,113},
		[114] = {1610,114},
		[115] = {1611,115},
		[116] = {1612,116},
		[117] = {1613,117},
		[118] = {1614,118},
		[119] = {1615,119},
		[120] = {1616,120},
		[121] = {1617,121},
		[122] = {1618,122},
		[123] = {1619,123},
		[124] = {1620,124},
		[125] = {1621,125},
		[126] = {1622,126},
		[127] = {1623,127},
		[128] = {1624,128},
		[129] = {1625,129},
		[130] = {1626,130},
		[131] = {1627,131},
		[132] = {1628,132},
		[133] = {1629,133},
		[134] = {1630,134},
		[135] = {1631,135},
		[136] = {1632,136},
		[137] = {1633,137},
		[138] = {1634,138},
		[139] = {1635,139},
		[140] = {1636,140},
		[141] = {1637,159},
		[142] = {1638,160},
		[143] = {1639,161},
		[144] = {1640,162},
		[145] = {1641,163},
		[146] = {1642,164},
		[147] = {1643,165},
		[148] = {1644,166},
		[149] = {1645,167},
		[150] = {1646,190},
		[151] = {1647,191},
		[152] = {1648,192},
		[153] = {1649,193},
		[154] = {1650,194},
		[155] = {1651,195},
		[156] = {1652,196},
		[157] = {1653,197},
		[158] = {1654,198},
		[159] = {1655,199},
		[160] = {1656,200},
		[161] = {1657,201},
		[162] = {1658,202},
		[163] = {1659,203},
}

function DoiHK()
	GiveItemUI("Xoay M�nh Ho�ng Kim","Nh�ng nguy�n li�u c�n:\n\n+ 1 �� ph� ho�ng kim ng�u nhi�n\n+ 1 Ti�n ��ng � h�nh trang","TienHanhDoiHK")
end


function TienHanhDoiHK(nCount)
	local nCountXU = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCountXU < 1) then
		Say("<color=green>Th� R�n:<color> Kh�ch quan ch�a �� ti�n! Khi n�o c� �� ti�n h�y quay l�i.",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit( i )		--get itemindex
		local nG, nD,nP = GetItemProp(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		local nCountStack = GetItemStackCount(nItemIndex) or 1;

		if nG ~= 4 then
			Say("<color=orange>��y kh�ng ph�i �� ph� ho�ng kim haha l�a ta �..",0);
			return
		end
		if   nD < %tbListIDItem[1][1] or nD > %tbListIDItem[163][1] then
			Say("<color=orange>��y l� v�t ph�m gi ? l� qu� ta ch�a t�ng th�y",0);
			return
		end
	
		if nCountStack ~= 1 then
			Say("<color=orange>S� l��ng m�nh Ho�ng Kim kh�ng ��ng m�i l�n xoay ch� cho ph�p 1 m�nh",0);
			return
		end


	end
	ConsumeEquiproomItem(1, 4, 417, 1, 1)
	nItemIndex = GetGiveItemUnit(1)
               local nTen=GetItemName(nItemIndex)
	k = RemoveItemByIndex( nItemIndex )
	if ( k ~= 1 ) then
		Say("Chuy�n g� v�y, Ch�a b� v�t ph�m v�o m�?",0)
		return 0
	end
tbitem1  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�t ��i", tbProp = {4,1499,1,1,0,0}, nCount = 1},
	}
tbitem2  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - L�i Khung Linh Ng�c U�n L�i", tbProp = {4,1630,1,1,0,0}, nCount = 1},
	}
tbitem3  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - ��ng C�u Gi�ng Long C�i Y", tbProp = {4,1588,1,1,0,0}, nCount = 1},
	}
tbitem4  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - M�ng Long Ch�nh H�ng T�ng M�o", tbProp = {4,1497,1,1,0,0}, nCount = 1},
	}
tbitem5  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i", tbProp = {4,1518,1,1,0,0}, nCount = 1},
	}
tbitem6  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Ph�c Ma � Kim Nhuy�n �i�u", tbProp = {4,1504,1,1,0,0}, nCount = 1},
	}
tbitem7  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p", tbProp = {4,1513,1,1,0,0}, nCount = 1},
	}
tbitem8 =
	{
		[1]={szName = "�� ph� Ho�ng Kim - T� Kh�ng H� Ph�p Y�u ��i", tbProp = {4,1509,1,1,0,0}, nCount = 1},
	}
tbitem9  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i", tbProp = {4,1549,1,1,0,0}, nCount = 1},
	}
tbitem10  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - T� Kh�ng Nhuy�n B� H� Uy�n", tbProp = {4,1510,1,1,0,0}, nCount = 1},
	}
tbitem11  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa", tbProp = {4,1516,1,1,0,0}, nCount = 1},
	}
tbitem12  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� Gian Ph�t V�n Ti ��i", tbProp = {4,1529,1,1,0,0}, nCount = 1},
	}
tbitem13  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Ng� Long T�n Phong H� y�n", tbProp = {4,1525,1,1,0,0}, nCount = 1},
	}
tbitem14  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� Gian C�m V�n H� Uy�n", tbProp = {4,1530,1,1,0,0}, nCount = 1},
	}
tbitem15  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n", tbProp = {4,1537,1,1,0,0}, nCount = 1},
	}
tbitem16  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� Ma H�ng Truy Nhuy�n Th�p h�i", tbProp = {4,1536,1,1,0,0}, nCount = 1},
	}
tbitem17  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u", tbProp = {4,1538,1,1,0,0}, nCount = 1},
	}
tbitem18  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� Ma Ma Ni qu�n", tbProp = {4,1532,1,1,0,0}, nCount = 1},
	}
tbitem19  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i", tbProp = {4,1544,1,1,0,0}, nCount = 1},
	}
tbitem20  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - U Lung X�ch Y�t M�t trang", tbProp = {4,1553,1,1,0,0}, nCount = 1},
	}
tbitem21  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - T� Ho�ng B�ng Tung C�m uy�n", tbProp = {4,1545,1,1,0,0}, nCount = 1},
	}
tbitem22  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - U Lung M�c Th� Nhuy�n L�", tbProp = {4,1556,1,1,0,0}, nCount = 1},
	}
tbitem23  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - B�ch H�i Ho�n Ch�u V� Li�n", tbProp = {4,1548,1,1,0,0}, nCount = 1},
	}
tbitem24  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Minh �o U ��c �m Y", tbProp = {4,1558,1,1,0,0}, nCount = 1},
	}
tbitem25  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - B�ch H�i H�ng L�ng Ba", tbProp = {4,1550,1,1,0,0}, nCount = 1},
	}
tbitem26  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - B�ng H�n Huy�n Y Th�c Gi�p", tbProp = {4,1568,1,1,0,0}, nCount = 1},
	}
tbitem27  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Minh �o H� C�t H� uy�n", tbProp = {4,1560,1,1,0,0}, nCount = 1},
	}
tbitem28  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Ch� Ph��c Di�t L�i C�nh Ph�", tbProp = {4,1563,1,1,0,0}, nCount = 1},
	}
tbitem29  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - ��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n", tbProp = {4,1582,1,1,0,0}, nCount = 1},
	}
tbitem30  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - B�ng H�n T�m Ti�n Y�u Kh�u", tbProp = {4,1569,1,1,0,0}, nCount = 1},
	}
tbitem31  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i", tbProp = {4,1635,1,1,0,0}, nCount = 1},
	}
tbitem32  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Thi�n Quang ��nh T�m Ng�ng Th�n Ph�", tbProp = {4,1573,1,1,0,0}, nCount = 1},
	}
tbitem33  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - L�i Khung Thi�n ��a H� ph�", tbProp = {4,1628,1,1,0,0}, nCount = 1},
	}
tbitem34  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Ph�c Ma Ph� �� T�ng h�i", tbProp = {4,1506,1,1,0,0}, nCount = 1},
	}
tbitem35  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Ma Ho�ng �n Xu�t H� H�ng Khuy�n", tbProp = {4,1603,1,1,0,0}, nCount = 1},
	}
tbitem36  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Thi�n Quang S�m La Th�c ��i", tbProp = {4,1574,1,1,0,0}, nCount = 1},
	}
tbitem37  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - ��ch Kh�i C�u T�ch B� H� uy�n", tbProp = {4,1595,1,1,0,0}, nCount = 1},
	}
tbitem38  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Thi�n Quang Song B�o H�n Thi�t Tr�c", tbProp = {4,1575,1,1,0,0}, nCount = 1},
	}
tbitem39  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - S�m Hoang H�n Gi�o Y�u Th�c", tbProp = {4,1579,1,1,0,0}, nCount = 1},
	}
tbitem40  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Ma Th� Huy�t Ng�c Th�t S�t B�i", tbProp = {4,1610,1,1,0,0}, nCount = 1},
	}
tbitem41  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - S�m Hoang Tinh V�n Phi L�", tbProp = {4,1581,1,1,0,0}, nCount = 1},
	}
tbitem42  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i", tbProp = {4,1635,1,1,0,0}, nCount = 1},
	}
tbitem43  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - ��ng C�u Phi Long ��u ho�n", tbProp = {4,1587,1,1,0,0}, nCount = 1},
	}
tbitem44  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u", tbProp = {4,1538,1,1,0,0}, nCount = 1},
	}
tbitem45  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - ��ng C�u Ti�m Long Y�u ��i", tbProp = {4,1589,1,1,0,0}, nCount = 1},
	}
tbitem46  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n", tbProp = {4,1537,1,1,0,0}, nCount = 1},
	}
tbitem47  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - ��ch Kh�i Tri�n M�ng y�u ��i", tbProp = {4,1594,1,1,0,0}, nCount = 1},
	}
tbitem48  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i", tbProp = {4,1549,1,1,0,0}, nCount = 1},
	}
tbitem49  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Ma S�t T�n D��ng �nh Huy�t Gi�p", tbProp = {4,1598,1,1,0,0}, nCount = 1},
	}
tbitem50  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p", tbProp = {4,1513,1,1,0,0}, nCount = 1},
	}
tbitem51  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Ma S�t C� H�a Li�u Thi�n uy�n", tbProp = {4,1600,1,1,0,0}, nCount = 1},
	}
tbitem52  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i", tbProp = {4,1518,1,1,0,0}, nCount = 1},
	}
tbitem53  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Ma Ho�ng Huy�t Y Th� Tr�c", tbProp = {4,1605,1,1,0,0}, nCount = 1},
	}
tbitem54  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�t ��i", tbProp = {4,1499,1,1,0,0}, nCount = 1},
	}
tbitem55  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - Ma Th� Li�t Di�m Qu�n Mi�n", tbProp = {4,1607,1,1,0,0}, nCount = 1},
	}
tbitem56  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u", tbProp = {4,1538,1,1,0,0}, nCount = 1},
	}
tbitem57  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - L�ng Nh�c V� Ng� ��o b�o", tbProp = {4,1613,1,1,0,0}, nCount = 1},
	}
tbitem58  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i", tbProp = {4,1635,1,1,0,0}, nCount = 1},
	}
tbitem59  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - L�ng Nh�c N� L�i Gi�i", tbProp = {4,1614,1,1,0,0}, nCount = 1},
	}
tbitem60  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i", tbProp = {4,1549,1,1,0,0}, nCount = 1},
	}
tbitem61  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - L�ng Nh�c V� C�c Huy�n Ng�c B�i", tbProp = {4,1615,1,1,0,0}, nCount = 1},
	}
tbitem62  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n", tbProp = {4,1537,1,1,0,0}, nCount = 1},
	}
tbitem63  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - C�p Phong Tam Thanh Ph�", tbProp = {4,1618,1,1,0,0}, nCount = 1},
	}
tbitem64  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i", tbProp = {4,1518,1,1,0,0}, nCount = 1},
	}
tbitem65  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - C�p Phong Huy�n Ti Tam �o�n c�m", tbProp = {4,1619,1,1,0,0}, nCount = 1},
	}
tbitem66  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p", tbProp = {4,1513,1,1,0,0}, nCount = 1},
	}
tbitem67  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - C�p Phong Th�y Ng�c Huy�n Ho�ng B�i", tbProp = {4,1620,1,1,0,0}, nCount = 1},
	}
tbitem68  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i", tbProp = {4,1549,1,1,0,0}, nCount = 1},
	}
tbitem69  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - S��ng Tinh Thanh Phong L� ��i", tbProp = {4,1624,1,1,0,0}, nCount = 1},
	}
tbitem70  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa", tbProp = {4,1516,1,1,0,0}, nCount = 1},
	}
tbitem71  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - S��ng Tinh Thi�n Tinh B�ng Tinh th�", tbProp = {4,1625,1,1,0,0}, nCount = 1},
	}
tbitem72  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa", tbProp = {4,1516,1,1,0,0}, nCount = 1},
	}
tbitem73  =
	{
		[1]={szName = "�� ph� Ho�ng Kim - V� �o Tung Phong Tuy�t �nh ngoa", tbProp = {4,1636,1,1,0,0}, nCount = 1},
	}


	local nTyLe = random(1,225)
	if nTyLe == 1 then
		tbAwardTemplet:GiveAwardByList(tbitem1, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�t ��i<color>!!!",GetName()));
	elseif nTyLe == 2 then
		tbAwardTemplet:GiveAwardByList(tbitem1, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�t ��i<color>!!!",GetName()));
	elseif nTyLe == 3 then
		tbAwardTemplet:GiveAwardByList(tbitem1, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�t ��i<color>!!!",GetName()));
	elseif nTyLe == 4 then
		tbAwardTemplet:GiveAwardByList(tbitem1, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�t ��i<color>!!!",GetName()));
	elseif nTyLe == 5 then
		tbAwardTemplet:GiveAwardByList(tbitem1, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�t ��i<color>!!!",GetName()));
	elseif nTyLe == 6 then
		tbAwardTemplet:GiveAwardByList(tbitem2, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - L�i Khung Linh Ng�c U�n L�i<color>!!!",GetName()));
	elseif nTyLe == 7 then
		tbAwardTemplet:GiveAwardByList(tbitem3, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��ng C�u Gi�ng Long C�i Y<color>!!!",GetName()));
	elseif nTyLe == 8 then
		tbAwardTemplet:GiveAwardByList(tbitem3, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��ng C�u Gi�ng Long C�i Y<color>!!!",GetName()));
	elseif nTyLe == 9 then
		tbAwardTemplet:GiveAwardByList(tbitem3, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��ng C�u Gi�ng Long C�i Y<color>!!!",GetName()));
	elseif nTyLe == 10 then
		tbAwardTemplet:GiveAwardByList(tbitem3, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��ng C�u Gi�ng Long C�i Y<color>!!!",GetName()));
	elseif nTyLe == 11 then
		tbAwardTemplet:GiveAwardByList(tbitem3, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��ng C�u Gi�ng Long C�i Y<color>!!!",GetName()));
	elseif nTyLe == 12 then
		tbAwardTemplet:GiveAwardByList(tbitem4, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - M�ng Long Ch�nh H�ng T�ng M�o<color>!!!",GetName()));
	elseif nTyLe == 13 then
		tbAwardTemplet:GiveAwardByList(tbitem5, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 14 then
		tbAwardTemplet:GiveAwardByList(tbitem5, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 15 then
		tbAwardTemplet:GiveAwardByList(tbitem5, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 16 then
		tbAwardTemplet:GiveAwardByList(tbitem5, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 17 then
		tbAwardTemplet:GiveAwardByList(tbitem5, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 18 then
		tbAwardTemplet:GiveAwardByList(tbitem6, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ph�c Ma � Kim Nhuy�n �i�u<color>!!!",GetName()));
	elseif nTyLe == 19 then
		tbAwardTemplet:GiveAwardByList(tbitem7, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 20 then
		tbAwardTemplet:GiveAwardByList(tbitem7, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 21 then
		tbAwardTemplet:GiveAwardByList(tbitem7, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 22 then
		tbAwardTemplet:GiveAwardByList(tbitem7, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 23 then
		tbAwardTemplet:GiveAwardByList(tbitem7, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 24 then
		tbAwardTemplet:GiveAwardByList(tbitem8, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - T� Kh�ng H� Ph�p Y�u ��i<color>!!!",GetName()));
	elseif nTyLe == 25 then
		tbAwardTemplet:GiveAwardByList(tbitem9, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 26 then
		tbAwardTemplet:GiveAwardByList(tbitem9, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 27 then
		tbAwardTemplet:GiveAwardByList(tbitem9, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 28 then
		tbAwardTemplet:GiveAwardByList(tbitem9, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 29 then
		tbAwardTemplet:GiveAwardByList(tbitem9, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 30 then
		tbAwardTemplet:GiveAwardByList(tbitem10, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - T� Kh�ng Nhuy�n B� H� Uy�n<color>!!!",GetName()));
	elseif nTyLe == 31 then
		tbAwardTemplet:GiveAwardByList(tbitem11, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 32 then
		tbAwardTemplet:GiveAwardByList(tbitem11, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 33 then
		tbAwardTemplet:GiveAwardByList(tbitem11, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 34 then
		tbAwardTemplet:GiveAwardByList(tbitem11, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 35 then
		tbAwardTemplet:GiveAwardByList(tbitem11, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 36 then
		tbAwardTemplet:GiveAwardByList(tbitem12, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Gian Ph�t V�n Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 37 then
		tbAwardTemplet:GiveAwardByList(tbitem13, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ng� Long T�n Phong H� y�n<color>!!!",GetName()));
	elseif nTyLe == 38 then
		tbAwardTemplet:GiveAwardByList(tbitem13, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ng� Long T�n Phong H� y�n<color>!!!",GetName()));
	elseif nTyLe == 39 then
		tbAwardTemplet:GiveAwardByList(tbitem13, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ng� Long T�n Phong H� y�n<color>!!!",GetName()));
	elseif nTyLe == 40 then
		tbAwardTemplet:GiveAwardByList(tbitem13, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ng� Long T�n Phong H� y�n<color>!!!",GetName()));
	elseif nTyLe == 41 then
		tbAwardTemplet:GiveAwardByList(tbitem13, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ng� Long T�n Phong H� y�n<color>!!!",GetName()));
	elseif nTyLe == 42 then
		tbAwardTemplet:GiveAwardByList(tbitem14, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Gian C�m V�n H� Uy�n<color>!!!",GetName()));
	elseif nTyLe == 43 then
		tbAwardTemplet:GiveAwardByList(tbitem15, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 44 then
		tbAwardTemplet:GiveAwardByList(tbitem15, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 45 then
		tbAwardTemplet:GiveAwardByList(tbitem15, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 46 then
		tbAwardTemplet:GiveAwardByList(tbitem15, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 47 then
		tbAwardTemplet:GiveAwardByList(tbitem15, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 48 then
		tbAwardTemplet:GiveAwardByList(tbitem16, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Ma H�ng Truy Nhuy�n Th�p h�i<color>!!!",GetName()));
	elseif nTyLe == 49 then
		tbAwardTemplet:GiveAwardByList(tbitem17, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 50 then
		tbAwardTemplet:GiveAwardByList(tbitem17, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 51 then
		tbAwardTemplet:GiveAwardByList(tbitem17, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 52 then
		tbAwardTemplet:GiveAwardByList(tbitem17, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 53 then
		tbAwardTemplet:GiveAwardByList(tbitem17, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 54 then
		tbAwardTemplet:GiveAwardByList(tbitem18, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Ma Ma Ni qu�n<color>!!!",GetName()));
	elseif nTyLe == 55 then
		tbAwardTemplet:GiveAwardByList(tbitem19, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i<color>!!!",GetName()));
	elseif nTyLe == 56 then
		tbAwardTemplet:GiveAwardByList(tbitem19, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i<color>!!!",GetName()));
	elseif nTyLe == 57 then
		tbAwardTemplet:GiveAwardByList(tbitem19, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i<color>!!!",GetName()));
	elseif nTyLe == 58 then
		tbAwardTemplet:GiveAwardByList(tbitem19, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i<color>!!!",GetName()));
	elseif nTyLe == 59 then
		tbAwardTemplet:GiveAwardByList(tbitem19, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i<color>!!!",GetName()));
	elseif nTyLe == 60 then
		tbAwardTemplet:GiveAwardByList(tbitem20, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - U Lung X�ch Y�t M�t trang<color>!!!",GetName()));
	elseif nTyLe == 61 then
		tbAwardTemplet:GiveAwardByList(tbitem21, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - T� Ho�ng B�ng Tung C�m uy�n<color>!!!",GetName()));
	elseif nTyLe == 62 then
		tbAwardTemplet:GiveAwardByList(tbitem21, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - T� Ho�ng B�ng Tung C�m uy�n<color>!!!",GetName()));
	elseif nTyLe == 63 then
		tbAwardTemplet:GiveAwardByList(tbitem21, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - T� Ho�ng B�ng Tung C�m uy�n<color>!!!",GetName()));
	elseif nTyLe == 64 then
		tbAwardTemplet:GiveAwardByList(tbitem21, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - T� Ho�ng B�ng Tung C�m uy�n<color>!!!",GetName()));
	elseif nTyLe == 65 then
		tbAwardTemplet:GiveAwardByList(tbitem21, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - T� Ho�ng B�ng Tung C�m uy�n<color>!!!",GetName()));
	elseif nTyLe == 66 then
		tbAwardTemplet:GiveAwardByList(tbitem22, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - U Lung M�c Th� Nhuy�n L�<color>!!!",GetName()));
	elseif nTyLe == 67 then
		tbAwardTemplet:GiveAwardByList(tbitem23, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i Ho�n Ch�u V� Li�n<color>!!!",GetName()));
	elseif nTyLe == 68 then
		tbAwardTemplet:GiveAwardByList(tbitem23, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i Ho�n Ch�u V� Li�n<color>!!!",GetName()));
	elseif nTyLe == 69 then
		tbAwardTemplet:GiveAwardByList(tbitem23, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i Ho�n Ch�u V� Li�n<color>!!!",GetName()));
	elseif nTyLe == 70 then
		tbAwardTemplet:GiveAwardByList(tbitem23, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i Ho�n Ch�u V� Li�n<color>!!!",GetName()));
	elseif nTyLe == 71 then
		tbAwardTemplet:GiveAwardByList(tbitem23, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i Ho�n Ch�u V� Li�n<color>!!!",GetName()));
	elseif nTyLe == 72 then
		tbAwardTemplet:GiveAwardByList(tbitem24, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Minh �o U ��c �m Y<color>!!!",GetName()));
	elseif nTyLe == 73 then
		tbAwardTemplet:GiveAwardByList(tbitem25, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng L�ng Ba<color>!!!",GetName()));
	elseif nTyLe == 74 then
		tbAwardTemplet:GiveAwardByList(tbitem25, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng L�ng Ba<color>!!!",GetName()));
	elseif nTyLe == 75 then
		tbAwardTemplet:GiveAwardByList(tbitem25, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng L�ng Ba<color>!!!",GetName()));
	elseif nTyLe == 76 then
		tbAwardTemplet:GiveAwardByList(tbitem25, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng L�ng Ba<color>!!!",GetName()));
	elseif nTyLe == 77 then
		tbAwardTemplet:GiveAwardByList(tbitem25, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng L�ng Ba<color>!!!",GetName()));
	elseif nTyLe == 78 then
		tbAwardTemplet:GiveAwardByList(tbitem26, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ng H�n Huy�n Y Th�c Gi�p<color>!!!",GetName()));
	elseif nTyLe == 79 then
		tbAwardTemplet:GiveAwardByList(tbitem27, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Minh �o H� C�t H� uy�n<color>!!!",GetName()));
	elseif nTyLe == 80 then
		tbAwardTemplet:GiveAwardByList(tbitem27, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Minh �o H� C�t H� uy�n<color>!!!",GetName()));
	elseif nTyLe == 81 then
		tbAwardTemplet:GiveAwardByList(tbitem27, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Minh �o H� C�t H� uy�n<color>!!!",GetName()));
	elseif nTyLe == 82 then
		tbAwardTemplet:GiveAwardByList(tbitem27, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Minh �o H� C�t H� uy�n<color>!!!",GetName()));
	elseif nTyLe == 83 then
		tbAwardTemplet:GiveAwardByList(tbitem27, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Minh �o H� C�t H� uy�n<color>!!!",GetName()));
	elseif nTyLe == 84 then
		tbAwardTemplet:GiveAwardByList(tbitem28, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ch� Ph��c Di�t L�i C�nh Ph�<color>!!!",GetName()));
	elseif nTyLe == 85 then
		tbAwardTemplet:GiveAwardByList(tbitem28, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ch� Ph��c Di�t L�i C�nh Ph�<color>!!!",GetName()));
	elseif nTyLe == 86 then
		tbAwardTemplet:GiveAwardByList(tbitem28, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ch� Ph��c Di�t L�i C�nh Ph�<color>!!!",GetName()));
	elseif nTyLe == 87 then
		tbAwardTemplet:GiveAwardByList(tbitem28, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ch� Ph��c Di�t L�i C�nh Ph�<color>!!!",GetName()));
	elseif nTyLe == 88 then
		tbAwardTemplet:GiveAwardByList(tbitem28, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ch� Ph��c Di�t L�i C�nh Ph�<color>!!!",GetName()));
	elseif nTyLe == 89 then
		tbAwardTemplet:GiveAwardByList(tbitem29, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n<color>!!!",GetName()));
	elseif nTyLe == 90 then
		tbAwardTemplet:GiveAwardByList(tbitem29, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n<color>!!!",GetName()));
	elseif nTyLe == 91 then
		tbAwardTemplet:GiveAwardByList(tbitem29, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n<color>!!!",GetName()));
	elseif nTyLe == 92 then
		tbAwardTemplet:GiveAwardByList(tbitem29, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n<color>!!!",GetName()));
	elseif nTyLe == 93 then
		tbAwardTemplet:GiveAwardByList(tbitem29, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n<color>!!!",GetName()));
	elseif nTyLe == 94 then
		tbAwardTemplet:GiveAwardByList(tbitem30, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ng H�n T�m Ti�n Y�u Kh�u<color>!!!",GetName()));
	elseif nTyLe == 95 then
		tbAwardTemplet:GiveAwardByList(tbitem31, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 96 then
		tbAwardTemplet:GiveAwardByList(tbitem31, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 97 then
		tbAwardTemplet:GiveAwardByList(tbitem31, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 98 then
		tbAwardTemplet:GiveAwardByList(tbitem31, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 99 then
		tbAwardTemplet:GiveAwardByList(tbitem31, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 100 then
		tbAwardTemplet:GiveAwardByList(tbitem32, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Thi�n Quang ��nh T�m Ng�ng Th�n Ph�<color>!!!",GetName()));
	elseif nTyLe == 101 then
		tbAwardTemplet:GiveAwardByList(tbitem33, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - L�i Khung Thi�n ��a H� ph�<color>!!!",GetName()));
	elseif nTyLe == 101 then
		tbAwardTemplet:GiveAwardByList(tbitem33, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - L�i Khung Thi�n ��a H� ph�<color>!!!",GetName()));
	elseif nTyLe == 103 then
		tbAwardTemplet:GiveAwardByList(tbitem33, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - L�i Khung Thi�n ��a H� ph�<color>!!!",GetName()));
	elseif nTyLe == 104 then
		tbAwardTemplet:GiveAwardByList(tbitem33, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - L�i Khung Thi�n ��a H� ph�<color>!!!",GetName()));
	elseif nTyLe == 105 then
		tbAwardTemplet:GiveAwardByList(tbitem33, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - L�i Khung Thi�n ��a H� ph�<color>!!!",GetName()));
	elseif nTyLe == 106 then
		tbAwardTemplet:GiveAwardByList(tbitem34, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ph�c Ma Ph� �� T�ng h�i<color>!!!",GetName()));
	elseif nTyLe == 107 then
		tbAwardTemplet:GiveAwardByList(tbitem35, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma Ho�ng �n Xu�t H� H�ng Khuy�n<color>!!!",GetName()));
	elseif nTyLe == 108 then
		tbAwardTemplet:GiveAwardByList(tbitem35, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma Ho�ng �n Xu�t H� H�ng Khuy�n<color>!!!",GetName()));
	elseif nTyLe == 109 then
		tbAwardTemplet:GiveAwardByList(tbitem35, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma Ho�ng �n Xu�t H� H�ng Khuy�n<color>!!!",GetName()));
	elseif nTyLe == 110 then
		tbAwardTemplet:GiveAwardByList(tbitem35, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma Ho�ng �n Xu�t H� H�ng Khuy�n<color>!!!",GetName()));
	elseif nTyLe == 111 then
		tbAwardTemplet:GiveAwardByList(tbitem35, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma Ho�ng �n Xu�t H� H�ng Khuy�n<color>!!!",GetName()));
	elseif nTyLe == 112 then
		tbAwardTemplet:GiveAwardByList(tbitem36, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Thi�n Quang S�m La Th�c ��i<color>!!!",GetName()));
	elseif nTyLe == 113 then
		tbAwardTemplet:GiveAwardByList(tbitem37, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��ch Kh�i C�u T�ch B� H� uy�n<color>!!!",GetName()));
	elseif nTyLe == 114 then
		tbAwardTemplet:GiveAwardByList(tbitem37, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��ch Kh�i C�u T�ch B� H� uy�n<color>!!!",GetName()));
	elseif nTyLe == 115 then
		tbAwardTemplet:GiveAwardByList(tbitem37, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��ch Kh�i C�u T�ch B� H� uy�n<color>!!!",GetName()));
	elseif nTyLe == 116 then
		tbAwardTemplet:GiveAwardByList(tbitem37, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��ch Kh�i C�u T�ch B� H� uy�n<color>!!!",GetName()));
	elseif nTyLe == 117 then
		tbAwardTemplet:GiveAwardByList(tbitem37, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��ch Kh�i C�u T�ch B� H� uy�n<color>!!!",GetName()));
	elseif nTyLe == 118 then
		tbAwardTemplet:GiveAwardByList(tbitem38, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Thi�n Quang Song B�o H�n Thi�t Tr�c<color>!!!",GetName()));
	elseif nTyLe == 119 then
		tbAwardTemplet:GiveAwardByList(tbitem39, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - S�m Hoang H�n Gi�o Y�u Th�c<color>!!!",GetName()));
	elseif nTyLe == 120 then
		tbAwardTemplet:GiveAwardByList(tbitem39, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - S�m Hoang H�n Gi�o Y�u Th�c<color>!!!",GetName()));
	elseif nTyLe == 121 then
		tbAwardTemplet:GiveAwardByList(tbitem39, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - S�m Hoang H�n Gi�o Y�u Th�c<color>!!!",GetName()));
	elseif nTyLe == 122 then
		tbAwardTemplet:GiveAwardByList(tbitem39, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - S�m Hoang H�n Gi�o Y�u Th�c<color>!!!",GetName()));
	elseif nTyLe == 123 then
		tbAwardTemplet:GiveAwardByList(tbitem39, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - S�m Hoang H�n Gi�o Y�u Th�c<color>!!!",GetName()));
	elseif nTyLe == 124 then
		tbAwardTemplet:GiveAwardByList(tbitem40, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma Th� Huy�t Ng�c Th�t S�t B�i<color>!!!",GetName()));
	elseif nTyLe == 125 then
		tbAwardTemplet:GiveAwardByList(tbitem40, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma Th� Huy�t Ng�c Th�t S�t B�i<color>!!!",GetName()));
	elseif nTyLe == 126 then
		tbAwardTemplet:GiveAwardByList(tbitem40, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma Th� Huy�t Ng�c Th�t S�t B�i<color>!!!",GetName()));
	elseif nTyLe == 127 then
		tbAwardTemplet:GiveAwardByList(tbitem40, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma Th� Huy�t Ng�c Th�t S�t B�i<color>!!!",GetName()));
	elseif nTyLe == 128 then
		tbAwardTemplet:GiveAwardByList(tbitem40, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma Th� Huy�t Ng�c Th�t S�t B�i<color>!!!",GetName()));
	elseif nTyLe == 129 then
		tbAwardTemplet:GiveAwardByList(tbitem41, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - S�m Hoang Tinh V�n Phi L�<color>!!!",GetName()));
	elseif nTyLe == 130 then
		tbAwardTemplet:GiveAwardByList(tbitem42, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 131 then
		tbAwardTemplet:GiveAwardByList(tbitem42, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 132 then
		tbAwardTemplet:GiveAwardByList(tbitem42, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 133 then
		tbAwardTemplet:GiveAwardByList(tbitem42, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 134 then
		tbAwardTemplet:GiveAwardByList(tbitem42, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 135 then
		tbAwardTemplet:GiveAwardByList(tbitem43, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��ng C�u Phi Long ��u ho�n<color>!!!",GetName()));
	elseif nTyLe == 136 then
		tbAwardTemplet:GiveAwardByList(tbitem44, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 137 then
		tbAwardTemplet:GiveAwardByList(tbitem44, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 138 then
		tbAwardTemplet:GiveAwardByList(tbitem44, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 139 then
		tbAwardTemplet:GiveAwardByList(tbitem44, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 140 then
		tbAwardTemplet:GiveAwardByList(tbitem44, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 141 then
		tbAwardTemplet:GiveAwardByList(tbitem45, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��ng C�u Ti�m Long Y�u ��i<color>!!!",GetName()));
	elseif nTyLe == 142 then
		tbAwardTemplet:GiveAwardByList(tbitem46, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 143 then
		tbAwardTemplet:GiveAwardByList(tbitem46, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 144 then
		tbAwardTemplet:GiveAwardByList(tbitem46, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 145 then
		tbAwardTemplet:GiveAwardByList(tbitem46, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 146 then
		tbAwardTemplet:GiveAwardByList(tbitem46, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 147 then
		tbAwardTemplet:GiveAwardByList(tbitem47, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - ��ch Kh�i Tri�n M�ng y�u ��i<color>!!!",GetName()));
	elseif nTyLe == 148 then
		tbAwardTemplet:GiveAwardByList(tbitem48, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 149 then
		tbAwardTemplet:GiveAwardByList(tbitem48, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 150 then
		tbAwardTemplet:GiveAwardByList(tbitem48, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 151 then
		tbAwardTemplet:GiveAwardByList(tbitem48, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 152 then
		tbAwardTemplet:GiveAwardByList(tbitem48, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 153 then
		tbAwardTemplet:GiveAwardByList(tbitem49, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma S�t T�n D��ng �nh Huy�t Gi�p<color>!!!",GetName()));
	elseif nTyLe == 154 then
		tbAwardTemplet:GiveAwardByList(tbitem50, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 155 then
		tbAwardTemplet:GiveAwardByList(tbitem50, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 156 then
		tbAwardTemplet:GiveAwardByList(tbitem50, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 157 then
		tbAwardTemplet:GiveAwardByList(tbitem50, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 158 then
		tbAwardTemplet:GiveAwardByList(tbitem50, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 159 then
		tbAwardTemplet:GiveAwardByList(tbitem51, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma S�t C� H�a Li�u Thi�n uy�n<color>!!!",GetName()));
	elseif nTyLe == 160 then
		tbAwardTemplet:GiveAwardByList(tbitem52, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 161 then
		tbAwardTemplet:GiveAwardByList(tbitem52, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 162 then
		tbAwardTemplet:GiveAwardByList(tbitem52, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 163 then
		tbAwardTemplet:GiveAwardByList(tbitem52, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 164 then
		tbAwardTemplet:GiveAwardByList(tbitem52, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 165 then
		tbAwardTemplet:GiveAwardByList(tbitem53, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma Ho�ng Huy�t Y Th� Tr�c<color>!!!",GetName()));
	elseif nTyLe == 166 then
		tbAwardTemplet:GiveAwardByList(tbitem54, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�t ��i<color>!!!",GetName()));
	elseif nTyLe == 167 then
		tbAwardTemplet:GiveAwardByList(tbitem54, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�t ��i<color>!!!",GetName()));
	elseif nTyLe == 168 then
		tbAwardTemplet:GiveAwardByList(tbitem54, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�t ��i<color>!!!",GetName()));
	elseif nTyLe == 169 then
		tbAwardTemplet:GiveAwardByList(tbitem54, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�t ��i<color>!!!",GetName()));
	elseif nTyLe == 170 then
		tbAwardTemplet:GiveAwardByList(tbitem54, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�t ��i<color>!!!",GetName()));
	elseif nTyLe == 171 then
		tbAwardTemplet:GiveAwardByList(tbitem55, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - Ma Th� Li�t Di�m Qu�n Mi�n<color>!!!",GetName()));
	elseif nTyLe == 172 then
		tbAwardTemplet:GiveAwardByList(tbitem56, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 173 then
		tbAwardTemplet:GiveAwardByList(tbitem56, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 174 then
		tbAwardTemplet:GiveAwardByList(tbitem56, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 175 then
		tbAwardTemplet:GiveAwardByList(tbitem56, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 176 then
		tbAwardTemplet:GiveAwardByList(tbitem56, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u<color>!!!",GetName()));
	elseif nTyLe == 177 then
		tbAwardTemplet:GiveAwardByList(tbitem57, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - L�ng Nh�c V� Ng� ��o b�o<color>!!!",GetName()));
	elseif nTyLe == 178 then
		tbAwardTemplet:GiveAwardByList(tbitem58, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 179 then
		tbAwardTemplet:GiveAwardByList(tbitem58, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 180 then
		tbAwardTemplet:GiveAwardByList(tbitem58, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 181 then
		tbAwardTemplet:GiveAwardByList(tbitem58, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 182 then
		tbAwardTemplet:GiveAwardByList(tbitem58, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 183 then
		tbAwardTemplet:GiveAwardByList(tbitem59, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - L�ng Nh�c N� L�i Gi�i<color>!!!",GetName()));
	elseif nTyLe == 184 then
		tbAwardTemplet:GiveAwardByList(tbitem60, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 185 then
		tbAwardTemplet:GiveAwardByList(tbitem60, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 186 then
		tbAwardTemplet:GiveAwardByList(tbitem60, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 187 then
		tbAwardTemplet:GiveAwardByList(tbitem60, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 188 then
		tbAwardTemplet:GiveAwardByList(tbitem60, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 189 then
		tbAwardTemplet:GiveAwardByList(tbitem61, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - L�ng Nh�c V� C�c Huy�n Ng�c B�i<color>!!!",GetName()));
	elseif nTyLe == 190 then
		tbAwardTemplet:GiveAwardByList(tbitem62, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 191 then
		tbAwardTemplet:GiveAwardByList(tbitem62, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 192 then
		tbAwardTemplet:GiveAwardByList(tbitem62, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 193 then
		tbAwardTemplet:GiveAwardByList(tbitem62, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 194 then
		tbAwardTemplet:GiveAwardByList(tbitem62, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m qu�n<color>!!!",GetName()));
	elseif nTyLe == 195 then
		tbAwardTemplet:GiveAwardByList(tbitem63, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - C�p Phong Tam Thanh Ph�<color>!!!",GetName()));
	elseif nTyLe == 196 then
		tbAwardTemplet:GiveAwardByList(tbitem64, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 197 then
		tbAwardTemplet:GiveAwardByList(tbitem64, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 198 then
		tbAwardTemplet:GiveAwardByList(tbitem64, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 199 then
		tbAwardTemplet:GiveAwardByList(tbitem64, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 200 then
		tbAwardTemplet:GiveAwardByList(tbitem64, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i<color>!!!",GetName()));
	elseif nTyLe == 201 then
		tbAwardTemplet:GiveAwardByList(tbitem65, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - C�p Phong Huy�n Ti Tam �o�n c�m<color>!!!",GetName()));
	elseif nTyLe == 202 then
		tbAwardTemplet:GiveAwardByList(tbitem66, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 203 then
		tbAwardTemplet:GiveAwardByList(tbitem66, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 204 then
		tbAwardTemplet:GiveAwardByList(tbitem66, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 205 then
		tbAwardTemplet:GiveAwardByList(tbitem66, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 206 then
		tbAwardTemplet:GiveAwardByList(tbitem66, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p<color>!!!",GetName()));
	elseif nTyLe == 207 then
		tbAwardTemplet:GiveAwardByList(tbitem67, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - C�p Phong Th�y Ng�c Huy�n Ho�ng B�i<color>!!!",GetName()));
	elseif nTyLe == 208 then
		tbAwardTemplet:GiveAwardByList(tbitem68, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 209 then
		tbAwardTemplet:GiveAwardByList(tbitem68, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 210 then
		tbAwardTemplet:GiveAwardByList(tbitem68, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 211 then
		tbAwardTemplet:GiveAwardByList(tbitem68, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 212 then
		tbAwardTemplet:GiveAwardByList(tbitem68, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i<color>!!!",GetName()));
	elseif nTyLe == 213 then
		tbAwardTemplet:GiveAwardByList(tbitem69, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - S��ng Tinh Thanh Phong L� ��i<color>!!!",GetName()));
	elseif nTyLe == 214 then
		tbAwardTemplet:GiveAwardByList(tbitem70, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 215 then
		tbAwardTemplet:GiveAwardByList(tbitem70, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 216 then
		tbAwardTemplet:GiveAwardByList(tbitem70, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 217 then
		tbAwardTemplet:GiveAwardByList(tbitem70, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 218 then
		tbAwardTemplet:GiveAwardByList(tbitem70, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 219 then
		tbAwardTemplet:GiveAwardByList(tbitem71, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - S��ng Tinh Thi�n Tinh B�ng Tinh th�<color>!!!",GetName()));
	elseif nTyLe == 220 then
		tbAwardTemplet:GiveAwardByList(tbitem72, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 221 then
		tbAwardTemplet:GiveAwardByList(tbitem72, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 222 then
		tbAwardTemplet:GiveAwardByList(tbitem72, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 223 then
		tbAwardTemplet:GiveAwardByList(tbitem72, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 224 then
		tbAwardTemplet:GiveAwardByList(tbitem72, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa<color>!!!",GetName()));
	elseif nTyLe == 225 then
		tbAwardTemplet:GiveAwardByList(tbitem73, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Tung Phong Tuy�t �nh ngoa<color>!!!",GetName()));
	else 
		tbAwardTemplet:GiveAwardByList(tbitem72, "Xoay M�nh Ho�ng Kim");
	Msg2Player(format("Ch�c m�ng <color=green> %s <color><color=cyan>Xoay M�nh Ho�ng Kim<color> nh�n ���c <color=yellow>�� ph� Ho�ng Kim - V� �o Tung Phong Tuy�t �nh ngoa<color>!!!",GetName()));
	end
--SaveNow()
end





function OnExit()

end;

function EpHoangKim()
	GiveItemUI("Ch� t�o trang b� ho�ng kim !","C�n 100 M�nh Ho�ng Kim c�ng lo�i, 200 t�i t�ng kim t�ch l�y bao, 200 �� may m�n c�p 4, 200 �� c��ng h�a c�p 4, 500 ti�n ��ng<enter>L�u �: Trang b� ho�ng kim �p ra s� c� h�n s� d�ng v�nh vi�n.!","TienHanhGhepHK")
end

function TienHanhGhepHK(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit( i )		--get itemindex
		local nG, nD,nP = GetItemProp(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		local nCountStack = GetItemStackCount(nItemIndex) or 1;

		if nG ~= 4 then
			Say("<color=0xa9ffe0>Ng��i t�nh qua m�t l�o gi� nh� ta sao ? Bi�n �i ch� kh�c.",0);
			return
		end
		if   nD < %tbListIDItem[1][1] or nD > %tbListIDItem[163][1] then
			Say("<color=0xa9ffe0>Ng��i t�nh qua m�t l�o gi� nh� ta sao ? Bi�n �i ch� kh�c.",0);
			return
		end
	
		if nCountStack < 100 then
			Say("<color=0xa9ffe0>��i hi�p ch�a �� s� l��ng 100 M�nh Ho�ng Kim ��ng lo�i !",0);
			return
		end
	local nSilverCount = CalcEquiproomItemCount(6,1,4415,1) ;
	if(nSilverCount < 200) then -- gia xu
		Talk(1,"","C�n c� 200 t�i t�ng kim t�ch l�y bao ��i t�i shop t�ng kim ng��i ch�a �� tr�nh �� ��i � h�y c� g�ng r�n luy�n th�m!..") -- go
	return end

                       local nSilverCount1 = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount1 < 500) then -- gia xu
		Talk(1,"","C�n c� 500 ti�n ��ng �� h�p th�nh trang b� ho�ng kim m�n ph�i!..") -- go
	return end

                        local nSilverCount2 = CalcEquiproomItemCount(4,1671,1,1) ;
	if(nSilverCount2 < 200) then -- gia xu
		Talk(1,"","C�n c� 200 �� may m�n c�p 4 �� h�p th�nh trang b� ho�ng kim!..") -- go
	return end

                        local nSilverCount3= CalcEquiproomItemCount(4,1689,1,1) ;
	if(nSilverCount3 < 200) then -- gia xu
		Talk(1,"","C�n c� 200 �� c��ng h�a c�p 4 �� h�p th�nh trang b� ho�ng kim!..") -- go
	return end

                        local nSilverCount4= CalcEquiproomItemCount(4,1688,1,1) ;
	if(nSilverCount4 < 200) then -- gia xu
		Talk(1,"","C�n c� 200 �� Qu� �� h�p th�nh trang b� ho�ng kim!..") -- go
	return end



		local temp = %tbListIDItem;
		for e =1,getn(temp) do
			local a = temp[e][1];
			local b = temp[e][2];
			if nD == a then
				c = b
			end
		end
	end

	nItemIndex = GetGiveItemUnit(1)
                           local nTen=GetItemName(nItemIndex)
	k = RemoveItemByIndex( nItemIndex )
	if ( k ~= 1 ) then
		Say("Ng��i t�nh qua m�t l�o gi� nh� ta sao ? Bi�n �i ch� kh�c.",0)
		return 0
	end

tbitem  =
	{
		[1]={szName = "Trang B� Ho�ng Kim", tbProp = {0, c}, nCount = 1,nQuality = 1,},
	}
	tbAwardTemplet:GiveAwardByList(tbitem, "Gh�p M�nh Ho�ng Kim ");
                           ConsumeEquiproomItem(200,6,1,4415,1)
ConsumeEquiproomItem(500,4,417,1,1)
ConsumeEquiproomItem(200,4,1671,1,1)
ConsumeEquiproomItem(200,4,1689,1,1)
ConsumeEquiproomItem(200,4,1688,1,1)
	--Msg2Player("<color=0xff5040>Ch�c m�ng c�c h� �� ch� t�o th�nh c�ng nh�n ���c trang b� ho�ng kim theo ��c nguy�n ! ");
	AddGlobalNews(format("<color=0xa9ffe0>Ch�c m�ng <color=yellow> %s <color>ch� t�o th�nh c�ng <color=yellow>"..nTen.."<color> nh�n ���c trang b� Ho�ng Kim v� c�ng qu� gi�!!!",GetName()));
	Msg2SubWorld(format("<color=0xa9ffe0>Ch�c m�ng <color=yellow> %s <color>ch� t�o th�nh c�ng <color=yellow>"..nTen.."<color> nh�n ���c trang b� Ho�ng Kim v� c�ng qu� gi�!!!",GetName()));
SaveNow()
end


local KimTe = {4,979}

function PhanRaHK()
GiveItemUI("Ph�n m�nh trang b� ho�ng kim !"," C�n 1 Trang B� Ho�ng Kim\n + 1 Kim T� Mua T�i Shop T�ng Kim\n------------------------------ !","TienHanhPhanRaHK")
end

function TienHanhPhanRaHK(nCount)

	if nCount~= 2 then
		Talk(1, "", "<color=yellow>B�n �� b� v�t ph�m thi�u ho�c nh�u h�n quy ��nh , xem l�i y�u c�u y�u c�u.<color>");
		return
	end
	local tbKimTe = nil
	local tbTrangBiHK = nil
	local nKimTe ,nTrangBi = 0,0;
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit( i )		--get itemindex
		local ID = GetGlodEqIndex(nItemIndex)
		local nG, nD,nP = GetItemProp(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		local nCountStack = GetItemStackCount(nItemIndex) or 1;
		if TLCheckEquip(nItemIndex) == 1 then
			if nG == 7 then
				Talk(1, "", "<color=yellow>Trang B�<color> c�a ng��i �� b� h� h�i kh�ng th� tr�ng luy�n.");
				return
			end
			if   ID < %tbListIDItem[1][2] or ID > %tbListIDItem[163][2] then
				Say("<color=orange>��y l� v�t ph�m gi ? l� qu� ta ch�a t�ng th�y",0);
				return
			end
			if nTrangBi >= 1 then
				Talk(1, "", "B�n �� b� <color=yellow>Trang B�<color> qu� s� l��ng y�u c�u.");
				return
			else
				nTrangBi = nTrangBi +1;
				tbTrangBiHK = nItemIndex;
			end

		elseif nG == %KimTe[1] and nD == %KimTe[2] then
			if nKimTe >= 1 then
				Talk(1, "", "<color=yellow>B�n �� b� <color=green>Kim T�<color> qu� s� l��ng y�u c�u.<color>");
				return
			else
				nKimTe= nKimTe+ 1;
				tbKimTe = nItemIndex;
			end
		else
			Say("<color=orange>Nguy�n Li�u ko ��ng",0);
			return
		end
	nItemTime = ITEM_GetExpiredTime(nItemIndex)
	if nItemTime ~= 0 then
		Talk(1, "", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
		return
	end

		local temp = %tbListIDItem;
		for e =1,getn(temp) do
			local a = temp[e][2];
			local b = temp[e][1];
			if ID == a then
				c = b
			end
		end
	end


	if (RemoveItemByIndex(tbTrangBiHK) ~= 1) then	return	end
	if (RemoveItemByIndex(tbKimTe) ~= 1) then	return	end
	local nTyle = random(1,100);
	if nTyle >= 99 then
		nSL = 100
	else
		nSL = random(100,100)
	end
SaveNow()

tbitem  =
	{
		[1]={szName = "M�nh Ho�ng Kim", tbProp = {4, c, 1, 1,0,0}, nCount = nSL},
	}
	tbAwardTemplet:GiveAwardByList(tbitem, "Ph�n M�nh Ho�ng Kim");
	if nSL == 100 then
		Msg2Player("<color=orange>Ph�n M�nh Ho�ng Kim Th�nh C�ng");
Msg2SubWorld("Ch�c M�ng <color=pink>"..GetName().." <color=yellow>�� ph�n m�nh th�nh c�ng trang b� t�i th� Luy�n Kim.")

	else
		Msg2Player("<color=orange>Ph�n M�nh Ho�ng Kim Th�nh C�ng");
Msg2SubWorld("Ch�c M�ng <color=pink>"..GetName().." <color=yellow>�� ph�n m�nh th�nh c�ng trang b� t�i th� Luy�n Kim.")

	end
SaveNow()
end

function TLCheckEquip(nItemIndex)
	local nG, nD,nP = GetItemProp(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	if nQuality ~= 1 and nQuality ~= 4 then
		return 0
	end
	if nG ~= 0 then
		return 0
	end
	return 1

end


-------------------------------------------------

function MenuCucPham1() 
Say("Xin m�i ch�n trang b�",7,"Nga Mi/hkmpnm","Th�y Y�n/hkmpty","���ng M�n/hkmpdm","Ng� ��c/hkmpnd","Thi�n V��ng/hkmptv","Trang Sau/MenuCucPham2","K�t th�c ��i tho�i/no") 
end

function MenuCucPham2() 
Say("Xin m�i ch�n trang b�",7,"Thi�u L�m/hkmptl","V� �ang/hkmpvd","C�n L�n/hkmpcl","Thi�n Nh�n/hkmptn","C�i Bang/hkmpcb","Trang Tr��c/MenuCucPham1","K�t th�c ��i tho�i/no") 
end

function hkmpnm() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Nga My Ch��ng", hkvipnmc}, 
                {"Nga My Ki�m", hkvipnmk}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
        return 1 
end 

function hkvipnmc()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ng�c B�i Nga Mi",tbProp={0,39},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,258},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function hkvipnmk() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ki�m Nga Mi",tbProp={0,31},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,250},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function hkmpty()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Th�y Y�n �ao", hkviptyd}, 
                {"Th�y Y�n Ch��ng", hkviptyc}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptyd() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="�ao T� Ho�ng",tbProp={0,46},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,265},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkviptyc() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Song �ao B�ch H�i",tbProp={0,51},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,270},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkmpdm()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
        local tbOpt= 
               { 
                {"���ng M�n N�", hkvipbv}, 
                            {"���ng M�n Phi Ti�u", hkvippt}, 
                {"���ng M�n B�ng H�n", hkvippd}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipbv() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="N� Thi�n Quang",tbProp={0,76},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,295},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function hkvippt() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Phi Ti�u S�m Ho�ng",tbProp={0,81},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,300},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function hkvippd() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Phi �ao B�ng H�n",tbProp={0,71},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,290},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end




function hkmpnd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Ng� ��c Ch��ng", hkvipndc}, 
                            {"Ng� ��c �ao", hkvipndd}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipndc() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="N�n U Lung",tbProp={0,56},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,275},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkvipndd() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="�ao Minh �o",tbProp={0,61},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,280},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function hkmptv()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"Thi�n V��ng Th��ng", hkviptvt}, 
                            {"Thi�n V��ng Ch�y", hkviptvc}, 
                {"Thi�n V��ng �ao", hkviptvd}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptvt() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Th��ng Thi�n V��ng",tbProp={0,21},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,240},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkviptvc() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ch�y H�m Thi�n",tbProp={0,16},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,235},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkviptvd() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="�ao Ng� Long",tbProp={0,26},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,245},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkmptl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Thi�u L�m �ao", hkviptld}, 
                            {"Thi�u L�m B�ng", hkviptlb}, 
                {"Thi�u L�m Quy�n", hkviptlq}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptld() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="�ao T� Kh�ng",tbProp={0,11},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,230},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkviptlb() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ph�c Ma C�n",tbProp={0,6},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,225},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkviptlq() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="�o M�ng Long",tbProp={0,2},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,221},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkmpvd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"V� �ang Ch��ng", hkvipvdc}, 
                            {"V� �ang Ki�m", hkvipvdk}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipvdc() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ki�m L�ng Nh�c",tbProp={0,116},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,335},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkvipvdk() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ki�m C�p Phong",tbProp={0,121},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,340},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkmpcl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"C�n L�n �ao", hkvipcld}, 
                            {"C�n L�n Ch��ng", hkvipclc}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcld() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="�ao S��ng Tinh",tbProp={0,126},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,345},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkvipclc() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="N�n V� �o",tbProp={0,131},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,350},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function hkmptn()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Thi�n Nh�n Th��ng", hkviptnt}, 
                            {"Thi�n Nh�n Ch��ng", hkviptnd}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptnt() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="K�ch Ma S�t",tbProp={0,101},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,320},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkviptnd() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="�ao Ma Th�",tbProp={0,540},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,329},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end




function hkmpcb()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"C�i Bang Ch��ng", hkvipcbc}, 
                            {"C�i Bang B�ng", hkvipcbb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcbc() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Bao tay ��ng C�u",tbProp={0,94},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,313},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkvipcbb() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="B�ng ��ch Kh�i",tbProp={0,96},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=100},
				{szName="�� May M�n C1",tbProp={4,1668,1},nCount=200},
				{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=1},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=1},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,315},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function gheptrangsuc()
	tbOpt =
	{
		"<dec><npc>L�o ��y l� th� r�n gi�i nh�t l�ng n�y ng��i c�n l�o gi�p g� ko.",
		"Gh�p th�nh sang s�c T�nh V� L�m/raptrangsuc1",
		"L�c Trang S�c T�nh V� L�m/raptrangsuc2",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end


function raptrangsuc1() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="B�ng Tinh H�ng Li�n S1",tbProp={4,747,-1},nCount=50},
				{szName="C�c Hoa Th�ch Ch� Ho�n S6",tbProp={4,758,-1},nCount=50},
				{szName="�i�n Ho�ng Ng�c B�i S2",tbProp={4,760,-1},nCount=50},
				{szName="Hi�p C�t T�nh � K�t S3",tbProp={4,773,-1},nCount=50},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=50},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,543},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u �� �p trang s�c g�m c� 50 M�nh d�y chuy�n ABHM s� 1 - 50 M�nh Nh�n ABHM c�c hoa s� 6 - 50 m�nh Ng�c B�i ABHM s� 2 - 50 m�nh ng�c b�i hi�p c�t s� 3 - 50 t�i t�ch l�y t�ng kim")
end


function raptrangsuc2() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Trang S�c T�nh V� L�m",tbProp={0,543},nQuality = 1,nCount = 1},
				{szName="Ti�n ��ng",tbProp={4,417,1},nCount=5},
				{szName="T�i T�ch L�y TK",tbProp={6,1,4415,1},nCount=10},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,543},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>L�c l�i trang s�c l� l�c cho option ra ng�u nhi�n th�nh option m�i")
end




function menuan()
	tbOpt =
	{
		"<dec><npc>L�o ��y l� th� r�n gi�i nh�t l�ng n�y ng��i c�n l�o gi�p g� ko.",
		--"R�p M�nh An Bang Ho�n M�/rapanbang",
		--"R�p M�nh Nhu T�nh/rapnhutinh",
		"N�ng C�p �n/epan",
		--"R�p C�c Ph�m Nhu T�nh/rapcpnhutinh",
		"L�c �n/Locan",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end






function epan()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				--{szName="�o nhu t�nh",tbProp={0,190},nQuality = 1,nCount = 2},
				{szName="�� C��ng H�a 4",tbProp={4,1689,1},nCount=100},
				{szName="�� Qu�",tbProp={4,1688,1},nCount=200},
				--{szName="�� C��ng H�a 3",tbProp={4,1678,1},nCount=50},
				{szName="�� May M�n c�p 4",tbProp={4,1671,1},nCount=100},
				--{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				--{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="T�i T�ng Kim",tbProp={6,1,4415,1},nCount=200},
				{szName="Ti�n ��ng",tbProp={4,417,1},nCount=300},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,random(565,569)},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n : 100 �� may m�n 4, 100 �� cuong h�a 4, 200 t�i Tk, 200 �� qu�, 300 ti�n ��ng")
end 



function anhekim()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ho�ng Kim �n",tbProp={0,565},nQuality = 1,nCount = 1},
				--{szName="�� C��ng H�a 4",tbProp={4,1689,1},nCount=100},
				{szName="�� Qu�",tbProp={4,1688,1},nCount=30},
				--{szName="�� C��ng H�a 3",tbProp={4,1678,1},nCount=50},
				--{szName="�� May M�n c�p 4",tbProp={4,1671,1},nCount=100},
				--{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				--{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="T�i T�ng Kim",tbProp={6,1,4415,1},nCount=30},
				--{szName="Ti�n ��ng",tbProp={4,417,1},nCount=300},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,random(565,569)},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n : Ho�ng kim �n, 30 �� qu�, 30 t�i T�ng Kim")
end 

function anhemoc()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ho�ng Kim �n",tbProp={0,566},nQuality = 1,nCount = 1},
				--{szName="�� C��ng H�a 4",tbProp={4,1689,1},nCount=100},
				{szName="�� Qu�",tbProp={4,1688,1},nCount=30},
				--{szName="�� C��ng H�a 3",tbProp={4,1678,1},nCount=50},
				--{szName="�� May M�n c�p 4",tbProp={4,1671,1},nCount=100},
				--{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				--{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="T�i T�ng Kim",tbProp={6,1,4415,1},nCount=30},
				--{szName="Ti�n ��ng",tbProp={4,417,1},nCount=300},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,random(565,569)},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n : Ho�ng kim �n, 30 �� qu�, 30 t�i T�ng Kim")
end 



function anhethuy()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ho�ng Kim �n",tbProp={0,567},nQuality = 1,nCount = 1},
				--{szName="�� C��ng H�a 4",tbProp={4,1689,1},nCount=100},
				{szName="�� Qu�",tbProp={4,1688,1},nCount=30},
				--{szName="�� C��ng H�a 3",tbProp={4,1678,1},nCount=50},
				--{szName="�� May M�n c�p 4",tbProp={4,1671,1},nCount=100},
				--{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				--{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="T�i T�ng Kim",tbProp={6,1,4415,1},nCount=30},
				--{szName="Ti�n ��ng",tbProp={4,417,1},nCount=300},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,random(565,569)},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n : Ho�ng kim �n, 30 �� qu�, 30 t�i T�ng Kim")
end 






function anhehoa()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ho�ng Kim �n",tbProp={0,568},nQuality = 1,nCount = 1},
				--{szName="�� C��ng H�a 4",tbProp={4,1689,1},nCount=100},
				{szName="�� Qu�",tbProp={4,1688,1},nCount=30},
				--{szName="�� C��ng H�a 3",tbProp={4,1678,1},nCount=50},
				--{szName="�� May M�n c�p 4",tbProp={4,1671,1},nCount=100},
				--{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				--{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="T�i T�ng Kim",tbProp={6,1,4415,1},nCount=30},
				--{szName="Ti�n ��ng",tbProp={4,417,1},nCount=300},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,random(565,569)},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n : Ho�ng kim �n, 30 �� qu�, 30 t�i T�ng Kim")
end 







function anhetho()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> �p th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� R�n Ho�ng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ho�ng Kim �n",tbProp={0,569},nQuality = 1,nCount = 1},
				--{szName="�� C��ng H�a 4",tbProp={4,1689,1},nCount=100},
				{szName="�� Qu�",tbProp={4,1688,1},nCount=30},
				--{szName="�� C��ng H�a 3",tbProp={4,1678,1},nCount=50},
				--{szName="�� May M�n c�p 4",tbProp={4,1671,1},nCount=100},
				--{szName="�� May M�n C2",tbProp={4,1669,1},nCount=200},
				--{szName="�� May M�n C3",tbProp={4,1670,1},nCount=200},
				{szName="T�i T�ng Kim",tbProp={6,1,4415,1},nCount=30},
				--{szName="Ti�n ��ng",tbProp={4,417,1},nCount=300},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,random(565,569)},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n : Ho�ng kim �n, 30 �� qu�, 30 t�i T�ng Kim")
end 



function Locan()
	tbOpt =
	{
		"<dec><npc>L�o ��y l� th� r�n gi�i nh�t l�ng n�y ng��i c�n l�o gi�p g� ko.",
		"l�c �n h� kim/anhekim",
		"l�c �n h� m�c/anhemoc",
		"l�c �n h� th�y/anhethuy",
		"L�c �n h� h�a/anhehoa",
		"L�c �n h� th�/anhetho",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end




function dsnhantanthu()
	tbOpt =
	{
		"<dec><npc>L�o ��y l� th� r�n gi�i nh�t l�ng n�y ng��i c�n l�o gi�p g� ko.",
		"��i Thu�c T�nh Nh�n/doithuoctinhnhan",
		--"R� Nh�n/RaNhan",
		"L�c Nh�n S�c M�nh/locnhansm",
		"L�c Nh�n Th�n Ph�p/locnhantp",
		"L�c Nh�n N�i C�ng/locnhannc",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end








function locnhansm()
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="S�c M�nh Gi�i Ch�",tbProp={0,571},nQuality = 1,nCount=1},
				--{szName="da mm 1",tbProp={4,1668,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				{szName="T�i T�ch L�y T�ng Kim",tbProp={6,1,4415,1},nCount=5},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M�nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M�nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,571},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()





end




function locnhantp()
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Th�n Ph�p Gi�i Ch�",tbProp={0,572},nQuality = 1,nCount=1},
				--{szName="da mm 1",tbProp={4,1668,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				{szName="T�i T�ch L�y T�ng Kim",tbProp={6,1,4415,1},nCount=5},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M�nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M�nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,572},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()





end





function locnhannc()
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="N�i C�ng Gi�i Ch�",tbProp={0,573},nQuality = 1,nCount=1},
				--{szName="da mm 1",tbProp={4,1668,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				{szName="T�i T�ch L�y T�ng Kim",tbProp={6,1,4415,1},nCount=5},
				{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M�nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M�nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,573},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()





end




function doithuoctinhnhan()
	tbOpt =
	{
		"<dec><npc>L�o ��y l� th� r�n gi�i nh�t l�ng n�y ng��i c�n l�o gi�p g� ko.",
		"��i Thu�c T�nh Nh�n T�n Th�/doilandau",
		--"R� Nh�n/RaNhan",
		"��i Nh�n S�c M�nh v� Nh�n T�n Th�/doinhansm",
		"��i Nh�n Th�n Ph�p v� Nh�n T�n Th�/doinhantp",
		"��i Nh�n N�i C�ng v� Nh�n T�n Th�/doinhannc",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end




function doilandau()
local tbFormula = 
                             
{
			tbMaterial = 
			{
				{szName="T�n Th� Gi�i Ch�",tbProp={0,570},nQuality = 1,nCount=1},
				{szName="Tinh Luy�n Th�ch",tbProp={4,1690,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				--{szName="da mm 3",tbProp={4,1670,1,1},nCount=5},
				--{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M�nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M�nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,random(571,573)},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()





end




function doinhansm()
local tbFormula = 
                             
{
			tbMaterial = 
			{
				{szName="S�c M�nh Gi�i Ch�",tbProp={0,571},nQuality = 1,nCount=1},
				{szName="Tinh Luy�n Th�ch",tbProp={4,1690,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				--{szName="da mm 3",tbProp={4,1670,1,1},nCount=5},
				--{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M�nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M�nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,570},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()





end


function doinhantp()
local tbFormula = 
                             
{
			tbMaterial = 
			{
				{szName="Th�n Ph�p Gi�i Ch�",tbProp={0,572},nQuality = 1,nCount=1},
				{szName="Tinh Luy�n Th�ch",tbProp={4,1690,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				--{szName="da mm 3",tbProp={4,1670,1,1},nCount=5},
				--{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M�nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M�nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,570},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()





end


function doinhannc()
local tbFormula = 
                             
{
			tbMaterial = 
			{
				{szName="N�i C�ng Gi�i Ch�",tbProp={0,573},nQuality = 1,nCount=1},
				{szName="Tinh Luy�n Th�ch",tbProp={4,1690,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				--{szName="da mm 3",tbProp={4,1670,1,1},nCount=5},
				--{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M�nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M�nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,570},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()





end










