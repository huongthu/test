-- script viet hoa By http://tranhba.com Creator:yfeng 
-- script viet hoa By http://tranhba.com Date:2004-9-6 
-- script viet hoa By http://tranhba.com Comm: kh�ch h�ng b�ng th�ng c�p �� k� tin t�c 

STRTAB_LEVELUP={ 
[2]="<#> ch�c m�ng ng��i l�n t�i 2 c�p # ng��i c� th� ��n th�n b�n ngo�i t�m v� s� h�c t�p khinh c�ng li�u . ", 
[5]="<#> ch�c m�ng ng��i l�n t�i 5 c�p # ng��i �� kh�ng h� n�a y�u kh�ng kh�i phong , c� th� �i ��i th�nh th� g�p m�t ch�t ��i m�t . ", 
[10]="<#> ch�c m�ng ng��i l�n t�i 10 c�p # ng��i �� c� nh�t ��nh c�ng �� , c� th� v�o ph�i b�i s� h�c ngh� li�u . tay m�i trong th�n c� c�c ��i m�n ph�i ��ch m�n �� , b�n h� s� d�n ng��i v�o ph�i , s� m�n s� c� nhi�m v� ch� ng��i . v�o ph�i sau li�n c� th� � m�n ph�i b�ng t�n trong t�n g�u . ��ng th�i , ng��i c� th� c�ng ng��i kh�c pk li�u , c�n c� th� � th�nh tr�n trong b�y s�p b�n �� . ", 
[20]="<#> ch�c m�ng ng��i l�n t�i 20 c�p # ng��i �� s� li�u thi�n l� truy�n �m , c� th� � th�nh ph� b�ng t�n trong t�n g�u . h�n n�a , ng��i c� th� c�i m� li�u , c�c ��i th�nh th� ��u c� m� phi�n t� . ng��i �� l� th�nh ng��i li�u , c� th� k�t h�n , mang theo ng��i m�t n�a kia �i giang t�n th�n ��ch nguy�t l�o n�i �� th�nh th�n �i . ��ng th�i kh�ng n�n qu�n tr� v� chuy�n s� m�n , c� nhi�m v� m�i ch� ng��i nga #", 
[30]="<#> ch�c m�ng ng��i l�n t�i 30 c�p # ng��i thi�n l� truy�n �m c�nh gi�i cao h�n , c� th� tr�n ��i gi�i b�ng t�n trong t�n g�u . ��ng th�i kh�ng n�n qu�n tr� v� chuy�n s� m�n , c� nhi�m v� m�i ch� ng��i nga #", 
[40]="<#> ch�c m�ng ng��i l�n t�i 40 c�p # ng��i c� th� tham gia t�ng kim ��i chi�n , t�ng kim chi�n tr��ng � v�o t��ng d��ng c�ng Chu ti�n tr�n gi�a . ��ng th�i kh�ng n�n qu�n tr� v� chuy�n s� m�n , c� nhi�m v� m�i ch� ng��i nga #", 
[50]="<#> ch�c m�ng ng��i l�n t�i 50 c�p # ng��i c� th� �i t�y t�y ��o li�u , � n�i n�o ng��i c� th� t�m r�i ti�m n�ng �i�m c�ng k� n�ng �i�m , c�c ��i th�nh th� ��ch phu xe c� th� d�n ng��i �i . ��ng th�i kh�ng n�n qu�n tr� v� chuy�n s� m�n , c� 50 c�p nhi�m v� c�ng xu�t s� nhi�m v� ch� ng��i nga #", 
[60]="<#> ng��i c� th� l�m tr� v� s� nhi�m v� , ho�n th�nh nhi�m v� sau c� th� h�c ���c tr�n ph�i tuy�t h�c #", 
} 

function main(lvl) 
Uworld1001 = nt_getTask(1001) 
Uworld1002 = nt_getTask(1002) 
Uworld1003 = nt_getTask(1003) 
if ( GetLevel() == 30 ) then 
if ( Uworld1001 == 60 ) and ( Uworld1002 == 60 ) and ( Uworld1003 == 108) then 
nt_setTask(1001,80) 
nt_setTask(1002,80) 
nt_setTask(1003,109) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 30 c�p ��ch ch�nh ph�i , trung l�p , t� ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1001 == 60 ) and ( Uworld1002 == 60 ) then 
nt_setTask(1001,80) 
nt_setTask(1002,80) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 30 c�p ��ch ch�nh ph�i , trung l�p tr�n doanh nhi�m v� . ") 
elseif ( Uworld1001 == 60 ) and ( Uworld1003 == 108) then 
nt_setTask(1001,80) 
nt_setTask(1003,109) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 30 c�p ��ch ch�nh ph�i , t� ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1002 == 60 ) and ( Uworld1003 == 108) then 
nt_setTask(1002,80) 
nt_setTask(1003,109) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 30 c�p ��ch trung l�p , t� ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1001 == 60 ) then 
nt_setTask(1001,80) 
SendTaskOrder("Ng�i thu ���c 30 c�p ��ch ch�nh ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1002 == 60 ) then 
nt_setTask(1002,80) 
SendTaskOrder("Ng�i thu ���c 30 c�p ��ch trung l�p tr�n doanh nhi�m v� . ") 
elseif ( Uworld1003 == 108) then 
nt_setTask(1003,109) 
SendTaskOrder("Ng�i thu ���c 30 c�p ��ch t� ph�i tr�n doanh nhi�m v� . ") 
end 
elseif ( GetLevel() == 40 ) then 
if ( Uworld1001 == 130 ) and ( Uworld1002 == 110 ) and ( Uworld1003 == 208 ) then 
nt_setTask(1001,150) 
nt_setTask(1002,130) 
nt_setTask(1003,209) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 40 c�p ��ch ch�nh ph�i , trung l�p , t� ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1001 == 130 ) and ( Uworld1002 == 110 ) then 
nt_setTask(1001,150) 
nt_setTask(1002,130) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 40 c�p ��ch ch�nh ph�i , trung l�p tr�n doanh nhi�m v� . ") 
elseif ( Uworld1001 == 130 ) and ( Uworld1003 == 208 ) then 
nt_setTask(1001,150) 
nt_setTask(1003,209) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 40 c�p ��ch ch�nh ph�i , t� ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1002 == 110 ) and ( Uworld1003 == 208 ) then 
nt_setTask(1002,130) 
nt_setTask(1003,209) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 40 c�p ��ch trung l�p , t� ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1001 == 130 ) then 
nt_setTask(1001,150) 
SendTaskOrder("Ng�i thu ���c 40 c�p ��ch ch�nh ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1002 == 110 ) then 
nt_setTask(1002,130) 
SendTaskOrder("Ng�i thu ���c 40 c�p ��ch trung l�p tr�n doanh nhi�m v� . ") 
elseif ( Uworld1003 == 208 ) then 
nt_setTask(1003,209) 
SendTaskOrder("Ng�i thu ���c 40 c�p ��ch t� ph�i tr�n doanh nhi�m v� . ") 
end 
elseif ( GetLevel() == 50 ) then 
if ( Uworld1001 == 200 ) and ( Uworld1002 == 180 ) and ( Uworld1003 == 328) then 
nt_setTask(1001,220) 
nt_setTask(1002,200) 
nt_setTask(1003,329) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 50 c�p ��ch ch�nh ph�i , trung l�p , t� ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1001 == 200 ) and ( Uworld1002 == 180 ) then 
nt_setTask(1001,220) 
nt_setTask(1002,200) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 50 c�p ��ch ch�nh ph�i , trung l�p tr�n doanh nhi�m v� . ") 
elseif ( Uworld1001 == 200 ) and ( Uworld1003 == 328 ) then 
nt_setTask(1001,220) 
nt_setTask(1003,329) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 50 c�p ��ch ch�nh ph�i , t� ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1002 == 180 ) and ( Uworld1003 == 328 ) then 
nt_setTask(1002,200) 
nt_setTask(1003,329) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 50 c�p ��ch trung l�p , t� ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1001 == 200 ) then 
nt_setTask(1001,220) 
SendTaskOrder("Ng�i thu ���c 50 c�p ��ch ch�nh ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1002 == 180 ) then 
nt_setTask(1002,200) 
SendTaskOrder("Ng�i thu ���c 50 c�p ��ch trung l�p tr�n doanh nhi�m v� . ") 
elseif ( Uworld1003 == 328 ) then 
nt_setTask(1003,329) 
SendTaskOrder("Ng�i thu ���c 50 c�p ��ch t� ph�i tr�n doanh nhi�m v� . ") 
end 
elseif ( GetLevel() == 60 ) then 
if ( Uworld1001 == 270 ) and ( Uworld1002 == 240 ) and ( Uworld1003 == 408 ) then 
nt_setTask(1001,290) 
nt_setTask(1002,260) 
nt_setTask(1003,409) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 50 c�p ��ch ch�nh ph�i , trung l�p , t� ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1001 == 270 ) and ( Uworld1002 == 240 ) then 
nt_setTask(1001,290) 
nt_setTask(1002,260) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 50 c�p ��ch ch�nh ph�i , trung l�p tr�n doanh nhi�m v� . ") 
elseif ( Uworld1001 == 270 ) and ( Uworld1003 == 408 ) then 
nt_setTask(1001,290) 
nt_setTask(1003,409) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 50 c�p ��ch ch�nh ph�i , t� ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1002 == 240 ) and ( Uworld1003 == 408 ) then 
nt_setTask(1002,260) 
nt_setTask(1003,409) 
SendTaskOrder("Ng�i ��ng th�i thu ���c 50 c�p ��ch trung l�p , t� ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1001 == 270 ) then 
nt_setTask(1001,290) 
SendTaskOrder("Ng�i thu ���c 50 c�p ��ch ch�nh ph�i tr�n doanh nhi�m v� . ") 
elseif ( Uworld1002 == 240 ) then 
nt_setTask(1002,260) 
SendTaskOrder("Ng�i thu ���c 50 c�p ��ch trung l�p tr�n doanh nhi�m v� . ") 
elseif ( Uworld1003 == 408 ) then 
nt_setTask(1003,409) 
SendTaskOrder("Ng�i thu ���c 50 c�p ��ch t� ph�i tr�n doanh nhi�m v� . ") 
end 
else 
return Msg2Player(STRTAB_LEVELUP[lvl]) 
end 
end 
