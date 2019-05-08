IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\hotrothem.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
--Song bac

function main() 
--dofile("script/global/dicegame.lua");
dofile("script/huashan/dicegame.lua");
--local k = random(2,12)
--local i = 999999
dialog_main()
end; 


function dialog_main()	
local szTitle = "<npc>Oh! Xin chµo <color=cyan>"..GetName().." <color>  huynh ®µi, ng­¬i cã muèn thö vËn may kh«ng! Ta cã c¸c trß ch¬i rÊt hay\nLuËt ch¬i ®¬n gi¶n:\n\t<color=green>XØu-Tµi-B·o<color>: <color=yellow>§Æt c­îc b»ng tiÒn v¹n<color>\n\t<color=cyan>BÇu cua<color>:<color=gold> §Æt cöa b»ng Kim Nguyªn B¶o<color>"
	local tbOpt =
	{
		{"Ch¬i liÒn",ttry},
		{"Kh«ng ®­îc thö dï chØ 1 lÇn !"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

function ttry()
Say("<color=green>Chñ sßng b¹c<color>: C¸c h¹ muèn ®Æt c­îc b»ng <color=blue>TiÒn v¹n<color> hay <color=gold>Kim Nguyªn B¶o<color> nµo ?",3,"TiÌn v¹n/tvan","Kim Nguyªn B¶o/knb","Th«i khái/no") 
end;

function tvan()
Say("<color=gold>Chñ sßng b¹c<color>: Mêi c¸c h¹ chän sã tiÒn muèn ®Æt",6,"Võa 20 V¹N/c25v","Ch¬i Lín 50 V¹N/c50v","QuÊt 100 V¹N/c100v","Kh« m¸u 500 V¹N/c500v","§æi ®êi 1000 V¹N/c1000v","Th«i kh«ng ch¬i n÷a/no") 
end;

function knb()
Say("<color=gold>Chñ sßng b¹c<color>: ¸ µ, ®¹i hiÖp <color=green>"..GetName().."<color> qu¶ lµ bËc v­¬ng gi¶, thÕ ngµi muèn thö bao nhiªu <color=gold>Nguyªn B¶o<color> ®©y ? ",4,"1 Kim Nguyªn B¶o /d1nb","Ch¬i 5 Kim Nguyªn B¶o /d5nb","Theo 10 Kim Nguyªn B¶o lu«n /d10nb","Th«i ®Ó xem l¹i ®·/no") 
end;

function d1nb()
j = 1
if GetItemCount(343) >= j then 
DelItem(343)
dicenb()
else
Talk(1,"","<color=pink>§¹i gia cø ®ïa, ngµi kh«ng mang ®ñ <color=gold>Nguyªn B¶o<color> råi k×a<color>!") 
end;
end

function d5nb()
j = 5
if GetItemCount(343) >= j then 
for e=1,j do
DelItem(343)
end
dicenb()
else
Talk(1,"","<color=pink>§¹i gia cø ®ïa, ngµi kh«ng mang ®ñ <color=gold>Nguyªn B¶o<color> råi k×a<color>!") 
end;
end

function d10nb()
j = 10
if GetItemCount(343) >= j then 
for e=1,j do
DelItem(343)
end
dicenb()
else
Talk(1,"","<color=pink>§¹i gia cø ®ïa, ngµi kh«ng mang ®ñ <color=gold>Nguyªn B¶o<color> råi k×a<color>!") 
end;
end

function dicenb()
Say("<color=gold>Chñ sßng b¹c<color>:Mêi ®¹i hiÖp <color=green>"..GetName().."<color> ®Æt cöa. LuËt ch¬i nh­ sau: \n\t<color=cyan>BÇu , Gµ , Nai : §Þa<color>\n\t<color=yellow>Nguyªn B¶o: Trung (1 ¨n 3)<color>\n\t<color=blue>T«m, C¸, Cua : Thñy<color>  ",3,"Theo §Þa/dia","Theo Trung/trung","Theo Thñy/thuy") 
end;

function dia()

local h = random(1,11)

if (h == 3) then
Talk(2,"winnb","<color=yellow>KÕt qu¶ l¾c ®Üa : Nai<color>\n\t<color=gold>Cöa nµy lµ : <color=red>§Þa<color><color> ","<color=gold>Chóc mõng ®¹i hiÖp ®· th¾ng ®­îc "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 7) then
Talk(2,"winnb","<color=yellow>KÕt qu¶ l¾c ®Üa : BÇu<color>\n\t<color=gold>Cöa nµy lµ : <color=red>§Þa<color><color> ","<color=gold>Chóc mõng ®¹i hiÖp ®· th¾ng ®­îc "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 11) then
Talk(2,"winnb","<color=yellow>KÕt qu¶ l¾c ®Üa : Gµ<color>\n\t<color=gold>Cöa nµy lµ : <color=red>§Þa<color><color> ","<color=gold>Chóc mõng ®¹i hiÖp ®· th¾ng ®­îc "..j.." Kim Nguyªn B¶o<color>")
--thua
elseif (h == 1) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : Cua<color>\n\t<color=gold>Cöa nµy lµ : <color=blue>Thñy<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 5) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : C¸<color>\n\t<color=gold>Cöa nµy lµ : <color=blue>Thñy<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 9) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : T«m<color>\n\t<color=gold>Cöa nµy lµ : <color=blue>Thñy<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 6) or (h == 8) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : Nguyªn B¶o<color>\n\t<color=gold>Cöa nµy lµ : <color=gold>Trung<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
else
Talk(2,"lose2","<color=yellow>Ng­¬i lµm lËt ®Üa xãc råi, bÞ xö thua<color> ","<color=cyan>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
end;
end

function thuy()

local h = random(1,11)

if (h == 3) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : Nai<color>\n\t<color=gold>Cöa nµy lµ : <color=red>§Þa<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 7) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : BÇu<color>\n\t<color=gold>Cöa nµy lµ : <color=red>§Þa<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 11) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : Gµ<color>\n\t<color=gold>Cöa nµy lµ : <color=red>§Þa<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
--thua
elseif (h == 1) then
Talk(2,"winnb","<color=yellow>KÕt qu¶ l¾c ®Üa : Cua<color>\n\t<color=gold>Cöa nµy lµ : <color=blue>Thñy<color><color> ","<color=gold>Chóc mõng ®¹i hiÖp ®· th¾ng ®­îc "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 5) then
Talk(2,"winnb","<color=yellow>KÕt qu¶ l¾c ®Üa : C¸<color>\n\t<color=gold>Cöa nµy lµ : <color=blue>Thñy<color><color> ","<color=gold>Chóc mõng ®¹i hiÖp ®· th¾ng ®­îc "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 9) then
Talk(2,"winnb","<color=yellow>KÕt qu¶ l¾c ®Üa : T«m<color>\n\t<color=gold>Cöa nµy lµ : <color=blue>Thñy<color><color> ","<color=gold>Chóc mõng ®¹i hiÖp ®· th¾ng ®­îc "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 6) or (h == 8) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : Nguyªn B¶o<color>\n\t<color=gold>Cöa nµy lµ : <color=gold>Trung<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
else
Talk(2,"lose2","<color=yellow>Ng­¬i lµm lËt ®Üa xãc råi, bÞ xö thua<color> ","<color=cyan>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
end;
end

function trung()

local h = random(1,11)

if (h == 3) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : Nai<color>\n\t<color=gold>Cöa nµy lµ : <color=red>§Þa<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 7) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : BÇu<color>\n\t<color=gold>Cöa nµy lµ : <color=red>§Þa<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 11) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : Gµ<color>\n\t<color=gold>Cöa nµy lµ : <color=red>§Þa<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
--thua
elseif (h == 1) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : Cua<color>\n\t<color=gold>Cöa nµy lµ : <color=blue>Thñy<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 5) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : C¸<color>\n\t<color=gold>Cöa nµy lµ : <color=blue>Thñy<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 9) then
Talk(2,"lose2","<color=yellow>KÕt qu¶ l¾c ®Üa : T«m<color>\n\t<color=gold>Cöa nµy lµ : <color=blue>Thñy<color><color> ","<color=yellow>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
elseif (h == 6) then
Talk(2,"winnb","<color=yellow>KÕt qu¶ l¾c ®Üa : Nguyªn B¶o<color>\n\t<color=gold>Cöa nµy lµ : <color=gold>Trung<color><color> ","Chóc mõng ®¹i hiÖp ®· th¾ng ®­îc "..j.." Kim Nguyªn B¶o<color>")
else
Talk(2,"lose2","<color=yellow>Ng­¬i lµm lËt ®Üa xãc råi, bÞ xö thua<color> ","<color=cyan>§¹i hiÖp bÞ thua mÊt "..j.." Kim Nguyªn B¶o<color>")
end;
end

function winnb()
for e=1,2*j do
AddEventItem(343)
end
Msg2Player("Th¾ng chñ sßng b¹c, nhËn ®­îc "..j.." Kim Nguyªn B¶o")
AddGlobalNews("§¹i hiÖp <color=green>"..GetName().."<color> ®· th¾ng ®­îc chñ sßng b¹c , may m¾n nhËn ®­îc <color=gold>Kim Nguyªn B¶o<color> !")
end

function winnb2()
for e=1,4*j do
AddEventItem(343)
end
Msg2Player("Th¾ng chñ sßng b¹c, nhËn ®­îc "..3*j.." Kim Nguyªn B¶o")
AddGlobalNews("§¹i hiÖp <color=green>"..GetName().."<color> ®· th¾ng ®­îc chñ sßng b¹c , may m¾n nhËn ®­îc <color=gold>Kim Nguyªn B¶o<color> !")
end

function lose2()
Msg2Player("BÞ thua b¹c, mÊt "..j.." Kim Nguyªn B¶o")
end

function c25v()
i = 200000
if GetCash() >= i then 
Pay(i)
dice()
else
Talk(1,"","Kh«ng ®ñ <color=green>ng©n l­îng<color> th× ta cho vay chø ai l¹i ch¬i thiÕu !") 
end;
end

function c50v()
i = 500000
if GetCash() >= i then 
Pay(i)
dice()
else
Talk(1,"","Kh«ng ®ñ <color=green>ng©n l­îng<color> th× ta cho vay chø ai l¹i ch¬i thiÕu !") 
end;
end

function c100v()
i = 1000000
if GetCash() >= i then 
Pay(i)
dice()
else
Talk(1,"","Kh«ng ®ñ <color=green>ng©n l­îng<color> th× ta cho vay chø ai l¹i ch¬i thiÕu !") 
end;
end

function c500v()
i = 5000000
if GetCash() >= i then 
Pay(i)
dice()
else
Talk(1,"","Kh«ng ®ñ <color=green>ng©n l­îng<color> th× ta cho vay chø ai l¹i ch¬i thiÕu !") 
end;
end

function c1000v()
i = 10000000
if GetCash() >= i then 
Pay(i)
dice()
else
Talk(1,"","Kh«ng ®ñ <color=green>ng©n l­îng<color> th× ta cho vay chø ai l¹i ch¬i thiÕu !") 
end;
end

function dice()
local szTitle = "<npc><color=cyan>Chñ Sßng B¹c:<color>LuËt ch¬i ®¬n gi¶n:\n\t<color=green>XØu<color>: 4 ®Õn 10 ®iÓm\n\t<color=plum>Tµi<color>: 11 ®Õn 17 ®iÓm\n\t<color=yellow>B·o<color>: c¶ 3 xÝ ngÇu b»ng ®iÓm nhau (x5 tiÒn th­ëng)"
	local tbOpt =
	{
		{"§Æt TµI",tai},
		{"§Æt B·O",bao},
		{"§Æt SØU",siu},
	}
	CreateNewSayEx(szTitle, tbOpt)
		
end


function tai()
local m = random(0,99)
local x = random(1,6)
local y = random(1,6)
local z = random(1,6)
s = x + y + z
if (m >= 24) and (s >= 4) and (s <= 10) then
Talk(2,"win","<color=yellow>KÕt qu¶ quay xÝ ngÇu 1 :"..x.." nót<color>\n\t<color=blue>KÕt qu¶ quay xÝ ngÇu 2 :"..y.." nót<color>\n\t<color=green>KÕt qu¶ quay xÝ ngÇu 3 :"..z.." nót<color>\n\t<color=gold>Tæng ®iÓm "..s.." : TµI<color> ","<color=cyan>Chóc mõng ®¹i hiÖp ®· th¾ng ®­îc "..i.." l­îng b¹c<color>")
elseif  (m >= 24) and (s == 3) and (s >= 11) then
Talk(2,"lose","<color=yellow>KÕt qu¶ quay xÝ ngÇu 1 :"..x.." nót<color>\n\t<color=blue>KÕt qu¶ quay xÝ ngÇu 2 :"..y.." nót<color>\n\t<color=green>KÕt qu¶ quay xÝ ngÇu 3 :"..z.." nót<color>\n\t<color=gold>Tæng ®iÓm "..s.." : Thua råi!<color> ","<color=cyan>§¹i hiÖp thua mÊt "..i.." l­îng b¹c<color>")
else 
Talk(2,"lose","<color=yellow>Ng­¬i lµm r¬i xÝ ngÇu råi, bÞ xö thua<color> ","<color=cyan>§¹i hiÖp thua mÊt "..i.." l­îng b¹c<color>")
end;
end

function siu()
local m = random(0,99)
local x = random(1,6)
local y = random(1,6)
local z = random(1,6)
s = x + y + z
if (m >= 24) and (s >= 11) and (s <= 17) then
Talk(2,"win","<color=yellow>KÕt qu¶ quay xÝ ngÇu 1 :"..x.." nót<color>\n\t<color=blue>KÕt qu¶ quay xÝ ngÇu 2 :"..y.." nót<color>\n\t<color=green>KÕt qu¶ quay xÝ ngÇu 3 :"..z.." nót<color>\n\t<color=gold>Tæng ®iÓm "..s.." : SØu<color> ","<color=cyan>Chóc mõng ®¹i hiÖp ®· th¾ng ®­îc "..i.." l­îng b¹c<color>")
elseif (m >= 24) and (s >= 4) and (s <= 10) then
Talk(2,"lose","<color=yellow>KÕt qu¶ quay xÝ ngÇu 1 :"..x.." nót<color>\n\t<color=blue>KÕt qu¶ quay xÝ ngÇu 2 :"..y.." nót<color>\n\t<color=green>KÕt qu¶ quay xÝ ngÇu 3 :"..z.." nót<color>\n\t<color=gold>Tæng ®iÓm "..s.." : Thua råi!<color> ","<color=cyan>§¹i hiÖp thua mÊt "..i.." l­îng b¹c<color>")
else
Talk(2,"lose","<color=yellow>Ng­¬i lµm r¬i xÝ ngÇu råi, bÞ xö thua<color> ","<color=cyan>§¹i hiÖp thua mÊt "..i.." l­îng b¹c<color>")
end;
end

function bao()
--local m = random(0,99)
local x = random(1,6)
local y = random(1,6)
local z = random(1,6)

if (x == y) and (y == z) then
Talk(2,"win2","<color=yellow>KÕt qu¶ quay xÝ ngÇu 1 :"..x.." nót<color>\n\t<color=blue>KÕt qu¶ quay xÝ ngÇu 2 :"..y.." nót<color>\n\t<color=green>KÕt qu¶ quay xÝ ngÇu 3 :"..z.." nót<color>\n\t<color=gold>3 XÝ ngÇu gièng nhau : B·o<color> ","<color=cyan>Chóc mõng ®¹i hiÖp ®· th¾ng ®­îc "..i.." l­îng b¹c<color>")
else
Talk(2,"lose","<color=yellow>KÕt qu¶ quay xÝ ngÇu 1 :"..x.." nót<color>\n\t<color=blue>KÕt qu¶ quay xÝ ngÇu 2 :"..y.." nót<color>\n\t<color=green>KÕt qu¶ quay xÝ ngÇu 3 :"..z.." nót<color>\n\t<color=gold>3 xÝ ngÇu kh¸c nhau : Thua råi<color>  ","<color=cyan>§¹i hiÖp thua mÊt "..i.." l­îng b¹c<color>")
end;
end

function win()
Earn(2*i)
--Earn(i)
Msg2Player("C¸ c­îc th¾ng, nhËn ®­îc "..i.." l­îng b¹c") 
end

function win2()
Earn(6*i)
Msg2Player("C¸ c­îc th¾ng, nhËn ®­îc "..5*i.." l­îng b¹c") 
end

function lose()
Msg2Player("Ng­¬i ®· thua, bÞ mÊt "..i.." l­îng b¹c") 
end

function no() 
end;