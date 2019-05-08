Include("\\script\\global\\platina_head.lua");
Include("\\script\\lib\\basic.lua");
local nOpenLevel = 7 
function platina_main() 
local aryDescribe = { 
"<dec><npc> tr��c , ta �� t�ng tr� gi�p quan ph� d�ng <color=yellow> c�c lo�i b� ng�y �� b� phi�n <color> t�i ch� t�o th�n b�t l�i kh� . t� nh� <sex> c� th� t�m ra <color=yellow> n�n b� ng�y �� b� phi�n <color>, ta c� th� gi�p ng��i ch� t�o b�ch kim trang b� , nh�t ��nh kh�ng th� thi�u n�n nguy�n li�u .", 
" ta mu�n th�ng c�p n�n b�ch kim trang b� /upgrade_paltinaequip", 
" ta mu�n ch� t�o ho�ng kim trang b� th�nh b�ch kim trang b� /upgrade_goldformplatina", 
" thu t�p b� ng�y �� b� phi�n /about_aerolite", 
" b�ch kim trang b� l� c�i g� about_platina", 
" �� cho ta suy ngh� th�m /cancel", 
}; 
CreateTaskSay(aryDescribe); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  �em ho�ng kim trang b� ch� t�o th�nh b�ch kim trang b� 
function upgrade_goldformplatina() 
CreateTaskSay({ 
"<dec><npc> th�ng c�p ho�ng kim trang b� ��n b�ch kim nguy�n li�u c�n 1 b� ng�y th�ch ( trung ), 1 8 c�p huy�n tinh qu�ng th�ch , 1 th�n b� qu�ng th�ch c�ng 1000 v�n l��ng . b� ng�y th�ch c� th� d�ng vinh d� tr� gi� ho�c l� � k� tr�n c�c mua ���c . trang b� ho�n t�t c� nguy�n li�u , ch�ng ta li�n c� th� b�t ��u trang b� ch� t�o c�ng vi�c . <enter> n�u nh� ng��i ngh� bi�t th�ng c�p th�nh b�ch kim trang b� sau ��ch thu�c t�nh nh� th� n�o , �em ho�ng kim trang b� cho ta th� s� bi�t .", 
" ta mu�n nh�n t� ho�ng kim trang b� th�ng c�p sau ��ch b�ch kim trang b� thu�c t�nh ./want_upgoldeq_preview", 
" c� th� gi�p ta ��a c�i n�y trang b� ch� t�o th�nh b�ch kim trang b� sao ?/want_upgoldeq", 
" ta mu�n mu�n nh�n /cancel" 
}); 
end; 

function want_upgoldeq_preview() 
GiveItemUI("Xem qua ch� t�o b�ch kim trang b� ","�em mu�n ch� t�o ho�ng kim trang b� b� v�o tr� v�t h�p .", "do_upgoldeq_preview", "cancel",1); 
end; 

function do_upgoldeq_preview(nItemCount) 
local tbDialog = 
{ 
"", 
" �� cho ta th� nh�n m�t ch�t /want_upgoldeq_preview", 
" th�t kh�ng c� � , ta ch� m�t ch�t tr� l�i ./cancel" 
}; 

if (nItemCount ~= 1) then 
tbDialog[1] = "<dec><npc> ��i hi�p b� v�o ��ch v�t ph�m s� l��ng kh�ng ��ng ."; 
CreateTaskSay(tbDialog); 
return 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n ho�ng kim trang b� c� hay kh�ng ph� h�p y�u c�u 
local nCurItemIdx = GetGiveItemUnit(nItemCount); 
local bSuccess, szErrorMsg, nComposeEntryIdx = fit_formed_eq(nCurItemIdx); 

if (bSuccess == 0) then 
tbDialog[1] = szErrorMsg; 
return 
end 


-- script viet hoa By http://tranhba.com  d� l�m 
local szDesc = preview_eq_format(nCurItemIdx); 
CreateTaskSay({"<dec><npc> ho�n th�nh b�ch kim trang b� v� <color=yellow>"..TB_PLATINAEQ_GOLDEQ[nComposeEntryIdx][4]..", thu�c t�nh nh� sau : <enter>"..szDesc, 
" gi�p ta nh�n xong th�nh b�ch kim trang b� thu�c t�nh nh� th� n�o ./want_upgoldeq_preview", 
" c� th� gi�p ta ch� t�o n�n trang b� th�nh b�ch kim trang b� sao ? /want_upgoldeq", 
" ta bi�t , c�m �n #/cancel"}); 
end; 

function want_upgoldeq() 
GiveItemUI("Ch� t�o b�ch kim trang b� ","Mang c�n ch� t�o ho�ng kim , 1 kh�i b� ng�y �� b� phi�n ( trung ), 1 c� 8 c�p huy�n tinh qu�ng th�ch , c�ng m�t th�n b� qu�ng th�ch khi ��n m�t ��ch v�t ph�m r��ng . ch� t�o c�n hao ph� 1000 v�n l��ng , ng��i chu�n b� xong ch�a ? ", "do_upgoldeq_process", "cancel",1); 
end; 

function do_upgoldeq_process(nItemCount) 
local tbDialog = 
{ 
"", 
" ta th� l�i l�n n�a nh�n /want_upgoldeq", 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" 
}; 

local nComposeEntryIdx = 0; 
local nEquipItemIdx = 0; 
local nSrcItemValueSum = 0; 
local tbMaterialIdx = {}; 

local tb_material = {}; 
for szkey, tb_item in tb_gold2planita_material do 
tb_material[szkey] = {}; 
tb_material[szkey][1] = 0; 
end 

for i = 1, nItemCount do 
local nCurItemIdx = GetGiveItemUnit(i); 
local nCurItemName = GetItemName(nCurItemIdx); 
local nCurItemQuality = GetItemQuality(nCurItemIdx); 
local tbCurItemProp = pack(GetItemProp(nCurItemIdx)); 

-- script viet hoa By http://tranhba.com  ho�ng kim trang b� 
if (nCurItemQuality == 1) then 

-- script viet hoa By http://tranhba.com  ch� c� th� b� v�o m�t m�n ho�ng kim trang b� 
if (nComposeEntryIdx ~= 0) then 
tbDialog[1] = "<dec><npc> r�t cu�c ng��i ngh� ch� t�o th�n b� trang b� ? ta kh�ng c� hoa m�t �i ? "; 
CreateTaskSay(tbDialog); 
return 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n ho�ng kim trang b� c� hay kh�ng ph� h�p �i�u ki�n 
local bSuccess, szErrorMsg, nEqEntryIdx = fit_formed_eq(nCurItemIdx); 
if (bSuccess == 0) then 
tbDialog[1] = szErrorMsg; 
CreateTaskSay(tbDialog); 
return 
end 

nEquipItemIdx = nCurItemIdx; 
nComposeEntryIdx= nEqEntryIdx; 

else 

local bSuccess, szErrorMsg = fit_formed_material(nCurItemIdx, tb_gold2planita_material, nEquipItemIdx); 
if (bSuccess == 0) then 
tbDialog[1] = szErrorMsg; 
CreateTaskSay(tbDialog); 
return 
end 

local szItemKey = tbCurItemProp[1]..","..tbCurItemProp[2]..","..tbCurItemProp[3]; 
			tb_material[szItemKey][1] = tb_material[szItemKey][1] + GetItemStackCount(nCurItemIdx);
			tbMaterialIdx[getn(tbMaterialIdx) + 1] = nCurItemIdx;
end 
end 

-- script viet hoa By http://tranhba.com  nh�t ��nh ph�i c� m�n ho�ng kim trang b� 
if (nComposeEntryIdx == 0) then 
tbDialog[1] = "<dec><npc> n�u nh� mu�n ta gi�p ng��i , xin �em c�i �� trang b� cho ta ."; 
CreateTaskSay(tbDialog); 
return 
end 

-- script viet hoa By http://tranhba.com  t�t c�n t�i li�u c� ��m nh�t ��nh ph�i th�a m�n y�u c�u 
for szkey, tb_item in tb_gold2planita_material do 
if (tb_item.nCount) then 
if (tb_material[szkey][1] ~= tb_item.nCount) then 
tbDialog[1] = "<dec><npc> mu�n ch� t�o n�n trang b� , �t nh�t ta c�ng mu�n <color=yellow>"..tb_item.nCount.." c� "..tb_item.szName.."<color>, thi�t tr� qu� nhi�u , s� t�n th�t , nh�ng l� , qu� �t , ta l�i kh�ng th� ch� t�o ." 
CreateTaskSay(tbDialog); 
return 
end 
end 
end 

do_upgrade_platina(nEquipItemIdx, TB_PLATINAEQ_GOLDEQ[nComposeEntryIdx][4], tbMaterialIdx, tb_material, 1); 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  b�ch kim trang b� th�ng c�p 
function upgrade_paltinaequip() 
CreateTaskSay({ 
"<dec><npc> th�ng c�p th�nh b�ch kim trang b� c�n tr� xu�ng v�t ph�m :1 kh�i <color=yellow> b� ng�y th�ch ( trung )<color> c�ng v�i 100 v�n l��ng . c� th� d�ng vinh d� tr� gi� ��i l�y b� ng�y �� b� phi�n , ng��i chu�n b� xong , ch�ng ta c� th� b�t ��u .<enter><color=red> th�ng c�p b�ch kim trang b� s� c� nh�t ��nh nguy hi�m , n�u nh� th�t b�i , �em m�t �i v�t ph�m c�ng 1000 v�n l��ng .<color><enter> n�u nh� ng��i ngh� bi�t ho�n th�nh b�ch kim trang b� n�i r�ng nh� th� n�o , c� th� mang ho�ng kim trang b� t�i ��y cho ta nh�n m�t ch�t ", 
" ta mu�n nh�n xong th�nh b�ch kim trang b� thu�c t�nh ./#want_upplatinaeq(1)", 
" c� th� gi�p ta th�ng c�p n�n b�ch kim trang b� sao ? /#want_upplatinaeq(0)", 
" ta suy ngh� l�i m�t ch�t /cancel" 
}); 
end; 

function want_upplatinaeq(bPreview) 
if (bPreview == 1) then 
GiveItemUI("Nh�n b�ch kim trang b� th�ng c�p qu� tr�nh ","Xin �em mu�n th�ng c�p ��ch b�ch kim trang b� c�ng b� ng�y �� b� phi�n b� v�o v�t ph�m h�p .", "do_upplatinaeq_preview", "cancel",1); 
else 
GiveItemUI("Th�ng c�p b�ch kim trang b� ","Xin �em mu�n th�ng c�p ��ch b�ch kim trang b� c�ng b� ng�y �� b� phi�n b� v�o v�t ph�m h�p , th�ng c�p ti�u hao 1000 v�n l��ng .", "do_upplatinaeq_process", "cancel",1); 
end; 
end; 

function do_upplatinaeq_preview(nItemCount) 
local tbDialog = 
{ 
"", 
" �� cho ta th� l�i l�n n�a /#want_upplatinaeq(1)", 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" 
}; 

local nComposeEntryIdx = 0; 
local nEquipItemIdx = 0; 
local nSrcItemValueSum = 0; 

local tb_enhanceitem_count = {}; 
for szkey, tb_item in tb_upgrade_material do 
tb_enhanceitem_count[szkey] = {}; 
tb_enhanceitem_count[szkey][1] = 0; 
end; 

for i = 1, nItemCount do 
local nCurItemIdx = GetGiveItemUnit(i); 
local nCurItemQuality = GetItemQuality(nCurItemIdx); 
local tbCurItemProp = pack(GetItemProp(nCurItemIdx)); 

if (nCurItemQuality == 4) then 

if (nComposeEntryIdx ~= 0) then 
tbDialog[1] = "<dec><npc> ng��i r�t cu�c l� mu�n th�ng c�p th�nh c�i lo�i �� b�ch kim trang b� ? ta c� ph�i hay kh�ng hoa m�t ?"; 
CreateTaskSay(tbDialog); 
return 
end 

local bSuccess, szErrorMsg, nEqEntryIdx = fit_formed_eq(nCurItemIdx); 
if (bSuccess == 0) then 
tbDialog[1] = szErrorMsg; 
CreateTaskSay(tbDialog); 
return 
end 

nEquipItemIdx = nCurItemIdx; 
nComposeEntryIdx= nEqEntryIdx; 
else 
local bSuccess, szErrorMsg = fit_formed_material(nCurItemIdx, tb_upgrade_material, nEquipItemIdx); 
if (bSuccess == 0) then 
tbDialog[1] = szErrorMsg; 
CreateTaskSay(tbDialog); 
return 
end 

local szItemKey = tbCurItemProp[1]..","..tbCurItemProp[2]..","..tbCurItemProp[3]; 
if (tb_upgrade_material[szItemKey]["nValue"]) then 
				nSrcItemValueSum = nSrcItemValueSum + tb_upgrade_material[szItemKey]["nValue"] * GetItemStackCount(nCurItemIdx);
end 

			tb_enhanceitem_count[szItemKey][1] = tb_enhanceitem_count[szItemKey][1] + GetItemStackCount(nCurItemIdx);
end 
end 

if (nComposeEntryIdx == 0) then 
tbDialog[1] = "<dec><npc> �em c�n th�ng c�p th�nh b�ch kim ��ch trang b� cho ta , n�u kh�ng ta b�y gi� l�m sao bi�t th�ng c�p ?"; 
CreateTaskSay(tbDialog); 
return 
end 

local nUpGradeProb = nSrcItemValueSum / (TB_PLATINAEQ_GOLDEQ[nComposeEntryIdx][3] * TB_PLATINAEQ_UPGRADERATE[GetPlatinaLevel(nEquipItemIdx)]); 
if (nUpGradeProb >= 1) then 
nUpGradeProb = 1; 
elseif (nUpGradeProb >= 0.9999) then 
nUpGradeProb = 0.9999; 
end 

local szDesc = preview_eq_format(nEquipItemIdx); 
CreateTaskSay({format("<dec><npc> c�n c� kinh nghi�m c�a ta , n�n b�ch kim trang b� c� <color=yellow>%5.2f%%<color> c� th� th�ng c�p ��n k� ti�p c�p b�c c�ng c� thu�c t�nh : <enter>%s", nUpGradeProb*100, szDesc), 
" gi�p ta xem m�t ch�t t� nh�ng kh�c trang b� ho�n th�nh b�ch kim trang b� nh� th� n�o ./#want_upplatinaeq(1)", 
" c� th� gi�p ta ch� t�o n�n trang b� th�nh b�ch kim trang b� sao /#want_upplatinaeq(0)", 
" ta bi�t , c�m �n . /cancel"}); 
end 

function do_upplatinaeq_process(nItemCount) 
local tbDialog = 
{ 
"", 
" �� cho ta th� l�i l�n n�a /#want_upplatinaeq(0)", 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" 
}; 

local nComposeEntryIdx = 0; 
local nEquipItemIdx = 0; 
local nSrcItemValueSum = 0; 
local nUpGradeProb = 0; 
local tbMaterialIdx = {}; 

local tb_enhanceitem_count = {}; 
for szkey, tb_item in tb_upgrade_material do 
tb_enhanceitem_count[szkey] = {}; 
tb_enhanceitem_count[szkey][1] = 0; 
end 

-- script viet hoa By http://tranhba.com  tr��c l�n l�ch m�t l�n t�m ���c c�n th�ng c�p ��ch b�ch kim trang b� ho�c l� c�n ch� t�o ��ch ho�ng kim trang b� 
for i = 1, nItemCount do 
local nCurItemIdx = GetGiveItemUnit(i); 
local nCurItemQuality = GetItemQuality(nCurItemIdx); 
local tbCurItemProp = pack(GetItemProp(nCurItemIdx)); 

if (nCurItemQuality == 4) then 
if (nComposeEntryIdx ~= 0) then 
tbDialog[1] = "<dec><npc> r�t cu�c ng��i ngh� th�ng c�p m�i lo�i n�o b�ch kim trang b� ? c� ph�i hay kh�ng ta xem hoa m�t ?"; 
CreateTaskSay(tbDialog); 
return 
end 

local bSuccess, szErrorMsg, nEqEntryIdx = fit_formed_eq(nCurItemIdx); 
if (bSuccess == 0) then 
tbDialog[1] = szErrorMsg; 
CreateTaskSay(tbDialog); 
return 
end 

nEquipItemIdx = nCurItemIdx; 
nComposeEntryIdx= nEqEntryIdx; 
end 
end 

if (nComposeEntryIdx == 0) then 
tbDialog[1] = "<dec><npc> n�u nh� mu�n ta gi�p ng��i , li�n �em c�i �� trang b� cho ta ."; 
CreateTaskSay(tbDialog); 
return 
end 

-- script viet hoa By http://tranhba.com  gi�o nghi�m t�i li�u c� hay kh�ng th�t x�ng 
for i = 1, nItemCount do 
local nCurItemIdx = GetGiveItemUnit(i); 
local nCurItemQuality = GetItemQuality(nCurItemIdx); 
local nCurItemName = GetItemName(nCurItemIdx); 
local tbCurItemProp = pack(GetItemProp(nCurItemIdx)); 

if (nCurItemQuality ~= 4) then 
local bSuccess, szErrorMsg = fit_formed_material(nCurItemIdx, tb_upgrade_material, nEquipItemIdx); 
if (bSuccess == 0) then 
tbDialog[1] = szErrorMsg; 
CreateTaskSay(tbDialog); 
return 
end 

local szItemKey = tbCurItemProp[1]..","..tbCurItemProp[2]..","..tbCurItemProp[3]; 
if (tb_upgrade_material[szItemKey]["nValue"]) then 
				nSrcItemValueSum = nSrcItemValueSum + tb_upgrade_material[szItemKey]["nValue"] * GetItemStackCount(nCurItemIdx);
end 

			tbMaterialIdx[getn(tbMaterialIdx) + 1] = nCurItemIdx;
			tb_enhanceitem_count[szItemKey][1] = tb_enhanceitem_count[szItemKey][1] + GetItemStackCount(nCurItemIdx);
end 
end 

for szkey, tb_item in tb_upgrade_material do 
if (tb_item.nCount) then 
if (tb_item.nUpgradeLevel and tb_item.nUpgradeLevel ~= GetPlatinaLevel(nEquipItemIdx)) then 
elseif(tb_item.nCount ~= tb_enhanceitem_count[szkey][1]) then 
tbDialog[1] = "<dec><npc> mu�n ch� t�o n�n trang b� , ta ch� c�n <color=yellow>"..tb_item.nCount.." c� "..tb_item.szName.."<color>, thi�t tr� qu� nhi�u s� t�n th�t , qu� �t th� kh�ng th� ch� t�o ." 
CreateTaskSay(tbDialog); 
return 
end 
end 
end 

nUpGradeProb = nSrcItemValueSum / (TB_PLATINAEQ_GOLDEQ[nComposeEntryIdx][3] * TB_PLATINAEQ_UPGRADERATE[GetPlatinaLevel(nEquipItemIdx)]); 
if (nUpGradeProb >= 1) then 
nUpGradeProb = 1; 
elseif (nUpGradeProb >= 0.9999) then 
nUpGradeProb = 0.9999; 
end 

do_upgrade_platina(nEquipItemIdx, TB_PLATINAEQ_GOLDEQ[nComposeEntryIdx][4], tbMaterialIdx, tb_enhanceitem_count, nUpGradeProb); 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  �em ho�ng kim trang b� ch� t�o th�nh b�ch kim trang b� END 


function getItemAllMagicList(nItemIdx) 
local tb_magic = {}; 
for i = 1, 6 do 
		tb_magic[getn(tb_magic) + 1] = pack(GetItemMagicAttrib(nItemIdx, i));
end; 
return tb_magic; 
end; 

function about_aerolite() 
CreateTaskSay({ 
" b� ng�y �� b� phi�n l� thi�n ��a b�o v�t , trong cu�c s�ng r�t kh� t�m ki�m , b�t qu� , ng��i c� th� ��n <color=yellow> li�n cu�c so t�i s� gi� <color> h�i m�t ch�t nh�n , n�u nh� ng��i c� <color=yellow> vinh d� tr� gi� <color> l� c� th� mua ���c . c�ng c� th� ��n <color=yellow> k� tr�n c�c <color> xem m�t ch�t ", 
" ta bi�t !/cancel", 
}); 
end; 

function about_platina() 
CreateTaskSay({"<dec><npc> b�ch kim trang b� ��ch thu�c t�nh �� cho ho�ng kim trang b� ��ch thu�c t�nh quy�t ��nh , ho�ng kim trang b� thu�c t�nh c�ng t�t , ch� t�o th�nh b�ch kim c�ng nhi�u . n�u nh� kh�ng h�i l�ng b�y gi� ho�ng kim trang b� , ta �� ngh� ng��i t�m nh�ng kh�c ho�ng kim trang b� .","K�t th�c ��i tho�i /cancel"}); 
end; 


-- script viet hoa By http://tranhba.com  new func 
-- script viet hoa By http://tranhba.com  ph�n �o�n cho gi�i m�t trung ��ch b�ch kim ho�c l� ho�ng kim trang b� c� ph�i l� hay kh�ng t�n t�i h�n n�a duy nh�t 
function fit_formed_eq(nCurItemIdx) 
local nCurItemQuality = GetItemQuality(nCurItemIdx); 
local nExpiredTime = ITEM_GetExpiredTime(nCurItemIdx); 
local tbCurItemProp = pack(GetItemProp(nCurItemIdx)); 

local szErrorMsg = ""; 
local szGetEquipIDFunc = ""; 
local nComposeEntryIdx = 0; 
local szEqType = ""; 
if (nCurItemQuality == 1) then 
szGetEquipIDFunc = "GetGlodEqIndex"; 
szEqType = " ho�ng kim trang b� "; 
else 
szGetEquipIDFunc = "GetPlatinaEquipIndex"; 
szEqType = " b�ch kim trang b� "; 
end 

if (tbCurItemProp[1] ~= 0) then -- script viet hoa By http://tranhba.com  n�u nh� kh�ng ph�i l� trang b� ( c� th� l� h� h�i trang b� ) 
szErrorMsg = format("<dec><npc> ch� c�n cho ta %s ch� t�o b�ch kim trang b� l� �� r�i , nh�ng th� kh�c th� �� xu�ng .", szEqType); 
return 0, szErrorMsg 
end 

if (nExpiredTime > 0) then -- script viet hoa By http://tranhba.com  c� b�o ch�t k� ��ch trang b� , kh�ng th� # 
szErrorMsg = "<dec><npc>Trang b?c?<color=fire> s� d�ng th�i h�n <color> th� kh�ng th� luy�n ."; 
return 0, szErrorMsg 
end 

for szkey, tb_item in TB_PLATINAEQ_GOLDEQ do 
if (szkey == getglobal(szGetEquipIDFunc)(nCurItemIdx)) then 
nComposeEntryIdx = szkey; 
break; 
end 
end 
if (nComposeEntryIdx == 0) then 
szErrorMsg = format("<dec><npc> th�t ��ng ti�c , l�y ta b�y gi� kinh nghi�m , kh�ng th� ch� t�o <color=yellow>%s<color>.", GetItemName(nCurItemIdx)); 
return 0, szErrorMsg 
end 


if (nCurItemQuality == 4 and GetPlatinaLevel(nCurItemIdx) >= %nOpenLevel) then 
szErrorMsg = "<dec><npc> l�y l�c l��ng c�a ta b�y gi� , ch� c� th� gi�p ng��i c��ng h�a n�n trang b� ��n c�i n�y c�p b�c m� th�i , nh�ng l� , sau n�y ta c�n c� th� ti�p t�c gi�p ng��i luy�n . tin t��ng ta �i , s� c� m�t ng�y , ta gi�p ng��i c��ng h�a b�n h� th�ng c�p , ��n l�c �� ng��i tr� l�i t�m ta nga "; 
return 0, szErrorMsg 
end; 


if (nCurItemQuality == 4 and GetPlatinaLevel(nCurItemIdx) >= 10) then 
szErrorMsg = "<dec><npc> n�n trang b� �� ��t ��ng c�p cao nh�t , kh�ng c�n l�i t�ng c�p ."; 
return 0, szErrorMsg 
end; 

return 1, szErrorMsg, nComposeEntryIdx; 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n cho gi�i m�t trung b� v�o ��ch t�i li�u c� hay kh�ng h�p l� # n�u nh� l� d� l�m , ch� c�n ph�n �o�n c� gi� tr� l��ng ��ch t�i li�u c� hay kh�ng ��u � ��y # v� gi� tr� gi� l��ng nh�ng l� ch� t�o c�n ��ch t�i li�u kh�ng c�n ph�i �� � ��n # , n�u nh� l� ch� t�o , l� ��u ph�i ph�n �o�n # 
-- script viet hoa By http://tranhba.com  tham s� # t�i li�u Idx , c� hay kh�ng v� d� l�m , t�i li�u table , ho�ng kim trang b� idx 
function fit_formed_material(nCurItemIdx, tb_material, nPlatinaIdx) 
local szErrorMsg = ""; 
local tbCurItemProp = pack(GetItemProp(nCurItemIdx)); 
local szItemKey = tbCurItemProp[1]..","..tbCurItemProp[2]..","..tbCurItemProp[3]; 

if (tb_material[szItemKey] == nil) then 
szErrorMsg = "<dec><npc> ��i hi�p b� v�o ��ch nguy�n li�u c�ng y�u c�u kh�ng h�p "; 
return 0, szErrorMsg; 
end 

if (tb_material[szItemKey].nItemLevel) then 
if (tbCurItemProp[4] ~= tb_material[szItemKey]["nItemLevel"]) then 
szErrorMsg = format("<dec><npc> trang b� c�p b�c %s h�nh nh� l� kh�ng ��ng .", GetItemName(nCurItemIdx)); 
return 0, szErrorMsg; 
end 
end 
if (tb_material[szItemKey]["nUpgradeLevel"]) then 
if (GetPlatinaLevel(nPlatinaIdx) ~= tb_material[szItemKey]["nUpgradeLevel"]) then 
szErrorMsg = "<dec><npc> th�ng c�p n�n b�ch kim trang b� ��ch nguy�n li�u c� kh�ng ��ng "; 
return 0, szErrorMsg; 
end 
end 

return 1, szErrorMsg; 
end 

-- script viet hoa By http://tranhba.com  d� l�m ��ch c�ch th�c 
function preview_eq_format(nCurItemIdx) 
local tbPlatinaMagicAttrib = {}; 
if (GetItemQuality(nCurItemIdx) == 4) then 
tbPlatinaMagicAttrib = pack(PreviewPlatinaUpgrade(nCurItemIdx)); 
else 
tbPlatinaMagicAttrib = pack(PreviewPlatinaFromGold(nCurItemIdx)); 
end 

local tbGoldMagicAttrib = getItemAllMagicList(nCurItemIdx); 
local szItemDesc = ""; 

for i = 1, getn(tbPlatinaMagicAttrib) do 
if (tbGoldMagicAttrib[i][1] == tbPlatinaMagicAttrib[i][1] and tbGoldMagicAttrib[i][2] ~= tbPlatinaMagicAttrib[i][2]) then 
local szD = (tbPlatinaMagicAttrib[i][2]-tbGoldMagicAttrib[i][2]); 
if (szD > 0) then 
				szD = "(+"..szD..")";
else 
szD = "("..szD..")"; 
end; 
szItemDesc = szItemDesc.."<color=yellow>"..GetItemMagicDesc(unpack(tbPlatinaMagicAttrib[i])).."<color><color=red>"..szD.."<color><enter>"; 
else 
szItemDesc = szItemDesc.."<color=green>"..GetItemMagicDesc(unpack(tbPlatinaMagicAttrib[i])).."<color><enter>"; 
end; 
end 
return szItemDesc; 
end 

-- script viet hoa By http://tranhba.com  ch� t�o b�ch kim ��ch qu� tr�nh 
function do_upgrade_platina(nEqIdx, nUpgradeEqName, tbMaterialIdx, tb_enhanceitem_count, nUpGradeProb) 
-- script viet hoa By http://tranhba.com  tr� ti�n 
if (GetCash() < 10000000) then 
CreateTaskSay({"<dec><npc> ng��i kh�ng c� mang ch� t�o ph� d�ng <color=yellow>1000 v�n <color> hai .","Ta bi�t , �� cho ta tr��c chu�n b� /cancel"}); 
return 
end 
Pay(10000000); 

-- script viet hoa By http://tranhba.com  san nguy�n li�u 
for i = 1, getn(tbMaterialIdx) do 
if (RemoveItemByIndex(tbMaterialIdx[i]) ~= 1) then 
WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t th� ti�u v�t ph�m th�t b�i :%s", 
"[Task th�ng c�p b�ch kim trang b� ERROR!!]", 
GetLocalDate("%y-%m-%d %H:%M:%S"), 
GetAccount(), 
GetName(), 
GetItemName(tbMaterialIdx[i]))); 
return 
end 
end 

if (random() > nUpGradeProb) then 
CreateTaskSay({"<dec><npc> th�ng c�p b�ch kim trang b� th�t b�i , m�t �i ch� t�o v�t ph�m c�ng 100 v�n l��ng .","Ta ch� m�t ch�t tr� l�i /cancel"}); 
Msg2Player("Th�ng c�p b�ch kim trang b� th�t b�i , m�t �i ch� t�o v�t ph�m c�ng 100 v�n l��ng ."); 

WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t gi� tr� l��ng ch�a �� , x�c su�t v� %.4f", 
"[Task th�ng c�p b�ch kim trang b� th�t b�i !!]", 
GetLocalDate("%y-%m-%d %H:%M:%S"), 
GetAccount(), 
GetName(), 
nUpGradeProb)) 
return 
end 

local szLog = " ti�u hao \t"..GetItemName(nEqIdx).."1 \t"; 
for szkey, tb_temp in tb_enhanceitem_count do 
if (tb_temp[2]) then 
szLog = szLog..tb_temp[2]..":"..tb_temp[1].." \t" 
end; 
end; 

local szUpgradeItemFunc = ""; 
if (GetItemQuality(nEqIdx) == 1) then 
szUpgradeItemFunc = "UpgradePlatinaFromGoldItem"; 
else 
szUpgradeItemFunc = "UpgradePlatinaItem"; 
end 

local szBeforeItemInfo = getItemInfo(nEqIdx); -- script viet hoa By http://tranhba.com  ��t ���c th�ng c�p tr��c ��ch c�n k� tin t�c 

-- script viet hoa By http://tranhba.com  th�ng c�p sau 
local nSuccess = getglobal(szUpgradeItemFunc)(nEqIdx); 
local nItemLevel = GetPlatinaLevel(nEqIdx); 
if nSuccess > 0 then 
local szBehindItemInfo = getItemInfo(nEqIdx);-- script viet hoa By http://tranhba.com  ��t ���c th�ng c�p sau ��ch c�n k� tin t�c 

CreateTaskSay({"<dec><npc> th�ng c�p b�ch kim trang b� th�nh c�ng , ��t ���c m�t b�ch kim trang b� <color=yellow>"..nUpgradeEqName.."<color>, c�p "..nItemLevel..".","Ta ch� m�t ch�t tr� l�i /cancel"}); 
Msg2Player("B�ch kim trang b� th�ng c�p th�nh c�ng , c�p b�c v� "..nItemLevel.." b�ch kim trang b� :"..nUpgradeEqName); 

WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t nh�n l�y b�ch kim trang b� :%s\t %s", 
"[Task th�ng c�p b�ch kim trang b� SUCCESS!!]", 
GetLocalDate("%Y-%m-%d %H:%M:%S"), 
GetAccount(), 
GetName(), 
nUpgradeEqName, 
szLog)); 
writeRecoinLog("[ th�ng c�p b�ch kim trang b� nguy�n li�u ]", szBeforeItemInfo); 
writeRecoinLog("[ th�ng c�p b�ch kim trang b� k�t qu� ]", szBehindItemInfo); 
else 
WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t ��t ���c b�ch kim trang b� th�t b�i :%s", 
"[Task th�ng c�p b�ch kim trang b� ERROR!!]", 
GetLocalDate("%Y-%m-%d %H:%M:%S"), 
GetAccount(), 
GetName(), 
szLog)); 
writeRecoinLog("[ b�ch kim trang b� th�ng c�p nguy�n li�u ]", szBeforeItemInfo); 
end 
end 
