-- script viet hoa By http://tranhba.com  th�y t��ng s� .lua nh�n danh v�ng tr� gi� ��ch th�y t��ng s� 
-- script viet hoa By http://tranhba.com  By Dan_Deng(2003-11-11) 

sexhead = {"Thi�u hi�p ","N� hi�p "} 

Include("\\script\\global\\repute_head.lua")

function main() 
if (GetSex() == 0) then -- script viet hoa By http://tranhba.com  nam n� d�ng b�t ��ng ��i tho�i 
Say("Tr��ng thi�t ch�y # v� thi�u hi�p kia kh� v� b�t ph�m , c� mu�n bi�t hay kh�ng thi�u hi�p ng�i ��ch c�m t� ti�n tr�nh ? ch� c�n 500 l��ng b�c . ",2,"H�o , cho ta t�nh m�t l�n /view_repute_yes","Kh�ng c�n /no") 
else 
Say("Tr��ng thi�t ch�y # v� c� n��ng n�y xinh ��p nh� hoa , c� mu�n xem m�t ch�t hay kh�ng m�nh t�t ��p t��ng lai ��y ? ch� c�n 500 l��ng b�c . ",2,"H�o , cho ta t�nh m�t l�n /view_repute_yes","Kh�ng c�n /no") 
end 
end 

function view_repute_yes() 
if (GetCash() < 500) then 
Talk(1,"","Tr��ng thi�t ch�y # l�i l� m�t kh�ng c� ti�n ��ch , u�ng ph� n�a ng�y n��c mi�ng . ") 
return 0 
end 
Pay(500) 
repute_exp = GetRepute() 
repute_lvl = GetReputeLevel(repute_exp) 
if (repute_lvl == -1) then -- script viet hoa By http://tranhba.com  b� l�i l�c 
Talk(1,"","Tr��ng thi�t ch�y # t� x�a anh ki�t nhi�u kh� n�n , b�y gi� ng��i �ang b� �ch linh chi k�t , d�n khi�n cho ng��i giang h� danh v�ng xu�t hi�n sai l�m . xin/m�i �i t�m thi�n th�n ban ph�c �i . ") 
elseif (repute_lvl == 0) then 
Talk(2,"","Tr��ng thi�t ch�y # kim long h� l� trong ao v�t , ng��i b�y gi� m�c d� m�t gi�i �o v�i , ng��i giang h� s� kh�ng bi�t , nh�ng gi� l�y ng�y gi� , t�t �em c� kinh thi�n ��ng ��a kh� n�ng . ","Tr��ng thi�t ch�y # ng��i b�y gi� ��ch giang h� danh v�ng l� "..repute_exp.." , ng��i giang h� coi ng��i v� <color=red> b�nh d�n b�ch t�nh <color> . ") 
elseif (repute_lvl == 1) then 
Talk(2,"","Tr��ng thi�t ch�y # th�n long ch�t hi�n trong cu�c s�ng , ng��i m�c d� s� xu�t mao l� , nh�ng t�t �em nhanh ch�ng qu�t kh�i , c� th�c chi s� s� r�t nhanh ch� � t�i l�c l��ng c�a ng��i . ","Tr��ng thi�t ch�y # ng��i b�y gi� ��ch giang h� danh v�ng l� "..repute_exp.." , ng��i giang h� coi ng��i v� <color=red> s� xu�t giang h� <color> . ") 
elseif (repute_lvl == 2) then 
Talk(2,"","Tr��ng thi�t ch�y # s� ph��ng l�ng c� h�ng h�c ch� , m�c d� � trong ch�n giang h� ng��i v�n ch� l� v� danh ti�u b�i , nh�ng v��t qua ph�m b�i ��i v�i ng��i m� n�i ch�ng qua l� ch�m tay c� th� ��ng chuy�n . ","Tr��ng thi�t ch�y # ng��i b�y gi� ��ch giang h� danh v�ng l� "..repute_exp.." , ng��i giang h� coi ng��i v� <color=red> v� danh ti�u b�i <color> . ") 
elseif (repute_lvl == 3) then 
Talk(2,"","Tr��ng thi�t ch�y # ti�m tu m��i t�i kh�ng ng��i h�i , � trong ch�n giang h� ng��i v�n y�n l�ng kh�ng nghe th�y , nh�ng ti�m ch�t �� bi�u l� kh�ng b� s�t , Nh�t Phi Tr�ng Thi�n ch�ng qua l� s�m mu�n chuy�n . ","Tr��ng thi�t ch�y # ng��i b�y gi� ��ch giang h� danh v�ng l� "..repute_exp.." , ng��i giang h� coi ng��i v� <color=red> y�n l�ng kh�ng nghe th�y <color> . ") 
elseif (repute_lvl == 4) then 
Talk(2,"","Tr��ng thi�t ch�y # �� tr�i qua ��ng ��o ma luy�n sau ��ch ng��i , �� �ang l�c m�i ng��i tr��c s� s� hi�n l� phong mang , giang h� b�y hi�p �� m� m�i ch� � t�i ng��i qu�t kh�i . ","Tr��ng thi�t ch�y # ng��i b�y gi� ��ch giang h� danh v�ng l� "..repute_exp.." , ng��i giang h� coi ng��i v� <color=red> s� hi�n phong mang <color> . ") 
elseif (repute_lvl == 5) then 
Talk(2,"","Tr��ng thi�t ch�y # ng��i �� v��t qua gian nan nh�t kh�n kh� ��ch giai �o�n , ng��i danh ti�ng b�t ��u �nh h��ng ��n nh�ng ng��i chung quanh , ng��i nhi�u h�n ph�t hi�n n�ng l�c c�a ng��i . ","Tr��ng thi�t ch�y # ng��i b�y gi� ��ch giang h� danh v�ng l� "..repute_exp.." , ng��i giang h� coi ng��i v� <color=red> c� ch�t danh ti�ng <color> . ") 
elseif (repute_lvl == 6) then 
Talk(2,"","Tr��ng thi�t ch�y # ng��i qu�t kh�i �ang b� c�ng ng�y c�ng nhi�u ng��i coi tr�ng , trong ch�n giang h� ng��i danh ti�ng �� c�ng ng�y c�ng vang d�i , m�i ng��i b�t ��u th�t l�ng th�c � ��a ��i v�i ng��i n�i � nh� s�m b�n tai � . ","Tr��ng thi�t ch�y # ng��i b�y gi� ��ch giang h� danh v�ng l� "..repute_exp.." , ng��i giang h� coi ng��i v� <color=red> danh ti�ng vang d�i <color> . ") 
elseif (repute_lvl == 7) then 
Talk(2,"","Tr��ng thi�t ch�y # ng��i �� th�nh v� ��i �a s� m�t ng��i trung ��ch cao th� , ng��i c� kh�ng t�m th��ng th�c l�c khi�n cho ng��i danh ti�ng uy tr�n nh�t ph��ng . ","Tr��ng thi�t ch�y # ng��i b�y gi� ��ch giang h� danh v�ng l� "..repute_exp.." , ng��i giang h� coi ng��i v� <color=red> uy tr�n nh�t ph��ng <color> . ") 
elseif (repute_lvl == 8) then 
Talk(2,"","Tr��ng thi�t ch�y # ng�o th� qu�n h�ng ��ch c��ng gi� c� th� ch�a t� ng��i kh�c ��ch sinh t� . m� ng��i , � kh�ng gi�i c� g�ng c�ng gian kh� ph�n ��u d��i , �� tr� th�nh li�u c��ng gi� nh� v�y . ","Tr��ng thi�t ch�y # ng��i b�y gi� ��ch giang h� danh v�ng l� "..repute_exp.." , ng��i giang h� coi ng��i v� <color=red> ng�o th� qu�n h�ng <color> . ") 
elseif (repute_lvl == 9) then 
Talk(2,"","Tr��ng thi�t ch�y # ng��i danh v�ng nh� m�t tr�i ban tr�a , giang h� tr� n�n c�nh ng��ng , t�n ng��i l�m m�t ��i t�ng s� , v� l�m ��i hi�p . ","Tr��ng thi�t ch�y # ng��i b�y gi� ��ch giang h� danh v�ng l� "..repute_exp.." , ng��i giang h� coi ng��i v� <color=red> m�t ��i t�ng s� <color> . ") 
else 
Talk(2,"","Tr��ng thi�t ch�y # th�n l� trong ch�n giang h� ��ch truy�n thuy�t nh�n v�t , giang h� h�u ti�n ��ch ph�n ��u m�c ti�u , m� ng��i l�i nh� th�n long th�y ��u kh�ng th�y �u�i m�t lo�i theo t�nh l�m . ","Tr��ng thi�t ch�y # ng��i b�y gi� ��ch giang h� danh v�ng l� "..repute_exp.." , ng��i giang h� coi ng��i v� <color=red> ti�u ng�o giang h� <color> . ") 
end 
end 

function no() 
end 
