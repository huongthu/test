-- script viet hoa By http://tranhba.com  ��a tin nhi�m v� .lua ( ��a tin nhi�m v� ch� v�n ki�n ) 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-12-08) 

-- script viet hoa By http://tranhba.com  c�c c�p b�c ��ng b�n k�ch t�nh nhi�m v� th�t th� x� l� v�n ki�n 
Include ("\\script\\task\\partner\\master\\partner_master_main.lua");

Include("\\script\\task\\tollgate\\killbosshead.lua")
Include("\\script\\task\\tollgate\\messenger\\posthouse.lua")


Define_City = {"<#> tr��c khi an ","<#> ph��ng t��ng ","<#> th�nh �� ","<#> ��i L� ","<#> bi�n kinh ","<#> t��ng d��ng ","<#> D��ng Ch�u "} 

function default_talk(letter_laststation) 

local nParTaskState = GetMasterTaskState(PARID_TASK_MASTER_002); 
local aryTalk = {"<dec><npc> chuy�n tr�n giang h� ta b�t k� , tr��c m�t th�i cu�c lung tung , tri�u ��nh m�nh c�ng c� th�t nhi�u phi�n to�i mu�n gi�i quy�t a . "}; 

if nParTaskState==nil then nParTaskState = 0; end; 

-- script viet hoa By http://tranhba.com tinsert(aryTalk, ); 

-- script viet hoa By http://tranhba.com T cao #ng t v�n h n#g t v�n s? - Modified by DinhHQ - 20110427 
tinsert(aryTalk,"Ta mu�n v� tri�u ��nh ra ch�t l�c /especiallymessenger"); 
tinsert(aryTalk,"Ta ch�ng qua l� t�i t�y ti�n chuy�n chuy�n /no"); 

CreateTaskSay(aryTalk); 

end 

function lastdefault_talk(letter_station) 
Uworld12 = GetTask(12) 
if (Uworld12 == 0) then -- script viet hoa By http://tranhba.com  t�y th�i c� th� b�t ��u nhi�m v� # tr��c kia ch�a bao gi� l�m # 
W12_get(letter_station) 
elseif (Uworld12 < 256) then -- script viet hoa By http://tranhba.com  nhi�m v� trung 
check_letter(letter_station) 
elseif (GetGameTime() >= Uworld12) then -- script viet hoa By http://tranhba.com  �� v��t qua t�i di�n th�i gian h�n ch� , cho ph�p l�n n�a ti�n h�nh nhi�m v� # t�m th�i s� d�ng � tuy�n th�i gian # 
W12_get(letter_station) 
else -- script viet hoa By http://tranhba.com  ch� ��i t�i di�n ti�n h�nh nhi�m v� trung 
Talk(1,"","D�ch quan # b�y gi� t�m th�i kh�ng c� phong th� c�n ng��i gi�p m�t tay , qu� m�t �o�n th�i gian tr� l�i xem m�t ch�t �i . ") 
end 
end 

function W12_get(start_city) 
dest_city = random(1,7) -- script viet hoa By http://tranhba.com  b�y gi� l� 7 c� th�nh ph� 
if (dest_city == start_city) then -- script viet hoa By http://tranhba.com  kh�ng cho ph�p ��a tin ��ch nguy�n th�nh ph� c�ng m�c ti�u th�nh ph� t�i di�n 
Talk(1,"","D�ch quan # b�y gi� t�m th�i kh�ng c� phong th� c�n ng��i gi�p m�t tay , qu� m�t �o�n th�i gian tr� l�i xem m�t ch�t �i . ") 
else 
		SetTaskTemp(3,start_city*10+dest_city)		-- script viet hoa By http://tranhba.com  ʮλ��Ϊ��ʼ�أ���λ��ΪĿ���
Say("D�ch quan # h�m nay chi�n s� t�n t�n , c�ng v�n ph�n �a , d�ch tr�m trong ��a tin ng��i c�a tay kh�ng �� , ng��i nguy�n � gi�p m�t tay ��a tin sao ? m�i l�n ��a tin c�ng c� th� ng�n ��ch . ",2,"Nguy�n � /W12_get_yes","Kh�ng mu�n /no") 
end 
end 

function check_letter(get_city) 
x = GetTask(12) 
dest_city = mod(x,10) 
start_city = (x - dest_city) / 10 -- script viet hoa By http://tranhba.com  h�n nh�t ��nh c� th� c� tr� 
if (dest_city == get_city) then -- script viet hoa By http://tranhba.com  m�c ti�u th�nh ph� 
		if (HaveItem(231+x) == 1) then			-- script viet hoa By http://tranhba.com  ���ź��ܶ�Ӧ�ϣ��������
Talk(1,"","<#> d�ch quan # nh�n ���c "..Define_City[start_city].."<#> ph�t t�i t�n h�m m�t phong , nghi�m ch�ng kh�ng c� l�m . ��y l� ng��i ��ch t� l� 500 hai . ") 
			DelItem(231+x)
			SetTask(12,GetGameTime()+7200)				-- script viet hoa By http://tranhba.com  ��Сʱ��7200�룩����ظ�������
i = random(1,10) -- script viet hoa By http://tranhba.com  ng�u nhi�n cho danh v�ng t��ng th��ng 
AddRepute(i) 
Msg2Player("<#> th�nh c�ng �em t�n h�m ��a ��n m�c ��ch d�ch tr�m , nhi�m v� ho�n th�nh . ng��i danh v�ng t�ng l�n "..i.."<#> �i�m . ") 
AddNote("Th�nh c�ng �em t�n h�m ��a ��n m�c ��ch d�ch tr�m , nhi�m v� ho�n th�nh . ") 
Earn(500) 
else -- script viet hoa By http://tranhba.com  t�n h�m m�t , h�y b� nhi�m v� 
Say("D�ch quan # ng��i �em tr�ng y�u nh� v�y ��ch c�ng h�m v�t b� ? l�n n�y nh�ng phi�n to�i . ho�c l� , ��ng 2000 l��ng b�c ta gi�p ng��i �em chuy�n n�y che gi�u ���c �i . ",2,"Giao ti�n /W12_cancel","Ta t�m m�t ch�t /no") 
end 
elseif (start_city == get_city) then -- script viet hoa By http://tranhba.com  l�c ��u th�nh ph� 
		if (HaveItem(231+x) == 0) then			-- script viet hoa By http://tranhba.com  �ź���ʧ��ȡ������
Say("D�ch quan # ng��i �em tr�ng y�u nh� v�y ��ch c�ng h�m v�t b� ? l�n n�y nh�ng phi�n to�i . ho�c l� , ��ng 2000 l��ng b�c ta gi�p ng��i �em chuy�n n�y che gi�u ���c �i . ",2,"Giao ti�n /W12_cancel","Ta t�m m�t ch�t /no") 
else 
Talk(1,"","D�ch quan # ��y l� kh�n c�p c�ng v�n , l�m phi�n ng��i nhanh m�t ch�t ��a �i . ") 
end 
else -- script viet hoa By http://tranhba.com  k� tha t�nh hu�ng # nhi�m v� kh�ng ho�n th�nh # 
Talk(1,"","<#> d�ch quan # ng��i phong th� n�y h�m kh�ng ph�i l� ��a ��n n�i n�y , ng��i h�n ��a ��n "..Define_City[dest_city].."<#> �i . ") 
end 
end 

function W12_cancel() 
if (GetCash() >= 2000) then 
Pay(2000) 
SetTask(12,0) 
Msg2Player("Ng��i ��a tin nhi�m v� b� h�y b� . ") 
AddNote("Ng��i ��a tin nhi�m v� b� h�y b� . ") 
Talk(1,"","D�ch quan # l�n n�y c� t�nh nh� th� , sau n�y ng��i c�ng n�n c�n th�n a #") 
else 
Talk(1,"","D�ch quan # ngay c� 2000 hai ��u kh�ng c� ? ng��i th� n�o ngh�o nh� v�y a . c� ti�n t�i t�m ta n�a �i #") 
end 
end 

function W12_get_yes() 
x = GetTaskTemp(3) 
dest_city = mod(x,10) 
start_city = (x - dest_city) / 10 -- script viet hoa By http://tranhba.com  h�n nh�t ��nh c� th� c� tr� 
Talk(1,"","<#> d�ch quan # xin gi�p ta �em phong th� n�y h�m ��a ��n "..Define_City[dest_city].."<#> , b�i th�c . ") 
Msg2Player(Define_City[start_city].."<#> d�ch quan m�i/xin ng��i gi�p h�n �em m�t phong h�m m�n ��a ��n "..Define_City[dest_city].."<#> �i . ") 
AddNote("<#> nh�n ���c ��a tin nhi�m v� # xin/m�i �em m�t phong h�m m�n t� "..Define_City[start_city].."<#> ��a ��n "..Define_City[dest_city].." . ") 
SetTask(12,x) 
	AddEventItem(231+x)		-- script viet hoa By http://tranhba.com  �ź���242��ʼ�����д�1��ʼ
end 

function no() 
end 
