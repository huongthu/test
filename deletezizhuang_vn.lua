-- script viet hoa By http://tranhba.com  Vi�t Nam th� ti�u t� gi� b� , Vi�t Nam b�i v� bug tr� ch�i th� gi�i xu�t hi�n m�t �t t� gi� b� # b�y gi� � tr�n cao tuy�n ��ch th�i �i�m ki�m tra tr�n th�n ng��i c� hay kh�ng t� gi� b� , c� l� th� ti�u 
-- script viet hoa By http://tranhba.com  ch� � # v�n ch�n v�n � t� gi� b� m� ra ��ch th�i �i�m nh�t ��nh ph�i th� ti�u # 
IL("ITEM"); 

function vn_delete_zizhuang() 
local idx = 0; 
local nItemIdx; 
idx, nItemIdx = ITEM_FindNext( idx ); 
local tab_Zizhuang = {}; 

while (idx > 0) do 

if (nItemIdx > 0) then 
if (GetItemQuality(nItemIdx) == 2) then 
tinsert(tab_Zizhuang, nItemIdx) 
end; 
end; 
idx, nItemIdx = ITEM_FindNext( idx ); 
end; 

for i = 1, getn(tab_Zizhuang) do 
vn_addlog(tab_Zizhuang[i]); 
RemoveItemByIndex(tab_Zizhuang[i]); 
end; 
Msg2Player("D� th��ng tr�ng th�i �� b� th� ti�u "); 
end; 

function vn_addlog(nItemIdx) 
local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp( nItemIdx ); 
local nQuality = GetItemQuality( nItemIdx ); 
local arynMagLvl = GetItemAllParams( nItemIdx ); 
local nStackCount = GetItemStackCount( nItemIdx ); 

local str = format( "{%d, %d, %d, %d, %d, %d, %d, <%d, %d, %d, %d, %d, %d>}#%d\t", nQuality, nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck, arynMagLvl[1], arynMagLvl[2], arynMagLvl[3], arynMagLvl[4], arynMagLvl[5], arynMagLvl[6], nStackCount ); 

WriteLog("[delete exceptional equip]\t"..date().." \tName:"..GetName().."\tAccount:"..GetAccount().." 's equip: "..GetItemName(nItemIdx).." is deleted from the game world system, which attibution is: "..str); 
end; 

if login_add then login_add(vn_delete_zizhuang, 0) end
