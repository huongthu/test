if (not __GOVERM_SOLDIER_H__) then 
__GOVERM_SOLDIER_H__ = 1; 
Include("\\script\\missions\\springfestival\\dialog.lua");

function gsoldier_entance() 
local aryszContent = { " t�m ki�m nh�ng kh�c tin t�c /main_former", 
" ta g�n nh�t b�y gi� r�t b�n r�n , ng��i t�m ng��i kh�c �i . /OnCancel"}; 

if (sf06_isactive() == 1) then 
tinsert(aryszContent, 1,"M�a xu�n ho�t ��ng /sf06_mainentrance"); 
end; 

if (getn(aryszContent) > 2) then 
Say("<color=yellow> nha m�n v� binh <color># th�ng minh tinh kh� , � th��c bay v� ph�a nam . qu�c gia ch�nh l� d�ng ng��i chi t� , ta xem ng��i c�ng l� h�c v� ng��i , c� th� gi�p chuy�n sao ? ", getn(aryszContent), aryszContent); 
else 
main_former(); 
end; 

end; 

function OnCancel() 

end; 
end; -- script viet hoa By http://tranhba.com // end of __GOVERM_SOLDIER_H__
