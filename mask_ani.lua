

ItemType = {{"Y ph�c ","Chi�c nh�n ","Gi�y chuy�n ","Gi�y ","�ai l�ng ","C�i m� ","Th� tr�c ","Ng�c b�i "},{1,2,1,1,1,1,1,1}} 

function hello() 

Say("Bi�n bi�n bi�n , th� nghi�m vui v� v� h�n # ng��i ngh� c� �ng �nh m�t c�a # lang ��ch l� tai # h�ng ��ch l�c l��ng # tr� th�nh vua b�ch th� sao ? ta ch� n�y l� c� th� �� cho ng��i ��c m� tr� th�nh s� th�t . ",3,"Th�t c� th�n k� nh� v�y sao ? ta c�ng mu�n coi tr�m m�t ch�t /exchange_mask","C� � t� , n�i nghe m�t ch�t �i /about","Ch� kho�c l�c , ta m�i kh�ng tin ��y #/no") 

end 

function exchange_mask() 

GiveItemUI("Thi�n k� b�ch qu�i ��ng v�t t� ","Ng�i c�n chu�n b� tr� v� kh� b�n ngo�i ��ch m�t b� <color=blue> m�u xanh da tr�i thu�c t�nh <color> trang b� (9 m�n ) c�ng <color=blue>20 v�n <color> l��ng b�c , th� c� nh�t ��nh c� h�i l�y ���c m�t th�n k� m�t n� . xin ch� � , ��i m�t n� v� lu�n l� hay kh�ng th�nh c�ng , trang b� c�ng ki�m hi�p ti�n c�ng s� bi�n m�t , xin kh�ng c�n c�m c�c ph�m . ", "exchange_mask_Confirm", "onCancel" ); 

end 

function exchange_mask_Confirm( nCount ) 

isItemType = {0,0,0,0,0,0,0,0} 
if ( nCount ~= 9 ) then 
Say("Xin/m�i n�a c�n th�n ki�m tra m�t c�i , ng�i cho ta trang b� kh�ng ph� h�p y�u c�u nga ",0) 
return 0 
else 
for i = 1, nCount do 
local nItemIndex = GetGiveItemUnit( i ) 
ItemGenre, DetailType, ParticularType, Level, nSeries, Luck = GetItemProp(nItemIndex) 
magictype , p1, p2, p3 = GetItemMagicAttrib(nItemIndex, 1) 
if ( ItemGenre ~= 0 ) then 
Say("Xin/m�i n�a c�n th�n ki�m tra m�t c�i , ng�i cho ta trang b� kh�ng ph� h�p y�u c�u nga ",0) 
return 0 
elseif ( DetailType == 0 ) then 
Say("X�ng x�o giang h� kh�ng d� d�ng a , ngh�a s� c�n l� xin/m�i thu h�i v� kh� ph�ng th�n cho th�a ��ng ",0) 
return 0 
elseif ( DetailType == 10 ) then 
Say("M�t ���ng b�n ba m�t nh�c , ngh�a s� so v�i ta c�ng c�n ph�i c� c�i ng�a nha ",0) 
return 0 
elseif ( DetailType == 11 ) then 
Say("Ta ��y m�t n� nhi�u ��y , v�y th� ng��i m�nh c�m t�t l�m ",0) 
return 0 
elseif ( DetailType > 11 ) then 
Say("Xin/m�i n�a c�n th�n ki�m tra m�t c�i , ng�i cho ta trang b� kh�ng ph� h�p y�u c�u nga ",0) 
return 0 
else 
if ( magictype == 0 ) then 
Say("Mu�n ta bu�n b�n nhi�u n�m , c�i n�y b�ch trang b� c�ng mu�n ngu d�t l�n v�o v��t qua ki�m tra , kh�ng c� c�a #",0) 
return 0 
else 
					isItemType[DetailType - 1] = isItemType[DetailType - 1] + 1
end 
end 
end 
end 
if ( (ItemType[2][1] == isItemType[1]) and (ItemType[2][2] == isItemType[2]) and (ItemType[2][3] == isItemType[3]) and (ItemType[2][4] == isItemType[4]) and (ItemType[2][5] == isItemType[5]) and (ItemType[2][6] == isItemType[6]) and (ItemType[2][7] == isItemType[7]) and (ItemType[2][8] == isItemType[8]) ) then 
onPay = 200000 
if ( GetCash() < onPay ) then 
Say("M�t c�a ta c� c�ng kh�ng m�t lo�i n�a/r�i , 20 v�n l��ng coi nh� l� ti�n nghi c�a ng��i , ch� c� ti�n tr� l�i �i ",1,"H�o , ta tr� v� l�y ti�n �i , xin nh� ph�i nh�t ��nh cho ta l�u m�t nga #") 
return 0 
end 
for i = 1, nCount do 

nItemIndex = GetGiveItemUnit( i ) 
k = RemoveItemByIndex( nItemIndex ) 
if ( k ~= 1 ) then 
Say("Chuy�n g� x�y ra , ng��i l�m sao c� th� g�t ta ��y ? ",0) 
return 0 
end 

end 
Pay( onPay ) 
iGive = random (1,400000) 
if ( iGive < 10000 ) then 
AddItem(0,11,23,0,0,0,0) -- script viet hoa By http://tranhba.com  ��ng b�c h� 
Say("D�/� # v�t c�a ng��i qu� th�t kh�ng t� , ta nh�n , c�i m�t n� n�y s� l� c�a ng��i ",0) 

elseif ( iGive < 20000 ) then 
AddItem(0,11,31,0,0,0,0) -- script viet hoa By http://tranhba.com  tuy�t lang 
Say("D�/� # v�t c�a ng��i qu� th�t kh�ng t� , ta nh�n , c�i m�t n� n�y s� l� c�a ng��i ",0) 
elseif ( iGive < 40000 ) then 
AddItem(0,11,38,0,0,0,0) -- script viet hoa By http://tranhba.com  t�ng h�ng 
Say("D�/� # v�t c�a ng��i qu� th�t kh�ng t� , ta nh�n , c�i m�t n� n�y s� l� c�a ng��i ",0) 
elseif ( iGive < 50000 ) then 
AddItem(0,11,61,0,0,0,0) -- script viet hoa By http://tranhba.com  kim ti h�u 
Say("D�/� # v�t c�a ng��i qu� th�t kh�ng t� , ta nh�n , c�i m�t n� n�y s� l� c�a ng��i ",0) 
elseif ( iGive < 60000 ) then 
AddItem(0,11,63,0,0,0,0) -- script viet hoa By http://tranhba.com  tuy�t tr�ch 
Say("D�/� # v�t c�a ng��i qu� th�t kh�ng t� , ta nh�n , c�i m�t n� n�y s� l� c�a ng��i ",0) 
elseif ( iGive < 70000 ) then 
AddItem(0,11,65,0,0,0,0) -- script viet hoa By http://tranhba.com  mai hoa l�c 
Say("D�/� # v�t c�a ng��i qu� th�t kh�ng t� , ta nh�n , c�i m�t n� n�y s� l� c�a ng��i ",0) 
elseif ( iGive < 80000 ) then 
AddItem(0,11,66,0,0,0,0) -- script viet hoa By http://tranhba.com  b�ch heo 
Say("D�/� # v�t c�a ng��i qu� th�t kh�ng t� , ta nh�n , c�i m�t n� n�y s� l� c�a ng��i ",0) 
else 
Say(" l�c n�y t�i phi�n ta , ng��i nh�t ��nh l� b�ch b�n r�n m�t cu�c #",1,"Coi l� ta xui x�o . ch� ng��i t�m t�nh t�t �i�m l�i t�i t�m ng��i �i /no") 

end 
else 
Talk(1,"","Xin/m�i n�a c�n th�n ki�m tra m�t c�i , ng�i cho ta trang b� kh�ng ph� h�p y�u c�u nga #") 
end 

end 

function about() 

Say("Ng�i c�n chu�n b� tr� v� kh� b�n ngo�i ��ch m�t b� <color=red> m�u xanh da tr�i thu�c t�nh <color> trang b� (9 m�n ) c�ng <color=red>20 v�n <color> l��ng b�c , th� c� nh�t ��nh c� h�i l�y ���c m�t th�n k� ��ng v�t m�t n� , bao g�m # kim �i�u # tuy�t lang # ��ng b�c h� # tuy�t tr�ch # t�ng h�ng # b�ch heo # mai hoa l�c c�ng kim ti h�u . ng�i c�n chu�n b� 9 m�n trang b� chia ra l�m # c�i m� # y ph�c # �ai l�ng # h� c� tay / th� tr�c # h� th�n ph� / gi�y chuy�n # ng�c b�i / h��ng nang # th��ng chi�c nh�n # h� chi�c nh�n # gi�y . b�t qu� xin ch� � , ��i m�t n� v� lu�n l� hay kh�ng th�nh c�ng , trang b� c�ng ki�m hi�p ti�n c�ng s� bi�n m�t . ",1,"Nga , ta hi�u , c�m �n #/no") 
end 


function no() 

end 
