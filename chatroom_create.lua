MONEY_CREATECHATROOM = 50000 

function Checkup() 
if (GetCash() < MONEY_CREATECHATROOM) then 
Msg2Player("<#> trong t�i �eo l�ng s� ti�n ch�a �� <color=yellow>" .. MONEY_CREATECHATROOM.." hai #<color>") 
return 0 
end 
return 1 
end 

function Consume() 
return Pay(MONEY_CREATECHATROOM) 
end 