-- script viet hoa By http://tranhba.com  thÇy t­íng sè .lua nh×n danh väng trŞ gi¸ ®İch thÇy t­íng sè 
-- script viet hoa By http://tranhba.com  By Dan_Deng(2003-11-11) 

sexhead = {"ThiÕu hiÖp ","N÷ hiÖp "} 

Include("\\script\\global\\repute_head.lua")

function main() 
if (GetSex() == 0) then -- script viet hoa By http://tranhba.com  nam n÷ dïng bÊt ®ång ®èi tho¹i 
Say("Tr­¬ng thiÕt chñy # vŞ thiÓu hiÖp kia khİ vò bÊt phµm , cã muèn biÕt hay kh«ng thiÕu hiÖp ngµi ®İch cÈm tó tiÒn tr×nh ? chØ cÇn 500 l­îng b¹c . ",2,"H¶o , cho ta tİnh mét lÇn /view_repute_yes","Kh«ng cÇn /no") 
else 
Say("Tr­¬ng thiÕt chñy # vŞ c« n­¬ng nµy xinh ®Ñp nh­ hoa , cã muèn xem mét chót hay kh«ng m×nh tèt ®Ñp t­¬ng lai ®©y ? chØ cÇn 500 l­îng b¹c . ",2,"H¶o , cho ta tİnh mét lÇn /view_repute_yes","Kh«ng cÇn /no") 
end 
end 

function view_repute_yes() 
if (GetCash() < 500) then 
Talk(1,"","Tr­¬ng thiÕt chñy # l¹i lµ mét kh«ng cã tiÒn ®İch , uçng phİ nöa ngµy n­íc miÕng . ") 
return 0 
end 
Pay(500) 
repute_exp = GetRepute() 
repute_lvl = GetReputeLevel(repute_exp) 
if (repute_lvl == -1) then -- script viet hoa By http://tranhba.com  bŞ lçi lóc 
Talk(1,"","Tr­¬ng thiÕt chñy # tõ x­a anh kiÖt nhiÒu khæ n¹n , b©y giê ng­¬i ®ang bŞ ¸ch linh chi kÑt , dån khiÕn cho ng­¬i giang hå danh väng xuÊt hiÖn sai lÇm . xin/mêi ®i t×m thiªn thÇn ban phóc ®i . ") 
elseif (repute_lvl == 0) then 
Talk(2,"","Tr­¬ng thiÕt chñy # kim long h¸ lµ trong ao vËt , ng­¬i b©y giê mÆc dï mét giíi ¸o v¶i , ng­êi giang hå së kh«ng biÕt , nh­ng gi¶ lÊy ngµy giê , tÊt ®em cã kinh thiªn ®éng ®Şa kh¶ n¨ng . ","Tr­¬ng thiÕt chñy # ng­¬i b©y giê ®İch giang hå danh väng lµ "..repute_exp.." , ng­êi giang hå coi ng­¬i v× <color=red> b×nh d©n b¸ch tİnh <color> . ") 
elseif (repute_lvl == 1) then 
Talk(2,"","Tr­¬ng thiÕt chñy # thÇn long chît hiÖn trong cuéc sèng , ng­¬i mÆc dï s¬ xuÊt mao l­ , nh­ng tÊt ®em nhanh chãng quËt khëi , cã thøc chi sÜ sÏ rÊt nhanh chó ı tíi lùc l­îng cña ng­¬i . ","Tr­¬ng thiÕt chñy # ng­¬i b©y giê ®İch giang hå danh väng lµ "..repute_exp.." , ng­êi giang hå coi ng­¬i v× <color=red> s¬ xuÊt giang hå <color> . ") 
elseif (repute_lvl == 2) then 
Talk(2,"","Tr­¬ng thiÕt chñy # så ph­îng lßng cã hång héc chİ , mÆc dï ë trong chèn giang hå ng­¬i vÉn chØ lµ v« danh tiÓu bèi , nh­ng v­ît qua phµm bèi ®èi víi ng­¬i mµ nãi ch¼ng qua lµ ch¹m tay cã thÓ ®ông chuyÖn . ","Tr­¬ng thiÕt chñy # ng­¬i b©y giê ®İch giang hå danh väng lµ "..repute_exp.." , ng­êi giang hå coi ng­¬i v× <color=red> v« danh tiÓu bèi <color> . ") 
elseif (repute_lvl == 3) then 
Talk(2,"","Tr­¬ng thiÕt chñy # tiÒm tu m­êi t¸i kh«ng ng­êi hái , ë trong chèn giang hå ng­¬i vÉn yªn lÆng kh«ng nghe thÊy , nh­ng tiÒm chÊt ®· biÓu lé kh«ng bá sãt , NhÊt Phi Trïng Thiªn ch¼ng qua lµ sím muén chuyÖn . ","Tr­¬ng thiÕt chñy # ng­¬i b©y giê ®İch giang hå danh väng lµ "..repute_exp.." , ng­êi giang hå coi ng­¬i v× <color=red> yªn lÆng kh«ng nghe thÊy <color> . ") 
elseif (repute_lvl == 4) then 
Talk(2,"","Tr­¬ng thiÕt chñy # ®· tr¶i qua ®«ng ®¶o ma luyÖn sau ®İch ng­¬i , ®· ®ang lóc mäi ng­êi tr­íc s¬ s¬ hiÓn lé phong mang , giang hå bÇy hiÖp ®· më míi chó ı tíi ng­¬i quËt khëi . ","Tr­¬ng thiÕt chñy # ng­¬i b©y giê ®İch giang hå danh väng lµ "..repute_exp.." , ng­êi giang hå coi ng­¬i v× <color=red> s¬ hiÓn phong mang <color> . ") 
elseif (repute_lvl == 5) then 
Talk(2,"","Tr­¬ng thiÕt chñy # ng­¬i ®· v­ît qua gian nan nhÊt khèn khæ ®İch giai ®o¹n , ng­¬i danh tiÕng b¾t ®Çu ¶nh h­ëng ®Õn nh÷ng ng­êi chung quanh , ng­êi nhiÒu h¬n ph¸t hiÖn n¨ng lùc cña ng­¬i . ","Tr­¬ng thiÕt chñy # ng­¬i b©y giê ®İch giang hå danh väng lµ "..repute_exp.." , ng­êi giang hå coi ng­¬i v× <color=red> cã chót danh tiÕng <color> . ") 
elseif (repute_lvl == 6) then 
Talk(2,"","Tr­¬ng thiÕt chñy # ng­¬i quËt khëi ®ang bŞ cµng ngµy cµng nhiÒu ng­êi coi träng , trong chèn giang hå ng­¬i danh tiÕng ®· cµng ngµy cµng vang déi , mäi ng­êi b¾t ®Çu thËt lßng thùc ı ®Şa ®èi víi ng­¬i nãi “ nh­ sÊm bªn tai ” . ","Tr­¬ng thiÕt chñy # ng­¬i b©y giê ®İch giang hå danh väng lµ "..repute_exp.." , ng­êi giang hå coi ng­¬i v× <color=red> danh tiÕng vang déi <color> . ") 
elseif (repute_lvl == 7) then 
Talk(2,"","Tr­¬ng thiÕt chñy # ng­¬i ®· thµnh v× ®¹i ®a sè m¾t ng­êi trung ®İch cao thñ , ng­¬i cã kh«ng tÇm th­êng thùc lùc khiÕn cho ng­¬i danh tiÕng uy trÊn nhÊt ph­¬ng . ","Tr­¬ng thiÕt chñy # ng­¬i b©y giê ®İch giang hå danh väng lµ "..repute_exp.." , ng­êi giang hå coi ng­¬i v× <color=red> uy trÊn nhÊt ph­¬ng <color> . ") 
elseif (repute_lvl == 8) then 
Talk(2,"","Tr­¬ng thiÕt chñy # ng¹o thŞ quÇn hïng ®İch c­êng gi¶ cã thÓ chóa tÓ ng­êi kh¸c ®İch sinh tö . mµ ng­¬i , ë kh«ng gi¶i cè g¾ng cïng gian khæ phÊn ®Êu d­íi , ®· trë thµnh liÔu c­êng gi¶ nh­ vËy . ","Tr­¬ng thiÕt chñy # ng­¬i b©y giê ®İch giang hå danh väng lµ "..repute_exp.." , ng­êi giang hå coi ng­¬i v× <color=red> ng¹o thŞ quÇn hïng <color> . ") 
elseif (repute_lvl == 9) then 
Talk(2,"","Tr­¬ng thiÕt chñy # ng­¬i danh väng nh­ mÆt trêi ban tr­a , giang hå trë nªn c¶nh ng­ìng , t«n ng­¬i lµm mét §¹i t«ng s­ , vâ l©m ®¹i hiÖp . ","Tr­¬ng thiÕt chñy # ng­¬i b©y giê ®İch giang hå danh väng lµ "..repute_exp.." , ng­êi giang hå coi ng­¬i v× <color=red> mét ®¹i t«ng s­ <color> . ") 
else 
Talk(2,"","Tr­¬ng thiÕt chñy # th©n lµ trong chèn giang hå ®İch truyÒn thuyÕt nh©n vËt , giang hå hËu tiÕn ®İch phÊn ®Êu môc tiªu , mµ ng­¬i l¹i nh­ thÇn long thÊy ®Çu kh«ng thÊy ®u«i mét lo¹i theo tİnh lµm . ","Tr­¬ng thiÕt chñy # ng­¬i b©y giê ®İch giang hå danh väng lµ "..repute_exp.." , ng­êi giang hå coi ng­¬i v× <color=red> tiÕu ng¹o giang hå <color> . ") 
end 
end 

function no() 
end 
