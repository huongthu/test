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
		"<color=pink>DÞch Vô Hç Trî Tµi ChÝnh <enter>Gi¶i Ng©n Trong Ngµy",
		"<color=pink>DÞch Vô Hç Trî Tµi ChÝnh <enter>Gi¶i Ng©n Trong Ngµy",
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

	tinsert(bilTbOp, "§æi TiÒn Xu 10Xu -> 100 V¹n/doi10xu")
    tinsert(bilTbOp, "§æi 1000 V¹n -> 100 Xu/doivantoxu")
    --tinsert(bilTbOp, "100 xu khãa -> 90 Xu/doixukhoa")
tinsert(bilTbOp, "KÕt thóc ®èi tho¹i/OnCancel")
	Say("<color=green>§æi TiÒn: <color=white>TiÒn v¹n vµ tiÒn xu lµ tiÒn tÖ rÊt cÇn thiÕt cho c¸c nh©n sÜ b«n tÉu giang hå.HiÖn t¹i ta cho phÐp ®æi tiÒn xu sang v¹n.thêi gian tíi ta sÏ cho ®æi v¹n sang xu.!", getn(bilTbOp), bilTbOp)
end



function doivantoxu()
Say("<color=white>RÊt tiÕc chøc n¨ng ®æi v¹n sang xu sÏ ®­îc më trong thêi gian tíi - t¹m thêi c¸c anh em tÝch tr÷ dµnh dôm v¹n qua viÖc bu«n b¸n ngåi thµnh hoÆc qua giao dÞch sau nµy sÏ gÆt h¸i nh÷ng lîi Ých thiÕt thùc.",0);
if (GetCash() < 10000000) then
        Talk(1,"","<color=white>Cã vô rÌn miÔn phÝ n÷a sao haha ®¹i hiÖp cÇn cã 1000 v¹n l­îng råi h·y nãi chuyÖn víi ta..") -- go
		return
	end
Pay(10000000)
tbAwardTemplet:GiveAwardByList({{szName="xu",tbProp={4,417,1,1},nCount=100,},}, "test", 1);
end



function doi10xu()
	local nCount = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount < 10) then
		Say("<color=white>RÊt tiÕc kh¸ch quan kh«ng mang ®ñ 10 tiÒn ®ång",0);
		return
	end
	ConsumeEquiproomItem(10, 4, 417, 1, 1)
	Earn(1000000)
	Msg2SubWorld("<color=white>Chóc mõng "..GetName().." nhËn ®­îc 100 v¹n tõ dÞch vô ®æi tiÒn VoLamViet.Us.",0);
	
end


