--���������������
--by ��־ɽ

if (not __H_CHAT_CITY_SMITH__) then
	__H_CHAT_CITY_SMITH__ = 1;


function main(sel)
	local tab_Content = {
		"T�i mu�n mua m�t s� v� kh�/tj_default_chat",		--ԭ�����������
		"K�t th�c/oncancel",
	};
	
	-- ����ʱ��,�����Ի�,��Ϣ����
--	if (isEventDay() ==1) then
--		tinsert(tab_Content,1, "�μӻ/onEventMain");
--	end;
	
	if (getn(tab_Content) > 2) then		--����л����Ի�

		Say("Th� r�n : kh�ch quan t�m ta c� chuy�n g� kh�ng ?", getn(tab_Content), tab_Content);

	else					--û�лֱ�ӽ���ԭ�Ի�

		tj_default_chat();

	end;
end;

function oncancel()
end;

end; --// end of __H_CHAT_CITY_SMITH__;
