-- script viet hoa By http://tranhba.com  ��i lao t� ��u .lua## t�m �i�m nhi�m v� # 
-- script viet hoa By http://tranhba.com  By Dan_Deng(2003-11-12) 

Include("\\script\\global\\timerhead.lua")
Include("\\Script\\Global\\FuYuan.lua")
Include("\\script\\nationalwar\\head.lua")

function main(sel) 
local Uworld96 = GetTask(96) 
local PK_value = GetPK(); 
if (Uworld96 == 1) then -- script viet hoa By http://tranhba.com  d� giam ��ch 
Say("T� ��u # th�m xong ch�a , �i nhanh m�t ch�t #",2,"C�m �n v� ��i ca n�y , ta �i r�i /visit_leave","Xin/m�i ��i ca n�a �am ��i m�t c�i , ta r�t nhanh li�n �i /no") 
-- script viet hoa By http://tranhba.com  elseif (Uworld96 == 0) then -- script viet hoa By http://tranhba.com  sai l�m 
-- script viet hoa By http://tranhba.com  Talk(1,"","T� ��u # uy # ng��i l� th� n�o x�m nh�p v�o thi�n lao tr�ng ��a t�i ? c� l�i g� �i t�m GM gi�i th�ch �i #") 
elseif (PK_value <= 0) then -- script viet hoa By http://tranhba.com  r�a s�ch PK ��ch 
Talk(2,"PKclear","T� ��u # ng��i # thu th�p xong h�nh l� , ng��i �� c� th� xu�t ng�c #","Nh� ch�i # �a t� ��i ca , nh� v�y ta li�n �i . ") 
else -- script viet hoa By http://tranhba.com  t�m PK ��ch 
-- script viet hoa By http://tranhba.com  thi�n t� h� th�ng # ��i x� thi�n h� 
local absolve_time = NW_GetTask(NW_TASKNO_ABSOLVE) 
local current_time = GetCurServerTime() 
		if (absolve_time ~= 0 and current_time < absolve_time + SECONDS_ONEHOUR) then
Say("Ta h��ng l�n tr�i t� h�m nay m�t r�ng ��i duy�t , ��i x� thi�n h� h�t th�y t�i �c ng��i , ti�u t� ng��i v�n kh� kh�ng t� # c�n kh�ng �i nhanh l�n #", 
2, 
" v�i v�ng l�u /nw_absolve", 
" kh�ng ta ph�i � l�i ch� n�y /Cancel") 
else 
local n_timerid = GetTimerId(); 
if (n_timerid ~= 9) then 
				SetTask(96,100 + PK_value);
SetTimer(12 * CTime * FramePerSec, 9) 
return 
end 
Say("T� ��u # t�i nghi�t kh�ng thanh chi ph�m nh�n , kh�ng ph�i t�y � �i l�i #",3,"H�i m�t ch�t th�i gian /ask_timer","H�i l� b�c /pay_money"," l� , l� , ta ��y tr� v� �i ng�i xong /no") 
end 
end 
end 

-- script viet hoa By http://tranhba.com  thi�n t� h� th�ng # ��i x� thi�n h� 
function nw_absolve() 
SetPK(0) 
leave_prison() 
end 

function ask_timer() 
if (GetCash() >= 1000) then -- script viet hoa By http://tranhba.com  c� 500 l��ng b�c m�i �� cho h�i 
Pay(1000) 
Talk(2,"","Nh� ch�i # v� ��i ca n�y , n�i n�y 1000 l��ng b�c xin/m�i u�ng ch�n tr� , ta ch� l� mu�n h�i m�t ch�t b�y gi� l� gi� g� . ","T� ��u # ng��i mu�n h�i gi�m th�p t�i nghi�t c�ng c�n k�m "..GetRestCTime(9).." , nhanh �i v� ng�i xong #") 
else 
Talk(2,"","Nh� ch�i # v� ��i ca n�y , ta ch� l� mu�n h�i m�t ch�t b�y gi� l� gi� g� . ","T� ��u # h�i c�i g� h�i # ��i ��nh c� ph�i hay kh�ng , c�n kh�ng mau tr� v� ng�i xong #") 
end 
end 

function pay_money() 
PK_PayMoney = GetPK() * GetPK() * 10000 
Talk(1,"pay_money2","Nh� ch�i # t� nh�c ��u ca , n�i n�y "..PK_PayMoney.." l��ng b�c , nho nh� � t� b�t th�nh k�nh � , ch�ng qua l� ta ��y th�n th� th�t s� l� b�nh ph�i n�ng �� kh�ng n�i , c� th� hay kh�ng xin/m�i ��i ca khai �n �� ta b�o b�n ngo�i li�n y ��y ? ") 
end 

function pay_money2() 
Say("T� ��u # xem ng��i kia h�c tr� ngh�o d�ng , c� th� c� nhi�u b�c nh� v�y sao ? ",2,"�em ti�n nh�t v�o trong tay h�n /pay_yes","Ti�p t�c kh�n c�u /pay_no") 
end 

function pay_yes() 
PK_PayMoney = GetPK() * GetPK() * 10000 
if (GetCash() >= PK_PayMoney) then 
Pay(PK_PayMoney) 
Msg2Player("T� ��u cho ph�p ng��i b�o b�n ngo�i li�n y , ng��i c� th� r�i �i ��i lao . ") 
Talk(1,"leave_prison","T� ��u # ai , nh�n ��o l� lu�t ph�p v� t�nh ng��i h�u t�nh , n�u ng��i b�nh ph�i n�ng nh� v�y , v�y tr��c ti�n �i xem m�t ch�t th�y thu�c �i . nh� ng��i ��y ch� l� b�o b�n ngo�i li�n y , tr�n ng��i t�i nghi�t kh�ng thanh ��ch , �i ra ngo�i ng�n v�n kh�ng mu�n t�i ph�m chuy�n g� a #") 
else 
pay_no() 
end 
end 

function pay_no() 
Talk(1,"","T� ��u # qu� ngh�o , c�t ngay # c� tin ta hay kh�ng c�m ��i roi qu�t ng��i a #") 
end 

function PKclear() 
Msg2Player(" � kh�c s�u t�nh l�i sau , ng��i r�t c�c b� th� ra ng�c . ") 
leave_prison() 
end 

function leave_prison() 
StopTimer() 
if (GetTask(94) == 9) then -- script viet hoa By http://tranhba.com  tr�n ng��i sai l�m ��a gi� ng�i t� t�nh gi� kh� , kh�ng l�m k� tha x� l� tr�c ti�p thanh r�i 
SetTask(94,0) 
SetTask(95,0) 
elseif (GetTask(94) > 0) then -- script viet hoa By http://tranhba.com  kh�i ph�c tr�n ng��i nguy�n c� t�nh gi� kh� 
Msg2Player("Ng��i nh� l�i tr�n ng��i m�nh c�n mang theo nhi�m v� , v�i v�ng �i xong th�nh n� �i . ") 
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
if (leave_pos == 1) then -- script viet hoa By http://tranhba.com  tr��c khi an 
NewWorld(176,1473,3245) 
else -- script viet hoa By http://tranhba.com  bi�n kinh 
NewWorld(37,1781,3044) 
end 
-- script viet hoa By http://tranhba.com  NewWorld(57,1592,3195) -- script viet hoa By http://tranhba.com  n�m t�i H�nh S�n ��i s�nh 
end 

function no() 
end 
