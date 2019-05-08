--ÒÔ¸£Ôµ³öÊÛÎïÆ·µÄNPC
--2004.8.5

Include( "\\script\\global\\fuyuan.lua" )
Include([[\script\event\mid_autumn06\head.lua]]);
Include("\\script\\vng_feature\\thuongnhanthanbi\\moruongfour\\openchestfour.lua")

function main()
	local tab_Content = {
		"Giao dŞch/OnBuy", 
		"KÕt thóc ®èi tho¹i/OnCancel", 
		"§i Tr­êng b¹ch s¬n /GotoHuanZhuan",
		"Liªn quan tíi phóc duyªn.../OnAbout"
	};
	if (au06_is_inperiod() == 1) then
		tinsert(tab_Content, "Trung thu ho¹t ®éng/au06_lpaw_entrance");
	end;
		tinsert(tab_Content, "Më r­¬ng 4/#tbChectfour:main()");
	Say ( "Kh¸ch quan muèn mua g× Bæn trang hµng g× còng cã", getn(tab_Content), tab_Content);
end

function OnBuy()
	Sale( 93, 2 );
end

function OnAbout()
	Talk( 3, "", "Phóc duyªn ®iÓm ®Õm: Th«ng qua tİch lòy thêi gian ch¬i, cã thÓ ®æi ®iÓm phóc duyªn. Cã thÓ tíi T­¬ng D­¬ng thÇn bİ th­¬ng nh©n ®Ó ®æi c¸c lo¹i vËt phÈm ®Æc thï", " Phóc duyªn ®æi:tİch lòy hai giê online trë lªn , ®i c¸c ®¹i thµnh thŞ t×m Vâ l©m truyÒn nh©n ®Ó ®æi . mét ngµy ®­îc ®æi 2 lÇn, tİch lòy thêi gian 4 giê trë lªn, mçi giê ®æi 1 ®iÓm phóc duyªn.", "H¹n chÕ ®iÒu kiÖn :Ngåi tİ kh«ng ®­îc tİch lòy ®iÓm phóc duyªn." );                                                                                                                                                                                                                                                                                            
end

function au06_lpaw_entrance()
	if (au06_IsPayed_player() == 0) then
		Say("ChØ cã tÕt trung thu míi cã thÓ tham gia trung thu ho¹t ®éng", 0);
		return
	end;
Say("NÕu nh­ ng­¬i cã <color=yellow> 10 th­¬ng cæ lÖnh bµi <color> ta sÏ cho ng­¬i ®æi mét <color=yellow> phông th¸ng qu¶ dong <color> ®­a kü n¨ng trŞ gi¸ hoÆc lµ 1 <color=yellow> cèng th¸ng phï dung <color> ®­a tiÒm n¨ng trŞ gi¸ .", 3, "1 c¸ th­¬ng cæ lÖnh bµi ®æi lÊy t­ëng th­ëng /#shangjialingpai(1)", "10 c¸ th­¬ng cæ lÖnh bµi ®æi lÊy t­ëng th­ëng /#shangjialingpai(2)","KÕt thóc ®èi tho¹i /oncancel"); 
end; 

function shangjialingpai(nIndex)
	if (CalcEquiproomItemCount(6, 1, 1252, -1) < 10) then
		Say("CÇn 10 c¸ th­¬ng cæ lÖnh bµi míi cã thÓ ®æi lÊy t­ëng th­ëng ", 0);
		return
	end;
	
	--¿Û³ıÎïÆ·
	if (ConsumeEquiproomItem(10, 6, 1, 1252, -1) ~= 1) then
		return
	end
	
	--¸øÓè½±µø
	local str = "<color=yellow> phông th¸ng qu¶ dong<color>";
	if (nIndex == 1) then -- Ôö¼ÓÒ»¸ö¼¼ÄÜµã
		AddItem(6, 1, 127, 1, 0, 0, 0);
	else -- Ôö¼Ó5¸öÇ±ÄÜµã
		AddItem(6, 1, 128, 1, 0, 0, 0);
		str = "<color=yellow>cèng th¸ng phï dungØ<color>";
	end;
	
	--¸øÓèÌáÊ¾
	Say("H¶o ! Xin mêi tiÕp nhËn mét chót lÔ vËt !", 0);
	Msg2Player("Ng­¬i ®¹t tíi"..str);
end;

function OnCancel()
end
function GotoHuanZhuan()
	NewWorld(934, 49632 / 32, 105696 /32)
end


