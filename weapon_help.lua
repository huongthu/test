-- script viet hoa By http://tranhba.com  ch�c n�ng # th� r�n 
-- script viet hoa By http://tranhba.com  by#Li_Xin(2004-07-26) 


function help() 
Say("Th� r�n # g�n ��y ��n ��i trong ch�n giang h� xu�t hi�n m�t �t v� kh� �� ph� , y theo �� ph� c� th� t�ng l�n v� kh� c�p b�c . ta ch� n�y c� m�t �t li�n quan t�i v� kh� �� ph� ��ch ��u m�i , ng��i ngh� bi�t kh�ng ? ",11,"V� kh� �� ph� th�ng c�p l�u tr�nh /onhelp"," l�ng v��ng s�ng �o�n t�o t�n thi�n /onhelp","Huy�n v� ch�y chi ch� t�o thu�t /onhelp","R�ng ng�m ki�m �o�n t�o �� /onhelp","Gia C�t ky qu�t m�t mu�n /onhelp"," li�u l� b� phong �ao # t�y l�y thi�n /onhelp","Huy�n th�ng �ao t� kinh b�o l�c /onhelp","Thi�n c� c�n �� ph� /onhelp"," �m kh� t�ng ph� # cu�n m�t /onhelp","Uy�n ��ng �ao # ph�t ra �nh s�ng thi�n /onhelp","C�i g� c�ng kh�ng mu�n bi�t /no") 
end; 

function onhelp(nSel) 
if(nSel == 0) then 
Talk(1,"","Th� r�n # ta t�i v� ng��i gi�i th�ch m�t ch�t v� kh� �� ph� ��ch c�ch d�ng �i . �em c�n th�ng c�p ��ch v� kh� b� v�o v�y quanh khu�ng ch�nh gi�a v� tr� , �� ph� ��t � c�p b�c m�t lan . n�u nh� ph� h�p �i�u ki�n , ta t� nhi�n c� th� gi�p ng��i t�ng l�n v� kh� c�p b�c . ") 
elseif(nSel == 1) then 
Talk(1,"","Th� r�n : l�ng v��ng s�ng �o�n t�o t�n thi�n l� s�ng lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n s�ng ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ") 
elseif(nSel == 2) then 
Talk(1,"","Th� r�n : huy�n v� ch�y chi ch� t�o thu�t l� ch�y lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n ch�y ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ") 
elseif(nSel == 3) then 
Talk(1,"","Th� r�n : r�ng ng�m ki�m �o�n t�o �� l� ki�m lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n ki�m c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ") 
elseif(nSel == 4) then 
Talk(1,"","Th� r�n : Gia C�t ky qu�t m�t n�u l� n� lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n n� ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ") 
elseif(nSel == 5) then 
Talk(1,"","Th� r�n : li�u l� b� phong �ao # t�y l�y thi�n l� phi �ao lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n phi �ao ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ") 
elseif(nSel == 6) then 
Talk(1,"","Th� r�n : huy�n th�ng �ao t� kinh b�o l�c l� �ao lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n �ao ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ") 
elseif(nSel == 7) then 
Talk(1,"","Th� r�n : thi�n c� c�n �� ph� l� c�n lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n c�n ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ") 
elseif(nSel == 8) then 
Talk(1,"","Th� r�n : �m kh� t�ng ph� # cu�n m�t l� phi ti�u lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n phi ti�u ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ") 
elseif(nSel == 9) then 
Talk(1,"","Th� r�n : uy�n ��ng �ao # ph�t ra �nh s�ng thi�n l� song �ao lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n song �ao ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ") 
end; 
end; 
