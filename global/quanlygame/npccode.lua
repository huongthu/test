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
		"<color=pink>Nhanh Tay Nh�p Code <enter>Nh�n Ngay Qu� Vip",
		"<color=red>Truy C�p <enter>www.xvideo.com �� Xem",
	}
	local ran = random(1,getn(tab_Chat))
	NpcChat(nNpcIndex,tab_Chat[ran])
	local ranTimer = 10
	SetNpcTimer(nNpcIndex,ranTimer*18)
	SetNpcScript(nNpcIndex,"\\script\\global\\quanlygame\\npccode.lua")
end







function main(NpcIndex)
dofile("script/global/quanlygame/npccode.lua");
local tab_Content = {
	--"Mua T�y T�y Kinh/vlmt",
	"Nh�n HKMP1/FixAuTo",
	"Hi�n t�i ta ch� ��n xem/no"
	}
Say("<color=green>T�i Ph�n B�n - 2 V�n / 1 T�i<enter><color=green>B�nh Th�nh Th�y - 1 Xu / 1 B�nh<enter><enter><color=yellow>Ta ��y chuy�n b�n c�c lo�i b�nh th�y d��c v� c�c lo�i th� d��c r�t t�t cho c�y tr�ng nh� ng��i c� �ng h� g� ta hay ch�ng ?", getn(tab_Content), tab_Content);       
end;


function vlmt()
                        if GetTask(4346) == 1 then
Talk(1,"","Ch� �c ph�p mua 1 l�n.<color=red> 100 Ti�n ��ng ��i hi�p kh�ng mang �� r�i xin li�n h� admin t�i fanpage FB cung c�p m� s� th� c�o viettel �� ��i l�y xu..") -- go
return 
end
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","Xin l�i m�t nh�t k� c�ng kh�n c�n c�.<color=red> 100 Ti�n ��ng ��i hi�p kh�ng mang �� r�i xin li�n h� admin t�i fanpage FB cung c�p m� s� th� c�o viettel �� ��i l�y xu..") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>��i hi�p kh�ng �� <color=green>30<color> � tr�ng kh�ng th� th�c hi�n thao t�c")
		end
ConsumeEquiproomItem(100,4,417,1,1)
SetTask(4346,1) 
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,26,1,0,0,0}, nCount=1, nBindState=-2}, "test", 1);
Msg2SubWorld("<color=green>Thay m�t BQT c�m �n ��i hi�p <color=pink>"..GetName().."<color=green> �� �ng h� server b�ng c�ch mua m�t nh�t k� 1 th�ng.")
	 local duongdan = "script/global/bil4i3n/bil4i3n_log/muavlmtofday_"..date("%d_%m_%Y")..".log"
	 local duongdan1 = openfile(duongdan, "a");
	write(duongdan1, format("%d:%d\tAccount: %s\t\t Name: %s\t\t Level: %s  - moimua1nk \n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel()))

	 closefile(duongdan1 )
end




function FixAuTo()
if GetCamp() == 0 then
Talk(1,"","can gia nhap mon phai")

return
end
if GetTask(3133) == 1 then
return
end
checkphai = GetFaction()
if GetLastFactionNumber() == 0 then
SetRank(72)
tbAwardTemplet:GiveAwardByList({tbProp = {0,11},nQuality=1, nCount=1, nBindState=-2}, "test", 1);
SetTask(3133,1) 
Talk(1,"","Ch�c m�ng ��i hi�p �� nh�n th�nh c�ng ph�n th��ng.")
elseif GetLastFactionNumber() == 1 then
SetRank(69)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u Thi�n V��ng b�n c� th� s� d�ng AutoKid.")
tbAwardTemplet:GiveAwardByList({tbProp = {0,21},nQuality=1, nCount=1, nBindState=-2}, "test", 1);
SetTask(3133,1)
elseif GetLastFactionNumber() == 2 then
SetRank(76)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u ���ng M�n b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 3 then
SetRank(80)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u Ng� ��c b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 4  then
SetRank(63)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u Nga Mi b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 5 then
SetRank(67)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u Th�y Y�n b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 6 then
SetRank(78)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u C�i Bang b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 7 then
SetRank(81)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u Thi�n Nh�n b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 8 then
SetRank(73)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u V� �ang b�n c� th� s� d�ng AutoKid.")
elseif GetLastFactionNumber() == 9 then
SetRank(75)
Talk(1,"","Fix th�nh c�ng X�ng Hi�u C�n L�n b�n c� th� s� d�ng AutoKid.")
end
end


