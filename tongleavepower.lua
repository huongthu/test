Include("\\script\\tong\\tong_header.lua");

Include("\\script\\global\\repute_head.lua")

function CheckLeaveTongPower() 
str, result = GetTong() -- script viet hoa By http://tranhba.com  ph�n �o�n c� ch�ng hay ch�a v�i bang h�i trung 
if (result == 1) and (str ~= "") then 
-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 
-- script viet hoa By http://tranhba.com  need_money = {10000,100000,500000} 
need_money = {500000,100000,10000,10000,10000} 
figure = GetTongFigure() -- script viet hoa By http://tranhba.com  ph�n �o�n vai tr� �ang gi�p s� trung ��ch th�n ph�n 
if (figure == TONG_MASTER) then 
Msg2Player("Bang ch� kh�ng cho ph�p l�m ph�n bang h�i ") 
return 0 
else 
if (GetCash() >= need_money[figure]) then 
SetTaskTemp(11,need_money[figure]) 
Nrepute = check_repute(figure) -- script viet hoa By http://tranhba.com  th�ng qua bang h�i trung ��ch ch�c v� ph�n �o�n �ng gi�m bao nhi�u danh v�ng 
SetTaskTemp(12,Nrepute) 
Msg2Player("C�nh c�o # ph�n b�i c�ch bang h�i c�n giao n�p "..need_money[figure].." hai b�i d��ng ph� , h�n n�a danh v�ng sau �� h�ng "..Nrepute.." �i�m #") 
return need_money[figure] -- script viet hoa By http://tranhba.com  c�n c� th�n ph�n ph�n �o�n c� hay kh�ng �� ti�n 
else 
Msg2Player("C�nh c�o # ph�n b�i c�ch bang h�i c�n giao n�p "..need_money[figure].." hai b�i d��ng ph� , nh�ng l� ng��i b�y gi� c�ng kh�ng c� nhi�u ti�n nh� v�y . ") 
return 0 
end 
end 
else 
Msg2Player("Ng��i b�y gi� c�ng kh�ng � b�t k� bang h�i trung #") 
return 0 
end 
end; 

function check_repute(Tong_title) -- script viet hoa By http://tranhba.com  th�ng qua �ang gi�p s� trung ��ch ch�c v� ph�n �o�n �ng gi�m bao nhi�u danh v�ng 
Rep = GetRepute() 
Repute_Level = GetReputeLevel(Rep) 
if (Tong_title == TONG_ELDER) then -- script viet hoa By http://tranhba.com  tr��ng l�o 
reduce_repute = GetLevelRepute(Repute_Level) - GetLevelRepute(Repute_Level - 1) -- script viet hoa By http://tranhba.com  h�n r�t xu�ng danh v�ng 
elseif (Tong_title == TONG_MANAGER) then -- script viet hoa By http://tranhba.com  ��i tr��ng 
reduce_repute = floor((GetLevelRepute(Repute_Level) - GetLevelRepute(Repute_Level - 1)) * 0.5) 
else -- script viet hoa By http://tranhba.com  bang ch�ng # �n s� 
reduce_repute = floor((GetLevelRepute(Repute_Level) - GetLevelRepute(Repute_Level - 1)) * 0.25) 
end 
if (Rep <= reduce_repute) then -- script viet hoa By http://tranhba.com  n�u nh� danh v�ng ch�a �� l� gi�m v� 0 
reduce_repute = Rep 
end 
return reduce_repute 
end 
