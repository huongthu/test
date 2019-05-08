-- script viet hoa By http://tranhba.com  t¾m PK ®İch nha dŞch .lua 
-- script viet hoa By http://tranhba.com  By Dan_Deng(2003-11-10) 

Include("\\Script\\Global\\TimerHead.lua")
Include("\\Script\\Global\\FuYuan.lua")

function default_talk() 
if (GetFightState() ~= 0) then 
SetFightState(0) 
end 
Say("Nha dŞch # quèc h÷u quèc ph¸p , gia h÷u gia quy , hai tay dİnh ®Çy m¸u tanh ng­êi ch¹y trèn tíi ch©n trêi gãc biÓn còng kh«ng cã thÓ ch¹y trèn luËt ph¸p chÕ tµi #",3,"Ta ®Õn tõ thñ /atone","Ta tíi dß giam /visit","Kh«ng cã sao /no") 
LeaveTeam(); 
end 

function atone() -- script viet hoa By http://tranhba.com  tù thñ t¾m PK 
local PK_value = GetPK() 
local my_money = GetCash() 
local ExpPer = GetExpPercent() 
local Uworld96 = GetTask(96) 
local Uworld94 = GetTask(94) 
if (Uworld96 > 0) then -- script viet hoa By http://tranhba.com  cho lçi xö lı # nÕu nh­ ë phßng giam bªn ngoµi ph¸t hiÖn xö vu ngåi tï tr¹ng th¸i , tr­íc tr¶ l¹i nh­ cò liÔu l¹i nãi 
SetTask(96,0) 
StopTimer() 
if (Uworld94 > 0) then -- script viet hoa By http://tranhba.com  nÕu nh­ cßn cã b¶o tån ®İch tİnh giê khİ , ®ång thêi cßn nguyªn ( nÕu nh­ lµ ngåi tï tİnh giê khİ lµ trùc tiÕp quan tİnh giê khİ ) 
if (Uworld94 ~= 9) then 
SetTimer(GetTask(95),GetTask(94)); 
end 
SetTask(94,0) 
SetTask(95,0) 
end 
end 
if (PK_value == 0) then -- script viet hoa By http://tranhba.com  v« téi 
Talk(2,"","Nhµ ch¬i # ngµy tr­íc ta ®· tõng kh«ng cÈn thËn ngé th­¬ng ng­êi kh¸c , ®Æc ®Õn tõ thñ . ","Nha dŞch # vèn phñ tr¶i qua ®iÒu tra cho r»ng ng­¬i kia thuéc vÒ b×nh th­êng phßng vÖ , chØ cÇn lÇn sau cÈn thËn mét İt , kh«ng cÇn qu¸ møc tù tr¸ch . ng­¬i ®i ®i . ") 
elseif (Uworld94 > 0) and (Uworld94 ~= 9) then -- script viet hoa By http://tranhba.com  ®· cã b¶o tån ®İch tİnh giê khİ , kh«ng cho phĞp n÷a b¶o tån # nÕu nh­ ®· b¶o tån chİnh lµ ngåi tï tİnh giê khİ , cho lçi xö lı xong # 
Talk(1,"","B©y giê ng­¬i g¸nh v¸c rÊt nhiÒu nhiÖm vô ch­a hoµn thµnh , t¹i sao cã thÓ tïy tiÖn l·ng phİ thêi gian , ®em m×nh h÷u dông th©n ®­a vµo ®¹i lao chç nh­ thÕ ? ") 
Msg2Player("Trªn ng­êi cã qu¸ nhiÒu tİnh giê nhiÖm vô , kh«ng cho phĞp ®Çu ¸n tù thó . ") 
elseif (ExpPer < -50) then -- script viet hoa By http://tranhba.com  bŞ/cha/chŞu kinh nghiÖm trõng ph¹t trung , kh«ng cho phĞp t¾m PK 
Talk(1,"","Nha dŞch # gièng nh­ ng­¬i vËy nî m¸u thËt mÖt mái ®İch qu¸n ph¹m cßn muèn tù thñ chuéc téi ? hõ hõ , chê bŞ ng­êi ®uæi giÕt ®i #") 
Msg2Player(" luËt ph¸p ®İnh ®Şnh # bŞ/cha/chŞu kinh nghiÖm v­ît qua 50% ng­êi , kh«ng cho d­ tù thñ chuéc téi ®İch chiÒu réng ®îi #") 
else 
Say(GetName()..": ngµy tr­íc ta ®· tõng kh«ng cÈn thËn ngé th­¬ng ng­êi kh¸c , ®Æc ®Õn tõ thñ . ", 1,"TiÕp tôc ®èi tho¹i /want_atone") 
end 
end 

function want_atone() 
local PK_value = GetPK(); 
local my_money = GetCash(); 
Say("Nha dŞch # ng­¬i hai tay dİnh cã m¸u tanh , nhÊt ®Şnh ph¶i tr¶i qua quan phñ gi¸m ®Şnh , m×nh ë ®¹i lao trong tÜnh t©m hèi c·i l¹i võa chuéc téi . <enter>……<enter> hiÖn ph¸n quyÕt nh­ sau #<enter>## nªn ph¹m <color=red> "..safeshow(GetName()).." <color> b©y giê PK trŞ gi¸ lµ <color=red>"..PK_value.."<color> , kh«ng cã thu nªn ph¹m së mang toµn bé tang kho¶n <color=red>"..my_money.."<color> hai , nhèt vµo ®¹i lao hèi c·i <color=red>"..PK_value.."<color> ngµy . ", 2,"TiÕn vµo ®¹i lao /go_atone","Cßn lµ lÎn trèn ®i /no"); 
end; 

function go_atone() 

	SetTask(96,100+GetPK())
i = GetTimerId() 
if (i > 0) and (i ~= 9) then -- script viet hoa By http://tranhba.com  nÕu nh­ trªn ng­êi nguyªn cã tİnh giê khİ h¬n n÷a kh«ng ph¶i lµ ngåi tï tİnh giê khİ , tr­íc b¶o tån 
SetTask(94,i) 
SetTask(95,GetRestTime(i)) 
else 
SetTask(94,0) 
SetTask(95,0) 
StopTimer() 
end 
local my_money = GetCash(); 
Pay(my_money); 
Msg2Player("Quan sai kh«ng cã b¾t trªn ng­êi ng­¬i ®İch tÊt c¶ b¹c céng "..my_money.." hai , còng ®em ng­¬i nhèt vµo ®¹i lao . ") 
WriteLog(date().."\tName:"..GetName().."\tAccount:"..GetAccount().."\t bŞ nhèt vµo ®¹i lao cóp trªn ng­êi tÊt c¶ tiÒn mÆt "..my_money.." hai ") 
FuYuan_Pause(); 
SetTimer(12 * CTime * FramePerSec, 9) -- script viet hoa By http://tranhba.com  mçi 120 phót th«ng qua tİnh giê khİ ®æi míi rít xuèng PK trŞ gi¸ 
DisabledTeam(1); 
NewWorld(208,1785,3062) 
end 

function visit() -- script viet hoa By http://tranhba.com  dß giam 
Say("Nha dŞch # ®i ra ®i ra , ë trong ®ã còng lµ muèn ph¹m , dß c¸i g× dß , cã ph¶i hay kh«ng ®ång ®¶ng a #",2,"Hèi lé 5000 l­îng b¹c /go_visit","§i ra /no") 
end 

function go_visit() 
if (GetCash() >= 5000) then 
Talk(1,"","Nha dŞch # ng­¬i nãi c¸i g× ? b»ng h÷u cña ng­¬i ë trong tï ng· bÖnh ? nÕu nh­ vËy , vËy ng­¬i ®i th¨m mét c¸i còng coi lµ ng­êi th­êng t×nh ®i . nhí kh«ng muèn lµm c¸i g× lĞn lĞn lót lót c©u ®­¬ng a . ") 
Msg2Player("Hèi lé nha dŞch 5000 l­îng b¹c , tiÕn vµo ®¹i lao dß giam ") 
Pay(5000) 
SetTask(96,1) 
DisabledTeam(1); 
NewWorld(208,1785,3062) 
else 
Talk(1,"","Nha dŞch # mau tr¸nh ra # cã ph¶i hay kh«ng nhÊt ®Şnh ph¶i ta ®em ng­¬i khi hung ph¹m ®ång ®¶ng b¾t ®i vµo míi cao høng #") 
end 
end 

function no() 
end 
