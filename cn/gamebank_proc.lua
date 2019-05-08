-- script viet hoa By http://tranhba.com  tr­íc khi an # chøc n¨ng # tiÒn Trang l·o b¶n 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-01-06) tõ thèng nhÊt chøc n¨ng di ®éng xö lý ng©n phiÕu ®Õn chç nµy cã mét 
-- script viet hoa By http://tranhba.com  Update: Fanghao_Wu(2004-9-04) gia t¨ng nguyªn b¶o ®æi ®ång tiÒn chøc n¨ng 

-- script viet hoa By http://tranhba.com  Include("\\script\\global\\Ç®×¯¹¦ÄÜ.lua")

-- script viet hoa By http://tranhba.com  function main(sel) 
-- script viet hoa By http://tranhba.com  Talk(1,"main_proc","TiÒn Trang l·o b¶n # ta ®©y tiÒn nµy trang uy tÝn lu«n lu«n ®Òu tèt rÊt , tõ kh«ng g¹t ng­êi . ") 
-- script viet hoa By http://tranhba.com  end; 

Include("\\script\\global\\systemconfig.lua") -- script viet hoa By http://tranhba.com  hÖ thèng phèi trÝ 
Include("\\script\\global\\head_qianzhuang.lua") -- script viet hoa By http://tranhba.com  ®Çu ®Þnh nghÜa 

function gamebank_proc() 
local msg = { 
" ta muèn qu¶n lý ta nguyªn b¶o /use_ingot", 
" ta muèn qu¶n lý ta ng©n phiÕu /use_ticket", 
" liªn quan tíi ®ång tiÒn /onAboutCoin", 
" tïy tiÖn ®i d¹o mét chót /no" 
}; 

local talk = ""; 
if (GetSex() == 0) then 
talk = " tiÒn Trang l·o b¶n # ®óng råi vÞ thiÓu hiÖp kia muèn c¸i g× phôc vô ? "; 
else 
talk = " tiÒn Trang l·o b¶n # ®óng råi vÞ c« n­¬ng nµy muèn c¸i g× phôc vô ? "; 
end 

local btns ={} 
if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN) then 
tinsert(btns, msg[1]) 
end 

if (SYSCFG_GAMEBANK_TICKET_OPEN) then 
tinsert(btns, msg[2]) 
end 

tinsert(btns, msg[3]) 
tinsert(btns, msg[4]) 

Say(talk, getn(btns), btns); 
end 

function use_ticket() 
local msg = { 
" ta muèn lÊy tÊm ng©n phiÕu ®i ra /get_ticket", 
" ta muèn ®em tê nµy ng©n phiÕu ë ng­¬i n¬i nµy thùc hiÖn liÔu /pay_ticket", 
" ta muèn ®em tê nµy ng©n phiÕu ®æi thµnh ®ång tiÒn /change_ticket_to_coin", 
" tra mét chót ta ë n¬i nµy chøa bao nhiªu ng©n phiÕu /show_ticket", 
" tïy tiÖn ®i d¹o mét chót /no" 
}; 

local talk = ""; 
if (GetSex() == 0) then 
talk = " tiÒn Trang l·o b¶n # thiÕu hiÖp cÇn thø g× phôc vô ? "; 
else 
talk = " tiÒn Trang l·o b¶n # c« n­¬ng cÇn thø g× phôc vô ? "; 
end 

local btns ={} 
if (SYSCFG_GAMEBANK_TICKET_GET) then 
tinsert(btns, msg[1]) 
end 

if (SYSCFG_GAMEBANK_TICKET_PAY) then 
tinsert(btns, msg[2]) 
end 

if (SYSCFG_GAMEBANK_TICKET_COIN) then 
tinsert(btns, msg[3]) 
end 

tinsert(btns, msg[4]) 
tinsert(btns, msg[5]) 

Say(talk, getn(btns), btns); 
end 

function use_ingot() 
local msg = { 
" ta muèn lÊy c¸ nguyªn b¶o ®i ra /get_ingot", 
" ta muèn ®­a c¸i nµy nguyªn b¶o ë ng­¬i n¬i nµy thùc hiÖn liÔu /pay_ingot", 
" ta muèn ®­a c¸i nµy nguyªn b¶o ®æi thµnh ®ång tiÒn /change_ingot_to_coin", 
" tra mét chót ta ë n¬i nµy chøa bao nhiªu nguyªn b¶o /show_ingot", 
" tïy tiÖn ®i d¹o mét chót /no" 
}; 

local talk = ""; 
if (GetSex() == 0) then 
talk = " tiÒn Trang l·o b¶n # thiÕu hiÖp cÇn thø g× phôc vô ? "; 
else 
talk = " tiÒn Trang l·o b¶n # c« n­¬ng cÇn thø g× phôc vô ? "; 
end 

local btns ={} 
if (SYSCFG_GAMEBANK_GOLD_GET or SYSCFG_GAMEBANK_SILVER_GET) then 
tinsert(btns, msg[1]) 
end 

if (SYSCFG_GAMEBANK_GOLD_PAY or SYSCFG_GAMEBANK_SILVER_PAY) then 
tinsert(btns, msg[2]) 
end 

if (SYSCFG_GAMEBANK_GOLD_COIN or SYSCFG_GAMEBANK_SILVER_COIN) then 
tinsert(btns, msg[3]) 
end 

tinsert(btns, msg[4]) 
tinsert(btns, msg[5]) 

Say(talk, getn(btns), btns); 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - tuÇn tra ng©n phiÕu -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function show_ticket() 
	local count = GetExtPoint(EXTPOINT_TICKET) + GetExtPoint(EXTPOINT_TICKET_NEW);
if (count >= EXTPOINT_MAXVAL or count <= 0) then 
Say("TiÒn Trang l·o b¶n # kh¸ch quan b©y giê kh«ng cã ë tiÓu sè göi tån ng©n phiÕu . ", 1,"BiÕt /no") 
else 
Say("<#> tiÒn Trang l·o b¶n # kh¸ch quan ë tiÓu sè tæng céng göi chøa <color=green>" .. count .. "<color> tÊm ng©n phiÕu . ", 1,"BiÕt /no") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - tuÇn tra nguyªn b¶o -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function show_ingot() 
i = GetExtPoint(1) 
if (i >= 32768) then 
i = 0 
end 
if (i <= 0) then 
Say("TiÒn Trang l·o b¶n # kh¸ch quan b©y giê kh«ng cã ë tiÓu sè göi tån vµng b¹c nguyªn b¶o . ",1,"BiÕt /no") 
else 
Say("<#> tiÒn Trang l·o b¶n # tiÓu sè së göi tån ®Ých nguyªn b¶o nhÊt luËt lÊy ng©n nguyªn b¶o ®Õm hÕt , mçi mét kim nguyªn b¶o sÏ chiÕt to¸n thµnh bèn ng©n nguyªn b¶o . kh¸ch quan ë tiÓu sè tæng céng göi chøa "..i.." c¸ ng©n nguyªn b¶o . ",1,"BiÕt /no") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - lÊy nguyªn b¶o -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function get_ingot() 
-- script viet hoa By http://tranhba.com  Talk(1,"","TiÒn Trang l·o b¶n # thËt xin lçi , nµy h¹ng nghiÖp vô ®ang chuÈn bÞ trung , t¹m thêi cßn ch­a më th«ng , xin/mêi hai ngµy n÷a trë l¹i . ") 
i = GetExtPoint(1) 
if (i >= 32768) then 
i = 0 
end 
if (i <= 0) then -- script viet hoa By http://tranhba.com  kh«ng cã ph¸t triÓn ®iÓm ®Õm 
Talk(1,"","TiÒn Trang l·o b¶n # thËt xin lçi , kh¸ch quan ngµi còng kh«ng cã ë tiÓu sè göi tån vµng b¹c nguyªn b¶o . ") 
elseif (i < 4) then -- script viet hoa By http://tranhba.com  ch­a ®ñ 4 , trùc tiÕp cho ng©n nguyªn b¶o 
if (SYSCFG_GAMEBANK_SILVER_GET) then -- script viet hoa By http://tranhba.com  cã hay kh«ng cho phÐp lÊy ng©n nguyªn b¶o ? 
get_ingot_10() 
end 
-- script viet hoa By http://tranhba.com  elseif (mod(i, 4) == 0) then -- script viet hoa By http://tranhba.com  lµ 4 ®Ých chØnh sæ lÇn , trùc tiÕp cho kim nguyªn b¶o 
-- script viet hoa By http://tranhba.com  get_ingot_35() 
else -- script viet hoa By http://tranhba.com  cho phÐp tù ®i lùa chän muèn lÊy kim nguyªn b¶o cßn lµ ng©n nguyªn b¶o 
if (SYSCFG_GAMEBANK_GOLD_GET == nil and SYSCFG_GAMEBANK_SILVER_GET) then -- script viet hoa By http://tranhba.com  kh«ng cho phÐp lÊy kim nguyªn b¶o , nh­ng cho phÐp lÊy ng©n nguyªn b¶o 
get_ingot_10() 
elseif (SYSCFG_GAMEBANK_GOLD_GET and SYSCFG_GAMEBANK_SILVER_GET == nil) then -- script viet hoa By http://tranhba.com  kh«ng cho phÐp lÊy ng©n nguyªn b¶o , nh­ng cho phÐp lÊy kim nguyªn b¶o 
get_ingot_35() 
else 
Say("TiÒn Trang l·o b¶n # kh¸ch quan ngµi ë tiÓu sè göi chøa vµng b¹c hai lo¹i nguyªn b¶o , kh«ng biÕt ngµi muèn lÊy lo¹i nµo ®©y ? ",3," lÊy c¸ kim nguyªn b¶o /get_ingot_35"," lÊy c¸ ng©n nguyªn b¶o /get_ingot_10","Kh«ng lÊy liÔu /no") 
end 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - lÊy ng©n phiÕu -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function get_ticket() 
if (SYSCFG_GAMEBANK_TICKET_GET == nil) then -- script viet hoa By http://tranhba.com  sai lÇm ~~ 
print("get_ticket have close, but something is wrong..."); 
Msg2Player("Chøc n¨ng bÞ lçi #"); 
return 
end 

	local count = GetExtPoint(EXTPOINT_TICKET) + GetExtPoint(EXTPOINT_TICKET_NEW);
local msg = ""; 
if (count >= EXTPOINT_MAXVAL or count <= 0) then -- script viet hoa By http://tranhba.com  kh«ng cã ph¸t triÓn ®iÓm ®Õm 
msg = " tiÒn Trang l·o b¶n # thËt xin lçi , kh¸ch quan ngµi còng kh«ng cã ë tiÓu sè göi tån ng©n phiÕu . "; 
Talk(1, "", msg) 
else 
Say("TiÒn Trang l·o b¶n # kh¸ch quan ngµi x¸c ®Þnh cÇn ë bæn ®iÕm lÊy ng©n phiÕu sao ? ( ®iÓm x¸c ®Þnh sau thiÕt chí thèi lui ra kh¸ch hµng b­ng #)", 2,"X¸c ®Þnh /get_ticketok","Hñy bá /no"); 
end 
end 

function get_ticketok() 
local nCountOld = GetExtPoint(EXTPOINT_TICKET); 
local nCountNew = GetExtPoint(EXTPOINT_TICKET_NEW); 
if (nCountOld > 0) then 
PayExtPoint(EXTPOINT_TICKET, 1); 
Msg2Player("§ang v× ngµi lÊy ®­îc ng©n phiÕu trung # ë chç nµy trong qu¸ tr×nh thiÕt chí thèi lui ra trß ch¬i # xin chê mét chót . . . ") 
elseif (nCountNew > 0) then 
PayExtPoint(EXTPOINT_TICKET_NEW, 1); 
Msg2Player("§ang v× ngµi lÊy ®­îc ng©n phiÕu trung # ë chç nµy trong qu¸ tr×nh thiÕt chí thèi lui ra trß ch¬i # xin chê mét chót . . . ") 
else 
msg = " tiÒn Trang l·o b¶n # thËt xin lçi , kh¸ch quan ngµi còng kh«ng cã ë tiÓu sè göi tån ng©n phiÕu . "; 
Talk(1, "", msg); 
end; 
end 

function get_ingot_35() 
if (SYSCFG_GAMEBANK_GOLD_GET == nil) then -- script viet hoa By http://tranhba.com  sai lÇm ~~ 
print("get_gold35 have close, but something is wrong..."); 
Msg2Player("Chøc n¨ng bÞ lçi #"); 
return 
end 

if (GetExtPoint(1) < 4) then 
Talk(1,"","TiÒn Trang l·o b¶n # thËt xin lçi , chóng ta tr­íng vèn trung ngµi ®Ých ghi chÐp d­êng nh­ cã c¸i g× kh«ng ®óng , xin/mêi ngµi v©n v©n , chóng ta sÏ mau sím cho ngµi h¹ch thËt tra râ . b©y giê ng­îng ngïng , cßn ph¶i xin/mêi ngµi ®em kim nguyªn b¶o tr­íc tiªn ë chóng ta n¬i nµy nhiÒu ®Ó mét ®o¹n ng¾n thêi gian . ") 
return 
end 
Say("TiÒn Trang l·o b¶n # kh¸ch quan ngµi x¸c ®Þnh cÇn ë bæn ®iÕm lÊy kim nguyªn b¶o sao ? ( ®iÓm x¸c ®Þnh sau thiÕt chí thèi lui ra kh¸ch hµng b­ng #)", 2,"X¸c ®Þnh /get_ingot35ok","Hñy bá /no"); 
end 

function get_ingot35ok() 
PayExtPoint(1,4) 
Msg2Player("§ang v× ngµi lÊy ®­îc nguyªn b¶o trung # ë chç nµy trong qu¸ tr×nh thiÕt chí thèi lui ra trß ch¬i # xin chê mét chót . . . ") 
end 

function get_ingot_10() 
if (SYSCFG_GAMEBANK_SILVER_GET == nil) then -- script viet hoa By http://tranhba.com  sai lÇm ~~ 
print("get_silver10 have close, but something is wrong..."); 
Msg2Player("Chøc n¨ng bÞ lçi #"); 
return 
end 

if (GetExtPoint(1) < 1) then -- script viet hoa By http://tranhba.com  tiÓu t¹p tiªu phÝ thµnh c«ng 
Talk(1,"","TiÒn Trang l·o b¶n # thËt xin lçi , chóng ta tr­íng vèn trung ngµi ®Ých ghi chÐp d­êng nh­ cã c¸i g× kh«ng ®óng , xin/mêi ngµi v©n v©n , chóng ta sÏ mau sím cho ngµi h¹ch thËt tra râ . b©y giê ng­îng ngïng , cßn ph¶i xin/mêi ngµi ®em ng©n nguyªn b¶o tr­íc tiªn ë chóng ta n¬i nµy nhiÒu ®Ó mét ®o¹n ng¾n thêi gian . ") 
return 
end 
Say("TiÒn Trang l·o b¶n # kh¸ch quan ngµi x¸c ®Þnh cÇn ë bæn ®iÕm lÊy ng©n nguyªn b¶o sao ? ( ®iÓm x¸c ®Þnh sau thiÕt chí thèi lui ra kh¸ch hµng b­ng #)", 2,"X¸c ®Þnh /get_ingot10ok","Hñy bá /no"); 
end 

function get_ingot10ok() 
PayExtPoint(1,1) 
Msg2Player("§ang v× ngµi lÊy ®­îc ng©n nguyªn b¶o trung # ë chç nµy trong qu¸ tr×nh thiÕt chí thèi lui ra trß ch¬i # xin chê mét chót . . . ") 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - thùc hiÖn nguyªn b¶o -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function pay_ingot() 
-- script viet hoa By http://tranhba.com  Talk(1,"","TiÒn Trang l·o b¶n # thËt xin lçi , nµy h¹ng nghiÖp vô ®ang chuÈn bÞ trung , t¹m thêi cßn ch­a më th«ng , xin/mêi hai ngµy n÷a trë l¹i . ") 
i = GetItemCountEx(343) 
j = GetItemCountEx(342) 
if (i > 0) and (j > 0) and (SYSCFG_GAMEBANK_GOLD_PAY and SYSCFG_GAMEBANK_SILVER_PAY)then -- script viet hoa By http://tranhba.com  hai lo¹i ®Òu cã , hái th¨m thùc hiÖn lo¹i nµo 
Say("TiÒn Trang l·o b¶n # ngµi trªn ng­êi mang theo rÊt nhiÒu nguyªn b¶o a , ngµi muèn thùc hiÖn c¸i nµo ®©y ? ",5,"§em kim nguyªn b¶o thùc hiÖn thµnh 25 ngµy /pay_ingot_35a","§em kim nguyªn b¶o thùc hiÖn thµnh 600 ®iÓm /pay_ingot_35b","§em ng©n nguyªn b¶o thùc hiÖn thµnh 6 ngµy /pay_ingot_10a","§em ng©n nguyªn b¶o thùc hiÖn thµnh 150 ®iÓm /pay_ingot_10b","Kh«ng thùc hiÖn liÔu /no") 
elseif (i > 0) and (SYSCFG_GAMEBANK_GOLD_PAY) then -- script viet hoa By http://tranhba.com  chØ cã kim nguyªn b¶o 
Say("TiÒn Trang l·o b¶n # kh«ng thµnh vÊn ®Ò , ngµi muèn ®em trªn ng­êi <color=red> kim nguyªn b¶o <color> thùc hiÖn thµnh c¸i g× h×nh thøc ®©y ? ",3,"§em kim nguyªn b¶o thùc hiÖn thµnh 25 ngµy /pay_ingot_35a","§em kim nguyªn b¶o thùc hiÖn thµnh 600 ®iÓm /pay_ingot_35b","Kh«ng thùc hiÖn liÔu /no") 
elseif (j > 0) and (SYSCFG_GAMEBANK_SILVER_PAY) then -- script viet hoa By http://tranhba.com  chØ cã ng©n nguyªn b¶o 
Say("TiÒn Trang l·o b¶n # kh«ng thµnh vÊn ®Ò , ngµi muèn ®em trªn ng­êi <color=green> ng©n nguyªn b¶o <color> thùc hiÖn thµnh c¸i g× h×nh thøc ®©y ? ",3,"§em ng©n nguyªn b¶o thùc hiÖn thµnh 6 ngµy /pay_ingot_10a","§em ng©n nguyªn b¶o thùc hiÖn thµnh 150 ®iÓm /pay_ingot_10b","Kh«ng thùc hiÖn liÔu /no") 
elseif (i <= 0 and SYSCFG_GAMEBANK_GOLD_PAY) or (j <= 0 and SYSCFG_GAMEBANK_SILVER_PAY) then -- script viet hoa By http://tranhba.com  mét lo¹i ®Òu kh«ng cã 
Say("TiÒn Trang l·o b¶n # ngµi b©y giê kh«ng cã mang nguyªn b¶o a #",1,"§óng råi , ta ®Ó quªn ë nhµ /no") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - thùc hiÖn ng©n phiÕu -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function pay_ticket() 
if (SYSCFG_GAMEBANK_TICKET_PAY == nil) then -- script viet hoa By http://tranhba.com  sai lÇm ~~ 
print("pay_ticket have close, but something is wrong..."); 
Msg2Player("Chøc n¨ng bÞ lçi #"); 
return 
end 

local msg = { 
" tiÒn Trang l·o b¶n # kh«ng thµnh vÊn ®Ò , ngµi muèn ®em trªn ng­êi <color=red> ng©n phiÕu <color> thùc hiÖn thµnh c¸i g× h×nh thøc ®©y ? ", 
" ®em ng©n phiÕu thùc hiÖn thµnh 30 giê /pay_ticket_hours", 
" ®em ng©n phiÕu thùc hiÖn thµnh 7 ngµy /pay_ticket_days", 
" kh«ng thùc hiÖn liÔu /no" 
}; 
	local count = GetItemCountEx(QUESTKEY_TICKET) + GetItemCountEx(QUESTKEY_TICKET_NEW);
if (count > 0) then -- script viet hoa By http://tranhba.com  hái th¨m thùc hiÖn lo¹i nµo 
Say(msg[1], 3, msg[2], msg[3], msg[4]) 
else 
Say("TiÒn Trang l·o b¶n # ngµi b©y giê kh«ng cã mang ng©n phiÕu a #", 1,"§óng råi , ta ®Ó quªn ë nhµ /no") 
end 
end 

-- script viet hoa By http://tranhba.com  lÊy ®­îc khÊu trõ ng©n phiÕu ®Ých chñng lo¹i 
function pay_ticket_typediff() 
local tab_TicketType = { 
{QUESTKEY_TICKET, 2}, 
{QUESTKEY_TICKET_NEW, 3} 
}; 
local nOldSilverCount = GetItemCountEx(QUESTKEY_TICKET); 
local nNewSilverCount = GetItemCountEx(QUESTKEY_TICKET_NEW); 
if (nOldSilverCount > 0) then 
return tab_TicketType[1]; 
elseif (nNewSilverCount > 0) then 
return tab_TicketType[2]; 
else 
return nil; 
end; 
end; 
-- script viet hoa By http://tranhba.com  ®em ng©n phiÕu thùc hiÖn thµnh 30 giê 
function pay_ticket_hours() 
local tab_TicketType = pay_ticket_typediff(); 
if (not tab_TicketType) then 
Say("TiÒn Trang l·o b¶n # ngµi b©y giê kh«ng cã mang ng©n phiÕu a #", 1,"§óng råi , ta ®Ó quªn ë nhµ /no"); 
return 
end; 
DelItemEx(tab_TicketType[1]); 
UseSilver(tab_TicketType[2], 0, 1) 
-- script viet hoa By http://tranhba.com  SaveQuickly() 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 
WriteGoldLog( GetAccount().."("..GetName()..") USE a TICKET for 30 HOUR CHARGE", 0, 0, 0, -1 ); 
Say("TiÒn Trang l·o b¶n #<color=red> ng©n phiÕu <color> ®æi thµnh <color=red>30 giê <color> kh«ng cã lÇm , mêi kh¸ch quan h¹ch tra . ", 1,"BiÕt /no") 
end 

-- script viet hoa By http://tranhba.com  ®em ng©n phiÕu thùc hiÖn thµnh 7 ngµy 
function pay_ticket_days() 
local tab_TicketType = pay_ticket_typediff(); 
if (not tab_TicketType) then 
Say("TiÒn Trang l·o b¶n # ngµi b©y giê kh«ng cã mang ng©n phiÕu a #", 1,"§óng råi , ta ®Ó quªn ë nhµ /no"); 
return 
end; 
DelItemEx(tab_TicketType[1]) 
UseSilver(tab_TicketType[2], 1, 1) 
-- script viet hoa By http://tranhba.com  SaveQuickly() 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 
WriteGoldLog( GetAccount().."("..GetName()..") USE a TICKET for 7 DAY CHARGE", 0, 0, 0, -1 ); 
Say("TiÒn Trang l·o b¶n #<color=red> ng©n phiÕu <color> ®æi thµnh <color=red>7 ngµy <color> kh«ng cã lÇm , mêi kh¸ch quan h¹ch tra . ", 1,"BiÕt /no") 
end 

function pay_ingot_35a() 
if (SYSCFG_GAMEBANK_GOLD_PAY == nil) then -- script viet hoa By http://tranhba.com  sai lÇm ~~ 
print("pay_gold35 have close, but something is wrong..."); 
Msg2Player("Chøc n¨ng bÞ lçi #"); 
return 
end 

if (GetItemCountEx(343) > 0) then 
DelItemEx(343) 
UseSilver(0,1,1) 
-- script viet hoa By http://tranhba.com  SaveQuickly() 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 
WriteGoldLog( GetAccount().."("..GetName()..") USE a GOLD for 25 DAY CHARGE", -1, 0, 0, 0 ); 
Say("TiÒn Trang l·o b¶n #<color=red> kim nguyªn b¶o <color> ®æi thµnh <color=red>25 ngµy <color> kh«ng cã lÇm , mêi kh¸ch quan h¹ch tra . ",1,"BiÕt /no") 
end 
end 

function pay_ingot_35b() 
if (SYSCFG_GAMEBANK_GOLD_PAY == nil) then -- script viet hoa By http://tranhba.com  sai lÇm ~~ 
print("pay_gold35 have close, but something is wrong..."); 
Msg2Player("Chøc n¨ng bÞ lçi #"); 
return 
end 

if (GetItemCountEx(343) > 0) then 
DelItemEx(343) 
UseSilver(0,0,1) 
-- script viet hoa By http://tranhba.com  SaveQuickly() 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 
WriteGoldLog( GetAccount().."("..GetName()..") USE a GOLD for 600 POINT CHARGE", -1, 0, 0, 0 ); 
Say("TiÒn Trang l·o b¶n #<color=red> kim nguyªn b¶o <color> ®æi thµnh <color=green>600 ®iÓm <color> kh«ng cã lÇm , mêi kh¸ch quan h¹ch tra . ",1,"BiÕt /no") 
end 
end 

function pay_ingot_10a() 
if (SYSCFG_GAMEBANK_SILVER_PAY == nil) then -- script viet hoa By http://tranhba.com  sai lÇm ~~ 
print("pay_silver10 have close, but something is wrong..."); 
Msg2Player("Chøc n¨ng bÞ lçi #"); 
return 
end 

if (GetItemCountEx(342) > 0) then 
DelItemEx(342) 
UseSilver(1,1,1) 
-- script viet hoa By http://tranhba.com  SaveQuickly() 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 
WriteGoldLog( GetAccount().."("..GetName()..") USE a SILVER for 6 DAY CHARGE", 0, -1, 0, 0 ); 
Say("TiÒn Trang l·o b¶n #<color=green> ng©n nguyªn b¶o <color> ®æi thµnh <color=red>6 ngµy <color> kh«ng cã lÇm , mêi kh¸ch quan h¹ch tra . ",1,"BiÕt /no") 
end 
end 

function pay_ingot_10b() 
if (SYSCFG_GAMEBANK_SILVER_PAY == nil) then -- script viet hoa By http://tranhba.com  sai lÇm ~~ 
print("pay_silver10 have close, but something is wrong..."); 
Msg2Player("Chøc n¨ng bÞ lçi #"); 
return 
end 

if (GetItemCountEx(342) > 0) then 
DelItemEx(342) 
UseSilver(1,0,1) 
-- script viet hoa By http://tranhba.com  SaveQuickly() 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 
WriteGoldLog( GetAccount().."("..GetName()..") USE a SILVER for 150 POINT CHARGE", 0, -1, 0, 0 ); 
Say("TiÒn Trang l·o b¶n #<color=green> ng©n nguyªn b¶o <color> ®æi thµnh <color=green>150 ®iÓm <color> kh«ng cã lÇm , mêi kh¸ch quan h¹ch tra . ",1,"BiÕt /no") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - x¸c nhËn ng©n phiÕu ®æi ®ång tiÒn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function change_ticket_to_coin() 
if (SYSCFG_GAMEBANK_TICKET_COIN == nil) then -- script viet hoa By http://tranhba.com  sai lÇm ~~ 
print("coin_ticket have close, but something is wrong..."); 
Msg2Player("Chøc n¨ng bÞ lçi #"); 
return 
end 

	local count = GetItemCountEx(QUESTKEY_TICKET) + GetItemCountEx(QUESTKEY_TICKET_NEW);
if (count > 0) then 
Say("TiÒn Trang l·o b¶n # ngµi nhÊt ®Þnh ph¶i ®em ng©n phiÕu ®æi thµnh ®ång tiÒn sao ? ", 2, "<#> ®em ng©n phiÕu ®æi thµnh "..COIN_CHANGE_COUNT_OF_TICKET.."<#> c¸ ®ång tiÒn /confirm_ticket_to_coin","Kh«ng ®æi /no"); 
else 
Say("TiÒn Trang l·o b¶n # ngµi b©y giê kh«ng cã mang ng©n phiÕu a #", 1,"§óng råi , ta ®Ó quªn ë nhµ /no"); 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ng©n phiÕu ®æi ®ång tiÒn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function confirm_ticket_to_coin() 
local tab_TicketType = pay_ticket_typediff(); 
if (not tab_TicketType) then 
Say("TiÒn Trang l·o b¶n # ngµi b©y giê kh«ng cã mang ng©n phiÕu a #", 1,"§óng råi , ta ®Ó quªn ë nhµ /no"); 
return 
end; 
DelItemEx(tab_TicketType[1]); 
AddStackItem(COIN_CHANGE_COUNT_OF_TICKET, 4, 417, 1, 1, 0, 0, 0); 
UseSilver(tab_TicketType[2], 2, 1); -- script viet hoa By http://tranhba.com  ng©n phiÕu ®æi v× ®ång tiÒn ®Ých tiªu hao thèng kª 
-- script viet hoa By http://tranhba.com  SaveQuickly(); 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 
WriteGoldLog( GetAccount().."("..GetName()..") CHANGE a TICKET into "..COIN_CHANGE_COUNT_OF_TICKET.." COINS", 0, 0, COIN_CHANGE_COUNT_OF_TICKET, -1 ); 
Say( "<#> tiÒn Trang l·o b¶n # ngµi ®Ých ng©n phiÕu ®· thµnh c«ng ®æi thµnh " .. COIN_CHANGE_COUNT_OF_TICKET .. "<#> c¸ ®ång tiÒn , mêi kh¸ch quan h¹ch tra . ", 2,"BiÕt /no","N÷a ®æi mét Ýt ®ång tiÒn /change_ticket_to_coin" ); 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - nguyªn b¶o ®æi ®ång tiÒn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function change_ingot_to_coin() 
local nGoldCount = GetItemCountEx( 343 ); -- script viet hoa By http://tranhba.com  kim nguyªn b¶o c¸ ®Õm 
local nSilverCount = GetItemCountEx( 342 ); -- script viet hoa By http://tranhba.com  ng©n nguyªn b¶o c¸ ®Õm 

if( nGoldCount > 0 and nSilverCount > 0 ) and (SYSCFG_GAMEBANK_GOLD_COIN and SYSCFG_GAMEBANK_SILVER_COIN) then -- script viet hoa By http://tranhba.com  hai lo¹i ®Òu cã , hái th¨m thùc hiÖn lo¹i nµo 
Say("TiÒn Trang l·o b¶n # ngµi muèn ®æi c¸i nµo nguyªn b¶o ®©y ? ", 3, "<#> ®em kim nguyªn b¶o ®æi thµnh "..COIN_CHANGE_COUNT_OF_GOLD.."<#> c¸ ®ång tiÒn /change_gold_to_coin", "<#> ®em ng©n nguyªn b¶o ®æi thµnh "..COIN_CHANGE_COUNT_OF_SILVER.."<#> c¸ ®ång tiÒn /change_silver_to_coin","Kh«ng ®æi /no"); 
elseif( nGoldCount > 0 and SYSCFG_GAMEBANK_GOLD_COIN) then -- script viet hoa By http://tranhba.com  chØ cã kim nguyªn b¶o 
Say("TiÒn Trang l·o b¶n # ngµi muèn ®æi c¸i nµo nguyªn b¶o ®©y ? ", 2, "<#> ®em kim nguyªn b¶o ®æi thµnh "..COIN_CHANGE_COUNT_OF_GOLD.."<#> c¸ ®ång tiÒn /change_gold_to_coin","Kh«ng ®æi /no"); 
elseif( nSilverCount > 0 and SYSCFG_GAMEBANK_SILVER_COIN) then -- script viet hoa By http://tranhba.com  chØ cã ng©n nguyªn b¶o 
Say("TiÒn Trang l·o b¶n # ngµi muèn ®æi c¸i nµo nguyªn b¶o ®©y ? ", 2, "<#> ®em ng©n nguyªn b¶o ®æi thµnh "..COIN_CHANGE_COUNT_OF_SILVER.."<#> c¸ ®ång tiÒn /change_silver_to_coin","Kh«ng ®æi /no"); 
elseif (nGoldCount <= 0 and SYSCFG_GAMEBANK_GOLD_COIN) or (nSilverCount <= 0 and SYSCFG_GAMEBANK_SILVER_COIN) then -- script viet hoa By http://tranhba.com  mét lo¹i ®Òu kh«ng cã 
Say("TiÒn Trang l·o b¶n # ngµi b©y giê kh«ng cã mang nguyªn b¶o a #", 1,"§óng råi , ta ®Ó quªn ë nhµ /no"); 
end 
end 

function change_gold_to_coin() 
if (SYSCFG_GAMEBANK_GOLD_COIN == nil) then -- script viet hoa By http://tranhba.com  sai lÇm ~~ 
print("coin_gold have close, but something is wrong..."); 
Msg2Player("Chøc n¨ng bÞ lçi #"); 
return 
end 

if (GetItemCountEx(343) > 0) then 
DelItemEx( 343 ); 
AddStackItem( COIN_CHANGE_COUNT_OF_GOLD, 4, 417, 1, 1, 0, 0, 0 ); 
UseSilver(0, 2, 1); -- script viet hoa By http://tranhba.com  kim nguyªn b¶o ®æi v× ®ång tiÒn ®Ých tiªu hao thèng kª 
-- script viet hoa By http://tranhba.com  SaveQuickly(); 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 
WriteGoldLog( GetAccount().."("..GetName()..") CHANGE a GOLD into "..COIN_CHANGE_COUNT_OF_GOLD.." COINS", -1, 0, COIN_CHANGE_COUNT_OF_GOLD, 0 ); 
local nGoldCount = GetItemCountEx( 343 ); -- script viet hoa By http://tranhba.com  kim nguyªn b¶o c¸ ®Õm 
local nSilverCount = GetItemCountEx( 342 ); -- script viet hoa By http://tranhba.com  ng©n nguyªn b¶o c¸ ®Õm 
if( nGoldCount > 0 or nSilverCount > 0 ) then 
Say( "<#> tiÒn Trang l·o b¶n # ngµi ®Ých kim nguyªn b¶o ®· thµnh c«ng ®æi thµnh "..COIN_CHANGE_COUNT_OF_GOLD.."<#> c¸ ®ång tiÒn , mêi kh¸ch quan h¹ch tra . ", 2,"BiÕt /no","N÷a ®æi mét Ýt ®ång tiÒn /change_ingot_to_coin" ); 
else 
Say( "<#> tiÒn Trang l·o b¶n # ngµi ®Ých kim nguyªn b¶o ®· thµnh c«ng ®æi thµnh "..COIN_CHANGE_COUNT_OF_GOLD.."<#> c¸ ®ång tiÒn , mêi kh¸ch quan h¹ch tra . ", 1,"BiÕt /no" ); 
end 
end 
end 

function change_silver_to_coin() 
if (SYSCFG_GAMEBANK_SILVER_COIN == nil) then -- script viet hoa By http://tranhba.com  sai lÇm ~~ 
print("coin_silver have close, but something is wrong..."); 
Msg2Player("Chøc n¨ng bÞ lçi #"); 
return 
end 

if (GetItemCountEx(342) > 0) then 
DelItemEx( 342 ); 
AddStackItem( COIN_CHANGE_COUNT_OF_SILVER, 4, 417, 1, 1, 0, 0, 0 ); 
UseSilver(1, 2, 1); -- script viet hoa By http://tranhba.com  ng©n phiÕu ®æi v× ®ång tiÒn ®Ých tiªu hao thèng kª 
-- script viet hoa By http://tranhba.com  SaveQuickly(); 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 
WriteGoldLog( GetAccount().."("..GetName()..") CHANGE a SILVER into "..COIN_CHANGE_COUNT_OF_SILVER.." COINS", 0, -1, COIN_CHANGE_COUNT_OF_SILVER, 0 ); 
local nGoldCount = GetItemCountEx( 343 ); -- script viet hoa By http://tranhba.com  kim nguyªn b¶o c¸ ®Õm 
local nSilverCount = GetItemCountEx( 342 ); -- script viet hoa By http://tranhba.com  ng©n nguyªn b¶o c¸ ®Õm 
if( nGoldCount > 0 or nSilverCount > 0 ) then 
Say( "<#> tiÒn Trang l·o b¶n # ngµi ®Ých ng©n nguyªn b¶o ®· thµnh c«ng ®æi thµnh "..COIN_CHANGE_COUNT_OF_SILVER.."<#> c¸ ®ång tiÒn , mêi kh¸ch quan h¹ch tra . ", 2,"BiÕt /no","N÷a ®æi mét Ýt ®ång tiÒn /change_ingot_to_coin" ); 
else 
Say( "<#> tiÒn Trang l·o b¶n # ngµi ®Ých ng©n nguyªn b¶o ®· thµnh c«ng ®æi thµnh "..COIN_CHANGE_COUNT_OF_SILVER.."<#> c¸ ®ång tiÒn , mêi kh¸ch quan h¹ch tra . ", 1,"BiÕt /no" ); 
end 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  liªn quan tíi ®ång tiÒn -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function onAboutCoin() 
local msg = { 
" tiÒn Trang l·o b¶n # ®ång tiÒn cã thÓ tõ ta chç nµy dïng nguyªn b¶o hoÆc ng©n phiÕu ®æi ph¶i , nguyªn b¶o hoÆc ng©n phiÕu ®æi thµnh ®ång tiÒn sau kh«ng thÓ ®æi l¹i trë vÒ . ", 
"<#> tiÒn Trang l·o b¶n # mét <color=yellow> kim nguyªn b¶o <color> nh­ng ®æi <color=yellow>"..COIN_CHANGE_COUNT_OF_GOLD.."<color> mai ®ång tiÒn , mét <color=yellow> ng©n nguyªn b¶o <color> nh­ng ®æi <color=yellow>"..COIN_CHANGE_COUNT_OF_SILVER.."<color> mai , mét tê <color=yellow> ng©n phiÕu <color> nh­ng ®æi <color=yellow>"..COIN_CHANGE_COUNT_OF_TICKET.."<color> mai . ", 
" tiÒn Trang l·o b¶n # dïng ®ång tiÒn cã thÓ ë c¸c thµnh phè ®Ých sè kh«ng phiÕn chç mua c¸c lo¹i vËt hi h÷u phÈm . ", 
" tiÒn Trang l·o b¶n # bªn tr¸i kiÖn ®an kÝch cÇn ®iÖp ®Ó ®Ých ®ång tiÒn , con chuét di ®éng ®Õn kh¸c mét ®èng ®ång tiÒn th­îng bªn tr¸i kiÖn ®an kÝch , hai ®èng ®ång tiÒn sÏ ®iÖp th¶ vµo cïng nhau , mçi ®èng ®ång tiÒn ®iÖp ®Ó ®Ých th­îng h¹n lµ <color=yellow>100<color> c¸ . ®Ì l¹i <color=yellow>Shift<color> kiÖn , bªn tr¸i kiÖn ®an kÝch cÇn hñy ®i ph©n ®Ých ®ång tiÒn , ®­a vµo muèn hñy ®i ra ®Ých ®ång tiÒn c¸ ®Õm , lµ ®­îc hoµn thµnh hñy ®i ph©n . " 
}; 
Talk(4, "", msg[1], msg[2], msg[3], msg[4]); 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function no() 
end 
