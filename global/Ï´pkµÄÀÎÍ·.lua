

Include("\\script\\global\\timerhead.lua")
Include("\\Script\\Global\\FuYuan.lua")
Include("\\script\\nationalwar\\head.lua")

function main(sel) 
	local Uworld96 = GetTask(96) 
	local PK_value = GetPK(); 
	if (Uworld96 == 1) then 
		Say("<color=Orange>Lao ��u<color>: th�m xong ch�a , �i nhanh m�t ch�t",2,"C�m �n v� ��i ca n�y, ta �i r�i/visit_leave","Xin ��i ca ��i m�t x�u n�a, ta s� �i li�n ��y/no") 
	elseif (PK_value <= 0) then 
		Talk(2,"PKclear","<color=Orange>Lao ��u<color>: ng��i h�y lo thu th�p h�nh l�, ng��i �� c� th� xu�t ng�c","Lao ��u �a t� ��i ca, nh� v�y ta �i li�n.") 
	else
		local absolve_time = NW_GetTask(NW_TASKNO_ABSOLVE) 
		local current_time = GetCurServerTime() 
		if (absolve_time ~= 0 and current_time < absolve_time + SECONDS_ONEHOUR) then
			Say("Ta nh�n l�n tr�i thi�n t� h�m nay ��i duy�t, ��i x� thi�n h� h�t th�y t�i c�c ng��i, ti�u t� ng��i v�n kh� kh�ng t� c�n kh�ng �i nhanh l�n", 
			2, 
			" ta �i ngay, �i ngay/nw_absolve", 
			" kh�ng ta ph�i � l�i ch� n�y /Cancel") 
		else 
			local n_timerid = GetTimerId(); 
			if (n_timerid ~= 9) then 
				SetTask(96,100 + PK_value);
				SetTimer(12 * CTime * FramePerSec, 9) 
				return 
			end 
			Say("<color=Orange>Lao ��u<color>: T�i nh�n kh�ng ���c ph�p �i l�i, v� ph�ng giam c�a m�nh ngay!",4,
				"H�i th�i gian/ask_timer",
				"H�i l� b�c (ra ngo�i h�t pk)/pay_money",
				"H�i l� b�c (ra ngo�i, v�n gi� pk)/pay_money_norepk",
				"���c r�i, ���c r�i ta tr� v� ��y/no") 
		end 
	end 
end 

function pay_money_norepk()
	Talk(1, "pay_money_norepk_2", "V� lao ��u, � ��y ta c� 5 v�n l��ng, hi�n t�i ta �ang mang tr�ng b�nh, ng�i c� th� cho ta t�i ngo�i v�i ng�y?")
end

function pay_money_norepk_2()
	Say("<color=Orange>Lao ��u<color>: xem ng��i h�nh h�i h�c tr� ngh�o r�ch, c� th� c� nhi�u b�c nh� v�y sao? ",2,
	"�em ti�n nh�t v�o trong tay h�n /pay_money_norepk_3",
	"Ti�p t�c kh�n c�u /pay_no") 
end

function pay_money_norepk_3()
	if (GetCash() >= 50000) then 
		Pay(50000) 
		leave_prison() 
		Msg2Player("Lao ��u cho ph�p ng��i d��ng b�nh b�n ngo�i, ng��i c� th� r�i ��i lao.")
	else
		pay_no()
	end
end

function nw_absolve() 
SetPK(0) 
leave_prison() 
end 

function ask_timer() 
if (GetCash() >= 1000) then 
Pay(1000) 
Talk(2,"","Lao ��u v� ��i ca n�y , n�i n�y 1000 l��ng b�c xin m�i u�ng ch�n tr�, ta ch� l� mu�n h�i m�t ch�t b�y gi� l� gi� g� . ","Lao ��u ng��i mu�n h�i gi�m th�p t�i nghi�t c�ng c�n k�m "..GetRestCTime(9).." , nhanh �i v� ng�i �i") 
else 
Talk(2,"","Lao ��u v� ��i ca n�y , ta ch� l� mu�n h�i m�t ch�t b�y gi� l� gi� g� . ","Lao ��u h�i h�i c�i g�, ��i ��nh c� ph�i kh�ng, c�n kh�ng mau tr� v� ng�i �i") 
end 
end 

function pay_money() 

	local a = {
		[1] = 50000,
		[2] = 100000,
		[3] = 150000,
		[4] = 200000,
		[5] = 250000,
		[6] = 500000,
		[7] = 1000000,
		[8] = 2000000,
		[9] = 3000000,
		[10] = 5000000,
	}

PK_PayMoney = a[GetPK()]
Talk(1,"pay_money2","Lao ��u ca , n�i n�y c� <color=yellow>"..PK_PayMoney.."<color> l��ng b�c nh� m� th�nh k�nh l�n, ch�ng qua ta ��y th�n th� th�t s� l� b�nh n�ng �� kh�ng n�i, xin ��i ca khai �n �� ta ra ngo�i tr� b�nh.") 
end 

function pay_money2() 
Say("<color=Orange>Lao ��u<color>: xem ng��i h�nh h�i h�c tr� ngh�o r�ch, c� th� c� nhi�u b�c nh� v�y sao? ",2,"�em ti�n nh�t v�o trong tay h�n /pay_yes","Ti�p t�c kh�n c�u /pay_no") 
end 

function pay_yes() 

	local a = {
		[1] = 50000,
		[2] = 100000,
		[3] = 150000,
		[4] = 200000,
		[5] = 250000,
		[6] = 500000,
		[7] = 1000000,
		[8] = 2000000,
		[9] = 3000000,
		[10] = 5000000,
	}

PK_PayMoney = a[GetPK()]
if (GetCash() >= PK_PayMoney) then 
Pay(PK_PayMoney) 
Msg2Player("Lao ��u cho ph�p ng��i d��ng b�nh b�n ngo�i, ng��i c� th� r�i ��i lao.") 
Talk(1,"leave_prison","<color=Orange>Lao ��u<color>: Lu�t ph�p v� t�nh nh�ng ta h�u t�nh, n�u ng��i b�nh n�ng nh� v�y, v�y tr��c ti�n �i xem th�y thu�c �i. n�n nh� ng��i ch� l� ra ngo�i ch�a b�nh, tr�n ng��i t�i nghi�t v�n ch�a h�t, �i ra ngo�i ��ng bao gi� t�i ph�m chuy�n g� ��y") 
SetPK(0) 
Msg2Player("V� h�i l� Lao ��u n�n t�t c� t�i tr�ng ��u ���c x�a b�!") 
else 
pay_no() 
end 
end 

function pay_no() 
Talk(1,"","<color=Orange>Lao ��u<color>: �� ngh�o, c�t ngay c� tin ta c�m ��i roi qu�t ng��i hay kh�ng?") 
end 

function PKclear() 
Msg2Player("� trong ng�c �� t�nh ng�, cu�i c�ng c�ng ���c th� ra ngo�i.") 
leave_prison() 
end 

function leave_prison() 
StopTimer() 
if (GetTask(94) == 9) then 
SetTask(94,0) 
SetTask(95,0) 
elseif (GetTask(94) > 0) then
Msg2Player("Ng��i nh� tr�n ng��i m�nh c�n mang theo nhi�m v�, nhanh �i ho�n th�nh n� �i. ") 
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
if (leave_pos == 1) then 
NewWorld(176,1473,3245) 
else
NewWorld(37,1781,3044) 
end 
end 

function no() 
end 
