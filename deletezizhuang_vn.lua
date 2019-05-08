-- script viet hoa By http://tranhba.com  ViÖt Nam thñ tiªu tö gi¶ bé , ViÖt Nam bëi v× bug trß ch¬i thÕ giíi xuÊt hiÖn mét Ýt tö gi¶ bé # b©y giê ë trªn cao tuyÕn ®Ých thêi ®iÓm kiÓm tra trªn th©n ng­êi cã hay kh«ng tö gi¶ bé , cã lµ thñ tiªu 
-- script viet hoa By http://tranhba.com  chó ý # vèn ch©n vèn ë tö gi¶ bé më ra ®Ých thêi ®iÓm nhÊt ®Þnh ph¶i thñ tiªu # 
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
Msg2Player("DÞ th­êng tr¹ng th¸i ®· bÞ thñ tiªu "); 
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
