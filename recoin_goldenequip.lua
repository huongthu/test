IncludeLib("ITEM"); 
IncludeLib( "FILESYS" ); 
Include( "\\script\\item\\item_header.lua" );
Include( "\\script\\task\\system\\task_string.lua" );
Include("\\script\\lib\\log.lua")

FILE_Recoin_COMPOUND = "recoin_goldenequip.txt"; 
-- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ sinh chó t­¬ng quan ®Çu v¨n kiÖn dêi ®i 
-- script viet hoa By http://tranhba.com  hoµng kim trang bÞ bÓ phÈm ®èi øng biÓu 

function initRecoinConfig() 
g_aryRecoinConfig = {}; 

local nLatestItemVer = ITEM_GetLatestItemVersion(); 
for i = 0, nLatestItemVer do 
local strFullPath = makeItemFilePath( i, FILE_Recoin_COMPOUND ); 
TabFile_Load( strFullPath, strFullPath ); 
		g_aryRecoinConfig[i+1] = {};
local nRowCount = TabFile_GetRowCount( strFullPath ); 
for j = 2, nRowCount do 

local szGoldName = TabFile_GetCell( strFullPath, j, "DES_GOLDNAME", "NoITEM" ); 
local nGenre = tonumber( TabFile_GetCell( strFullPath, j, "DES_GENRE", -1 ) ); 
local nDetailtype = tonumber( TabFile_GetCell( strFullPath, j, "DES_DETAILTYPE", -1 ) ); 
local nFirstPieceDetail = tonumber( TabFile_GetCell( strFullPath, j, "MAR_FIRST_DETAIL", -1 ) ); 
local nPieceSum = tonumber( TabFile_GetCell( strFullPath, j, "MAR_COUNT", -1 ) ); 
local nBadValues = tonumber( TabFile_GetCell( strFullPath, j, "DES_BADVALUES", 0 ) ); 
local nStandardValues = tonumber( TabFile_GetCell( strFullPath, j, "DES_STANDARDVALUES", 0 ) ); 


local szgoldkey = format("[%d,%d]",nGenre,nDetailtype) 
			if g_aryRecoinConfig[i+1][szgoldkey] == nil then
				g_aryRecoinConfig[i+1][szgoldkey] = {}
end 
			g_aryRecoinConfig[i+1][szgoldkey].m_szGoldName = szGoldName
			g_aryRecoinConfig[i+1][szgoldkey].m_nFirstPieceDetail = nFirstPieceDetail
			g_aryRecoinConfig[i+1][szgoldkey].m_nPieceSum = nPieceSum
			g_aryRecoinConfig[i+1][szgoldkey].m_nBadValues = nBadValues
			g_aryRecoinConfig[i+1][szgoldkey].m_nStandardValues = nStandardValues
local nNo = 1 
			for k = nFirstPieceDetail,nFirstPieceDetail+nPieceSum-1 do 
local szgoldpiecekey = format("[%d]",k) 
				if g_aryRecoinConfig[i+1][szgoldpiecekey] == nil then
					g_aryRecoinConfig[i+1][szgoldpiecekey] = {}
end 
				g_aryRecoinConfig[i+1][szgoldpiecekey].m_szGoldName = szGoldName
				g_aryRecoinConfig[i+1][szgoldpiecekey].m_nGenre = nGenre
				g_aryRecoinConfig[i+1][szgoldpiecekey].m_nDetailtype = nDetailtype
				g_aryRecoinConfig[i+1][szgoldpiecekey].m_nPieceSum = nPieceSum
				g_aryRecoinConfig[i+1][szgoldpiecekey].m_nPieceNo = nNo
				nNo = nNo + 1
				-- script viet hoa By http://tranhba.com g_aryRecoinConfig[i+1][szgoldpiecekey].m_nBadValues = nBadValues
				-- script viet hoa By http://tranhba.com g_aryRecoinConfig[i+1][szgoldpiecekey].m_nStandardValues = nStandardValues
end 
end 
end 
end 

initRecoinConfig(); 

-- script viet hoa By http://tranhba.com  hoµng kim trang bÞ bao hµm bÓ phÈm sè l­îng cïng cÇn tÝn vËt sè l­îng ®èi øng biÓu 
TB_MARK_ITEM_COUNT = 
{ 
{6, 1}, -- script viet hoa By http://tranhba.com  hoµng kim bao hµm 6 c¸ trë lªn m¶nh vôn cÇn Ýt nhÊt 1 c¸ tÝn vËt 
{9, 2}, -- script viet hoa By http://tranhba.com  hoµng kim bao hµm 9 c¸ trë lªn m¶nh vôn cÇn Ýt nhÊt 2 c¸ tÝn vËt 
}; 

-- script viet hoa By http://tranhba.com  hoµng kim trang bÞ hñy ®i ph©n phô thªm vËt phÈm ®Ých gi¸ trÞ l­îng 
TB_ENHANCE_ITEM = { 
["6,1,398"] = 100000000, -- script viet hoa By http://tranhba.com  thÇn bÝ qu¸ng th¹ch 
["6,1,122"] = 600000, -- script viet hoa By http://tranhba.com  phóc duyªn lé # tiÓu # 
["6,1,123"] = 1200000, -- script viet hoa By http://tranhba.com  phóc duyªn lé # trung # 
["6,1,124"] = 3000000, -- script viet hoa By http://tranhba.com  phóc duyªn lé # ®¹i # 
["4,238,1"] = 5000000, -- script viet hoa By http://tranhba.com  lan thñy tinh 
["4,239,1"] = 5000000, -- script viet hoa By http://tranhba.com  tö thñy tinh 
["4,240,1"] = 5000000, -- script viet hoa By http://tranhba.com  n­íc biÕc tinh 
}; 

MARK_ITEM_ID = "4,979,1"; -- script viet hoa By http://tranhba.com  hoµng kim trang bÞ hñy ®i ph©n tÝn vËt # kim tª # 
GLBID_SPLIT_LAST_DATE = 919; -- script viet hoa By http://tranhba.com  toµn côc thay ®æi l­îng ID of mét lÇn cuèi cïng trang bÞ hñy ®i ph©n ®Ých nhËt kú 
GLBID_SPLIT_DAILY_COUNT = 920; -- script viet hoa By http://tranhba.com  toµn côc thay ®æi l­îng ID of ngµy ®ã thi hµnh trang bÞ hñy ®i ph©n ®Ých sè lÇn 
SPLIT_COUNT_DAILY_THRESHOLD = 500; -- script viet hoa By http://tranhba.com  mét m¸y GameSvr mét ngµy bªn trong nh­ng thi hµnh trang bÞ hñy ®i ph©n ®Ých sè lÇn th­îng h¹n 
SPLIT_AVAILABLE_DATE_RANGE = { 20080113, 20080401 }; -- script viet hoa By http://tranhba.com  trang bÞ hñy ®i ph©n chøc n¨ng më ra ®Ých b¾t ®Çu # kÕt thóc thêi gian 

FRAME_EXCHANGE_COIN = 2; -- script viet hoa By http://tranhba.com  trao ®æi trang bÞ m¶nh vôn cÇn tr¶ ®Ých ®ång tiÒn c¸ ®Õm 
TASKTMP_EXCHANGE_FRAME = 194; -- script viet hoa By http://tranhba.com  muèn trao ®æi ®Ých trang bÞ m¶nh vôn ®Ých t¸c dÉn 

-- script viet hoa By http://tranhba.com  hoµng kim trang bÞ hñy ®i ph©n 
-- script viet hoa By http://tranhba.com  Fanghao_Wu 2006-06-21 
function split_entry() 
local aryDescribe = {}; 
local nTodayString = tonumber(GetLocalDate("%Y%m%d")); 

aryDescribe = 
{ 
"<dec><npc> ta cã thÓ ph©n hoµng kim trang bÞ m¶nh vôn , ®©y còng lµ s­ phã ta t©m huyÕt c¶ ®êi .", 
" c¸i nµy hoµng kim trang bÞ cã thÓ chia lµm mÊy khèi ?/want_split_preview", 
" cã thÓ gióp ta ph©n hoµng kim trang bÞ m¶nh vôn sao ?/#want_split(0)", 
" ph©n hoµng kim trang bÞ m¶nh vôn ®Ých ph­¬ng ph¸p ./about_split", 
" kh«ng cÇn ®Ó ý , ta ch¼ng qua lµ thuËn miÖng nãi mét chót mµ th«i ./cancel", 
}; 
CreateTaskSay(aryDescribe); 
end 

function want_split_preview() 
GiveItemUI("Thö nh×n ph©n trang bÞ m¶nh vôn ?","ThiÕt trÝ hoµng kim trang bÞ , kim tª , thÇn bÝ qu¸ng th¹ch , phóc duyªn lé , ta sÏ nh­êng ng­¬i biÕt cã thÓ ph©n ra ®Ých trang bÞ m¶nh vôn sè l­îng .", "do_split_preview", "cancel", 1); 
end 

function want_split(bNoConfirm) 
if (_is_split_available() ~= 1) then 
return 
end 
if (bNoConfirm ~= 1 and CalcFreeItemCellCount() < 9) then 
CreateTaskSay( { "<dec><npc> trang bÞ ch­a ®ñ chç trèng , thØnh an ®øng hµng nh­ thÕ nµo ®ñ 9 c¸ chç trèng . nÕu nh­ trang bÞ m¶nh vôn r¬i xuèng , còng sÏ bÞ ng­êi kh¸c nhÆt ®i , khi ®ã còng kh«ng cÇn tr¸ch ta kh«ng cã nh¾c nhë ng­¬i . ", 
" trang bÞ ®· cÊu chç trèng , xin/mêi tiÕp tôc !/#want_split(1)", 
" kia ®Ó cho ta an bµi mét c¸i trang bÞ tr­íc !/cancel" } ); 
else 
GiveItemUI("Ph©n trang bÞ m¶nh vôn ","ThiÕt trÝ h¶o hoµng kim trang bÞ , kim tª , thÇn bÝ qu¸ng th¹ch , thñy tinh , phóc duyªn lé , ta míi cã thÓ gióp ng­¬i ph©n m¶nh vôn , nÕu nh­ thiÕt trÝ trang bÞ bÞ khãa , kia ph©n ra ®Ých trang bÞ m¶nh vôn còng ®óng lµ c¸i nµy tr¹ng th¸i . !", "do_split", "cancel"); 
end 
end 

function about_split() 
local aryDescribe = 
{ 
"<dec><npc> muèn ph©n trang bÞ m¶nh vôn , cho ta lµ ®­îc , nh­ng lµ ta cÇn mét d¹ng ®å gäi lµ ?<color=yellow> kim tª <color>. chó ý , hoµng kim trang bÞ cã thÓ chia lµm 4, 6, 9 khèi . ph©n ra 4 khèi kh«ng cÇn dïng <color=yellow> kim tª <color> còng ®­îc . muèn chia lµm 6 khèi , sÏ ph¶i ®i Ýt nhÊt cÇn 1 c¸ <color=yellow> kim tª <color>, muèn chia lµm 9 khèi liÒn cÇn 2 c¸ 2 <color=yellow> kim tª <color>, ngoµi ra , nÕu nh­ cho ta rÊt nhiÒu <color=yellow> kim tª <color>, <color=yellow> thÇn bÝ qu¸ng th¹ch <color>, <color=yellow> thñy tinh <color> cïng víi <color=yellow> phóc duyªn lé <color> lµ chia lµm ®Ých trang bÞ m¶nh vôn cã thÓ ph¶i nhiÒu h¬n , ta nhí <color=yellow> kim tª <color> ë <color=blue> kú tr©n c¸c cã b¸n <color>.", 
" ta biÕt !/split_entry", 
}; 
CreateTaskSay(aryDescribe); 
end 

function do_split(nItemCount) 
_do_split_process(nItemCount, 0); 
end 

function do_split_preview(nItemCount) 
_do_split_process(nItemCount, 1); 
end 

function _do_split_process(nItemCount, bPreview) 
local nComposeEntryIdx = 0; 
local nMarkItemCount = 0; 
local nSrcItemValueSum = 0; 
local szContinueFunc = ""; 
local szItemInfo = ""; 
if (bPreview ~= 1) then 
if (_is_split_available() ~= 1) then 
return 
end 
szContinueFunc = "#want_split(0)"; 
else 
szContinueFunc = "#want_split_preview()"; 
end 

local nItemBindState; -- script viet hoa By http://tranhba.com  nguyªn liÖu hoµng kim ®Ých trãi ®Þnh tr¹ng th¸i 
local tb_enhanceitem_count = {}; 
for szkey, tb_item in TB_ENHANCE_ITEM do 
tb_enhanceitem_count[szkey] = {}; 
tb_enhanceitem_count[szkey][1] = 0; 
end; 
local nversion,nFirstPiece,nPieceSum,nBadVaules,nStandardValues,szgoldName; 
-- script viet hoa By http://tranhba.com  gi¸o nghiÖm vËt phÈm lµ hay kh«ng thÊt xøng 
for i = 1, nItemCount do 
local nCurItemIdx = GetGiveItemUnit(i); 
local nCurItemName = GetItemName(nCurItemIdx); 
local nCurItemQuality = GetItemQuality(nCurItemIdx); 
local tbCurItemProp = pack(GetItemProp(nCurItemIdx)); 
local nExpiredTime = ITEM_GetExpiredTime(nCurItemIdx); 
local nCurItemValue = 0; 
if (nCurItemQuality == 1) then 
-- script viet hoa By http://tranhba.com  nÕu nh­ kh«ng ph¶i lµ trang bÞ ( cã thÓ lµ h­ h¹i trang bÞ ) 
if (tbCurItemProp[1] ~= 0) then 
CreateTaskSay( { "<dec><npc> trõ <color=yellow> hoµng kim trang bÞ <color> cïng <color=yellow> kim tª <color> bªn ngoµi , chØ cã <color=yellow> thÇn bÝ qu¸ng th¹ch <color>, <color=yellow> thñy tinh <color> cïng víi <color=yellow> phóc duyªn lé <color> lµ ta cÇn nguyªn liÖu , nh÷ng thø kh¸c th× ®Ó xuèng .", 
format("Ha ha # ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta t¸i thiÕt ®­a mét c¸i ./%s",szContinueFunc), 
" thËt kh«ng cã ý , ta ®em chê mét chót trë l¹i ./cancel" } ); 
return 
end 


if (nExpiredTime > 0) then -- script viet hoa By http://tranhba.com  cã b¶o chÊt kú ®Ých trang bÞ , kh«ng thÓ hñy ®i # 
CreateTaskSay( { "<dec><npc> trang bÞ cã <color=fire> sö dông thêi h¹n <color> th× kh«ng thÓ ®¸nh luyÖn .", 
" thËt lµ ng­îng ngïng , ta l¹i nghÜ sai råi . chê chót ta trë l¹i nga /cancel" } ); 
return 
end 


			nversion = ITEM_GetItemVersion( nCurItemIdx ) + 1;

local szgoldkey = format("[0,%d]",GetGlodEqIndex(nCurItemIdx)) 
if nFirstPiece == nil then 
if (g_aryRecoinConfig[nversion][szgoldkey])~= nil then 
szgoldName = g_aryRecoinConfig[nversion][szgoldkey].m_szGoldName 
nFirstPiece = g_aryRecoinConfig[nversion][szgoldkey].m_nFirstPieceDetail 
nPieceSum = g_aryRecoinConfig[nversion][szgoldkey].m_nPieceSum 
nBadVaules = g_aryRecoinConfig[nversion][szgoldkey].m_nBadValues 
nStandardValues = g_aryRecoinConfig[nversion][szgoldkey].m_nStandardValues 
end 
else 
CreateTaskSay( { "<dec><npc> kh¸ch quan muèn ph©n lo¹i nµo hoµng kim trang bÞ ? ta kh«ng cã hoa m¾t ®i ?", 
format("Ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi thiÕt trÝ ./%s",szContinueFunc), 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 

if (nFirstPiece == nil) then 
CreateTaskSay( { format("<dec><npc> thËt lµ tiÕc nuèi , lÊy ta b©y giê n¨ng lùc , kh«ng thÓ gióp ng­¬i ph©n hoµng kim trang bÞ <color=yellow>%s<color> .",GetItemName(nCurItemIdx)), 
format("ChÕ t¹o nh÷ng kh¸c hoµng kim trang bÞ ./%s",szContinueFunc), 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 
nCurItemValue = nBadVaules; 
nItemBindState = GetItemBindState(nCurItemIdx) -- script viet hoa By http://tranhba.com  lÊy ®­îc trãi ®Þnh tr¹ng th¸i 
szItemInfo = getItemInfo(nCurItemIdx); 
writeRecoinLog("[ ph©n hoµng kim m¶nh vôn ®Ých chñ nguyªn liÖu ]", szItemInfo); 
else 
local szItemKey = format("%s,%s,%s",tbCurItemProp[1],tbCurItemProp[2],tbCurItemProp[3]) 
if (szItemKey == MARK_ITEM_ID) then 
				nMarkItemCount = nMarkItemCount + 1;
nCurItemValue = ITEM_CalcItemValue(nCurItemIdx); 
else 
if (TB_ENHANCE_ITEM[szItemKey] == nil) then 
CreateTaskSay( { "<dec><npc> trõ <color=yellow> hoµng kim trang bÞ <color> cïng víi <color=yellow> kim tª <color> bªn ngoµi , chØ cã <color=yellow> thÇn bÝ qu¸ng th¹ch <color>, <color=yellow> thñy tinh <color> cïng <color=yellow> phóc duyªn lé <color> lµ ta cÇn nguyªn liÖu , nh÷ng thø kh¸c tr­íc ®Ó xuèng .", 
format("Ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi thiÕt trÝ ./%s",szContinueFunc), 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 
nCurItemValue = TB_ENHANCE_ITEM[szItemKey]; 
				tb_enhanceitem_count[szItemKey][1] = tb_enhanceitem_count[szItemKey][1] + 1;
tb_enhanceitem_count[szItemKey][2] = nCurItemName; 
end 
end 
		nSrcItemValueSum = nSrcItemValueSum + nCurItemValue;
end 
if (szgoldName == nil) then 
CreateTaskSay( { "<dec><npc> nÕu nh­ cÇn ta ph©n trang bÞ m¶nh vôn liÒn ®em trang bÞ mang tíi n¬i nµy , kh«ng cã trang bÞ th× kh«ng thÓ gióp ng­¬i .", 
format("Ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi thiÕt trÝ ./%s",szContinueFunc), 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 
for i = getn(TB_MARK_ITEM_COUNT), 1, -1 do 
if (nPieceSum >= TB_MARK_ITEM_COUNT[i][1]) then 
if (nMarkItemCount < TB_MARK_ITEM_COUNT[i][2]) then 
CreateTaskSay( { format("<dec><npc> ph©n nªn trang bÞ m¶nh vôn Ýt nhÊt cÇn <color=yellow>%s kim tª <color>, nÕu nh­ kh«ng ph¶i lµ hoµng kim trang bÞ , liÒn cã thÓ cã thÓ sÏ h­ r¬i . ®i t×m ®ñ <color=yellow> kim tª <color> sau ®ã trë l¹i . ta nhí nªn vËt phÈm ë <color=blue> kú tr©n c¸c cã b¸n <color>.",TB_MARK_ITEM_COUNT[i][2]), 
format("§· ®ñ råi , ®Ó cho ta thö l¹i lÇn n÷a !/%s",szContinueFunc),"ThËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 
break; 
end 
end 

-- script viet hoa By http://tranhba.com  gi¸o nghiÖm vËt phÈm thÊt xøng thµnh c«ng , tÝnh to¸n m¶nh vôn sè l­îng cïng x¸c suÊt 
local aryProb = { { 0, 0 }, { 0, 0 } }; 
local dFrameCount = nSrcItemValueSum / nStandardValues * nPieceSum; 
if (dFrameCount >= nPieceSum) then 
-- script viet hoa By http://tranhba.com  ®Çu nhËp lín h¬n nhiÒu nhÊt m¶nh vôn ®Ých tæng gi¸ trÞ l­îng , tr¨m phÇn tr¨m ra nhiÒu nhÊt m¶nh vôn 
aryProb[1][1] = nPieceSum; 
aryProb[1][2] = 1; 
else 
aryProb[1][1] = ceil(dFrameCount); 
aryProb[1][2] = 1 - (ceil(dFrameCount) - dFrameCount); 
aryProb[2][1] = aryProb[1][1] - 1; 
aryProb[2][2] = 1 - aryProb[1][2]; 
end 

if (bPreview == 1) then 
local szPrompt = "<dec><npc>" 
for i = 1, 2 do 
if (aryProb[i][2] > 0) then 
if (aryProb[i][1] > 0) then 
szPrompt = szPrompt..format("Nªn hoµng kim trang bÞ cã \n<color=yellow>%5.2f%%<color> x¸c suÊt cã thÓ chia lµm <color=yellow>%d<color> khèi \n", aryProb[i][2] * 100, aryProb[i][1]); 
else 
szPrompt = szPrompt..format("Nªn trang bÞ cã \n<color=yellow>%5.2f%%<color> cã thÓ ph©n m¶nh vôn thÊt b¹i \n", aryProb[i][2] * 100); 
end 
end 
end 
CreateTaskSay( { szPrompt, 
" xin gióp ta xem mét chót nh÷ng kh¸c trang bÞ cã thÓ chia lµm bao nhiªu khèi ./want_split_preview", 
" cã thÓ gióp ta ph©n nªn hoµng kim trang bÞ m¶nh vôn sao ?/#want_split(0)", 
" ta chØ ®· hiÓu , c¸m ¬n ./cancel" } ); 
return 
else 
-- script viet hoa By http://tranhba.com  san nguyªn liÖu 
for i = 1, nItemCount do 
if (RemoveItemByIndex(GetGiveItemUnit(i)) ~= 1) then 
WriteLog(format("[ ph©n hoµng kim trang bÞ m¶nh vôn ] %s\t%s\t%s\t thñ tiªu vËt phÈm thÊt b¹i \t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(GetGiveItemUnit(i)))); 
return 
end 
end 
-- script viet hoa By http://tranhba.com  cho m¶nh vôn 
if (random() <= aryProb[1][2]) then 
dFrameCount = aryProb[1][1]; 
else 
dFrameCount = aryProb[2][1]; 
end 
local aryFrameDetailType = {}; 
local szExpendableLog = ""; 
local szFrameNameLog = ""; 
for i = 1, nPieceSum do 
			aryFrameDetailType[i] = nFirstPiece + i - 1;
end 
for i = 1, dFrameCount do 
local nRandNum = random(getn(aryFrameDetailType)); 
local nIdx = NewItemEx(4, 0, 0, 4, aryFrameDetailType[nRandNum], 1, 0, 0, 0); 
if nItemBindState ~= 0 then 
-- script viet hoa By http://tranhba.com  ®em m¶nh vôn thiÕt trÝ v× nguyªn hoµng kim trang bÞ ®Ých trãi ®Þnh tr¹ng th¸i trÞ gi¸ 
SetItemBindState(nIdx, nItemBindState) 
end 
AddItemByIndex(nIdx); 
szFrameNameLog = szFrameNameLog..szgoldName..format("Khèi [%s]\t",aryFrameDetailType[nRandNum]); 
tremove(aryFrameDetailType, nRandNum); 
end 
if (dFrameCount > 0) then 
CreateTaskSay( { format("<dec><npc> trang bÞ <color=yellow>%s<color> ph©n khèi tèt l¾m , xin mang <color=yellow>%s<color> nªn m¶nh vôn ®i . nÕu nh­ ngµy nµo ®ã cÇn hîp thµnh bän hä , liÒn mang tíi ta chç nµy . ",szgoldName,dFrameCount), 
" c¸m ¬n #/cancel" } ); 
else 
CreateTaskSay( { format("<dec><npc>Ph# m#h <color=yellow>%s<color> thÊt b¹i , lÇn sau muèn dïng cµng nhiÒu h¬n nguyªn liÖu nga .",szgoldName), 
" ta biÕt !/cancel" } ); 
end 
-- script viet hoa By http://tranhba.com  ghi chÐp mçi ngµy trang bÞ hñy ®i ph©n thi hµnh sè lÇn 
		SetGlbValue(GLBID_SPLIT_DAILY_COUNT, GetGlbValue(GLBID_SPLIT_DAILY_COUNT) + 1);
-- script viet hoa By http://tranhba.com  ghi chÐp Log 
for szkey, tb_item in tb_enhanceitem_count do 
if (tb_enhanceitem_count[szkey][1] > 0) then 
szExpendableLog = szExpendableLog..tb_enhanceitem_count[szkey][2]..format("[%s](%s#)\t",szkey,tb_enhanceitem_count[szkey][1]); 
end; 
end; 
WriteLog(format("[ ph©n hoµng kim m¶nh vôn ] %s\t%s\t%s\t%s\t tiªu hao # kim tª (%s)\t%s chia lµm %s khèi :",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szgoldName,nMarkItemCount,szExpendableLog,dFrameCount,szFrameNameLog)); 
writeRecoinLog("[ ph©n hoµng kim m¶nh vôn ]", szItemInfo); 
return 
end 
end 

-- script viet hoa By http://tranhba.com  ph¸n ®o¸n cã ®­îc hay kh«ng tiÕn hµnh trang bÞ hñy ®i ph©n , tøc ë më ra nhËt kú bªn trong , h¬n n÷a cßn ch­a tíi ®¹t ngµy ®ã trang bÞ hñy ®i ph©n sè lÇn th­îng h¹n 
function _is_split_available() 
local nTodayString = tonumber(GetLocalDate("%Y%m%d")); 
-- script viet hoa By http://tranhba.com reloadRecoinGoldenDate(); 

local nLastDate = GetGlbValue(GLBID_SPLIT_LAST_DATE); 
if (nLastDate ~= nTodayString) then 
SetGlbValue(GLBID_SPLIT_LAST_DATE, nTodayString); 
SetGlbValue(GLBID_SPLIT_DAILY_COUNT, 0); 
else 
local nDailySplitCount = GetGlbValue(GLBID_SPLIT_DAILY_COUNT); 
if (nDailySplitCount >= SPLIT_COUNT_DAILY_THRESHOLD) then 
CreateTaskSay( { "<dec><npc> thËt xin lçi , h«m nay ta qu¸ mÖt mái , ngµy mai trë l¹i nga ", 
" vËy ta liÒn chê mét chót trë l¹i !/cancel" } ); 
return 0; 
end 
end 
return 1; 
end 

-- script viet hoa By http://tranhba.com  hoµng kim trang bÞ m¶nh vôn hîp thµnh 
-- script viet hoa By http://tranhba.com  tiÓu l·ng nhiÒu h¬n 
function compose_entry() 
local aryDescribe = 
{ 
"<dec><npc> chØ cÇn cho ta toµn bé trang bÞ m¶nh vôn , kh«ng d­ thõa còng kh«ng thiÓu , hoÆc lµ cã 2 khèi trang bÞ m¶nh vôn gièng nhau , ta ®em gióp ng­¬i hîp thµnh .", 
" ta cã c¸i nµy trang bÞ m¶nh vôn muèn ng­¬i gióp hîp thµnh ./want_compose", 
" ta chØ tïy tiÖn xem mét chót ./cancel", 
}; 
CreateTaskSay(aryDescribe); 
end 

function want_compose(bNoConfirm) 
-- script viet hoa By http://tranhba.com  if (bNoConfirm ~= 1 and CalcFreeItemCellCount() < 6) then 
-- script viet hoa By http://tranhba.com  CreateTaskSay( { "<dec><npc> ng­¬i tói ®eo l­ng ®Ých cßn thõa l¹i kh«ng gian kh«ng nhiÒu l¾m , tèt nhÊt söa sang mét chót chõa l¹i 6 c¸ch kh«ng gian tíi , nÕu kh«ng hîp thµnh tèt hoµng kim trang bÞ r¬i trªn ®Êt bÞ ng­êi kh¸c nhÆt ®i còng ®õng tr¸ch ta kh«ng cã nh¾c nhë ng­¬i nga . ", 
-- script viet hoa By http://tranhba.com  " tói ®eo l­ng kh«ng gian ®ñ råi , kh«ng quan hÖ , tiÕp tôc ®i /#want_compose(1)", 
-- script viet hoa By http://tranhba.com  " vËy ta tr­íc söa sang mét chót tói ®eo l­ng ®i /cancel" } ); 
-- script viet hoa By http://tranhba.com  else 
GiveItemUI("Hîp thµnh trang bÞ ","Muèn hîp thµnh trang bÞ cÇn ph¶i cã c¸i nµy trang bÞ m¶nh vôn . nÕu nh­ trang bÞ m¶nh vôn ®ang ®øng ë bÞ khãa tr¹ng th¸i , nh­ vËy trang bÞ hîp thµnh nh­ cò sÏ xö vu bÞ khãa tr¹ng th¸i . ", "do_compose", "cancel", 1); 
-- script viet hoa By http://tranhba.com  end 
end 

function do_compose(n_count) 
if (n_count <= 0) then 
CreateTaskSay( { "<dec><npc> nÕu nh­ muèn hîp thµnh trang bÞ , liÒn ®em trang bÞ m¶nh vôn mang cho ta , nÕu nh­ m¶nh vôn ch­a ®ñ , ta ®em kh«ng thÓ gióp ng­¬i .", 
" ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi thö mét chót ./want_compose", 
" thËt kh«ng cã ý , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 

-- script viet hoa By http://tranhba.com  xem mét chót cã ph¶i hay kh«ng tÊt c¶ vËt phÈm ®Òu lµ cïng chñng lo¹i 
local n_goldgenre,n_golddetail,nversion,szgoldname,nPieceSum,nFirstPiece 
local tb_tgot = {} 
for i = 1, n_count do 
local n_itemidx = GetGiveItemUnit(i) 

		nversion = ITEM_GetItemVersion( n_itemidx ) + 1;

local tb_p 
tb_p = pack(GetItemProp(n_itemidx)) 
local szgoldkey = format("[%d]",tb_p[2]) 

-- script viet hoa By http://tranhba.com  print(GetItemProp(n_itemidx)) 
if (tb_p[1] ~= 4 or g_aryRecoinConfig[nversion][szgoldkey] == nil ) then 
CreateTaskSay( { "<dec><npc> hîp thµnh trang bÞ chØ cÇn t­¬ng øng m¶nh vôn lµ ®­îc , nh÷ng thø kh¸c cø yªn t©m .", 
" ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi thö mét chót ./want_compose", 
" thËt kh«ng cã ý , ta chê mét chót trë l¹i ./cancel" } ); 
return 
elseif (GetItemStackCount(n_itemidx) ~= 1) then 
CreateTaskSay( { "<dec><npc> trang bÞ kh«ng thÓ t¸i diÔn thiÕt trÝ , ng­¬i kh«ng nghe lêi cña ta liÔu !", 
" ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi thö mét chót ./want_compose", 
" thËt kh«ng cã ý , ta chê mét chót trë l¹i ./cancel" } ); 
return 
elseif not n_golddetail then -- script viet hoa By http://tranhba.com  c¨n cø thø nhÊt vËt phÈm t×m ®­îc muèn hîp thµnh lµ lo¹i nµo m¶nh vôn 

nPieceSum = g_aryRecoinConfig[nversion][szgoldkey].m_nPieceSum 
n_goldgenre = g_aryRecoinConfig[nversion][szgoldkey].m_nGenre 
n_golddetail = g_aryRecoinConfig[nversion][szgoldkey].m_nDetailtype 
szgoldname = g_aryRecoinConfig[nversion][szgoldkey].m_szGoldName 

if (n_count > nPieceSum) then 
CreateTaskSay( { format("<dec><npc> kh¸ch quan muèn hîp thµnh <color=yellow]>%s<color> cho ta nhiÒu ®å nh­ vËy lµm c¸i g× ®Êy ? chØ cÇn <color=yellow>%s<color> khèi lµ ®­îc .",szgoldname,nPieceSum), 
" ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi ®i ./want_compose", 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
elseif (n_count < nPieceSum) then 
CreateTaskSay( { format("<dec><npc> kh¸ch quan muèn hîp thµnh <color=yellow>%s<color> ? kh«ng ®ñ trang bÞ m¶nh vôn , kh«ng thÓ hîp thµnh .",szgoldname), 
" ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi ®i ./want_compose", 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 
n_type = 1 

elseif (g_aryRecoinConfig[nversion][szgoldkey].m_nDetailtype ~= n_golddetail) then -- script viet hoa By http://tranhba.com  trõ thø nhÊt bªn ngoµi , tÊt c¶ m¶nh vôn còng ®¸p øng cïng chñng lo¹i 
CreateTaskSay( { "<dec><npc> hîp thµnh trang bÞ cÇn ph¶i cã trang bÞ m¶nh vôn , ng­¬i cho ta trang bÞ m¶nh vôn kh«ng ®óng , kh«ng thÓ hîp thµnh .", 
" ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi ®i ./want_compose", 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 

local n_sid = tb_p[2] 
if tb_tgot[n_sid] then -- script viet hoa By http://tranhba.com  th¶ hai tê gièng nhau m¶nh vôn ®i vµo 
CreateTaskSay( { format("<dec><npc> ta kh«ng cÇn 2 khèi gièng nhau trang bÞ m¶nh vôn <color=yellow>%s<color> cÇn <color=yellow>%s<color> <color=yellow> khèi %s<color>, nhí nga ?",szgoldname,nPieceSum,szgoldname), 
" ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi ®i ./want_compose", 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 
tb_tgot[n_sid] = 1 -- script viet hoa By http://tranhba.com  ®· cã m¶nh vôn dÊu hiÖu 
end 
-- script viet hoa By http://tranhba.com  an toµn kiÓm tra , ban bè sau cã thÓ b«i bá # nÕu nh­ cã lßng tin lêi cña # 
local szkey = format("[0,%d]",n_golddetail) 
if g_aryRecoinConfig[nversion][szkey] == nil then 
CreateTaskSay( { "<dec><npc> ph¸t sinh hÖ thèng sai lÇm ?","NgÊt .../cancel" } ); 
local str = "do_compose ERROR!!! not tb_tgot "..i; 
WriteLog(format("[ hîp thµnh hoµng kim trang bÞ m¶nh vôn ] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str)); 
end 
for i = g_aryRecoinConfig[nversion][szkey].m_nFirstPieceDetail,g_aryRecoinConfig[nversion][szkey].m_nPieceSum-1 do 
if not tb_tgot[i] then 
CreateTaskSay( { "<dec><npc> ph¸t sinh hÖ thèng sai lÇm ?","NgÊt .../cancel" } ); 
local str = "do_compose ERROR!!! not tb_tgot "..i; 
WriteLog(format("[ hîp thµnh hoµng kim trang bÞ m¶nh vôn ] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str)); 
return 
end 
end 
-- script viet hoa By http://tranhba.com  san nguyªn liÖu 
local bBind = nil 
for i=1, n_count do 
local nIdx = GetGiveItemUnit(i) 
if (GetItemBindState(nIdx) ~= 0) then 
bBind = 1 
end 
if (RemoveItemByIndex(nIdx) ~= 1) then 
WriteLog(format("< hîp thµnh hoµng kim trang bÞ m¶nh vôn > %s\t%s\t%s\t thñ tiªu nguyªn liÖu thÊt b¹i \t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(GetGiveItemUnit(i)))); 
return 
end 
end 
-- script viet hoa By http://tranhba.com  cho vËt phÈm 

local str = format("Hîp thµnh <color=yellow>%s<color> thµnh c«ng !",szgoldname) 
Msg2Player(str) 
local nItem = AddGoldItem(n_goldgenre,n_golddetail) 
local szItemInfo = getItemInfo(nItem); 
-- script viet hoa By http://tranhba.com  chØ cÇn nguyªn liÖu trung cã trãi ®Þnh hoÆc mæ trãi tr¹ng th¸i , hîp ra ®Ých hoµng kim v× trãi ®Þnh 
if (bBind) then 
BindItem(nItem) 
end 
-- script viet hoa By http://tranhba.com AddGlobalNews("Tôc truyÒn nghe thÊy "..GetName().." dïng trang bÞ m¶nh vôn thµnh c«ng hîp thµnh "..szgoldname.." . ") 
WriteLog(format("[ hîp thµnh hoµng kim trang bÞ m¶nh vôn ] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str)); 
writeRecoinLog("[ hoµng kim m¶nh vôn hîp thµnh hoµng kim ]", szItemInfo); 
end 

-- script viet hoa By http://tranhba.com  hoµng kim trang bÞ m¶nh vôn trao ®æi 
-- script viet hoa By http://tranhba.com  
function exchange_entry() 
local aryDescribe = 
{ 
format("<dec><npc> chØ cÇn cÇm <color=yellow>%s tiÒn <color> ta ®em gióp ng­¬i ®æi thµnh t­¬ng øng trang bÞ m¶nh vôn .",FRAME_EXCHANGE_COIN), 
" kh«ng cÇn ®Ó ý , ta ch¼ng qua lµ tïy tiÖn nãi mét chót mµ th«i ./cancel", 
}; 
for i = 9, 1, -1 do 
tinsert(aryDescribe, 2, format("M¶nh vôn %d/#want_exchange(%d)",i,i)); 
end 
CreateTaskSay(aryDescribe); 
end 

function want_exchange(nFrameIdx) 
if (CalcItemCount(3, 4, 417, 1, -1) < FRAME_EXCHANGE_COIN) then 
CreateTaskSay( { format("<dec><npc> kh«ng cã tiÒn thÕ nµo ®æi lÊy trang bÞ m¶nh vôn , muèn t×m ®ñ <color=yellow>%s tiÒn <color> sau ®ã trë vÒ gÆp ta .",FRAME_EXCHANGE_COIN), 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 
SetTaskTemp(TASKTMP_EXCHANGE_FRAME, nFrameIdx); 
GiveItemUI("Thay ®æi quÇn ¸o bÞ m¶nh vôn ","ThiÕt trÝ mét khèi muèn ®æi trang bÞ m¶nh vôn , tiÒn ®em bÞ tù ®éng khÊu trõ ", "do_exchange", "cancel", 1); 
end 

function do_exchange(nItemCount) 
if (nItemCount ~= 1) then 
CreateTaskSay( { "<dec><npc> mét lÇn ®æi mét m¶nh .", 
" ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi ®i ./exchange_entry", 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 
local nItemIdx = GetGiveItemUnit(1); 
local tbItemProp = pack(GetItemProp(nItemIdx)); 
local nFirstPiece,nPieceSum,nPieceNo,nFirstPiece 
if GetItemStackCount(nItemIdx) ~= 1 then 
CreateTaskSay( { "<dec><npc> trang bÞ m¶nh vôn kh«ng thÓ t¸i diÔn , mçi lÇn chØ cã thÓ ®æi mét khèi .", 
" ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi ®i ./exchange_entry", 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 
if (tbItemProp[1] == 4) then 
local szgoldkey = format("[%d]",tbItemProp[2]) 
		local nversion = ITEM_GetItemVersion( nItemIdx ) + 1;

if g_aryRecoinConfig[nversion][szgoldkey] ~= nil then 
-- script viet hoa By http://tranhba.com nFirstPiece = g_aryRecoinConfig[nversion][szgoldkey].m_nFirstPieceDetail 
nPieceSum = g_aryRecoinConfig[nversion][szgoldkey].m_nPieceSum 
szGoldName = g_aryRecoinConfig[nversion][szgoldkey].m_szGoldName 
nPieceNo = g_aryRecoinConfig[nversion][szgoldkey].m_nPieceNo 
nFirstPiece = tbItemProp[2] - (nPieceNo - 1) 
end 
end 
if nPieceSum == nil then 
CreateTaskSay( { "<dec><npc> ta chØ cã thÓ gióp ng­¬i ®æi hoµng kim trang bÞ m¶nh vôn , ng­¬i cho ta c¸i g× nha ?", 
" ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi ®i ./exchange_entry", 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 
local nExchangeFrameIdx = GetTaskTemp(TASKTMP_EXCHANGE_FRAME); 
if (nExchangeFrameIdx < 1 or nExchangeFrameIdx > nPieceSum) then 
CreateTaskSay( { format("<dec><npc> m¶nh vôn <color=yellow>%s<color> muèn tæng céng ®æi <color=yellow>%s<color> khèi , kh«ng cã thø <color=yellow>%s<color> khèi .",szGoldName,nPieceSum,nExchangeFrameIdx), 
" ha ha , ®¹i hiÖp còng cã kh«ng cÈn thËn thêi ®iÓm , ®Ó cho ta tíi ®i ./exchange_entry", 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 
if (CalcItemCount(3, 4, 417, 1, -1) < FRAME_EXCHANGE_COIN) then 
CreateTaskSay( { format("<dec><npc> kh«ng cã tiÒn thÕ nµo thay ®æi quÇn ¸o bÞ m¶nh vôn , nhanh ®i t×m ®ñ <color=yellow>%s ®ång tiÒn <color> sau ®ã tíi thÊy ta .",FRAME_EXCHANGE_COIN), 
" thËt lµ ng­îng ngïng , ta chê mét chót trë l¹i ./cancel" } ); 
return 
end 
if (ConsumeItem(3, FRAME_EXCHANGE_COIN, 4, 417, 1, -1) ~= 1) then 
WriteLog(format("[ ®æi hoµng kim m¶nh vôn ] %s\t%s\t%s\t th¾ng xe ®ång tiÒn thÊt b¹i .",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName())); 
return 
end 
if (RemoveItemByIndex(nItemIdx) ~= 1) then 
WriteLog(format("[ ®æi hoµng kim m¶nh vôn ] %s\t%s\t%s\t thñ tiªu vËt phÈm thÊt b¹i \t%s",GetLocalDate("%Y-%m-%d %H:%M:%S",GetAccount(),GetName(),GetItemName(nItemIdx)))); 
end 
	AddItem(4, nFirstPiece + nExchangeFrameIdx - 1, 1, 0, 0, 0);
CreateTaskSay( { format("<dec><npc> t×m ®­îc thø <color=yellow>%s<color> khèi <color=yellow>%s<color>, mau cÇm ®i !",nExchangeFrameIdx,szGoldName), 
" c¸m ¬n /cancel" } ); 
	WriteLog(format("[»»»Æ½ðËéÆ¬] %s\t%s\t%s\t%s ¿é(%s) »»³É(%s)",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szGoldName,tbItemProp[2],(nFirstPiece + nExchangeFrameIdx - 1)));
end 

function pack(...) 
return arg 
end 

function cancel() 
end 

-- script viet hoa By http://tranhba.com {randseed,q,g,d,P,level,series,lucky,<magic1,magic2,magic3,magic4,magic5,magic6>}(gentime)(platinalvl) 

-- script viet hoa By http://tranhba.com [ thêi gian ] [ hoµng kim hñy ®i ph©n ] Account Name 
-- script viet hoa By http://tranhba.com [ thêi gian ] chñ yÕu tµi liÖu # 

function writeRecoinLog(szTitle, szLog) 
WriteLog(format(" %s\t%s\tNAME:%s\tACCOUNT:%s",GetLocalDate("%Y-%m-%d %H:%M:%S"), szTitle,GetName(),GetAccount())); 
WriteLog(format(" %s\t%s", GetLocalDate("%Y-%m-%d %H:%M:%S"), szLog)); 
end; 

function reloadRecoinGoldenDate() 
local tb_NewAvailableDate = {gb_GetTask("RECOIN_GOLDENEQUIP",1), gb_GetTask("RECOIN_GOLDENEQUIP",2)}; 
if (tb_NewAvailableDate[1] ~= 0 and tb_NewAvailableDate[2] ~= 0 and tb_NewAvailableDate[2] ~= SPLIT_AVAILABLE_DATE_RANGE[2]) then 
SPLIT_AVAILABLE_DATE_RANGE[1] = tb_NewAvailableDate[1]; 
SPLIT_AVAILABLE_DATE_RANGE[2] = tb_NewAvailableDate[2]; 
end; 
end;
