IL("TITLE"); 
MAX_TITLE_PERPAGE = 5 
TASK_ACTIVE_TITLE = 1122 

function change_title() 
Say("Ng��i c�n ta �� cho ng��i kia h�ng tr� gi�p ? ", 3,"Tra x�t ho�c k�ch ho�t �� c� danh hi�u /#title_ShowTitleList(1)","Kh�ng k�ch ho�t tr��c m�t ��ch danh hi�u /#title_choose(0)","T�nh / ch�n /OnCancel") 
end 

function title_ShowTitleList(nPage) 
local tab = Title_GetTitleTab() 

if (tab == nil or getn(tab) == 0) then 
Say("Ng��i tr��c m�t c�ng kh�ng c� b�t k� ��ch danh hi�u #",0) 
return 
end 

local titletab = {}; 
local iter = 1 
-- script viet hoa By http://tranhba.com  kh�ng ph�i l� t� th� nh�t l� bi�u hi�n trang tr��c 
if (nPage > 1) then 
titletab[iter] = " trang tr��c /#title_ShowTitleList("..(nPage - 1)..")" 
		iter = iter + 1
end 

-- script viet hoa By http://tranhba.com  n�u nh� t� ��m d�ng xong l�i c�a 
if (getn(tab) <= MAX_TITLE_PERPAGE * nPage) then 
		for i = MAX_TITLE_PERPAGE * (nPage - 1) + 1, getn(tab) do 
titletab[iter] = Title_GetTitleName(tab[i]).."/#title_choose("..tab[i]..")"; 
			iter = iter + 1
end 
else 
for i = 1, MAX_TITLE_PERPAGE do 
			tabiter = i + (nPage - 1)*MAX_TITLE_PERPAGE 
titletab[iter] = Title_GetTitleName(tab[tabiter]).."/#title_choose("..tab[tabiter]..")"; 
			iter = iter + 1
end 
		titletab[iter] = "��һҳ/#title_ShowTitleList("..(nPage + 1)..")"
		iter = iter + 1
end 

titletab[iter] = " gi� v�ng nguy�n d�ng /OnCancel" 
	iter = iter + 1
Say("Ng��i tr��c m�t c� danh hi�u c� "..getn(tab).." c� , ng��i mu�n ch�n k�ch ho�t c�i n�o danh hi�u ?", getn(titletab), titletab); 
end 

function title_choose(titleid) 
Title_ActiveTitle(titleid) 
SetTask(TASK_ACTIVE_TITLE,titleid) 
end 

function title_loginactive() 
Title_ActiveTitle(GetTask(TASK_ACTIVE_TITLE)) 
end;
