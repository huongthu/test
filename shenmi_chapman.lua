-- script viet hoa By http://tranhba.com  th�n b� th��ng nh�n ��i tho�i ch�n v�n 
-- script viet hoa By http://tranhba.com  Li_Xin(2004-07-20) 

-- script viet hoa By http://tranhba.com Include("\\script\\global\\systemconfig.lua") -- script viet hoa By http://tranhba.com  ϵͳ����
IncludeLib("ITEM") 
IncludeLib("SETTING") 

function writeChapManLog(str) 
WriteLog(date("%H%M%S").."# tr��ng m�c #"..GetAccount().." , vai tr� #"..GetName().." , "..str); 
end; 

function writeChapManGoldLog( str, nPaidGold, nPaidSilver, nPaidCoin, nPaidTicket ) 
WriteGoldLog( GetAccount().."("..GetName()..") "..str, -nPaidGold, -nPaidSilver, -nPaidCoin, -nPaidTicket ); 
end; 

function get1() 
str= 
{ 
"<#> th�n b� th��ng nh�n # ��y ch�nh l� trong ch�n v� l�m ��n ��i ��ch tuy�t th� tr�n ph�m v� kh� �� ph� li�u . v� kh� �� ph� d�ng �� �o�n t�o binh kh� , tr�i qua b� ph�p r�n luy�n , c� th� ��t t�i th�ng c�p chi hi�u . ng��i c� th� d�ng th�y tinh t�i trao ��i , c� h�ng th� sao ? ", 
"<#> ch�ng qua l� xem m�t ch�t /no", 
"<#> l�ng v��ng s�ng �o�n t�o t�n thi�n ( s�ng )/yes1", 
"<#> huy�n v� ch�y chi ch� t�o thu�t ( ch�y )/yes2", 
"<#> r�ng ng�m ki�m �o�n t�o �� ( ki�m )/yes3", 
"<#> Gia C�t ky qu�t m�t mu�n ( n� )/yes4", 
"<#> li�u l� b� phong �ao # t�y l�y thi�n ( phi �ao )/yes5", 
"<#> huy�n th�ng �ao t� kinh b�o l�c ( �ao )/yes6", 
"<#> thi�n c� c�n �� ph� ( c�n )/yes7", 
"<#> �m kh� t�ng ph� # cu�n m�t ( phi ti�u )/yes8", 
"<#> uy�n ��ng �ao # ph�t ra �nh s�ng thi�n ( song �ao )/yes9" 
}; 
Say(str[1],10,str[2],str[3],str[4],str[5],str[6],str[7],str[8],str[9],str[10],str[11]) 
end; 

function get2() 
str= 
{ 
"<#> th�n b� th��ng nh�n # ��y c�ng l� ta th�n ph� t�c b�n ngo�i Thi�n S�n c�ng ba mi�u c�nh ��ng hoang vu mua ���c ��ch v�c ngo�i k� tr�n li�u . v�c ngo�i k� tr�n d�ng cho �o�n t�o y ph�c # c�i m� , t�t c� di�u d�ng . c� h�ng th� sao ? ", 
"<#> b�ng t�m v� c�c ti ( t�ng l�n c�p b�c )/buy_silk", 
"<#> nam minh chi tinh ( r�t xu�ng c�p b�c )/buy_stone", 
"<#> ch�ng qua l� xem m�t ch�t /no", 
}; 
Say(str[1],3,str[2],str[3],str[4]) 
end; 

function yes1() 
-- script viet hoa By http://tranhba.com  Vi�t Nam b�n b�n gi� c� thay ��i # 
Say("Th�n b� th��ng nh�n # ng��i nh�t ��nh ph�i ��i <color=red> l�ng v��ng s�ng �o�n t�o t�n thi�n <color> sao ? l�ng v��ng s�ng �o�n t�o t�n thi�n c�n 1 vi�n <color=red> t� th�y tinh <color>#<color=red>2 vi�n n��c bi�c tinh <color> c�ng <color=red>1 vi�n lan th�y tinh <color> trao ��i . ",2,"X�c ��nh /sure1","H�y b� /no") 
end; 

function sure1() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","Th�n b� th��ng nh�n # t�t , nh�n ���c th�y tinh li�u . ��y l� ng��i ��ch �� ph� , ng��i xem m�t ch�t , b�o ��m c� th� t�ng l�n v� kh� c�a ng��i c�p b�c . ") 
DelItemEx(238) 
DelItemEx(239) 
-- script viet hoa By http://tranhba.com DelItemEx(239) 
-- script viet hoa By http://tranhba.com DelItemEx(239) 
DelItemEx(240) 
-- script viet hoa By http://tranhba.com DelItemEx(240) 
AddEventItem(406) 
writeChapManLog("Ng��i l�y ���c l�ng v��ng s�ng �o�n t�o t�n thi�n . ") 
Msg2Player("Ng��i l�y ���c l�ng v��ng s�ng �o�n t�o t�n thi�n . ") 
else 
Talk(1,"","Th�n b� th��ng nh�n # l�ng v��ng s�ng �o�n t�o t�n thi�n c�n 1 vi�n t� th�y tinh #1 vi�n n��c bi�c tinh c�ng 1 vi�n lan th�y tinh trao ��i , ng��i th�y tinh gi�ng nh� kh�ng �� ��y #") 
end 
end; 

function yes2() 
Say("Th�n b� th��ng nh�n # ng��i nh�t ��nh ph�i ��i <color=red> huy�n v� ch�y chi ch� t�o thu�t <color> sao ? huy�n v� ch�y chi ch� t�o thu�t c�n 1 vi�n <color=red> t� th�y tinh <color>#1 vi�n <color=red> n��c bi�c tinh <color> c�ng 1 vi�n <color=red> lan th�y tinh <color> trao ��i . ",2,"X�c ��nh /sure2","H�y b� /no") 
end; 

function sure2() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","Th�n b� th��ng nh�n # t�t , nh�n ���c th�y tinh li�u . ��y l� ng��i ��ch �� ph� , ng��i xem m�t ch�t , b�o ��m c� th� t�ng l�n v� kh� c�a ng��i c�p b�c . ") 
DelItemEx(238) 
-- script viet hoa By http://tranhba.com DelItemEx(238) 
DelItemEx(239) 
-- script viet hoa By http://tranhba.com DelItemEx(239) 
DelItemEx(240) 
-- script viet hoa By http://tranhba.com DelItemEx(240) 
AddEventItem(407) 
writeChapManLog("Ng��i l�y ���c huy�n v� ch�y chi ch� t�o thu�t . ") 
Msg2Player("Ng��i l�y ���c huy�n v� ch�y chi ch� t�o thu�t . ") 
else 
Talk(1,"","Th�n b� th��ng nh�n # huy�n v� ch�y chi ch� t�o thu�t c�n 1 vi�n t� th�y tinh #1 vi�n n��c bi�c tinh c�ng 1 vi�n lan th�y tinh trao ��i , ng��i th�y tinh gi�ng nh� kh�ng �� ��y #") 
end 
end; 

function yes3() 
Say("Th�n b� th��ng nh�n # ng��i nh�t ��nh ph�i ��i <color=red> r�ng ng�m ki�m �o�n t�o �� <color> sao ? r�ng ng�m ki�m �o�n t�o �� c�n 1 vi�n <color=red> t� th�y tinh <color>#1 vi�n <color=red> n��c bi�c tinh <color> c�ng 1 vi�n <color=red> lan th�y tinh <color> trao ��i . ",2,"X�c ��nh /sure3","H�y b� /no") 
end; 

function sure3() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","Th�n b� th��ng nh�n # t�t , nh�n ���c th�y tinh li�u . ��y l� ng��i ��ch �� ph� , ng��i xem m�t ch�t , b�o ��m c� th� t�ng l�n v� kh� c�a ng��i c�p b�c . ") 
DelItemEx(238) 
-- script viet hoa By http://tranhba.com DelItemEx(238) 
-- script viet hoa By http://tranhba.com DelItemEx(238) 
DelItemEx(239) 
DelItemEx(240) 
-- script viet hoa By http://tranhba.com DelItemEx(240) 
AddEventItem(408) 
writeChapManLog("Ng��i l�y ���c r�ng ng�m ki�m �o�n t�o �� . ") 
Msg2Player("Ng��i l�y ���c r�ng ng�m ki�m �o�n t�o �� . ") 
else 
Talk(1,"","Th�n b� th��ng nh�n # r�ng ng�m ki�m �o�n t�o �� c�n 1 vi�n t� th�y tinh #1 vi�n n��c bi�c tinh c�ng 1 vi�n lan th�y tinh trao ��i , ng��i th�y tinh gi�ng nh� kh�ng �� ��y #") 
end 
end; 

function yes4() 
Say("Th�n b� th��ng nh�n # ng��i nh�t ��nh ph�i ��i <color=red> Gia C�t ky qu�t m�t mu�n <color> sao ? Gia C�t ky qu�t m�t mu�n c�n 1 vi�n <color=red> t� th�y tinh <color> c�ng 1 vi�n <color=red> n��c bi�c tinh <color> c�ng 1 vi�n <color=red> lan th�y tinh <color> trao ��i . ",2,"X�c ��nh /sure4","H�y b� /no") 
end; 

function sure4() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","Th�n b� th��ng nh�n # t�t , nh�n ���c th�y tinh li�u . ��y l� ng��i ��ch �� ph� , ng��i xem m�t ch�t , b�o ��m c� th� t�ng l�n v� kh� c�a ng��i c�p b�c . ") 
DelItemEx(238) 
DelItemEx(239) 
-- script viet hoa By http://tranhba.com DelItemEx(239) 
DelItemEx(240) 
-- script viet hoa By http://tranhba.com DelItemEx(240) 
AddEventItem(409) 
writeChapManLog("Ng��i l�y ���c Gia C�t ky qu�t m�t mu�n . ") 
Msg2Player("Ng��i l�y ���c Gia C�t ky qu�t m�t mu�n . ") 
else 
Talk(1,"","Th�n b� th��ng nh�n # Gia C�t ky qu�t m�t mu�n c�n 1 vi�n t� th�y tinh c�ng 1 vi�n n��c bi�c tinh c�ng 1 vi�n lam th�y tinh trao ��i , ng��i th�y tinh gi�ng nh� kh�ng �� ��y #") 
end 
end; 

function yes5() 
Say("Th�n b� th��ng nh�n # ng��i nh�t ��nh ph�i ��i <color=red> li�u l� b� phong �ao # t�y l�y thi�n <color> sao ? li�u l� b� phong �ao # t�y l�y thi�n c�n 1 vi�n <color=red> t� th�y tinh <color> c�ng 1 vi�n <color=red> n��c bi�c tinh <color> c�ng 1 vi�n <color=red> lan th�y tinh <color> trao ��i . ",2,"X�c ��nh /sure5","H�y b� /no") 
end; 

function sure5() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","Th�n b� th��ng nh�n # t�t , nh�n ���c th�y tinh li�u . ��y l� ng��i ��ch �� ph� , ng��i xem m�t ch�t , b�o ��m c� th� t�ng l�n v� kh� c�a ng��i c�p b�c . ") 
DelItemEx(238) 
-- script viet hoa By http://tranhba.com DelItemEx(238) 
DelItemEx(239) 
DelItemEx(240) 
AddEventItem(410) 
writeChapManLog("Ng��i l�y ���c li�u l� b� phong �ao # t�y l�y thi�n . ") 
Msg2Player("Ng��i l�y ���c li�u l� b� phong �ao # t�y l�y thi�n . ") 
else 
Talk(1,"","Th�n b� th��ng nh�n # li�u l� b� phong �ao # t�y l�y thi�n c�n 1 vi�n t� th�y tinh #1 vi�n n��c bi�c tinh c�ng 1 vi�n lan th�y tinh trao ��i , ng��i th�y tinh gi�ng nh� kh�ng �� ��y #") 
end 
end; 

function yes6() 
Say("Th�n b� th��ng nh�n # ng��i nh�t ��nh ph�i ��i <color=red> huy�n th�ng �ao t� kinh b�o l�c <color> sao ? huy�n th�ng �ao t� kinh b�o l�c c�n 1 vi�n <color=red> t� th�y tinh <color> c�ng 1 vi�n <color=red> n��c bi�c tinh <color> c�ng 1 vi�n <color=red> lan th�y tinh <color> trao ��i . ",2,"X�c ��nh /sure6","H�y b� /no") 
end; 

function sure6() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","Th�n b� th��ng nh�n # t�t , nh�n ���c th�y tinh li�u . ��y l� ng��i ��ch �� ph� , ng��i xem m�t ch�t , b�o ��m c� th� t�ng l�n v� kh� c�a ng��i c�p b�c . ") 
DelItemEx(238) 
-- script viet hoa By http://tranhba.com DelItemEx(238) 
DelItemEx(239) 
-- script viet hoa By http://tranhba.com DelItemEx(239) 
DelItemEx(240) 
AddEventItem(411) 
writeChapManLog("Ng��i l�y ���c huy�n th�ng �ao t� kinh b�o l�c . ") 
Msg2Player("Ng��i l�y ���c huy�n th�ng �ao t� kinh b�o l�c . ") 
else 
Talk(1,"","Th�n b� th��ng nh�n # huy�n th�ng �ao t� kinh b�o l�c c�n 1 vi�n t� th�y tinh c�ng 1 vi�n n��c bi�c tinh c�ng 1 vi�n lan th�y tinh trao ��i , ng��i th�y tinh gi�ng nh� kh�ng �� ��y #") 
end 
end; 

function yes7() 
Say("Th�n b� th��ng nh�n # ng��i nh�t ��nh ph�i ��i <color=red> thi�n c� c�n �� ph� <color> sao ? thi�n c� c�n �� ph� c�n 1 vi�n <color=red> t� th�y tinh <color>#1 vi�n <color=red> n��c bi�c tinh <color> c�ng 1 vi�n <color=red> lan th�y tinh <color> trao ��i . ",2,"X�c ��nh /sure7","H�y b� /no") 
end; 

function sure7() 
if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
Talk(1,"","Th�n b� th��ng nh�n # t�t , nh�n ���c th�y tinh li�u . ��y l� ng��i ��ch �� ph� , ng��i xem m�t ch�t , b�o ��m c� th� t�ng l�n v� kh� c�a ng��i c�p b�c . ") 
DelItemEx(238) 
DelItemEx(239) 
DelItemEx(240) 
AddEventItem(412) 
writeChapManLog("Ng��i l�y ���c thi�n c� c�n �� ph� . ") 
Msg2Player("Ng��i l�y ���c thi�n c� c�n �� ph� . ") 
else 
Talk(1,"","Th�n b� th��ng nh�n # thi�n c� c�n �� ph� c�n 1 vi�n t� th�y tinh #1 vi�n n��c bi�c tinh c�ng 1 vi�n lan th�y tinh trao ��i , ng��i th�y tinh gi�ng nh� kh�ng �� ��y #") 
end 
end; 

function yes8() 
Say("Th�n b� th��ng nh�n # ng��i nh�t ��nh ph�i ��i <color=red> �m kh� t�ng ph� # cu�n m�t <color> sao ? �m kh� t�ng ph� # cu�n m�t c�n 2 vi�n <color=red> t� th�y tinh <color> trao ��i . ",2,"X�c ��nh /sure8","H�y b� /no") 
end; 

function sure8() 
if ((GetItemCountEx(239)>=2)) then 
Talk(1,"","Th�n b� th��ng nh�n # t�t , nh�n ���c th�y tinh li�u . ��y l� ng��i ��ch �� ph� , ng��i xem m�t ch�t , b�o ��m c� th� t�ng l�n v� kh� c�a ng��i c�p b�c . ") 
DelItemEx(239) 
DelItemEx(239) 
AddEventItem(413) 
writeChapManLog("Ng��i l�y ���c �m kh� t�ng ph� # cu�n m�t . ") 
Msg2Player("Ng��i l�y ���c �m kh� t�ng ph� # cu�n m�t . ") 
else 
Talk(1,"","Th�n b� th��ng nh�n # �m kh� t�ng ph� # cu�n m�t c�n 2 vi�n t� th�y tinh trao ��i , ng��i th�y tinh gi�ng nh� kh�ng �� ��y #") 
end 
end; 

function yes9() 
Say("Th�n b� th��ng nh�n # ng��i nh�t ��nh ph�i ��i <color=red> uy�n ��ng �ao # ph�t ra �nh s�ng thi�n <color> sao ? uy�n ��ng �ao # ph�t ra �nh s�ng thi�n c�n 1 vi�n <color=red> t� th�y tinh <color> trao ��i . ",2,"X�c ��nh /sure9","H�y b� /no") 
end; 

function sure9() 
if ((GetItemCountEx(239)>=1)) then 
Talk(1,"","Th�n b� th��ng nh�n # t�t , nh�n ���c th�y tinh li�u . ��y l� ng��i ��ch �� ph� , ng��i xem m�t ch�t , b�o ��m c� th� t�ng l�n v� kh� c�a ng��i c�p b�c . ") 
DelItemEx(239) 
AddEventItem(414) 
writeChapManLog("Ng��i l�y ���c uy�n ��ng �ao # ph�t ra �nh s�ng thi�n . ") 
Msg2Player("Ng��i l�y ���c uy�n ��ng �ao # ph�t ra �nh s�ng thi�n . ") 
else 
Talk(1,"","Th�n b� th��ng nh�n # uy�n ��ng �ao # ph�t ra �nh s�ng thi�n c�n 1 vi�n t� th�y tinh trao ��i , ng��i th�y tinh gi�ng nh� kh�ng �� ��y #") 
end 
end; 

function buy_silk() 
str= 
{ 
"<#> th�n b� th��ng nh�n # ng��i nh�t ��nh ph�i mua <color=red> b�ng t�m v� c�c ti <color> sao ? c�n 1 c� <color=red> kim nguy�n b�o <color> , ho�c l� 1 t� <color=red> ng�n phi�u <color> m�i c� th� mua nga . ", 
"<#> d�ng kim nguy�n b�o mua /sure10", 
"<#> h�y b� /no", 
}; 
Say(str[1],2,str[2],str[3]) 
end; 

function sure10() 
if (CalcEquiproomItemCount(4, 417, 1, 1)>=40) then 
Talk(1,"","Th�n b� th��ng nh�n # t�t , nh�n ���c kim nguy�n b�o . ��y l� ng��i ��ch <color=red> b�ng t�m v� c�c ti <color> , ng��i xem m�t ch�t , b�o ��m c� th� t�ng l�n y ph�c c�a ng��i # c�i m� c�p b�c . ") 
ConsumeEquiproomItem(40, 4, 417, 1, 1) 
AddEventItem(415) 
UseSilver(1, 2, 2); -- script viet hoa By http://tranhba.com  kim nguy�n b�o ��i v� ��ng ti�n ��ch ti�u hao th�ng k� ( tr�c ti�p ti�u hao nguy�n b�o ng�n phi�u , c�ng ��ng ti�n ��i ch� c�ng x� l� ) 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
-- script viet hoa By http://tranhba.com  writeChapManLog("Ng��i l�y ���c b�ng t�m v� c�c ti . ") 
writeChapManGoldLog("T�n hao 1 c� kim nguy�n b�o , l�y ���c b�ng t�m v� c�c ti ", 1, 0, 0, 0); 
Msg2Player("Ng��i l�y ���c b�ng t�m v� c�c ti . ") 
else 
Talk(1,"","Th�n b� th��ng nh�n # b�ng t�m v� c�c ti c�n 1 c� kim nguy�n b�o m�i c� th� mua , ng��i kim nguy�n b�o gi�ng nh� kh�ng �� ��y #") 
end 
end; 

function buy_stone() 
str= 
{ 
"<#> th�n b� th��ng nh�n # ng��i nh�t ��nh ph�i mua <color=red> nam minh chi tinh <color> sao ? c�n 1 c� <color=red> kim nguy�n b�o <color> , ho�c l� 1 t� <color=red> ng�n phi�u <color> m�i c� th� mua nga . ", 
"<#> d�ng kim nguy�n b�o mua /sure11", 
"<#> h�y b� /no", 
}; 
Say(str[1],2,str[2],str[3]) 
end; 

function sure11() 
if (CalcEquiproomItemCount(4, 417, 1, 1)>=40) then 
Talk(1,"","Th�n b� th��ng nh�n # t�t , nh�n ���c kim nguy�n b�o . ��y l� ng��i ��ch <color=red> nam minh chi tinh <color> , ng��i xem m�t ch�t , b�o ��m c� th� r�t xu�ng y ph�c c�a ng��i # c�i m� c�p b�c . ") 
ConsumeEquiproomItem(40, 4, 417, 1, 1) 
AddEventItem(416) 
UseSilver(1, 2, 2); -- script viet hoa By http://tranhba.com  kim nguy�n b�o ��i v� ��ng ti�n ��ch ti�u hao th�ng k� ( tr�c ti�p ti�u hao nguy�n b�o ng�n phi�u , c�ng ��ng ti�n ��i ch� c�ng x� l� ) 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 

-- script viet hoa By http://tranhba.com  writeChapManLog("Ng��i l�y ���c nam minh chi tinh . ") 
writeChapManGoldLog("T�n hao 1 c� kim nguy�n b�o , l�y ���c nam minh chi tinh ", 1, 0, 0, 0); 
Msg2Player("Ng��i l�y ���c nam minh chi tinh . ") 
else 
Talk(1,"","Th�n b� th��ng nh�n # nam minh chi tinh c�n 1 c� kim nguy�n b�o m�i c� th� mua , ng��i kim nguy�n b�o gi�ng nh� kh�ng �� ��y #") 
end 
end; 


function deal_brokenequip() 
if (ST_CheckLockState() == 1) then 
Say("Th�n b� th��ng nh�n # ph�i x� l� <color=red>< h� h�i ��ch trang b� ><color> , tu tr��c gi�i t�a tr� v�t r��ng . ng��i tr� v�t r��ng x� vu <color=red> �� phong t�a <color> tr�ng th�i # xin/m�i tr��c gi�i t�a #", 0) 
return 
end 
Say("Th�n b� th��ng nh�n # ng��i c� <color=red>< h� h�i ��ch trang b� ><color> ? mu�n x� l� nh� th� n�o ��y ? ", 2,"Ta mu�n d�ng ch�a tr� qu�ng th�ch �em n� ph�c h�i nh� c� /restore_brokenequip","Ta kh�ng c�n , m�i/xin ng��i �em n� thu v� �i /throw_brokenequip") 
end 

function check_brokenequip(nCount, szDealFunc) 
if (nCount <= 0) then 
return 0 
end 

if (nCount > 1) then 
Say("Th�n b� th��ng nh�n # m�t l�n ch� c� th� x� l� m�t m�n <color=red>< h� h�i ��ch trang b� ><color> nga ", 2,"Nguy�n lai l� �� sai l�m r�i , ta n�ng h�n �� m�t l�n /"..szDealFunc,"Ta n�a ki�m tra xem m�t ch�t /no") 
return 0 
end 

local nItemIdx = GetGiveItemUnit(1); 
itemgenre, detailtype, parttype = GetItemProp(nItemIdx) 
if (itemgenre ~= 7) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� h� h�i ��ch trang b� 
Say("Th�n b� th��ng nh�n # ng��i b� v�o t�i kh�ng ph�i l� <color=red>< h� h�i ��ch trang b� ><color> , xin/m�i c�n th�n ki�m tra m�t c�i ", 2,"Nguy�n lai l� �� sai l�m r�i , ta n�ng h�n �� m�t l�n /"..szDealFunc,"Ta n�a ki�m tra xem m�t ch�t /no") 
return 0 
end 

return nItemIdx 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  � h� h�i ��ch trang b� � v�t 
function throw_brokenequip() 
GiveItemUI( "< h� h�i ��ch trang b� > thu v� gi�i m�t ","Xin/m�i �em mu�n b� thu v� ��ch < h� h�i ��ch trang b� > th� v�o ��t � ph�a d��i v� �ch c�ch trong . ", "on_throw_be", "no" ); 
end 

function on_throw_be(nCount) 
local nItemIdx = check_brokenequip(nCount, "throw_brokenequip") 
if (nItemIdx == 0) then 
return 
end 

local szItemName = GetItemName(nItemIdx) 
Say("Th�n b� th��ng nh�n #<color=red>< h� h�i ��ch trang b� >"..szItemName.."<color> m�t khi b� thu v� , s� bi�n m�t , ng��i nh�t ��nh ph�i �em n� v�t sao ? ", 2,"Ta x�c ��nh kh�ng c�n , xin/m�i thu v� �i /#throw_be_sure("..nItemIdx..")","Ta suy ngh� m�t ch�t n�a /no") 
end 

function throw_be_sure(nItemIdx) 
local szItemName = GetItemName(nItemIdx) 
RemoveItemByIndex(nItemIdx) 
Msg2Player("< h� h�i ��ch trang b� >"..szItemName.." �� b� thu v� "); 
writeChapManLog("[Remove]: RestoreBrokenEquip Remove: "..szItemName); 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  � h� h�i ��ch trang b� � kh�i ph�c 
function restore_brokenequip() 
GiveItemUI( "< h� h�i ��ch trang b� > ph�c h�i nh� c� gi�i m�t ","Xin/m�i �em < h� h�i ��ch trang b� > ��t � ph�a d��i v� �ch c�ch trong . ti�u hao ch�a tr� qu�ng th�ch ��m # b�nh th��ng trang b� c�n 1 c� , m�u t�m trang b� c�n 2 c� , ho�ng kim trang b� c�n 5 c� . ��c bi�t ch� � # ti�n h�nh ph�c h�i nh� c� tr��c , xin/m�i ki�m tra t�i �eo l�ng c� hay kh�ng c� ��y �� kh�ng gian . ", "on_restore_be", "no" ); 
end 

function on_restore_be(nCount) 
local nItemIdx = check_brokenequip(nCount, "restore_brokenequip") 
if (nItemIdx == 0) then 
return 
end 

local szItemName = GetItemName(nItemIdx) 
local nQuality = GetItemQuality(nItemIdx) 
local nCoinCount = CalcEquiproomItemCount(6,1,2163,1) 
local nNeedCoin = 0; 

if (nQuality == 0) then 
nNeedCoin = 1; 
elseif (nQuality == 1) then -- script viet hoa By http://tranhba.com  ho�ng kim trang b� 
nNeedCoin = 5; 
elseif (nQuality == 2) then -- script viet hoa By http://tranhba.com  m�u t�m trang b� 
nNeedCoin = 2; 
elseif (nQuality == 4) then -- script viet hoa By http://tranhba.com  b�ch kim trang b� 
nNeedCoin = 10; 
end 

if (nNeedCoin <= 0) then 
Say("Th�n b� th��ng nh�n # c�i n�y l� c�i g� trang b� , ta sao kh�ng quen bi�t ? xin/m�i c�ng kh�ch ph�c li�n l�c . ", 1,"Nga /no") 
writeChapManLog("[Error]: RestoreBrokenEquip Fail. ItemQuality:"..nQuality); 
return 
end 

if (nCoinCount < nNeedCoin) then 
Say("Th�n b� th��ng nh�n # mu�n ph�c h�i nh� c� <color=red>< h� h�i ��ch trang b� >"..szItemName.."<color> , c�n "..nNeedCoin.." c� ch�a tr� qu�ng th�ch . ng��i mang ��ch ch�a tr� qu�ng th�ch kh�ng �� , xin/m�i l�i �i l�y m�t �t �i ", 1,"Hi�u , ta �i tr��c l�y ch�a tr� qu�ng th�ch li�u /no") 
return 
end 

if (ConsumeEquiproomItem(nNeedCoin, 6, 1, 2163, -1) == 1) then 
if (ITEM_BrokenEquip2Normal(nItemIdx) == 1) then 
SetCurDurability(nItemIdx, GetMaxDurability(nItemIdx)) -- script viet hoa By http://tranhba.com  n�i l�u �� kh�i ph�c v� l�n nh�t n�i l�u �� 
Msg2Player("Ti�u hao "..nNeedCoin.." c� ch�a tr� qu�ng th�ch , < h� h�i ��ch trang b� >"..szItemName.." ph�c h�i nh� c� th�nh c�ng , xin/m�i ki�m tra t�i �eo l�ng "); 
writeChapManGoldLog("[Succeed]: RestoreBrokenEquip Ok: "..szItemName, 0, 0, nNeedCoin, 0) 
-- script viet hoa By http://tranhba.com  Fix ch ch�m n#g s t�c # - Created by AnhHH - 20110704 
KickOutSelf() 
else 
Msg2Player("< h� h�i ��ch trang b� >"..szItemName.." ph�c h�i nh� c� th�t b�i , xin/m�i c�ng kh�ch ph�c li�n l�c "); 
Say("Th�n b� th��ng nh�n #< h� h�i ��ch trang b� >"..szItemName.." ph�c h�i nh� c� th�t b�i , xin/m�i c�ng kh�ch ph�c li�n l�c . ", 1,"T�t /no") 
writeChapManGoldLog("[Error]: RestoreBrokenEquip Fail: "..szItemName, 0, 0, nNeedCoin, 0) 
end 
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function no() 
end 
