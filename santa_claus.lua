-- script viet hoa By http://tranhba.com  nam r�t l�o nh�n .lua ( gi�ng sinh ho�t ��ng ) 
Include([[\script\missions\chrismas\ch_head.lua]]); 
Include([[\script\missions\chrismas\xmas_day.lua]]); 

tabExp = { 
2000000, 
2000000, 
2000000, 
1500000, 
1500000, 
1500000, 
1000000, 
1000000, 
1000000, 
500000 
}; 

tabRate = { 
{0, 0.69, 0.27, 0.04}, 
{0, 0.83, 0.14, 0.03}, 
{0, 0.86, 0.13, 0.01}, 
{0, 0.85, 0.15, 0}, 
{0, 0.9, 0.1, 0}, 
{0, 0.95, 0.05, 0}, 
{0.27, 0.68, 0.05, 0}, 
{0.37, 0.59, 0.04, 0}, 
{0.61, 0.36, 0.03, 0}, 
{0.72, 0.26, 0.02, 0} 
}; 

function main() 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
if (nDate < 20061222) then 
Describe(DescLink_LiGuan.." l� gi�ng sinh vui v� !", 1,"K�t th�c ��i tho�i /oncancel"); 
else 
Describe(DescLink_LiGuan.." ha ha # l� gi�ng sinh vui v� # mu�n bi�t n�m nay l� gi�ng sinh c� c�i g� ho�t ��ng sao ?", 5, 
" nghe n�i �ng gi� n� en r�t h�nh l� /want_xmasevent", 
" ta mu�n t�o ng��i tuy�t ./want_snowman", 
" ta mu�n d�ng ng��i tuy�t ��i l� ph�m ./want_gift", 
" ta mu�n hi�u r� ho�t ��ng n�i dung /xmas_about", 
" ta b�y gi� b� b�n nhi�u vi�c , ch� m�t ch�t tr� l�i ./oncancel"); 
end; 
end; 

function want_xmasevent() 
if (isXmasTime() ~= 1) then 
Describe(DescLink_LiGuan.." c�m �n ng��i , ta �� t�m ���c t�i h�nh l� li�u .",1,"K�t th�c ��i tho�i /oncancel"); 
return 0; 
end; 
Describe(DescLink_LiGuan.." ta m�i v�a r�t m�t t�i h�nh l� , b�n trong c� r�t nhi�u qu� gi�ng sinh , ng��i c� th� gi�p ta t�m tr� v� sao ?", 4, 
" d� nhi�n c� th� n�a/r�i ./onok", 
" ta �� t�m ���c b�n h� ./award", 
" k�t th�c gi�ng sinh ho�t ��ng ./detail", 
" b�y gi� ta b� b�n nhi�u vi�c , c� r�nh r�i tr� chuy�n ti�p nga ./oncancel") 
end; 


function onok() 
if (50 > GetLevel()) then 
strTalk = DescLink_LiGuan.." ng��i l�ch l�m kh�ng c� ��t t�i 50 c�p , v�n kh�ng th� tham gia gi�ng sinh ho�t ��ng . "; 
Describe(strTalk, 1,"K�t th�c ��i tho�i /oncancel"); 
return 
end; 
Describe(DescLink_LiGuan.." nga , v�y th� th�t l� c�m �n nhi�u , ng��i t�i tr��c b�n kia chu�n b� m�t ch�t , ta m�t h�i li�n d�n ng��i ��n b�n h� �i v�t ��a ph��ng . ", 2,"T�t . /wantjoin","Ta ��t nhi�n c� ch�t vi�c g�p , tr��c h�t ch� m�t ch�t �i . /oncancel"); 
end; 

function award() 
local nCount = GetTask(TK_COUNT_ONETIME); 
local nRank = GetTask(TK_RANK); 
SetTask(TK_COUNT_ONETIME, 0); 
SetTask(TK_RANK, 0); 
if (nCount == 0 or nRank == 0) then 
Describe(DescLink_LiGuan.." ng��i th�t gi�ng nh� kh�ng c� t�m ���c b�t k� ��ch gi�ng sinh tinh linh �i . ", 1,"K�t th�c ��i tho�i /oncancel"); 
return 
end; 
local strSay = format("Ng��i th�t t�m ���c b�n h� , b�y gi� th�t t�t qu� # ta xem m�t ch�t , ng��i t�ng c�ng t�m ���c %d c� <color=yellow> gi�ng sinh tinh linh <color> , l� t�m ��n tinh linh th� %d nhi�u ng��i , t�i t�i , ��y l� l� v�t cho ng��i , nh�n l�y �i , a a a ~", nCount, nRank); 
Describe(DescLink_LiGuan..strSay, 1,"Nh�n l�y l� v�t . /oncancel"); 
giveaward(nRank); 
end; 

function detail() 
Describe(DescLink_LiGuan.." t�m tinh linh ho�t ��ng m�t cu�c v� <color=yellow>15<color> ph�t , trong �� c� <color=yellow>5<color> ph�t chu�n b� th�i gian , � ghi danh tham gia sau ng��i s� b� mang t�i chu�n b� b�n �� , ho�t ��ng b�t ��u sau ng��i s� b� mang t�i gi�ng sinh tinh linh �i v�t ��a ph��ng , n�u nh� ng��i � ��y n�i �� th�y <color=yellow> gi�ng sinh tinh linh <color> l�i c�a ch� c�n d�ng con chu�t <color=yellow> b�n tr�i ki�n �i�m k�ch <color> h�n l� ���c r�i , d� nhi�n ng��i c� l� s� b� nh�ng kh�c nh� ch�i ��ch ng�n tr� , l�c n�y ng��i c� th� d�ng ho�t ��ng ��o c� t�i ��i ph� nh�ng t�nh hu�ng n�y , ch� c�n ng��i t�m ���c nhi�u �� ��ch <color=yellow> gi�ng sinh tinh linh <color> nh� v�y �ng gi� n� en s� cho ng��i t�t l� v�t nga . ", 1,"Th�t th�n k� nh� v�y ? ta xem m�t ch�t . /oncancel"); 
end; 

function giveaward(nRank) 
expaward(nRank); 
goodsaward(nRank); 
end; 

function expaward(nRank) 
AddOwnExp(tabExp[nRank]); 
end; 

function goodsaward(nRank) 
local nGoodsType = getgoodtype(nRank); 
if (nGoodsType == 1) then 
AddItem(6, 1, 1008, 1, 0, 0, 0); 
local strsay = " ng��i thu ���c m�t ho�ng kim m�m m�ng " 
Msg2Player(strsay); 
elseif (nGoodsType == 2) then 
AddItem(6, 1, 1007, 1, 0, 0, 0); 
local strsay = " ng��i thu ���c m�t th�y tinh m�m m�ng " 
Msg2Player(strsay); 
elseif (nGoodsType == 3) then 
AddItem(6, 1, 1006, 1, 0, 0, 0); 
local strsay = " ng��i thu ���c m�t hoa h�ng m�m m�ng " 
Msg2Player(strsay); 
elseif (nGoodsType == 4) then 
AddItem(6, 1, 1005, 1, 0, 0, 0); 
local strsay = " ng��i thu ���c m�t may m�n m�m m�ng " 
Msg2Player(strsay); 
end; 
end; 

function getgoodtype(nRank) 
local nSeed = random(100); 
local nRate = {} 
local i; 
for i = 1, 4 do 
nRate[i] = tabRate[nRank][i] * 100; 
end; 
local nBase = 0; 
for i = 1, 4 do 
		nBase = nBase + nRate[i];
if (nBase >= nSeed) then 
return (5 - i); 
end; 
end; 
end; 

function onsale() 

end; 

function wantjoin() 
local w, x, y; 
w, x, y = GetWorldPos(); 
SetTask(TK_LEAVERMAPID, w); -- script viet hoa By http://tranhba.com  t�n tr� nh� ch�i r�i �i t�a �� 
SetTask(TK_LEAVERPOSX, x); 
SetTask(TK_LEAVERPOSY, y); 
joingame() -- script viet hoa By http://tranhba.com  gia nh�p v�o trong tr� ch�i 
end; 

function xmas_about() 
Describe(DescLink_LiGuan.." �ang ho�t ��ng th�i gian b�n trong , nh� ch�i c�n ��nh tr�ch t�i thu t�p h�p qu� , b�n trong s� c� <color=yellow> b�ng tuy�t , gia t� , t�ng chi , c�i m� , t�ng c�y , vi c�n <color>, l� d�ng t�i luy�n ch� <color=yellow> ��c bi�t ng��i tuy�t ��ch nguy�n li�u <color>. nh�n c�ng luy�n ch� th�t b�i , �em l�m ra <color=yellow> m�t lo�i ng��i tuy�t <color>. sau �� , c� th� d�ng ng��i tuy�t �� ��i l�y l� ph�m .", 1,"Ta bi�t /main"); 
end; 

function oncancel() -- script viet hoa By http://tranhba.com  h�y b� 

end; 
