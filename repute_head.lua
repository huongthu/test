-- script viet hoa By http://tranhba.com  ReputeHead.lua 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-08-23) nhi�m v� danh v�ng t��ng quan c�ng c� 

function ReturnRepute(default_repute,max_level,reduce_rate) -- script viet hoa By http://tranhba.com  ti�p thu ti�u chu�n danh v�ng t��ng th��ng c�ng nhi�m v� c�p b�c , sau �� c�n c� nh� ch�i th�c t� c�p b�c quy�t ��nh �ng t��ng th��ng bao nhi�u danh v�ng 
player_level = GetLevel() 
if (GetLevel() <= max_level) then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i c�p b�c kh�ng v��t qua nhi�m v� ti�u chu�n c�p b�c 10 c�p , l� c� th� ��t ���c b�nh th��ng danh v�ng t��ng th��ng 
player_repute = default_repute 
else -- script viet hoa By http://tranhba.com  n�u kh�ng � 10 c�p tr� l�n m�i v��t qua c�p m�t gi�m 3% danh v�ng t��ng th��ng 
player_repute = floor(default_repute * (1 - (player_level - max_level) * reduce_rate / 100)) 
if (player_repute < 1) then -- script viet hoa By http://tranhba.com  n�u nh� danh v�ng t��ng th��ng �t h�n 1 , l� t��ng th��ng 1 �i�m danh v�ng 
player_repute = 1 
end 
end 
return player_repute -- script viet hoa By http://tranhba.com  tr� v� �ng ph�i danh v�ng t��ng th��ng 
end 

function GetLevelRepute(i) -- script viet hoa By http://tranhba.com  tr� v� m�i nh�t ��ng c�p c�n danh v�ng 
Repute_level = {0,8,30,75,150,240,450,750,1200,2250,3600} -- script viet hoa By http://tranhba.com  m�i nh�t ��ng c�p danh v�ng ��nh ngh�a # ch� � ��i m�i # 
if (i <= 0) then 
return 0 
else 
		return Repute_level[i + 1]
end 
end 

function GetReputeLevel(i) -- script viet hoa By http://tranhba.com  tr� v� danh v�ng c�p b�c # nhi�m v� trung c�n c� danh v�ng c�p b�c ph�n �o�n , m� c�p b�c ��nh ngh�a l� � ch� n�y th�ng nh�t kh�ng ch� # 
if (i >= 3600) then -- script viet hoa By http://tranhba.com  thi�u t�nh 24000,10 c�p 
return 10 
elseif (i >= 2250) then -- script viet hoa By http://tranhba.com  thi�u t�nh 15000,9 c�p 
return 9 
elseif (i >= 1200) then -- script viet hoa By http://tranhba.com  thi�u t�nh 8000,8 c�p 
return 8 
elseif (i >= 750) then -- script viet hoa By http://tranhba.com  thi�u t�nh 5000,7 c�p 
return 7 
elseif (i >= 450) then -- script viet hoa By http://tranhba.com  thi�u t�nh 3000,6 c�p 
return 6 
elseif (i >= 240) then -- script viet hoa By http://tranhba.com  thi�u t�nh 1800,5 c�p 
return 5 
elseif (i >= 150) then -- script viet hoa By http://tranhba.com  thi�u t�nh 1000,4 c�p 
return 4 
elseif (i >= 75) then -- script viet hoa By http://tranhba.com  thi�u t�nh 500,3 c�p 
return 3 
elseif (i >= 30) then -- script viet hoa By http://tranhba.com  thi�u t�nh 200,2 c�p 
return 2 
elseif (i >= 8) then -- script viet hoa By http://tranhba.com  thi�u t�nh 50,1 c�p 
return 1 
elseif (i >= 0) then -- script viet hoa By http://tranhba.com  0 , 0 c�p 
return 0 
else -- script viet hoa By http://tranhba.com  sai l�m 
return -1 
end 
end 

function GetReputeStr(Repute_Level) 
if (Repute_Level == 1) then 
Repute_title = " s� xu�t giang h� " 
elseif (Repute_Level == 2) then 
Repute_title = " v� danh ti�u b�i " 
elseif (Repute_Level == 3) then 
Repute_title = " y�n l�ng kh�ng nghe th�y " 
elseif (Repute_Level == 4) then 
Repute_title = " s� hi�n phong mang " 
elseif (Repute_Level == 5) then 
Repute_title = " c� ch�t danh ti�ng " 
elseif (Repute_Level == 6) then 
Repute_title = " danh ti�ng vang d�i " 
elseif (Repute_Level == 7) then 
Repute_title = " uy tr�n nh�t ph��ng " 
elseif (Repute_Level == 8) then 
Repute_title = " ng�o th� qu�n h�ng " 
elseif (Repute_Level == 9) then 
Repute_title = " m�t ��i t�ng s� " 
elseif (Repute_Level == 10) then 
Repute_title = " ti�u ng�o giang h� " 
else 
Repute_title = " b�nh d�n b�ch t�nh " 
end 
return Repute_title 
end 

function nothing() 
end 
