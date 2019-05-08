if (not __JOURNEYER_OFFICER_FESTIVAL2006_H__) then 
__JOURNEYER_OFFICER_FESTIVAL2006_H__ = 1; 
Include([[\script\missions\springfestival\festival_head.lua]]); 

function festival2006() 
Say(FESTIVAL06_NPCNAME.." g�n nh�t n�m th� l�i �i ra chung quanh h�i ng��i li�u , n�m th� lo�i v�t n�y s� ph� �ang � tr�n th�n ng��i , b� ph� th�n ng��i c�a s� bi�n th�nh qu�i v�t ��ch b� d�ng h�n n�a kh�ng b� kh�ng ch� h�i ng��i , ch� c� d�ng <color=yellow> roi ph�o <color> m�i c� th� �em n� �u�i �i . g�n nh�t quan ph� ng��i c�a tay c� h� c�ng �i ��i ph� n�m th� li�u , nh�ng v�n l� kh�ng �� , ta xem ng��i c�ng l� h�c v� ng��i , c� th� gi�p chuy�n sao ? ", 5,"Kh�ng th�nh v�n �� , v� d�n tr� h�i b� ta k� ng��i n�o #/festival06_wantjoin","Ta �� �em n�m th� �u�i ch�y #/festival06_award", " li�n quan t�i ��nh n�m th� ho�t ��ng /festival06_knowabout","H�i th�m tin t�c . /main_former","Ta g�n nh�t b�y gi� r�t b�n r�n , ng��i t�m ng��i kh�c �i . /festival06_Cancal"); 
end; 

function festival06_wantjoin() 
Say(FESTIVAL06_NPCNAME.." ng��i c� th� ��p �ng th�t l� th�t t�t qu� , ph�i ch� � ch�nh l� g�n nh�t b�i v� n�m th� ��a t�i tao lo�n , r�t nhi�u h�i t� �i m�t , � n�m th� xu�t hi�n th�i �i�m ph�i ch� � kh�ng n�n �� cho n�m th� �em b�n h� b�t �i , b�n h� s� r�t c�m t� ng��i . ", 2,"Ta bi�t , mau d�n ta �i n�m th� ra kh�ng c� ��a ph��ng �i . /festival_joingame","Ch� th�m ch�t n�a , ta �i chu�n b� m�t ch�t . /festival06_Cancal"); 
end; 

function festival06_award() 
local nGetCount = GetTask(TK_FE_COUNT_ONETIME); 
local nRank = GetTask(TK_FE_RANK); 
if (nGetCount <= 0 or nRank <= 0) then 
Say(FESTIVAL06_NPCNAME.." ng��i th�t gi�ng nh� c�ng kh�ng c� �i xua �u�i n�m th� �i , th�m t� c�a ch�ng ta v�n nh�n ��y , mu�n t��ng th��ng l�i c�a tr��c h�t �i �em n�m th� �u�i ch�y �i . ", 1,"K�t th�c ��i tho�i . /festival06_Cancal"); 
return 
end; 
festival06_addaward(); 
if (GetTask(TK_FE_GROUPID) > FE_SMALLMAPCOUNT) then 
Say(FESTIVAL06_NPCNAME.." m�i v�a r�i nguy hi�m th�t a , ng��i m�i v�a b� n�m th� ph� th�n li�u , c�ng may m�i ng��i h�p l�c �em gh� v�o tr�n ng��i ng��i ��ch n�m th� �u�i ch�y , b�t qu� ng��i d�m �i ��i m�t n�m th� c�ng �� r�t kh�ng d�y n�i , ��y l� ta ��ch m�t ch�t t�m � , ng��i nh�n l�y �i . ", 1,"Nh�n l�y l� v�t . /festival06_Cancal"); 
else 
Say(FESTIVAL06_NPCNAME.." ta �� t� th�m t� n�i �� nghe n�i , l�m r�t kh� # ng��i � ��y chi�n ��u m�i v�a r�i trung t�ng c�ng d�ng roi ph�o ��nh tr�ng n�m th� "..nGetCount.." l�n , l� ��nh tr�ng n�m th� th� "..nRank.." nhi�u ng��i , ��y l� ��a cho ng��i th� lao , c�m ch�c #", 1,"Nh�n l�y l� v�t . /festival06_Cancal"); 
end; 
end; 

function festival06_knowabout() 
Say(FESTIVAL06_NPCNAME.." mu�n �n ��n n�m th� ho�t ��ng m�t cu�c v� <color=yellow>15<color> ph�t , trong �� c� <color=yellow>5<color> ph�t chu�n b� th�i gian , � ghi danh tham gia sau ng��i s� b� mang t�i chu�n b� b�n �� . ho�t ��ng b�t ��u sau ng��i s� b� mang t�i n�m th� ra kh�ng c� ��a ph��ng , �ang ho�t ��ng b�t ��u <color=yellow>15<color> gi�y sau � tham gia ho�t ��ng ��ch nh� ch�i trong s� g�p c� 1~2 t�n nh� ch�i b� n�m th� ph� th�n , bi�n th�nh n�m th� ��ch nh� ch�i c�n �i b�t b�n �� trung xu�t hi�n �<color=yellow> �i v�t h�i t� <color>� . ", 2,"Trang k� ti�p /festival06_next","K�t th�c ��i tho�i . /festival06_Cancal"); 
end; 

function festival06_next() 
Say(FESTIVAL06_NPCNAME.." m� nh�ng kh�c nh� ch�i c�n d�ng �<color=yellow> roi ph�o <color>� xua �u�i n�m th� , c�ng ng�n c�n n�m th� �em con b�t �i , m�t cu�c ho�t ��ng sau khi k�t th�c �<color=yellow> nha m�n sai d�ch <color>� s� theo nh� nh� ch�i d�ng <color=yellow> roi ph�o <color> ��nh tr�ng n�m th� ��ch h�ng t�i ban h�nh t��ng th��ng . ", 1,"Ta bi�t . /festival06_Cancal"); 
end; 

tabExp = { 
5000000, 
4000000, 
3000000, 
2000000, 
1500000, 
1000000, 
500000, 
500000, 
}; 
tabRate = { 
{0, 0, 0, 0.12, 0.15, 0.2, 0.24, 0.15, 0.1, 0.04}, 
{0, 0, 0, 0.15, 0.15, 0.2, 0.24, 0.15, 0.08, 0.03}, 
{0, 0, 0, 0.16, 0.15, 0.25, 0.25, 0.12, 0.05, 0.02}, 
{0.05, 0.05, 0.12, 0.08, 0.12, 0.15, 0.2, 0.15, 0.08, 0}, 
{0.05, 0.06, 0.12, 0.08, 0.12, 0.15, 0.18, 0.18, 0.06, 0}, 
{0.05, 0.06, 0.12, 0.08, 0.12, 0.15, 0.15, 0.24, 0.03, 0}, 
{0.08, 0.08, 0.16, 0.08, 0.12, 0.15, 0.12, 0.2, 0.01, 0}, 
{0.1, 0.1, 0.15, 0.1, 0.12, 0.18, 0.15, 0.1, 0, 0} 
}; 

tabGoods = { 

}; 
function festival06_addaward() 
local nGetCount = GetTask(TK_FE_COUNT_ONETIME); 
local nRank = GetTask(TK_FE_RANK); 
if (nRank > getn(tabExp)) then 
nRank = getn(tabExp); 
end; 
SetTask(TK_FE_COUNT_ONETIME, 0); 
SetTask(TK_FE_RANK, 0); 

nRank = festival_award_rank(nRank); 
festival_expaward(nRank); 
festival_goodsaward(nRank); 
if (nRank <= 2) then 
local nSeed = random(1, 100); 
if (nSeed <= 2) then 
AddItem(0, 11, 263, 1, 0, 0, 0); 
Msg2Player("Ng��i thu ���c m�t <color=yellow> n�m th� m�t n� <color>") 
end; 
end; 
end; 

function festival_goodsaward(nRank) 
local nGroup = GetTask(TK_FE_GROUPID); 
local nGoodsType = festival_getgoodtype(nRank, nGroup); 
local strsay = ""; 
if (nGoodsType == 1) then 
AddItem(6, 1, 122, 1, 0, 0, 0); 
strsay = " ng��i thu ���c m�t ti�u Ph�c duy�n " 
elseif (nGoodsType == 2) then 
AddItem(6, 1, 71, 1, 0, 0, 0); 
strsay = " ng��i thu ���c m�t ti�n th�o l� " 
elseif (nGoodsType == 3) then 
local szItemName = festival_addpkwan(); 
strsay = " ng��i thu ���c m�t "..szItemName; 
elseif (nGoodsType == 4) then 
AddItem(6, 1, 123, 1, 0, 0, 0); 
strsay = " ng��i thu ���c m�t trung ph�c duy�n " 
elseif (nGoodsType == 5) then 
AddItem(6, 1, 147, 4, 0, 0, 0); 
strsay = " ng��i thu ���c m�t 4 c�p huy�n tinh " 
elseif (nGoodsType == 6) then 
AddItem(6, 1, 124, 1, 0, 0, 0); 
strsay = " ng��i thu ���c m�t ��i ph�c duy�n " 
elseif (nGoodsType == 7) then 
AddItem(6, 1, 147, 5, 0, 0, 0); 
strsay = " ng��i thu ���c m�t 5 c�p huy�n tinh " 
elseif (nGoodsType == 8) then 
AddItem(6, 1, 147, 6, 0, 0, 0); 
strsay = " ng��i thu ���c m�t 6 c�p huy�n tinh " 
elseif (nGoodsType == 9) then 
AddItem(6, 1, 147, 7, 0, 0, 0); 
strsay = " ng��i thu ���c m�t 7 c�p huy�n tinh " 
elseif (nGoodsType == 10) then 
AddItem(6, 1, 147, 8, 0, 0, 0); 
strsay = " ng��i thu ���c m�t 8 c�p huy�n tinh " 
end; 
Msg2Player(strsay); 
end; 

function festival_getgoodtype(nRank, nGroup) 

local nSeed = random(100); 
local nRate = {} 
local i; 
for i = 1, 10 do 
nRate[i] = tabRate[nRank][i] * 100; 
end; 
local nBase = 0; 
for i = 1, 10 do 
    		nBase = nBase + nRate[i];
if (nBase >= nSeed) then 
return i; 
end; 
end; 
end; 

function festival_expaward(nRank) 
if (nRank < 1) then 
nRank = 1; 
end; 
if (nRank > 8) then 
nRank = 8; 
end; 
local nCount = tabExp[nRank]; 
AddOwnExp(nCount); 
Msg2Player("Ng��i thu ���c <color=yellow>"..nCount.."<color> ch�t kinh nghi�m ") 
end; 

function festival_addpkwan() 
local itemidx = random(1, 10); 
AddItem(6, 0, itemidx, 1, 0, 0, 0); 
tab_pkwan_name = {"Tr��ng m�nh ho�n ","Th�m ch�y ho�n ","��i l�c ho�n ","Cao nhanh ch�ng ho�n ","Trung h�c �� nh� c�p ho�n ","Nhanh ch�ng ho�n ","B�ng ph�ng ho�n ", " l�i ph�ng ho�n ", " l�a ph�ng ho�n ","��c ph�ng ho�n "}; 
return tab_pkwan_name[itemidx]; 
end; 

function festival_award_rank(nRank) 
local nGroup = GetTask(TK_FE_GROUPID); 
if (nGroup > FE_SMALLMAPCOUNT) then 
if (nRank == 1) then 
nRank = 3; 
else 
nRank = 8; 
end; 
end; 
return nRank; 
end; 

function festival06_Cancal() 

end; 
end;