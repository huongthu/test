Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_testgame.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_droprate.lua")




-------------------------------------- TU DONG NOI CHUYEN --------------------------------
function OnTimer(nNpcIndex,nTimeOut)
	local tab_Chat = {
		"<color=pink>Nhanh Tay Nh�p Code <enter>Nh�n Ngay Qu� Vip",
		"<color=red>Truy C�p <enter>www.xvideo.com �� Xem",
	}
	local ran = random(1,getn(tab_Chat))
	NpcChat(nNpcIndex,tab_Chat[ran])
	local ranTimer = 10
	SetNpcTimer(nNpcIndex,ranTimer*18)
	SetNpcScript(nNpcIndex,"\\script\\global\\bil4i3n\\bil4i3n_tanthuquan.lua")
end





Bil_SupportAwardTb =
{
	[1] = {ValItem = {6,1,22,0,0,0}, NameItem = "T�y t�y kinh",},
	[2] = {ValItem = {6,1,26,0,0,0}, NameItem = "VLMT",},
	[3] = {ValItem = {6,0,11,1,0,0,0}, NameItem = "Ph�o hoa",},
	[4] = {ValItem = {6,0,20,1,0,0,0}, NameItem = "Hoa h�ng",},
	[5] = {ValItem = {6,0,1012,1,0,0,0}, NameItem = "Qu� m�u xanh",},
	[6] = {ValItem = {6,0,1013,1,0,0,0}, NameItem = "Hoa Tuy�t",},
	[7] = {ValItem = {0,10,8,10,0,0,0}, NameItem = "Phi V�n",},

}

Bil_SupportAwardMsg =
{
	"��y, qu� h� tr� cho "..Bil_GetSexName(GetSex())..":<color=yellow><enter>\t\t\t\tVLMT<enter>\t\t\t\tTTK<enter>\t\t\t\tPh�o<enter>\t\t\t\tPhi V�n",
	Bil_EnemySay[3][1].."<color=white>Ng��i s� ph�i tr�i qua r�t nhi�u �n o�n giang h�, ng��i s� c� m�t ��m huynh �� t� mu�i ��ng cam c�ng kh�?  Ng��i c� mu�n l�nh ��o h�, c�ng nhau t�o ra m�t m�n v� c�ng V�n Th� B�t Di�t, c��p �o�t quy�n s� h�u 7 th�nh tr�, �� h� c� th� c�ng nhau h��ng vinh hoa ph� qu�. <color=yellow> V�y th� h�y l�p ra Bang H�i ri�ng cho m�nh, vi�t v�o �� c�c �n o�n t�nh th�, nhi n� t�nh tr��ng, c��p thuy�n, �o�t th�nh, c��p BOSS.<color><color=wood>Tr�ch Bang h�i ti�p d�n nh�n.<color><enter><color=fire>C�ng Th�nh Chi�n<color>",
	"Aha, "..Bil_GetSexName(GetSex()).." ��y �� ��t ��n ��ng c�p <color=yellow>%d<color> r�i t�i sao l�i ��n nh� l�o ��y gi�p �� n�a ch�, ��ng c�p %d c�ng ���c coi l� l� m�t ��i hi�p c� t�n tu�i trong giang h� t�i sao l�i ph�i so �o v�i ��m h�u b�i ch�!",
	"Ch�ng ph�i v� huynh �� ��y v�a nh�n s� h� tr� ch� c�a l�o sao, t�i sao m�i �� �� qu�n r�i,  h�y �i th� hi�n kh� n�ng c�a b�n th�n m�nh �i, ta <enter>tr�ng ch� � ng��i!",
	Bil_GetSexName(GetSex()).." c� v� kh�ng ng�n n�p nh�, ng��i c�n �� tr�ng <color=yellow>16<color> � trong r��ng �� nh�n th��ng.", --5
	"Ch�ng ph�i trong h�nh trang c�a v� <enter>huynh �� ��y c�ng c� 1 cu�n <color=yellow>C�m Nang ��ng H�nh<color> sao,  m�i ng��i n�n c� <color=red>1 cu�n<color> th�i, l�y nhi�u ng��i c�ng <enter>��u c� ��c h�t.",
	"��y l� cu�n <color=yellow>C�m Nang ��ng H�nh<color> c�a "..Bil_GetSexName(GetSex()).." ng�i c�ng n�n b�o qu�n t�i s�n c�a m�nh cho c�n th�n nh�!",
	"��ng c�p hi�n t�i c�a ng��i l� <color=yellow>%d<color>,<enter>tuy l�o ��y �� gi� nh�ng v�n ch�a c� ai qua m�t ���c l�o c�, ng��i v�n n�n �i tu luy�n th�m khi n�o ��t <enter>��n c�p <color=yellow>%d <color>c� ��n t�m l�o.",
	"H�y nh�n l�y m�n qu� c�a l�o, sau n�y c�n nhi�u th�  d�nh cho ng��i, ch�ng qua ng��i c� c� g�n hay kh�ng  m� th�i.",
	"Tr��c khi nh�n g�i h� tr� c�p <color=yellow>%d<color> ng��i c�n ph�i nh�n g�i ��ng c�p <color=green>%d<color> tr��c ��.", --10
	"Ng��i c�n ch�a k�p nh�n g�i <color=yellow>h� tr� T�n th�<color> k�a, mau  nh�n �i s� l��ng c� h�n ��!", "Ta bi�t r�i./OnCancel", "Ta bi�t r�i.", "�a t� ng�i!/OnCancel", "H�nh trang kh�ng �� <color=yellow>%d<color> � tr�ng kh�ng th� nh�n th��ng, "..Bil_GetSexName(GetSex()).." n�n s�p x�p l�i h�nh trang c�a m�nh cho ng�n n�p", "\\script\\event\\birthday_jieri\\200905\\npc\\npc_zhanxin_zunzhe.lua", "HoTroSkill", --17
	"Ch�ng ph�i ng��i �� h�c b� <color=yellow>K� n�ng m�n ph�i<color> r�i sao, c�n t�m l�o l�m g�.", "�� nh�n ���c b� <color=yellow>K� n�ng m�n ph�i <color>y�u   c�u thi�u hi�p ph�i <color=red>v�o ph�i<color> tr��c sau �� ��n ��y g�pl�o.", --19
	"V� huynh �� c�n <color=red>ch�a gia nh�p m�n ph�i<color> n�o l�m sao c� th� nh�n g�i h� tr� n�y c�a l�o, h�y �i b�i s� r�i l�i ��n ��y g�p l�o!", --20
	"V� huynh �� c�n ch�a k�p nh�n <color=red>g�i h� <enter>tr� t�n th�<color> c�a l�o m�, h�y nh�n �i r�i m�i t�nh ��n chuy�n giang h� r�ng l�n ngo�i kia!",
}

function main(bilSel)
	local BiltbOpt = {}
	local BiltbMsg = "�i�u ki�n nh�n code l� h�y like fanpage v� chia s� b�i vi�t  qu�ng c�o tr�n trang ��u fanpage cho 5 ng��i b�n r�i li�n h� admin nh�n m� unlock."
	-- if (bilOpenTestGame == 1) then
		-- tinsert(BiltbOpt, "Ta ��n �� tham gia TestGame c�ng trang ch�/bilTestGameMain")
		-- tinsert(BiltbOpt, "Ta ��n �� nh�n h� tr� T�n Th� b�ng GIFTCODE/bilCheckGIFTCODE4Player2Suport")
	-- else
		tinsert(BiltbOpt, "Ta ��n �� nh�n GIFTCODE/bilCheckGIFTCODE4Player2Suport")

	tinsert(BiltbOpt, "K�t th�c ��i tho�i./OnCancel")
	if bilSel == 10 then
		BiltbOpt = {}
		tinsert(BiltbOpt, "Th��ng c�p 100: Bao tay ��nh qu�c, k� tr�n d� b�o/#bilBonusLevel(100)")
		tinsert(BiltbOpt, "Th��ng c�p 110: Th�t l�ng ��nh qu�c, ng�a Phi V�n, k� tr�n d� b�o, .../#bilBonusLevel(110)")
		tinsert(BiltbOpt, "Th��ng c�p 120: �o ��nh qu�c, V� kh� tr�n ph�i, b�    k�p 120, k� tr�n d� b�o, .../#bilBonusLevel(120)")
		tinsert(BiltbOpt, "Th��ng c�p 150: 1 Trang b� tr�n ph�i t�y ch�n, ��i th�nh b� k�p 120, k� tr�n d� b�o,.../#bilBonusLevel2Manual(150)")
		tinsert(BiltbOpt, "Trang tr��c/main")
		tinsert(BiltbOpt, "K�t th�c ��i tho�i./OnCancel")
	end
	return Say(BiltbMsg, getn(BiltbOpt), BiltbOpt)
end

function bilBonusLevel2Manual(bilSel, bilSkill, bilIdGoldIt)
	if GetLevel() < bilSel then
		return Talk(1, "", Bil_EnemyTTQ..(format(Bil_SupportAwardMsg[8], GetLevel(), bilSel)))
	end
	if Bil_GetTask(1) >= bilSel then
		if Bil_GetTask(1) == bilSel then
			return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[4])
		else
			return Say(Bil_EnemyTTQ..(format(Bil_SupportAwardMsg[3], GetLevel(), GetLevel())))
		end
	end
	if bilSel == 150 then
		if  CalcFreeItemCellCount() < 30 then
			return Talk(1, "", Bil_EnemyTTQ.."H�nh trang c�a c�c h� kh�ng �� 30 � tr�ng, vui l�ng �� tr�ng 30 � h�nh trang r�i h�y ��n nh�n th��ng!")
		end
		local bil_1 = GetLastFactionNumber()
		if bil_1 == -1 then
			return Say(Bil_SupportAwardMsg[20], 1, Bil_SupportAwardMsg[12])
		end
		local bil_2 = {}
		local bil_3 = Bil_EnemyTTQ.."M�i ng��i s� nh�n ���c m�t m�n trang b� tr�n ph�i t�y ch�n, c�c h� mu�n nh�n m�n trang b� n�o, ch� c� th� nh�n 1 l�n duy nh�t, h�y c�n nh�c k�!"
		if bilIdGoldIt then
			local bil_4 = {
				{6,1,71,0,0,0}, -- ti�n th�o l�
				{6,1,71,0,0,0}, -- ti�n th�o l�
				{6,1,71,0,0,0}, -- ti�n th�o l�
				{4,353,0, 0,0, 0}, -- tinh h�ng b�o th�ch
				{4,353,0, 0,0, 0}, -- tinh h�ng b�o th�ch
				{4,353,0, 0,0, 0}, -- tinh h�ng b�o th�ch
				{4,238,0, 0,0, 0}, -- th�y tinh
				{4,239,0, 0,0, 0}, -- th�y tinh
				{4,240,0, 0,0, 0}, -- th�y tinh
			}
			local bilItIdx = AddGoldItem(0, bilIdGoldIt)
			local nExpiredDate = FormatTime2Date(7 * 24 * 60 *60 + GetCurServerTime());
			ITEM_SetExpiredTime(bilItIdx, nExpiredDate);
			SyncItem(bilItIdx);
			SetItemBindState(bilItIdx,-2)
			for iIem = 1, getn(bil_4) do
				AddItem(unpack(bil_4[iIem]))
			end
			local bilItIdx2 = AddItem(6,1,2425, 0,0, 0) -- ��i th�nh b� k�p 120
			SetItemBindState(bilItIdx2,-2)
			Bil_SetTask(1, bilSel)
			return Talk(1, "", Bil_EnemyTTQ.."Ch�c m�ng c�c h� �� nh�n th��ng th�nh c�ng m�c th��ng ��ng c�p 150, xin ki�m tra trong h�nh trang!")
		end
		if bilSkill then
			for iSel = 2, getn(_bilTbAtlasCompound[bil_1][bilSkill]) do
				tinsert(bil_2, _bilTbAtlasCompound[bil_1][bilSkill][iSel].bilAtlasName[1].."/#bilBonusLevel2Manual("..bilSel..", "..bilSkill..", ".._bilTbAtlasCompound[bil_1][bilSkill][iSel].bilAtlasName[3]..")")
			end
			tinsert(bil_2, "K�t th�c ��i tho�i/OnCancel")
			return Say(bil_3, getn(bil_2), bil_2)
		end
		for iSel = 1, getn(_bilTbAtlasCompound[bil_1]) do
			tinsert(bil_2, _bilTbAtlasCompound[bil_1][iSel][1].bilEquipName.."/#bilBonusLevel2Manual("..bilSel..", "..iSel..")")
		end
		tinsert(bil_2, "K�t th�c ��i tho�i/OnCancel")
		return Say(bil_3, getn(bil_2), bil_2)
	end
end

function bilCheckGIFTCODE4Player2Suport()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng.",0);
		return
end
AskClientForString("checkpassGM3", "", 1, 50, "Pass Unlock");
end

function checkpassGM3(strings)	
	if strings~="797979" then
		Say("C�n like Fanpage c�a game JxTinhVoLam.Com v� chia s� b�i vi�t tr�n trang ��u cho 5 b�n b� c�a m�nh r�i li�n h� admin �� nh�n m� unlock m�i c� th� nh�n code t�i NPC n�y..",0);
		return
end
	if Bil_GetTask(1) == 0 then
		Msg2Player("<color=yellow>M� code c�a b�n l�: <color=green><enter>"..date("%m%d")..""..GetLocalDate("%H%M"))
		Msg2Player("<color=yellow>M� code c�a b�n l�: <color=green><enter>"..date("%m%d")..""..GetLocalDate("%H%M"))
		Msg2Player("<color=yellow>M� code c�a b�n l�: <color=green><enter>"..date("%m%d")..""..GetLocalDate("%H%M"))
		return Talk(2, "#bilCheckGIFTCODE4Player2Suport_InputCODE()", Bil_EnemyTTQ.."M� code c�a b�n l�: <enter><color=green>"..date("%m%d")..""..GetLocalDate("%H%M").." <color=yellow>B�n c�n nh�p nhanh m� n�y trong v�ng 30 gi�y n�u kh�ng h� th�ng s� reset th�nh m� m�i..")
	else
		return Talk(1, "#bilCheckGIFTCODE4Player2Suport_InputCODE()", Bil_EnemyTTQ.."B�n c�n nh�p m� code v�o � nh�p m�!")
	end
end


function bilCheckGIFTCODE4Player2Suport_InputCODE(bilCode)
	if type(bilCode) == "string" and bilCode ~= nil then
		if bilCode == date("%m%d")..""..GetLocalDate("%H%M") then
			Msg2Player("<color=yellow>X�c nh�n m� th�nh c�ng!")
			return Bil_SupportTanThuDuaTop()
		else
			return Say(Bil_EnemyTTQ.."V� huynh ��i �� nh�p sai M� th��ng ho�cm� th��ng kh�ng t�n t�i, ng�i c� th� ti�n h�nh nh�p  l�i!", 2, "Nh�p l�i m�!/#bilCheckGIFTCODE4Player2Suport_InputCODE()", "K�t th�c ��i tho�i!/OnCancel")
		end
		return
	end
	return AskClientForString("bilCheckGIFTCODE4Player2Suport_InputCODE", "", 1, 500, "Nh�p m� code!");
end

function Bil_SupportTanThuDuaTop()
	if Bil_GetTask(1) == 0 then
		if  CalcFreeItemCellCount() < 16 then
			return Say(Bil_SupportAwardMsg[5], 1, Bil_SupportAwardMsg[12])
		end
		-- if GetLevel() < 90 then
			-- while GetLevel() < 90 do
				-- AddOwnExp(9999999)
			-- end
		-- end
tbAwardTemplet:GiveAwardByList({{szName="T�n Th� Gi�i Ch�",tbProp={0,570},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Nhat Ky",tbProp={6,1,4355,1,0},nCount=1,nExpiredTime=4320,nBindState=-2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="B�n Ti�u",tbProp={0,10,7,1,0},nCount=1,nExpiredTime=10880,nBindState=-2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ph�o hoa",tbProp={6,0,11,1,0},nCount=1,nExpiredTime=4320,nBindState=-2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoa h�ng",tbProp={6,0,20,1,0},nCount=1,nExpiredTime=4320,nBindState=-2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoa t�m",tbProp={6,0,1012,1,0},nCount=1,nExpiredTime=4320,nBindState=-2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoa tuy�t",tbProp={6,0,1013,1,0},nCount=1,nExpiredTime=4320,nBindState=-2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Tay Tuy Kinh",tbProp={6,1,22,1,0},nCount=3,nExpiredTime=4320,nBindState=-2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Vo Lam Mat Tich",tbProp={6,1,26,1,0},nCount=3,nExpiredTime=4320,nBindState=-2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="T�i M�u Chi�n Tr��ng",tbProp={6,1,26,1,0},nCount=1,nBindState=-2,},}, "test", 1);




		Earn(5000000)
		Bil_SetTask(1, 1)
                                        Msg2SubWorld("��i hi�p <color=green>"..GetName().."<color=yellow> �� nh�n ���c ph�n th��ng vip khi like chia s� b�i vi�t c�ng tag b�n b� tr�n Fanpage.<color=blue> (JxTinhVoLam.Com)")
		return
	else
		if GetLevel() >= 50 then
			return Say(Bil_EnemyTTQ..format(Bil_SupportAwardMsg[3], GetLevel(), GetLevel()))
		else
			return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[4])
		end
	end
end

function Bil_SupportTanThuSkill()
	if Bil_GetTask(4) == 1 then
		return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[18], 1, Bil_SupportAwardMsg[12])
	elseif GetFaction() == nil or GetFaction() == "" then
		return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[19], 1, Bil_SupportAwardMsg[12]) 
	else
		Bil_SetTask(4, 1)
		DynamicExecute(Bil_SupportAwardMsg[16], Bil_SupportAwardMsg[17], PlayerIndex)
	end
end

function Bil_ReceivedItem614259()
	if Bil_GetTask(1) == 0 then
		return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[21], 1, Bil_SupportAwardMsg[12])
	end
	local bilReportItem = ConsumeItem(3, 0, 6, 1, 4259, -1)
	if bilReportItem == 1 then
		return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[6])
	else
		local nItemIndex = AddItem(unpack(Bil_SupportAwardTb[11].ValItem))
		SetItemBindState(nItemIndex,-2)
		return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[7])
	end
end

bilBonusLevelItemTable = {
	[10] = {{6, 1, 401, 0, 0, 0}, {6, 1, 440, 0, 0, 0}, {6, 0, 1, 1, 0, 0}, {6, 0, 2, 1, 0, 0}, {6, 0, 6, 1, 0, 0}, },
		-- s� �� thi�p, m�nh s�n h� 100, tr��ng m�nh ho�n, gia b�o ho�n, phi t�c ho�n
	[20] = {bilGoldequip = {184}, bilHorse = {0, 10, 2, 1, random(0, 4), 0}, },
		-- gi�y kim phong, ng�a c�p 1
	[30] = {bilGoldequip = {179}, bilHorse = {0, 10, 2, 3, random(0, 4), 0}, },
		-- d�y chuy�n kim phong, ng�a c�p 3
	[40] = {bilGoldequip = {178, 177}, bilHorse = {0, 10, 2, 5, random(0, 4), 0}, },
		-- �o - m� kim phong, ng�a c�p 5
	[50] = {bilGoldequip = {183, 180}, bilHorse = {0, 10, 2, 7, random(0, 4), 0}, },
		-- nh�n - ng�c b�i kim phong, ng�a c�p 7
	[60] = {bilGoldequip = {182, 181}, bilHorse = {0, 10, 3, 9, random(0, 4), 0}, },
		-- bao tay - th�t l�ng kim phong, ng�a c�p 9
	[70] = {bilGoldequip = {185}, bilHorse = {0, 10, 2, 9, random(0, 4), 0}, },
		-- nh�n kim phong, ng�a c�p 9
	[80] = 
		{
			-- b� b� k�p m�n ph�i c�p 90 v� ng�a chi�u d� th�i h�n 15 ng�y
			{bilTimes = {3}, bilItems = {6, 1, 2959, 0, 0, 0}}, 	-- thi�u l�m
			{bilTimes = {3}, bilItems = {6, 1, 2960, 0, 0, 0}}, 	-- thi�n v��ng
			{bilTimes = {4}, bilItems = {6, 1, 2961, 0, 0, 0}}, 	-- ���ng m�n
			{bilTimes = {3}, bilItems = {6, 1, 2962, 0, 0, 0}}, 	-- ng� ��c
			{bilTimes = {3}, bilItems = {6, 1, 2963, 0, 0, 0}}, 	-- nga my
			{bilTimes = {2}, bilItems = {6, 1, 2964, 0, 0, 0}}, 	-- th�y y�n
			{bilTimes = {2}, bilItems = {6, 1, 2965, 0, 0, 0}}, 	-- c�i bang
			{bilTimes = {3}, bilItems = {6, 1, 2966, 0, 0, 0}}, 	-- thi�n nh�n
			{bilTimes = {2}, bilItems = {6, 1, 2967, 0, 0, 0}}, 	-- v� �ang
			{bilTimes = {3}, bilItems = {6, 1, 2968, 0, 0, 0}},		-- c�n l�n
			{bilHorse = {0, 10, 5, 10, random(0, 4), 0}},
		},
	[90] = {{
		bilItems = {
			{4,353,0, 0, 0,0, 0},		-- tinh h�ng b�o th�ch
			{6,1,125, 0, 0,0, 0}, 		-- qu� hoa t�u
			{6,1,71, 0, 0, 0, 0}, 		-- ti�n th�o l�
			-- {6,1,123, 0, 0,0, 0}, 		-- ph�c duy�n trung
		},
		bilItemsGold = {161},		-- gi�y ��nh qu�c
	}},
	[100] = {{
		bilItems = {
			{4,353,0, 0, 0,0, 0},		-- tinh h�ng b�o th�ch
			{6,1,125, 0, 0,0, 0}, 		-- qu� hoa t�u
			{6,1,71, 0, 0, 0, 0}, 		-- ti�n th�o l�
			-- {6,1,123, 0, 0,0, 0}, 		-- ph�c duy�n trung
			-- {4,489,0, 0, 0,0, 0},   	-- l�nh b�i phong l�ng ��
			{6,1,1448, 0, 0,0, 0}, 	-- M�c B�c Truy�n T�ng L�nh
		},
		bilItemsGold = {162},		-- bao tay ��nh qu�c
	}},
	[110] = {{
		bilItems = {
			{4,353,0, 0, 0,0, 0},		-- tinh h�ng b�o th�ch
			{6,1,125, 0, 0,0, 0}, 		-- qu� hoa t�u
			{6,1,71, 0, 0, 0, 0}, 		-- ti�n th�o l�
			-- {6,1,123, 0, 0,0, 0}, 		-- ph�c duy�n trung
		},
		bilItemsGold = {163},		-- �ai l�ng ��nh qu�c
		bilHorse = {0, 10, 8, 10, random(0,4), 0},	-- ng�a phi v�n 15 ng�y
	}},
	[120] = {{
		bilItems = {
			{4,353,0, 0, 0,0, 0},		-- tinh h�ng b�o th�ch
			{6,1,125, 0, 0,0, 0}, 		-- qu� hoa t�u
			{6,1,71, 0, 0, 0, 0}, 		-- ti�n th�o l�
			-- {6,1,123, 0, 0,0, 0}, 		-- ph�c duy�n trung
			{6,1,1125, 0, 0,0, 0}, 	-- b� k�p k� n�ng 120
			{6,1,1427, 0, 0,0, 0}, 	-- t� m�u l�nh
		},
		bilItemsGold = {159},		-- �o ��nh qu�c
		bilItemsGoldFac = {			-- 1 m�n v� kh� tr�n ph�i t�y ch�n th�i h�n 7 ng�y
			{ -- thi�u l�m
				{6, "C�n ph�p - Ph�c Ma T� Kim C�n"},
				{11, "�ao ph�p - T� Kh�ng Gi�ng Ma Gi�i �ao"},
				{2, "Tay kh�ng - M�ng Long Kim Ti Ch�nh H�ng C� Sa"},
			},
			{ -- thi�n v��ng
				{16, "Ch�y ph�p - H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y"},
				{21, "Th��ng ph�p - K� Nghi�p B�n L�i To�n Long th��ng"},
				{26, "�ao ph�p - Ng� Long L��ng Ng�n B�o �ao"},
			},
			{ -- ���ng m�n
				{71, "Phi �ao - B�ng H�n ��n Ch� Phi �ao"},
				{76, "B�o v� - Thi�n Quang Hoa V� M�n Thi�n"},
				{81, "Phi ti�u - S�m Hoang Phi Tinh �o�t H�n"},
				{86, "B�y - ��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n"},
			},
			{ -- ng� ��c
				{57, "N�i c�ng - U Lung X�ch Y�t M�t trang"},
				{61, "�ao ph�p - Minh �o T� S�t ��c Nh�n"},
				{66, "B�a ch� - Ch� Ph��c Ph� gi�p ��u ho�n"},
			},
			{ -- Nga my
				{31, "Ki�m ph�p - V� Gian � Thi�n Ki�m"},
				{39, "N�i c�ng - V� Ma T�y T��ng Ng�c Kh�u"},
				{45, "H� tr� - V� Tr�n Ph�t Quang Ch� Ho�n"},
			},
			{ -- th�y y�n
				{46, "��n �ao - T� Ho�ng Ph�ng Nghi �ao"},
				{51, "Song �ao - B�ch H�i Uy�n ��ng Li�n Ho�n �ao"},
			},
			{ -- c�i bang
				{94, "N�i c�ng - ��ng C�u Kh�ng Long H� Uy�n"},
				{96, "B�ng ph�p - ��ch Kh�i L�c Ng�c Tr��ng"},
			},
			{ -- thi�n nh�n
				{101, "Th��ng - Ma S�t Qu� C�c U Minh Th��ng"},
				{111, "TN.L�u Tinh - Ma Th� Li�t Di�m Qu�n Mi�n"},
				{106, "B�a ch� - Ma Ho�ng Kim Gi�p Kh�i"},
			},
			{ -- v� �ang
				{116, "N�i c�ng - L�ng Nh�c Th�i C�c Ki�m"},
				{121, "Ki�m ph�p - C�p Phong Ch�n V� Ki�m"},
			},
			{ -- c�n l�n
				{126, "�ao ph�p - S��ng Tinh Thi�n Ni�n H�n Thi�t"},
				{131, "N�i c�ng - L�i Khung H�n Tung B�ng B�ch quan"},
				{140, "B�a ch� - V� �o Tung Phong Tuy�t �nh ngoa"},
			},
		},
	}},
}

function bilBonusLevelItemsGold120(bilSI)
	local bil_1, bil_2 = GetLastFactionNumber() + 1, {}
	if bilSI then
		local bil_4 = AddGoldItem(0, bilBonusLevelItemTable[120][1].bilItemsGoldFac[bil_1][bilSI][1])
		local bil_5 = FormatTime2Date(7 * 24 * 60 *60 + GetCurServerTime());
		ITEM_SetExpiredTime(bil_4, bil_5);
		SyncItem(bil_4);
		SetItemBindState(bil_4,-2)
		return Msg2Player("<color=yellow>�� nh�n ���c trang b�: "..bilBonusLevelItemTable[120][1].bilItemsGoldFac[bil_1][bilSI][2])
	end
	for bil_3 = 1, getn(bilBonusLevelItemTable[120][1].bilItemsGoldFac[bil_1]) do
		tinsert(bil_2, bilBonusLevelItemTable[120][1].bilItemsGoldFac[bil_1][bil_3][2].."/#bilBonusLevelItemsGold120("..bil_3..")")
	end
	return Say(Bil_EnemyTTQ.."H�y ch�n m�n trang b� m�nh th�ch, ��i <enter>hi�p ch� c� th� ch�n 1 l�n!", getn(bil_2), bil_2)
end

function bilBonusLevel(bilLevel)
		-- if GetLevel() < 90 then
			-- while GetLevel() < 90 do
				-- AddOwnExp(9999999)
			-- end
		-- end
		
	if Bil_GetTask(1) < bilLevel then
		if GetLevel() < bilLevel then
			return Say(Bil_EnemyTTQ..format(Bil_SupportAwardMsg[8], GetLevel(), bilLevel))
		else
			if Bil_GetTask(1) == 0 then
				return Say(Bil_SupportAwardMsg[11], 1, Bil_SupportAwardMsg[12])
			elseif (Bil_GetTask(1) + 10) ~= bilLevel and Bil_GetTask(1) ~= 1 then
				return Say(format(Bil_SupportAwardMsg[10], bilLevel, bilLevel - 10), 1, Bil_SupportAwardMsg[12])
			else
				if Bil_GetTask(1) == 1 then
					bilLevel = 10
				elseif CalcFreeItemCellCount() < 20 then
					return Say(format(Bil_SupportAwardMsg[15], 20), 1, Bil_SupportAwardMsg[12])
				end
				if bilLevel == 10 then
					for i = 1, getn(bilBonusLevelItemTable[bilLevel]) do
						local nItemIndex = AddItem(unpack(bilBonusLevelItemTable[bilLevel][i]))
							SetItemBindState(nItemIndex,-2)
					end
				elseif bilLevel == 80 then
					if GetLastFactionNumber() == -1 then
						return Say(Bil_SupportAwardMsg[20], 1, Bil_SupportAwardMsg[12])
					end
					for bilLoop = 1, bilBonusLevelItemTable[bilLevel][GetLastFactionNumber()+1].bilTimes[1] do
						local nItemIndex = AddItem(unpack(bilBonusLevelItemTable[bilLevel][GetLastFactionNumber()+1].bilItems))
							SetItemBindState(nItemIndex,-2)
					end
					-- l�nh b�i phong l�ng ��
					-- local bilIItemLevel = AddItem(4, 489, 0, 0, 0, 0)
					-- SetItemBindState(bilIItemLevel,-2)
					local bilIndexHorse8x = AddItem(unpack(bilBonusLevelItemTable[bilLevel][11].bilHorse))
					local nExpiredDate = FormatTime2Date(15 * 24 * 60 *60 + GetCurServerTime());
					ITEM_SetExpiredTime(bilIndexHorse8x, nExpiredDate);
					SyncItem(bilIndexHorse8x);
					SetItemBindState(bilIndexHorse8x,-2)
				elseif bilLevel >= 90 then
					for bilLoop = 1, getn(bilBonusLevelItemTable[bilLevel][1].bilItems) do
						local bilIItemLevel = AddItem(unpack(bilBonusLevelItemTable[bilLevel][1].bilItems[bilLoop]))
						SetItemBindState(bilIItemLevel,-2)
					end
					local nItemIndexGold = AddGoldItem(0, bilBonusLevelItemTable[bilLevel][1].bilItemsGold[1])
					local nExpiredDate = FormatTime2Date(7 * 24 * 60 *60 + GetCurServerTime());
					ITEM_SetExpiredTime(nItemIndexGold, nExpiredDate);
					SyncItem(nItemIndexGold);
					SetItemBindState(nItemIndexGold,-2)
					if bilLevel == 110 then
						local bilIItemLevel90Horse = AddItem(unpack(bilBonusLevelItemTable[bilLevel][1].bilHorse))
						local nExpiredDate = FormatTime2Date(15 * 24 * 60 *60 + GetCurServerTime());
						ITEM_SetExpiredTime(bilIItemLevel90Horse, nExpiredDate);
						SyncItem(bilIItemLevel90Horse);
						SetItemBindState(bilIItemLevel90Horse,-2)
					end
				else
					for i = 1, getn(bilBonusLevelItemTable[bilLevel].bilGoldequip) do
						local nItemIndex = AddGoldItem(0, bilBonusLevelItemTable[bilLevel].bilGoldequip[i])
							SetItemBindState(nItemIndex,-2)
					end
					local nHorseIndex = AddItem(unpack(bilBonusLevelItemTable[bilLevel].bilHorse))
						SetItemBindState(nHorseIndex,-2)
				end
				
				Bil_SetTask(1, bilLevel)
				if bilLevel == 120 then
					return bilBonusLevelItemsGold120()
				end
				return Say(Bil_SupportAwardMsg[9], 1, Bil_SupportAwardMsg[14])
			end
		end
	else
		if Bil_GetTask(1) == bilLevel then
			return Say(Bil_EnemyTTQ..Bil_SupportAwardMsg[4])
		else
			return Say(Bil_EnemyTTQ..format(Bil_SupportAwardMsg[3], GetLevel(), GetLevel()))
		end
	end
end


function OnCancel()
end
