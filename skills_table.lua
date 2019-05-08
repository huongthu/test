-- script viet hoa By http://tranhba.com  skills_table.lua 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2004-05-16) 
-- script viet hoa By http://tranhba.com  chñ duy tr× biÓu , c¸c m«n ph¸i # c¸c cÊp bËc kü n¨ng tæng biÓu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-07-05) gia t¨ng ®Çu ®iÓm ph­¬ng thøc 90 cÊp kü n¨ng ®Æc biÖt xö lı # nÕu nh­ nhµ ch¬i cã nµy kü n¨ng , lµ b¶o tån kü n¨ng ID sau thñ tiªu . ë thªm kü n¨ng lóc n÷a ®¬n ®éc xö lı 

function check_update() 
-- script viet hoa By http://tranhba.com  c«ng céng dïng/uèng m« thøc kh«ng râ trõ tr¹ng th¸i 
if (GetTask(137) >= 20 or GetTripMode() == 2) then 
return 0 
else 
SetTask(57,GetGameTime()) -- script viet hoa By http://tranhba.com  nhí kü n¨ng ®æi míi sau lÇn ®Çu tiªn th­îng tuyÕn thêi gian , nhÊt ®Şnh ph¶i ë tuyÕn 72 giê sau nµy míi cho phĞp th­îng tÈy tñy ®¶o 
rollback_prop() -- script viet hoa By http://tranhba.com  nÆng ®­a tiÒm n¨ng ®iÓm #2004-07-13# 
skills_update() 
UpdateSkill() 
return 1 
end 
end 

function skills_update() 
SetTaskTemp(20,0) -- script viet hoa By http://tranhba.com  sö dông tr­íc phôc vŞ , b¶o ®¶m kh«ng bŞ quÊy nhiÔu 
SetTaskTemp(21,0) 
Player_Faction = check_faction() 
if (Player_Faction == 3) then -- script viet hoa By http://tranhba.com  Thiªn v­¬ng gióp 
update_tw() 
elseif (Player_Faction == 7) then -- script viet hoa By http://tranhba.com  ph¸i ThiÕu l©m 
update_sl() 
elseif (Player_Faction == 2) then -- script viet hoa By http://tranhba.com  §­êng m«n 
update_tm() 
elseif (Player_Faction == 10) then -- script viet hoa By http://tranhba.com  n¨m ®éc 
update_wu() 
elseif (Player_Faction == 1) then -- script viet hoa By http://tranhba.com  Nga Mi 
update_em() 
elseif (Player_Faction == 6) then -- script viet hoa By http://tranhba.com  thóy khãi 
update_cy() 
elseif (Player_Faction == 4) then -- script viet hoa By http://tranhba.com  ngµy nhÉn 
update_tr() 
elseif (Player_Faction == 8) then -- script viet hoa By http://tranhba.com  C¸i Bang 
update_gb() 
elseif (Player_Faction == 5) then -- script viet hoa By http://tranhba.com  Vâ §­¬ng 
update_wd() 
elseif (Player_Faction == 9) then -- script viet hoa By http://tranhba.com  C«n L«n 
update_kl() 
else -- script viet hoa By http://tranhba.com  b¹ch tªn 
SetTask(137,20) 
return 1 
end 
	-- script viet hoa By http://tranhba.com  ×ÔÉí¼¼ÄÜµã×ÜÊı = (µÈ¼¶-1) + ¼Ó¼¼ÄÜÈÎÎñ + ¼Ó¼¼ÄÜµÀ¾ß - ÏÖÓĞÎ´·ÖÅäµãÊı	- »ØÌåÊõ£¨ÓêÂ¶ÖØÉú£©µÈ¼¶ - ¿ÛµãÏ´µãÓ°Ïì
-- script viet hoa By http://tranhba.com  Say("Kü n¨ng ®æi míi ®· hoµn thµnh , xin chó ı lÇn n÷a v× c¸c kü n¨ng ph©n phèi kü n¨ng ®iÓm . ",0) 
Msg2Player("Kü n¨ng ®æi míi ®· hoµn thµnh , xin chó ı lÇn n÷a v× c¸c kü n¨ng ph©n phèi kü n¨ng ®iÓm . ") 
xMagic = 0 
if HaveMagic(397) >= 0 then -- script viet hoa By http://tranhba.com  tİnh to¸n m­a mãc sèng l¹i kü n¨ng , khÊu trõ t­¬ng øng ®iÓm ®Õm # muèn phßng ngõa trë vÒ -1# 
xMagic = HaveMagic(397) 
end 
-- script viet hoa By http://tranhba.com  if (GetTask(13) >= 1) and (GetTask(13) < 256) then -- script viet hoa By http://tranhba.com  tİnh to¸n cã hay kh«ng trõ ®iÓm t¾m ®iÓm . 
-- script viet hoa By http://tranhba.com 		xMagic = xMagic + 3
-- script viet hoa By http://tranhba.com  Msg2Player("Ng­¬i ®· tõng qu¸ thİch minh t¨ng ®İch dŞch c©n tÈy tñy , trong kinh m¹ch cã nhÊt ®Şnh tæn th­¬ng . ng­¬i cã thÓ lîi dông ba viªn thñy tinh xin/mêi thİch minh gióp ng­¬i ch÷a trŞ kinh m¹ch bŞ tæn th­¬ng . ") 
-- script viet hoa By http://tranhba.com  end 
	MagicPoint_total = GetLevel() + GetByte(GetTask(86),2) + GetByte(GetTask(80),1) + GetTask(700) - GetMagicPoint() - xMagic - 1
Ttask21 = GetTaskTemp(21) 
	if (Ttask21 ~= MagicPoint_total + GetMagicPoint()) then		-- script viet hoa By http://tranhba.com  ²»Ò»ÖÂµÄÒªĞ´log
		WriteLog(date("%HÊ±%M·Ö%SÃë").."£º ÕÊºÅ¡°"..GetAccount().."¡±µÄ½ÇÉ«¡°"..GetName().."¡±¼¼ÄÜ¸üĞÂÒì³£¼ÇÂ¼£ºµÈ¼¶"..GetLevel().."£¬Ô­ÓĞ¼¼ÄÜµã"..Ttask21.."£¬ĞŞÕıÎª"..MagicPoint_total+GetMagicPoint().."µã£¨°üÀ¨ÈÎÎñ¼Ó"..GetByte(GetTask(86),2).."µã£¬µÀ¾ß¼Ó"..GetTask(80).."µã£©¡£")
end 
AddMagicPoint(MagicPoint_total) 
SetTaskTemp(20,0) -- script viet hoa By http://tranhba.com  t¾m ®iÓm hoµn thµnh , lÇn n÷a phôc vŞ 
SetTaskTemp(21,0) 
end 

function check_faction() 
if (GetTask(7) >= 10*256) and (GetTask(7) ~= 75*256) then -- script viet hoa By http://tranhba.com  ThiÕu L©m hoÆc m«n ph¸i nµy xuÊt s­ 
SetTask(137,7) 
SetLastFactionNumber(0) 
return 7 
elseif (GetTask(3) >= 10*256) and (GetTask(3) ~= 75*256) then -- script viet hoa By http://tranhba.com  Thiªn v­¬ng hoÆc m«n ph¸i nµy xuÊt s­ 
SetTask(137,3) 
SetLastFactionNumber(1) 
return 3 
elseif (GetTask(10) >= 10*256) and (GetTask(10) ~= 75*256) then -- script viet hoa By http://tranhba.com  n¨m ®éc hoÆc m«n ph¸i nµy xuÊt s­ 
SetTask(137,10) 
SetLastFactionNumber(3) 
return 10 
elseif (GetTask(2) >= 10*256) and (GetTask(2) ~= 75*256) then -- script viet hoa By http://tranhba.com  §­êng m«n hoÆc m«n ph¸i nµy xuÊt s­ 
SetTask(137,2) 
SetLastFactionNumber(2) 
return 2 
elseif (GetTask(6) >= 10*256) and (GetTask(6) ~= 75*256) then -- script viet hoa By http://tranhba.com  thóy khãi hoÆc m«n ph¸i nµy xuÊt s­ 
SetTask(137,6) 
SetLastFactionNumber(5) 
return 6 
elseif (GetTask(1) >= 10*256) and (GetTask(1) ~= 75*256) then -- script viet hoa By http://tranhba.com  Nga Mi hoÆc m«n ph¸i nµy xuÊt s­ 
SetTask(137,1) 
SetLastFactionNumber(4) 
return 1 
elseif (GetTask(8) >= 10*256) and (GetTask(8) ~= 75*256) then -- script viet hoa By http://tranhba.com  C¸i Bang hoÆc m«n ph¸i nµy xuÊt s­ 
SetTask(137,8) 
SetLastFactionNumber(6) 
return 8 
elseif (GetTask(4) >= 10*256) and (GetTask(4) ~= 75*256) then -- script viet hoa By http://tranhba.com  ngµy nhÉn hoÆc m«n ph¸i nµy xuÊt s­ 
SetTask(137,4) 
SetLastFactionNumber(7) 
return 4 
elseif (GetTask(9) >= 10*256) and (GetTask(9) ~= 75*256) then -- script viet hoa By http://tranhba.com  C«n L«n hoÆc m«n ph¸i nµy xuÊt s­ 
SetTask(137,9) 
SetLastFactionNumber(9) 
return 9 
elseif (GetTask(5) >= 10*256) and (GetTask(5) ~= 75*256) then -- script viet hoa By http://tranhba.com  Vâ §­¬ng hoÆc m«n ph¸i nµy xuÊt s­ 
SetTask(137,5) 
SetLastFactionNumber(8) 
return 5 
else -- script viet hoa By http://tranhba.com  b¹ch tªn ®İch , kh«ng cÇn ®æi míi 
SetLastFactionNumber(-1) 
return 20 
end 
end; 

function add_misc(lvl) -- script viet hoa By http://tranhba.com  thªm c«ng céng kü n¨ng # theo nh­ hai vµo chÕ vŞ trôc c¸ thªm # 
if (GetBit(lvl,1) == 1) and (HaveMagic(210) == -1) then -- script viet hoa By http://tranhba.com  thø 1 ch÷ vŞ # khinh c«ng 
AddMagic(210,1) 
end 
if (GetBit(lvl,2) == 1) and (HaveMagic(400) == -1) then -- script viet hoa By http://tranhba.com  thø 2 ch÷ vŞ # c­íp cña ng­êi giµu gióp ng­êi nghÌo khã 
AddMagic(400,1) 
end 
if (GetBit(lvl,3) == 1) and (HaveMagic(397) == -1) then -- script viet hoa By http://tranhba.com  thø 3 ch÷ vŞ # m­a mãc sèng l¹i 
AddMagic(397) 
end 
end 

function update_tw() -- script viet hoa By http://tranhba.com  tr­íc c¨n cø nhiÖm vô cÊp bËc thñ tiªu # lÇn n÷a gia nhËp kü n¨ng , sau ®ã bæ trë vÒ kü n¨ng ®iÓm 
UTask = GetTask(3) 
if (GetTask(121) == 255) then -- script viet hoa By http://tranhba.com  häc ®­îc 90 cÊp kü n¨ng 
the_lvl = 90 
-- script viet hoa By http://tranhba.com  Thiªn v­¬ng ®İch trë vÒ s­ kü n¨ng cÇn nhiÒu h¬n n÷a lµm ph¸n ®o¸n , bëi v× nguyªn 60 cÊp kü n¨ng bŞ ®æi thµnh 50 cÊp ### cã Kim chung tr¸o # qua 60 cÊp , h¬n n÷a ®· xuÊt s­ # kh«ng ph¶i lµ xö s­ # 
elseif (HaveMagic(42) >= 0) and (GetTask(3) >= 70*256) and (GetTask(3) ~= 75*256) and (GetLevel() >= 60) then -- script viet hoa By http://tranhba.com  cã trÊn ph¸i tuyÖt häc kü n¨ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 50 cÊp nhiÖm vô 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 40 cÊp nhiÖm vô 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 10 cÊp nhiÖm vô 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n 
the_lvl = 10 
end 
del_all_skill() 
add_tw(the_lvl) -- script viet hoa By http://tranhba.com  thªm ®¸p l¹i häc ®­îc kü n¨ng 
SetTask(137,23) 
end 

function update_gb() -- script viet hoa By http://tranhba.com  tr­íc c¨n cø nhiÖm vô cÊp bËc thñ tiªu # lÇn n÷a gia nhËp kü n¨ng , sau ®ã bæ trë vÒ kü n¨ng ®iÓm 
UTask = GetTask(8) 
if (GetTask(128) == 255) then -- script viet hoa By http://tranhba.com  häc ®­îc 90 cÊp kü n¨ng 
the_lvl = 90 
-- script viet hoa By http://tranhba.com  C¸i Bang ®İch trë vÒ s­ kü n¨ng cÇn nhiÒu h¬n n÷a lµm ph¸n ®o¸n , bëi v× nguyªn 60 cÊp kü n¨ng bŞ ®æi thµnh 50 cÊp ### cã Kh¸ng long b÷u hèi # qua 60 cÊp , h¬n n÷a ®· xuÊt s­ # kh«ng ph¶i lµ xö s­ # 
elseif (HaveMagic(128) >= 0) and (GetTask(8) >= 70*256) and (GetTask(8) ~= 75*256) and (GetLevel() >= 60) then -- script viet hoa By http://tranhba.com  cã trÊn ph¸i tuyÖt häc kü n¨ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 50 cÊp nhiÖm vô 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 40 cÊp nhiÖm vô 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 10 cÊp nhiÖm vô 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n 
the_lvl = 10 
end 
del_all_skill() 
add_gb(the_lvl) -- script viet hoa By http://tranhba.com  thªm ®¸p l¹i häc ®­îc kü n¨ng 
SetTask(137,28) 
end 

function update_wd() -- script viet hoa By http://tranhba.com  tr­íc c¨n cø nhiÖm vô cÊp bËc thñ tiªu # lÇn n÷a gia nhËp kü n¨ng , sau ®ã bæ trë vÒ kü n¨ng ®iÓm 
UTask = GetTask(5) 
if (GetTask(129) == 255) then -- script viet hoa By http://tranhba.com  häc ®­îc 90 cÊp kü n¨ng 
the_lvl = 90 
elseif (HaveMagic(166) >= 0) then -- script viet hoa By http://tranhba.com  cã trÊn ph¸i tuyÖt häc kü n¨ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 50 cÊp nhiÖm vô 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 40 cÊp nhiÖm vô 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 10 cÊp nhiÖm vô 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n 
the_lvl = 10 
end 
del_all_skill() 
add_wd(the_lvl) -- script viet hoa By http://tranhba.com  thªm ®¸p l¹i häc ®­îc kü n¨ng 
SetTask(137,25) 
end 

function update_em() -- script viet hoa By http://tranhba.com  tr­íc c¨n cø nhiÖm vô cÊp bËc thñ tiªu # lÇn n÷a gia nhËp kü n¨ng , sau ®ã bæ trë vÒ kü n¨ng ®iÓm 
UTask = GetTask(1) 
if (GetTask(125) == 255) then -- script viet hoa By http://tranhba.com  häc ®­îc 90 cÊp kü n¨ng 
the_lvl = 90 
elseif (HaveMagic(252) >= 0) then -- script viet hoa By http://tranhba.com  cã trÊn ph¸i tuyÖt häc kü n¨ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 50 cÊp nhiÖm vô 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 40 cÊp nhiÖm vô 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 10 cÊp nhiÖm vô 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n 
the_lvl = 10 
end 
del_all_skill() 
add_em(the_lvl) -- script viet hoa By http://tranhba.com  thªm ®¸p l¹i häc ®­îc kü n¨ng 
SetTask(137,21) 
end 

function update_sl() -- script viet hoa By http://tranhba.com  tr­íc c¨n cø nhiÖm vô cÊp bËc thñ tiªu # lÇn n÷a gia nhËp kü n¨ng , sau ®ã bæ trë vÒ kü n¨ng ®iÓm 
UTask = GetTask(7) 
if (GetTask(122) == 255) then -- script viet hoa By http://tranhba.com  häc ®­îc 90 cÊp kü n¨ng 
the_lvl = 90 
elseif (HaveMagic(21) >= 0) then -- script viet hoa By http://tranhba.com  cã trÊn ph¸i tuyÖt häc kü n¨ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 50 cÊp nhiÖm vô 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 40 cÊp nhiÖm vô 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 10 cÊp nhiÖm vô 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n 
the_lvl = 10 
end 
del_all_skill() 
add_sl(the_lvl) -- script viet hoa By http://tranhba.com  thªm ®¸p l¹i häc ®­îc kü n¨ng 
SetTask(137,27) 
end 

function update_wu() -- script viet hoa By http://tranhba.com  tr­íc c¨n cø nhiÖm vô cÊp bËc thñ tiªu # lÇn n÷a gia nhËp kü n¨ng , sau ®ã bæ trë vÒ kü n¨ng ®iÓm 
UTask = GetTask(10) 
if (GetTask(124) == 255) then -- script viet hoa By http://tranhba.com  häc ®­îc 90 cÊp kü n¨ng 
the_lvl = 90 
elseif (HaveMagic(75) >= 0) then -- script viet hoa By http://tranhba.com  cã trÊn ph¸i tuyÖt häc kü n¨ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 50 cÊp nhiÖm vô 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 40 cÊp nhiÖm vô 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 10 cÊp nhiÖm vô 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n 
the_lvl = 10 
end 
del_all_skill() 
add_wu(the_lvl) -- script viet hoa By http://tranhba.com  thªm ®¸p l¹i häc ®­îc kü n¨ng 
SetTask(137,30) 
end 

function update_cy() -- script viet hoa By http://tranhba.com  tr­íc c¨n cø nhiÖm vô cÊp bËc thñ tiªu # lÇn n÷a gia nhËp kü n¨ng , sau ®ã bæ trë vÒ kü n¨ng ®iÓm 
UTask = GetTask(6) 
if (GetTask(126) == 255) then -- script viet hoa By http://tranhba.com  häc ®­îc 90 cÊp kü n¨ng 
the_lvl = 90 
elseif (HaveMagic(111) >= 0) then -- script viet hoa By http://tranhba.com  cã trÊn ph¸i tuyÖt häc kü n¨ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 50 cÊp nhiÖm vô 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 40 cÊp nhiÖm vô 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 10 cÊp nhiÖm vô 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n 
the_lvl = 10 
end 
del_all_skill() 
add_cy(the_lvl) -- script viet hoa By http://tranhba.com  thªm ®¸p l¹i häc ®­îc kü n¨ng 
SetTask(137,26) 
end 

function update_tm() -- script viet hoa By http://tranhba.com  tr­íc c¨n cø nhiÖm vô cÊp bËc thñ tiªu # lÇn n÷a gia nhËp kü n¨ng , sau ®ã bæ trë vÒ kü n¨ng ®iÓm 
UTask = GetTask(2) 
if (GetTask(123) == 255) then -- script viet hoa By http://tranhba.com  häc ®­îc 90 cÊp kü n¨ng 
the_lvl = 90 
elseif (HaveMagic(249) >= 0) then -- script viet hoa By http://tranhba.com  cã trÊn ph¸i tuyÖt häc kü n¨ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 50 cÊp nhiÖm vô 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 40 cÊp nhiÖm vô 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 10 cÊp nhiÖm vô 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n 
the_lvl = 10 
end 
del_all_skill() 
add_tm(the_lvl) -- script viet hoa By http://tranhba.com  thªm ®¸p l¹i häc ®­îc kü n¨ng 
SetTask(137,22) 
end 

function update_tr() -- script viet hoa By http://tranhba.com  tr­íc c¨n cø nhiÖm vô cÊp bËc thñ tiªu # lÇn n÷a gia nhËp kü n¨ng , sau ®ã bæ trë vÒ kü n¨ng ®iÓm 
UTask = GetTask(4) 
if (GetTask(127) == 255) then -- script viet hoa By http://tranhba.com  häc ®­îc 90 cÊp kü n¨ng 
the_lvl = 90 
elseif (HaveMagic(150) >= 0) then -- script viet hoa By http://tranhba.com  cã trÊn ph¸i tuyÖt häc kü n¨ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 50 cÊp nhiÖm vô 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 40 cÊp nhiÖm vô 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 10 cÊp nhiÖm vô 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n 
the_lvl = 10 
end 
del_all_skill() 
add_tr(the_lvl) -- script viet hoa By http://tranhba.com  thªm ®¸p l¹i häc ®­îc kü n¨ng 
SetTask(137,24) 
end 

function update_kl() -- script viet hoa By http://tranhba.com  cµ kü n¨ng míi 
UTask = GetTask(9) 
if (GetTask(130) == 255) then -- script viet hoa By http://tranhba.com  häc ®­îc 90 cÊp kü n¨ng 
the_lvl = 90 
elseif (HaveMagic(182) >= 0) then -- script viet hoa By http://tranhba.com  cã trÊn ph¸i tuyÖt häc kü n¨ng 
the_lvl = 70 
elseif (UTask >= 60*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 50 cÊp nhiÖm vô 
the_lvl = 60 
elseif (UTask >= 50*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 40 cÊp nhiÖm vô 
the_lvl = 50 
elseif (UTask >= 40*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô 
the_lvl = 40 
elseif (UTask >= 30*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 20 cÊp nhiÖm vô 
the_lvl = 30 
elseif (UTask >= 20*256) then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 10 cÊp nhiÖm vô 
the_lvl = 20 
elseif (UTask >= 10*256) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n 
the_lvl = 10 
end 
del_all_skill() 
add_kl(the_lvl) -- script viet hoa By http://tranhba.com  thªm ®¸p l¹i häc ®­îc kü n¨ng 
SetTask(137,29) 
end 

function add_tw(lvl) -- script viet hoa By http://tranhba.com  c¨n cø nhiÖm vô cÊp bËc thªm t­¬ng øng Thiªn v­¬ng kü n¨ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n # gia nhËp cöa kü n¨ng # 
if (HaveMagic(34) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(34) -- script viet hoa By http://tranhba.com  sÊm sĞt chĞm [34] # nhËp m«n # 
end 
if (HaveMagic(30) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(30) -- script viet hoa By http://tranhba.com  trë vÒ phong r¬i nh¹n [30]# nhËp m«n # 
end 
if (HaveMagic(29) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(29) -- script viet hoa By http://tranhba.com  chĞm long quyÕt [29] # nhËp m«n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 cÊp nhiÖm vô # thªm 10 cÊp kü n¨ng # 
if (HaveMagic(26) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(26) -- script viet hoa By http://tranhba.com  Thiªn v­¬ng chïy ph¸p [26]#10 cÊp # 
end 
if (HaveMagic(23) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(23) -- script viet hoa By http://tranhba.com  Thiªn v­¬ng th­¬ng ph¸p [23]#10 cÊp # 
end 
if (HaveMagic(24) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(24) -- script viet hoa By http://tranhba.com  Thiªn v­¬ng ®ao ph¸p [24]#10 cÊp # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 cÊp nhiÖm vô # thªm 20 cÊp kü n¨ng # 
if (HaveMagic(33) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(33) -- script viet hoa By http://tranhba.com  tÜnh t©m quyÕt [33] #20 cÊp # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 cÊp nhiÖm vô # thªm 30 cÊp kü n¨ng # 
if (HaveMagic(37) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(37) -- script viet hoa By http://tranhba.com  b¸t phong chĞm [37]#30 cÊp # 
end 
if (HaveMagic(35) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(35) -- script viet hoa By http://tranhba.com  d­¬ng quan ba ®iÖp [35]#30 cÊp # 
end 
if (HaveMagic(31) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(31) -- script viet hoa By http://tranhba.com  ®­îc v©n quyÕt [31]#30 cÊp # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 cÊp nhiÖm vô # thªm 40 cÊp kü n¨ng # 
if (HaveMagic(40) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(40) -- script viet hoa By http://tranhba.com  ®o¹n hån ®©m [40]#40 cÊp # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 cÊp nhiÖm vô # thªm 50 cÊp kü n¨ng # 
if (HaveMagic(42) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(42) -- script viet hoa By http://tranhba.com  Kim chung tr¸o [42]#50 cÊp # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  trë vÒ s­ nhiÖm vô # thªm trÊn ph¸i tuyÖt häc # 
if (HaveMagic(32) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(32) -- script viet hoa By http://tranhba.com  kh«ng lßng d¹ nµo chĞm [32] #60 cÊp # 
end 
if (HaveMagic(36) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(36) -- script viet hoa By http://tranhba.com  Thiªn v­¬ng chiÕn ı [36]# trÊn ph¸i # 
end 
if (HaveMagic(41) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(41) -- script viet hoa By http://tranhba.com  huyÕt chiÕn b¸t ph­¬ng [41] #60 cÊp # 
end 
if (HaveMagic(324) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(324) -- script viet hoa By http://tranhba.com  ngåi long quyÕt [324]#60 cÊp # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 cÊp nhiÖm vô # thªm 90 cÊp kü n¨ng # 
if (HaveMagic(322) <= 0) then AddMagic(322,20) end -- script viet hoa By http://tranhba.com  xĞ trêi chĞm [322]#90 cÊp # 
if (HaveMagic(323) <= 0) then AddMagic(323,20) end -- script viet hoa By http://tranhba.com  ®uæi tinh trôc th¸ng [323]#90 cÊp # 
if (HaveMagic(325) <= 0) then AddMagic(325,20) end -- script viet hoa By http://tranhba.com  ®uæi phong quyÕt [325]#90 cÊp # 
if (HaveMagic(708) <= 0) then AddMagic(708,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 120 kü n¨ng 
if (HaveMagic(1058) <= 0) then AddMagic(1058,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1059) <= 0) then AddMagic(1059,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1060) <= 0) then AddMagic(1060,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
AddItem(6,1,2841,1,0,0) 
end 
end 

function add_sl(lvl) -- script viet hoa By http://tranhba.com  c¨n cø nhiÖm vô cÊp bËc thªm t­¬ng øng ThiÕu L©m kü n¨ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n # gia nhËp cöa kü n¨ng # 
if (HaveMagic(14) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(14) -- script viet hoa By http://tranhba.com  ®­îc long kh«ng m­a [14] 
end 
if (HaveMagic(10) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(10) -- script viet hoa By http://tranhba.com  kim c­¬ng phôc ma [10]# nhËp m«n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 cÊp nhiÖm vô # thªm 10 cÊp kü n¨ng # 
if (HaveMagic(8) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(8) -- script viet hoa By http://tranhba.com  ThiÕu L©m quyÒn ph¸p [8] 
end 
if (HaveMagic(4) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(4) -- script viet hoa By http://tranhba.com  ThiÕu L©m c«n ph¸p [4]#10 cÊp 
end 
if (HaveMagic(6) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(6) -- script viet hoa By http://tranhba.com  ThiÕu L©m ®ao ph¸p [6]#10 cÊp # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 cÊp nhiÖm vô # thªm 20 cÊp kü n¨ng # 
if (HaveMagic(15) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(15) -- script viet hoa By http://tranhba.com  bÊt ®éng minh v­¬ng [15]#20 cÊp # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 cÊp nhiÖm vô # thªm 30 cÊp kü n¨ng # 
if (HaveMagic(16) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(16) -- script viet hoa By http://tranhba.com  La h¸n trËn [16]#30 cÊp # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 cÊp nhiÖm vô # thªm 40 cÊp kü n¨ng # 
if (HaveMagic(20) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(20) -- script viet hoa By http://tranhba.com  s­ tö hèng [20]#40 cÊp # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 cÊp nhiÖm vô # thªm 50 cÊp kü n¨ng # 
if (HaveMagic(271) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(271) -- script viet hoa By http://tranhba.com  long tr¶o hæ b¾t [271] 
end 
if (HaveMagic(11) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(11) -- script viet hoa By http://tranhba.com  quĞt ngang lôc hîp [11]#50 cÊp # 
end 
if (HaveMagic(19) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(19) -- script viet hoa By http://tranhba.com  ma ha v« l­îng [19]#50 cÊp # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  trë vÒ s­ nhiÖm vô # thªm trÊn ph¸i tuyÖt häc # 
if (HaveMagic(273) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(273) -- script viet hoa By http://tranhba.com  nh­ tíi ngµn l¸ [273] 
end 
if (HaveMagic(21) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(21) -- script viet hoa By http://tranhba.com  DŞch c©n kinh [21]#60 cÊp # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 cÊp nhiÖm vô # thªm 90 cÊp kü n¨ng # 
if (HaveMagic(318) <= 0) then AddMagic(318,20) end -- script viet hoa By http://tranhba.com  §¹t Ma ®é giang [318] 
if (HaveMagic(319) <= 0) then AddMagic(319,20) end -- script viet hoa By http://tranhba.com  hoµnh t¶o thiªn qu©n [319]#90 cÊp # 
if (HaveMagic(321) <= 0) then AddMagic(321,20) end -- script viet hoa By http://tranhba.com  v« t­íng chĞm [321]#90 cÊp # 
if (HaveMagic(709) <= 0) then AddMagic(709,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 120 kü n¨ng 
if (HaveMagic(1055) <= 0) then AddMagic(1055,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1056) <= 0) then AddMagic(1056,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1057) <= 0) then AddMagic(1057,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
AddItem(6,1,2841,1,0,0) 
end 
end 

function add_tm(lvl) -- script viet hoa By http://tranhba.com  c¨n cø nhiÖm vô cÊp bËc thªm t­¬ng øng §­êng m«n kü n¨ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n # gia nhËp cöa kü n¨ng # 
if (HaveMagic(45) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(45) -- script viet hoa By http://tranhba.com  phİch lŞch ®¹n [45 ]# nhËp m«n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 cÊp nhiÖm vô # thªm 10 cÊp kü n¨ng # 
if (HaveMagic(43) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(43) -- script viet hoa By http://tranhba.com  §­êng m«n ¸m khİ [43 ]#10 cÊp # 
end 
if (HaveMagic(347) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(347) -- script viet hoa By http://tranhba.com  ®Şa diÔm háa [347]#10 cÊp # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 cÊp nhiÖm vô # thªm 20 cÊp kü n¨ng # 
if (HaveMagic(303) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(303) -- script viet hoa By http://tranhba.com  gai ®éc cèt [303]#20 cÊp # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 cÊp nhiÖm vô # thªm 30 cÊp kü n¨ng # 
if (HaveMagic(50) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(50) -- script viet hoa By http://tranhba.com  ®uæi t©m tiÕn [50 ]#30 cÊp # 
end 
if (HaveMagic(54) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(54) -- script viet hoa By http://tranhba.com  ®Çy trêi hoa vò [54 ]#30 cÊp # 
end 
if (HaveMagic(47) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(47) -- script viet hoa By http://tranhba.com  ®o¹t hån phiªu [47 ]#30 cÊp # 
end 
if (HaveMagic(343) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(343) -- script viet hoa By http://tranhba.com  xuyªn tim ®©m [343]#30 cÊp # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 cÊp nhiÖm vô # thªm 40 cÊp kü n¨ng # 
if (HaveMagic(345) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(345) -- script viet hoa By http://tranhba.com  hµn b¨ng ®©m [345]#40 cÊp # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 cÊp nhiÖm vô # thªm 50 cÊp kü n¨ng # 
if (HaveMagic(349) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(349) -- script viet hoa By http://tranhba.com  sĞt ®¸nh thuËt [349]#50 cÊp # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  trë vÒ s­ nhiÖm vô # thªm trÊn ph¸i tuyÖt häc # 
if (HaveMagic(249) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(249) -- script viet hoa By http://tranhba.com  TiÓu lı phi ®ao [249]#60 cÊp # 
end 
if (HaveMagic(48) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(48) -- script viet hoa By http://tranhba.com  lßng d¹ [48 ]# trÊn ph¸i # 
end 
if (HaveMagic(58) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(58) -- script viet hoa By http://tranhba.com  thiªn la ®Şa vâng [58 ]#60 cÊp # 
end 
if (HaveMagic(341) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(341) -- script viet hoa By http://tranhba.com  t¸n hoa phiªu [341]#60 cÊp # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 cÊp nhiÖm vô # thªm 90 cÊp kü n¨ng # 
if (HaveMagic(339) <= 0) then AddMagic(339,20) end -- script viet hoa By http://tranhba.com  nhiÕp hån bãng tr¨ng [339]#90 cÊp # 
if (HaveMagic(302) <= 0) then AddMagic(302,20) end -- script viet hoa By http://tranhba.com  m­a sa lª hoa [302]#90 cÊp # 
if (HaveMagic(342) <= 0) then AddMagic(342,20) end -- script viet hoa By http://tranhba.com  cöu cung bay tinh [342]#90 cÊp # 
-- script viet hoa By http://tranhba.com - if (GetTaskTemp(20) == 351) then -- script viet hoa By http://tranhba.com  nÕu nh­ ph¸t hiÖn cã nªn kü n¨ng lµ thªm trë vÒ , kú tha 90 kü n¨ng kh«ng san 
-- script viet hoa By http://tranhba.com - if (HaveMagic(351) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
-- script viet hoa By http://tranhba.com - AddMagic(351) -- script viet hoa By http://tranhba.com  lo¹n hoµn kİch [351]#90 cÊp # 
-- script viet hoa By http://tranhba.com - end 
-- script viet hoa By http://tranhba.com - end 
if (HaveMagic(351) <= 0) then AddMagic(351) end -- script viet hoa By http://tranhba.com 90 nguyÒn rña phô trî kü n¨ng 
if (HaveMagic(710) <= 0) then AddMagic(710,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 120 kü n¨ng 
if (HaveMagic(1069) <= 0) then AddMagic(1069,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1070) <= 0) then AddMagic(1070,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1071) <= 0) then AddMagic(1071,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1110) <= 0) then AddMagic(1110) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
AddItem(6,1,2841,1,0,0) 
end 
end 

function add_wu(lvl) -- script viet hoa By http://tranhba.com  c¨n cø nhiÖm vô cÊp bËc thªm t­¬ng øng n¨m ®éc kü n¨ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n # gia nhËp cöa kü n¨ng # 
if (HaveMagic(63) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(63) -- script viet hoa By http://tranhba.com  ®éc sa ch­ëng [63]# nhËp m«n # 
end 
if (HaveMagic(65) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(65) -- script viet hoa By http://tranhba.com  huyÕt ®ao ®éc giÕt [65]# nhËp m«n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 cÊp nhiÖm vô # thªm 10 cÊp kü n¨ng # 
if (HaveMagic(62) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(62) -- script viet hoa By http://tranhba.com  n¨m ®éc ch­ëng ph¸p [62]#10 cÊp # 
end 
if (HaveMagic(60) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(60) -- script viet hoa By http://tranhba.com  n¨m ®éc ®ao ph¸p [60]#10 cÊp # 
end 
if (HaveMagic(67) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(67) -- script viet hoa By http://tranhba.com  cöu thiªn cuång l«i [67]#10 cÊp # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 cÊp nhiÖm vô # thªm 20 cÊp kü n¨ng # 
if (HaveMagic(70) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(70) -- script viet hoa By http://tranhba.com  xİch diÔm thùc ngµy [70]#20 cÊp # 
end 
if (HaveMagic(66) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(66) -- script viet hoa By http://tranhba.com  t¹p khã kh¨n thuèc tr¶i qua [66]#20 cÊp # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 cÊp nhiÖm vô # thªm 30 cÊp kü n¨ng # 
if (HaveMagic(68) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(68) -- script viet hoa By http://tranhba.com  u minh kh« l©u [68 ]#30 cÊp # 
end 
if (HaveMagic(384) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(384) -- script viet hoa By http://tranhba.com  tr¨m ®éc xuyªn tim [384]#30 cÊp # 
end 
if (HaveMagic(64) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(64) -- script viet hoa By http://tranhba.com  b¨ng lam huyÒn tinh [64 ]#30 cÊp # 
end 
if (HaveMagic(69) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(69) -- script viet hoa By http://tranhba.com  v« h×nh cæ [69]#30 cÊp # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 cÊp nhiÖm vô # thªm 40 cÊp kü n¨ng # 
if (HaveMagic(356) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(356) -- script viet hoa By http://tranhba.com  mÆc quÇn ¸o ph¸ gi¸p [356]#40 cÊp # 
end 
if (HaveMagic(73) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(73) -- script viet hoa By http://tranhba.com  v¹n cæ thùc t©m [73 ]#40 cÊp # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 cÊp nhiÖm vô # thªm 50 cÊp kü n¨ng # 
if (HaveMagic(72) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(72) -- script viet hoa By http://tranhba.com  xuyªn tim gai ®éc [72]#50 cÊp # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  trë vÒ s­ nhiÖm vô # thªm trÊn ph¸i tuyÖt häc # 
if (HaveMagic(71) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(71) -- script viet hoa By http://tranhba.com  thiªn c­¬ng ®Şa s¸t tay [71 ]#60 cÊp # 
end 
if (HaveMagic(75) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(75) -- script viet hoa By http://tranhba.com  n¨m ®éc kú tr¶i qua [75]# trÊn ph¸i # 
end 
if (HaveMagic(74) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(74) -- script viet hoa By http://tranhba.com  chu c¸p thanh minh [74 ]#60 cÊp # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 cÊp nhiÖm vô # thªm 90 cÊp kü n¨ng # 
if (HaveMagic(353) <= 0) then AddMagic(353,20) end -- script viet hoa By http://tranhba.com  ©m phong thùc cèt [353]#90 cÊp # 
if (HaveMagic(355) <= 0) then AddMagic(355,20) end -- script viet hoa By http://tranhba.com  huyÒn ©m chĞm [355]#90 cÊp # 
-- script viet hoa By http://tranhba.com - if (GetTaskTemp(20) == 390) then -- script viet hoa By http://tranhba.com  nÕu nh­ ph¸t hiÖn cã nªn kü n¨ng lµ thªm trë vÒ , kú tha 90 kü n¨ng kh«ng san 
-- script viet hoa By http://tranhba.com - if (HaveMagic(390) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
-- script viet hoa By http://tranhba.com - AddMagic(390) -- script viet hoa By http://tranhba.com  [390]#90 cÊp # 
-- script viet hoa By http://tranhba.com - end 
-- script viet hoa By http://tranhba.com - end 
if (HaveMagic(390) <= 0) then AddMagic(390) end -- script viet hoa By http://tranhba.com 90 nguyÒn rña phô trî kü n¨ng 
if (HaveMagic(711) <= 0) then AddMagic(711,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 120 kü n¨ng 
if (HaveMagic(1066) <= 0) then AddMagic(1066,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1067) <= 0) then AddMagic(1067,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
AddItem(6,1,2841,1,0,0) 
end 
end 

function add_em(lvl) -- script viet hoa By http://tranhba.com  c¨n cø nhiÖm vô cÊp bËc thªm t­¬ng øng Nga Mi kü n¨ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n # gia nhËp cöa kü n¨ng # 
if (HaveMagic(85) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(85) -- script viet hoa By http://tranhba.com  mét l¸ biÕt thu [85]# nhËp m«n # 
end 
if (HaveMagic(80) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(80) -- script viet hoa By http://tranhba.com  tuyÕt bay xuyªn v©n [80]# nhËp m«n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 cÊp nhiÖm vô # thªm 10 cÊp kü n¨ng # 
if (HaveMagic(77) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(77) -- script viet hoa By http://tranhba.com  Nga Mi kiÕm ph¸p [77]#10 cÊp # 
end 
if (HaveMagic(79) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(79) -- script viet hoa By http://tranhba.com  Nga Mi ch­ëng ph¸p [79]#10 cÊp # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 cÊp nhiÖm vô # thªm 20 cÊp kü n¨ng # 
if (HaveMagic(93) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(93) -- script viet hoa By http://tranhba.com  tõ hµng phæ ®é [93]#20 cÊp # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 cÊp nhiÖm vô # thªm 30 cÊp kü n¨ng # 
if (HaveMagic(385) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(385) -- script viet hoa By http://tranhba.com  ®Èy cöa sæ ng¾m th¸ng [385]#30 cÊp # 
end 
if (HaveMagic(82) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(82) -- script viet hoa By http://tranhba.com  tø t­îng cïng thuéc vÒ [82]#30 cÊp # 
end 
if (HaveMagic(89) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(89) -- script viet hoa By http://tranhba.com  méng ®iÖp [89]#30 cÊp # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 cÊp nhiÖm vô # thªm 40 cÊp kü n¨ng # 
if (HaveMagic(86) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(86) -- script viet hoa By http://tranhba.com  n­íc ch¶y [86 ]#40 cÊp # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 cÊp nhiÖm vô # thªm 50 cÊp kü n¨ng # 
if (HaveMagic(92) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(92) -- script viet hoa By http://tranhba.com  phËt t©m tõ h÷u [92]#50 cÊp # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  trë vÒ s­ nhiÖm vô # thªm trÊn ph¸i tuyÖt häc # 
if (HaveMagic(88) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(88) -- script viet hoa By http://tranhba.com  bÊt diÖt kh«ng døt [88]#60 cÊp # 
end 
if (HaveMagic(252) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(252) -- script viet hoa By http://tranhba.com  phËt ph¸p v« biªn [252]# trÊn ph¸i # 
end 
if (HaveMagic(91) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(91) -- script viet hoa By http://tranhba.com  phËt quang chiÕu kh¾p [91]#60 cÊp # 
end 
if (HaveMagic(282) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(282) -- script viet hoa By http://tranhba.com  thanh ©m ph¹m x­íng [282]#60 cÊp # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 cÊp nhiÖm vô # thªm 90 cÊp kü n¨ng # 
if (HaveMagic(328) <= 0) then AddMagic(328,20) end -- script viet hoa By http://tranhba.com  ba nga tÔ tuyÕt [328]#90 cÊp # 
if (HaveMagic(380) <= 0) then AddMagic(380,20) end -- script viet hoa By http://tranhba.com  phong s­¬ng bÓ ¶nh [380]#90 cÊp # 
-- script viet hoa By http://tranhba.com - if (GetTaskTemp(20) == 332) then -- script viet hoa By http://tranhba.com  nÕu nh­ ph¸t hiÖn cã nªn kü n¨ng lµ thªm trë vÒ , kú tha 90 kü n¨ng kh«ng san 
-- script viet hoa By http://tranhba.com - if (HaveMagic(332) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
-- script viet hoa By http://tranhba.com - AddMagic(332) -- script viet hoa By http://tranhba.com  phæ ®é chóng sanh [332]#90 cÊp # 
-- script viet hoa By http://tranhba.com - end 
-- script viet hoa By http://tranhba.com - end 
if (HaveMagic(332) <= 0) then AddMagic(332) end -- script viet hoa By http://tranhba.com 90 nguyÒn rña phô trî kü n¨ng 
if (HaveMagic(712) <= 0) then AddMagic(712,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 120 kü n¨ng 
if (HaveMagic(1061) <= 0) then AddMagic(1061,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1062) <= 0) then AddMagic(1062,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1114) <= 0) then AddMagic(1114,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
AddItem(6,1,2841,1,0,0) 
end 
end 

function add_cy(lvl) -- script viet hoa By http://tranhba.com  c¨n cø nhiÖm vô cÊp bËc thªm t­¬ng øng thóy khãi kü n¨ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n # gia nhËp cöa kü n¨ng # 
if (HaveMagic(99) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(99) -- script viet hoa By http://tranhba.com  phong hoa tuyÕt nguyÖt [99 ]# nhËp m«n # 
end 
if (HaveMagic(102) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(102) -- script viet hoa By http://tranhba.com  giã cuèn tµn tuyÕt [102]# nhËp m«n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 cÊp nhiÖm vô # thªm 10 cÊp kü n¨ng # 
if (HaveMagic(95) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(95) -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  thóy khãi ®ao ph¸p [95 ]#10 cÊp # 
end 
if (HaveMagic(97) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(97) -- script viet hoa By http://tranhba.com  thóy khãi song ®ao [97 ]#10 cÊp # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 cÊp nhiÖm vô # thªm 20 cÊp kü n¨ng # 
if (HaveMagic(269) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(269) -- script viet hoa By http://tranhba.com  b¨ng t©m xinh ®Ñp ¶nh [269]#20 cÊp # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 cÊp nhiÖm vô # thªm 30 cÊp kü n¨ng # 
if (HaveMagic(105) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(105) -- script viet hoa By http://tranhba.com  m­a ®¸nh lª hoa [105]#30 cÊp # 
end 
if (HaveMagic(113) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(113) -- script viet hoa By http://tranhba.com  m©y tr«i t¸n tuyÕt [113]#30 cÊp # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 cÊp nhiÖm vô # thªm 40 cÊp kü n¨ng # 
if (HaveMagic(100) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(100) -- script viet hoa By http://tranhba.com  hé thÓ hµn b¨ng [100]#30 cÊp # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 cÊp nhiÖm vô # thªm 50 cÊp kü n¨ng # 
if (HaveMagic(109) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(109) -- script viet hoa By http://tranhba.com  tuyÕt ¶nh [109]#40 cÊp # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  trë vÒ s­ nhiÖm vô # thªm trÊn ph¸i tuyÖt häc # 
if (HaveMagic(108) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(108) -- script viet hoa By http://tranhba.com  môc d· sao r¬i [108]#60 cÊp # 
end 
if (HaveMagic(114) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(114) -- script viet hoa By http://tranhba.com  b¨ng cèt tuyÕt t©m [114]# trÊn ph¸i # 
end 
if (HaveMagic(111) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(111) -- script viet hoa By http://tranhba.com  bİch sãng biÓn d©ng sinh [111]#60 cÊp # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 cÊp nhiÖm vô # thªm 90 cÊp kü n¨ng # 
if (HaveMagic(336) <= 0) then AddMagic(336,20) end -- script viet hoa By http://tranhba.com  b¨ng tung v« ¶nh [336]#90 cÊp # 
if (HaveMagic(337) <= 0) then AddMagic(337,20) end -- script viet hoa By http://tranhba.com  b¨ng t©m tiªn tö [337]#90 cÊp # 
if (HaveMagic(713) <= 0) then AddMagic(713,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 120 kü n¨ng 
if (HaveMagic(1063) <= 0) then AddMagic(1063,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1065) <= 0) then AddMagic(1065,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
AddItem(6,1,2841,1,0,0) 
end 
end 

function add_tr(lvl) -- script viet hoa By http://tranhba.com  c¨n cø nhiÖm vô cÊp bËc thªm t­¬ng øng ngµy nhÉn kü n¨ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n # gia nhËp cöa kü n¨ng # 
if (HaveMagic(135) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(135) -- script viet hoa By http://tranhba.com  tµn d­¬ng nh­ m¸u [135]# nhËp m«n # 
end 
if (HaveMagic(145) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(145) -- script viet hoa By http://tranhba.com  ®¹n chØ löa ch¸y [145]# nhËp m«n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 cÊp nhiÖm vô # thªm 10 cÊp kü n¨ng # 
if (HaveMagic(132) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(132) -- script viet hoa By http://tranhba.com  ngµy nhÉn m©u ph¸p [132]#10 cÊp # 
end 
if (HaveMagic(131) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(131) -- script viet hoa By http://tranhba.com  ngµy nhÉn ®ao ph¸p [131]#10 cÊp # 
end 
if (HaveMagic(136) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(136) -- script viet hoa By http://tranhba.com  löa ®èt liªn hoa [136]#10 cÊp # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 cÊp nhiÖm vô # thªm 20 cÊp kü n¨ng # 
if (HaveMagic(137) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(137) -- script viet hoa By http://tranhba.com  ¶o ¶nh bay hå [137]#20 cÊp # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 cÊp nhiÖm vô # thªm 30 cÊp kü n¨ng # 
if (HaveMagic(141) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(141) -- script viet hoa By http://tranhba.com  liÖt háa t×nh ngµy [141]#30 cÊp # 
end 
if (HaveMagic(138) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(138) -- script viet hoa By http://tranhba.com  ®Èy s¬n ®iÒn h¶i [138]#30 cÊp # 
end 
if (HaveMagic(140) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(140) -- script viet hoa By http://tranhba.com  bay hång v« tİch [140]#30 cÊp # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 cÊp nhiÖm vô # thªm 40 cÊp kü n¨ng # 
if (HaveMagic(364) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(364) -- script viet hoa By http://tranhba.com  bi t« giã m¸t [364]#40 cÊp # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 cÊp nhiÖm vô # thªm 50 cÊp kü n¨ng # 
if (HaveMagic(143) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(143) -- script viet hoa By http://tranhba.com  lÖ ma ®o¹t hån [143]#50 cÊp # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  trë vÒ s­ nhiÖm vô # thªm trÊn ph¸i tuyÖt häc # 
if (HaveMagic(142) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(142) -- script viet hoa By http://tranhba.com  th©u thiªn ho¸n nhËt [142]#60 cÊp # 
end 
if (HaveMagic(150) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(150) -- script viet hoa By http://tranhba.com  thiªn ma gi¶i thÓ [150]# trÊn ph¸i # 
end 
if (HaveMagic(148) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(148) -- script viet hoa By http://tranhba.com  ma diÔm thÊt s¸t [148]#60 cÊp # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 cÊp nhiÖm vô # thªm 90 cÊp kü n¨ng # 
if (HaveMagic(361) <= 0) then AddMagic(361,20) end -- script viet hoa By http://tranhba.com  v©n long kİch [361]#90 cÊp # 
if (HaveMagic(362) <= 0) then AddMagic(362,20) end -- script viet hoa By http://tranhba.com  Thiªn Ngo¹i L­u Tinh [362]#90 cÊp # 
-- script viet hoa By http://tranhba.com - if (GetTaskTemp(20) == 391) then -- script viet hoa By http://tranhba.com  nÕu nh­ ph¸t hiÖn cã nªn kü n¨ng lµ thªm trë vÒ , kú tha 90 kü n¨ng kh«ng san 
-- script viet hoa By http://tranhba.com - if (HaveMagic(391) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
-- script viet hoa By http://tranhba.com - AddMagic(391) -- script viet hoa By http://tranhba.com  [391]#90 cÊp # 
-- script viet hoa By http://tranhba.com - end 
-- script viet hoa By http://tranhba.com - end 
if (HaveMagic(391) <= 0) then AddMagic(391) end -- script viet hoa By http://tranhba.com 90 nguyÒn rña phô trî kü n¨ng 
if (HaveMagic(715) <= 0) then AddMagic(715,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 120 kü n¨ng 
if (HaveMagic(1075) <= 0) then AddMagic(1075,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1076) <= 0) then AddMagic(1076,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
AddItem(6,1,2841,1,0,0) 
end 
end 

function add_gb(lvl) -- script viet hoa By http://tranhba.com  c¨n cø nhiÖm vô cÊp bËc thªm t­¬ng øng C¸i Bang kü n¨ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n # gia nhËp cöa kü n¨ng # 
if (HaveMagic(122) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(122) -- script viet hoa By http://tranhba.com  gÆp ng­êi ®­a tay [122]# nhËp m«n # 
end 
if (HaveMagic(119) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(119) -- script viet hoa By http://tranhba.com  däc theo cöa bµy b¸t [119]# nhËp m«n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 cÊp nhiÖm vô # thªm 10 cÊp kü n¨ng # 
if (HaveMagic(116) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(116) -- script viet hoa By http://tranhba.com  C¸i Bang ch­ëng ph¸p [116]#10 cÊp # 
end 
if (HaveMagic(115) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(115) -- script viet hoa By http://tranhba.com  C¸i Bang ca tông ph¸p [115]#10 cÊp # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 cÊp nhiÖm vô # thªm 20 cÊp kü n¨ng # 
if (HaveMagic(129) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(129) -- script viet hoa By http://tranhba.com  hãa hiÓm vi di [129]#20 cÊp # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 cÊp nhiÖm vô # thªm 30 cÊp kü n¨ng # 
if (HaveMagic(274) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(274) -- script viet hoa By http://tranhba.com  hµng long ch­ëng [274]#30 cÊp # 
end 
if (HaveMagic(124) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(124) -- script viet hoa By http://tranhba.com  §¶ cÈu trËn [124]#30 cÊp # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 cÊp nhiÖm vô # thªm 40 cÊp kü n¨ng # 
if (HaveMagic(277) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(277) -- script viet hoa By http://tranhba.com  trît kh«ng l­u tay [277]#40 cÊp # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 cÊp nhiÖm vô # thªm 50 cÊp kü n¨ng # 
if (HaveMagic(128) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(128) -- script viet hoa By http://tranhba.com  Kh¸ng long b÷u hèi [128]#50 cÊp # 
end 
if (HaveMagic(125) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(125) -- script viet hoa By http://tranhba.com  ca tông ®¸nh chã d÷ [125]#50 cÊp # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  trë vÒ s­ nhiÖm vô # thªm trÊn ph¸i tuyÖt häc # 
if (HaveMagic(130) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(130) -- script viet hoa By http://tranhba.com  say ®iÖp cuång vò [130]# trÊn ph¸i # 
end 
if (HaveMagic(360) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(360) -- script viet hoa By http://tranhba.com  tiªu dao c«ng [360]#60 cÊp # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 cÊp nhiÖm vô # thªm 90 cÊp kü n¨ng # 
if (HaveMagic(357) <= 0) then AddMagic(357,20) end -- script viet hoa By http://tranhba.com  phi long ë trªn trêi [357]#90 cÊp # 
if (HaveMagic(359) <= 0) then AddMagic(359,20) end -- script viet hoa By http://tranhba.com  thiªn h¹ v« chã [359]#90 cÊp # 
if (HaveMagic(714) <= 0) then AddMagic(714,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 120 kü n¨ng 
if (HaveMagic(1073) <= 0) then AddMagic(1073,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1074) <= 0) then AddMagic(1074,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
AddItem(6,1,2841,1,0,0) 
end 
end 

function add_wd(lvl) -- script viet hoa By http://tranhba.com  c¨n cø nhiÖm vô cÊp bËc thªm t­¬ng øng Vâ §­¬ng kü n¨ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n # gia nhËp cöa kü n¨ng # 
if (HaveMagic(153) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(153) -- script viet hoa By http://tranhba.com  giËn l«i chØ [153]# nhËp m«n # 
end 
if (HaveMagic(155) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(155) -- script viet hoa By http://tranhba.com  biÓn c¶ tr¨ng s¸ng [155]# nhËp m«n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 cÊp nhiÖm vô # thªm 10 cÊp kü n¨ng # 
if (HaveMagic(152) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(152) -- script viet hoa By http://tranhba.com  Vâ §­¬ng quyÒn ph¸p [152]#10 cÊp # 
end 
if (HaveMagic(151) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(151) -- script viet hoa By http://tranhba.com  Vâ §­¬ng kiÕm ph¸p [151]#10 cÊp # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 cÊp nhiÖm vô # thªm 20 cÊp kü n¨ng # 
if (HaveMagic(159) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(159) -- script viet hoa By http://tranhba.com  ThÊt tinh trËn [159]#30 cÊp # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 cÊp nhiÖm vô # thªm 30 cÊp kü n¨ng # 
if (HaveMagic(164) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(164) -- script viet hoa By http://tranhba.com  trãc cïng mµ phôc [164]#30 cÊp # 
end 
if (HaveMagic(158) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(158) -- script viet hoa By http://tranhba.com  kiÕm bay kinh thiªn [158]#30 cÊp # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 cÊp nhiÖm vô # thªm 40 cÊp kü n¨ng # 
if (HaveMagic(160) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(160) -- script viet hoa By http://tranhba.com  Thª V©n Tung [160]#40 cÊp # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 cÊp nhiÖm vô # thªm 50 cÊp kü n¨ng # 
if (HaveMagic(157) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(157) -- script viet hoa By http://tranhba.com  ngåi ng¾m v« ng· [157]#50 cÊp # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  trë vÒ s­ nhiÖm vô # thªm trÊn ph¸i tuyÖt häc # 
if (HaveMagic(165) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(165) -- script viet hoa By http://tranhba.com  v« ng· kh«ng cã kiÕm [165]#60 cÊp # 
end 
if (HaveMagic(166) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(166) -- script viet hoa By http://tranhba.com  Th¸i Cùc thÇn c«ng [166]# trÊn ph¸i # 
end 
if (HaveMagic(267) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(267) -- script viet hoa By http://tranhba.com  ba hoµn bé/vá th¸ng [267]#60 cÊp # 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 cÊp nhiÖm vô # thªm 90 cÊp kü n¨ng # 
if (HaveMagic(365) <= 0) then AddMagic(365,20) end -- script viet hoa By http://tranhba.com  Thiªn §Şa V« Cùc [365]#90 cÊp # 
if (HaveMagic(368) <= 0) then AddMagic(368,20) end -- script viet hoa By http://tranhba.com  ng­êi kiÕm hîp nhÊt [368]#90 cÊp # 
if (HaveMagic(716) <= 0) then AddMagic(716,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 120 kü n¨ng 
if (HaveMagic(1078) <= 0) then AddMagic(1078,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1079) <= 0) then AddMagic(1079,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
AddItem(6,1,2841,1,0,0) 
end 
end 

function add_kl(lvl) -- script viet hoa By http://tranhba.com  c¨n cø nhiÖm vô cÊp bËc thªm t­¬ng øng C«n L«n kü n¨ng 
if (lvl >= 10) then -- script viet hoa By http://tranhba.com  ®· nhËp m«n # gia nhËp cöa kü n¨ng # 
if (HaveMagic(169) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(169) -- script viet hoa By http://tranhba.com  h« phong ph¸p [169]# nhËp m«n # 
end 
if (HaveMagic(179) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(179) -- script viet hoa By http://tranhba.com  cuång sĞt ®¸nh ®Şa [179]# nhËp m«n # 
end 
end 
if (lvl >= 20) then -- script viet hoa By http://tranhba.com  10 cÊp nhiÖm vô # thªm 10 cÊp kü n¨ng # 
if (HaveMagic(167) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(167) -- script viet hoa By http://tranhba.com  C«n L«n ®ao ph¸p [167]#10 cÊp # 
end 
if (HaveMagic(168) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(168) -- script viet hoa By http://tranhba.com  C«n L«n kiÕm ph¸p [168]#10 cÊp # 
end 
if (HaveMagic(392) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(392) -- script viet hoa By http://tranhba.com  d©y d­a tù quyÕt [392]#10 cÊp # 
end 
if (HaveMagic(171) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(171) -- script viet hoa By http://tranhba.com  giã m¸t phï [171]#10 cÊp # 
end 
end 
if (lvl >= 30) then -- script viet hoa By http://tranhba.com  20 cÊp nhiÖm vô # thªm 20 cÊp kü n¨ng # 
if (HaveMagic(174) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(174) -- script viet hoa By http://tranhba.com  ky b¸n phï [174]#20 cÊp # 
end 
end 
if (lvl >= 40) then -- script viet hoa By http://tranhba.com  30 cÊp nhiÖm vô # thªm 30 cÊp kü n¨ng # 
if (HaveMagic(178) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(178) -- script viet hoa By http://tranhba.com  mét khİ ba thanh [178]#30 cÊp # 
end 
if (HaveMagic(172) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(172) -- script viet hoa By http://tranhba.com  tÊn l«i nguyÒn rña [172]#30 cÊp # 
end 
if (HaveMagic(393) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(393) -- script viet hoa By http://tranhba.com  thiÕu hôt ID#30 cÊp # 
end 
if (HaveMagic(173) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(173) -- script viet hoa By http://tranhba.com  ngµy thanh ®Şa träc [173]#30 cÊp # 
end 
end 
if (lvl >= 50) then -- script viet hoa By http://tranhba.com  40 cÊp nhiÖm vô # thªm 40 cÊp kü n¨ng # 
if (HaveMagic(175) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(175) -- script viet hoa By http://tranhba.com  lÊn hµn ng¹o tuyÕt [175]#40 cÊp # 
end 
if (HaveMagic(181) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(181) -- script viet hoa By http://tranhba.com  khİ t©m phï [181]#40 cÊp # 
end 
end 
if (lvl >= 60) then -- script viet hoa By http://tranhba.com  50 cÊp nhiÖm vô # thªm 50 cÊp kü n¨ng # 
if (HaveMagic(176) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(176) -- script viet hoa By http://tranhba.com  cuång phong chît ®iÖn [176]#50 cÊp # 
end 
if (HaveMagic(90) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(90) -- script viet hoa By http://tranhba.com  mª tung ¶o ¶nh [90 ]#50 cÊp # 
end 
end 
if (lvl >= 70) then -- script viet hoa By http://tranhba.com  trë vÒ s­ nhiÖm vô # thªm trÊn ph¸i tuyÖt häc # 
if (HaveMagic(275) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(275) -- script viet hoa By http://tranhba.com  s­¬ng ng¹o C«n L«n [275]# trÊn ph¸i # 
end 
if (HaveMagic(182) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
AddMagic(182) -- script viet hoa By http://tranhba.com  ngò l«i ch¸nh ph¸p [182]#60 cÊp # 
end 
if (HaveMagic(630) == -1) then 
AddMagic(630); -- script viet hoa By http://tranhba.com  thø ba tµi liÖu phiÕn , gia t¨ng C«n L«n kü n¨ng míi " huyÒn thiªn v« cùc " 
end 
end 
if (lvl >= 90) then -- script viet hoa By http://tranhba.com  90 cÊp nhiÖm vô # thªm 90 cÊp kü n¨ng # 
if (HaveMagic(372) <= 0) then AddMagic(372,20) end -- script viet hoa By http://tranhba.com  ng¹o tuyÕt khiÕu phong [372]#90 cÊp # 
if (HaveMagic(375) <= 0) then AddMagic(375,20) end -- script viet hoa By http://tranhba.com  l«i ®éng cöu thiªn [375]#90 cÊp # 
-- script viet hoa By http://tranhba.com - if (GetTaskTemp(20) == 394) then 
-- script viet hoa By http://tranhba.com - if (HaveMagic(394) == -1) then -- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i kh«ng cã kü n¨ng ®İch míi cho kü n¨ng 
-- script viet hoa By http://tranhba.com - AddMagic(394) -- script viet hoa By http://tranhba.com  [394]#90 cÊp # 
-- script viet hoa By http://tranhba.com - end 
-- script viet hoa By http://tranhba.com - end 
if (HaveMagic(394) <= 0) then AddMagic(394) end -- script viet hoa By http://tranhba.com 90 nguyÒn rña phô trî kü n¨ng 
if (HaveMagic(717) <= 0) then AddMagic(717,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 120 kü n¨ng 
if (HaveMagic(1080) <= 0) then AddMagic(1080,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
if (HaveMagic(1081) <= 0) then AddMagic(1081,20) end -- script viet hoa By http://tranhba.com  m«n ph¸i 150 kü n¨ng 
AddItem(6,1,2841,1,0,0) 
end 
end 

function del_all_skill() 
i = HaveMagic(210) -- script viet hoa By http://tranhba.com  khinh c«ng kh¸c thao t¸c 
j = HaveMagic(400) -- script viet hoa By http://tranhba.com  “ c­íp cña ng­êi giµu gióp ng­êi nghÌo khã ” kh¸c thao t¸c 
n = RollbackSkill() -- script viet hoa By http://tranhba.com  thanh trõ kü n¨ng còng trë vÒ tÊt c¶ kü n¨ng ®iÓm # bao gåm khinh c«ng chê ®Æc thï kü n¨ng # 
x = 0 
	if (i ~= -1) then x = x + i end		-- script viet hoa By http://tranhba.com  ÕâÁ½¾äÅĞ¶ÏÊÇÅÅ³ı´ÓÎ´Ñ§¹ıÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼ÖÂµãÊı¼ÆËã´íÎóÇé¿ö
	if (j ~= -1) then x = x + j end
	SetTaskTemp(21,n + GetMagicPoint() - x)			-- script viet hoa By http://tranhba.com  °Ñ¼¼ÄÜµãµ±×ö¿ÕÏĞµãÊı·µ»¹£¬µ«ÏÈ¿Û³ıÇá¹¦µÈ

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  c«ng céng kü n¨ng -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
if (i ~= -1) then AddMagic(210,i) end -- script viet hoa By http://tranhba.com  nÕu nh­ häc qua khinh c«ng lµ thªm trë vÒ nguyªn cã cÊp bËc 
if (j ~= -1) then AddMagic(400,j) end -- script viet hoa By http://tranhba.com  nÕu nh­ häc qua “ c­íp cña ng­êi giµu gióp ng­êi nghÌo khã ” gièng nhau xö lı 
-- script viet hoa By http://tranhba.com  DelMagic(396) 
-- script viet hoa By http://tranhba.com  DelMagic(397) 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  b¹ch tªn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  DelMagic(395) 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  c¸c m«n ph¸i -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
DelMagic(29) -- script viet hoa By http://tranhba.com  Thiªn v­¬ng 
DelMagic(23) 
DelMagic(24) 
DelMagic(26) 
DelMagic(30) 
DelMagic(31) 
DelMagic(32) 
DelMagic(33) 
DelMagic(34) 
DelMagic(35) 
DelMagic(36) 
DelMagic(37) 
DelMagic(38) 
DelMagic(40) 
DelMagic(41) 
DelMagic(42) 
DelMagic(324) 
-- script viet hoa By http://tranhba.com  DelMagic(322) 
-- script viet hoa By http://tranhba.com  DelMagic(323) 
-- script viet hoa By http://tranhba.com  DelMagic(325) 

DelMagic(10) -- script viet hoa By http://tranhba.com  ThiÕu L©m 
DelMagic(3) 
DelMagic(4) 
DelMagic(5) 
DelMagic(6) 
DelMagic(7) 
DelMagic(8) 
DelMagic(9) 
DelMagic(12) 
DelMagic(14) 
DelMagic(13) 
DelMagic(15) 
DelMagic(271) 
DelMagic(16) 
DelMagic(18) 
DelMagic(20) 
DelMagic(11) 
DelMagic(19) 
DelMagic(21) 
DelMagic(273) 
-- script viet hoa By http://tranhba.com  DelMagic(318) 
-- script viet hoa By http://tranhba.com  DelMagic(319) 
-- script viet hoa By http://tranhba.com  DelMagic(321) 

DelMagic(45) -- script viet hoa By http://tranhba.com  §­êng m«n 
DelMagic(43) 
DelMagic(347) 
DelMagic(303) 
DelMagic(44) 
DelMagic(47) 
DelMagic(48) 
DelMagic(50) 
DelMagic(51) 
DelMagic(54) 
DelMagic(343) 
DelMagic(345) 
DelMagic(349) 
DelMagic(55) 
DelMagic(57) 
DelMagic(58) 
DelMagic(249) 
DelMagic(253) 
DelMagic(341) 
-- script viet hoa By http://tranhba.com  DelMagic(339) 
-- script viet hoa By http://tranhba.com  DelMagic(302) 
-- script viet hoa By http://tranhba.com  DelMagic(342) 
if (HaveMagic(351) ~= -1) then 
SetTaskTemp(20,351) 
DelMagic(351) 
end 

DelMagic(63) -- script viet hoa By http://tranhba.com  n¨m ®éc 
DelMagic(60) 
DelMagic(61) 
DelMagic(62) 
DelMagic(64) 
DelMagic(65) 
DelMagic(66) 
DelMagic(67) 
DelMagic(68) 
DelMagic(384) 
DelMagic(69) 
DelMagic(356) 
DelMagic(70) 
DelMagic(72) 
DelMagic(73) 
DelMagic(74) 
DelMagic(76) 
DelMagic(71) 
DelMagic(75) 
-- script viet hoa By http://tranhba.com  DelMagic(353) 
-- script viet hoa By http://tranhba.com  DelMagic(355) 
if (HaveMagic(390) ~= -1) then 
SetTaskTemp(20,390) 
DelMagic(390) 
end 

DelMagic(80) -- script viet hoa By http://tranhba.com  Nga Mi 
DelMagic(101) 
DelMagic(77) 
DelMagic(79) 
DelMagic(385) 
DelMagic(81) 
DelMagic(82) 
DelMagic(83) 
DelMagic(84) 
DelMagic(85) 
DelMagic(86) 
DelMagic(87) 
DelMagic(88) 
DelMagic(89) 
DelMagic(91) 
DelMagic(93) 
DelMagic(252) 
DelMagic(92) 
DelMagic(282) 
-- script viet hoa By http://tranhba.com  DelMagic(328) 
-- script viet hoa By http://tranhba.com  DelMagic(330) 
if (HaveMagic(332) ~= -1) then 
SetTaskTemp(20,332) 
DelMagic(332) 
end 

DelMagic(99) -- script viet hoa By http://tranhba.com  thóy khãi 
DelMagic(95) 
DelMagic(96) 
DelMagic(97) 
DelMagic(100) 
DelMagic(102) 
DelMagic(103) 
DelMagic(269) 
DelMagic(105) 
DelMagic(109) 
DelMagic(270) 
DelMagic(108) 
DelMagic(113) 
DelMagic(111) 
DelMagic(114) 
-- script viet hoa By http://tranhba.com  DelMagic(336) 
-- script viet hoa By http://tranhba.com  DelMagic(337) 

DelMagic(117) -- script viet hoa By http://tranhba.com  C¸i Bang 
DelMagic(115) 
DelMagic(116) 
DelMagic(118) 
DelMagic(119) 
DelMagic(120) 
DelMagic(121) 
DelMagic(122) 
DelMagic(123) 
DelMagic(124) 
DelMagic(126) 
DelMagic(127) 
DelMagic(277) 
DelMagic(274) 
DelMagic(125) 
DelMagic(129) 
DelMagic(130) 
DelMagic(128) 
DelMagic(360) 
-- script viet hoa By http://tranhba.com  DelMagic(357) 
-- script viet hoa By http://tranhba.com  DelMagic(359) 

DelMagic(135) -- script viet hoa By http://tranhba.com  ngµy nhÉn 
DelMagic(131) 
DelMagic(132) 
DelMagic(134) 
DelMagic(136) 
DelMagic(137) 
DelMagic(138) 
DelMagic(139) 
DelMagic(140) 
DelMagic(364) 
DelMagic(141) 
DelMagic(142) 
DelMagic(143) 
DelMagic(145) 
DelMagic(146) 
DelMagic(147) 
DelMagic(148) 
DelMagic(149) 
DelMagic(150) 
DelMagic(254) 
-- script viet hoa By http://tranhba.com  DelMagic(361) 
-- script viet hoa By http://tranhba.com  DelMagic(362) 
if (HaveMagic(391) ~= -1) then 
SetTaskTemp(20,391) 
DelMagic(391) 
end 

DelMagic(153) -- script viet hoa By http://tranhba.com  Vâ §­¬ng 
DelMagic(151) 
DelMagic(152) 
DelMagic(155) 
DelMagic(156) 
DelMagic(157) 
DelMagic(158) 
DelMagic(159) 
DelMagic(160) 
DelMagic(161) 
DelMagic(162) 
DelMagic(164) 
DelMagic(165) 
DelMagic(166) 
DelMagic(267) 
-- script viet hoa By http://tranhba.com  DelMagic(365) 
-- script viet hoa By http://tranhba.com  DelMagic(368) 

DelMagic(169) -- script viet hoa By http://tranhba.com  C«n L«n 
DelMagic(167) 
DelMagic(168) 
DelMagic(392) 
DelMagic(170) 
DelMagic(171) 
DelMagic(393) 
DelMagic(174) 
DelMagic(175) 
DelMagic(177) 
DelMagic(178) 
DelMagic(179) 
DelMagic(180) 
DelMagic(173) 
DelMagic(90) 
DelMagic(181) 
DelMagic(183) 
DelMagic(184) 
DelMagic(172) 
DelMagic(176) 
DelMagic(182) 
DelMagic(275) 
-- script viet hoa By http://tranhba.com  DelMagic(372) 
-- script viet hoa By http://tranhba.com  DelMagic(374) 
if (HaveMagic(394) ~= -1) then 
SetTaskTemp(20,394) 
DelMagic(394) 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - nÆng ®­a tiÒm n¨ng ®iÓm , ®ång thêi tiÕn hµnh kiÓm tra ch÷a trŞ -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function rollback_prop() -- script viet hoa By http://tranhba.com  bëi v× ®¹o cô thªm tiÒm n¨ng ®iÓm tån t¹i kh«ng x¸c ®Şnh tİnh , t¹m thêi hñy bá ch÷a trŞ chøc n¨ng # chØ viÕt ngµy chİ bŞ tra # 
if (GetTask(137) >= 20) then -- script viet hoa By http://tranhba.com  ®æi míi qu¸ kü n¨ng ®İch còng kh«ng n÷a ®æi míi tiÒm n¨ng 
return 1 
else 
base_str = {35,20,25,30,20} -- script viet hoa By http://tranhba.com  ngò hµnh nh©n vËt trêi sanh thuéc tİnh trŞ gi¸ 
base_dex = {25,35,25,20,15} 
base_vit = {25,20,25,30,25} 
base_eng = {15,25,25,20,40} 
		player_series = GetSeries() + 1
-- script viet hoa By http://tranhba.com  AddProp(100) -- script viet hoa By http://tranhba.com  v× tr¸nh khái kh«ng cã ch­a ph©n xøng tiÒm n¨ng ®iÓm cã thÓ cung cÊp ch÷a trŞ cùc ®oan t×nh huèng , t¹m thêi “ m­în ” cho h¾n 100 ®iÓm 
Utask88 = GetTask(88) 
		AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88,1))			-- script viet hoa By http://tranhba.com  ½«ÒÑ·ÖÅäÇ±ÄÜÖØÖÃ£¨task(88)ÊÇÈÎÎñÖĞÖ±½Ó½±ÀøµÄÁ¦Á¿¡¢Éí·¨µÈ£©
		AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88,2))
		AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88,3))
		AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88,4))
-- script viet hoa By http://tranhba.com  AddProp(-100) -- script viet hoa By http://tranhba.com  tr¶ nî 
-- script viet hoa By http://tranhba.com  if (GetTask(81) == 0) then -- script viet hoa By http://tranhba.com  nÕu nh­ dïng qua TÈy Tñy Kinh , tiÒm n¨ng ®iÓm kh«ng cã cè ®Şnh tiªu chuÈn , th× kh«ng ph¸p kiÓm nghiÖm ch÷a trŞ # v× vËy chØ cã kh«ng dïng qu¸ s¸ch ®İch míi kiÓm nghiÖm ch÷a trŞ # 
player_prop = GetProp() -- script viet hoa By http://tranhba.com  kiÓm tra nhµ ch¬i tiÒm n¨ng tæng sè cã hay kh«ng chİnh x¸c . bao hµm nhiÖm vô cïng ®¹o cô thªm ®İch tiÒm n¨ng ®iÓm , kh«ng bao hµm t¹m thêi ®iÓm ®Õm 
			std_prop = (GetLevel()-1)*5 + GetByte(GetTask(86),1)
if (player_prop ~= std_prop) then -- script viet hoa By http://tranhba.com  nÕu nh­ kh«ng ®ång nhÊt dån lµ tu ch¸nh # hñy bá tu ch¸nh , chØ viÕt ngµy chİ # 
-- script viet hoa By http://tranhba.com  AddProp(std_prop - player_prop) 
				x = GetByte(Utask88,1)+GetByte(Utask88,2)+GetByte(Utask88,3)+GetByte(Utask88,4)
WriteLog(date("%H lóc %M ph©n %S gi©y ").."# sè tr­¬ng môc “"..GetAccount().."” ®İch vai trß “"..GetName().."” tiÒm n¨ng ®æi míi dŞ th­êng ghi chĞp # cÊp bËc "..GetLevel().." , hiÖn h÷u tiÒm n¨ng ®iÓm "..player_prop.." , øng cã tiÒm n¨ng ®iÓm "..std_prop.." ®iÓm # nhiÖm vô thªm "..GetByte(GetTask(86),1).." ®iÓm ( ®¹o cô thªm "..GetTask(81).." ®iÓm , nhiÖm vô trùc tiÕp thªm thuéc tİnh céng "..x.." ®iÓm kh«ng bao hµm ë bªn trong )# . ") 
end 
-- script viet hoa By http://tranhba.com  end 
Msg2Player("Ngµi ®İch tiÒm n¨ng ®iÓm ®· nÆng ®­a , xin chó ı lÇn n÷a ®Çu ®iÓm . ") 
end 
end 
