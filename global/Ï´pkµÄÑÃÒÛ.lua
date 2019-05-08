--     t�m PK ��ch nha d�ch .lua 
--     By Dan_Deng(2003-11-10) 

Include("\\Script\\Global\\TimerHead.lua")
Include("\\Script\\Global\\FuYuan.lua")

function default_talk() 
if (GetFightState() ~= 0) then 
SetFightState(0) 
end 
Say("<color=Orange>Nha d�ch<color>: qu�c c� qu�c ph�p, gia c� gia quy, hai tay d�nh ��y m�u tanh ch�y tr�n t�i ch�n tr�i g�c bi�n c�ng kh�ng th� ch�y tr�n kh�i lu�t ph�p ch� t�i",3,"Th�n mang tr�ng t�i, ta ��n �� t� th�/atone","Ta t�i th�m t� /visit","Kh�ng c� g�/no") 
LeaveTeam(); 
end 

function atone() --     t� th� t�m PK 
local PK_value = GetPK() 
local my_money = GetCash() 
local ExpPer = GetExpPercent() 
local Uworld96 = GetTask(96) 
local Uworld94 = GetTask(94) 
if (Uworld96 > 0) then --     cho l�i x� l� # n�u nh� � ph�ng giam b�n ngo�i ph�t hi�n x� vu ng�i t� tr�ng th�i , tr��c tr� l�i nh� c� li�u l�i n�i 
SetTask(96,0) 
StopTimer() 
if (Uworld94 > 0) then --     n�u nh� c�n c� b�o t�n ��ch t�nh gi� kh� , ��ng th�i c�n nguy�n ( n�u nh� l� ng�i t� t�nh gi� kh� l� tr�c ti�p quan t�nh gi� kh� ) 
if (Uworld94 ~= 9) then 
SetTimer(GetTask(95),GetTask(94)); 
end 
SetTask(94,0) 
SetTask(95,0) 
end 
end 
if (PK_value == 0) then --     v� t�i 
Talk(2,"","<color=Orange>Nha d�ch<color>: ng�y tr��c ta �� t�ng kh�ng c�n th�n ng� th��ng ng��i kh�c, �� ��n t� th�.","<color=Orange>Nha d�ch<color>: quan ph� tr�i qua �i�u tra cho r�ng ng��i kia thu�c v� ph�ng v� b�nh th��ng, ch� c�n l�n sau c�n th�n m�t �t, kh�ng c�n qu� m�c t� tr�ch. ng��i �i �i.") 
elseif (Uworld94 > 0) and (Uworld94 ~= 9) then --     �� c� b�o t�n ��ch t�nh gi� kh� , kh�ng cho ph�p n�a b�o t�n # n�u nh� �� b�o t�n ch�nh l� ng�i t� t�nh gi� kh� , cho l�i x� l� xong # 
Talk(1,"","B�y gi� ng��i g�nh v�c r�t nhi�u nhi�m v� ch�a ho�n th�nh , t�i sao c� th� t�y ti�n l�ng ph� th�i gian , �em m�nh h�u d�ng th�n ��a v�o ��i lao ch� nh� th� ? ") 
Msg2Player("Tr�n ng��i c� qu� nhi�u t�nh gi� nhi�m v�, kh�ng cho ph�p ��u th� . ") 
elseif (ExpPer < -50) then --     b�/cha/ch�u kinh nghi�m tr�ng ph�t trung , kh�ng cho ph�p t�m PK 
Talk(1,"","<color=Orange>Nha d�ch<color>: gi�ng nh� ng��i v�y n� m�u th�t m�t m�i ��ch qu�n ph�m c�n mu�n t� th� chu�c t�i ? h� h� , ch� b� ng��i �u�i gi�t �i") 
Msg2Player("lu�t ph�p quy ��nh: b� �m kinh nghi�m v��t qu� 50% , kh�ng cho t� th� chu�c t�i") 
else 
Say(GetName()..": ng�y tr��c ta �� t�ng kh�ng c�n th�n ng� th��ng ng��i kh�c , ta ��n t� th�. ", 1,"Ti�p t�c ��i tho�i /want_atone") 
end 
end 

function want_atone() 
local PK_value = GetPK(); 
local my_money = GetCash(); 
-- Say("<color=Orange>Nha d�ch<color>: ng��i hai tay d�nh m�u tanh, nh�t ��nh ph�i tr�i qua gi�m ��nh, � ��i lao t�nh t�m h�i c�i chu�c t�i . <enter>Quan ph�<enter> hi�n ph�n quy�t nh� sau <enter>nghi ph�m <color=red> "..(GetName()).." <color> b�y gi� PK tr� gi� l� <color=red>"..PK_value.."<color>, kh�ng c� ng��i th�n n�n mang to�n b� tang kho�n <color=red>"..my_money.."<color>, nh�t v�o ��i lao h�i c�i. ", 2,"Ti�n v�o ��i lao/go_atone","ch�a mu�n v�o, l�n tr�n �i/no"); 
Say("<color=Orange>Nha d�ch<color>: ng��i hai tay d�nh m�u tanh, nh�t ��nh ph�i tr�i qua gi�m ��nh, � ��i lao t�nh t�m h�i c�i chu�c t�i . <enter>Quan ph�<enter> hi�n ph�n quy�t nh� sau <enter>nghi ph�m <color=red> "..(GetName()).." <color> b�y gi� PK tr� gi� l� <color=red>"..PK_value.."<color>, nh�t v�o ��i lao h�i c�i. ", 2,"Ti�n v�o ��i lao/go_atone","ch�a mu�n v�o, l�n tr�n �i/no"); 
end; 

function go_atone() 

	SetTask(96,100+GetPK())
i = GetTimerId() 
if (i > 0) and (i ~= 9) then --     n�u nh� tr�n ng��i nguy�n c� t�nh gi� kh� h�n n�a kh�ng ph�i l� ng�i t� t�nh gi� kh� , tr��c b�o t�n 
SetTask(94,i) 
SetTask(95,GetRestTime(i)) 
else 
SetTask(94,0) 
SetTask(95,0) 
StopTimer() 
end 
local my_money = GetCash(); 
-- Pay(my_money); 
-- Msg2Player("Quan sai kh�ng c� b�t tr�n ng��i ng��i ��ch t�t c� b�c c�ng "..my_money.." hai , c�ng �em ng��i nh�t v�o ��i lao . ") 
WriteLog(date().."\tName:"..GetName().."\tAccount:"..GetAccount().."\t b� nh�t v�o ��i lao c�p tr�n ng��i t�t c� ti�n m�t "..my_money.." hai ") 
FuYuan_Pause(); 
SetTimer(12 * CTime * FramePerSec, 9) --     m�i 120 ph�t th�ng qua t�nh gi� kh� ��i m�i r�t xu�ng PK tr� gi� 
DisabledTeam(1); 
NewWorld(208,1785,3062) 
end 

function visit() --     d� giam 
Say("<color=Orange>Nha d�ch<color>: �i ra �i ra , � trong �� c�ng l� ��ng ph�m, d� d� c�i g�, c� ph�i ��ng ��ng hay kh�ng h�",2,"H�i l� 5000 l��ng b�c /go_visit","�i ra /no") 
end 

function go_visit() 
if (GetCash() >= 5000) then 
Talk(1,"","<color=Orange>Nha d�ch<color>: ng��i n�i c�i g�? b�ng h�u c�a ng��i � trong t� ng� b�nh? n�u nh� v�y, v�y ng��i �i th�m m�t c�i c�ng coi l� t�nh ng��i �i. nh� kh�ng ���c l�m c�i g� l�n l�n l�t l�t ��u ��y.") 
Msg2Player("H�i l� nha d�ch 5000 l��ng b�c, ti�n v�o ��i lao.") 
Pay(5000) 
SetTask(96,1) 
DisabledTeam(1); 
NewWorld(208,1785,3062) 
else 
Talk(1,"","<color=Orange>Nha d�ch<color>: mau tr�nh ra, c� ph�i hung ph�m ��ng ��ng hay kh�ng ta nh�t ��nh ph�i �em ng��i b�t v�o ��i lao lu�n.") 
end 
end 

function no() 
end 
