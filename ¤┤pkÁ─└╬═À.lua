-- script viet hoa By http://tranhba.com  ®¹i lao tï ®Çu .lua## t¾m ®iÓm nhiÖm vô # 
-- script viet hoa By http://tranhba.com  By Dan_Deng(2003-11-12) 

Include("\\script\\global\\timerhead.lua")
Include("\\Script\\Global\\FuYuan.lua")
Include("\\script\\nationalwar\\head.lua")

function main(sel) 
local Uworld96 = GetTask(96) 
local PK_value = GetPK(); 
if (Uworld96 == 1) then -- script viet hoa By http://tranhba.com  dß giam ®Ých 
Say("Tï ®Çu # th¨m xong ch­a , ®i nhanh mét chót #",2,"C¸m ¬n vÞ ®¹i ca nµy , ta ®i råi /visit_leave","Xin/mêi ®¹i ca n÷a ®am ®îi mét c¸i , ta rÊt nhanh liÒn ®i /no") 
-- script viet hoa By http://tranhba.com  elseif (Uworld96 == 0) then -- script viet hoa By http://tranhba.com  sai lÇm 
-- script viet hoa By http://tranhba.com  Talk(1,"","Tï ®Çu # uy # ng­¬i lµ thÕ nµo x©m nhËp vµo thiªn lao träng ®Þa tíi ? cã lêi g× ®i t×m GM gi¶i thÝch ®i #") 
elseif (PK_value <= 0) then -- script viet hoa By http://tranhba.com  röa s¹ch PK ®Ých 
Talk(2,"PKclear","Tï ®Çu # ng­¬i # thu thËp xong hµnh lý , ng­¬i ®· cã thÓ xuÊt ngôc #","Nhµ ch¬i # ®a t¹ ®¹i ca , nh­ vËy ta liÒn ®i . ") 
else -- script viet hoa By http://tranhba.com  t¾m PK ®Ých 
-- script viet hoa By http://tranhba.com  thiªn tö hÖ thèng # ®¹i x¸ thiªn h¹ 
local absolve_time = NW_GetTask(NW_TASKNO_ABSOLVE) 
local current_time = GetCurServerTime() 
		if (absolve_time ~= 0 and current_time < absolve_time + SECONDS_ONEHOUR) then
Say("Ta h­íng lªn trêi tö h«m nay mÆt rång ®¹i duyÖt , ®¹i x¸ thiªn h¹ hÕt th¶y téi ¸c ng­êi , tiÓu tö ng­¬i vËn khÝ kh«ng tÖ # cßn kh«ng ®i nhanh lªn #", 
2, 
" véi vµng l­u /nw_absolve", 
" kh«ng ta ph¶i ë l¹i chç nµy /Cancel") 
else 
local n_timerid = GetTimerId(); 
if (n_timerid ~= 9) then 
				SetTask(96,100 + PK_value);
SetTimer(12 * CTime * FramePerSec, 9) 
return 
end 
Say("Tï ®Çu # téi nghiÖt kh«ng thanh chi ph¹m nh©n , kh«ng ph¶i tïy ý ®i l¹i #",3,"Hái mét chót thêi gian /ask_timer","Hèi lé b¹c /pay_money"," lµ , lµ , ta ®©y trë vÒ ®i ngåi xong /no") 
end 
end 
end 

-- script viet hoa By http://tranhba.com  thiªn tö hÖ thèng # ®¹i x¸ thiªn h¹ 
function nw_absolve() 
SetPK(0) 
leave_prison() 
end 

function ask_timer() 
if (GetCash() >= 1000) then -- script viet hoa By http://tranhba.com  cã 500 l­îng b¹c míi ®Ó cho hái 
Pay(1000) 
Talk(2,"","Nhµ ch¬i # vÞ ®¹i ca nµy , n¬i nµy 1000 l­îng b¹c xin/mêi uèng chÐn trµ , ta chØ lµ muèn hái mét chót b©y giê lµ giê g× . ","Tï ®Çu # ng­¬i muèn h¬i gi¶m thÊp téi nghiÖt còng cßn kÐm "..GetRestCTime(9).." , nhanh ®i vÒ ngåi xong #") 
else 
Talk(2,"","Nhµ ch¬i # vÞ ®¹i ca nµy , ta chØ lµ muèn hái mét chót b©y giê lµ giê g× . ","Tï ®Çu # hái c¸i g× hái # ®ßi ®¸nh cã ph¶i hay kh«ng , cßn kh«ng mau trë vÒ ngåi xong #") 
end 
end 

function pay_money() 
PK_PayMoney = GetPK() * GetPK() * 10000 
Talk(1,"pay_money2","Nhµ ch¬i # tï nhøc ®Çu ca , n¬i nµy "..PK_PayMoney.." l­îng b¹c , nho nhá ý tø bÊt thµnh kÝnh ý , ch¼ng qua lµ ta ®©y th©n thÓ thËt sù lµ bÖnh ph¶i nÆng ®ë kh«ng næi , cã thÓ hay kh«ng xin/mêi ®¹i ca khai ©n ®Ó ta b¶o bªn ngoµi liÒn y ®©y ? ") 
end 

function pay_money2() 
Say("Tï ®Çu # xem ng­¬i kia häc trß nghÌo d¹ng , cã thÓ cã nhiÒu b¹c nh­ vËy sao ? ",2,"§em tiÒn nhÐt vµo trong tay h¾n /pay_yes","TiÕp tôc khÈn cÇu /pay_no") 
end 

function pay_yes() 
PK_PayMoney = GetPK() * GetPK() * 10000 
if (GetCash() >= PK_PayMoney) then 
Pay(PK_PayMoney) 
Msg2Player("Tï ®Çu cho phÐp ng­¬i b¶o bªn ngoµi liÒn y , ng­¬i cã thÓ rêi ®i ®¹i lao . ") 
Talk(1,"leave_prison","Tï ®Çu # ai , nh©n ®¹o lµ luËt ph¸p v« t×nh ng­êi h÷u t×nh , nÕu ng­¬i bÖnh ph¶i nÆng nh­ vËy , vËy tr­íc tiªn ®i xem mét chót thÇy thuèc ®i . nhí ng­¬i ®©y chØ lµ b¶o bªn ngoµi liÒn y , trªn ng­êi téi nghiÖt kh«ng thanh ®Ých , ®i ra ngoµi ngµn v¹n kh«ng muèn t¸i ph¹m chuyÖn g× a #") 
else 
pay_no() 
end 
end 

function pay_no() 
Talk(1,"","Tï ®Çu # quû nghÌo , cót ngay # cã tin ta hay kh«ng cÇm ®¹i roi quÊt ng­¬i a #") 
end 

function PKclear() 
Msg2Player(" ë kh¾c s©u tØnh l¹i sau , ng­¬i rèt côc bÞ th¶ ra ngôc . ") 
leave_prison() 
end 

function leave_prison() 
StopTimer() 
if (GetTask(94) == 9) then -- script viet hoa By http://tranhba.com  trªn ng­êi sai lÇm ®Þa gi÷ ngåi tï tÝnh giê khÝ , kh«ng lµm kú tha xö lý trùc tiÕp thanh r¬i 
SetTask(94,0) 
SetTask(95,0) 
elseif (GetTask(94) > 0) then -- script viet hoa By http://tranhba.com  kh«i phôc trªn ng­êi nguyªn cã tÝnh giê khÝ 
Msg2Player("Ng­¬i nhí l¹i trªn ng­êi m×nh cßn mang theo nhiÖm vô , véi vµng ®i xong thµnh nã ®i . ") 
SetTimer(GetTask(95),GetTask(94)) 
SetTask(94,0) 
SetTask(95,0) 
end 
FuYuan_Resume(); 
leave2() 
end 

function visit_leave() 
leave2() 
end 

function leave2() 
SetTask(96,0) 
leave_pos = GetTask(93) 
DisabledTeam(0); 
if (leave_pos == 1) then -- script viet hoa By http://tranhba.com  tr­íc khi an 
NewWorld(176,1473,3245) 
else -- script viet hoa By http://tranhba.com  biÖn kinh 
NewWorld(37,1781,3044) 
end 
-- script viet hoa By http://tranhba.com  NewWorld(57,1592,3195) -- script viet hoa By http://tranhba.com  nÐm tíi Hµnh S¬n ®¹i s¶nh 
end 

function no() 
end 
