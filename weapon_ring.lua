-- script viet hoa By http://tranhba.com  d�ng cho gi�i m�t th�c hi�n , d�ng n�m m�n v� kh� , bao h�m kim # m�c # n��c # l�a # ��t ng� h�nh c�c m�t m�n , c� th� ��i l�y m�t r�c r��i chi�c nh�n 
-- script viet hoa By http://tranhba.com designed by yangqi 
-- script viet hoa By http://tranhba.com written by renbin 

function weapon_ring() 

Say("G�n nh�t tr�n giang h� chi�c nh�n k� thi�u , ta c�ng nh�n c� h�i �i nhi�u h�c d�ng th� ngh� , ch� c�n ng��i chu�n b� m�t b� ng� h�nh lam thu�c t�nh ��ch v� kh� c�ng 10 v�n l��ng b�c , ta l� c� th� gi�p ng��i ��i ph�i m�t lam thu�c t�nh ��ch chi�c nh�n , h�n n�a m�i l�n c�ng c� hi�u qu� nga . xin h�i ng��i ph�i thay ��i sao ? ",3,"T�t , ta �ang c�n c� chi�c nh�n ��y /exchange_weapon","Ta tr��c m� m�t ch�t �i /weapon_help","T�nh / ch�n �i , ta c� th�t l� nhi�u chi�c nh�n ��y /no") 

end 

function exchange_weapon() 

GiveItemUI("Ng� h�nh v� kh� ��i chi�c nh�n ","Ng�i c�n chu�n b� n�m m�n v� kh� , chia ra l�m kim # m�c # n��c # l�a # th� h� , ch� c�n c�i n�y <color=blue> ng� h�nh ��y �� h�t <color> , h�n n�a ��u mang c� <color=blue> m�u xanh da tr�i thu�c t�nh <color> , li�n c� th� ��i l�y m�t chi�c nh�n . <color=blue> v� kh� ��ch c�p b�c c�ng ch�ng lo�i ��u kh�ng b� h�n ch� , m�i l�n c�n t�n hao 10 v�n l��ng b�c , tr�m ph�n tr�m t� l� th�nh c�ng . <color>", "weapon_ring_Confirm", "onCancel" ); 

end 

function weapon_ring_Confirm( nCount ) 

onSeries = {1,1,1,1,1} 
if ( nCount ~= 5 ) then -- script viet hoa By http://tranhba.com are there 5 weapons 
Say("Xin/m�i n�a c�n th�n ki�m tra m�t c�i , ng�i cho ta v� kh� kh�ng ph� h�p y�u c�u nga ",0) 
return 0 
else 
for i = 1, nCount do 
local nItemIndex = GetGiveItemUnit( i ) -- script viet hoa By http://tranhba.com get itemindex 
ItemGenre, DetailType, ParticularType, Level, nSeries, Luck = GetItemProp(nItemIndex) 
magictype , p1, p2, p3 = GetItemMagicAttrib(nItemIndex, 1) -- script viet hoa By http://tranhba.com get magic attrib 
-- script viet hoa By http://tranhba.com  Msg2Player("nSeries = "..nSeries) 
-- script viet hoa By http://tranhba.com  Msg2Player("magictype = "..magictype) 
if ( ItemGenre ~= 0 ) then 
Say("Xin/m�i n�a c�n th�n ki�m tra m�t c�i , ng�i cho ta v� kh� kh�ng ph� h�p y�u c�u nga ",0) 
return 0 
elseif ( DetailType ~= 0 and DetailType ~= 1) then -- script viet hoa By http://tranhba.com is it weapon 
Say("Xin/m�i n�a c�n th�n ki�m tra m�t c�i , ng�i cho ta v� kh� kh�ng ph� h�p y�u c�u nga ",0) 
return 0 
elseif ( magictype == 0 ) then 
Say("Mu�n ta bu�n b�n nhi�u n�m , c�i n�y b�ch thu�c t�nh v� kh� c�ng mu�n ngu d�t l�n v�o v��t qua ki�m tra , kh�ng c� c�a #",0) 
return 0 
elseif ( nSeries < 0 and nSeries > 4 ) then -- script viet hoa By http://tranhba.com exception 
Say("Trang b� c�a ng��i th�t k� qu�i a # tr� l�i cho ng��i t�t l�m . ",0) 
return 0 
			elseif ( onSeries[nSeries + 1] == 0 ) then				-- script viet hoa By http://tranhba.com ���������Ƿ���ȫ
Say("Xin/m�i n�a c�n th�n ki�m tra m�t c�i , ng�i cho ta v� kh� ��ch ng� h�nh kh�ng ��y �� h�t nga ",0) 
return 0 
else 
				onSeries[nSeries + 1] = 0
end 
end 
onPay = 100000 
if ( GetCash() < onPay ) then 
Say("Kh�ng c� ti�n kh�ng th� ���c , ng��i nh�ng th� n�y r�ch n�t �� ch�i nh�ng ��i kh�ng ���c chi�c nh�n c�a ta ",0) 
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
local _nSeed = SetRandSeed(234) -- script viet hoa By http://tranhba.com  c� ��nh chi�c nh�n 
AddItem(0,3,0,1,0,0,1,0,0,0,0,0) -- script viet hoa By http://tranhba.com  chi�c nh�n 
SetRandSeed(_nSeed) 
Say("D�/� # v�t c�a ng��i qu� th�t kh�ng t� , ta nh�n , chi�c nh�n n�y s� l� c�a ng��i ",0) 

end 

end 

function weapon_help() 

Say("Ng�i c�n chu�n b� n�m m�n v� kh� , chia ra l�m kim # m�c # n��c # l�a # th� h� , ch� c�n ng� h�nh n�y ��y �� h�t , h�n n�a ��u mang c� m�u xanh da tr�i thu�c t�nh , li�n c� th� ��i l�y m�t chi�c nh�n . v� kh� ��ch c�p b�c c�ng ch�ng lo�i ��u kh�ng b� h�n ch� , m�i l�n c�n t�n hao 10 v�n l��ng b�c , tr�m ph�n tr�m t� l� th�nh c�ng . ",1,"Nga , ta hi�u , c�m �n #/no") 

end 


function no() 

end 
