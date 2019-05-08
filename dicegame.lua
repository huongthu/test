IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\hotrothem.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
--Song bac

function main() 
--dofile("script/global/dicegame.lua");
dofile("script/huashan/dicegame.lua");
--local k = random(2,12)
--local i = 999999
dialog_main()
end; 


function dialog_main()	
local szTitle = "<npc>Oh! Xin ch�o <color=cyan>"..GetName().." <color>  huynh ��i, ng��i c� mu�n th� v�n may kh�ng! Ta c� c�c tr� ch�i r�t hay\nLu�t ch�i ��n gi�n:\n\t<color=green>X�u-T�i-B�o<color>: <color=yellow>��t c��c b�ng ti�n v�n<color>\n\t<color=cyan>B�u cua<color>:<color=gold> ��t c�a b�ng Kim Nguy�n B�o<color>"
	local tbOpt =
	{
		{"Ch�i li�n",ttry},
		{"Kh�ng ���c th� d� ch� 1 l�n !"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end

function ttry()
Say("<color=green>Ch� s�ng b�c<color>: C�c h� mu�n ��t c��c b�ng <color=blue>Ti�n v�n<color> hay <color=gold>Kim Nguy�n B�o<color> n�o ?",3,"Ti�n v�n/tvan","Kim Nguy�n B�o/knb","Th�i kh�i/no") 
end;

function tvan()
Say("<color=gold>Ch� s�ng b�c<color>: M�i c�c h� ch�n s� ti�n mu�n ��t",6,"V�a 20 V�N/c25v","Ch�i L�n 50 V�N/c50v","Qu�t 100 V�N/c100v","Kh� m�u 500 V�N/c500v","��i ��i 1000 V�N/c1000v","Th�i kh�ng ch�i n�a/no") 
end;

function knb()
Say("<color=gold>Ch� s�ng b�c<color>: � �, ��i hi�p <color=green>"..GetName().."<color> qu� l� b�c v��ng gi�, th� ng�i mu�n th� bao nhi�u <color=gold>Nguy�n B�o<color> ��y ? ",4,"1 Kim Nguy�n B�o /d1nb","Ch�i 5 Kim Nguy�n B�o /d5nb","Theo 10 Kim Nguy�n B�o lu�n /d10nb","Th�i �� xem l�i ��/no") 
end;

function d1nb()
j = 1
if GetItemCount(343) >= j then 
DelItem(343)
dicenb()
else
Talk(1,"","<color=pink>��i gia c� ��a, ng�i kh�ng mang �� <color=gold>Nguy�n B�o<color> r�i k�a<color>!") 
end;
end

function d5nb()
j = 5
if GetItemCount(343) >= j then 
for e=1,j do
DelItem(343)
end
dicenb()
else
Talk(1,"","<color=pink>��i gia c� ��a, ng�i kh�ng mang �� <color=gold>Nguy�n B�o<color> r�i k�a<color>!") 
end;
end

function d10nb()
j = 10
if GetItemCount(343) >= j then 
for e=1,j do
DelItem(343)
end
dicenb()
else
Talk(1,"","<color=pink>��i gia c� ��a, ng�i kh�ng mang �� <color=gold>Nguy�n B�o<color> r�i k�a<color>!") 
end;
end

function dicenb()
Say("<color=gold>Ch� s�ng b�c<color>:M�i ��i hi�p <color=green>"..GetName().."<color> ��t c�a. Lu�t ch�i nh� sau: \n\t<color=cyan>B�u , G� , Nai : ��a<color>\n\t<color=yellow>Nguy�n B�o: Trung (1 �n 3)<color>\n\t<color=blue>T�m, C�, Cua : Th�y<color>  ",3,"Theo ��a/dia","Theo Trung/trung","Theo Th�y/thuy") 
end;

function dia()

local h = random(1,11)

if (h == 3) then
Talk(2,"winnb","<color=yellow>K�t qu� l�c ��a : Nai<color>\n\t<color=gold>C�a n�y l� : <color=red>��a<color><color> ","<color=gold>Ch�c m�ng ��i hi�p �� th�ng ���c "..j.." Kim Nguy�n B�o<color>")
elseif (h == 7) then
Talk(2,"winnb","<color=yellow>K�t qu� l�c ��a : B�u<color>\n\t<color=gold>C�a n�y l� : <color=red>��a<color><color> ","<color=gold>Ch�c m�ng ��i hi�p �� th�ng ���c "..j.." Kim Nguy�n B�o<color>")
elseif (h == 11) then
Talk(2,"winnb","<color=yellow>K�t qu� l�c ��a : G�<color>\n\t<color=gold>C�a n�y l� : <color=red>��a<color><color> ","<color=gold>Ch�c m�ng ��i hi�p �� th�ng ���c "..j.." Kim Nguy�n B�o<color>")
--thua
elseif (h == 1) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : Cua<color>\n\t<color=gold>C�a n�y l� : <color=blue>Th�y<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
elseif (h == 5) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : C�<color>\n\t<color=gold>C�a n�y l� : <color=blue>Th�y<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
elseif (h == 9) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : T�m<color>\n\t<color=gold>C�a n�y l� : <color=blue>Th�y<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
elseif (h == 6) or (h == 8) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : Nguy�n B�o<color>\n\t<color=gold>C�a n�y l� : <color=gold>Trung<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
else
Talk(2,"lose2","<color=yellow>Ng��i l�m l�t ��a x�c r�i, b� x� thua<color> ","<color=cyan>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
end;
end

function thuy()

local h = random(1,11)

if (h == 3) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : Nai<color>\n\t<color=gold>C�a n�y l� : <color=red>��a<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
elseif (h == 7) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : B�u<color>\n\t<color=gold>C�a n�y l� : <color=red>��a<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
elseif (h == 11) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : G�<color>\n\t<color=gold>C�a n�y l� : <color=red>��a<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
--thua
elseif (h == 1) then
Talk(2,"winnb","<color=yellow>K�t qu� l�c ��a : Cua<color>\n\t<color=gold>C�a n�y l� : <color=blue>Th�y<color><color> ","<color=gold>Ch�c m�ng ��i hi�p �� th�ng ���c "..j.." Kim Nguy�n B�o<color>")
elseif (h == 5) then
Talk(2,"winnb","<color=yellow>K�t qu� l�c ��a : C�<color>\n\t<color=gold>C�a n�y l� : <color=blue>Th�y<color><color> ","<color=gold>Ch�c m�ng ��i hi�p �� th�ng ���c "..j.." Kim Nguy�n B�o<color>")
elseif (h == 9) then
Talk(2,"winnb","<color=yellow>K�t qu� l�c ��a : T�m<color>\n\t<color=gold>C�a n�y l� : <color=blue>Th�y<color><color> ","<color=gold>Ch�c m�ng ��i hi�p �� th�ng ���c "..j.." Kim Nguy�n B�o<color>")
elseif (h == 6) or (h == 8) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : Nguy�n B�o<color>\n\t<color=gold>C�a n�y l� : <color=gold>Trung<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
else
Talk(2,"lose2","<color=yellow>Ng��i l�m l�t ��a x�c r�i, b� x� thua<color> ","<color=cyan>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
end;
end

function trung()

local h = random(1,11)

if (h == 3) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : Nai<color>\n\t<color=gold>C�a n�y l� : <color=red>��a<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
elseif (h == 7) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : B�u<color>\n\t<color=gold>C�a n�y l� : <color=red>��a<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
elseif (h == 11) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : G�<color>\n\t<color=gold>C�a n�y l� : <color=red>��a<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
--thua
elseif (h == 1) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : Cua<color>\n\t<color=gold>C�a n�y l� : <color=blue>Th�y<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
elseif (h == 5) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : C�<color>\n\t<color=gold>C�a n�y l� : <color=blue>Th�y<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
elseif (h == 9) then
Talk(2,"lose2","<color=yellow>K�t qu� l�c ��a : T�m<color>\n\t<color=gold>C�a n�y l� : <color=blue>Th�y<color><color> ","<color=yellow>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
elseif (h == 6) then
Talk(2,"winnb","<color=yellow>K�t qu� l�c ��a : Nguy�n B�o<color>\n\t<color=gold>C�a n�y l� : <color=gold>Trung<color><color> ","Ch�c m�ng ��i hi�p �� th�ng ���c "..j.." Kim Nguy�n B�o<color>")
else
Talk(2,"lose2","<color=yellow>Ng��i l�m l�t ��a x�c r�i, b� x� thua<color> ","<color=cyan>��i hi�p b� thua m�t "..j.." Kim Nguy�n B�o<color>")
end;
end

function winnb()
for e=1,2*j do
AddEventItem(343)
end
Msg2Player("Th�ng ch� s�ng b�c, nh�n ���c "..j.." Kim Nguy�n B�o")
AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> �� th�ng ���c ch� s�ng b�c , may m�n nh�n ���c <color=gold>Kim Nguy�n B�o<color> !")
end

function winnb2()
for e=1,4*j do
AddEventItem(343)
end
Msg2Player("Th�ng ch� s�ng b�c, nh�n ���c "..3*j.." Kim Nguy�n B�o")
AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> �� th�ng ���c ch� s�ng b�c , may m�n nh�n ���c <color=gold>Kim Nguy�n B�o<color> !")
end

function lose2()
Msg2Player("B� thua b�c, m�t "..j.." Kim Nguy�n B�o")
end

function c25v()
i = 200000
if GetCash() >= i then 
Pay(i)
dice()
else
Talk(1,"","Kh�ng �� <color=green>ng�n l��ng<color> th� ta cho vay ch� ai l�i ch�i thi�u !") 
end;
end

function c50v()
i = 500000
if GetCash() >= i then 
Pay(i)
dice()
else
Talk(1,"","Kh�ng �� <color=green>ng�n l��ng<color> th� ta cho vay ch� ai l�i ch�i thi�u !") 
end;
end

function c100v()
i = 1000000
if GetCash() >= i then 
Pay(i)
dice()
else
Talk(1,"","Kh�ng �� <color=green>ng�n l��ng<color> th� ta cho vay ch� ai l�i ch�i thi�u !") 
end;
end

function c500v()
i = 5000000
if GetCash() >= i then 
Pay(i)
dice()
else
Talk(1,"","Kh�ng �� <color=green>ng�n l��ng<color> th� ta cho vay ch� ai l�i ch�i thi�u !") 
end;
end

function c1000v()
i = 10000000
if GetCash() >= i then 
Pay(i)
dice()
else
Talk(1,"","Kh�ng �� <color=green>ng�n l��ng<color> th� ta cho vay ch� ai l�i ch�i thi�u !") 
end;
end

function dice()
local szTitle = "<npc><color=cyan>Ch� S�ng B�c:<color>Lu�t ch�i ��n gi�n:\n\t<color=green>X�u<color>: 4 ��n 10 �i�m\n\t<color=plum>T�i<color>: 11 ��n 17 �i�m\n\t<color=yellow>B�o<color>: c� 3 x� ng�u b�ng �i�m nhau (x5 ti�n th��ng)"
	local tbOpt =
	{
		{"��t T�I",tai},
		{"��t B�O",bao},
		{"��t S�U",siu},
	}
	CreateNewSayEx(szTitle, tbOpt)
		
end


function tai()
local m = random(0,99)
local x = random(1,6)
local y = random(1,6)
local z = random(1,6)
s = x + y + z
if (m >= 24) and (s >= 4) and (s <= 10) then
Talk(2,"win","<color=yellow>K�t qu� quay x� ng�u 1 :"..x.." n�t<color>\n\t<color=blue>K�t qu� quay x� ng�u 2 :"..y.." n�t<color>\n\t<color=green>K�t qu� quay x� ng�u 3 :"..z.." n�t<color>\n\t<color=gold>T�ng �i�m "..s.." : T�I<color> ","<color=cyan>Ch�c m�ng ��i hi�p �� th�ng ���c "..i.." l��ng b�c<color>")
elseif  (m >= 24) and (s == 3) and (s >= 11) then
Talk(2,"lose","<color=yellow>K�t qu� quay x� ng�u 1 :"..x.." n�t<color>\n\t<color=blue>K�t qu� quay x� ng�u 2 :"..y.." n�t<color>\n\t<color=green>K�t qu� quay x� ng�u 3 :"..z.." n�t<color>\n\t<color=gold>T�ng �i�m "..s.." : Thua r�i!<color> ","<color=cyan>��i hi�p thua m�t "..i.." l��ng b�c<color>")
else 
Talk(2,"lose","<color=yellow>Ng��i l�m r�i x� ng�u r�i, b� x� thua<color> ","<color=cyan>��i hi�p thua m�t "..i.." l��ng b�c<color>")
end;
end

function siu()
local m = random(0,99)
local x = random(1,6)
local y = random(1,6)
local z = random(1,6)
s = x + y + z
if (m >= 24) and (s >= 11) and (s <= 17) then
Talk(2,"win","<color=yellow>K�t qu� quay x� ng�u 1 :"..x.." n�t<color>\n\t<color=blue>K�t qu� quay x� ng�u 2 :"..y.." n�t<color>\n\t<color=green>K�t qu� quay x� ng�u 3 :"..z.." n�t<color>\n\t<color=gold>T�ng �i�m "..s.." : S�u<color> ","<color=cyan>Ch�c m�ng ��i hi�p �� th�ng ���c "..i.." l��ng b�c<color>")
elseif (m >= 24) and (s >= 4) and (s <= 10) then
Talk(2,"lose","<color=yellow>K�t qu� quay x� ng�u 1 :"..x.." n�t<color>\n\t<color=blue>K�t qu� quay x� ng�u 2 :"..y.." n�t<color>\n\t<color=green>K�t qu� quay x� ng�u 3 :"..z.." n�t<color>\n\t<color=gold>T�ng �i�m "..s.." : Thua r�i!<color> ","<color=cyan>��i hi�p thua m�t "..i.." l��ng b�c<color>")
else
Talk(2,"lose","<color=yellow>Ng��i l�m r�i x� ng�u r�i, b� x� thua<color> ","<color=cyan>��i hi�p thua m�t "..i.." l��ng b�c<color>")
end;
end

function bao()
--local m = random(0,99)
local x = random(1,6)
local y = random(1,6)
local z = random(1,6)

if (x == y) and (y == z) then
Talk(2,"win2","<color=yellow>K�t qu� quay x� ng�u 1 :"..x.." n�t<color>\n\t<color=blue>K�t qu� quay x� ng�u 2 :"..y.." n�t<color>\n\t<color=green>K�t qu� quay x� ng�u 3 :"..z.." n�t<color>\n\t<color=gold>3 X� ng�u gi�ng nhau : B�o<color> ","<color=cyan>Ch�c m�ng ��i hi�p �� th�ng ���c "..i.." l��ng b�c<color>")
else
Talk(2,"lose","<color=yellow>K�t qu� quay x� ng�u 1 :"..x.." n�t<color>\n\t<color=blue>K�t qu� quay x� ng�u 2 :"..y.." n�t<color>\n\t<color=green>K�t qu� quay x� ng�u 3 :"..z.." n�t<color>\n\t<color=gold>3 x� ng�u kh�c nhau : Thua r�i<color>  ","<color=cyan>��i hi�p thua m�t "..i.." l��ng b�c<color>")
end;
end

function win()
Earn(2*i)
--Earn(i)
Msg2Player("C� c��c th�ng, nh�n ���c "..i.." l��ng b�c") 
end

function win2()
Earn(6*i)
Msg2Player("C� c��c th�ng, nh�n ���c "..5*i.." l��ng b�c") 
end

function lose()
Msg2Player("Ng��i �� thua, b� m�t "..i.." l��ng b�c") 
end

function no() 
end;