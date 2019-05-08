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
		"<color=pink>VinMart <enter>HÖ Thèng B¸n LÎ Toµn Quèc",
		"<color=pink>TiÕt KiÖm Chi PhÝ <enter>TiÖn Lîi Tèi ¦u",
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
	"Mua Nh©t Kû Cµn Kh«n Phï/ttk",
	"Mua TÝn VËt Tèng Kim/tinvattk",
                        "Mua Ngò Hµnh Kú Th¹ch/nguhanhkythach",
                        "Mua Ch×a Khãa Vµng/chiakhoavang",


                          
	"HiÖn t¹i ta chØ ®Õn xem/no"
	}
Say("<color=green>Chµo mõng b¹n ®Õn víi hÖ thèng VinMart<3<enter><color=green>T¹i ®©y chóng t«i chuyªn cung cÊp c¸c dÞch vô tiÖn   Ých nhÊt<enter><enter><color=yellow>C¶m ¬n quý kh¸ch ®· ghÐ th¨m cöa hµng cña chóng t«i !", getn(tab_Content), tab_Content);       
end;


function ttk()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","Xin lçi mét nhÊt kü cµng kh«n cÇn cã.<color=red> 100 TiÒn ®ång ®¹i hiÖp kh«ng mang ®ñ råi xin liªn hÖ admin t¹i fanpage FB cung cÊp m· sè thÎ cµo viettel ®Ó ®æi lÊy xu..") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(100,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4357,1,0,0,0}, nCount=1, nBindState=-2}, "test", 1);
Msg2SubWorld("<color=green>Chóc mõng ®¹i hiÖp <color=pink>"..GetName().."<color=green> ®· mua thµnh c«ng TÝn VËt Tèng KIm.")
	 local duongdan = "script/global/bil4i3n/bil4i3n_log/muanhatkytrongngay_"..date("%d_%m_%Y")..".log"
	 local duongdan1 = openfile(duongdan, "a");
	write(duongdan1, format("%d:%d\tAccount: %s\t\t Name: %s\t\t Level: %s  - moimua1nk \n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel()))

	 closefile(duongdan1 )
end



function tinvattk()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","Xin lçi mét TÝn VËt Tèng Kim cÇn cã.<color=red> 100 TiÒn ®ång ®¹i hiÖp kh«ng mang ®ñ råi xin liªn hÖ admin t¹i fanpage FB ®Ó ®­îc cung cÊp ®æi lÊy xu..") -- go
	return end
		if  CalcFreeItemCellCount() < 30 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(100,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {4,1691,1,1,0}, nCount=1, nBindState=-2}, "test", 1);
Msg2SubWorld("<color=green>Thay mÆt BQT c¶m ¬n ®¹i hiÖp <color=pink>"..GetName().."<color=green> ®· ñng hé server b»ng c¸ch mua mét nhÊt kü 1 th¸ng.")
	 local duongdan = "script/global/bil4i3n/bil4i3n_log/muatinvattrongngay_"..date("%d_%m_%Y")..".log"
	 local duongdan1 = openfile(duongdan, "a");
	write(duongdan1, format("%d:%d\tAccount: %s\t\t Name: %s\t\t Level: %s  - moimua1nk \n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel()))

	 closefile(duongdan1 )
end



function nguhanhkythach()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 2) then -- gia xu
		Talk(1,"","Xin lçi mét Ngò Hµnh Kú Th¹chcÇn cã.<color=red> 2 TiÒn ®ång ®¹i hiÖp kh«ng mang ®ñ råi xin liªn hÖ admin t¹i fanpage FB ®Ó ®­îc cung cÊp ®æi lÊy xu..") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>10<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(2,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,2125,1,0}, nCount=1,}, "test", 1);
end



function chiakhoavang()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 5) then -- gia xu
		Talk(1,"","Xin lçi mét Ch×a Khãa Vµng cÇn cã.<color=red> 5 TiÒn ®ång ®¹i hiÖp kh«ng mang ®ñ råi xin liªn hÖ admin t¹i fanpage FB ®Ó ®­îc cung cÊp ®æi lÊy xu..") -- go
	return end
		if  CalcFreeItemCellCount() < 10 then
			return Say("<color=cyan><pic=65>§¹i hiÖp kh«ng ®ñ <color=green>30<color> « trèng kh«ng thÓ thùc hiÖn thao t¸c")
		end
ConsumeEquiproomItem(5,4,417,1,1)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30191,1,0}, nCount=1,}, "test", 1);
end



