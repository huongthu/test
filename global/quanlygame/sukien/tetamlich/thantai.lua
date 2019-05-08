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
	"��i H�p Qu� M�ng Xu�n 2019/doihopquamungxuan",
	--"L�y Nguy�n Li�u Test/laynguyenlieu",
	"Ta ch�a c�n ��n/no"
	}
Say("<color=pink>Th�n T�i V� L�m:<color=green>\n Mu�n ��i m�t h�p qu� m�ng xu�n 2019 c�n c� <color=yellow> C�u - D�a - �� - Xo�i m�i th� 1000 tr�i + 500xu kh�ng bi�t ��i hi�p c� �� ch�a.", getn(tab_Content), tab_Content);       
end

function laynguyenlieu()

tbAwardTemplet:GiveAwardByList({{szName="C�u",tbProp={6,1,30529,1,1},nCount=100,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="D�a",tbProp={6,1,30530,1,1},nCount=100,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��",tbProp={6,1,30531,1,1},nCount=100,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Xo�i",tbProp={6,1,30532,1,1},nCount=100,},}, "test", 1);



end

function doihopquamungxuan() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Xin Ch�c M�ng ��i hi�p <color=yellow>%s<color=cyan> ��i th�nh c�ng C�u - D�a - �� - Xo�i  nh�n ���c 1 <color=gold><%s><color=green><enter><color=yellow>< T�i Th�n T�i V� L�m ><color>" ,GetName(),GetItemName(nItemIndex))
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
				{szName="C�u",tbProp={6,1,30529,1},nCount=1000},
				{szName="D�a",tbProp={6,1,30530,1},nCount=1000},
				{szName="��",tbProp={6,1,30531,1},nCount=1000},
				{szName="Xo�i",tbProp={6,1,30532,1},nCount=1000},
				{szName="Ti�n ��ng",tbProp={4,417,1,1},nCount=500},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={6,1,4481,1},nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Mu�n ��i m�t h�p qu� m�ng xu�n 2019 c�n c� <color=yellow> C�u - D�a - �� - Xo�i m�i th� 1000 tr�i + 500xu")
end



function OnTimer(nNpcIndex,nTimeOut)
	local tab_Chat = {
                            "<color=gold>Event T�t JxTinhVoLam.Com.",
                            "<color=yellow>Xu�n ��n t�t v� r�i.",
                            "<color=green>Thu th�p C�u-D�a-��-Xo�i",
                            "<color=cyan>Mang ��n cho ta s� nh�n ���c qu�",
	}
	local ran = random(1,getn(tab_Chat))
	NpcChat(nNpcIndex,tab_Chat[ran])
	SetNpcTimer(nNpcIndex,5*18)
	SetNpcScript(nNpcIndex,"\\script\\global\\quanlygame\\sukien\\tetamlich\\thantai.lua")
end