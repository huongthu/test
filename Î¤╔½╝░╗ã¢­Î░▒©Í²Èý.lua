-- script viet hoa By http://tranhba.com  ch�c n�ng # m�u t�m trang b� h� th�ng - m�u t�m trang b� c�ng ho�ng kim trang b� ch� t�o 

Include( "\\script\\item\\compound\\compound_header.lua" );
Include( "\\script\\item\\compound\\atlas.lua" );
function onFoundry() 
Say("Th� r�n # n�u nh� ��i hi�p mu�n m�t th�n x�ng t�m ��ch trang b� , li�n chu�n b� ��y �� t�i li�u t�i t�m ta . ta c� th� gi�p ng�i ch� t�o ra th�ch h�p nh�t ng��i v�t ph�m . ", 4,"B�t ��u ch� t�o /onFoundryItem", " li�n quan t�i ch� t�o /onAbout","Ch� t�o tu�n tra /onQueryPiece","Ta suy ngh� l�i m�t ch�t /onCancel"); 
end 

-- script viet hoa By http://tranhba.com  b�t ��u ch� t�o 
function onFoundryItem() 
if( isCompoundableToday() == 1 ) then 
FoundryItem(); 
else 
Say("Th� r�n # l�o phu v�n ng�y �� ki�t s�c , hi�p s� c�n l� ng�y mai tr� l�i ch� t�o trang b� �i . ", 1,"H�o , v�y ta c�o t� tr��c /onCancel" ); 
end 
end 

function onQueryPiece() 
QueryPiece() 
end 
-- script viet hoa By http://tranhba.com  li�n quan t�i ch� t�o 
function onAbout() 
Talk( 3, "onAbout2","D�ng thu�c t�nh qu�ng th�ch , huy�n tinh qu�ng th�ch , m�u t�m trang b� , ho�ng kim �� ph� ch� ��c th� t�i li�u , c� th� ch� t�o ra m�u t�m trang b� c�ng v�i ho�ng kim trang b� . trang b� ch� t�o ph�n # �� luy�n # ch� t�o # l�y ra # v�y quanh c�ng �� ph� 5 c� b� ph�n . n�u nh� thu t�p �� c�n c�c lo�i t�i li�u li�n c� th� t�i ch� c�a ta ch� t�o li�u . ", "<color=yellow> huy�n tinh qu�ng th�ch <color># m�t lo�i ��c th� qu�ng th�ch , l�y ra # ch� t�o # v�y quanh c�ng dung h�p ��ch nh�t ��nh ph�i t�i li�u m�t trong , d�ng �� t�ng l�n c�c ch� t�o trong qu� tr�nh sinh th�nh v�t ph�m ��ch thu�c t�nh ph�m ch�t ho�c l� t� l� th�nh c�ng . c�ng 10 c�p , c�p b�c c�ng cao , t�ng l�n hi�u qu� c�ng t�t . ", "<color=yellow> thu�c t�nh qu�ng th�ch <color># d�ng thu�c t�nh nguy�n m� c�ng ��i �ng v� tr� c� thu�c t�nh ��ch m�u xanh da tr�i trang b� c�ng nhau l�y ra , c� nh�t ��nh x�c su�t l�y ���c n�n thu�c t�nh ��ch thu�c t�nh qu�ng th�ch . n�u nh� s� d�ng l� th�m thu�c t�nh nguy�n m� , l� m�u xanh da tr�i trang b� ��ch ng� h�nh thu�c t�nh nh�t ��nh ph�i c�ng thu�c t�nh nguy�n m� ��ch ng� h�nh thu�c t�nh gi�ng nhau . thu�c t�nh qu�ng th�ch c�ng 10 c�p , c�p b�c c�ng cao v�y quanh ra ngo�i thu�c t�nh tr� s� li�n c� th� c� th� c�ng cao . " ); 
end 

function onAbout2() 
Talk( 2, "", "<color=yellow> m�u t�m trang b� <color># d�ng m�t m�n m�u xanh da tr�i / m�u tr�ng trang b� c�ng m�t vi�n huy�n tinh qu�ng th�ch c�ng nhau ch� t�o , c� nh�t ��nh x�c su�t l�y ���c m�t m�n mang c� 1~5 l�n v�y quanh c� h�i m�u t�m trang b� . trang b� ��ch nh�ng kh�c c�c h�ng thu�c t�nh c�ng s� d�ng t�i li�u trang b� gi�ng nhau . ", "<color=yellow> ho�ng kim �� ph� <color># m�i m�n ho�ng kim trang b� ��u c� m�t t� ��i �ng ho�ng kim �� ph� , d�a theo �� ph� th��ng vi�t r� ��ch y�u c�u t�m �� t�t c� t�i li�u , th� c� nh�t ��nh x�c su�t c� th� dung h�p ra n�n m�n ho�ng kim trang b� . " ); 
end 

-- script viet hoa By http://tranhba.com  h�y b� 
function onCancel() 
end
