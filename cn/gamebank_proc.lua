-- script viet hoa By http://tranhba.com  tr��c khi an # ch�c n�ng # ti�n Trang l�o b�n 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-01-06) t� th�ng nh�t ch�c n�ng di ��ng x� l� ng�n phi�u ��n ch� n�y c� m�t 
-- script viet hoa By http://tranhba.com  Update: Fanghao_Wu(2004-9-04) gia t�ng nguy�n b�o ��i ��ng ti�n ch�c n�ng 

-- script viet hoa By http://tranhba.com  Include("\\script\\global\\Ǯׯ����.lua")

-- script viet hoa By http://tranhba.com  function main(sel) 
-- script viet hoa By http://tranhba.com  Talk(1,"main_proc","Ti�n Trang l�o b�n # ta ��y ti�n n�y trang uy t�n lu�n lu�n ��u t�t r�t , t� kh�ng g�t ng��i . ") 
-- script viet hoa By http://tranhba.com  end; 

Include("\\script\\global\\systemconfig.lua") -- script viet hoa By http://tranhba.com  h� th�ng ph�i tr� 
Include("\\script\\global\\head_qianzhuang.lua") -- script viet hoa By http://tranhba.com  ��u ��nh ngh�a 

function gamebank_proc() 
local msg = { 
" ta mu�n qu�n l� ta nguy�n b�o /use_ingot", 
" ta mu�n qu�n l� ta ng�n phi�u /use_ticket", 
" li�n quan t�i ��ng ti�n /onAboutCoin", 
" t�y ti�n �i d�o m�t ch�t /no" 
}; 

local talk = ""; 
if (GetSex() == 0) then 
talk = " ti�n Trang l�o b�n # ��ng r�i v� thi�u hi�p kia mu�n c�i g� ph�c v� ? "; 
else 
talk = " ti�n Trang l�o b�n # ��ng r�i v� c� n��ng n�y mu�n c�i g� ph�c v� ? "; 
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
" ta mu�n l�y t�m ng�n phi�u �i ra /get_ticket", 
" ta mu�n �em t� n�y ng�n phi�u � ng��i n�i n�y th�c hi�n li�u /pay_ticket", 
" ta mu�n �em t� n�y ng�n phi�u ��i th�nh ��ng ti�n /change_ticket_to_coin", 
" tra m�t ch�t ta � n�i n�y ch�a bao nhi�u ng�n phi�u /show_ticket", 
" t�y ti�n �i d�o m�t ch�t /no" 
}; 

local talk = ""; 
if (GetSex() == 0) then 
talk = " ti�n Trang l�o b�n # thi�u hi�p c�n th� g� ph�c v� ? "; 
else 
talk = " ti�n Trang l�o b�n # c� n��ng c�n th� g� ph�c v� ? "; 
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
" ta mu�n l�y c� nguy�n b�o �i ra /get_ingot", 
" ta mu�n ��a c�i n�y nguy�n b�o � ng��i n�i n�y th�c hi�n li�u /pay_ingot", 
" ta mu�n ��a c�i n�y nguy�n b�o ��i th�nh ��ng ti�n /change_ingot_to_coin", 
" tra m�t ch�t ta � n�i n�y ch�a bao nhi�u nguy�n b�o /show_ingot", 
" t�y ti�n �i d�o m�t ch�t /no" 
}; 

local talk = ""; 
if (GetSex() == 0) then 
talk = " ti�n Trang l�o b�n # thi�u hi�p c�n th� g� ph�c v� ? "; 
else 
talk = " ti�n Trang l�o b�n # c� n��ng c�n th� g� ph�c v� ? "; 
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

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - tu�n tra ng�n phi�u -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function show_ticket() 
	local count = GetExtPoint(EXTPOINT_TICKET) + GetExtPoint(EXTPOINT_TICKET_NEW);
if (count >= EXTPOINT_MAXVAL or count <= 0) then 
Say("Ti�n Trang l�o b�n # kh�ch quan b�y gi� kh�ng c� � ti�u s� g�i t�n ng�n phi�u . ", 1,"Bi�t /no") 
else 
Say("<#> ti�n Trang l�o b�n # kh�ch quan � ti�u s� t�ng c�ng g�i ch�a <color=green>" .. count .. "<color> t�m ng�n phi�u . ", 1,"Bi�t /no") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - tu�n tra nguy�n b�o -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function show_ingot() 
i = GetExtPoint(1) 
if (i >= 32768) then 
i = 0 
end 
if (i <= 0) then 
Say("Ti�n Trang l�o b�n # kh�ch quan b�y gi� kh�ng c� � ti�u s� g�i t�n v�ng b�c nguy�n b�o . ",1,"Bi�t /no") 
else 
Say("<#> ti�n Trang l�o b�n # ti�u s� s� g�i t�n ��ch nguy�n b�o nh�t lu�t l�y ng�n nguy�n b�o ��m h�t , m�i m�t kim nguy�n b�o s� chi�t to�n th�nh b�n ng�n nguy�n b�o . kh�ch quan � ti�u s� t�ng c�ng g�i ch�a "..i.." c� ng�n nguy�n b�o . ",1,"Bi�t /no") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - l�y nguy�n b�o -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function get_ingot() 
-- script viet hoa By http://tranhba.com  Talk(1,"","Ti�n Trang l�o b�n # th�t xin l�i , n�y h�ng nghi�p v� �ang chu�n b� trung , t�m th�i c�n ch�a m� th�ng , xin/m�i hai ng�y n�a tr� l�i . ") 
i = GetExtPoint(1) 
if (i >= 32768) then 
i = 0 
end 
if (i <= 0) then -- script viet hoa By http://tranhba.com  kh�ng c� ph�t tri�n �i�m ��m 
Talk(1,"","Ti�n Trang l�o b�n # th�t xin l�i , kh�ch quan ng�i c�ng kh�ng c� � ti�u s� g�i t�n v�ng b�c nguy�n b�o . ") 
elseif (i < 4) then -- script viet hoa By http://tranhba.com  ch�a �� 4 , tr�c ti�p cho ng�n nguy�n b�o 
if (SYSCFG_GAMEBANK_SILVER_GET) then -- script viet hoa By http://tranhba.com  c� hay kh�ng cho ph�p l�y ng�n nguy�n b�o ? 
get_ingot_10() 
end 
-- script viet hoa By http://tranhba.com  elseif (mod(i, 4) == 0) then -- script viet hoa By http://tranhba.com  l� 4 ��ch ch�nh s� l�n , tr�c ti�p cho kim nguy�n b�o 
-- script viet hoa By http://tranhba.com  get_ingot_35() 
else -- script viet hoa By http://tranhba.com  cho ph�p t� �i l�a ch�n mu�n l�y kim nguy�n b�o c�n l� ng�n nguy�n b�o 
if (SYSCFG_GAMEBANK_GOLD_GET == nil and SYSCFG_GAMEBANK_SILVER_GET) then -- script viet hoa By http://tranhba.com  kh�ng cho ph�p l�y kim nguy�n b�o , nh�ng cho ph�p l�y ng�n nguy�n b�o 
get_ingot_10() 
elseif (SYSCFG_GAMEBANK_GOLD_GET and SYSCFG_GAMEBANK_SILVER_GET == nil) then -- script viet hoa By http://tranhba.com  kh�ng cho ph�p l�y ng�n nguy�n b�o , nh�ng cho ph�p l�y kim nguy�n b�o 
get_ingot_35() 
else 
Say("Ti�n Trang l�o b�n # kh�ch quan ng�i � ti�u s� g�i ch�a v�ng b�c hai lo�i nguy�n b�o , kh�ng bi�t ng�i mu�n l�y lo�i n�o ��y ? ",3," l�y c� kim nguy�n b�o /get_ingot_35"," l�y c� ng�n nguy�n b�o /get_ingot_10","Kh�ng l�y li�u /no") 
end 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - l�y ng�n phi�u -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function get_ticket() 
if (SYSCFG_GAMEBANK_TICKET_GET == nil) then -- script viet hoa By http://tranhba.com  sai l�m ~~ 
print("get_ticket have close, but something is wrong..."); 
Msg2Player("Ch�c n�ng b� l�i #"); 
return 
end 

	local count = GetExtPoint(EXTPOINT_TICKET) + GetExtPoint(EXTPOINT_TICKET_NEW);
local msg = ""; 
if (count >= EXTPOINT_MAXVAL or count <= 0) then -- script viet hoa By http://tranhba.com  kh�ng c� ph�t tri�n �i�m ��m 
msg = " ti�n Trang l�o b�n # th�t xin l�i , kh�ch quan ng�i c�ng kh�ng c� � ti�u s� g�i t�n ng�n phi�u . "; 
Talk(1, "", msg) 
else 
Say("Ti�n Trang l�o b�n # kh�ch quan ng�i x�c ��nh c�n � b�n �i�m l�y ng�n phi�u sao ? ( �i�m x�c ��nh sau thi�t ch� th�i lui ra kh�ch h�ng b�ng #)", 2,"X�c ��nh /get_ticketok","H�y b� /no"); 
end 
end 

function get_ticketok() 
local nCountOld = GetExtPoint(EXTPOINT_TICKET); 
local nCountNew = GetExtPoint(EXTPOINT_TICKET_NEW); 
if (nCountOld > 0) then 
PayExtPoint(EXTPOINT_TICKET, 1); 
Msg2Player("�ang v� ng�i l�y ���c ng�n phi�u trung # � ch� n�y trong qu� tr�nh thi�t ch� th�i lui ra tr� ch�i # xin ch� m�t ch�t . . . ") 
elseif (nCountNew > 0) then 
PayExtPoint(EXTPOINT_TICKET_NEW, 1); 
Msg2Player("�ang v� ng�i l�y ���c ng�n phi�u trung # � ch� n�y trong qu� tr�nh thi�t ch� th�i lui ra tr� ch�i # xin ch� m�t ch�t . . . ") 
else 
msg = " ti�n Trang l�o b�n # th�t xin l�i , kh�ch quan ng�i c�ng kh�ng c� � ti�u s� g�i t�n ng�n phi�u . "; 
Talk(1, "", msg); 
end; 
end 

function get_ingot_35() 
if (SYSCFG_GAMEBANK_GOLD_GET == nil) then -- script viet hoa By http://tranhba.com  sai l�m ~~ 
print("get_gold35 have close, but something is wrong..."); 
Msg2Player("Ch�c n�ng b� l�i #"); 
return 
end 

if (GetExtPoint(1) < 4) then 
Talk(1,"","Ti�n Trang l�o b�n # th�t xin l�i , ch�ng ta tr��ng v�n trung ng�i ��ch ghi ch�p d��ng nh� c� c�i g� kh�ng ��ng , xin/m�i ng�i v�n v�n , ch�ng ta s� mau s�m cho ng�i h�ch th�t tra r� . b�y gi� ng��ng ng�ng , c�n ph�i xin/m�i ng�i �em kim nguy�n b�o tr��c ti�n � ch�ng ta n�i n�y nhi�u �� m�t �o�n ng�n th�i gian . ") 
return 
end 
Say("Ti�n Trang l�o b�n # kh�ch quan ng�i x�c ��nh c�n � b�n �i�m l�y kim nguy�n b�o sao ? ( �i�m x�c ��nh sau thi�t ch� th�i lui ra kh�ch h�ng b�ng #)", 2,"X�c ��nh /get_ingot35ok","H�y b� /no"); 
end 

function get_ingot35ok() 
PayExtPoint(1,4) 
Msg2Player("�ang v� ng�i l�y ���c nguy�n b�o trung # � ch� n�y trong qu� tr�nh thi�t ch� th�i lui ra tr� ch�i # xin ch� m�t ch�t . . . ") 
end 

function get_ingot_10() 
if (SYSCFG_GAMEBANK_SILVER_GET == nil) then -- script viet hoa By http://tranhba.com  sai l�m ~~ 
print("get_silver10 have close, but something is wrong..."); 
Msg2Player("Ch�c n�ng b� l�i #"); 
return 
end 

if (GetExtPoint(1) < 1) then -- script viet hoa By http://tranhba.com  ti�u t�p ti�u ph� th�nh c�ng 
Talk(1,"","Ti�n Trang l�o b�n # th�t xin l�i , ch�ng ta tr��ng v�n trung ng�i ��ch ghi ch�p d��ng nh� c� c�i g� kh�ng ��ng , xin/m�i ng�i v�n v�n , ch�ng ta s� mau s�m cho ng�i h�ch th�t tra r� . b�y gi� ng��ng ng�ng , c�n ph�i xin/m�i ng�i �em ng�n nguy�n b�o tr��c ti�n � ch�ng ta n�i n�y nhi�u �� m�t �o�n ng�n th�i gian . ") 
return 
end 
Say("Ti�n Trang l�o b�n # kh�ch quan ng�i x�c ��nh c�n � b�n �i�m l�y ng�n nguy�n b�o sao ? ( �i�m x�c ��nh sau thi�t ch� th�i lui ra kh�ch h�ng b�ng #)", 2,"X�c ��nh /get_ingot10ok","H�y b� /no"); 
end 

function get_ingot10ok() 
PayExtPoint(1,1) 
Msg2Player("�ang v� ng�i l�y ���c ng�n nguy�n b�o trung # � ch� n�y trong qu� tr�nh thi�t ch� th�i lui ra tr� ch�i # xin ch� m�t ch�t . . . ") 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - th�c hi�n nguy�n b�o -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function pay_ingot() 
-- script viet hoa By http://tranhba.com  Talk(1,"","Ti�n Trang l�o b�n # th�t xin l�i , n�y h�ng nghi�p v� �ang chu�n b� trung , t�m th�i c�n ch�a m� th�ng , xin/m�i hai ng�y n�a tr� l�i . ") 
i = GetItemCountEx(343) 
j = GetItemCountEx(342) 
if (i > 0) and (j > 0) and (SYSCFG_GAMEBANK_GOLD_PAY and SYSCFG_GAMEBANK_SILVER_PAY)then -- script viet hoa By http://tranhba.com  hai lo�i ��u c� , h�i th�m th�c hi�n lo�i n�o 
Say("Ti�n Trang l�o b�n # ng�i tr�n ng��i mang theo r�t nhi�u nguy�n b�o a , ng�i mu�n th�c hi�n c�i n�o ��y ? ",5,"�em kim nguy�n b�o th�c hi�n th�nh 25 ng�y /pay_ingot_35a","�em kim nguy�n b�o th�c hi�n th�nh 600 �i�m /pay_ingot_35b","�em ng�n nguy�n b�o th�c hi�n th�nh 6 ng�y /pay_ingot_10a","�em ng�n nguy�n b�o th�c hi�n th�nh 150 �i�m /pay_ingot_10b","Kh�ng th�c hi�n li�u /no") 
elseif (i > 0) and (SYSCFG_GAMEBANK_GOLD_PAY) then -- script viet hoa By http://tranhba.com  ch� c� kim nguy�n b�o 
Say("Ti�n Trang l�o b�n # kh�ng th�nh v�n �� , ng�i mu�n �em tr�n ng��i <color=red> kim nguy�n b�o <color> th�c hi�n th�nh c�i g� h�nh th�c ��y ? ",3,"�em kim nguy�n b�o th�c hi�n th�nh 25 ng�y /pay_ingot_35a","�em kim nguy�n b�o th�c hi�n th�nh 600 �i�m /pay_ingot_35b","Kh�ng th�c hi�n li�u /no") 
elseif (j > 0) and (SYSCFG_GAMEBANK_SILVER_PAY) then -- script viet hoa By http://tranhba.com  ch� c� ng�n nguy�n b�o 
Say("Ti�n Trang l�o b�n # kh�ng th�nh v�n �� , ng�i mu�n �em tr�n ng��i <color=green> ng�n nguy�n b�o <color> th�c hi�n th�nh c�i g� h�nh th�c ��y ? ",3,"�em ng�n nguy�n b�o th�c hi�n th�nh 6 ng�y /pay_ingot_10a","�em ng�n nguy�n b�o th�c hi�n th�nh 150 �i�m /pay_ingot_10b","Kh�ng th�c hi�n li�u /no") 
elseif (i <= 0 and SYSCFG_GAMEBANK_GOLD_PAY) or (j <= 0 and SYSCFG_GAMEBANK_SILVER_PAY) then -- script viet hoa By http://tranhba.com  m�t lo�i ��u kh�ng c� 
Say("Ti�n Trang l�o b�n # ng�i b�y gi� kh�ng c� mang nguy�n b�o a #",1,"��ng r�i , ta �� qu�n � nh� /no") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - th�c hi�n ng�n phi�u -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function pay_ticket() 
if (SYSCFG_GAMEBANK_TICKET_PAY == nil) then -- script viet hoa By http://tranhba.com  sai l�m ~~ 
print("pay_ticket have close, but something is wrong..."); 
Msg2Player("Ch�c n�ng b� l�i #"); 
return 
end 

local msg = { 
" ti�n Trang l�o b�n # kh�ng th�nh v�n �� , ng�i mu�n �em tr�n ng��i <color=red> ng�n phi�u <color> th�c hi�n th�nh c�i g� h�nh th�c ��y ? ", 
" �em ng�n phi�u th�c hi�n th�nh 30 gi� /pay_ticket_hours", 
" �em ng�n phi�u th�c hi�n th�nh 7 ng�y /pay_ticket_days", 
" kh�ng th�c hi�n li�u /no" 
}; 
	local count = GetItemCountEx(QUESTKEY_TICKET) + GetItemCountEx(QUESTKEY_TICKET_NEW);
if (count > 0) then -- script viet hoa By http://tranhba.com  h�i th�m th�c hi�n lo�i n�o 
Say(msg[1], 3, msg[2], msg[3], msg[4]) 
else 
Say("Ti�n Trang l�o b�n # ng�i b�y gi� kh�ng c� mang ng�n phi�u a #", 1,"��ng r�i , ta �� qu�n � nh� /no") 
end 
end 

-- script viet hoa By http://tranhba.com  l�y ���c kh�u tr� ng�n phi�u ��ch ch�ng lo�i 
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
-- script viet hoa By http://tranhba.com  �em ng�n phi�u th�c hi�n th�nh 30 gi� 
function pay_ticket_hours() 
local tab_TicketType = pay_ticket_typediff(); 
if (not tab_TicketType) then 
Say("Ti�n Trang l�o b�n # ng�i b�y gi� kh�ng c� mang ng�n phi�u a #", 1,"��ng r�i , ta �� qu�n � nh� /no"); 
return 
end; 
DelItemEx(tab_TicketType[1]); 
UseSilver(tab_TicketType[2], 0, 1) 
-- script viet hoa By http://tranhba.com  SaveQuickly() 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
WriteGoldLog( GetAccount().."("..GetName()..") USE a TICKET for 30 HOUR CHARGE", 0, 0, 0, -1 ); 
Say("Ti�n Trang l�o b�n #<color=red> ng�n phi�u <color> ��i th�nh <color=red>30 gi� <color> kh�ng c� l�m , m�i kh�ch quan h�ch tra . ", 1,"Bi�t /no") 
end 

-- script viet hoa By http://tranhba.com  �em ng�n phi�u th�c hi�n th�nh 7 ng�y 
function pay_ticket_days() 
local tab_TicketType = pay_ticket_typediff(); 
if (not tab_TicketType) then 
Say("Ti�n Trang l�o b�n # ng�i b�y gi� kh�ng c� mang ng�n phi�u a #", 1,"��ng r�i , ta �� qu�n � nh� /no"); 
return 
end; 
DelItemEx(tab_TicketType[1]) 
UseSilver(tab_TicketType[2], 1, 1) 
-- script viet hoa By http://tranhba.com  SaveQuickly() 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
WriteGoldLog( GetAccount().."("..GetName()..") USE a TICKET for 7 DAY CHARGE", 0, 0, 0, -1 ); 
Say("Ti�n Trang l�o b�n #<color=red> ng�n phi�u <color> ��i th�nh <color=red>7 ng�y <color> kh�ng c� l�m , m�i kh�ch quan h�ch tra . ", 1,"Bi�t /no") 
end 

function pay_ingot_35a() 
if (SYSCFG_GAMEBANK_GOLD_PAY == nil) then -- script viet hoa By http://tranhba.com  sai l�m ~~ 
print("pay_gold35 have close, but something is wrong..."); 
Msg2Player("Ch�c n�ng b� l�i #"); 
return 
end 

if (GetItemCountEx(343) > 0) then 
DelItemEx(343) 
UseSilver(0,1,1) 
-- script viet hoa By http://tranhba.com  SaveQuickly() 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
WriteGoldLog( GetAccount().."("..GetName()..") USE a GOLD for 25 DAY CHARGE", -1, 0, 0, 0 ); 
Say("Ti�n Trang l�o b�n #<color=red> kim nguy�n b�o <color> ��i th�nh <color=red>25 ng�y <color> kh�ng c� l�m , m�i kh�ch quan h�ch tra . ",1,"Bi�t /no") 
end 
end 

function pay_ingot_35b() 
if (SYSCFG_GAMEBANK_GOLD_PAY == nil) then -- script viet hoa By http://tranhba.com  sai l�m ~~ 
print("pay_gold35 have close, but something is wrong..."); 
Msg2Player("Ch�c n�ng b� l�i #"); 
return 
end 

if (GetItemCountEx(343) > 0) then 
DelItemEx(343) 
UseSilver(0,0,1) 
-- script viet hoa By http://tranhba.com  SaveQuickly() 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
WriteGoldLog( GetAccount().."("..GetName()..") USE a GOLD for 600 POINT CHARGE", -1, 0, 0, 0 ); 
Say("Ti�n Trang l�o b�n #<color=red> kim nguy�n b�o <color> ��i th�nh <color=green>600 �i�m <color> kh�ng c� l�m , m�i kh�ch quan h�ch tra . ",1,"Bi�t /no") 
end 
end 

function pay_ingot_10a() 
if (SYSCFG_GAMEBANK_SILVER_PAY == nil) then -- script viet hoa By http://tranhba.com  sai l�m ~~ 
print("pay_silver10 have close, but something is wrong..."); 
Msg2Player("Ch�c n�ng b� l�i #"); 
return 
end 

if (GetItemCountEx(342) > 0) then 
DelItemEx(342) 
UseSilver(1,1,1) 
-- script viet hoa By http://tranhba.com  SaveQuickly() 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
WriteGoldLog( GetAccount().."("..GetName()..") USE a SILVER for 6 DAY CHARGE", 0, -1, 0, 0 ); 
Say("Ti�n Trang l�o b�n #<color=green> ng�n nguy�n b�o <color> ��i th�nh <color=red>6 ng�y <color> kh�ng c� l�m , m�i kh�ch quan h�ch tra . ",1,"Bi�t /no") 
end 
end 

function pay_ingot_10b() 
if (SYSCFG_GAMEBANK_SILVER_PAY == nil) then -- script viet hoa By http://tranhba.com  sai l�m ~~ 
print("pay_silver10 have close, but something is wrong..."); 
Msg2Player("Ch�c n�ng b� l�i #"); 
return 
end 

if (GetItemCountEx(342) > 0) then 
DelItemEx(342) 
UseSilver(1,0,1) 
-- script viet hoa By http://tranhba.com  SaveQuickly() 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
WriteGoldLog( GetAccount().."("..GetName()..") USE a SILVER for 150 POINT CHARGE", 0, -1, 0, 0 ); 
Say("Ti�n Trang l�o b�n #<color=green> ng�n nguy�n b�o <color> ��i th�nh <color=green>150 �i�m <color> kh�ng c� l�m , m�i kh�ch quan h�ch tra . ",1,"Bi�t /no") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - x�c nh�n ng�n phi�u ��i ��ng ti�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function change_ticket_to_coin() 
if (SYSCFG_GAMEBANK_TICKET_COIN == nil) then -- script viet hoa By http://tranhba.com  sai l�m ~~ 
print("coin_ticket have close, but something is wrong..."); 
Msg2Player("Ch�c n�ng b� l�i #"); 
return 
end 

	local count = GetItemCountEx(QUESTKEY_TICKET) + GetItemCountEx(QUESTKEY_TICKET_NEW);
if (count > 0) then 
Say("Ti�n Trang l�o b�n # ng�i nh�t ��nh ph�i �em ng�n phi�u ��i th�nh ��ng ti�n sao ? ", 2, "<#> �em ng�n phi�u ��i th�nh "..COIN_CHANGE_COUNT_OF_TICKET.."<#> c� ��ng ti�n /confirm_ticket_to_coin","Kh�ng ��i /no"); 
else 
Say("Ti�n Trang l�o b�n # ng�i b�y gi� kh�ng c� mang ng�n phi�u a #", 1,"��ng r�i , ta �� qu�n � nh� /no"); 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ng�n phi�u ��i ��ng ti�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function confirm_ticket_to_coin() 
local tab_TicketType = pay_ticket_typediff(); 
if (not tab_TicketType) then 
Say("Ti�n Trang l�o b�n # ng�i b�y gi� kh�ng c� mang ng�n phi�u a #", 1,"��ng r�i , ta �� qu�n � nh� /no"); 
return 
end; 
DelItemEx(tab_TicketType[1]); 
AddStackItem(COIN_CHANGE_COUNT_OF_TICKET, 4, 417, 1, 1, 0, 0, 0); 
UseSilver(tab_TicketType[2], 2, 1); -- script viet hoa By http://tranhba.com  ng�n phi�u ��i v� ��ng ti�n ��ch ti�u hao th�ng k� 
-- script viet hoa By http://tranhba.com  SaveQuickly(); 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
WriteGoldLog( GetAccount().."("..GetName()..") CHANGE a TICKET into "..COIN_CHANGE_COUNT_OF_TICKET.." COINS", 0, 0, COIN_CHANGE_COUNT_OF_TICKET, -1 ); 
Say( "<#> ti�n Trang l�o b�n # ng�i ��ch ng�n phi�u �� th�nh c�ng ��i th�nh " .. COIN_CHANGE_COUNT_OF_TICKET .. "<#> c� ��ng ti�n , m�i kh�ch quan h�ch tra . ", 2,"Bi�t /no","N�a ��i m�t �t ��ng ti�n /change_ticket_to_coin" ); 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - nguy�n b�o ��i ��ng ti�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function change_ingot_to_coin() 
local nGoldCount = GetItemCountEx( 343 ); -- script viet hoa By http://tranhba.com  kim nguy�n b�o c� ��m 
local nSilverCount = GetItemCountEx( 342 ); -- script viet hoa By http://tranhba.com  ng�n nguy�n b�o c� ��m 

if( nGoldCount > 0 and nSilverCount > 0 ) and (SYSCFG_GAMEBANK_GOLD_COIN and SYSCFG_GAMEBANK_SILVER_COIN) then -- script viet hoa By http://tranhba.com  hai lo�i ��u c� , h�i th�m th�c hi�n lo�i n�o 
Say("Ti�n Trang l�o b�n # ng�i mu�n ��i c�i n�o nguy�n b�o ��y ? ", 3, "<#> �em kim nguy�n b�o ��i th�nh "..COIN_CHANGE_COUNT_OF_GOLD.."<#> c� ��ng ti�n /change_gold_to_coin", "<#> �em ng�n nguy�n b�o ��i th�nh "..COIN_CHANGE_COUNT_OF_SILVER.."<#> c� ��ng ti�n /change_silver_to_coin","Kh�ng ��i /no"); 
elseif( nGoldCount > 0 and SYSCFG_GAMEBANK_GOLD_COIN) then -- script viet hoa By http://tranhba.com  ch� c� kim nguy�n b�o 
Say("Ti�n Trang l�o b�n # ng�i mu�n ��i c�i n�o nguy�n b�o ��y ? ", 2, "<#> �em kim nguy�n b�o ��i th�nh "..COIN_CHANGE_COUNT_OF_GOLD.."<#> c� ��ng ti�n /change_gold_to_coin","Kh�ng ��i /no"); 
elseif( nSilverCount > 0 and SYSCFG_GAMEBANK_SILVER_COIN) then -- script viet hoa By http://tranhba.com  ch� c� ng�n nguy�n b�o 
Say("Ti�n Trang l�o b�n # ng�i mu�n ��i c�i n�o nguy�n b�o ��y ? ", 2, "<#> �em ng�n nguy�n b�o ��i th�nh "..COIN_CHANGE_COUNT_OF_SILVER.."<#> c� ��ng ti�n /change_silver_to_coin","Kh�ng ��i /no"); 
elseif (nGoldCount <= 0 and SYSCFG_GAMEBANK_GOLD_COIN) or (nSilverCount <= 0 and SYSCFG_GAMEBANK_SILVER_COIN) then -- script viet hoa By http://tranhba.com  m�t lo�i ��u kh�ng c� 
Say("Ti�n Trang l�o b�n # ng�i b�y gi� kh�ng c� mang nguy�n b�o a #", 1,"��ng r�i , ta �� qu�n � nh� /no"); 
end 
end 

function change_gold_to_coin() 
if (SYSCFG_GAMEBANK_GOLD_COIN == nil) then -- script viet hoa By http://tranhba.com  sai l�m ~~ 
print("coin_gold have close, but something is wrong..."); 
Msg2Player("Ch�c n�ng b� l�i #"); 
return 
end 

if (GetItemCountEx(343) > 0) then 
DelItemEx( 343 ); 
AddStackItem( COIN_CHANGE_COUNT_OF_GOLD, 4, 417, 1, 1, 0, 0, 0 ); 
UseSilver(0, 2, 1); -- script viet hoa By http://tranhba.com  kim nguy�n b�o ��i v� ��ng ti�n ��ch ti�u hao th�ng k� 
-- script viet hoa By http://tranhba.com  SaveQuickly(); 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
WriteGoldLog( GetAccount().."("..GetName()..") CHANGE a GOLD into "..COIN_CHANGE_COUNT_OF_GOLD.." COINS", -1, 0, COIN_CHANGE_COUNT_OF_GOLD, 0 ); 
local nGoldCount = GetItemCountEx( 343 ); -- script viet hoa By http://tranhba.com  kim nguy�n b�o c� ��m 
local nSilverCount = GetItemCountEx( 342 ); -- script viet hoa By http://tranhba.com  ng�n nguy�n b�o c� ��m 
if( nGoldCount > 0 or nSilverCount > 0 ) then 
Say( "<#> ti�n Trang l�o b�n # ng�i ��ch kim nguy�n b�o �� th�nh c�ng ��i th�nh "..COIN_CHANGE_COUNT_OF_GOLD.."<#> c� ��ng ti�n , m�i kh�ch quan h�ch tra . ", 2,"Bi�t /no","N�a ��i m�t �t ��ng ti�n /change_ingot_to_coin" ); 
else 
Say( "<#> ti�n Trang l�o b�n # ng�i ��ch kim nguy�n b�o �� th�nh c�ng ��i th�nh "..COIN_CHANGE_COUNT_OF_GOLD.."<#> c� ��ng ti�n , m�i kh�ch quan h�ch tra . ", 1,"Bi�t /no" ); 
end 
end 
end 

function change_silver_to_coin() 
if (SYSCFG_GAMEBANK_SILVER_COIN == nil) then -- script viet hoa By http://tranhba.com  sai l�m ~~ 
print("coin_silver have close, but something is wrong..."); 
Msg2Player("Ch�c n�ng b� l�i #"); 
return 
end 

if (GetItemCountEx(342) > 0) then 
DelItemEx( 342 ); 
AddStackItem( COIN_CHANGE_COUNT_OF_SILVER, 4, 417, 1, 1, 0, 0, 0 ); 
UseSilver(1, 2, 1); -- script viet hoa By http://tranhba.com  ng�n phi�u ��i v� ��ng ti�n ��ch ti�u hao th�ng k� 
-- script viet hoa By http://tranhba.com  SaveQuickly(); 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
WriteGoldLog( GetAccount().."("..GetName()..") CHANGE a SILVER into "..COIN_CHANGE_COUNT_OF_SILVER.." COINS", 0, -1, COIN_CHANGE_COUNT_OF_SILVER, 0 ); 
local nGoldCount = GetItemCountEx( 343 ); -- script viet hoa By http://tranhba.com  kim nguy�n b�o c� ��m 
local nSilverCount = GetItemCountEx( 342 ); -- script viet hoa By http://tranhba.com  ng�n nguy�n b�o c� ��m 
if( nGoldCount > 0 or nSilverCount > 0 ) then 
Say( "<#> ti�n Trang l�o b�n # ng�i ��ch ng�n nguy�n b�o �� th�nh c�ng ��i th�nh "..COIN_CHANGE_COUNT_OF_SILVER.."<#> c� ��ng ti�n , m�i kh�ch quan h�ch tra . ", 2,"Bi�t /no","N�a ��i m�t �t ��ng ti�n /change_ingot_to_coin" ); 
else 
Say( "<#> ti�n Trang l�o b�n # ng�i ��ch ng�n nguy�n b�o �� th�nh c�ng ��i th�nh "..COIN_CHANGE_COUNT_OF_SILVER.."<#> c� ��ng ti�n , m�i kh�ch quan h�ch tra . ", 1,"Bi�t /no" ); 
end 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  li�n quan t�i ��ng ti�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function onAboutCoin() 
local msg = { 
" ti�n Trang l�o b�n # ��ng ti�n c� th� t� ta ch� n�y d�ng nguy�n b�o ho�c ng�n phi�u ��i ph�i , nguy�n b�o ho�c ng�n phi�u ��i th�nh ��ng ti�n sau kh�ng th� ��i l�i tr� v� . ", 
"<#> ti�n Trang l�o b�n # m�t <color=yellow> kim nguy�n b�o <color> nh�ng ��i <color=yellow>"..COIN_CHANGE_COUNT_OF_GOLD.."<color> mai ��ng ti�n , m�t <color=yellow> ng�n nguy�n b�o <color> nh�ng ��i <color=yellow>"..COIN_CHANGE_COUNT_OF_SILVER.."<color> mai , m�t t� <color=yellow> ng�n phi�u <color> nh�ng ��i <color=yellow>"..COIN_CHANGE_COUNT_OF_TICKET.."<color> mai . ", 
" ti�n Trang l�o b�n # d�ng ��ng ti�n c� th� � c�c th�nh ph� ��ch s� kh�ng phi�n ch� mua c�c lo�i v�t hi h�u ph�m . ", 
" ti�n Trang l�o b�n # b�n tr�i ki�n �an k�ch c�n �i�p �� ��ch ��ng ti�n , con chu�t di ��ng ��n kh�c m�t ��ng ��ng ti�n th��ng b�n tr�i ki�n �an k�ch , hai ��ng ��ng ti�n s� �i�p th� v�o c�ng nhau , m�i ��ng ��ng ti�n �i�p �� ��ch th��ng h�n l� <color=yellow>100<color> c� . �� l�i <color=yellow>Shift<color> ki�n , b�n tr�i ki�n �an k�ch c�n h�y �i ph�n ��ch ��ng ti�n , ��a v�o mu�n h�y �i ra ��ch ��ng ti�n c� ��m , l� ���c ho�n th�nh h�y �i ph�n . " 
}; 
Talk(4, "", msg[1], msg[2], msg[3], msg[4]); 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function no() 
end 
