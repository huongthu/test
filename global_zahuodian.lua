
function store_sel_extend() 
local tbOpp = { 
"Giao dŞch /yes", 
" ho¹t ®éng cöa hµng /HuoDongyes", 
" kh«ng giao dŞch /no" }; 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
if (nDate >= 20070202 and nDate <= 20070225) then 
tinsert(tbOpp, 1,"Mua ngµy lÔ h¹ t¹p /BuySpringFestival07Card"); 
end; 

if (nDate >= 20070314 and nDate <= 20070321) then 
tinsert(tbOpp, 1,"Mua kim th¹ch /buy_collect_juanzhou") 
end; 
return tbOpp; 
end; 

function store_sel_village_extend() 
local tbOpp = { 
"Giao dŞch /yes", 
" ho¹t ®éng cöa hµng /HuoDongyes", 
"Ta ®Õn nhËn nhiÖm vô s¬ nhËp /zboss", 
" kh«ng giao dŞch /no", 
}; 
local nDate = tonumber(GetLocalDate("%Y%m%d")); 
if (nDate >= 20070314 and nDate <= 20070321) then 
tinsert(tbOpp, 1,"Mua kim th¹ch /buy_collect_juanzhou") 
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
