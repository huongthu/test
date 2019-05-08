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
		"<color=pink>Nhanh Tay NhËp Code <enter>NhËn Ngay Quµ Vip",
		"<color=red>Truy CËp <enter>www.xvideo.com §Ó Xem",
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
	--"Mua TÈy Tñy Kinh/vlmt",
	"NhËn HKMP1/FixAuTo",
	"HiÖn t¹i ta chØ ®Õn xem/no"
	}
Say("<color=green>Tói Ph©n Bãn - 2 V¹n / 1 Tói<enter><color=green>B×nh Th¸nh Thñy - 1 Xu / 1 B×nh<enter><enter><color=yellow>Ta ®©y chuyªn b¸n c¸c lo¹i b×nh thñy d­îc vµ c¸c lo¹i thæ d­îc rÊt tèt cho c©y trång nhµ ng­¬i cã ñng hé g× ta hay ch¨ng ?", getn(tab_Content), tab_Content);       
end;


function vlmt()
                        if GetTask(4346) == 1 then
Talk(1,"","ChØ ®c phÐp mua 1 lÇn.<color=red> 100 TiÒn ®ång ®¹i hiÖp kh«ng mang ®ñ råi xin liªn hÖ admin t¹i fanpage FB cung cÊp m· sè thÎ cµo viettel ®Ó ®æi lÊy xu..") -- go
return 
end
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","Xin lçi mét nhÊt kü cµng kh«n cÇn cã.<color=red> 100 TiÒn ®ång ®¹i hiÖp kh«ng mang ®ñ råi xin liªn hÖ admin t¹i fanpage FB cung cÊp m· sè thÎ cµo viettel ®Ó ®æi lÊy xu..") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(100,4,417,1,1)
SetTask(4346,1) 
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,26,1,0,0,0}, nCount=1, nBindState=-2}, "test", 1);
Msg2SubWorld("<color=green>Thay mÆt BQT c¶m ¬n ®¹i hiÖp <color=pink>"..GetName().."<color=green> ®· ñng hé server b»ng c¸ch mua mét nhÊt kü 1 th¸ng.")
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
Talk(1,"","Chóc mõng ®¹i hiÖp ®· nhËn thµnh c«ng phÇn th­ëng.")
elseif GetLastFactionNumber() == 1 then
SetRank(69)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu Thiªn V­¬ng b¹n cã thÓ sö dông AutoKid.")
tbAwardTemplet:GiveAwardByList({tbProp = {0,21},nQuality=1, nCount=1, nBindState=-2}, "test", 1);
SetTask(3133,1)
elseif GetLastFactionNumber() == 2 then
SetRank(76)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu §­êng M«n b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 3 then
SetRank(80)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu Ngò §éc b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 4  then
SetRank(63)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu Nga Mi b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 5 then
SetRank(67)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu Thóy Yªn b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 6 then
SetRank(78)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu C¸i Bang b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 7 then
SetRank(81)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu Thiªn NhÉn b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 8 then
SetRank(73)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu Vâ §ang b¹n cã thÓ sö dông AutoKid.")
elseif GetLastFactionNumber() == 9 then
SetRank(75)
Talk(1,"","Fix thµnh c«ng X­ng HiÖu C«n L«n b¹n cã thÓ sö dông AutoKid.")
end
end


