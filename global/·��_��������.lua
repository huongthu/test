if (not __GOVERM_SOLDIER_H__) then
    __GOVERM_SOLDIER_H__ = 1;
Include("\\script\\missions\\springfestival\\dialog.lua");

function gsoldier_entance()
	local aryszContent = {	"T�m ki�m nh�ng tin t�c kh�c/main_former",
							"Ta g�n nh�t b�y gi� r�t b�n r�n, ng��i t�m ng��i kh�c �i ./OnCancel"};
							
	-- if (sf06_isactive() == 1) then
		-- tinsert(aryszContent, 1, "Ho�t ��ng m�a xu�n/sf06_mainentrance");
	-- end;
	
	if (getn(aryszContent) > 2) then
		Say("<color=yellow>Nha m�n v� binh <color>: th�ng minh tinh kh�, � th��c bay v� ph�a nam. Qu�c gia ch�nh l� d�ng ng��i chi t�, ta xem ng��i c�ng l� h�c v� ng��i , c� th� gi�p chuy�n sao", getn(aryszContent), aryszContent);
	else
		main_former();
	end;
	
end;

function OnCancel()
	
end;
end; --// end of __GOVERM_SOLDIER_H__
