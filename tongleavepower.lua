Include("\\script\\tong\\tong_header.lua");

Include("\\script\\global\\repute_head.lua")

function CheckLeaveTongPower() 
str, result = GetTong() -- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã chång hay ch­a víi bang héi trung 
if (result == 1) and (str ~= "") then 
-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 
-- script viet hoa By http://tranhba.com  need_money = {10000,100000,500000} 
need_money = {500000,100000,10000,10000,10000} 
figure = GetTongFigure() -- script viet hoa By http://tranhba.com  ph¸n ®o¸n vai trß ®ang gióp sÏ trung ®Ých th©n phËn 
if (figure == TONG_MASTER) then 
Msg2Player("Bang chñ kh«ng cho phÐp lµm ph¶n bang héi ") 
return 0 
else 
if (GetCash() >= need_money[figure]) then 
SetTaskTemp(11,need_money[figure]) 
Nrepute = check_repute(figure) -- script viet hoa By http://tranhba.com  th«ng qua bang héi trung ®Ých chøc vÞ ph¸n ®o¸n øng gi¶m bao nhiªu danh väng 
SetTaskTemp(12,Nrepute) 
Msg2Player("C¶nh c¸o # ph¶n béi c¸ch bang héi cÇn giao n¹p "..need_money[figure].." hai båi d­ìng phÝ , h¬n n÷a danh väng sau ®ã hµng "..Nrepute.." ®iÓm #") 
return need_money[figure] -- script viet hoa By http://tranhba.com  c¨n cø th©n phËn ph¸n ®o¸n cã hay kh«ng ®ñ tiÒn 
else 
Msg2Player("C¶nh c¸o # ph¶n béi c¸ch bang héi cÇn giao n¹p "..need_money[figure].." hai båi d­ìng phÝ , nh­ng lµ ng­¬i b©y giê còng kh«ng cã nhiÒu tiÒn nh­ vËy . ") 
return 0 
end 
end 
else 
Msg2Player("Ng­¬i b©y giê còng kh«ng ë bÊt kú bang héi trung #") 
return 0 
end 
end; 

function check_repute(Tong_title) -- script viet hoa By http://tranhba.com  th«ng qua ®ang gióp sÏ trung ®Ých chøc vÞ ph¸n ®o¸n øng gi¶m bao nhiªu danh väng 
Rep = GetRepute() 
Repute_Level = GetReputeLevel(Rep) 
if (Tong_title == TONG_ELDER) then -- script viet hoa By http://tranhba.com  tr­ëng l·o 
reduce_repute = GetLevelRepute(Repute_Level) - GetLevelRepute(Repute_Level - 1) -- script viet hoa By http://tranhba.com  h¼n rít xuèng danh väng 
elseif (Tong_title == TONG_MANAGER) then -- script viet hoa By http://tranhba.com  ®éi tr­ëng 
reduce_repute = floor((GetLevelRepute(Repute_Level) - GetLevelRepute(Repute_Level - 1)) * 0.5) 
else -- script viet hoa By http://tranhba.com  bang chóng # Èn sÜ 
reduce_repute = floor((GetLevelRepute(Repute_Level) - GetLevelRepute(Repute_Level - 1)) * 0.25) 
end 
if (Rep <= reduce_repute) then -- script viet hoa By http://tranhba.com  nÕu nh­ danh väng ch­a ®ñ lµ gi¶m v× 0 
reduce_repute = Rep 
end 
return reduce_repute 
end 
