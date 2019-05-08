Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")


function main(NpcIndex)
dofile("script/global/quanlygame/sukien/tetamlich/thantai.lua");
local tab_Content = {
	"§æi Hép Quµ Mõng Xu©n 2019/doihopquamungxuan",
	--"LÊy Nguyªn LiÖu Test/laynguyenlieu",
	"Ta ch­a cÇn ®Õn/no"
	}
Say("<color=pink>ThÇn Tµi Vâ L©m:<color=green>\n Muèn ®æi mét hép quµ mõng xu©n 2019 cÇn cã <color=yellow> CÇu - Dõa - §ñ - Xoµi mçi thø 1000 tr¸i + 500xu kh«ng biÕt ®¹i hiÖp cã ®ñ ch­a.", getn(tab_Content), tab_Content);       
end

function laynguyenlieu()

tbAwardTemplet:GiveAwardByList({{szName="CÇu",tbProp={6,1,30529,1,1},nCount=100,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Dõa",tbProp={6,1,30530,1,1},nCount=100,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§ñ",tbProp={6,1,30531,1,1},nCount=100,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Xoµi",tbProp={6,1,30532,1,1},nCount=100,},}, "test", 1);



end

function doihopquamungxuan() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Xin Chóc Mõng §¹i hiÖp <color=yellow>%s<color=cyan> ®æi thµnh c«ng CÇu - Dõa - §ñ - Xoµi  nhËn ®­îc 1 <color=gold><%s><color=green><enter><color=yellow>< T¹i ThÇn Tµi Vâ L©m ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
                        local tetamlich = "script/global/bil4i3n/bil4i3n_log/eventamlich2019.log"
	local tetamlich1 = openfile(tetamlich, "a");
	 write(tetamlich1, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Max Event Tet Am Lich\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(tetamlich1)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="CÇu",tbProp={6,1,30529,1},nCount=1000},
				{szName="Dõa",tbProp={6,1,30530,1},nCount=1000},
				{szName="§ñ",tbProp={6,1,30531,1},nCount=1000},
				{szName="Xoµi",tbProp={6,1,30532,1},nCount=1000},
				{szName="TiÒn §ång",tbProp={4,417,1,1},nCount=500},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={6,1,4481,1},nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Muèn ®æi mét hép quµ mõng xu©n 2019 cÇn cã <color=yellow> CÇu - Dõa - §ñ - Xoµi mçi thø 1000 tr¸i + 500xu")
end



function OnTimer(nNpcIndex,nTimeOut)
	local tab_Chat = {
                            "<color=gold>Event TÕt JxTinhVoLam.Com.",
                            "<color=yellow>Xu©n ®Õn tÕt vÒ råi.",
                            "<color=green>Thu thËp CÇu-Dõa-§ñ-Xoµi",
                            "<color=cyan>Mang ®Õn cho ta sÏ nhËn ®­îc quµ",
	}
	local ran = random(1,getn(tab_Chat))
	NpcChat(nNpcIndex,tab_Chat[ran])
	SetNpcTimer(nNpcIndex,5*18)
	SetNpcScript(nNpcIndex,"\\script\\global\\quanlygame\\sukien\\tetamlich\\thantai.lua")
end