-- script viet hoa By http://tranhba.com  th�nh ph� th� r�n c�ng c�ng nh�p kh�u 
-- script viet hoa By http://tranhba.com by li�u ch� s�n 

if (not __H_CHAT_CITY_SMITH__) then 
__H_CHAT_CITY_SMITH__ = 1; 


function main(sel) 
local tab_Content = { 
" ta mu�n mua m�t �t binh kh� /tj_default_chat", -- script viet hoa By http://tranhba.com  nguy�n th� r�n ch�c n�ng nh�p kh�u 
" h�y b� /oncancel", 
}; 

-- script viet hoa By http://tranhba.com  n�u nh� ho�t ��ng th�i gian , c�m v�o ho�t ��ng ��i tho�i , tr� xu�ng gi� l� 
-- script viet hoa By http://tranhba.com  if (isEventDay() ==1) then 
-- script viet hoa By http://tranhba.com  tinsert(tab_Content,1,"Tham gia ho�t ��ng /onEventMain"); 
-- script viet hoa By http://tranhba.com  end; 

if (getn(tab_Content) > 2) then -- script viet hoa By http://tranhba.com  n�u nh� c� ho�t ��ng c�m v�o ��i tho�i 

Say("Th� r�n # kh�ch quan t�m ta c� chuy�n g� kh�ng ? ", getn(tab_Content), tab_Content); 

else -- script viet hoa By http://tranhba.com  kh�ng c� ho�t ��ng tr�c ti�p ti�n v�o nguy�n ��i tho�i 

tj_default_chat(); 

end; 
end; 

function oncancel() 
end; 

end; -- script viet hoa By http://tranhba.com // end of __H_CHAT_CITY_SMITH__;
