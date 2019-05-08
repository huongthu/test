-- script viet hoa By http://tranhba.com  ReputeHead.lua 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-08-23) nhiÖm vô danh väng t­¬ng quan c«ng cô 

function ReturnRepute(default_repute,max_level,reduce_rate) -- script viet hoa By http://tranhba.com  tiÕp thu tiªu chuÈn danh väng t­ëng th­ëng cïng nhiÖm vô cÊp bËc , sau ®ã c¨n cø nhµ ch¬i thùc tÕ cÊp bËc quyÕt ®Şnh øng t­ëng th­ëng bao nhiªu danh väng 
player_level = GetLevel() 
if (GetLevel() <= max_level) then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i cÊp bËc kh«ng v­ît qua nhiÖm vô tiªu chuÈn cÊp bËc 10 cÊp , lµ cã thÓ ®¹t ®­îc b×nh th­êng danh väng t­ëng th­ëng 
player_repute = default_repute 
else -- script viet hoa By http://tranhba.com  nÕu kh«ng ë 10 cÊp trë lªn mçi v­ît qua cÊp mét gi¶m 3% danh väng t­ëng th­ëng 
player_repute = floor(default_repute * (1 - (player_level - max_level) * reduce_rate / 100)) 
if (player_repute < 1) then -- script viet hoa By http://tranhba.com  nÕu nh­ danh väng t­ëng th­ëng İt h¬n 1 , lµ t­ëng th­ëng 1 ®iÓm danh väng 
player_repute = 1 
end 
end 
return player_repute -- script viet hoa By http://tranhba.com  trë vÒ øng ph¶i danh väng t­ëng th­ëng 
end 

function GetLevelRepute(i) -- script viet hoa By http://tranhba.com  trë vÒ mçi nhÊt ®¼ng cÊp cÇn danh väng 
Repute_level = {0,8,30,75,150,240,450,750,1200,2250,3600} -- script viet hoa By http://tranhba.com  mçi nhÊt ®¼ng cÊp danh väng ®Şnh nghÜa # chó ı ®æi míi # 
if (i <= 0) then 
return 0 
else 
		return Repute_level[i + 1]
end 
end 

function GetReputeLevel(i) -- script viet hoa By http://tranhba.com  trë vÒ danh väng cÊp bËc # nhiÖm vô trung c¨n cø danh väng cÊp bËc ph¸n ®o¸n , mµ cÊp bËc ®Şnh nghÜa lµ ë chç nµy thèng nhÊt khèng chÕ # 
if (i >= 3600) then -- script viet hoa By http://tranhba.com  thiÕu tØnh 24000,10 cÊp 
return 10 
elseif (i >= 2250) then -- script viet hoa By http://tranhba.com  thiÕu tØnh 15000,9 cÊp 
return 9 
elseif (i >= 1200) then -- script viet hoa By http://tranhba.com  thiÕu tØnh 8000,8 cÊp 
return 8 
elseif (i >= 750) then -- script viet hoa By http://tranhba.com  thiÕu tØnh 5000,7 cÊp 
return 7 
elseif (i >= 450) then -- script viet hoa By http://tranhba.com  thiÕu tØnh 3000,6 cÊp 
return 6 
elseif (i >= 240) then -- script viet hoa By http://tranhba.com  thiÕu tØnh 1800,5 cÊp 
return 5 
elseif (i >= 150) then -- script viet hoa By http://tranhba.com  thiÕu tØnh 1000,4 cÊp 
return 4 
elseif (i >= 75) then -- script viet hoa By http://tranhba.com  thiÕu tØnh 500,3 cÊp 
return 3 
elseif (i >= 30) then -- script viet hoa By http://tranhba.com  thiÕu tØnh 200,2 cÊp 
return 2 
elseif (i >= 8) then -- script viet hoa By http://tranhba.com  thiÕu tØnh 50,1 cÊp 
return 1 
elseif (i >= 0) then -- script viet hoa By http://tranhba.com  0 , 0 cÊp 
return 0 
else -- script viet hoa By http://tranhba.com  sai lÇm 
return -1 
end 
end 

function GetReputeStr(Repute_Level) 
if (Repute_Level == 1) then 
Repute_title = " s¬ xuÊt giang hå " 
elseif (Repute_Level == 2) then 
Repute_title = " v« danh tiÓu bèi " 
elseif (Repute_Level == 3) then 
Repute_title = " yªn lÆng kh«ng nghe thÊy " 
elseif (Repute_Level == 4) then 
Repute_title = " s¬ hiÓn phong mang " 
elseif (Repute_Level == 5) then 
Repute_title = " cã chót danh tiÕng " 
elseif (Repute_Level == 6) then 
Repute_title = " danh tiÕng vang déi " 
elseif (Repute_Level == 7) then 
Repute_title = " uy trÊn nhÊt ph­¬ng " 
elseif (Repute_Level == 8) then 
Repute_title = " ng¹o thŞ quÇn hïng " 
elseif (Repute_Level == 9) then 
Repute_title = " mét ®¹i t«ng s­ " 
elseif (Repute_Level == 10) then 
Repute_title = " tiÕu ng¹o giang hå " 
else 
Repute_title = " b×nh d©n b¸ch tİnh " 
end 
return Repute_title 
end 

function nothing() 
end 
