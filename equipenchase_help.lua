-- script viet hoa By http://tranhba.com  ch�c n�ng # th� r�n 
-- script viet hoa By http://tranhba.com  by#Li_Xin(2004-08-18) 


function help() 
str = 
{ 
"<#> th� r�n # v�y quanh l�u tr�nh ch�nh l� �em trang b� ��t � gi�i m�t ch�nh gi�a v� tr� , sau �� �em v�y quanh v�t ph�m ��t � t��ng �ng lan b�n trong . t�ng l�n c�ng r�t xu�ng c�p b�c ��ch v�y quanh v�t ph�m ��t � c�p b�c lan # s�a ��i ma ph�p thu�c t�nh ��ch ��t � linh l�c lan # s�a ��i ng� h�nh thu�c t�nh ��ch ��t � ng� h�nh c�c lan . n�a �i�m k�ch v�y quanh ho�n th�nh . m�t n� kh�ng th� v�y quanh . ", 
"<#> li�n quan t�i th�y tinh v�y quanh /crystalhelp", 
"<#> li�n quan t�i v� kh� v�y quanh /weaponhelp", 
"<#> li�n quan t�i y ph�c v�y quanh /armorhelp", 
"<#> li�n quan t�i c�i m� v�y quanh /helmhelp", 
"<#> ta �� bi�t /no", 
}; 
Say(str[1], 5, str[2], str[3], str[4], str[5],str[6]) 
-- script viet hoa By http://tranhba.com  Say(str[1], 3,str[2], str[3], str[4]) 
end 

function crystalhelp() 
Talk(1,"","Th� r�n # ta t�i v� ng��i gi�i th�ch m�t ch�t th�y tinh v�y quanh . th�y tinh nh�ng v�y quanh trang b� , nh�ng c�n t� l� th�nh c�ng nh�t ��nh . t� th�y tinh t�ng l�n trang b� c�p b�c # lan th�y tinh s�a ��i trang b� ��ch ng� h�nh thu�c t�nh # n��c bi�c tinh s�a ��i trang b� ��ch ma ph�p thu�c t�nh , thu�c t�nh ng�u nhi�n s�a ��i . ") 
end 

function weaponhelp() 
str = { 
"<#> th� r�n # g�n ��y ��n ��i trong ch�n giang h� xu�t hi�n m�t �t v� kh� �� ph� , y theo �� ph� c� th� t�ng l�n v� kh� c�p b�c . ta c� th� n�i cho ng��i bi�t m�t �t li�n quan t�i v� kh� �� ph� chuy�n c�a t�nh , ng��i ngh� bi�t kh�ng ? ", 
"<#> v� kh� �� ph� th�ng c�p l�u tr�nh /onweaponhelp", 
"<#> l�ng v��ng s�ng �o�n t�o t�n thi�n /onweaponhelp", 
"<#> huy�n v� ch�y chi ch� t�o thu�t /onweaponhelp", 
"<#> r�ng ng�m ki�m �o�n t�o �� /onweaponhelp", 
"<#> Gia C�t ky qu�t m�t mu�n /onweaponhelp", 
"<#> li�u l� b� phong �ao # t�y l�y thi�n /onweaponhelp", 
"<#> huy�n th�ng �ao t� kinh b�o l�c /onweaponhelp", 
"<#> thi�n c� c�n �� ph� /onweaponhelp", 
"<#> �m kh� t�ng ph� # cu�n m�t /onweaponhelp", 
"<#> uy�n ��ng �ao # ph�t ra �nh s�ng thi�n /onweaponhelp", 
"<#> c�i g� c�ng kh�ng mu�n bi�t /no", 
}; 
Say(str[1],11,str[2], str[3], str[4], str[5],str[6], str[7], str[8], str[9],str[10], str[11], str[12]) 
end 

function onweaponhelp(nSel) 
strHelp = 
{ 
"<#> th� r�n # ta t�i v� ng��i gi�i th�ch m�t ch�t v� kh� �� ph� ��ch c�ch d�ng �i . �em c�n th�ng c�p ��ch v� kh� b� v�o v�y quanh khu�ng ch�nh gi�a v� tr� , �� ph� ��t � c�p b�c m�t lan . n�u nh� ph� h�p �i�u ki�n , ta t� nhi�n c� th� gi�p ng��i t�ng l�n v� kh� c�p b�c . ", 
"<#> th� r�n : l�ng v��ng s�ng �o�n t�o t�n thi�n l� s�ng lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n s�ng ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ", 
"<#> th� r�n : huy�n v� ch�y chi ch� t�o thu�t l� ch�y lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n ch�y ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ", 
"<#> th� r�n : r�ng ng�m ki�m �o�n t�o �� l� ki�m lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n ki�m c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ", 
"<#> th� r�n : Gia C�t ky qu�t m�t n�u l� n� lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n n� ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ", 
"<#> th� r�n : li�u l� b� phong �ao # t�y l�y thi�n l� phi �ao lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n phi �ao ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ", 
"<#> th� r�n : huy�n th�ng �ao t� kinh b�o l�c l� �ao lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n �ao ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ", 
"<#> th� r�n : thi�n c� c�n �� ph� l� c�n lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n c�n ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ", 
"<#> th� r�n : �m kh� t�ng ph� # cu�n m�t l� phi ti�u lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n phi ti�u ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ", 
"<#> th� r�n : uy�n ��ng �ao # ph�t ra �nh s�ng thi�n l� song �ao lo�i v� kh� ��ch v� kh� �� ph� , d�ng n� c� th� t�ng l�n song �ao ��ch c�p b�c . nghe n�i n� b�y gi� � D��ng Ch�u c�ng tr��c khi an ��ch th�n b� th��ng nh�n tr�n tay . ", 
}; 
	Talk(1,"",strHelp[nSel + 1]);   
end 

function armorhelp() 
Talk(1,"","Th� r�n # ta t�i v� ng��i gi�ng gi�i y ph�c v�y quanh ��ch ph��ng ph�p . l�y Thi�n S�n tuy�t l�nh ��ch b�ng t�m v� c�c ti , k�t h�p v�i ta �o�n t�o b� ph�p , tr�i qua thi�n chuy b�ch luy�n li�n c� th� tr�m ph�n tr�m ��ch th�nh c�ng t�ng l�n y ph�c c�a ng��i c�p b�c . l�y ba mi�u c�nh ��ng hoang vu ��ch nam minh chi tinh , k�t h�p v�i ta �o�n t�o b� ph�p , tr�i qua �i nh�ng l�u tinh li�n c� th� tr�m ph�n tr�m ��ch th�nh c�ng r�t xu�ng y ph�c c�a ng��i c�p b�c . ") 
end 

function helmhelp() 
Talk(1,"","Th� r�n # ta t�i v� ng��i gi�ng gi�i c�i m� v�y quanh ��ch ph��ng ph�p . l�y Thi�n S�n tuy�t l�nh ��ch b�ng t�m v� c�c ti , k�t h�p v�i ta �o�n t�o b� ph�p , tr�i qua thi�n chuy b�ch luy�n li�n c� th� tr�m ph�n tr�m ��ch th�nh c�ng t�ng l�n ng��i c�i m� c�p b�c . l�y ba mi�u c�nh ��ng hoang vu ��ch nam minh chi tinh , k�t h�p v�i ta �o�n t�o b� ph�p , tr�i qua �i nh�ng l�u tinh li�n c� th� tr�m ph�n tr�m ��ch th�nh c�ng r�t xu�ng ng��i c�i m� c�p b�c . ") 
end 
