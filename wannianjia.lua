Include("\\script\\event\\pingzi\\200805\\pingzi.lua");	-- script viet hoa By http://tranhba.com  ƴ����Ϸ
Include("\\script\\event\\young_hero\\hero.lua");		-- script viet hoa By http://tranhba.com  ����Ӣ��
Include("\\script\\task\\system\\task_string.lua");
function main() 
wannianjia_main(); 
end 


function wannianjia_main() 
local nDateH = tonumber(GetLocalDate("%Y%m%d%H")); 
local tbSay = 
{ 
"<dec><npc> v� l�m truy�n k� �� ��n th� ba tu�i , ch�c qu�c th�i d�n an , gia gia h�nh ph�c , ng��i ng��i �m no . ��i hi�p c� hay kh�ng c�n g� ��y ? ", 
} 
if pingzi0805:IsActTime() then 
tinsert(tbSay,"Ta mu�n ti�n h�nh h�p th�nh ch� /#pingzi0805:main()"); 
end 
if (nDateH >= hero_nDate_S and nDateH <= hero_nDate_E) then 
tinsert(tbSay,"Ta mu�n tham gia thi�u ni�n anh h�ng ho�t ��ng /#here_main()"); 
end 
tinsert(tbSay,"Hi�u r� ��i l�y t��ng th��ng ph��ng ph�p /wannianjia_Detailed"); 
tinsert(tbSay,"Ta ch� m�t ch�t tr� l�i /OnCancel"); 
CreateTaskSay(tbSay); 
end 
-- script viet hoa By http://tranhba.com  hi�u r� ��i t��ng th��ng 
function wannianjia_Detailed(nStep) 
local tbSay = 
{ 
"<dec><npc> c� hai ��i ho�t ��ng , ��i hi�p mu�n bi�t c�i n�o ho�t ��ng ? ", 
" hi�u r� h�p th�nh ch� ho�t ��ng #pingzi0805:Detailed()", 
" hi�u r� thi�u ni�n anh h�ng ho�t ��ng /#hero_intruduction()", 
" tr� v� /wannianjia_main" 
} 

CreateTaskSay(tbSay); 
end 


function OnCancel() 

end
