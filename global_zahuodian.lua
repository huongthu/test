
function store_sel_extend() 
local tbOpp = { 
"Giao d�ch /yes", 
" ho�t ��ng c�a h�ng /HuoDongyes", 
" kh�ng giao d�ch /no" }; 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
if (nDate >= 20070202 and nDate <= 20070225) then 
tinsert(tbOpp, 1,"Mua ng�y l� h� t�p /BuySpringFestival07Card"); 
end; 

if (nDate >= 20070314 and nDate <= 20070321) then 
tinsert(tbOpp, 1,"Mua kim th�ch /buy_collect_juanzhou") 
end; 
return tbOpp; 
end; 

function store_sel_village_extend() 
local tbOpp = { 
"Giao d�ch /yes", 
" ho�t ��ng c�a h�ng /HuoDongyes", 
"Ta ��n nh�n nhi�m v� s� nh�p /zboss", 
" kh�ng giao d�ch /no", 
}; 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
if (nDate >= 20070314 and nDate <= 20070321) then 
tinsert(tbOpp, 1,"Mua kim th�ch /buy_collect_juanzhou") 
end; 
return tbOpp; 
end; 

function HuoDongyes() 
Sale(179); 
end; 

function BuySpringFestival07Card() 
Sale(148); 
end; 

function buy_collect_juanzhou() 
Sale(165); 
end;
