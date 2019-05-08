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
		"<dec><npc>L·o ®©y lµ thî rÌn giái nhÊt lµng nµy ng­¬i cÇn l·o gióp g× ko.",
                                           "Läc L¹i Option Cho Trang BÞ HKMP/LocOptionHKOK",
	--"GhÐp Thµnh Trang Søc JXtinhVoLam/gheptrangsuc",
	--"Danh S¸ch Ðp ®å/danhsachFANH",
	--"N©ng CÊp Cùc PhÈm HKMP/MenuCucPham1",
	--"N©ng CÊp Phi Phong/menuphiphong",
                      --"N©ng Hoµng Kim Ên/menuan",
                        --"Danh S¸ch Ðp §¸/epda",
                        "NhÉn T©n Thñ/dsnhantanthu",




		--"N©ng CÊp Ph¸t S¸ng HKMP/Make_Weapons",
		--"Ðp Cùc phÈm §Þnh Quèc Yªu §¸i/epcucphamyeudai",
		--"Läc §Þnh Quèc Yªu §¸i - Cµn Kh«n/loccucphamyeudai",





		--"Ta Muèn Xoay L¹i M·nh Hoµng Kim/DoiHK",
		"R¸p 100 M·nh §å Phæ Thµnh HKMP /luuyrapmanh",
		--"R· HKMP Thµnh 100 M·nh §å Phæ Xoay/PhanRaHK",
		--"NhËn nguyªn liÖu thö nghiÖm tÝnh n¨ng \"vò khÝ ph¸t s¸ng\"/VuKhiPhatQuang_Test",

		--"NhËn Vò KhÝ HKMP de test/nhanvukhi",
                                         --  "Läc l¹i thuéc tÝnh trang bÞ HKMP/LocHKMPNo1",
                                           --"Läc L¹i Option Cho Trang BÞ HKMP/LocOptionHKOK",
	--"N©ng Nhu T×nh Thµnh Hoµn Mü Nhu T×nh/NCNhuTinh",
	--"Läc L¹i Option CP Nhu T×nh/LOCNhuTinh",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end


function menuphiphong()
	tbOpt =
	{
		"<dec><npc>L·o ®©y lµ thî rÌn giái nhÊt lµng nµy ng­¬i cÇn l·o gióp g× ko.",
		"Phi Phong L¨ng V©n/phiphonglv",
		"Phi Phong Pha Qu©n/phiphongpq",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function danhsachFANH()
	tbOpt =
	{
		"<dec><npc>L·o ®©y lµ thî rÌn giái nhÊt lµng nµy ng­¬i cÇn l·o gióp g× ko.",
		"R¸p M·nh An Bang Hoµn Mü/rapanbang",
		"R¸p M·nh Nhu T×nh/rapnhutinh",
		--"R¸p M·nh HiÖp Cèt/raphiepcot",
		"R¸p Cùc PhÈm Nhu T×nh/rapcpnhutinh",
		"R¸p Cùc PhÈm Cµn Kh«n/rapcpcankhon",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function epda()
	tbOpt =
	{
		"<dec><npc>L·o ®©y lµ thî rÌn giái nhÊt lµng nµy ng­¬i cÇn l·o gióp g× ko.",
		"§¸ May M¾n cÊp 4/daychuyen",
		"§¸ C­êng Hãa (cÊp 4)/nhan1",
		--"§iÒn Hoµng Th¹ch Ngäc Béi/ngocboi1",
		--"HuyÕt Th¹ch Giíi ChØ /nhan2",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function rapcpnhutinh()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="¸o nhu t×nh",tbProp={0,190},nQuality = 1,nCount = 2},
				{szName="§¸ C­êng Hãa 1",tbProp={4,1676,1},nCount=50},
				{szName="§¸ C­êng Hãa 2",tbProp={4,1677,1},nCount=50},
				{szName="§¸ C­êng Hãa 3",tbProp={4,1678,1},nCount=50},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="Tói Tèng Kim",tbProp={6,1,4415,1},nCount=100},
				{szName="Xu",tbProp={4,417,1},nCount=500},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,541},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn : 2 ¸o nhu t×nh - ®¸ c­êng hãa 1 2 3 mçi lo¹i 50 - ®¸ may m¾n 1 2 3 mçi lo¹i 200 - tói tèng kim 100 - xu 500")
end 

function phiphonglv()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng  <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=300},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=300},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=300},
				{szName="Tói Tèng Kim",tbProp={6,1,4415,1},nCount=50},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,544},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn : ®¸ may m¾n 1 2 3 mçi lo¹i 300 - tói tèng kim 50 b¹n sÏ ra ®­îc phi phong l¨ng v©n")
end 

function phiphongpq()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng  <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Phi Phong Lang Van",tbProp={0,544},nQuality = 1,nCount = 1},
				{szName="§¸ quý",tbProp={4,1688,1},nCount=200},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="Tói Tèng Kim",tbProp={6,1,4415,1},nCount=100},
				{szName="TTK",tbProp={6,1,22,1},nCount=20},
				{szName="VLMT",tbProp={6,1,26,1},nCount=20},



			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,545},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn :1 Phi Phong Lang van +  200 §¸ quý + 200 ®¸ may m¾n 1 2 3 + 100 tói Tång Kim + 20 VLMT + 20 TTK")
end 

function rapcpcankhon()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="§¸ C­êng Hãa 1",tbProp={4,1676,1},nCount=20},
				{szName="§¸ C­êng Hãa 2",tbProp={4,1677,1},nCount=20},
				{szName="§¸ C­êng Hãa 3",tbProp={4,1678,1},nCount=20},
				{szName="Tói Tèng Kim",tbProp={6,1,4415,1},nCount=100},
				{szName="Xu",tbProp={4,417,1},nCount=1000},
				{szName="M·nh Cµn Kh«n 1",tbProp={4,1679,1},nCount=100},
				{szName="M·nh Cµn Kh«n 2",tbProp={4,1680,1},nCount=100},
				{szName="M·nh Cµn Kh«n 3",tbProp={4,1681,1},nCount=100},
				{szName="M·nh Cµn Kh«n 4",tbProp={4,1682,1},nCount=100},
				{szName="M·nh Cµn Kh«n 5",tbProp={4,1683,1},nCount=100},
				{szName="M·nh Cµn Kh«n 6",tbProp={4,1684,1},nCount=100},
				{szName="M·nh Cµn Kh«n 7",tbProp={4,1685,1},nCount=100},
				{szName="M·nh Cµn Kh«n 8",tbProp={4,1686,1},nCount=100},
				{szName="M·nh Cµn Kh«n 9",tbProp={4,1687,1},nCount=100},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,428},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu Ðp cµn kh«n giíi chØ cÇn : M·nh cµn kh«n 1 2 3 4 5 6 7 8 9 mçi lo¹i 100 - tói tèng kim 100 - xu 1000 - ®¸ c­êng hãa 1 2 3 mçi lo¹i 20 ")
end 

function rapnhutinh()
	tbOpt =
	{
		"<dec><npc>L·o ®©y lµ thî rÌn giái nhÊt lµng nµy ng­¬i cÇn l·o gióp g× ko.",
		"Nhu T×nh C©n Quèc Nghª Th­êng/aonhutinhmanh",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function raphiepcot()
	tbOpt =
	{
		"<dec><npc>L·o ®©y lµ thî rÌn giái nhÊt lµng nµy ng­¬i cÇn l·o gióp g× ko.",
		"HiÖp Cèt T×nh ý kÕt/hiepcotngocboi",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function epcucphamyeudai()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="§ai §Þnh Quèc Th­êng",tbProp={0,163},nQuality = 1,nCount = 5},
				{szName="M·nh 3 HuyÕt Th¹ch ChØ",tbProp={4,767,1},nCount=50},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=20},
				{szName="B¶o R­¬ng HKMP",tbProp={6,1,4423,1},nCount=2},
				{szName="Xu",tbProp={4,417,1},nCount=100},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,407},nQuality = 1,nCount = 1,CallBack= _Message},
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
		"<dec><npc>L·o ®©y lµ thî rÌn giái nhÊt lµng nµy ng­¬i cÇn l·o gióp g× ko.",
		"Läc Cùc PhÈm §Þnh Quèc Yªu §¸i/loccucphamyeudai2",
		"Läc Cµn Kh«n Giíi ChØ/loccankhonchi",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function loccucphamyeudai2()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> läc thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="§ai §Þnh Quèc CP",tbProp={0,407},nQuality = 1,nCount = 1},
				{szName="Xu",tbProp={4,417,1},nCount=30},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,407},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> läc thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Cµn Kh«n Giíi ChØ",tbProp={0,428},nQuality = 1,nCount = 1},
				{szName="Xu",tbProp={4,417,1},nCount=30},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,428},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Hîp thµnh c«ng <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="TiÒn §ång",tbProp={4,417,1},nCount=10},
				{szName="M·nh 1",tbProp={4,771,1},nCount=1},
				{szName="M·nh 2",tbProp={4,772,1},nCount=1},
				{szName="M·nh 3",tbProp={4,773,1},nCount=1},
				{szName="M·nh 4 - 5 - 6",tbProp={4,774,1},nCount=1},
				{szName="M·nh 5",tbProp={4,775,1},nCount=1},
				{szName="M·nh 6",tbProp={4,776,1},nCount=1},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,189},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Hîp thµnh c«ng <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="TiÒn §ång",tbProp={4,417,1},nCount=50},
				{szName="M·nh 1",tbProp={4,777,1},nCount=1},
				{szName="M·nh 2",tbProp={4,778,1},nCount=1},
				{szName="M·nh 3",tbProp={4,779,1},nCount=1},
				{szName="M·nh 4 - 5 - 6",tbProp={4,780,1},nCount=1},
				{szName="M·nh 5",tbProp={4,781,1},nCount=1},
				{szName="M·nh 6",tbProp={4,782,1},nCount=1},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,190},nQuality = 1,nCount = 1,CallBack= _Message},
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
				{szName="TiÒn §ång",tbProp={4,417,1,1},nCount=1},
				{szName="da mm 1",tbProp={4,1668,1,1},nCount=5},
				{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				{szName="da mm 3",tbProp={4,1670,1,1},nCount=5},
				{szName="tói TK",tbProp={6,1,4415,1,0},nCount=1},
				--{szName="M·nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M·nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={4,1671,1,1},nQuality = 1,nCount = 1,nRate= 20,CallBack= _Message},
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
				{szName="TiÒn §ång",tbProp={4,417,1},nCount=1},
				{szName="CH 1",tbProp={4,1676,1},nCount=3},
				{szName="CH 2",tbProp={4,1677,1},nCount=3},
				{szName="CH 3",tbProp={4,1678,1},nCount=3},
				{szName="Tói TK",tbProp={6,1,4415,1,0},nCount=1},
				--{szName="M·nh 5",tbProp={4,757,1},nCount=1},
				--{szName="M·nh 6",tbProp={4,758,1},nCount=1},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={4,1689,1},nQuality = 1,nCount = 1,nRate= 20,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Hîp thµnh c«ng <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="TiÒn §ång",tbProp={4,417,1},nCount=10},
				{szName="M·nh 1",tbProp={4,759,1},nCount=1},
				{szName="M·nh 2",tbProp={4,760,1},nCount=1},
				{szName="M·nh 3",tbProp={4,761,1},nCount=1},
				{szName="M·nh 4 -5 - 6",tbProp={4,762,1},nCount=1},
				{szName="M·nh 5",tbProp={4,763,1},nCount=1},
				{szName="M·nh 6",tbProp={4,764,1},nCount=1},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,426},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Hîp thµnh c«ng <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="TiÒn §ång",tbProp={4,417,1},nCount=10},
				{szName="M·nh 1",tbProp={4,765,1},nCount=1},
				{szName="M·nh 2",tbProp={4,766,1},nCount=1},
				{szName="M·nh 3",tbProp={4,767,1},nCount=1},
				{szName="M·nh 4 -5 - 6",tbProp={4,768,1},nCount=1},
				{szName="M·nh 5",tbProp={4,769,1},nCount=1},
				{szName="M·nh 6",tbProp={4,770,1},nCount=1},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,427},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> N©ng CÊp ¸o nhu t×nh thµnh <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî LuyÖn Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="¸o Nhu T×nh",tbProp={0,190},nQuality = 1,nCount = 1},
				{szName="VLMT",tbProp={6,1,22,1},nCount=50},
				{szName="TTK",tbProp={6,1,26,1},nCount=50},
				{szName="Tói Tèng Kim",tbProp={6,1,4415,1},nCount=100},
				{szName="Kim C­¬ng",tbProp={4,1667,1},nCount=15},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,541},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Läc thµnh c«ng thuéc tÝnh <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî LuyÖn Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="CP Nhu T×nh",tbProp={0,541},nQuality = 1,nCount = 1},
				{szName="Tói Tèng Kim",tbProp={6,1,4415,1},nCount=10},
				{szName="Xu",tbProp={4,417,1},nCount=50},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,541},nQuality = 1,nCount = 1,CallBack= _Message},
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
		"<dec><npc>L­u ý khi hîp tõ 100 m·nh ra HKMP t­¬ng øng sÏ nhËn ®­îc 1 trnag bÞ HKMP vÜnh viÔn rÊt cã gi¸ trÞ­",
                                                       "Ta ®· ®äc hiÓu råi ta muèn r¸p HKMP/EpHoangKim",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end






function no()
end



function Make_Weapons()
	--szDescription = format("+ 1 Tö Thñy Tinh\n+ 1 Lôc Thñy Tinh\n+ 1 Lam Thñy Tinh\n+ 50 TiÒn §ång\n=> Trang bÞ ®Ñp long lanh.")
	szDescription = format("+ 100 TiÒn §ång\n=> Trang bÞ ph¸t s¸ng.")

	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_MakeWeapons", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_MakeWeapons(nCount)
	if nCount == 0 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
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
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 else
				Talk(1, "no", "ThËt thø lçi! Kh¶ n¨ng cña ta ca giíi h¹n, kh«ng thÓ n©ng cÊp <color=red>trang bÞ<color> nµy ®­îc.")
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
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng­¬i ch­a ®Æt vò khÝ cÇn n©ng cÊp vµo « trèng")
		return
	end
	
	--local nCountStone1 = getn(tbDatabase.tbStone1)
	--if nCountStone1 ~= 1 then
		--Talk(1, "no", "CÇn cã 1 viªn <color=red>Lam Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		--return
	--end
	
	--local nCountStone2 = getn(tbDatabase.tbStone2)
	--if nCountStone2 ~= 1 then
		--Talk(1, "no", "CÇn cã 1 viªn <color=red>Tö Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		--return
	--end
	
	--local nCountStone3 = getn(tbDatabase.tbStone3)
	--if nCountStone3 ~= 1 then
		--Talk(1, "no", "CÇn cã 1 viªn <color=red>Lôc Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		--return
	--end

	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 100) then
		Talk(1, "no", "CÇn cã 100 <color=red>TiÒn §ång<color> míi cã thÓ n©ng cÊp.")
		return
	end
	--local nIDX = GetGiveItemUnit(n)
	--local nQuality = GetItemQuality(nIDX)
	--if nQuality ~= 1 then
		--Talk(1, "", "Trang bÞ ng­¬i ®Æt vµo kh«ng ph¶i lµ trang bÞ hoµng kim")
		--return
	--end

	
	--RemoveItemByIndex(tbDatabase.tbStone1[1])
	--RemoveItemByIndex(tbDatabase.tbStone2[1])
	--RemoveItemByIndex(tbDatabase.tbStone3[1])
	RemoveItemByIndex(tbDatabase.tbItem[1])
                                                                                  ConsumeEquiproomItem(100,4,417,1,1)

	if nSucces == 0 then
		Msg2Player("RÊt tiÕc! ThÊt b¹i lµ chuyÖn b×nh th­êng cña binh gia,huynh ®µi ®õng n¶n chÝ h·y cè g¾ng lÇn n÷a sÏ ®­îc nh­ ý.")
	elseif nSucces == 1 then
		_Weapons(tbDatabase.tbWeapons[1], nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· n©ng cÊp thµnh c«ng vò khÝ ph¸t quang.")
                                                                                                                                                                     Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> §· n©ng cÊp thµnh c«ng vò khÝ<color=green> Ph¸t S¸ng!")
                                                                                                                                                                     SaveNow();
                                                                                   local epphatsang = "script/global/bil4i3n/bil4i3n_log/vukhiphatsang.log"
	local moepphatsang = openfile(epphatsang  , "a");
	--write(moepphatsang,format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] N©ng cÊp thµnh c«ng vò khÝ ph¸t s¸ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
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
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={4,417,1,0,0,0},nCount=50,},}, "test", 1); 

end

function nhanvukhi()
--tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,11},nCount=1,nQuality = 1,nExpiredTime=1440},}, "test", 1); 
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,16},nCount=1,nQuality = 1,},}, "test", 1); 

end



--------------------------hkmp han su dung-------------------------

function LocOptionHKOK()
	local title = "Läc Trang bÞ HKMP"
	g_GiveItemUI(title, "NL cÇn 30xu + 30 tói tèng kim + 30 §¸ Quý ®Ó läc ra option míi ", {GiveUIOK4}, nil, nil)   --- 100 tiÒn ®ång l­u ý 100 tiÒn ®ång ph¶i ®Ó ngoµi hµnh trang
end


--------------®Þnh nghÜa b¶ng trang bÞ HKMP tbHKMP : thªm vµo nhiÒu dßng tõ id thÊp tíi cao

tbHKMP = {

		[1]={	
			{"Méng Long ChÝnh Hång T¨ng M·o",1}, 
			{"Méng Long Kim Ti ChÝnh Hång Cµ Sa",2},
			{"Méng Long HuyÒn Ti Ph¸t ®¸i",3},
			{"Méng Long PhËt Ph¸p HuyÒn Béi",4},
			{"Méng Long §¹t Ma T¨ng hµi",5},
			{"Phôc Ma Tö Kim C«n",6},
			{"Phôc Ma HuyÒn Hoµng Cµ Sa",7},
			{"Phôc Ma ¤ Kim NhuyÔn §iÒu",8},
			{"Phôc Ma PhËt T©m NhuyÔn KhÊu",9},
			{"Phôc Ma Phæ §é T¨ng hµi",10},
{"Tø Kh«ng Gi¸ng Ma Giíi ®ao",11},
{"Tø Kh«ng Tö Kim Cµ Sa",12},
{"Tø Kh«ng Hé ph¸p Yªu ®¸i",13},
{"Tø Kh«ng NhuyÔn B× Hé UyÓn",14},
{"Tø Kh«ng Giíi LuËt Ph¸p giíi",15},
{"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy",16},
{"H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p",17},
{"H¸m Thiªn Uy Vò Thóc yªu ®¸i",18},
{"H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn",19},
{"H¸m Thiªn Thõa Long ChiÕn Ngoa",20},
{"KÕ NghiÖp B«n L«i Toµn Long th­¬ng",21},
{"KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",22},
{"KÕ NghiÖp B¹ch Hæ V« Song khÊu",23},
{"KÕ NghiÖp HáaV©n Kú L©n Thñ ",24},
{"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",25},
{"Ngù Long L­îng Ng©n B¶o ®ao",26},
{"Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p",27},
{"Ngù Long Thiªn M«n Thóc Yªu hoµn",28},
{"Ngù Long TÊn Phong Hé yÓn",29},
{"Ngù Long TuyÖt MÖnh ChØ hoµn",30},
{"V« Gian û Thiªn KiÕm",31},
{"V« Gian Thanh Phong Truy Y",32},
{"V« Gian PhÊt V©n Ti ®¸i",33},
{"V« Gian CÇm VËn Hé UyÓn",34},
{"V« Gian B¹ch Ngäc Bµn ChØ ",35},
{"V« Ma Ma Ni qu¸n",36},
{"V« Ma Tö Kh©m Cµ Sa",37},
{"V« Ma B¨ng Tinh ChØ Hoµn",38},
{"V« Ma TÈy T­îng Ngäc KhÊu ",39},
{"V« Ma Hång Truy NhuyÔn Th¸p hµi",40},
{"V« TrÇn Ngäc N÷ Tè T©m qu¸n",41},
{"V« TrÇn Thanh T©m H­íng ThiÖn Ch©u",42},
{"V« TrÇn Tõ Bi Ngäc Ban ChØ ",43},
{"V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi",44},
{"V« TrÇn PhËt Quang ChØ Hoµn",45},
{"Tª Hoµng Phông Nghi ®ao",46},
{"Tª Hoµng TuÖ T©m Khinh Sa Y",47},
{"Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i",48},
{"Tª Hoµng B¨ng Tung CÈm uyÓn",49},
{"Tª Hoµng Thóy Ngäc ChØ Hoµn",50},
{"BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao",51},
{"BÝch H¶i Hoµn Ch©u Vò Liªn",52},
{"BÝch H¶i Hång Linh Kim Ti ®¸i",53},
{"BÝch H¶i Hång L¨ng Ba",54},
{"BÝch H¶i Khiªn TÕ ChØ hoµn",55},
{"U Lung Kim Xµ Ph¸t ®¸i",56},
{"U Lung XÝch YÕt MËt trang",57},
{"U Lung Thanh Ng« TriÒn yªu",58},
{"U Lung Ng©n ThÒm Hé UyÓn",59},
{"U Lung MÆc Thï NhuyÔn Lý ",60},
{"Minh ¶o Tµ S¸t §éc NhËn",61},
{"Minh ¶o U §éc ¸m Y",62},
{"Minh ¶o §éc YÕt ChØ Hoµn",63},
{"Minh ¶o Hñ Cèt Hé uyÓn",64},
{"Minh ¶o Song Hoµn Xµ Hµi",65},
{"Chó Ph­îc Ph¸ gi¸p ®Çu hoµn",66},
{"Chó Ph­îc DiÖt L«i C¶nh Phï ",67},
{"Chó Ph­îc U ¶o ChØ Hoµn",68},
{"Chó Ph­îc Xuyªn T©m §éc UyÓn",69},
{"Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",70},
{"B¨ng Hµn §¬n ChØ Phi §ao",71},
{"B¨ng Hµn HuyÒn Y Thóc Gi¸p",72},
{"B¨ng Hµn T©m TiÔn Yªu KhÊu",73},
{"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi",74},
{"B¨ng Hµn NguyÖt ¶nh Ngoa",75},
{"Thiªn Quang Hoa Vò M¹n Thiªn",76},
{"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï ",77},
{"Thiªn Quang S©m La Thóc §¸i",78},
{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",79},
{"Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn",80},
{"S©m Hoang Phi Tinh §o¹t Hån",81},
{"S©m Hoang KimTiÒn Liªn Hoµn Gi¸p",82},
{"S©m Hoang Hån Gi¶o Yªu Thóc",83},
{"S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi",84},
{"S©m Hoang Tinh VÉn Phi Lý ",85},
{"§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n",86},
{"§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn",87},
{"§Þa Ph¸ch TÝch LÞch L«i Háa Giíi",88},
{"§Þa Ph¸ch KhÊu T©m tr¹c",89},
{"§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa",90},
{"§ång Cõu Phi Long §Çu hoµn",91},
{"§ång Cõu Gi¸ng Long C¸i Y",92},
{"§ång Cõu TiÒm Long Yªu §¸i",93},
{"§ång Cõu Kh¸ng Long Hé UyÓn",94},
{"§ång Cõu KiÕn Long Ban ChØ ",95},
{"§Þch Kh¸i Lôc Ngäc Tr­îng",96},
{"§Þch Kh¸i Cöu §¹i C¸i Y",97},
{"§Þch Kh¸i TriÒn M·ng yªu ®¸i",98},
{"§Þch Kh¸i CÈu TÝch B× Hé uyÓn",99},
{"§Þch Kh¸i Th¶o Gian Th¹ch giíi",100},
{"Ma S¸t Quû Cèc U Minh Th­¬ng",101},
{"Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",102},
{"Ma S¸t XÝch Ký Táa Yªu KhÊu",103},
{"Ma S¸t Cö Háa Liªu Thiªn uyÓn",104},
{"Ma S¸t V©n Long Thæ Ch©u giíi",105},
{"Ma Hoµng Kim Gi¸p Kh«i",106},
{"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",107},
{"Ma Hoµng Khª Cèc Thóc yªu ®¸i",108},
{"Ma Hoµng HuyÕt Y Thó Tr¹c",109},
{"Ma Hoµng §¨ng §¹p Ngoa",110},
{"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn",111},
{"Ma ThÞ LÖ Ma PhÖ T©m Liªn",112},
{"Ma ThÞ NghiÖp Háa U Minh Giíi",113},
{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",114},
{"Ma ThÞ s¬n  H¶i Phi Hång Lý ",115},
{"L¨ng Nh¹c Th¸i Cùc KiÕm",116},
{"L¨ng Nh¹c V« Ng· ®¹o bµo",117},
{"L¨ng Nh¹c Né L«i Giíi",118},
{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",119},
{"L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi",120},
{"CËp Phong Ch©n Vò KiÕm",121},
{"CËp Phong Tam Thanh Phï ",122},
{"CËp Phong HuyÒn Ti Tam §o¹n cÈm",123},
{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",124},
{"CËp Phong Thanh Tïng Ph¸p giíi",125},
{"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt",126},
{"S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo",127},
{"S­¬ng Tinh Thanh Phong Lò ®¸i",128},
{"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ ",129},
{"S­¬ng Tinh Phong B¹o chØ hoµn",130},
{"L«i Khung Hµn Tung B¨ng B¹ch quan",131},
{"L«i Khung Thiªn §Þa Hé phï ",132},
{"L«i Khung Phong L«i Thanh CÈm ®¸i",133},
{"L«i Khung Linh Ngäc UÈn L«i",134},
{"L«i Khung Cöu Thiªn DÉn L«i giíi",135},
{"Vô ¶o B¾c Minh §¹o qu¸n",136},
{"Vô ¶o Ki B¸n phï chó ",137},
{"Vô ¶o Thóc T©m chØ hoµn",138},
{"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi",139},
{"Vô ¶o Tung Phong TuyÕt ¶nh ngoa",140},


},
}

function GiveUIOK4(putCount) --ep phi phong 9
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo trang bÞ HKMP")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
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
		local maxId = hkmpTable[3][2]   --- d·y cuèi cïng cña bant tbHKMP ®Þnh nghÜa ë trªn			
		if (goldEquipIndex < 1) or (goldEquipIndex > 140) or (ts1 >0) then 
			Talk(1,"", "Xin vui lßng ®Æt vµo 1 trang bÞ HKMP vµ trang bÞ ph¶i kh«ng cã h¹n sö dông")
			return
		end
	local nSilverCount0 = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount0 < 30) then
		Talk(1, "no", "CÇn cã 30 <color=red>TiÒn §ång<color> ®Ó ngoµi hµnh trang míi cã thÓ läc trang bÞ.")
		return
		end
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4415,1) ;
	if(nSilverCount1 < 30) then
		Talk(1, "no", "CÇn cã 30 <color=red>Tèng Kim TÝch Lòy Bao<color> ®Ó ngoµi hµnh trang míi cã thÓ läc trang bÞ .")
		return
		end
                       local nSilverCount1 = CalcEquiproomItemCount(4,1688,1,1) ;
	if(nSilverCount1 < 30) then
		Talk(1, "no", "CÇn cã 30 <color=red>Tèng Kim TÝch Lòy Bao<color> ®Ó ngoµi hµnh trang míi cã thÓ läc trang bÞ .")
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
Msg2SubWorld("<pic=7>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> läc l¹i option trang bÞ <color=gold>"..tenhk.."<color> thµnh c«ng <color=yellow>T¹i NPC Thî RÌn.")
				else
		Talk(1, "", "Kh«ng ®ñ nguyªn liÖu xin h·y kiÓm tra l¹i.")
		return
		end
	else
		Talk(1,"", "Trang bÞ kh«ng cã trong danh s¸ch nguyªn liÖu kh«ng ®óng")
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
	GiveItemUI("Xoay M¶nh Hoµng Kim","Nh÷ng nguyªn liÖu cÇn:\n\n+ 1 §å phæ hoµng kim ngÉu nhiªn\n+ 1 TiÒn ®ång ë hµnh trang","TienHanhDoiHK")
end


function TienHanhDoiHK(nCount)
	local nCountXU = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCountXU < 1) then
		Say("<color=green>Thî RÌn:<color> Kh¸ch quan ch­a ®ñ tiÒn! Khi nµo cã ®ñ tiÒn h·y quay l¹i.",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit( i )		--get itemindex
		local nG, nD,nP = GetItemProp(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		local nCountStack = GetItemStackCount(nItemIndex) or 1;

		if nG ~= 4 then
			Say("<color=orange>§©y kh«ng ph¶i ®å phæ hoµng kim haha lõa ta µ..",0);
			return
		end
		if   nD < %tbListIDItem[1][1] or nD > %tbListIDItem[163][1] then
			Say("<color=orange>§©y lµ vËt phÈm gi ? l¹ qu¸ ta ch­a tõng thÊy",0);
			return
		end
	
		if nCountStack ~= 1 then
			Say("<color=orange>Sè l­îng m·nh Hoµng Kim kh«ng ®óng mçi lÇn xoay chØ cho phÐp 1 m·nh",0);
			return
		end


	end
	ConsumeEquiproomItem(1, 4, 417, 1, 1)
	nItemIndex = GetGiveItemUnit(1)
               local nTen=GetItemName(nItemIndex)
	k = RemoveItemByIndex( nItemIndex )
	if ( k ~= 1 ) then
		Say("ChuyÖn g× vËy, Ch­a bá vËt phÇm vµo mµ?",0)
		return 0
	end
tbitem1  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸t §¸i", tbProp = {4,1499,1,1,0,0}, nCount = 1},
	}
tbitem2  =
	{
		[1]={szName = "§å phæ Hoµng Kim - L«i Khung Linh Ngäc UÈn L«i", tbProp = {4,1630,1,1,0,0}, nCount = 1},
	}
tbitem3  =
	{
		[1]={szName = "§å phæ Hoµng Kim - §ång Cõu Gi¸ng Long C¸i Y", tbProp = {4,1588,1,1,0,0}, nCount = 1},
	}
tbitem4  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Méng Long ChÝnh Hång T¨ng M·o", tbProp = {4,1497,1,1,0,0}, nCount = 1},
	}
tbitem5  =
	{
		[1]={szName = "§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i", tbProp = {4,1518,1,1,0,0}, nCount = 1},
	}
tbitem6  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Phôc Ma ¤ Kim NhuyÔn §iÒu", tbProp = {4,1504,1,1,0,0}, nCount = 1},
	}
tbitem7  =
	{
		[1]={szName = "§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p", tbProp = {4,1513,1,1,0,0}, nCount = 1},
	}
tbitem8 =
	{
		[1]={szName = "§å phæ Hoµng Kim - Tø Kh«ng Hé Ph¸p Yªu §¸i", tbProp = {4,1509,1,1,0,0}, nCount = 1},
	}
tbitem9  =
	{
		[1]={szName = "§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i", tbProp = {4,1549,1,1,0,0}, nCount = 1},
	}
tbitem10  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Tø Kh«ng NhuyÔn B× Hé UyÓn", tbProp = {4,1510,1,1,0,0}, nCount = 1},
	}
tbitem11  =
	{
		[1]={szName = "§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa", tbProp = {4,1516,1,1,0,0}, nCount = 1},
	}
tbitem12  =
	{
		[1]={szName = "§å phæ Hoµng Kim - V« Gian PhÊt V©n Ti ®¸i", tbProp = {4,1529,1,1,0,0}, nCount = 1},
	}
tbitem13  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Ngù Long TÊn Phong Hé yÓn", tbProp = {4,1525,1,1,0,0}, nCount = 1},
	}
tbitem14  =
	{
		[1]={szName = "§å phæ Hoµng Kim - V« Gian CÇm VËn Hé UyÓn", tbProp = {4,1530,1,1,0,0}, nCount = 1},
	}
tbitem15  =
	{
		[1]={szName = "§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n", tbProp = {4,1537,1,1,0,0}, nCount = 1},
	}
tbitem16  =
	{
		[1]={szName = "§å phæ Hoµng Kim - V« Ma Hång Truy NhuyÔn Th¸p hµi", tbProp = {4,1536,1,1,0,0}, nCount = 1},
	}
tbitem17  =
	{
		[1]={szName = "§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u", tbProp = {4,1538,1,1,0,0}, nCount = 1},
	}
tbitem18  =
	{
		[1]={szName = "§å phæ Hoµng Kim - V« Ma Ma Ni qu¸n", tbProp = {4,1532,1,1,0,0}, nCount = 1},
	}
tbitem19  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i", tbProp = {4,1544,1,1,0,0}, nCount = 1},
	}
tbitem20  =
	{
		[1]={szName = "§å phæ Hoµng Kim - U Lung XÝch YÕt MËt trang", tbProp = {4,1553,1,1,0,0}, nCount = 1},
	}
tbitem21  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Tª Hoµng B¨ng Tung CÈm uyÓn", tbProp = {4,1545,1,1,0,0}, nCount = 1},
	}
tbitem22  =
	{
		[1]={szName = "§å phæ Hoµng Kim - U Lung MÆc Thï NhuyÔn Lý", tbProp = {4,1556,1,1,0,0}, nCount = 1},
	}
tbitem23  =
	{
		[1]={szName = "§å phæ Hoµng Kim - BÝch H¶i Hoµn Ch©u Vò Liªn", tbProp = {4,1548,1,1,0,0}, nCount = 1},
	}
tbitem24  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Minh ¶o U §éc ¸m Y", tbProp = {4,1558,1,1,0,0}, nCount = 1},
	}
tbitem25  =
	{
		[1]={szName = "§å phæ Hoµng Kim - BÝch H¶i Hång L¨ng Ba", tbProp = {4,1550,1,1,0,0}, nCount = 1},
	}
tbitem26  =
	{
		[1]={szName = "§å phæ Hoµng Kim - B¨ng Hµn HuyÒn Y Thóc Gi¸p", tbProp = {4,1568,1,1,0,0}, nCount = 1},
	}
tbitem27  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Minh ¶o Hñ Cèt Hé uyÓn", tbProp = {4,1560,1,1,0,0}, nCount = 1},
	}
tbitem28  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Chó Ph­îc DiÖt L«i C¶nh Phï", tbProp = {4,1563,1,1,0,0}, nCount = 1},
	}
tbitem29  =
	{
		[1]={szName = "§å phæ Hoµng Kim - §Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n", tbProp = {4,1582,1,1,0,0}, nCount = 1},
	}
tbitem30  =
	{
		[1]={szName = "§å phæ Hoµng Kim - B¨ng Hµn T©m TiÔn Yªu KhÊu", tbProp = {4,1569,1,1,0,0}, nCount = 1},
	}
tbitem31  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi", tbProp = {4,1635,1,1,0,0}, nCount = 1},
	}
tbitem32  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï", tbProp = {4,1573,1,1,0,0}, nCount = 1},
	}
tbitem33  =
	{
		[1]={szName = "§å phæ Hoµng Kim - L«i Khung Thiªn §Þa Hé phï", tbProp = {4,1628,1,1,0,0}, nCount = 1},
	}
tbitem34  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Phôc Ma Phæ §é T¨ng hµi", tbProp = {4,1506,1,1,0,0}, nCount = 1},
	}
tbitem35  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn", tbProp = {4,1603,1,1,0,0}, nCount = 1},
	}
tbitem36  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Thiªn Quang S©m La Thóc §¸i", tbProp = {4,1574,1,1,0,0}, nCount = 1},
	}
tbitem37  =
	{
		[1]={szName = "§å phæ Hoµng Kim - §Þch Kh¸i CÈu TÝch B× Hé uyÓn", tbProp = {4,1595,1,1,0,0}, nCount = 1},
	}
tbitem38  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c", tbProp = {4,1575,1,1,0,0}, nCount = 1},
	}
tbitem39  =
	{
		[1]={szName = "§å phæ Hoµng Kim - S©m Hoang Hån Gi¶o Yªu Thóc", tbProp = {4,1579,1,1,0,0}, nCount = 1},
	}
tbitem40  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi", tbProp = {4,1610,1,1,0,0}, nCount = 1},
	}
tbitem41  =
	{
		[1]={szName = "§å phæ Hoµng Kim - S©m Hoang Tinh VÉn Phi Lý", tbProp = {4,1581,1,1,0,0}, nCount = 1},
	}
tbitem42  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi", tbProp = {4,1635,1,1,0,0}, nCount = 1},
	}
tbitem43  =
	{
		[1]={szName = "§å phæ Hoµng Kim - §ång Cõu Phi Long §Çu hoµn", tbProp = {4,1587,1,1,0,0}, nCount = 1},
	}
tbitem44  =
	{
		[1]={szName = "§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u", tbProp = {4,1538,1,1,0,0}, nCount = 1},
	}
tbitem45  =
	{
		[1]={szName = "§å phæ Hoµng Kim - §ång Cõu TiÒm Long Yªu §¸i", tbProp = {4,1589,1,1,0,0}, nCount = 1},
	}
tbitem46  =
	{
		[1]={szName = "§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n", tbProp = {4,1537,1,1,0,0}, nCount = 1},
	}
tbitem47  =
	{
		[1]={szName = "§å phæ Hoµng Kim - §Þch Kh¸i TriÒn M·ng yªu ®¸i", tbProp = {4,1594,1,1,0,0}, nCount = 1},
	}
tbitem48  =
	{
		[1]={szName = "§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i", tbProp = {4,1549,1,1,0,0}, nCount = 1},
	}
tbitem49  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p", tbProp = {4,1598,1,1,0,0}, nCount = 1},
	}
tbitem50  =
	{
		[1]={szName = "§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p", tbProp = {4,1513,1,1,0,0}, nCount = 1},
	}
tbitem51  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Ma S¸t Cö Háa Liªu Thiªn uyÓn", tbProp = {4,1600,1,1,0,0}, nCount = 1},
	}
tbitem52  =
	{
		[1]={szName = "§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i", tbProp = {4,1518,1,1,0,0}, nCount = 1},
	}
tbitem53  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Ma Hoµng HuyÕt Y Thó Tr¹c", tbProp = {4,1605,1,1,0,0}, nCount = 1},
	}
tbitem54  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸t §¸i", tbProp = {4,1499,1,1,0,0}, nCount = 1},
	}
tbitem55  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Ma ThÞ LiÖt DiÖm Qu¸n MiÖn", tbProp = {4,1607,1,1,0,0}, nCount = 1},
	}
tbitem56  =
	{
		[1]={szName = "§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u", tbProp = {4,1538,1,1,0,0}, nCount = 1},
	}
tbitem57  =
	{
		[1]={szName = "§å phæ Hoµng Kim - L¨ng Nh¹c V« Ng· ®¹o bµo", tbProp = {4,1613,1,1,0,0}, nCount = 1},
	}
tbitem58  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi", tbProp = {4,1635,1,1,0,0}, nCount = 1},
	}
tbitem59  =
	{
		[1]={szName = "§å phæ Hoµng Kim - L¨ng Nh¹c Né L«i Giíi", tbProp = {4,1614,1,1,0,0}, nCount = 1},
	}
tbitem60  =
	{
		[1]={szName = "§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i", tbProp = {4,1549,1,1,0,0}, nCount = 1},
	}
tbitem61  =
	{
		[1]={szName = "§å phæ Hoµng Kim - L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi", tbProp = {4,1615,1,1,0,0}, nCount = 1},
	}
tbitem62  =
	{
		[1]={szName = "§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n", tbProp = {4,1537,1,1,0,0}, nCount = 1},
	}
tbitem63  =
	{
		[1]={szName = "§å phæ Hoµng Kim - CËp Phong Tam Thanh Phï", tbProp = {4,1618,1,1,0,0}, nCount = 1},
	}
tbitem64  =
	{
		[1]={szName = "§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i", tbProp = {4,1518,1,1,0,0}, nCount = 1},
	}
tbitem65  =
	{
		[1]={szName = "§å phæ Hoµng Kim - CËp Phong HuyÒn Ti Tam §o¹n cÈm", tbProp = {4,1619,1,1,0,0}, nCount = 1},
	}
tbitem66  =
	{
		[1]={szName = "§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p", tbProp = {4,1513,1,1,0,0}, nCount = 1},
	}
tbitem67  =
	{
		[1]={szName = "§å phæ Hoµng Kim - CËp Phong Thóy Ngäc HuyÒn Hoµng Béi", tbProp = {4,1620,1,1,0,0}, nCount = 1},
	}
tbitem68  =
	{
		[1]={szName = "§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i", tbProp = {4,1549,1,1,0,0}, nCount = 1},
	}
tbitem69  =
	{
		[1]={szName = "§å phæ Hoµng Kim - S­¬ng Tinh Thanh Phong Lò ®¸i", tbProp = {4,1624,1,1,0,0}, nCount = 1},
	}
tbitem70  =
	{
		[1]={szName = "§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa", tbProp = {4,1516,1,1,0,0}, nCount = 1},
	}
tbitem71  =
	{
		[1]={szName = "§å phæ Hoµng Kim - S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ", tbProp = {4,1625,1,1,0,0}, nCount = 1},
	}
tbitem72  =
	{
		[1]={szName = "§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa", tbProp = {4,1516,1,1,0,0}, nCount = 1},
	}
tbitem73  =
	{
		[1]={szName = "§å phæ Hoµng Kim - Vô ¶o Tung Phong TuyÕt ¶nh ngoa", tbProp = {4,1636,1,1,0,0}, nCount = 1},
	}


	local nTyLe = random(1,225)
	if nTyLe == 1 then
		tbAwardTemplet:GiveAwardByList(tbitem1, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸t §¸i<color>!!!",GetName()));
	elseif nTyLe == 2 then
		tbAwardTemplet:GiveAwardByList(tbitem1, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸t §¸i<color>!!!",GetName()));
	elseif nTyLe == 3 then
		tbAwardTemplet:GiveAwardByList(tbitem1, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸t §¸i<color>!!!",GetName()));
	elseif nTyLe == 4 then
		tbAwardTemplet:GiveAwardByList(tbitem1, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸t §¸i<color>!!!",GetName()));
	elseif nTyLe == 5 then
		tbAwardTemplet:GiveAwardByList(tbitem1, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸t §¸i<color>!!!",GetName()));
	elseif nTyLe == 6 then
		tbAwardTemplet:GiveAwardByList(tbitem2, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - L«i Khung Linh Ngäc UÈn L«i<color>!!!",GetName()));
	elseif nTyLe == 7 then
		tbAwardTemplet:GiveAwardByList(tbitem3, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §ång Cõu Gi¸ng Long C¸i Y<color>!!!",GetName()));
	elseif nTyLe == 8 then
		tbAwardTemplet:GiveAwardByList(tbitem3, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §ång Cõu Gi¸ng Long C¸i Y<color>!!!",GetName()));
	elseif nTyLe == 9 then
		tbAwardTemplet:GiveAwardByList(tbitem3, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §ång Cõu Gi¸ng Long C¸i Y<color>!!!",GetName()));
	elseif nTyLe == 10 then
		tbAwardTemplet:GiveAwardByList(tbitem3, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §ång Cõu Gi¸ng Long C¸i Y<color>!!!",GetName()));
	elseif nTyLe == 11 then
		tbAwardTemplet:GiveAwardByList(tbitem3, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §ång Cõu Gi¸ng Long C¸i Y<color>!!!",GetName()));
	elseif nTyLe == 12 then
		tbAwardTemplet:GiveAwardByList(tbitem4, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Méng Long ChÝnh Hång T¨ng M·o<color>!!!",GetName()));
	elseif nTyLe == 13 then
		tbAwardTemplet:GiveAwardByList(tbitem5, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 14 then
		tbAwardTemplet:GiveAwardByList(tbitem5, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 15 then
		tbAwardTemplet:GiveAwardByList(tbitem5, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 16 then
		tbAwardTemplet:GiveAwardByList(tbitem5, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 17 then
		tbAwardTemplet:GiveAwardByList(tbitem5, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 18 then
		tbAwardTemplet:GiveAwardByList(tbitem6, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Phôc Ma ¤ Kim NhuyÔn §iÒu<color>!!!",GetName()));
	elseif nTyLe == 19 then
		tbAwardTemplet:GiveAwardByList(tbitem7, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 20 then
		tbAwardTemplet:GiveAwardByList(tbitem7, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 21 then
		tbAwardTemplet:GiveAwardByList(tbitem7, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 22 then
		tbAwardTemplet:GiveAwardByList(tbitem7, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 23 then
		tbAwardTemplet:GiveAwardByList(tbitem7, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 24 then
		tbAwardTemplet:GiveAwardByList(tbitem8, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Tø Kh«ng Hé Ph¸p Yªu §¸i<color>!!!",GetName()));
	elseif nTyLe == 25 then
		tbAwardTemplet:GiveAwardByList(tbitem9, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 26 then
		tbAwardTemplet:GiveAwardByList(tbitem9, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 27 then
		tbAwardTemplet:GiveAwardByList(tbitem9, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 28 then
		tbAwardTemplet:GiveAwardByList(tbitem9, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 29 then
		tbAwardTemplet:GiveAwardByList(tbitem9, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 30 then
		tbAwardTemplet:GiveAwardByList(tbitem10, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Tø Kh«ng NhuyÔn B× Hé UyÓn<color>!!!",GetName()));
	elseif nTyLe == 31 then
		tbAwardTemplet:GiveAwardByList(tbitem11, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 32 then
		tbAwardTemplet:GiveAwardByList(tbitem11, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 33 then
		tbAwardTemplet:GiveAwardByList(tbitem11, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 34 then
		tbAwardTemplet:GiveAwardByList(tbitem11, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 35 then
		tbAwardTemplet:GiveAwardByList(tbitem11, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 36 then
		tbAwardTemplet:GiveAwardByList(tbitem12, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« Gian PhÊt V©n Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 37 then
		tbAwardTemplet:GiveAwardByList(tbitem13, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ngù Long TÊn Phong Hé yÓn<color>!!!",GetName()));
	elseif nTyLe == 38 then
		tbAwardTemplet:GiveAwardByList(tbitem13, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ngù Long TÊn Phong Hé yÓn<color>!!!",GetName()));
	elseif nTyLe == 39 then
		tbAwardTemplet:GiveAwardByList(tbitem13, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ngù Long TÊn Phong Hé yÓn<color>!!!",GetName()));
	elseif nTyLe == 40 then
		tbAwardTemplet:GiveAwardByList(tbitem13, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ngù Long TÊn Phong Hé yÓn<color>!!!",GetName()));
	elseif nTyLe == 41 then
		tbAwardTemplet:GiveAwardByList(tbitem13, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ngù Long TÊn Phong Hé yÓn<color>!!!",GetName()));
	elseif nTyLe == 42 then
		tbAwardTemplet:GiveAwardByList(tbitem14, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« Gian CÇm VËn Hé UyÓn<color>!!!",GetName()));
	elseif nTyLe == 43 then
		tbAwardTemplet:GiveAwardByList(tbitem15, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 44 then
		tbAwardTemplet:GiveAwardByList(tbitem15, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 45 then
		tbAwardTemplet:GiveAwardByList(tbitem15, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 46 then
		tbAwardTemplet:GiveAwardByList(tbitem15, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 47 then
		tbAwardTemplet:GiveAwardByList(tbitem15, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 48 then
		tbAwardTemplet:GiveAwardByList(tbitem16, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« Ma Hång Truy NhuyÔn Th¸p hµi<color>!!!",GetName()));
	elseif nTyLe == 49 then
		tbAwardTemplet:GiveAwardByList(tbitem17, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 50 then
		tbAwardTemplet:GiveAwardByList(tbitem17, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 51 then
		tbAwardTemplet:GiveAwardByList(tbitem17, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 52 then
		tbAwardTemplet:GiveAwardByList(tbitem17, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 53 then
		tbAwardTemplet:GiveAwardByList(tbitem17, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 54 then
		tbAwardTemplet:GiveAwardByList(tbitem18, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« Ma Ma Ni qu¸n<color>!!!",GetName()));
	elseif nTyLe == 55 then
		tbAwardTemplet:GiveAwardByList(tbitem19, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i<color>!!!",GetName()));
	elseif nTyLe == 56 then
		tbAwardTemplet:GiveAwardByList(tbitem19, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i<color>!!!",GetName()));
	elseif nTyLe == 57 then
		tbAwardTemplet:GiveAwardByList(tbitem19, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i<color>!!!",GetName()));
	elseif nTyLe == 58 then
		tbAwardTemplet:GiveAwardByList(tbitem19, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i<color>!!!",GetName()));
	elseif nTyLe == 59 then
		tbAwardTemplet:GiveAwardByList(tbitem19, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i<color>!!!",GetName()));
	elseif nTyLe == 60 then
		tbAwardTemplet:GiveAwardByList(tbitem20, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - U Lung XÝch YÕt MËt trang<color>!!!",GetName()));
	elseif nTyLe == 61 then
		tbAwardTemplet:GiveAwardByList(tbitem21, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Tª Hoµng B¨ng Tung CÈm uyÓn<color>!!!",GetName()));
	elseif nTyLe == 62 then
		tbAwardTemplet:GiveAwardByList(tbitem21, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Tª Hoµng B¨ng Tung CÈm uyÓn<color>!!!",GetName()));
	elseif nTyLe == 63 then
		tbAwardTemplet:GiveAwardByList(tbitem21, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Tª Hoµng B¨ng Tung CÈm uyÓn<color>!!!",GetName()));
	elseif nTyLe == 64 then
		tbAwardTemplet:GiveAwardByList(tbitem21, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Tª Hoµng B¨ng Tung CÈm uyÓn<color>!!!",GetName()));
	elseif nTyLe == 65 then
		tbAwardTemplet:GiveAwardByList(tbitem21, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Tª Hoµng B¨ng Tung CÈm uyÓn<color>!!!",GetName()));
	elseif nTyLe == 66 then
		tbAwardTemplet:GiveAwardByList(tbitem22, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - U Lung MÆc Thï NhuyÔn Lý<color>!!!",GetName()));
	elseif nTyLe == 67 then
		tbAwardTemplet:GiveAwardByList(tbitem23, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hoµn Ch©u Vò Liªn<color>!!!",GetName()));
	elseif nTyLe == 68 then
		tbAwardTemplet:GiveAwardByList(tbitem23, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hoµn Ch©u Vò Liªn<color>!!!",GetName()));
	elseif nTyLe == 69 then
		tbAwardTemplet:GiveAwardByList(tbitem23, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hoµn Ch©u Vò Liªn<color>!!!",GetName()));
	elseif nTyLe == 70 then
		tbAwardTemplet:GiveAwardByList(tbitem23, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hoµn Ch©u Vò Liªn<color>!!!",GetName()));
	elseif nTyLe == 71 then
		tbAwardTemplet:GiveAwardByList(tbitem23, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hoµn Ch©u Vò Liªn<color>!!!",GetName()));
	elseif nTyLe == 72 then
		tbAwardTemplet:GiveAwardByList(tbitem24, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Minh ¶o U §éc ¸m Y<color>!!!",GetName()));
	elseif nTyLe == 73 then
		tbAwardTemplet:GiveAwardByList(tbitem25, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång L¨ng Ba<color>!!!",GetName()));
	elseif nTyLe == 74 then
		tbAwardTemplet:GiveAwardByList(tbitem25, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång L¨ng Ba<color>!!!",GetName()));
	elseif nTyLe == 75 then
		tbAwardTemplet:GiveAwardByList(tbitem25, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång L¨ng Ba<color>!!!",GetName()));
	elseif nTyLe == 76 then
		tbAwardTemplet:GiveAwardByList(tbitem25, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång L¨ng Ba<color>!!!",GetName()));
	elseif nTyLe == 77 then
		tbAwardTemplet:GiveAwardByList(tbitem25, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång L¨ng Ba<color>!!!",GetName()));
	elseif nTyLe == 78 then
		tbAwardTemplet:GiveAwardByList(tbitem26, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - B¨ng Hµn HuyÒn Y Thóc Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 79 then
		tbAwardTemplet:GiveAwardByList(tbitem27, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Minh ¶o Hñ Cèt Hé uyÓn<color>!!!",GetName()));
	elseif nTyLe == 80 then
		tbAwardTemplet:GiveAwardByList(tbitem27, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Minh ¶o Hñ Cèt Hé uyÓn<color>!!!",GetName()));
	elseif nTyLe == 81 then
		tbAwardTemplet:GiveAwardByList(tbitem27, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Minh ¶o Hñ Cèt Hé uyÓn<color>!!!",GetName()));
	elseif nTyLe == 82 then
		tbAwardTemplet:GiveAwardByList(tbitem27, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Minh ¶o Hñ Cèt Hé uyÓn<color>!!!",GetName()));
	elseif nTyLe == 83 then
		tbAwardTemplet:GiveAwardByList(tbitem27, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Minh ¶o Hñ Cèt Hé uyÓn<color>!!!",GetName()));
	elseif nTyLe == 84 then
		tbAwardTemplet:GiveAwardByList(tbitem28, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Chó Ph­îc DiÖt L«i C¶nh Phï<color>!!!",GetName()));
	elseif nTyLe == 85 then
		tbAwardTemplet:GiveAwardByList(tbitem28, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Chó Ph­îc DiÖt L«i C¶nh Phï<color>!!!",GetName()));
	elseif nTyLe == 86 then
		tbAwardTemplet:GiveAwardByList(tbitem28, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Chó Ph­îc DiÖt L«i C¶nh Phï<color>!!!",GetName()));
	elseif nTyLe == 87 then
		tbAwardTemplet:GiveAwardByList(tbitem28, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Chó Ph­îc DiÖt L«i C¶nh Phï<color>!!!",GetName()));
	elseif nTyLe == 88 then
		tbAwardTemplet:GiveAwardByList(tbitem28, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Chó Ph­îc DiÖt L«i C¶nh Phï<color>!!!",GetName()));
	elseif nTyLe == 89 then
		tbAwardTemplet:GiveAwardByList(tbitem29, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n<color>!!!",GetName()));
	elseif nTyLe == 90 then
		tbAwardTemplet:GiveAwardByList(tbitem29, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n<color>!!!",GetName()));
	elseif nTyLe == 91 then
		tbAwardTemplet:GiveAwardByList(tbitem29, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n<color>!!!",GetName()));
	elseif nTyLe == 92 then
		tbAwardTemplet:GiveAwardByList(tbitem29, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n<color>!!!",GetName()));
	elseif nTyLe == 93 then
		tbAwardTemplet:GiveAwardByList(tbitem29, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n<color>!!!",GetName()));
	elseif nTyLe == 94 then
		tbAwardTemplet:GiveAwardByList(tbitem30, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - B¨ng Hµn T©m TiÔn Yªu KhÊu<color>!!!",GetName()));
	elseif nTyLe == 95 then
		tbAwardTemplet:GiveAwardByList(tbitem31, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 96 then
		tbAwardTemplet:GiveAwardByList(tbitem31, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 97 then
		tbAwardTemplet:GiveAwardByList(tbitem31, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 98 then
		tbAwardTemplet:GiveAwardByList(tbitem31, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 99 then
		tbAwardTemplet:GiveAwardByList(tbitem31, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 100 then
		tbAwardTemplet:GiveAwardByList(tbitem32, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï<color>!!!",GetName()));
	elseif nTyLe == 101 then
		tbAwardTemplet:GiveAwardByList(tbitem33, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - L«i Khung Thiªn §Þa Hé phï<color>!!!",GetName()));
	elseif nTyLe == 101 then
		tbAwardTemplet:GiveAwardByList(tbitem33, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - L«i Khung Thiªn §Þa Hé phï<color>!!!",GetName()));
	elseif nTyLe == 103 then
		tbAwardTemplet:GiveAwardByList(tbitem33, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - L«i Khung Thiªn §Þa Hé phï<color>!!!",GetName()));
	elseif nTyLe == 104 then
		tbAwardTemplet:GiveAwardByList(tbitem33, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - L«i Khung Thiªn §Þa Hé phï<color>!!!",GetName()));
	elseif nTyLe == 105 then
		tbAwardTemplet:GiveAwardByList(tbitem33, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - L«i Khung Thiªn §Þa Hé phï<color>!!!",GetName()));
	elseif nTyLe == 106 then
		tbAwardTemplet:GiveAwardByList(tbitem34, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Phôc Ma Phæ §é T¨ng hµi<color>!!!",GetName()));
	elseif nTyLe == 107 then
		tbAwardTemplet:GiveAwardByList(tbitem35, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn<color>!!!",GetName()));
	elseif nTyLe == 108 then
		tbAwardTemplet:GiveAwardByList(tbitem35, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn<color>!!!",GetName()));
	elseif nTyLe == 109 then
		tbAwardTemplet:GiveAwardByList(tbitem35, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn<color>!!!",GetName()));
	elseif nTyLe == 110 then
		tbAwardTemplet:GiveAwardByList(tbitem35, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn<color>!!!",GetName()));
	elseif nTyLe == 111 then
		tbAwardTemplet:GiveAwardByList(tbitem35, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn<color>!!!",GetName()));
	elseif nTyLe == 112 then
		tbAwardTemplet:GiveAwardByList(tbitem36, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Thiªn Quang S©m La Thóc §¸i<color>!!!",GetName()));
	elseif nTyLe == 113 then
		tbAwardTemplet:GiveAwardByList(tbitem37, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §Þch Kh¸i CÈu TÝch B× Hé uyÓn<color>!!!",GetName()));
	elseif nTyLe == 114 then
		tbAwardTemplet:GiveAwardByList(tbitem37, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §Þch Kh¸i CÈu TÝch B× Hé uyÓn<color>!!!",GetName()));
	elseif nTyLe == 115 then
		tbAwardTemplet:GiveAwardByList(tbitem37, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §Þch Kh¸i CÈu TÝch B× Hé uyÓn<color>!!!",GetName()));
	elseif nTyLe == 116 then
		tbAwardTemplet:GiveAwardByList(tbitem37, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §Þch Kh¸i CÈu TÝch B× Hé uyÓn<color>!!!",GetName()));
	elseif nTyLe == 117 then
		tbAwardTemplet:GiveAwardByList(tbitem37, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §Þch Kh¸i CÈu TÝch B× Hé uyÓn<color>!!!",GetName()));
	elseif nTyLe == 118 then
		tbAwardTemplet:GiveAwardByList(tbitem38, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c<color>!!!",GetName()));
	elseif nTyLe == 119 then
		tbAwardTemplet:GiveAwardByList(tbitem39, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - S©m Hoang Hån Gi¶o Yªu Thóc<color>!!!",GetName()));
	elseif nTyLe == 120 then
		tbAwardTemplet:GiveAwardByList(tbitem39, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - S©m Hoang Hån Gi¶o Yªu Thóc<color>!!!",GetName()));
	elseif nTyLe == 121 then
		tbAwardTemplet:GiveAwardByList(tbitem39, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - S©m Hoang Hån Gi¶o Yªu Thóc<color>!!!",GetName()));
	elseif nTyLe == 122 then
		tbAwardTemplet:GiveAwardByList(tbitem39, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - S©m Hoang Hån Gi¶o Yªu Thóc<color>!!!",GetName()));
	elseif nTyLe == 123 then
		tbAwardTemplet:GiveAwardByList(tbitem39, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - S©m Hoang Hån Gi¶o Yªu Thóc<color>!!!",GetName()));
	elseif nTyLe == 124 then
		tbAwardTemplet:GiveAwardByList(tbitem40, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi<color>!!!",GetName()));
	elseif nTyLe == 125 then
		tbAwardTemplet:GiveAwardByList(tbitem40, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi<color>!!!",GetName()));
	elseif nTyLe == 126 then
		tbAwardTemplet:GiveAwardByList(tbitem40, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi<color>!!!",GetName()));
	elseif nTyLe == 127 then
		tbAwardTemplet:GiveAwardByList(tbitem40, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi<color>!!!",GetName()));
	elseif nTyLe == 128 then
		tbAwardTemplet:GiveAwardByList(tbitem40, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi<color>!!!",GetName()));
	elseif nTyLe == 129 then
		tbAwardTemplet:GiveAwardByList(tbitem41, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - S©m Hoang Tinh VÉn Phi Lý<color>!!!",GetName()));
	elseif nTyLe == 130 then
		tbAwardTemplet:GiveAwardByList(tbitem42, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 131 then
		tbAwardTemplet:GiveAwardByList(tbitem42, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 132 then
		tbAwardTemplet:GiveAwardByList(tbitem42, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 133 then
		tbAwardTemplet:GiveAwardByList(tbitem42, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 134 then
		tbAwardTemplet:GiveAwardByList(tbitem42, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 135 then
		tbAwardTemplet:GiveAwardByList(tbitem43, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §ång Cõu Phi Long §Çu hoµn<color>!!!",GetName()));
	elseif nTyLe == 136 then
		tbAwardTemplet:GiveAwardByList(tbitem44, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 137 then
		tbAwardTemplet:GiveAwardByList(tbitem44, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 138 then
		tbAwardTemplet:GiveAwardByList(tbitem44, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 139 then
		tbAwardTemplet:GiveAwardByList(tbitem44, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 140 then
		tbAwardTemplet:GiveAwardByList(tbitem44, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 141 then
		tbAwardTemplet:GiveAwardByList(tbitem45, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §ång Cõu TiÒm Long Yªu §¸i<color>!!!",GetName()));
	elseif nTyLe == 142 then
		tbAwardTemplet:GiveAwardByList(tbitem46, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 143 then
		tbAwardTemplet:GiveAwardByList(tbitem46, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 144 then
		tbAwardTemplet:GiveAwardByList(tbitem46, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 145 then
		tbAwardTemplet:GiveAwardByList(tbitem46, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 146 then
		tbAwardTemplet:GiveAwardByList(tbitem46, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 147 then
		tbAwardTemplet:GiveAwardByList(tbitem47, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - §Þch Kh¸i TriÒn M·ng yªu ®¸i<color>!!!",GetName()));
	elseif nTyLe == 148 then
		tbAwardTemplet:GiveAwardByList(tbitem48, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 149 then
		tbAwardTemplet:GiveAwardByList(tbitem48, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 150 then
		tbAwardTemplet:GiveAwardByList(tbitem48, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 151 then
		tbAwardTemplet:GiveAwardByList(tbitem48, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 152 then
		tbAwardTemplet:GiveAwardByList(tbitem48, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 153 then
		tbAwardTemplet:GiveAwardByList(tbitem49, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 154 then
		tbAwardTemplet:GiveAwardByList(tbitem50, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 155 then
		tbAwardTemplet:GiveAwardByList(tbitem50, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 156 then
		tbAwardTemplet:GiveAwardByList(tbitem50, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 157 then
		tbAwardTemplet:GiveAwardByList(tbitem50, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 158 then
		tbAwardTemplet:GiveAwardByList(tbitem50, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 159 then
		tbAwardTemplet:GiveAwardByList(tbitem51, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma S¸t Cö Háa Liªu Thiªn uyÓn<color>!!!",GetName()));
	elseif nTyLe == 160 then
		tbAwardTemplet:GiveAwardByList(tbitem52, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 161 then
		tbAwardTemplet:GiveAwardByList(tbitem52, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 162 then
		tbAwardTemplet:GiveAwardByList(tbitem52, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 163 then
		tbAwardTemplet:GiveAwardByList(tbitem52, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 164 then
		tbAwardTemplet:GiveAwardByList(tbitem52, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 165 then
		tbAwardTemplet:GiveAwardByList(tbitem53, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma Hoµng HuyÕt Y Thó Tr¹c<color>!!!",GetName()));
	elseif nTyLe == 166 then
		tbAwardTemplet:GiveAwardByList(tbitem54, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸t §¸i<color>!!!",GetName()));
	elseif nTyLe == 167 then
		tbAwardTemplet:GiveAwardByList(tbitem54, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸t §¸i<color>!!!",GetName()));
	elseif nTyLe == 168 then
		tbAwardTemplet:GiveAwardByList(tbitem54, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸t §¸i<color>!!!",GetName()));
	elseif nTyLe == 169 then
		tbAwardTemplet:GiveAwardByList(tbitem54, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸t §¸i<color>!!!",GetName()));
	elseif nTyLe == 170 then
		tbAwardTemplet:GiveAwardByList(tbitem54, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Méng Long HuyÒn Ti Ph¸t §¸i<color>!!!",GetName()));
	elseif nTyLe == 171 then
		tbAwardTemplet:GiveAwardByList(tbitem55, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Ma ThÞ LiÖt DiÖm Qu¸n MiÖn<color>!!!",GetName()));
	elseif nTyLe == 172 then
		tbAwardTemplet:GiveAwardByList(tbitem56, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 173 then
		tbAwardTemplet:GiveAwardByList(tbitem56, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 174 then
		tbAwardTemplet:GiveAwardByList(tbitem56, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 175 then
		tbAwardTemplet:GiveAwardByList(tbitem56, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 176 then
		tbAwardTemplet:GiveAwardByList(tbitem56, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Thanh T©m H­íng ThiÖn Ch©u<color>!!!",GetName()));
	elseif nTyLe == 177 then
		tbAwardTemplet:GiveAwardByList(tbitem57, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - L¨ng Nh¹c V« Ng· ®¹o bµo<color>!!!",GetName()));
	elseif nTyLe == 178 then
		tbAwardTemplet:GiveAwardByList(tbitem58, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 179 then
		tbAwardTemplet:GiveAwardByList(tbitem58, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 180 then
		tbAwardTemplet:GiveAwardByList(tbitem58, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 181 then
		tbAwardTemplet:GiveAwardByList(tbitem58, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 182 then
		tbAwardTemplet:GiveAwardByList(tbitem58, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 183 then
		tbAwardTemplet:GiveAwardByList(tbitem59, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - L¨ng Nh¹c Né L«i Giíi<color>!!!",GetName()));
	elseif nTyLe == 184 then
		tbAwardTemplet:GiveAwardByList(tbitem60, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 185 then
		tbAwardTemplet:GiveAwardByList(tbitem60, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 186 then
		tbAwardTemplet:GiveAwardByList(tbitem60, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 187 then
		tbAwardTemplet:GiveAwardByList(tbitem60, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 188 then
		tbAwardTemplet:GiveAwardByList(tbitem60, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 189 then
		tbAwardTemplet:GiveAwardByList(tbitem61, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi<color>!!!",GetName()));
	elseif nTyLe == 190 then
		tbAwardTemplet:GiveAwardByList(tbitem62, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 191 then
		tbAwardTemplet:GiveAwardByList(tbitem62, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 192 then
		tbAwardTemplet:GiveAwardByList(tbitem62, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 193 then
		tbAwardTemplet:GiveAwardByList(tbitem62, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 194 then
		tbAwardTemplet:GiveAwardByList(tbitem62, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - V« TrÇn Ngäc N÷ Tè T©m qu¸n<color>!!!",GetName()));
	elseif nTyLe == 195 then
		tbAwardTemplet:GiveAwardByList(tbitem63, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - CËp Phong Tam Thanh Phï<color>!!!",GetName()));
	elseif nTyLe == 196 then
		tbAwardTemplet:GiveAwardByList(tbitem64, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 197 then
		tbAwardTemplet:GiveAwardByList(tbitem64, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 198 then
		tbAwardTemplet:GiveAwardByList(tbitem64, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 199 then
		tbAwardTemplet:GiveAwardByList(tbitem64, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 200 then
		tbAwardTemplet:GiveAwardByList(tbitem64, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i<color>!!!",GetName()));
	elseif nTyLe == 201 then
		tbAwardTemplet:GiveAwardByList(tbitem65, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - CËp Phong HuyÒn Ti Tam §o¹n cÈm<color>!!!",GetName()));
	elseif nTyLe == 202 then
		tbAwardTemplet:GiveAwardByList(tbitem66, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 203 then
		tbAwardTemplet:GiveAwardByList(tbitem66, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 204 then
		tbAwardTemplet:GiveAwardByList(tbitem66, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 205 then
		tbAwardTemplet:GiveAwardByList(tbitem66, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 206 then
		tbAwardTemplet:GiveAwardByList(tbitem66, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p<color>!!!",GetName()));
	elseif nTyLe == 207 then
		tbAwardTemplet:GiveAwardByList(tbitem67, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - CËp Phong Thóy Ngäc HuyÒn Hoµng Béi<color>!!!",GetName()));
	elseif nTyLe == 208 then
		tbAwardTemplet:GiveAwardByList(tbitem68, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 209 then
		tbAwardTemplet:GiveAwardByList(tbitem68, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 210 then
		tbAwardTemplet:GiveAwardByList(tbitem68, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 211 then
		tbAwardTemplet:GiveAwardByList(tbitem68, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 212 then
		tbAwardTemplet:GiveAwardByList(tbitem68, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - BÝch H¶i Hång Linh Kim Ti ®¸i<color>!!!",GetName()));
	elseif nTyLe == 213 then
		tbAwardTemplet:GiveAwardByList(tbitem69, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - S­¬ng Tinh Thanh Phong Lò ®¸i<color>!!!",GetName()));
	elseif nTyLe == 214 then
		tbAwardTemplet:GiveAwardByList(tbitem70, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 215 then
		tbAwardTemplet:GiveAwardByList(tbitem70, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 216 then
		tbAwardTemplet:GiveAwardByList(tbitem70, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 217 then
		tbAwardTemplet:GiveAwardByList(tbitem70, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 218 then
		tbAwardTemplet:GiveAwardByList(tbitem70, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 219 then
		tbAwardTemplet:GiveAwardByList(tbitem71, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ<color>!!!",GetName()));
	elseif nTyLe == 220 then
		tbAwardTemplet:GiveAwardByList(tbitem72, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 221 then
		tbAwardTemplet:GiveAwardByList(tbitem72, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 222 then
		tbAwardTemplet:GiveAwardByList(tbitem72, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 223 then
		tbAwardTemplet:GiveAwardByList(tbitem72, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 224 then
		tbAwardTemplet:GiveAwardByList(tbitem72, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - H¸m Thiªn Thõa Long ChiÕn Ngoa<color>!!!",GetName()));
	elseif nTyLe == 225 then
		tbAwardTemplet:GiveAwardByList(tbitem73, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Tung Phong TuyÕt ¶nh ngoa<color>!!!",GetName()));
	else 
		tbAwardTemplet:GiveAwardByList(tbitem72, "Xoay M¶nh Hoµng Kim");
	Msg2Player(format("Chóc mõng <color=green> %s <color><color=cyan>Xoay M¶nh Hoµng Kim<color> nhËn ®­îc <color=yellow>§å phæ Hoµng Kim - Vô ¶o Tung Phong TuyÕt ¶nh ngoa<color>!!!",GetName()));
	end
--SaveNow()
end





function OnExit()

end;

function EpHoangKim()
	GiveItemUI("ChÕ t¹o trang bÞ hoµng kim !","CÇn 100 M·nh Hoµng Kim cïng lo¹i, 200 tói tèng kim tÝch lòy bao, 200 ®¸ may m¾n cÊp 4, 200 ®¸ c­êng hãa cÊp 4, 500 tiÒn ®ång<enter>L­u ý: Trang bÞ hoµng kim Ðp ra sÏ cã h¹n sö dông vÜnh viÔn.!","TienHanhGhepHK")
end

function TienHanhGhepHK(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit( i )		--get itemindex
		local nG, nD,nP = GetItemProp(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		local nCountStack = GetItemStackCount(nItemIndex) or 1;

		if nG ~= 4 then
			Say("<color=0xa9ffe0>Ng­êi tÝnh qua mÆt l·o giµ nh­ ta sao ? BiÕn ®i chæ kh¸c.",0);
			return
		end
		if   nD < %tbListIDItem[1][1] or nD > %tbListIDItem[163][1] then
			Say("<color=0xa9ffe0>Ng­êi tÝnh qua mÆt l·o giµ nh­ ta sao ? BiÕn ®i chæ kh¸c.",0);
			return
		end
	
		if nCountStack < 100 then
			Say("<color=0xa9ffe0>§¹i hiÖp ch­a ®ñ sè l­îng 100 M¶nh Hoµng Kim ®ång lo¹i !",0);
			return
		end
	local nSilverCount = CalcEquiproomItemCount(6,1,4415,1) ;
	if(nSilverCount < 200) then -- gia xu
		Talk(1,"","CÇn cã 200 tói tèng kim tÝch lòy bao ®æi t¹i shop tèng kim ng­¬i ch­a ®ñ tr×nh ®Ó ®æi µ h·y cè g¾ng rÌn luyÖn thªm!..") -- go
	return end

                       local nSilverCount1 = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount1 < 500) then -- gia xu
		Talk(1,"","CÇn cã 500 tiÒn ®ång ®Ó hîp thµnh trang bÞ hoµng kim m«n ph¸i!..") -- go
	return end

                        local nSilverCount2 = CalcEquiproomItemCount(4,1671,1,1) ;
	if(nSilverCount2 < 200) then -- gia xu
		Talk(1,"","CÇn cã 200 ®¸ may m¾n cÊp 4 ®Ó hîp thµnh trang bÞ hoµng kim!..") -- go
	return end

                        local nSilverCount3= CalcEquiproomItemCount(4,1689,1,1) ;
	if(nSilverCount3 < 200) then -- gia xu
		Talk(1,"","CÇn cã 200 ®¸ c­êng hãa cÊp 4 ®Ó hîp thµnh trang bÞ hoµng kim!..") -- go
	return end

                        local nSilverCount4= CalcEquiproomItemCount(4,1688,1,1) ;
	if(nSilverCount4 < 200) then -- gia xu
		Talk(1,"","CÇn cã 200 ®¸ Quý ®Ó hîp thµnh trang bÞ hoµng kim!..") -- go
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
		Say("Ng­êi tÝnh qua mÆt l·o giµ nh­ ta sao ? BiÕn ®i chæ kh¸c.",0)
		return 0
	end

tbitem  =
	{
		[1]={szName = "Trang BÞ Hoµng Kim", tbProp = {0, c}, nCount = 1,nQuality = 1,},
	}
	tbAwardTemplet:GiveAwardByList(tbitem, "GhÐp M·nh Hoµng Kim ");
                           ConsumeEquiproomItem(200,6,1,4415,1)
ConsumeEquiproomItem(500,4,417,1,1)
ConsumeEquiproomItem(200,4,1671,1,1)
ConsumeEquiproomItem(200,4,1689,1,1)
ConsumeEquiproomItem(200,4,1688,1,1)
	--Msg2Player("<color=0xff5040>Chóc mõng c¸c h¹ ®· chÕ t¹o thµnh c«ng nhËn ®­îc trang bÞ hoµng kim theo ­íc nguyÖn ! ");
	AddGlobalNews(format("<color=0xa9ffe0>Chóc mõng <color=yellow> %s <color>chÕ t¹o thµnh c«ng <color=yellow>"..nTen.."<color> nhËn ®­îc trang bÞ Hoµng Kim v« cïng quý gi¸!!!",GetName()));
	Msg2SubWorld(format("<color=0xa9ffe0>Chóc mõng <color=yellow> %s <color>chÕ t¹o thµnh c«ng <color=yellow>"..nTen.."<color> nhËn ®­îc trang bÞ Hoµng Kim v« cïng quý gi¸!!!",GetName()));
SaveNow()
end


local KimTe = {4,979}

function PhanRaHK()
GiveItemUI("Ph©n m·nh trang bÞ hoµng kim !"," CÇn 1 Trang BÞ Hoµng Kim\n + 1 Kim Tª Mua T¹i Shop Tèng Kim\n------------------------------ !","TienHanhPhanRaHK")
end

function TienHanhPhanRaHK(nCount)

	if nCount~= 2 then
		Talk(1, "", "<color=yellow>B¹n ®· bá vËt phÈm thiÕu hoÆc nh×u h¬n quy ®Þnh , xem l¹i yªu cÇu yªu cÇu.<color>");
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
				Talk(1, "", "<color=yellow>Trang BÞ<color> cña ng­¬i ®· bÞ h­ h¹i kh«ng thÓ trïng luyÖn.");
				return
			end
			if   ID < %tbListIDItem[1][2] or ID > %tbListIDItem[163][2] then
				Say("<color=orange>§©y lµ vËt phÈm gi ? l¹ qu¸ ta ch­a tõng thÊy",0);
				return
			end
			if nTrangBi >= 1 then
				Talk(1, "", "B¹n ®· bá <color=yellow>Trang BÞ<color> qu¸ sè l­îng yªu cÇu.");
				return
			else
				nTrangBi = nTrangBi +1;
				tbTrangBiHK = nItemIndex;
			end

		elseif nG == %KimTe[1] and nD == %KimTe[2] then
			if nKimTe >= 1 then
				Talk(1, "", "<color=yellow>B¹n ®· bá <color=green>Kim Tª<color> qu¸ sè l­îng yªu cÇu.<color>");
				return
			else
				nKimTe= nKimTe+ 1;
				tbKimTe = nItemIndex;
			end
		else
			Say("<color=orange>Nguyªn LiÖu ko ®óng",0);
			return
		end
	nItemTime = ITEM_GetExpiredTime(nItemIndex)
	if nItemTime ~= 0 then
		Talk(1, "", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
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
		[1]={szName = "M·nh Hoµng Kim", tbProp = {4, c, 1, 1,0,0}, nCount = nSL},
	}
	tbAwardTemplet:GiveAwardByList(tbitem, "Ph©n M·nh Hoµng Kim");
	if nSL == 100 then
		Msg2Player("<color=orange>Ph©n M·nh Hoµng Kim Thµnh C«ng");
Msg2SubWorld("Chóc Mõng <color=pink>"..GetName().." <color=yellow>§· ph©n m·nh thµnh c«ng trang bÞ t¹i thî LuyÖn Kim.")

	else
		Msg2Player("<color=orange>Ph©n M·nh Hoµng Kim Thµnh C«ng");
Msg2SubWorld("Chóc Mõng <color=pink>"..GetName().." <color=yellow>§· ph©n m·nh thµnh c«ng trang bÞ t¹i thî LuyÖn Kim.")

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
Say("Xin mêi chän trang bÞ",7,"Nga Mi/hkmpnm","Thóy Yªn/hkmpty","§­êng M«n/hkmpdm","Ngò §éc/hkmpnd","Thiªn V­¬ng/hkmptv","Trang Sau/MenuCucPham2","KÕt thóc ®èi tho¹i/no") 
end

function MenuCucPham2() 
Say("Xin mêi chän trang bÞ",7,"ThiÕu L©m/hkmptl","Vâ §ang/hkmpvd","C«n L«n/hkmpcl","Thiªn NhÉn/hkmptn","C¸i Bang/hkmpcb","Trang Tr­íc/MenuCucPham1","KÕt thóc ®èi tho¹i/no") 
end

function hkmpnm() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Nga My Ch­ëng", hkvipnmc}, 
                {"Nga My KiÕm", hkvipnmk}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
        return 1 
end 

function hkvipnmc()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ngäc Béi Nga Mi",tbProp={0,39},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,258},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="KiÕm Nga Mi",tbProp={0,31},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,250},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function hkmpty()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Thóy Yªn §ao", hkviptyd}, 
                {"Thóy Yªn Ch­ëng", hkviptyc}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptyd() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="§ao Tª Hoµng",tbProp={0,46},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,265},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Song §ao BÝch H¶i",tbProp={0,51},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,270},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkmpdm()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
        local tbOpt= 
               { 
                {"§­êng M«n Ná", hkvipbv}, 
                            {"§­êng M«n Phi Tiªu", hkvippt}, 
                {"§­êng M«n B¨ng Hµn", hkvippd}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipbv() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Ná Thiªn Quang",tbProp={0,76},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,295},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Phi Tiªu S©m Hoµng",tbProp={0,81},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,300},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Phi §ao B¨ng Hµn",tbProp={0,71},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,290},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end




function hkmpnd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Ngò §éc Ch­ëng", hkvipndc}, 
                            {"Ngò §éc §ao", hkvipndd}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipndc() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Nãn U Lung",tbProp={0,56},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,275},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="§ao Minh ¶o",tbProp={0,61},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,280},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function hkmptv()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"Thiªn V­¬ng Th­¬ng", hkviptvt}, 
                            {"Thiªn V­¬ng Chïy", hkviptvc}, 
                {"Thiªn V­¬ng §ao", hkviptvd}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptvt() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Th­¬ng Thiªn V­¬ng",tbProp={0,21},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,240},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Chïy H¸m Thiªn",tbProp={0,16},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,235},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="§ao Ngù Long",tbProp={0,26},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,245},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkmptl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"ThiÕu L©m §ao", hkviptld}, 
                            {"ThiÕu L©m Bæng", hkviptlb}, 
                {"ThiÕu L©m QuyÒn", hkviptlq}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptld() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="§ao Tø Kh«ng",tbProp={0,11},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,230},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Phôc Ma C«n",tbProp={0,6},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,225},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="¸o Méng Long",tbProp={0,2},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,221},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkmpvd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Vâ §ang Ch­ëng", hkvipvdc}, 
                            {"Vâ §ang KiÕm", hkvipvdk}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipvdc() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="KiÕm L¨ng Nh¹c",tbProp={0,116},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,335},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="KiÕm CËp Phong",tbProp={0,121},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,340},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function hkmpcl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"C«n L«n §ao", hkvipcld}, 
                            {"C«n L«n Ch­ëng", hkvipclc}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipcld() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="§ao S­¬ng Tinh",tbProp={0,126},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,345},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Nãn Vô ¶o",tbProp={0,131},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,350},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


function hkmptn()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Thiªn NhÉn Th­¬ng", hkviptnt}, 
                            {"Thiªn NhÉn Ch­ëng", hkviptnd}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptnt() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="KÝch Ma S¸t",tbProp={0,101},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,320},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="§ao Ma ThÞ",tbProp={0,540},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,329},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end




function hkmpcb()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"C¸i Bang Ch­ëng", hkvipcbc}, 
                            {"C¸i Bang Bæng", hkvipcbb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipcbc() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Bao tay §ång Cõu",tbProp={0,94},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,313},nQuality = 1,nCount = 1,CallBack= _Message},
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
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Bæng §Þch Kh¸i",tbProp={0,96},nQuality = 1,nCount = 1},
				{szName="TTK",tbProp={6,1,22,1},nCount=50},
				{szName="VLMT",tbProp={6,1,26,1},nCount=50},
				{szName="Xu",tbProp={4,417,1},nCount=500},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=100},
				{szName="§¸ May M¾n C1",tbProp={4,1668,1},nCount=200},
				{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=1},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=1},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=1},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,315},nQuality = 1,nCount = 1,CallBack= _Message},
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
		"<dec><npc>L·o ®©y lµ thî rÌn giái nhÊt lµng nµy ng­¬i cÇn l·o gióp g× ko.",
		"GhÐp thµnh sang søc T×nh Vâ L©m/raptrangsuc1",
		"Läc Trang Søc T×nh Vâ L©m/raptrangsuc2",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end


function raptrangsuc1() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="B¨ng Tinh H¹ng Liªn S1",tbProp={4,747,-1},nCount=50},
				{szName="Cóc Hoa Th¹ch ChØ Hoµn S6",tbProp={4,758,-1},nCount=50},
				{szName="§iÒn Hoµng Ngäc Béi S2",tbProp={4,760,-1},nCount=50},
				{szName="HiÖp Cèt T×nh ý KÕt S3",tbProp={4,773,-1},nCount=50},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=50},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,543},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu ®Ó Ðp trang søc gåm cã 50 M·nh d©y chuyÒn ABHM sè 1 - 50 M·nh NhËn ABHM cóc hoa sè 6 - 50 m·nh Ngäc Béi ABHM sè 2 - 50 m·nh ngäc béi hiÖp cèt sè 3 - 50 tói tÝch lòy tèng kim")
end


function raptrangsuc2() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Trang Søc T×nh Vâ L©m",tbProp={0,543},nQuality = 1,nCount = 1},
				{szName="TiÒn §ång",tbProp={4,417,1},nCount=5},
				{szName="Tói TÝch Lòy TK",tbProp={6,1,4415,1},nCount=10},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,543},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Läc l¹i trang søc lµ läc cho option ra ngÉu nhiªn thµnh option míi")
end




function menuan()
	tbOpt =
	{
		"<dec><npc>L·o ®©y lµ thî rÌn giái nhÊt lµng nµy ng­¬i cÇn l·o gióp g× ko.",
		--"R¸p M·nh An Bang Hoµn Mü/rapanbang",
		--"R¸p M·nh Nhu T×nh/rapnhutinh",
		"N©ng CÊp Ên/epan",
		--"R¸p Cùc PhÈm Nhu T×nh/rapcpnhutinh",
		"Läc Ên/Locan",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end






function epan()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				--{szName="¸o nhu t×nh",tbProp={0,190},nQuality = 1,nCount = 2},
				{szName="§¸ C­êng Hãa 4",tbProp={4,1689,1},nCount=100},
				{szName="§¸ Quý",tbProp={4,1688,1},nCount=200},
				--{szName="§¸ C­êng Hãa 3",tbProp={4,1678,1},nCount=50},
				{szName="§¸ May M¾n cÊp 4",tbProp={4,1671,1},nCount=100},
				--{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				--{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="Tói Tèng Kim",tbProp={6,1,4415,1},nCount=200},
				{szName="TiÒn §ång",tbProp={4,417,1},nCount=300},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,random(565,569)},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn : 100 §¸ may m¾n 4, 100 §¸ cuong hãa 4, 200 tói Tk, 200 §¸ quý, 300 tiÒn ®ång")
end 



function anhekim()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Hoµng Kim Ên",tbProp={0,565},nQuality = 1,nCount = 1},
				--{szName="§¸ C­êng Hãa 4",tbProp={4,1689,1},nCount=100},
				{szName="§¸ Quý",tbProp={4,1688,1},nCount=30},
				--{szName="§¸ C­êng Hãa 3",tbProp={4,1678,1},nCount=50},
				--{szName="§¸ May M¾n cÊp 4",tbProp={4,1671,1},nCount=100},
				--{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				--{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="Tói Tèng Kim",tbProp={6,1,4415,1},nCount=30},
				--{szName="TiÒn §ång",tbProp={4,417,1},nCount=300},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,random(565,569)},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn : Hoµng kim Ên, 30 §¸ quý, 30 tói Tèng Kim")
end 

function anhemoc()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Hoµng Kim Ên",tbProp={0,566},nQuality = 1,nCount = 1},
				--{szName="§¸ C­êng Hãa 4",tbProp={4,1689,1},nCount=100},
				{szName="§¸ Quý",tbProp={4,1688,1},nCount=30},
				--{szName="§¸ C­êng Hãa 3",tbProp={4,1678,1},nCount=50},
				--{szName="§¸ May M¾n cÊp 4",tbProp={4,1671,1},nCount=100},
				--{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				--{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="Tói Tèng Kim",tbProp={6,1,4415,1},nCount=30},
				--{szName="TiÒn §ång",tbProp={4,417,1},nCount=300},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,random(565,569)},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn : Hoµng kim Ên, 30 §¸ quý, 30 tói Tèng Kim")
end 



function anhethuy()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Hoµng Kim Ên",tbProp={0,567},nQuality = 1,nCount = 1},
				--{szName="§¸ C­êng Hãa 4",tbProp={4,1689,1},nCount=100},
				{szName="§¸ Quý",tbProp={4,1688,1},nCount=30},
				--{szName="§¸ C­êng Hãa 3",tbProp={4,1678,1},nCount=50},
				--{szName="§¸ May M¾n cÊp 4",tbProp={4,1671,1},nCount=100},
				--{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				--{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="Tói Tèng Kim",tbProp={6,1,4415,1},nCount=30},
				--{szName="TiÒn §ång",tbProp={4,417,1},nCount=300},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,random(565,569)},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn : Hoµng kim Ên, 30 §¸ quý, 30 tói Tèng Kim")
end 






function anhehoa()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Hoµng Kim Ên",tbProp={0,568},nQuality = 1,nCount = 1},
				--{szName="§¸ C­êng Hãa 4",tbProp={4,1689,1},nCount=100},
				{szName="§¸ Quý",tbProp={4,1688,1},nCount=30},
				--{szName="§¸ C­êng Hãa 3",tbProp={4,1678,1},nCount=50},
				--{szName="§¸ May M¾n cÊp 4",tbProp={4,1671,1},nCount=100},
				--{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				--{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="Tói Tèng Kim",tbProp={6,1,4415,1},nCount=30},
				--{szName="TiÒn §ång",tbProp={4,417,1},nCount=300},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,random(565,569)},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn : Hoµng kim Ên, 30 §¸ quý, 30 tói Tèng Kim")
end 







function anhetho()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> Ðp thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî RÌn Hoµng Kim ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Hoµng Kim Ên",tbProp={0,569},nQuality = 1,nCount = 1},
				--{szName="§¸ C­êng Hãa 4",tbProp={4,1689,1},nCount=100},
				{szName="§¸ Quý",tbProp={4,1688,1},nCount=30},
				--{szName="§¸ C­êng Hãa 3",tbProp={4,1678,1},nCount=50},
				--{szName="§¸ May M¾n cÊp 4",tbProp={4,1671,1},nCount=100},
				--{szName="§¸ May M¾n C2",tbProp={4,1669,1},nCount=200},
				--{szName="§¸ May M¾n C3",tbProp={4,1670,1},nCount=200},
				{szName="Tói Tèng Kim",tbProp={6,1,4415,1},nCount=30},
				--{szName="TiÒn §ång",tbProp={4,417,1},nCount=300},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,random(565,569)},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn : Hoµng kim Ên, 30 §¸ quý, 30 tói Tèng Kim")
end 



function Locan()
	tbOpt =
	{
		"<dec><npc>L·o ®©y lµ thî rÌn giái nhÊt lµng nµy ng­¬i cÇn l·o gióp g× ko.",
		"läc Ên hÖ kim/anhekim",
		"läc Ên hÖ méc/anhemoc",
		"läc Ên hÖ thñy/anhethuy",
		"Läc Ên hÖ háa/anhehoa",
		"Läc Ên hÖ thæ/anhetho",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end




function dsnhantanthu()
	tbOpt =
	{
		"<dec><npc>L·o ®©y lµ thî rÌn giái nhÊt lµng nµy ng­¬i cÇn l·o gióp g× ko.",
		"§æi Thuéc TÝnh NhÉn/doithuoctinhnhan",
		--"R· NhÈn/RaNhan",
		"Läc NhÉn Søc M¹nh/locnhansm",
		"Läc NhÉn Th©n Ph¸p/locnhantp",
		"Läc NhÉn Néi C«ng/locnhannc",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end








function locnhansm()
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Søc M¹nh Giíi ChØ",tbProp={0,571},nQuality = 1,nCount=1},
				--{szName="da mm 1",tbProp={4,1668,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				{szName="Tói TÝch Lòy Tèng Kim",tbProp={6,1,4415,1},nCount=5},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M·nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M·nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,571},nQuality = 1,nCount = 1,CallBack= _Message},
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
				{szName="Th©n Ph¸p Giíi ChØ",tbProp={0,572},nQuality = 1,nCount=1},
				--{szName="da mm 1",tbProp={4,1668,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				{szName="Tói TÝch Lòy Tèng Kim",tbProp={6,1,4415,1},nCount=5},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M·nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M·nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,572},nQuality = 1,nCount = 1,CallBack= _Message},
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
				{szName="Néi C«ng Giíi ChØ",tbProp={0,573},nQuality = 1,nCount=1},
				--{szName="da mm 1",tbProp={4,1668,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				{szName="Tói TÝch Lòy Tèng Kim",tbProp={6,1,4415,1},nCount=5},
				{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M·nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M·nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,573},nQuality = 1,nCount = 1,CallBack= _Message},
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
		"<dec><npc>L·o ®©y lµ thî rÌn giái nhÊt lµng nµy ng­¬i cÇn l·o gióp g× ko.",
		"§æi Thuéc TÝnh NhÉn T©n Thñ/doilandau",
		--"R· NhÈn/RaNhan",
		"§æi NhÉn Søc M¹nh vÒ NhÉn T©n Thñ/doinhansm",
		"§æi NhÉn Th©n Ph¸p vÒ NhÉn T©n Thñ/doinhantp",
		"§æi NhÉn Néi C«ng vÒ NhÉn T©n Thñ/doinhannc",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end




function doilandau()
local tbFormula = 
                             
{
			tbMaterial = 
			{
				{szName="T©n Thñ Giíi ChØ",tbProp={0,570},nQuality = 1,nCount=1},
				{szName="Tinh LuyÖn Th¹ch",tbProp={4,1690,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				--{szName="da mm 3",tbProp={4,1670,1,1},nCount=5},
				--{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M·nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M·nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,random(571,573)},nQuality = 1,nCount = 1,CallBack= _Message},
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
				{szName="Søc M¹nh Giíi ChØ",tbProp={0,571},nQuality = 1,nCount=1},
				{szName="Tinh LuyÖn Th¹ch",tbProp={4,1690,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				--{szName="da mm 3",tbProp={4,1670,1,1},nCount=5},
				--{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M·nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M·nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,570},nQuality = 1,nCount = 1,CallBack= _Message},
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
				{szName="Th©n Ph¸p Giíi ChØ",tbProp={0,572},nQuality = 1,nCount=1},
				{szName="Tinh LuyÖn Th¹ch",tbProp={4,1690,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				--{szName="da mm 3",tbProp={4,1670,1,1},nCount=5},
				--{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M·nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M·nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,570},nQuality = 1,nCount = 1,CallBack= _Message},
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
				{szName="Néi C«ng Giíi ChØ",tbProp={0,573},nQuality = 1,nCount=1},
				{szName="Tinh LuyÖn Th¹ch",tbProp={4,1690,1,1},nCount=5},
				--{szName="da mm 2",tbProp={4,1669,1,1},nCount=5},
				--{szName="da mm 3",tbProp={4,1670,1,1},nCount=5},
				--{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1},nCount=1},
				--{szName="M·nh 5",tbProp={4,751,1},nCount=1},
				--{szName="M·nh 6",tbProp={4,752,1},nCount=1},

			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,570},nQuality = 1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()





end










