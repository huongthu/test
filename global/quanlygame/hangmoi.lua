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
Include("\\script\\global\\quanlygame\\conchym.lua")



-------------------------------------- TU DONG NOI CHUYEN --------------------------------
function OnTimer(nNpcIndex,nTimeOut)
	local tab_Chat = {
		"<color=pink>VinMart <enter>H� Th�ng B�n L� To�n Qu�c",
		"<color=pink>Ti�t Ki�m Chi Ph� <enter>Ti�n L�i T�i �u",
	}
	local ran = random(1,getn(tab_Chat))
	NpcChat(nNpcIndex,tab_Chat[ran])
	local ranTimer = 10
	SetNpcTimer(nNpcIndex,ranTimer*18)
	SetNpcScript(nNpcIndex,"\\script\\global\\quanlygame\\hangmoi.lua")
end





function main(NpcIndex)
dofile("script/global/quanlygame/hangmoi.lua");
local tab_Content = {
	"Mua Nh�t K� C�n Kh�n Ph�/ttk",
	"Mua T�n V�t T�ng Kim/tinvattk",
                        "Mua Ng� H�nh K� Th�ch/nguhanhkythach",
                        "Mua Ch�a Kh�a V�ng/chiakhoavang",


                          
	"Hi�n t�i ta ch� ��n xem/no"
	}
Say("<color=green>Ch�o m�ng b�n ��n v�i h� th�ng VinMart<3<enter><color=green>T�i ��y ch�ng t�i chuy�n cung c�p c�c d�ch v� ti�n   �ch nh�t<enter><enter><color=yellow>C�m �n qu� kh�ch �� gh� th�m c�a h�ng c�a ch�ng t�i !", getn(tab_Content), tab_Content);       
end;


function ttk()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","Xin l�i m�t nh�t k� c�ng kh�n c�n c�.<color=red> 100 Ti�n ��ng ��i hi�p kh�ng mang �� r�i xin li�n h� admin t�i fanpage FB cung c�p m� s� th� c�o viettel �� ��i l�y xu..") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(100,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4357,1,0,0,0}, nCount=1, nBindState=-2}, "test", 1);
Msg2SubWorld("<color=green>Ch�c m�ng ��i hi�p <color=pink>"..GetName().."<color=green> �� mua th�nh c�ng T�n V�t T�ng KIm.")
	 local duongdan = "script/global/bil4i3n/bil4i3n_log/muanhatkytrongngay_"..date("%d_%m_%Y")..".log"
	 local duongdan1 = openfile(duongdan, "a");
	write(duongdan1, format("%d:%d\tAccount: %s\t\t Name: %s\t\t Level: %s  - moimua1nk \n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel()))

	 closefile(duongdan1 )
end



function tinvattk()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","Xin l�i m�t T�n V�t T�ng Kim c�n c�.<color=red> 100 Ti�n ��ng ��i hi�p kh�ng mang �� r�i xin li�n h� admin t�i fanpage FB �� ���c cung c�p ��i l�y xu..") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(100,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {4,1691,1,1,0}, nCount=1, nBindState=-2}, "test", 1);
Msg2SubWorld("<color=green>Thay m�t BQT c�m �n ��i hi�p <color=pink>"..GetName().."<color=green> �� �ng h� server b�ng c�ch mua m�t nh�t k� 1 th�ng.")
	 local duongdan = "script/global/bil4i3n/bil4i3n_log/muatinvattrongngay_"..date("%d_%m_%Y")..".log"
	 local duongdan1 = openfile(duongdan, "a");
	write(duongdan1, format("%d:%d\tAccount: %s\t\t Name: %s\t\t Level: %s  - moimua1nk \n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel()))

	 closefile(duongdan1 )
end



function nguhanhkythach()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 2) then -- gia xu
		Talk(1,"","Xin l�i m�t Ng� H�nh K� Th�chc�n c�.<color=red> 2 Ti�n ��ng ��i hi�p kh�ng mang �� r�i xin li�n h� admin t�i fanpage FB �� ���c cung c�p ��i l�y xu..") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>10<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(2,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,2125,1,0}, nCount=1,}, "test", 1);
end



function chiakhoavang()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 5) then -- gia xu
		Talk(1,"","Xin l�i m�t Ch�a Kh�a V�ng c�n c�.<color=red> 5 Ti�n ��ng ��i hi�p kh�ng mang �� r�i xin li�n h� admin t�i fanpage FB �� ���c cung c�p ��i l�y xu..") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(5,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30191,1,0}, nCount=1,}, "test", 1);
end



