------------------------------------ TONG THE NPC HO TRO TAN THU ----------------
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\traogiaithdnb\\thdnb7.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\vng_event\\2012_vlnb\\main.lua")
Include("\\script\\global\\lottery_gold.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\quanlygame\\chuyenmonphai.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\changefeature\\feature_man.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include([[\script\event\mid_autumn06\head.lua]]);



-------------------------------------- TU DONG NOI CHUYEN --------------------------------
function OnTimer(nNpcIndex,nTimeOut)
	local tab_Chat = {
		"<color=pink>D�ch V� H� Tr� T�i Ch�nh <enter>Gi�i Ng�n Trong Ng�y",
		"<color=pink>D�ch V� H� Tr� T�i Ch�nh <enter>Gi�i Ng�n Trong Ng�y",
	}
	local ran = random(1,getn(tab_Chat))
	NpcChat(nNpcIndex,tab_Chat[ran])
	local ranTimer = 10
	SetNpcTimer(nNpcIndex,ranTimer*18)
	SetNpcScript(nNpcIndex,"\\script\\global\\quanlygame\\tientrang.lua")
end





function main()
dofile("script/global/quanlygame/tientrang.lua");

	local bilTbOp = {}	

	tinsert(bilTbOp, "��i Ti�n Xu 10Xu -> 100 V�n/doi10xu")
    tinsert(bilTbOp, "��i 1000 V�n -> 100 Xu/doivantoxu")
    --tinsert(bilTbOp, "100 xu kh�a -> 90 Xu/doixukhoa")
tinsert(bilTbOp, "K�t th�c ��i tho�i/OnCancel")
	Say("<color=green>��i Ti�n: <color=white>Ti�n v�n v� ti�n xu l� ti�n t� r�t c�n thi�t cho c�c nh�n s� b�n t�u giang h�.Hi�n t�i ta cho ph�p ��i ti�n xu sang v�n.th�i gian t�i ta s� cho ��i v�n sang xu.!", getn(bilTbOp), bilTbOp)
end



function doivantoxu()
Say("<color=white>R�t ti�c ch�c n�ng ��i v�n sang xu s� ���c m� trong th�i gian t�i - t�m th�i c�c anh em t�ch tr� d�nh d�m v�n qua vi�c bu�n b�n ng�i th�nh ho�c qua giao d�ch sau n�y s� g�t h�i nh�ng l�i �ch thi�t th�c.",0);
if (GetCash() < 10000000) then
        Talk(1,"","<color=white>C� v� r�n mi�n ph� n�a sao haha ��i hi�p c�n c� 1000 v�n l��ng r�i h�y n�i chuy�n v�i ta..") -- go
		return
	end
Pay(10000000)
tbAwardTemplet:GiveAwardByList({{szName="xu",tbProp={4,417,1,1},nCount=100,},}, "test", 1);
end



function doi10xu()
	local nCount = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount < 10) then
		Say("<color=white>R�t ti�c kh�ch quan kh�ng mang �� 10 ti�n ��ng",0);
		return
	end
	ConsumeEquiproomItem(10, 4, 417, 1, 1)
	Earn(1000000)
	Msg2SubWorld("<color=white>Ch�c m�ng "..GetName().." nh�n ���c 100 v�n t� d�ch v� ��i ti�n VoLamViet.Us.",0);
	
end


