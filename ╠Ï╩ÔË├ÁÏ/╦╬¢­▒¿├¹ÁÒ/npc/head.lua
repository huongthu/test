
function talk_yulongtie() 
Say("C�i n�y l� ng�c long trang cho c�c v� anh h�ng h�o ki�t ��ch thi�p m�i , kh�ng ph�i ai c�ng c� th� l�y ���c n� ?", 
2, 
" ta s� d�ng nh�c v��ng h�n chi th�ch �� ��i l�y /get_yulongtie", 
" �� cho ta mu�n mu�n /Cancel") 
end 

-- script viet hoa By http://tranhba.com  d�ng nh�c v��ng h�n chi th�ch ��i l�y ng�c long anh h�ng thi�p 
function get_yulongtie() 
if (CalcEquiproomItemCount(4, 507, 1, -1) < 1) then 
Say("Ng��i kh�ng c� nh�c v��ng h�n chi th�ch , ti�p t�c �i luy�n t�p , sau �� t�i n�i n�y ?") 
else 
Say("Ng��i x�c ��nh s� d�ng nh�c v��ng h�n chi th�ch ��i ng�c long anh h�ng thi�p ti�n v�o ki�m m� m� cung sao ?", 
2, 
" mu�n /exchange_yulongtie", 
" �� cho ta mu�n mu�n /Cancel") 
end 
end 

function exchange_yulongtie() 
if (CalcFreeItemCellCount() == 0) then 
Say("Trang b� ch� tr�ng ch�a �� #.") 
elseif (CalcEquiproomItemCount(4, 507, 1, -1) >= 1 and 
ConsumeEquiproomItem(1, 4, 507, 1, -1) == 1) then 
AddItem(6, 1, 2622, 1, 0, 0) 
Msg2Player("Ng��i ��t ���c m�t ng�c long anh h�ng thi�p .") 
end 
end 
