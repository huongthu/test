Include("\\script\\global\\platina_head.lua");
Include("\\script\\lib\\basic.lua");
local nOpenLevel = 7 
function platina_main() 
local aryDescribe = { 
"<dec><npc> tr­íc , ta ®· tõng trî gióp quan phñ dïng <color=yellow> c¸c lo¹i bæ ngµy ®¸ bÓ phiÕn <color> tíi chÕ t¹o thÇn bót lîi khİ . tû nh­ <sex> cã thÓ t×m ra <color=yellow> nªn bæ ngµy ®¸ bÓ phiÕn <color>, ta cã thÓ gióp ng­¬i chÕ t¹o b¹ch kim trang bŞ , nhÊt ®Şnh kh«ng thÓ thiÕu nªn nguyªn liÖu .", 
" ta muèn th¨ng cÊp nªn b¹ch kim trang bŞ /upgrade_paltinaequip", 
" ta muèn chÕ t¹o hoµng kim trang bŞ thµnh b¹ch kim trang bŞ /upgrade_goldformplatina", 
" thu tËp bæ ngµy ®¸ bÓ phiÕn /about_aerolite", 
" b¹ch kim trang bŞ lµ c¸i g× about_platina", 
" ®Ó cho ta suy nghÜ thªm /cancel", 
}; 
CreateTaskSay(aryDescribe); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  ®em hoµng kim trang bŞ chÕ t¹o thµnh b¹ch kim trang bŞ 
function upgrade_goldformplatina() 
CreateTaskSay({ 
"<dec><npc> th¨ng cÊp hoµng kim trang bŞ ®Õn b¹ch kim nguyªn liÖu cÇn 1 bæ ngµy th¹ch ( trung ), 1 8 cÊp huyÒn tinh qu¸ng th¹ch , 1 thÇn bİ qu¸ng th¹ch cïng 1000 v¹n l­îng . bæ ngµy th¹ch cã thÓ dïng vinh dù trŞ gi¸ hoÆc lµ ë kú tr©n c¸c mua ®­îc . trang bŞ hoµn tÊt c¶ nguyªn liÖu , chóng ta liÒn cã thÓ b¾t ®Çu trang bŞ chÕ t¹o c«ng viÖc . <enter> nÕu nh­ ng­¬i nghÜ biÕt th¨ng cÊp thµnh b¹ch kim trang bŞ sau ®İch thuéc tİnh nh­ thÕ nµo , ®em hoµng kim trang bŞ cho ta th× sÏ biÕt .", 
" ta muèn nh×n tõ hoµng kim trang bŞ th¨ng cÊp sau ®İch b¹ch kim trang bŞ thuéc tİnh ./want_upgoldeq_preview", 
" cã thÓ gióp ta ®­a c¸i nµy trang bŞ chÕ t¹o thµnh b¹ch kim trang bŞ sao ?/want_upgoldeq", 
" ta muèn muèn nh×n /cancel" 
}); 
end; 

function want_upgoldeq_preview() 
GiveItemUI("Xem qua chÕ t¹o b¹ch kim trang bŞ ","§em muèn chÕ t¹o hoµng kim trang bŞ bá vµo tr÷ vËt hép .", "do_upgoldeq_preview", "cancel",1); 
end; 

function do_upgoldeq_preview(nItemCount) 
local tbDialog = 
{ 
"", 
" ®Ó cho ta thö nh×n mét chót /want_upgoldeq_preview", 
" thËt kh«ng cã ı , ta chê mét chót trë l¹i ./cancel" 
}; 

if (nItemCount ~= 1) then 
tbDialog[1] = "<dec><npc> ®¹i hiÖp bá vµo ®İch vËt phÈm sè l­îng kh«ng ®óng ."; 
CreateTaskSay(tbDialog); 
return 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n hoµng kim trang bŞ cã hay kh«ng phï hîp yªu cÇu 
local nCurItemIdx = GetGiveItemUnit(nItemCount); 
local bSuccess, szErrorMsg, nComposeEntryIdx = fit_formed_eq(nCurItemIdx); 

if (bSuccess == 0) then 
tbDialog[1] = szErrorMsg; 
return 
end 


-- script viet hoa By http://tranhba.com  dù l·m 
local szDesc = preview_eq_format(nCurItemIdx); 
CreateTaskSay({"<dec><npc> hoµn thµnh b¹ch kim trang bŞ v× <color=yellow>"..TB_PLATINAEQ_GOLDEQ[nComposeEntryIdx][4]..", thuéc tİnh nh­ sau : <enter>"..szDesc, 
" gióp ta nh×n xong thµnh b¹ch kim trang bŞ thuéc tİnh nh­ thÕ nµo ./want_upgoldeq_preview", 
" cã thÓ gióp ta chÕ t¹o nªn trang bŞ thµnh b¹ch kim trang bŞ sao ? /want_upgoldeq", 
" ta biÕt , c¸m ¬n #/cancel"}); 
end; 

function want_upgoldeq() 
GiveItemUI("ChÕ t¹o b¹ch kim trang bŞ ","Mang cÇn chÕ t¹o hoµng kim , 1 khèi bæ ngµy ®¸ bÓ phiÕn ( trung ), 1 c¸ 8 cÊp huyÒn tinh qu¸ng th¹ch , cïng mét thÇn bİ qu¸ng th¹ch khi ®Õn mÆt ®İch vËt phÈm r­¬ng . chÕ t¹o cÇn hao phİ 1000 v¹n l­îng , ng­¬i chuÈn bŞ xong ch­a ? ", "do_upgoldeq_process", "cancel",1); 
end; 

function do_upgoldeq_process(nItemCount) 
local tbDialog = 
{ 
"", 
" ta thö l¹i lÇn n÷a nh×n /want_upgoldeq", 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" 
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

-- script viet hoa By http://tranhba.com  hoµng kim trang bŞ 
if (nCurItemQuality == 1) then 

-- script viet hoa By http://tranhba.com  chØ cã thÓ bá vµo mét mãn hoµng kim trang bŞ 
if (nComposeEntryIdx ~= 0) then 
tbDialog[1] = "<dec><npc> rèt cuéc ng­¬i nghÜ chÕ t¹o thÇn bİ trang bŞ ? ta kh«ng cã hoa m¾t ®i ? "; 
CreateTaskSay(tbDialog); 
return 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n hoµng kim trang bŞ cã hay kh«ng phï hîp ®iÒu kiÖn 
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

-- script viet hoa By http://tranhba.com  nhÊt ®Şnh ph¶i cã mãn hoµng kim trang bŞ 
if (nComposeEntryIdx == 0) then 
tbDialog[1] = "<dec><npc> nÕu nh­ muèn ta gióp ng­¬i , xin ®em c¸i ®ã trang bŞ cho ta ."; 
CreateTaskSay(tbDialog); 
return 
end 

-- script viet hoa By http://tranhba.com  tÊt cÇn tµi liÖu c¸ ®Õm nhÊt ®Şnh ph¶i tháa m·n yªu cÇu 
for szkey, tb_item in tb_gold2planita_material do 
if (tb_item.nCount) then 
if (tb_material[szkey][1] ~= tb_item.nCount) then 
tbDialog[1] = "<dec><npc> muèn chÕ t¹o nªn trang bŞ , İt nhÊt ta còng muèn <color=yellow>"..tb_item.nCount.." c¸ "..tb_item.szName.."<color>, thiÕt trİ qu¸ nhiÒu , sÏ tæn thÊt , nh­ng lµ , qu¸ İt , ta l¹i kh«ng thÓ chÕ t¹o ." 
CreateTaskSay(tbDialog); 
return 
end 
end 
end 

do_upgrade_platina(nEquipItemIdx, TB_PLATINAEQ_GOLDEQ[nComposeEntryIdx][4], tbMaterialIdx, tb_material, 1); 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  b¹ch kim trang bŞ th¨ng cÊp 
function upgrade_paltinaequip() 
CreateTaskSay({ 
"<dec><npc> th¨ng cÊp thµnh b¹ch kim trang bŞ cÇn trë xuèng vËt phÈm :1 khèi <color=yellow> bæ ngµy th¹ch ( trung )<color> cïng víi 100 v¹n l­îng . cã thÓ dïng vinh dù trŞ gi¸ ®æi lÊy bæ ngµy ®¸ bÓ phiÕn , ng­¬i chuÈn bŞ xong , chóng ta cã thÓ b¾t ®Çu .<enter><color=red> th¨ng cÊp b¹ch kim trang bŞ sÏ cã nhÊt ®Şnh nguy hiÓm , nÕu nh­ thÊt b¹i , ®em mÊt ®i vËt phÈm cïng 1000 v¹n l­îng .<color><enter> nÕu nh­ ng­¬i nghÜ biÕt hoµn thµnh b¹ch kim trang bŞ nãi r»ng nh­ thÕ nµo , cã thÓ mang hoµng kim trang bŞ tíi ®©y cho ta nh×n mét chót ", 
" ta muèn nh×n xong thµnh b¹ch kim trang bŞ thuéc tİnh ./#want_upplatinaeq(1)", 
" cã thÓ gióp ta th¨ng cÊp nªn b¹ch kim trang bŞ sao ? /#want_upplatinaeq(0)", 
" ta suy nghÜ l¹i mét chót /cancel" 
}); 
end; 

function want_upplatinaeq(bPreview) 
if (bPreview == 1) then 
GiveItemUI("Nh×n b¹ch kim trang bŞ th¨ng cÊp qu¸ tr×nh ","Xin ®em muèn th¨ng cÊp ®İch b¹ch kim trang bŞ cïng bæ ngµy ®¸ bÓ phiÕn bá vµo vËt phÈm hép .", "do_upplatinaeq_preview", "cancel",1); 
else 
GiveItemUI("Th¨ng cÊp b¹ch kim trang bŞ ","Xin ®em muèn th¨ng cÊp ®İch b¹ch kim trang bŞ cïng bæ ngµy ®¸ bÓ phiÕn bá vµo vËt phÈm hép , th¨ng cÊp tiªu hao 1000 v¹n l­îng .", "do_upplatinaeq_process", "cancel",1); 
end; 
end; 

function do_upplatinaeq_preview(nItemCount) 
local tbDialog = 
{ 
"", 
" ®Ó cho ta thö l¹i lÇn n÷a /#want_upplatinaeq(1)", 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" 
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
tbDialog[1] = "<dec><npc> ng­¬i rèt cuéc lµ muèn th¨ng cÊp thµnh c¸i lo¹i ®ã b¹ch kim trang bŞ ? ta cã ph¶i hay kh«ng hoa m¾t ?"; 
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
tbDialog[1] = "<dec><npc> ®em cÇn th¨ng cÊp thµnh b¹ch kim ®İch trang bŞ cho ta , nÕu kh«ng ta b©y giê lµm sao biÕt th¨ng cÊp ?"; 
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
CreateTaskSay({format("<dec><npc> c¨n cø kinh nghiÖm cña ta , nªn b¹ch kim trang bŞ cã <color=yellow>%5.2f%%<color> cã thÓ th¨ng cÊp ®Õn kÕ tiÕp cÊp bËc cïng cã thuéc tİnh : <enter>%s", nUpGradeProb*100, szDesc), 
" gióp ta xem mét chót tõ nh÷ng kh¸c trang bŞ hoµn thµnh b¹ch kim trang bŞ nh­ thÕ nµo ./#want_upplatinaeq(1)", 
" cã thÓ gióp ta chÕ t¹o nªn trang bŞ thµnh b¹ch kim trang bŞ sao /#want_upplatinaeq(0)", 
" ta biÕt , c¸m ¬n . /cancel"}); 
end 

function do_upplatinaeq_process(nItemCount) 
local tbDialog = 
{ 
"", 
" ®Ó cho ta thö l¹i lÇn n÷a /#want_upplatinaeq(0)", 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" 
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

-- script viet hoa By http://tranhba.com  tr­íc lÇn lŞch mét lÇn t×m ®­îc cÇn th¨ng cÊp ®İch b¹ch kim trang bŞ hoÆc lµ cÇn chÕ t¹o ®İch hoµng kim trang bŞ 
for i = 1, nItemCount do 
local nCurItemIdx = GetGiveItemUnit(i); 
local nCurItemQuality = GetItemQuality(nCurItemIdx); 
local tbCurItemProp = pack(GetItemProp(nCurItemIdx)); 

if (nCurItemQuality == 4) then 
if (nComposeEntryIdx ~= 0) then 
tbDialog[1] = "<dec><npc> rèt cuéc ng­¬i nghÜ th¨ng cÊp míi lo¹i nµo b¹ch kim trang bŞ ? cã ph¶i hay kh«ng ta xem hoa m¾t ?"; 
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
tbDialog[1] = "<dec><npc> nÕu nh­ muèn ta gióp ng­¬i , liÒn ®em c¸i ®ã trang bŞ cho ta ."; 
CreateTaskSay(tbDialog); 
return 
end 

-- script viet hoa By http://tranhba.com  gi¸o nghiÖm tµi liÖu cã hay kh«ng thÊt xøng 
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
tbDialog[1] = "<dec><npc> muèn chÕ t¹o nªn trang bŞ , ta chØ cÇn <color=yellow>"..tb_item.nCount.." c¸ "..tb_item.szName.."<color>, thiÕt trİ qu¸ nhiÒu sÏ tæn thÊt , qu¸ İt th× kh«ng thÓ chÕ t¹o ." 
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
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  ®em hoµng kim trang bŞ chÕ t¹o thµnh b¹ch kim trang bŞ END 


function getItemAllMagicList(nItemIdx) 
local tb_magic = {}; 
for i = 1, 6 do 
		tb_magic[getn(tb_magic) + 1] = pack(GetItemMagicAttrib(nItemIdx, i));
end; 
return tb_magic; 
end; 

function about_aerolite() 
CreateTaskSay({ 
" bæ ngµy ®¸ bÓ phiÕn lµ thiªn ®Şa b¶o vËt , trong cuéc sèng rÊt khã t×m kiÕm , bÊt qu¸ , ng­¬i cã thÓ ®Õn <color=yellow> liªn cuéc so tµi sø gi¶ <color> hái mét chót nh×n , nÕu nh­ ng­¬i cã <color=yellow> vinh dù trŞ gi¸ <color> lµ cã thÓ mua ®­îc . còng cã thÓ ®Õn <color=yellow> kú tr©n c¸c <color> xem mét chót ", 
" ta biÕt !/cancel", 
}); 
end; 

function about_platina() 
CreateTaskSay({"<dec><npc> b¹ch kim trang bŞ ®İch thuéc tİnh ®Ó cho hoµng kim trang bŞ ®İch thuéc tİnh quyÕt ®Şnh , hoµng kim trang bŞ thuéc tİnh cµng tèt , chÕ t¹o thµnh b¹ch kim cµng nhiÒu . nÕu nh­ kh«ng hµi lßng b©y giê hoµng kim trang bŞ , ta ®Ò nghŞ ng­¬i t×m nh÷ng kh¸c hoµng kim trang bŞ .","KÕt thóc ®èi tho¹i /cancel"}); 
end; 


-- script viet hoa By http://tranhba.com  new func 
-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cho giíi mÆt trung ®İch b¹ch kim hoÆc lµ hoµng kim trang bŞ cã ph¶i lµ hay kh«ng tån t¹i h¬n n÷a duy nhÊt 
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
szEqType = " hoµng kim trang bŞ "; 
else 
szGetEquipIDFunc = "GetPlatinaEquipIndex"; 
szEqType = " b¹ch kim trang bŞ "; 
end 

if (tbCurItemProp[1] ~= 0) then -- script viet hoa By http://tranhba.com  nÕu nh­ kh«ng ph¶i lµ trang bŞ ( cã thÓ lµ h­ h¹i trang bŞ ) 
szErrorMsg = format("<dec><npc> chØ cÇn cho ta %s chÕ t¹o b¹ch kim trang bŞ lµ ®ñ råi , nh÷ng thø kh¸c th× ®Ó xuèng .", szEqType); 
return 0, szErrorMsg 
end 

if (nExpiredTime > 0) then -- script viet hoa By http://tranhba.com  cã b¶o chÊt kú ®İch trang bŞ , kh«ng thÓ # 
szErrorMsg = "<dec><npc>Trang b?c?<color=fire> sö dông thêi h¹n <color> th× kh«ng thÓ luyÖn ."; 
return 0, szErrorMsg 
end 

for szkey, tb_item in TB_PLATINAEQ_GOLDEQ do 
if (szkey == getglobal(szGetEquipIDFunc)(nCurItemIdx)) then 
nComposeEntryIdx = szkey; 
break; 
end 
end 
if (nComposeEntryIdx == 0) then 
szErrorMsg = format("<dec><npc> thËt ®¸ng tiÕc , lÊy ta b©y giê kinh nghiÖm , kh«ng thÓ chÕ t¹o <color=yellow>%s<color>.", GetItemName(nCurItemIdx)); 
return 0, szErrorMsg 
end 


if (nCurItemQuality == 4 and GetPlatinaLevel(nCurItemIdx) >= %nOpenLevel) then 
szErrorMsg = "<dec><npc> lÊy lùc l­îng cña ta b©y giê , chØ cã thÓ gióp ng­¬i c­êng hãa nªn trang bŞ ®Õn c¸i nµy cÊp bËc mµ th«i , nh­ng lµ , sau nµy ta cßn cã thÓ tiÕp tôc gióp ng­¬i luyÖn . tin t­ëng ta ®i , sÏ cã mét ngµy , ta gióp ng­¬i c­êng hãa bän hä th¨ng cÊp , ®Õn lóc ®ã ng­¬i trë l¹i t×m ta nga "; 
return 0, szErrorMsg 
end; 


if (nCurItemQuality == 4 and GetPlatinaLevel(nCurItemIdx) >= 10) then 
szErrorMsg = "<dec><npc> nªn trang bŞ ®· ®¹t ®¼ng cÊp cao nhÊt , kh«ng cÇn l¹i t¨ng cÊp ."; 
return 0, szErrorMsg 
end; 

return 1, szErrorMsg, nComposeEntryIdx; 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cho giíi mÆt trung bá vµo ®İch tµi liÖu cã hay kh«ng hîp lı # nÕu nh­ lµ dù l·m , chØ cÇn ph¸n ®o¸n cã gi¸ trŞ l­îng ®İch tµi liÖu cã hay kh«ng ®Òu ë ®©y # v« gi¸ trŞ gi¸ l­îng nh­ng lµ chÕ t¹o cÇn ®İch tµi liÖu kh«ng cÇn ph¶i ®Ó ı ®Õn # , nÕu nh­ lµ chÕ t¹o , lµ ®Òu ph¶i ph¸n ®o¸n # 
-- script viet hoa By http://tranhba.com  tham sæ # tµi liÖu Idx , cã hay kh«ng v× dù l·m , tµi liÖu table , hoµng kim trang bŞ idx 
function fit_formed_material(nCurItemIdx, tb_material, nPlatinaIdx) 
local szErrorMsg = ""; 
local tbCurItemProp = pack(GetItemProp(nCurItemIdx)); 
local szItemKey = tbCurItemProp[1]..","..tbCurItemProp[2]..","..tbCurItemProp[3]; 

if (tb_material[szItemKey] == nil) then 
szErrorMsg = "<dec><npc> ®¹i hiÖp bá vµo ®İch nguyªn liÖu cïng yªu cÇu kh«ng hîp "; 
return 0, szErrorMsg; 
end 

if (tb_material[szItemKey].nItemLevel) then 
if (tbCurItemProp[4] ~= tb_material[szItemKey]["nItemLevel"]) then 
szErrorMsg = format("<dec><npc> trang bŞ cÊp bËc %s h×nh nh­ lµ kh«ng ®óng .", GetItemName(nCurItemIdx)); 
return 0, szErrorMsg; 
end 
end 
if (tb_material[szItemKey]["nUpgradeLevel"]) then 
if (GetPlatinaLevel(nPlatinaIdx) ~= tb_material[szItemKey]["nUpgradeLevel"]) then 
szErrorMsg = "<dec><npc> th¨ng cÊp nªn b¹ch kim trang bŞ ®İch nguyªn liÖu cã kh«ng ®óng "; 
return 0, szErrorMsg; 
end 
end 

return 1, szErrorMsg; 
end 

-- script viet hoa By http://tranhba.com  dù l·m ®İch c¸ch thøc 
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

-- script viet hoa By http://tranhba.com  chÕ t¹o b¹ch kim ®İch qu¸ tr×nh 
function do_upgrade_platina(nEqIdx, nUpgradeEqName, tbMaterialIdx, tb_enhanceitem_count, nUpGradeProb) 
-- script viet hoa By http://tranhba.com  trõ tiÒn 
if (GetCash() < 10000000) then 
CreateTaskSay({"<dec><npc> ng­¬i kh«ng cã mang chÕ t¹o phİ dông <color=yellow>1000 v¹n <color> hai .","Ta biÕt , ®Ó cho ta tr­íc chuÈn bŞ /cancel"}); 
return 
end 
Pay(10000000); 

-- script viet hoa By http://tranhba.com  san nguyªn liÖu 
for i = 1, getn(tbMaterialIdx) do 
if (RemoveItemByIndex(tbMaterialIdx[i]) ~= 1) then 
WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t thñ tiªu vËt phÈm thÊt b¹i :%s", 
"[Task th¨ng cÊp b¹ch kim trang bŞ ERROR!!]", 
GetLocalDate("%y-%m-%d %H:%M:%S"), 
GetAccount(), 
GetName(), 
GetItemName(tbMaterialIdx[i]))); 
return 
end 
end 

if (random() > nUpGradeProb) then 
CreateTaskSay({"<dec><npc> th¨ng cÊp b¹ch kim trang bŞ thÊt b¹i , mÊt ®i chÕ t¹o vËt phÈm cïng 100 v¹n l­îng .","Ta chê mét chót trë l¹i /cancel"}); 
Msg2Player("Th¨ng cÊp b¹ch kim trang bŞ thÊt b¹i , mÊt ®i chÕ t¹o vËt phÈm cïng 100 v¹n l­îng ."); 

WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t gi¸ trŞ l­îng ch­a ®ñ , x¸c suÊt v× %.4f", 
"[Task th¨ng cÊp b¹ch kim trang bŞ thÊt b¹i !!]", 
GetLocalDate("%y-%m-%d %H:%M:%S"), 
GetAccount(), 
GetName(), 
nUpGradeProb)) 
return 
end 

local szLog = " tiªu hao \t"..GetItemName(nEqIdx).."1 \t"; 
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

local szBeforeItemInfo = getItemInfo(nEqIdx); -- script viet hoa By http://tranhba.com  ®¹t ®­îc th¨ng cÊp tr­íc ®İch cÆn kÏ tin tøc 

-- script viet hoa By http://tranhba.com  th¨ng cÊp sau 
local nSuccess = getglobal(szUpgradeItemFunc)(nEqIdx); 
local nItemLevel = GetPlatinaLevel(nEqIdx); 
if nSuccess > 0 then 
local szBehindItemInfo = getItemInfo(nEqIdx);-- script viet hoa By http://tranhba.com  ®¹t ®­îc th¨ng cÊp sau ®İch cÆn kÏ tin tøc 

CreateTaskSay({"<dec><npc> th¨ng cÊp b¹ch kim trang bŞ thµnh c«ng , ®¹t ®­îc mét b¹ch kim trang bŞ <color=yellow>"..nUpgradeEqName.."<color>, cÊp "..nItemLevel..".","Ta chê mét chót trë l¹i /cancel"}); 
Msg2Player("B¹ch kim trang bŞ th¨ng cÊp thµnh c«ng , cÊp bËc v× "..nItemLevel.." b¹ch kim trang bŞ :"..nUpgradeEqName); 

WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t nhËn lÊy b¹ch kim trang bŞ :%s\t %s", 
"[Task th¨ng cÊp b¹ch kim trang bŞ SUCCESS!!]", 
GetLocalDate("%Y-%m-%d %H:%M:%S"), 
GetAccount(), 
GetName(), 
nUpgradeEqName, 
szLog)); 
writeRecoinLog("[ th¨ng cÊp b¹ch kim trang bŞ nguyªn liÖu ]", szBeforeItemInfo); 
writeRecoinLog("[ th¨ng cÊp b¹ch kim trang bŞ kÕt qu¶ ]", szBehindItemInfo); 
else 
WriteLog(format("[%s]\t Date:%s\t Account:%s\t Name:%s\t ®¹t ®­îc b¹ch kim trang bŞ thÊt b¹i :%s", 
"[Task th¨ng cÊp b¹ch kim trang bŞ ERROR!!]", 
GetLocalDate("%Y-%m-%d %H:%M:%S"), 
GetAccount(), 
GetName(), 
szLog)); 
writeRecoinLog("[ b¹ch kim trang bŞ th¨ng cÊp nguyªn liÖu ]", szBeforeItemInfo); 
end 
end 
