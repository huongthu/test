-- script viet hoa By http://tranhba.com  d�ng ��ng ti�n b�n ra d�ch dung v�t ph�m ��ch NPC 
-- script viet hoa By http://tranhba.com  Fanghao Wu 
-- script viet hoa By http://tranhba.com  2004.11.1 

function main() 

Say("Thu�t d�ch dung s� # v� kh�ch quan kia , ngh� mu�n c�i g� th� t�t tr�c ti�p �i <color=yellow> k� tr�n c�c <color> trong ch�n l� ���c , l�o phu r�t c�c c� th� thanh nh�n thanh nh�n ��y # c�i g� ? kh�ng hi�u th� n�o �i <color=yellow> k� tr�n c�c <color> ? tr�c ti�p �i�m k�ch <color=green> d��i g�c ph�i ��ch c�i �� h�nh tr�n ��ch �� ti�u <color> l� ���c . ", 0); 
return 

-- script viet hoa By http://tranhba.com  Say ("Thu�t d�ch dung s� # mu�n h�c thu�t d�ch dung ? th�t ra th� r�t ��n gi�n , � ta ��y mua m�t ��c ch� d�ch dung m�t n� ta li�n c� th� d�y ng��i . b�t ��ng m�t n� c� th� d�ch dung ���c kh�ng c�ng ��ch d�ng v� , ��i hi�p c� mu�n hay kh�ng nh�n m�t ch�t ? ", 3,"Mua /OnBuy","T�m th�i kh�ng mua /OnCancel", " li�n quan t�i d�ch dung m�t n� /OnAbout" ); 
end 

function OnBuy() 
Sale( 95, 3 ); 
end 

function OnCancel() 
end 

function OnAbout() 
Say("�em t�y � m�t n� trang b� ��n trang b� lan trung <color=yellow> m�t n� <color> m�t c�ch , nh� ch�i nh�n v�t d�ng ngo�i s�a ��i v� n�n m�t n� ��i �ng NPC h�nh t��ng , nh�n v�t t�n c�ng t�t c� thu�c t�nh ��u <color=yellow> kh�ng thay ��i <color> , c�ng <color=yellow> kh�ng �nh h��ng <color> nh�n v�t b�nh th��ng s� d�ng c�c lo�i trang b� ��o c� c�ng ch�c n�ng . �em m�t n� t� trang b� lan g� xu�ng , nh�n v�t d�ng ngo�i thay ��i tr� v� b� d�ng l�c tr��c , m�t n� ��ch s� d�ng s� l�n <color=yellow> gi�m b�t m�t l�n <color> . ", 0 ); 
end
