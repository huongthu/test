Include("\\script\\dailogsys\\dailogsay.lua")

function main() 
-- script viet hoa By http://tranhba.com local szTitle = "<npc> c�n ph�i mua thu�c sao ? " 
-- script viet hoa By http://tranhba.com local tbOpt = {} 
-- script viet hoa By http://tranhba.com tinsert(tbOpt, {"Giao d�ch ", yes}) 
-- script viet hoa By http://tranhba.com tinsert(tbOpt, {"Ta t�y ti�n �i d�o m�t ch�t "}) 
-- script viet hoa By http://tranhba.com CreateNewSayEx(szTitle, tbOpt); 
Sale(176) 
end 

function yes() 
Sale(176) 
end 
