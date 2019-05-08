-- script viet hoa By http://tranhba.com  thÇn bİ th­¬ng nh©n ®èi tho¹i ch©n vèn 
-- script viet hoa By http://tranhba.com  Li_Xin(2004-07-20) 

-- script viet hoa By http://tranhba.com Include("\\script\\global\\systemconfig.lua") -- script viet hoa By http://tranhba.com  ÏµÍ³ÅäÖÃ
IncludeLib("ITEM") 
IncludeLib("SETTING") 

function writeChapManLog(str) 
WriteLog(date("%H%M%S").."# tr­¬ng môc #"..GetAccount().." , vai trß #"..GetName().." , "..str); 
end; 

function writeChapManGoldLog( str, nPaidGold, nPaidSilver, nPaidCoin, nPaidTicket ) 
WriteGoldLog( GetAccount().."("..GetName()..") "..str, -nPaidGold, -nPaidSilver, -nPaidCoin, -nPaidTicket ); 
end; 

function get1() 
str= 
{ 
"<#> thÇn bİ th­¬ng nh©n # ®©y chİnh lµ trong chèn vâ l©m ®ån ®·i ®İch tuyÖt thÕ tr©n phÈm vò khİ ®å phæ liÔu . vò khİ ®å phæ dïng ®Ó ®o¸n t¹o binh khİ , tr¶i qua bİ ph¸p rÌn luyÖn , cã thÓ ®¹t tíi th¨ng cÊp chi hiÖu . ng­¬i cã thÓ dïng thñy tinh tíi trao ®æi , cã høng thó sao ? ", 
"<#> ch¼ng qua lµ xem mét chót /no", 
"<#> l¨ng v­¬ng sóng ®o¸n t¹o tµn thiªn ( sóng )/yes1", 
"<#> huyÒn vò chïy chi chÕ t¹o thuËt ( chïy )/yes2", 
"<#> rång ng©m kiÕm ®o¸n t¹o ®å ( kiÕm )/yes3", 
"<#> Gia C¸t ky qu¸t mËt muèn ( nç )/yes4", 
"<#> liÔu l¸ bÓ phong ®ao # tôy lÊy thiªn ( phi ®ao )/yes5", 
"<#> huyÒn th¸ng ®ao tö kinh b¶o lôc ( ®ao )/yes6", 
"<#> thiªn c¬ c«n ®å phæ ( c«n )/yes7", 
"<#> ¸m khİ tæng phæ # cuèn mét ( phi tiªu )/yes8", 
"<#> uyªn ­¬ng ®ao # ph¸t ra ¸nh s¸ng thiªn ( song ®ao )/yes9" 
}; 
Say(str[1],10,str[2],str[3],str[4],str[5],str[6],str[7],str[8],str[9],str[10],str[11]) 
end; 

function get2() 
str= 
{ 
"<#> thÇn bİ th­¬ng nh©n # ®©y còng lµ ta th©n phã t¾c bªn ngoµi Thiªn S¬n cïng ba miªu c¸nh ®ång hoang vu mua ®­îc ®İch vùc ngo¹i kú tr©n liÔu . vùc ngo¹i kú tr©n dïng cho ®o¸n t¹o y phôc # c¸i mò , tÊt c¶ diÖu dông . cã høng thó sao ? ", 
"<#> b¨ng tµm v« cùc ti ( t¨ng lªn cÊp bËc )/buy_silk", 
"<#> nam minh chi tinh ( rít xuèng cÊp bËc )/buy_stone", 
"<#> ch¼ng qua lµ xem mét chót /no", 
}; 
Say(str[1],3,str[2],str[3],str[4]) 
end; 

function yes1() 
-- script viet hoa By http://tranhba.com  ViÖt Nam b¶n bæn gi¸ c¶ thay ®æi # 
Say("ThÇn bİ th­¬ng nh©n # ng­¬i nhÊt ®Şnh ph¶i ®æi <color=red> l¨ng v­¬ng sóng ®o¸n t¹o tµn thiªn <color> sao ? l¨ng v­¬ng sóng ®o¸n t¹o tµn thiªn cÇn 1 viªn <color=red> tö thñy tinh <color>#<color=red>2 viªn n­íc biÕc tinh <color> cïng <color=red>1 viªn lan thñy tinh <color> trao ®æi . ",2,"X¸c ®Şnh /sure1","Hñy bá /no") 
end; 

function sure1() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","ThÇn bİ th­¬ng nh©n # tèt , nhËn ®­îc thñy tinh liÔu . ®©y lµ ng­¬i ®İch ®å phæ , ng­¬i xem mét chót , b¶o ®¶m cã thÓ t¨ng lªn vò khİ cña ng­¬i cÊp bËc . ") 
DelItemEx(238) 
DelItemEx(239) 
-- script viet hoa By http://tranhba.com DelItemEx(239) 
-- script viet hoa By http://tranhba.com DelItemEx(239) 
DelItemEx(240) 
-- script viet hoa By http://tranhba.com DelItemEx(240) 
AddEventItem(406) 
writeChapManLog("Ng­¬i lÊy ®­îc l¨ng v­¬ng sóng ®o¸n t¹o tµn thiªn . ") 
Msg2Player("Ng­¬i lÊy ®­îc l¨ng v­¬ng sóng ®o¸n t¹o tµn thiªn . ") 
else 
Talk(1,"","ThÇn bİ th­¬ng nh©n # l¨ng v­¬ng sóng ®o¸n t¹o tµn thiªn cÇn 1 viªn tö thñy tinh #1 viªn n­íc biÕc tinh cïng 1 viªn lan thñy tinh trao ®æi , ng­¬i thñy tinh gièng nh­ kh«ng ®ñ ®©y #") 
end 
end; 

function yes2() 
Say("ThÇn bİ th­¬ng nh©n # ng­¬i nhÊt ®Şnh ph¶i ®æi <color=red> huyÒn vò chïy chi chÕ t¹o thuËt <color> sao ? huyÒn vò chïy chi chÕ t¹o thuËt cÇn 1 viªn <color=red> tö thñy tinh <color>#1 viªn <color=red> n­íc biÕc tinh <color> cïng 1 viªn <color=red> lan thñy tinh <color> trao ®æi . ",2,"X¸c ®Şnh /sure2","Hñy bá /no") 
end; 

function sure2() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","ThÇn bİ th­¬ng nh©n # tèt , nhËn ®­îc thñy tinh liÔu . ®©y lµ ng­¬i ®İch ®å phæ , ng­¬i xem mét chót , b¶o ®¶m cã thÓ t¨ng lªn vò khİ cña ng­¬i cÊp bËc . ") 
DelItemEx(238) 
-- script viet hoa By http://tranhba.com DelItemEx(238) 
DelItemEx(239) 
-- script viet hoa By http://tranhba.com DelItemEx(239) 
DelItemEx(240) 
-- script viet hoa By http://tranhba.com DelItemEx(240) 
AddEventItem(407) 
writeChapManLog("Ng­¬i lÊy ®­îc huyÒn vò chïy chi chÕ t¹o thuËt . ") 
Msg2Player("Ng­¬i lÊy ®­îc huyÒn vò chïy chi chÕ t¹o thuËt . ") 
else 
Talk(1,"","ThÇn bİ th­¬ng nh©n # huyÒn vò chïy chi chÕ t¹o thuËt cÇn 1 viªn tö thñy tinh #1 viªn n­íc biÕc tinh cïng 1 viªn lan thñy tinh trao ®æi , ng­¬i thñy tinh gièng nh­ kh«ng ®ñ ®©y #") 
end 
end; 

function yes3() 
Say("ThÇn bİ th­¬ng nh©n # ng­¬i nhÊt ®Şnh ph¶i ®æi <color=red> rång ng©m kiÕm ®o¸n t¹o ®å <color> sao ? rång ng©m kiÕm ®o¸n t¹o ®å cÇn 1 viªn <color=red> tö thñy tinh <color>#1 viªn <color=red> n­íc biÕc tinh <color> cïng 1 viªn <color=red> lan thñy tinh <color> trao ®æi . ",2,"X¸c ®Şnh /sure3","Hñy bá /no") 
end; 

function sure3() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","ThÇn bİ th­¬ng nh©n # tèt , nhËn ®­îc thñy tinh liÔu . ®©y lµ ng­¬i ®İch ®å phæ , ng­¬i xem mét chót , b¶o ®¶m cã thÓ t¨ng lªn vò khİ cña ng­¬i cÊp bËc . ") 
DelItemEx(238) 
-- script viet hoa By http://tranhba.com DelItemEx(238) 
-- script viet hoa By http://tranhba.com DelItemEx(238) 
DelItemEx(239) 
DelItemEx(240) 
-- script viet hoa By http://tranhba.com DelItemEx(240) 
AddEventItem(408) 
writeChapManLog("Ng­¬i lÊy ®­îc rång ng©m kiÕm ®o¸n t¹o ®å . ") 
Msg2Player("Ng­¬i lÊy ®­îc rång ng©m kiÕm ®o¸n t¹o ®å . ") 
else 
Talk(1,"","ThÇn bİ th­¬ng nh©n # rång ng©m kiÕm ®o¸n t¹o ®å cÇn 1 viªn tö thñy tinh #1 viªn n­íc biÕc tinh cïng 1 viªn lan thñy tinh trao ®æi , ng­¬i thñy tinh gièng nh­ kh«ng ®ñ ®©y #") 
end 
end; 

function yes4() 
Say("ThÇn bİ th­¬ng nh©n # ng­¬i nhÊt ®Şnh ph¶i ®æi <color=red> Gia C¸t ky qu¸t mËt muèn <color> sao ? Gia C¸t ky qu¸t mËt muèn cÇn 1 viªn <color=red> tö thñy tinh <color> cïng 1 viªn <color=red> n­íc biÕc tinh <color> cïng 1 viªn <color=red> lan thñy tinh <color> trao ®æi . ",2,"X¸c ®Şnh /sure4","Hñy bá /no") 
end; 

function sure4() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","ThÇn bİ th­¬ng nh©n # tèt , nhËn ®­îc thñy tinh liÔu . ®©y lµ ng­¬i ®İch ®å phæ , ng­¬i xem mét chót , b¶o ®¶m cã thÓ t¨ng lªn vò khİ cña ng­¬i cÊp bËc . ") 
DelItemEx(238) 
DelItemEx(239) 
-- script viet hoa By http://tranhba.com DelItemEx(239) 
DelItemEx(240) 
-- script viet hoa By http://tranhba.com DelItemEx(240) 
AddEventItem(409) 
writeChapManLog("Ng­¬i lÊy ®­îc Gia C¸t ky qu¸t mËt muèn . ") 
Msg2Player("Ng­¬i lÊy ®­îc Gia C¸t ky qu¸t mËt muèn . ") 
else 
Talk(1,"","ThÇn bİ th­¬ng nh©n # Gia C¸t ky qu¸t mËt muèn cÇn 1 viªn tö thñy tinh cïng 1 viªn n­íc biÕc tinh cïng 1 viªn lam thñy tinh trao ®æi , ng­¬i thñy tinh gièng nh­ kh«ng ®ñ ®©y #") 
end 
end; 

function yes5() 
Say("ThÇn bİ th­¬ng nh©n # ng­¬i nhÊt ®Şnh ph¶i ®æi <color=red> liÔu l¸ bÓ phong ®ao # tôy lÊy thiªn <color> sao ? liÔu l¸ bÓ phong ®ao # tôy lÊy thiªn cÇn 1 viªn <color=red> tö thñy tinh <color> cïng 1 viªn <color=red> n­íc biÕc tinh <color> cïng 1 viªn <color=red> lan thñy tinh <color> trao ®æi . ",2,"X¸c ®Şnh /sure5","Hñy bá /no") 
end; 

function sure5() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","ThÇn bİ th­¬ng nh©n # tèt , nhËn ®­îc thñy tinh liÔu . ®©y lµ ng­¬i ®İch ®å phæ , ng­¬i xem mét chót , b¶o ®¶m cã thÓ t¨ng lªn vò khİ cña ng­¬i cÊp bËc . ") 
DelItemEx(238) 
-- script viet hoa By http://tranhba.com DelItemEx(238) 
DelItemEx(239) 
DelItemEx(240) 
AddEventItem(410) 
writeChapManLog("Ng­¬i lÊy ®­îc liÔu l¸ bÓ phong ®ao # tôy lÊy thiªn . ") 
Msg2Player("Ng­¬i lÊy ®­îc liÔu l¸ bÓ phong ®ao # tôy lÊy thiªn . ") 
else 
Talk(1,"","ThÇn bİ th­¬ng nh©n # liÔu l¸ bÓ phong ®ao # tôy lÊy thiªn cÇn 1 viªn tö thñy tinh #1 viªn n­íc biÕc tinh cïng 1 viªn lan thñy tinh trao ®æi , ng­¬i thñy tinh gièng nh­ kh«ng ®ñ ®©y #") 
end 
end; 

function yes6() 
Say("ThÇn bİ th­¬ng nh©n # ng­¬i nhÊt ®Şnh ph¶i ®æi <color=red> huyÒn th¸ng ®ao tö kinh b¶o lôc <color> sao ? huyÒn th¸ng ®ao tö kinh b¶o lôc cÇn 1 viªn <color=red> tö thñy tinh <color> cïng 1 viªn <color=red> n­íc biÕc tinh <color> cïng 1 viªn <color=red> lan thñy tinh <color> trao ®æi . ",2,"X¸c ®Şnh /sure6","Hñy bá /no") 
end; 

function sure6() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","ThÇn bİ th­¬ng nh©n # tèt , nhËn ®­îc thñy tinh liÔu . ®©y lµ ng­¬i ®İch ®å phæ , ng­¬i xem mét chót , b¶o ®¶m cã thÓ t¨ng lªn vò khİ cña ng­¬i cÊp bËc . ") 
DelItemEx(238) 
-- script viet hoa By http://tranhba.com DelItemEx(238) 
DelItemEx(239) 
-- script viet hoa By http://tranhba.com DelItemEx(239) 
DelItemEx(240) 
AddEventItem(411) 
writeChapManLog("Ng­¬i lÊy ®­îc huyÒn th¸ng ®ao tö kinh b¶o lôc . ") 
Msg2Player("Ng­¬i lÊy ®­îc huyÒn th¸ng ®ao tö kinh b¶o lôc . ") 
else 
Talk(1,"","ThÇn bİ th­¬ng nh©n # huyÒn th¸ng ®ao tö kinh b¶o lôc cÇn 1 viªn tö thñy tinh cïng 1 viªn n­íc biÕc tinh cïng 1 viªn lan thñy tinh trao ®æi , ng­¬i thñy tinh gièng nh­ kh«ng ®ñ ®©y #") 
end 
end; 

function yes7() 
Say("ThÇn bİ th­¬ng nh©n # ng­¬i nhÊt ®Şnh ph¶i ®æi <color=red> thiªn c¬ c«n ®å phæ <color> sao ? thiªn c¬ c«n ®å phæ cÇn 1 viªn <color=red> tö thñy tinh <color>#1 viªn <color=red> n­íc biÕc tinh <color> cïng 1 viªn <color=red> lan thñy tinh <color> trao ®æi . ",2,"X¸c ®Şnh /sure7","Hñy bá /no") 
end; 

function sure7() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","ThÇn bİ th­¬ng nh©n # tèt , nhËn ®­îc thñy tinh liÔu . ®©y lµ ng­¬i ®İch ®å phæ , ng­¬i xem mét chót , b¶o ®¶m cã thÓ t¨ng lªn vò khİ cña ng­¬i cÊp bËc . ") 
DelItemEx(238) 
DelItemEx(239) 
DelItemEx(240) 
AddEventItem(412) 
writeChapManLog("Ng­¬i lÊy ®­îc thiªn c¬ c«n ®å phæ . ") 
Msg2Player("Ng­¬i lÊy ®­îc thiªn c¬ c«n ®å phæ . ") 
else 
Talk(1,"","ThÇn bİ th­¬ng nh©n # thiªn c¬ c«n ®å phæ cÇn 1 viªn tö thñy tinh #1 viªn n­íc biÕc tinh cïng 1 viªn lan thñy tinh trao ®æi , ng­¬i thñy tinh gièng nh­ kh«ng ®ñ ®©y #") 
end 
end; 

function yes8() 
Say("ThÇn bİ th­¬ng nh©n # ng­¬i nhÊt ®Şnh ph¶i ®æi <color=red> ¸m khİ tæng phæ # cuèn mét <color> sao ? ¸m khİ tæng phæ # cuèn mét cÇn 2 viªn <color=red> tö thñy tinh <color> trao ®æi . ",2,"X¸c ®Şnh /sure8","Hñy bá /no") 
end; 

function sure8() 
if ((GetItemCountEx(239)>=2)) then 
Talk(1,"","ThÇn bİ th­¬ng nh©n # tèt , nhËn ®­îc thñy tinh liÔu . ®©y lµ ng­¬i ®İch ®å phæ , ng­¬i xem mét chót , b¶o ®¶m cã thÓ t¨ng lªn vò khİ cña ng­¬i cÊp bËc . ") 
DelItemEx(239) 
DelItemEx(239) 
AddEventItem(413) 
writeChapManLog("Ng­¬i lÊy ®­îc ¸m khİ tæng phæ # cuèn mét . ") 
Msg2Player("Ng­¬i lÊy ®­îc ¸m khİ tæng phæ # cuèn mét . ") 
else 
Talk(1,"","ThÇn bİ th­¬ng nh©n # ¸m khİ tæng phæ # cuèn mét cÇn 2 viªn tö thñy tinh trao ®æi , ng­¬i thñy tinh gièng nh­ kh«ng ®ñ ®©y #") 
end 
end; 

function yes9() 
Say("ThÇn bİ th­¬ng nh©n # ng­¬i nhÊt ®Şnh ph¶i ®æi <color=red> uyªn ­¬ng ®ao # ph¸t ra ¸nh s¸ng thiªn <color> sao ? uyªn ­¬ng ®ao # ph¸t ra ¸nh s¸ng thiªn cÇn 1 viªn <color=red> tö thñy tinh <color> trao ®æi . ",2,"X¸c ®Şnh /sure9","Hñy bá /no") 
end; 

function sure9() 
if ((GetItemCountEx(239)>=1)) then 
Talk(1,"","ThÇn bİ th­¬ng nh©n # tèt , nhËn ®­îc thñy tinh liÔu . ®©y lµ ng­¬i ®İch ®å phæ , ng­¬i xem mét chót , b¶o ®¶m cã thÓ t¨ng lªn vò khİ cña ng­¬i cÊp bËc . ") 
DelItemEx(239) 
AddEventItem(414) 
writeChapManLog("Ng­¬i lÊy ®­îc uyªn ­¬ng ®ao # ph¸t ra ¸nh s¸ng thiªn . ") 
Msg2Player("Ng­¬i lÊy ®­îc uyªn ­¬ng ®ao # ph¸t ra ¸nh s¸ng thiªn . ") 
else 
Talk(1,"","ThÇn bİ th­¬ng nh©n # uyªn ­¬ng ®ao # ph¸t ra ¸nh s¸ng thiªn cÇn 1 viªn tö thñy tinh trao ®æi , ng­¬i thñy tinh gièng nh­ kh«ng ®ñ ®©y #") 
end 
end; 

function buy_silk() 
str= 
{ 
"<#> thÇn bİ th­¬ng nh©n # ng­¬i nhÊt ®Şnh ph¶i mua <color=red> b¨ng tµm v« cùc ti <color> sao ? cÇn 1 c¸ <color=red> kim nguyªn b¶o <color> , hoÆc lµ 1 tê <color=red> ng©n phiÕu <color> míi cã thÓ mua nga . ", 
"<#> dïng kim nguyªn b¶o mua /sure10", 
"<#> hñy bá /no", 
}; 
Say(str[1],2,str[2],str[3]) 
end; 

function sure10() 
if (CalcEquiproomItemCount(4, 417, 1, 1)>=40) then 
Talk(1,"","ThÇn bİ th­¬ng nh©n # tèt , nhËn ®­îc kim nguyªn b¶o . ®©y lµ ng­¬i ®İch <color=red> b¨ng tµm v« cùc ti <color> , ng­¬i xem mét chót , b¶o ®¶m cã thÓ t¨ng lªn y phôc cña ng­¬i # c¸i mò cÊp bËc . ") 
ConsumeEquiproomItem(40, 4, 417, 1, 1) 
AddEventItem(415) 
UseSilver(1, 2, 2); -- script viet hoa By http://tranhba.com  kim nguyªn b¶o ®æi v× ®ång tiÒn ®İch tiªu hao thèng kª ( trùc tiÕp tiªu hao nguyªn b¶o ng©n phiÕu , cïng ®ång tiÒn ®æi chê cïng xö lı ) 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 
-- script viet hoa By http://tranhba.com  writeChapManLog("Ng­¬i lÊy ®­îc b¨ng tµm v« cùc ti . ") 
writeChapManGoldLog("Tèn hao 1 c¸ kim nguyªn b¶o , lÊy ®­îc b¨ng tµm v« cùc ti ", 1, 0, 0, 0); 
Msg2Player("Ng­¬i lÊy ®­îc b¨ng tµm v« cùc ti . ") 
else 
Talk(1,"","ThÇn bİ th­¬ng nh©n # b¨ng tµm v« cùc ti cÇn 1 c¸ kim nguyªn b¶o míi cã thÓ mua , ng­¬i kim nguyªn b¶o gièng nh­ kh«ng ®ñ ®©y #") 
end 
end; 

function buy_stone() 
str= 
{ 
"<#> thÇn bİ th­¬ng nh©n # ng­¬i nhÊt ®Şnh ph¶i mua <color=red> nam minh chi tinh <color> sao ? cÇn 1 c¸ <color=red> kim nguyªn b¶o <color> , hoÆc lµ 1 tê <color=red> ng©n phiÕu <color> míi cã thÓ mua nga . ", 
"<#> dïng kim nguyªn b¶o mua /sure11", 
"<#> hñy bá /no", 
}; 
Say(str[1],2,str[2],str[3]) 
end; 

function sure11() 
if (CalcEquiproomItemCount(4, 417, 1, 1)>=40) then 
Talk(1,"","ThÇn bİ th­¬ng nh©n # tèt , nhËn ®­îc kim nguyªn b¶o . ®©y lµ ng­¬i ®İch <color=red> nam minh chi tinh <color> , ng­¬i xem mét chót , b¶o ®¶m cã thÓ rít xuèng y phôc cña ng­¬i # c¸i mò cÊp bËc . ") 
ConsumeEquiproomItem(40, 4, 417, 1, 1) 
AddEventItem(416) 
UseSilver(1, 2, 2); -- script viet hoa By http://tranhba.com  kim nguyªn b¶o ®æi v× ®ång tiÒn ®İch tiªu hao thèng kª ( trùc tiÕp tiªu hao nguyªn b¶o ng©n phiÕu , cïng ®ång tiÒn ®æi chê cïng xö lı ) 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 

-- script viet hoa By http://tranhba.com  writeChapManLog("Ng­¬i lÊy ®­îc nam minh chi tinh . ") 
writeChapManGoldLog("Tèn hao 1 c¸ kim nguyªn b¶o , lÊy ®­îc nam minh chi tinh ", 1, 0, 0, 0); 
Msg2Player("Ng­¬i lÊy ®­îc nam minh chi tinh . ") 
else 
Talk(1,"","ThÇn bİ th­¬ng nh©n # nam minh chi tinh cÇn 1 c¸ kim nguyªn b¶o míi cã thÓ mua , ng­¬i kim nguyªn b¶o gièng nh­ kh«ng ®ñ ®©y #") 
end 
end; 


function deal_brokenequip() 
if (ST_CheckLockState() == 1) then 
Say("ThÇn bİ th­¬ng nh©n # ph¶i xö lı <color=red>< h­ h¹i ®İch trang bŞ ><color> , tu tr­íc gi¶i táa tr÷ vËt r­¬ng . ng­¬i tr÷ vËt r­¬ng xö vu <color=red> ®· phong táa <color> tr¹ng th¸i # xin/mêi tr­íc gi¶i táa #", 0) 
return 
end 
Say("ThÇn bİ th­¬ng nh©n # ng­¬i cã <color=red>< h­ h¹i ®İch trang bŞ ><color> ? muèn xö lı nh­ thÕ nµo ®©y ? ", 2,"Ta muèn dïng ch÷a trŞ qu¸ng th¹ch ®em nã phôc håi nh­ cò /restore_brokenequip","Ta kh«ng cÇn , mêi/xin ng­¬i ®em nã thu vÒ ®i /throw_brokenequip") 
end 

function check_brokenequip(nCount, szDealFunc) 
if (nCount <= 0) then 
return 0 
end 

if (nCount > 1) then 
Say("ThÇn bİ th­¬ng nh©n # mét lÇn chØ cã thÓ xö lı mét mãn <color=red>< h­ h¹i ®İch trang bŞ ><color> nga ", 2,"Nguyªn lai lµ ®Ó sai lÇm råi , ta nÆng h¬n ®Ó mét lÇn /"..szDealFunc,"Ta n÷a kiÓm tra xem mét chót /no") 
return 0 
end 

local nItemIdx = GetGiveItemUnit(1); 
itemgenre, detailtype, parttype = GetItemProp(nItemIdx) 
if (itemgenre ~= 7) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ h­ h¹i ®İch trang bŞ 
Say("ThÇn bİ th­¬ng nh©n # ng­¬i bá vµo tíi kh«ng ph¶i lµ <color=red>< h­ h¹i ®İch trang bŞ ><color> , xin/mêi cÈn thËn kiÓm tra mét c¸i ", 2,"Nguyªn lai lµ ®Ó sai lÇm råi , ta nÆng h¬n ®Ó mét lÇn /"..szDealFunc,"Ta n÷a kiÓm tra xem mét chót /no") 
return 0 
end 

return nItemIdx 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  ” h­ h¹i ®İch trang bŞ “ vøt 
function throw_brokenequip() 
GiveItemUI( "< h­ h¹i ®İch trang bŞ > thu vÒ giíi mÆt ","Xin/mêi ®em muèn bŞ thu vÒ ®İch < h­ h¹i ®İch trang bŞ > th¶ vµo ®Æt ë phİa d­íi v« İch c¸ch trong . ", "on_throw_be", "no" ); 
end 

function on_throw_be(nCount) 
local nItemIdx = check_brokenequip(nCount, "throw_brokenequip") 
if (nItemIdx == 0) then 
return 
end 

local szItemName = GetItemName(nItemIdx) 
Say("ThÇn bİ th­¬ng nh©n #<color=red>< h­ h¹i ®İch trang bŞ >"..szItemName.."<color> mét khi bŞ thu vÒ , sÏ biÕn mÊt , ng­¬i nhÊt ®Şnh ph¶i ®em nã vøt sao ? ", 2,"Ta x¸c ®Şnh kh«ng cÇn , xin/mêi thu vÒ ®i /#throw_be_sure("..nItemIdx..")","Ta suy nghÜ mét chót n÷a /no") 
end 

function throw_be_sure(nItemIdx) 
local szItemName = GetItemName(nItemIdx) 
RemoveItemByIndex(nItemIdx) 
Msg2Player("< h­ h¹i ®İch trang bŞ >"..szItemName.." ®· bŞ thu vÒ "); 
writeChapManLog("[Remove]: RestoreBrokenEquip Remove: "..szItemName); 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  ” h­ h¹i ®İch trang bŞ “ kh«i phôc 
function restore_brokenequip() 
GiveItemUI( "< h­ h¹i ®İch trang bŞ > phôc håi nh­ cò giíi mÆt ","Xin/mêi ®em < h­ h¹i ®İch trang bŞ > ®Æt ë phİa d­íi v« İch c¸ch trong . tiªu hao ch÷a trŞ qu¸ng th¹ch ®Õm # b×nh th­êng trang bŞ cÇn 1 c¸ , mµu tİm trang bŞ cÇn 2 c¸ , hoµng kim trang bŞ cÇn 5 c¸ . ®Æc biÖt chó ı # tiÕn hµnh phôc håi nh­ cò tr­íc , xin/mêi kiÓm tra tói ®eo l­ng cã hay kh«ng cã ®Çy ®ñ kh«ng gian . ", "on_restore_be", "no" ); 
end 

function on_restore_be(nCount) 
local nItemIdx = check_brokenequip(nCount, "restore_brokenequip") 
if (nItemIdx == 0) then 
return 
end 

local szItemName = GetItemName(nItemIdx) 
local nQuality = GetItemQuality(nItemIdx) 
local nCoinCount = CalcEquiproomItemCount(6,1,2163,1) 
local nNeedCoin = 0; 

if (nQuality == 0) then 
nNeedCoin = 1; 
elseif (nQuality == 1) then -- script viet hoa By http://tranhba.com  hoµng kim trang bŞ 
nNeedCoin = 5; 
elseif (nQuality == 2) then -- script viet hoa By http://tranhba.com  mµu tİm trang bŞ 
nNeedCoin = 2; 
elseif (nQuality == 4) then -- script viet hoa By http://tranhba.com  b¹ch kim trang bŞ 
nNeedCoin = 10; 
end 

if (nNeedCoin <= 0) then 
Say("ThÇn bİ th­¬ng nh©n # c¸i nµy lµ c¸i g× trang bŞ , ta sao kh«ng quen biÕt ? xin/mêi cïng kh¸ch phôc liªn l¹c . ", 1,"Nga /no") 
writeChapManLog("[Error]: RestoreBrokenEquip Fail. ItemQuality:"..nQuality); 
return 
end 

if (nCoinCount < nNeedCoin) then 
Say("ThÇn bİ th­¬ng nh©n # muèn phôc håi nh­ cò <color=red>< h­ h¹i ®İch trang bŞ >"..szItemName.."<color> , cÇn "..nNeedCoin.." c¸ ch÷a trŞ qu¸ng th¹ch . ng­¬i mang ®İch ch÷a trŞ qu¸ng th¹ch kh«ng ®ñ , xin/mêi l¹i ®i lÊy mét İt ®i ", 1,"HiÓu , ta ®i tr­íc lÊy ch÷a trŞ qu¸ng th¹ch liÔu /no") 
return 
end 

if (ConsumeEquiproomItem(nNeedCoin, 6, 1, 2163, -1) == 1) then 
if (ITEM_BrokenEquip2Normal(nItemIdx) == 1) then 
SetCurDurability(nItemIdx, GetMaxDurability(nItemIdx)) -- script viet hoa By http://tranhba.com  n¹i l©u ®é kh«i phôc v× lín nhÊt n¹i l©u ®é 
Msg2Player("Tiªu hao "..nNeedCoin.." c¸ ch÷a trŞ qu¸ng th¹ch , < h­ h¹i ®İch trang bŞ >"..szItemName.." phôc håi nh­ cò thµnh c«ng , xin/mêi kiÓm tra tói ®eo l­ng "); 
writeChapManGoldLog("[Succeed]: RestoreBrokenEquip Ok: "..szItemName, 0, 0, nNeedCoin, 0) 
-- script viet hoa By http://tranhba.com  Fix ch chËm n#g s tøc # - Created by AnhHH - 20110704 
KickOutSelf() 
else 
Msg2Player("< h­ h¹i ®İch trang bŞ >"..szItemName.." phôc håi nh­ cò thÊt b¹i , xin/mêi cïng kh¸ch phôc liªn l¹c "); 
Say("ThÇn bİ th­¬ng nh©n #< h­ h¹i ®İch trang bŞ >"..szItemName.." phôc håi nh­ cò thÊt b¹i , xin/mêi cïng kh¸ch phôc liªn l¹c . ", 1,"Tèt /no") 
writeChapManGoldLog("[Error]: RestoreBrokenEquip Fail: "..szItemName, 0, 0, nNeedCoin, 0) 
end 
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function no() 
end 
