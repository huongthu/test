-- script viet hoa By http://tranhba.com  special_horse.lua b�n ��c th� m� (80 c�p m� ) ��ch NPC ch�n v�n 
-- script viet hoa By http://tranhba.com  By Dan_Deng(2003-11-10) 

function main() 
UWorld97 = GetTask(97) 
if (UWorld97 == 10) then -- script viet hoa By http://tranhba.com  �� mua qua 
Talk(1,"","Tr�m c�u # ng��i nh�t ��nh ph�i th�t t�t ��i ��i con ng�a , m�i ng�y c�p cho n� t�m , ��u b�nh b�n trong mu�n s�m th��ng tinh m�t ......") 
elseif (UWorld97 == 1) and (IsTongMaster() == 1) then -- script viet hoa By http://tranhba.com  c� th� mua m� 
Talk(4,"sele_color","Tr�m c�u # v� n�y anh h�ng xin d�ng b��c . ","Nh� ch�i # huynh ��i c� chuy�n g� ? ","Tr�n c�u # t�i h� tr�m c�u , hi�n d��i c� m�t th�t ng�n d�m l��ng c�u ra �� cho , nh�n v� n�y anh h�ng kh� v� b�t ph�m , nh�t ��nh l� khai t�ng l�p ph�i ��ch ��i t�ng s� , t�i h� ��ch BMW khi kh�ng c� nh�c kh�ng c� anh h�ng danh ti�ng . ","Nh� ch�i # ta xem m�t ch�t ng��i � BMW �......") 
else 
Talk(1,"","Tr�m c�u # thi�n l� m� th��ng c� , m� b� nh�c kh�ng th��ng c� . �� h� # kh�ng bi�t sao #") 
end 
end 

function sele_color() 
Say("Tr�m c�u # anh h�ng m�i xem #",6,"��y kh�ng ph�i l� m�y �en ��p tuy�t sao #/buy_black","��y kh�ng ph�i l� x�ch th� BMW sao #/buy_red","��y kh�ng ph�i l� tuy�t �nh sao #/buy_cyan","��y kh�ng ph�i l� ��ch l� sao #/buy_yellow","��y kh�ng ph�i l� theo ��m ng�c s� t� sao #/buy_white","��y l� c�i g� m� ? th� cho th�nh h� m�t v�ng v� kh�ng bi�t . /buy_none") 
end 

function buy_black() 
the_buy(1) 
end 

function buy_red() 
the_buy(2) 
end 

function buy_cyan() 
the_buy(3) 
end 

function buy_yellow() 
the_buy(4) 
end 

function buy_white() 
the_buy(5) 
end 

function buy_none() 
Talk(1,"","Tr�m c�u # ��ng ��u m�t bang , t�ng s� nh�n v�t nh� th� n�o kh�ng bi�t nh� th� BMW l��ng c�u ? xin l�i , xem ra t�i h� l� nh�n l�m ng��i . ") 
end 

function the_buy(i) 
SetTaskTemp(49,i) 
Say("Tr�m c�u # kh�ng t� , anh h�ng qu� nhi�n nh�n bi�t # t�i h� v�n c�ng kh�ng b� ���c v� v�y b�n n� , nh�ng l� hi�n h� c�n 300 v�n l��ng b�c , nh�n anh h�ng l� th�t b� nh�c , nh�n �au c�t y�u , ng�m anh h�ng ng�n v�n h�o sinh ��i x� t� t� v�i n� . ",2,"Kh�ng th�nh v�n �� , ta nh�t ��nh s� kh�ng b�c ��i n� /buy_yes","C�i n�y nh�t th�i h�i l�u �ang l�c l�i l�n kia �i tr� s� ti�n kia ��y ? /buy_no") 
end 

function buy_yes() 
if (GetCash() >= 3000000) then 
i = GetTaskTemp(49) 
Pay(3000000) 
AddItem(0,10,5,i,0,0,0) 
		SetTask(97,100+i)			-- script viet hoa By http://tranhba.com  ������ֵ�����Ҽ�ס�����ʲô��ɫ��
Talk(1,"","Tr�m c�u # con ng�a nha con ng�a , sau n�y ng��i theo v� n�y anh h�ng , nh�t ��nh ph�i ngoan ngo�n nha . ") 
else 
Talk(1,"","Nh� ch�i # ta tr�n ng��i b�y gi� ng�n l��ng mang ph�i kh�ng �� , ng��i th� ��i ch�t . ") 
end 
end 

function buy_no() 
Talk(1,"","Tr�m c�u # ai , th�t ��ng l� mu�n m�t v�n ti�n l�m kh� anh h�ng h�n sao ? ") 
end 
