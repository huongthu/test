IncludeLib("ITEM"); 
IncludeLib( "FILESYS" ); 
Include( "\\script\\item\\item_header.lua" );
Include( "\\script\\task\\system\\task_string.lua" );
Include("\\script\\lib\\log.lua")

FILE_Recoin_COMPOUND = "recoin_goldenequip.txt"; 
-- script viet hoa By http://tranhba.com  kh�ng ph�i l� sinh ch� t��ng quan ��u v�n ki�n d�i �i 
-- script viet hoa By http://tranhba.com  ho�ng kim trang b� b� ph�m ��i �ng bi�u 

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

-- script viet hoa By http://tranhba.com  ho�ng kim trang b� bao h�m b� ph�m s� l��ng c�ng c�n t�n v�t s� l��ng ��i �ng bi�u 
TB_MARK_ITEM_COUNT = 
{ 
{6, 1}, -- script viet hoa By http://tranhba.com  ho�ng kim bao h�m 6 c� tr� l�n m�nh v�n c�n �t nh�t 1 c� t�n v�t 
{9, 2}, -- script viet hoa By http://tranhba.com  ho�ng kim bao h�m 9 c� tr� l�n m�nh v�n c�n �t nh�t 2 c� t�n v�t 
}; 

-- script viet hoa By http://tranhba.com  ho�ng kim trang b� h�y �i ph�n ph� th�m v�t ph�m ��ch gi� tr� l��ng 
TB_ENHANCE_ITEM = { 
["6,1,398"] = 100000000, -- script viet hoa By http://tranhba.com  th�n b� qu�ng th�ch 
["6,1,122"] = 600000, -- script viet hoa By http://tranhba.com  ph�c duy�n l� # ti�u # 
["6,1,123"] = 1200000, -- script viet hoa By http://tranhba.com  ph�c duy�n l� # trung # 
["6,1,124"] = 3000000, -- script viet hoa By http://tranhba.com  ph�c duy�n l� # ��i # 
["4,238,1"] = 5000000, -- script viet hoa By http://tranhba.com  lan th�y tinh 
["4,239,1"] = 5000000, -- script viet hoa By http://tranhba.com  t� th�y tinh 
["4,240,1"] = 5000000, -- script viet hoa By http://tranhba.com  n��c bi�c tinh 
}; 

MARK_ITEM_ID = "4,979,1"; -- script viet hoa By http://tranhba.com  ho�ng kim trang b� h�y �i ph�n t�n v�t # kim t� # 
GLBID_SPLIT_LAST_DATE = 919; -- script viet hoa By http://tranhba.com  to�n c�c thay ��i l��ng ID of m�t l�n cu�i c�ng trang b� h�y �i ph�n ��ch nh�t k� 
GLBID_SPLIT_DAILY_COUNT = 920; -- script viet hoa By http://tranhba.com  to�n c�c thay ��i l��ng ID of ng�y �� thi h�nh trang b� h�y �i ph�n ��ch s� l�n 
SPLIT_COUNT_DAILY_THRESHOLD = 500; -- script viet hoa By http://tranhba.com  m�t m�y GameSvr m�t ng�y b�n trong nh�ng thi h�nh trang b� h�y �i ph�n ��ch s� l�n th��ng h�n 
SPLIT_AVAILABLE_DATE_RANGE = { 20080113, 20080401 }; -- script viet hoa By http://tranhba.com  trang b� h�y �i ph�n ch�c n�ng m� ra ��ch b�t ��u # k�t th�c th�i gian 

FRAME_EXCHANGE_COIN = 2; -- script viet hoa By http://tranhba.com  trao ��i trang b� m�nh v�n c�n tr� ��ch ��ng ti�n c� ��m 
TASKTMP_EXCHANGE_FRAME = 194; -- script viet hoa By http://tranhba.com  mu�n trao ��i ��ch trang b� m�nh v�n ��ch t�c d�n 

-- script viet hoa By http://tranhba.com  ho�ng kim trang b� h�y �i ph�n 
-- script viet hoa By http://tranhba.com  Fanghao_Wu 2006-06-21 
function split_entry() 
local aryDescribe = {}; 
local nTodayString = tonumber(GetLocalDate("%Y%m%d")); 

aryDescribe = 
{ 
"<dec><npc> ta c� th� ph�n ho�ng kim trang b� m�nh v�n , ��y c�ng l� s� ph� ta t�m huy�t c� ��i .", 
" c�i n�y ho�ng kim trang b� c� th� chia l�m m�y kh�i ?/want_split_preview", 
" c� th� gi�p ta ph�n ho�ng kim trang b� m�nh v�n sao ?/#want_split(0)", 
" ph�n ho�ng kim trang b� m�nh v�n ��ch ph��ng ph�p ./about_split", 
" kh�ng c�n �� � , ta ch�ng qua l� thu�n mi�ng n�i m�t ch�t m� th�i ./cancel", 
}; 
CreateTaskSay(aryDescribe); 
end 

function want_split_preview() 
GiveItemUI("Th� nh�n ph�n trang b� m�nh v�n ?","Thi�t tr� ho�ng kim trang b� , kim t� , th�n b� qu�ng th�ch , ph�c duy�n l� , ta s� nh��ng ng��i bi�t c� th� ph�n ra ��ch trang b� m�nh v�n s� l��ng .", "do_split_preview", "cancel", 1); 
end 

function want_split(bNoConfirm) 
if (_is_split_available() ~= 1) then 
return 
end 
if (bNoConfirm ~= 1 and CalcFreeItemCellCount() < 9) then 
CreateTaskSay( { "<dec><npc> trang b� ch�a �� ch� tr�ng , th�nh an ��ng h�ng nh� th� n�o �� 9 c� ch� tr�ng . n�u nh� trang b� m�nh v�n r�i xu�ng , c�ng s� b� ng��i kh�c nh�t �i , khi �� c�ng kh�ng c�n tr�ch ta kh�ng c� nh�c nh� ng��i . ", 
" trang b� �� c�u ch� tr�ng , xin/m�i ti�p t�c !/#want_split(1)", 
" kia �� cho ta an b�i m�t c�i trang b� tr��c !/cancel" } ); 
else 
GiveItemUI("Ph�n trang b� m�nh v�n ","Thi�t tr� h�o ho�ng kim trang b� , kim t� , th�n b� qu�ng th�ch , th�y tinh , ph�c duy�n l� , ta m�i c� th� gi�p ng��i ph�n m�nh v�n , n�u nh� thi�t tr� trang b� b� kh�a , kia ph�n ra ��ch trang b� m�nh v�n c�ng ��ng l� c�i n�y tr�ng th�i . !", "do_split", "cancel"); 
end 
end 

function about_split() 
local aryDescribe = 
{ 
"<dec><npc> mu�n ph�n trang b� m�nh v�n , cho ta l� ���c , nh�ng l� ta c�n m�t d�ng �� g�i l� ?<color=yellow> kim t� <color>. ch� � , ho�ng kim trang b� c� th� chia l�m 4, 6, 9 kh�i . ph�n ra 4 kh�i kh�ng c�n d�ng <color=yellow> kim t� <color> c�ng ���c . mu�n chia l�m 6 kh�i , s� ph�i �i �t nh�t c�n 1 c� <color=yellow> kim t� <color>, mu�n chia l�m 9 kh�i li�n c�n 2 c� 2 <color=yellow> kim t� <color>, ngo�i ra , n�u nh� cho ta r�t nhi�u <color=yellow> kim t� <color>, <color=yellow> th�n b� qu�ng th�ch <color>, <color=yellow> th�y tinh <color> c�ng v�i <color=yellow> ph�c duy�n l� <color> l� chia l�m ��ch trang b� m�nh v�n c� th� ph�i nhi�u h�n , ta nh� <color=yellow> kim t� <color> � <color=blue> k� tr�n c�c c� b�n <color>.", 
" ta bi�t !/split_entry", 
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

local nItemBindState; -- script viet hoa By http://tranhba.com  nguy�n li�u ho�ng kim ��ch tr�i ��nh tr�ng th�i 
local tb_enhanceitem_count = {}; 
for szkey, tb_item in TB_ENHANCE_ITEM do 
tb_enhanceitem_count[szkey] = {}; 
tb_enhanceitem_count[szkey][1] = 0; 
end; 
local nversion,nFirstPiece,nPieceSum,nBadVaules,nStandardValues,szgoldName; 
-- script viet hoa By http://tranhba.com  gi�o nghi�m v�t ph�m l� hay kh�ng th�t x�ng 
for i = 1, nItemCount do 
local nCurItemIdx = GetGiveItemUnit(i); 
local nCurItemName = GetItemName(nCurItemIdx); 
local nCurItemQuality = GetItemQuality(nCurItemIdx); 
local tbCurItemProp = pack(GetItemProp(nCurItemIdx)); 
local nExpiredTime = ITEM_GetExpiredTime(nCurItemIdx); 
local nCurItemValue = 0; 
if (nCurItemQuality == 1) then 
-- script viet hoa By http://tranhba.com  n�u nh� kh�ng ph�i l� trang b� ( c� th� l� h� h�i trang b� ) 
if (tbCurItemProp[1] ~= 0) then 
CreateTaskSay( { "<dec><npc> tr� <color=yellow> ho�ng kim trang b� <color> c�ng <color=yellow> kim t� <color> b�n ngo�i , ch� c� <color=yellow> th�n b� qu�ng th�ch <color>, <color=yellow> th�y tinh <color> c�ng v�i <color=yellow> ph�c duy�n l� <color> l� ta c�n nguy�n li�u , nh�ng th� kh�c th� �� xu�ng .", 
format("Ha ha # ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i thi�t ��a m�t c�i ./%s",szContinueFunc), 
" th�t kh�ng c� � , ta �em ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 


if (nExpiredTime > 0) then -- script viet hoa By http://tranhba.com  c� b�o ch�t k� ��ch trang b� , kh�ng th� h�y �i # 
CreateTaskSay( { "<dec><npc> trang b� c� <color=fire> s� d�ng th�i h�n <color> th� kh�ng th� ��nh luy�n .", 
" th�t l� ng��ng ng�ng , ta l�i ngh� sai r�i . ch� ch�t ta tr� l�i nga /cancel" } ); 
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
CreateTaskSay( { "<dec><npc> kh�ch quan mu�n ph�n lo�i n�o ho�ng kim trang b� ? ta kh�ng c� hoa m�t �i ?", 
format("Ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i thi�t tr� ./%s",szContinueFunc), 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 

if (nFirstPiece == nil) then 
CreateTaskSay( { format("<dec><npc> th�t l� ti�c nu�i , l�y ta b�y gi� n�ng l�c , kh�ng th� gi�p ng��i ph�n ho�ng kim trang b� <color=yellow>%s<color> .",GetItemName(nCurItemIdx)), 
format("Ch� t�o nh�ng kh�c ho�ng kim trang b� ./%s",szContinueFunc), 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 
nCurItemValue = nBadVaules; 
nItemBindState = GetItemBindState(nCurItemIdx) -- script viet hoa By http://tranhba.com  l�y ���c tr�i ��nh tr�ng th�i 
szItemInfo = getItemInfo(nCurItemIdx); 
writeRecoinLog("[ ph�n ho�ng kim m�nh v�n ��ch ch� nguy�n li�u ]", szItemInfo); 
else 
local szItemKey = format("%s,%s,%s",tbCurItemProp[1],tbCurItemProp[2],tbCurItemProp[3]) 
if (szItemKey == MARK_ITEM_ID) then 
				nMarkItemCount = nMarkItemCount + 1;
nCurItemValue = ITEM_CalcItemValue(nCurItemIdx); 
else 
if (TB_ENHANCE_ITEM[szItemKey] == nil) then 
CreateTaskSay( { "<dec><npc> tr� <color=yellow> ho�ng kim trang b� <color> c�ng v�i <color=yellow> kim t� <color> b�n ngo�i , ch� c� <color=yellow> th�n b� qu�ng th�ch <color>, <color=yellow> th�y tinh <color> c�ng <color=yellow> ph�c duy�n l� <color> l� ta c�n nguy�n li�u , nh�ng th� kh�c tr��c �� xu�ng .", 
format("Ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i thi�t tr� ./%s",szContinueFunc), 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
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
CreateTaskSay( { "<dec><npc> n�u nh� c�n ta ph�n trang b� m�nh v�n li�n �em trang b� mang t�i n�i n�y , kh�ng c� trang b� th� kh�ng th� gi�p ng��i .", 
format("Ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i thi�t tr� ./%s",szContinueFunc), 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 
for i = getn(TB_MARK_ITEM_COUNT), 1, -1 do 
if (nPieceSum >= TB_MARK_ITEM_COUNT[i][1]) then 
if (nMarkItemCount < TB_MARK_ITEM_COUNT[i][2]) then 
CreateTaskSay( { format("<dec><npc> ph�n n�n trang b� m�nh v�n �t nh�t c�n <color=yellow>%s kim t� <color>, n�u nh� kh�ng ph�i l� ho�ng kim trang b� , li�n c� th� c� th� s� h� r�i . �i t�m �� <color=yellow> kim t� <color> sau �� tr� l�i . ta nh� n�n v�t ph�m � <color=blue> k� tr�n c�c c� b�n <color>.",TB_MARK_ITEM_COUNT[i][2]), 
format("�� �� r�i , �� cho ta th� l�i l�n n�a !/%s",szContinueFunc),"Th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 
break; 
end 
end 

-- script viet hoa By http://tranhba.com  gi�o nghi�m v�t ph�m th�t x�ng th�nh c�ng , t�nh to�n m�nh v�n s� l��ng c�ng x�c su�t 
local aryProb = { { 0, 0 }, { 0, 0 } }; 
local dFrameCount = nSrcItemValueSum / nStandardValues * nPieceSum; 
if (dFrameCount >= nPieceSum) then 
-- script viet hoa By http://tranhba.com  ��u nh�p l�n h�n nhi�u nh�t m�nh v�n ��ch t�ng gi� tr� l��ng , tr�m ph�n tr�m ra nhi�u nh�t m�nh v�n 
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
szPrompt = szPrompt..format("N�n ho�ng kim trang b� c� \n<color=yellow>%5.2f%%<color> x�c su�t c� th� chia l�m <color=yellow>%d<color> kh�i \n", aryProb[i][2] * 100, aryProb[i][1]); 
else 
szPrompt = szPrompt..format("N�n trang b� c� \n<color=yellow>%5.2f%%<color> c� th� ph�n m�nh v�n th�t b�i \n", aryProb[i][2] * 100); 
end 
end 
end 
CreateTaskSay( { szPrompt, 
" xin gi�p ta xem m�t ch�t nh�ng kh�c trang b� c� th� chia l�m bao nhi�u kh�i ./want_split_preview", 
" c� th� gi�p ta ph�n n�n ho�ng kim trang b� m�nh v�n sao ?/#want_split(0)", 
" ta ch� �� hi�u , c�m �n ./cancel" } ); 
return 
else 
-- script viet hoa By http://tranhba.com  san nguy�n li�u 
for i = 1, nItemCount do 
if (RemoveItemByIndex(GetGiveItemUnit(i)) ~= 1) then 
WriteLog(format("[ ph�n ho�ng kim trang b� m�nh v�n ] %s\t%s\t%s\t th� ti�u v�t ph�m th�t b�i \t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(GetGiveItemUnit(i)))); 
return 
end 
end 
-- script viet hoa By http://tranhba.com  cho m�nh v�n 
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
-- script viet hoa By http://tranhba.com  �em m�nh v�n thi�t tr� v� nguy�n ho�ng kim trang b� ��ch tr�i ��nh tr�ng th�i tr� gi� 
SetItemBindState(nIdx, nItemBindState) 
end 
AddItemByIndex(nIdx); 
szFrameNameLog = szFrameNameLog..szgoldName..format("Kh�i [%s]\t",aryFrameDetailType[nRandNum]); 
tremove(aryFrameDetailType, nRandNum); 
end 
if (dFrameCount > 0) then 
CreateTaskSay( { format("<dec><npc> trang b� <color=yellow>%s<color> ph�n kh�i t�t l�m , xin mang <color=yellow>%s<color> n�n m�nh v�n �i . n�u nh� ng�y n�o �� c�n h�p th�nh b�n h� , li�n mang t�i ta ch� n�y . ",szgoldName,dFrameCount), 
" c�m �n #/cancel" } ); 
else 
CreateTaskSay( { format("<dec><npc>Ph# m#h <color=yellow>%s<color> th�t b�i , l�n sau mu�n d�ng c�ng nhi�u h�n nguy�n li�u nga .",szgoldName), 
" ta bi�t !/cancel" } ); 
end 
-- script viet hoa By http://tranhba.com  ghi ch�p m�i ng�y trang b� h�y �i ph�n thi h�nh s� l�n 
		SetGlbValue(GLBID_SPLIT_DAILY_COUNT, GetGlbValue(GLBID_SPLIT_DAILY_COUNT) + 1);
-- script viet hoa By http://tranhba.com  ghi ch�p Log 
for szkey, tb_item in tb_enhanceitem_count do 
if (tb_enhanceitem_count[szkey][1] > 0) then 
szExpendableLog = szExpendableLog..tb_enhanceitem_count[szkey][2]..format("[%s](%s#)\t",szkey,tb_enhanceitem_count[szkey][1]); 
end; 
end; 
WriteLog(format("[ ph�n ho�ng kim m�nh v�n ] %s\t%s\t%s\t%s\t ti�u hao # kim t� (%s)\t%s chia l�m %s kh�i :",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szgoldName,nMarkItemCount,szExpendableLog,dFrameCount,szFrameNameLog)); 
writeRecoinLog("[ ph�n ho�ng kim m�nh v�n ]", szItemInfo); 
return 
end 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n c� ���c hay kh�ng ti�n h�nh trang b� h�y �i ph�n , t�c � m� ra nh�t k� b�n trong , h�n n�a c�n ch�a t�i ��t ng�y �� trang b� h�y �i ph�n s� l�n th��ng h�n 
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
CreateTaskSay( { "<dec><npc> th�t xin l�i , h�m nay ta qu� m�t m�i , ng�y mai tr� l�i nga ", 
" v�y ta li�n ch� m�t ch�t tr� l�i !/cancel" } ); 
return 0; 
end 
end 
return 1; 
end 

-- script viet hoa By http://tranhba.com  ho�ng kim trang b� m�nh v�n h�p th�nh 
-- script viet hoa By http://tranhba.com  ti�u l�ng nhi�u h�n 
function compose_entry() 
local aryDescribe = 
{ 
"<dec><npc> ch� c�n cho ta to�n b� trang b� m�nh v�n , kh�ng d� th�a c�ng kh�ng thi�u , ho�c l� c� 2 kh�i trang b� m�nh v�n gi�ng nhau , ta �em gi�p ng��i h�p th�nh .", 
" ta c� c�i n�y trang b� m�nh v�n mu�n ng��i gi�p h�p th�nh ./want_compose", 
" ta ch� t�y ti�n xem m�t ch�t ./cancel", 
}; 
CreateTaskSay(aryDescribe); 
end 

function want_compose(bNoConfirm) 
-- script viet hoa By http://tranhba.com  if (bNoConfirm ~= 1 and CalcFreeItemCellCount() < 6) then 
-- script viet hoa By http://tranhba.com  CreateTaskSay( { "<dec><npc> ng��i t�i �eo l�ng ��ch c�n th�a l�i kh�ng gian kh�ng nhi�u l�m , t�t nh�t s�a sang m�t ch�t ch�a l�i 6 c�ch kh�ng gian t�i , n�u kh�ng h�p th�nh t�t ho�ng kim trang b� r�i tr�n ��t b� ng��i kh�c nh�t �i c�ng ��ng tr�ch ta kh�ng c� nh�c nh� ng��i nga . ", 
-- script viet hoa By http://tranhba.com  " t�i �eo l�ng kh�ng gian �� r�i , kh�ng quan h� , ti�p t�c �i /#want_compose(1)", 
-- script viet hoa By http://tranhba.com  " v�y ta tr��c s�a sang m�t ch�t t�i �eo l�ng �i /cancel" } ); 
-- script viet hoa By http://tranhba.com  else 
GiveItemUI("H�p th�nh trang b� ","Mu�n h�p th�nh trang b� c�n ph�i c� c�i n�y trang b� m�nh v�n . n�u nh� trang b� m�nh v�n �ang ��ng � b� kh�a tr�ng th�i , nh� v�y trang b� h�p th�nh nh� c� s� x� vu b� kh�a tr�ng th�i . ", "do_compose", "cancel", 1); 
-- script viet hoa By http://tranhba.com  end 
end 

function do_compose(n_count) 
if (n_count <= 0) then 
CreateTaskSay( { "<dec><npc> n�u nh� mu�n h�p th�nh trang b� , li�n �em trang b� m�nh v�n mang cho ta , n�u nh� m�nh v�n ch�a �� , ta �em kh�ng th� gi�p ng��i .", 
" ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i th� m�t ch�t ./want_compose", 
" th�t kh�ng c� � , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 

-- script viet hoa By http://tranhba.com  xem m�t ch�t c� ph�i hay kh�ng t�t c� v�t ph�m ��u l� c�ng ch�ng lo�i 
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
CreateTaskSay( { "<dec><npc> h�p th�nh trang b� ch� c�n t��ng �ng m�nh v�n l� ���c , nh�ng th� kh�c c� y�n t�m .", 
" ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i th� m�t ch�t ./want_compose", 
" th�t kh�ng c� � , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
elseif (GetItemStackCount(n_itemidx) ~= 1) then 
CreateTaskSay( { "<dec><npc> trang b� kh�ng th� t�i di�n thi�t tr� , ng��i kh�ng nghe l�i c�a ta li�u !", 
" ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i th� m�t ch�t ./want_compose", 
" th�t kh�ng c� � , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
elseif not n_golddetail then -- script viet hoa By http://tranhba.com  c�n c� th� nh�t v�t ph�m t�m ���c mu�n h�p th�nh l� lo�i n�o m�nh v�n 

nPieceSum = g_aryRecoinConfig[nversion][szgoldkey].m_nPieceSum 
n_goldgenre = g_aryRecoinConfig[nversion][szgoldkey].m_nGenre 
n_golddetail = g_aryRecoinConfig[nversion][szgoldkey].m_nDetailtype 
szgoldname = g_aryRecoinConfig[nversion][szgoldkey].m_szGoldName 

if (n_count > nPieceSum) then 
CreateTaskSay( { format("<dec><npc> kh�ch quan mu�n h�p th�nh <color=yellow]>%s<color> cho ta nhi�u �� nh� v�y l�m c�i g� ��y ? ch� c�n <color=yellow>%s<color> kh�i l� ���c .",szgoldname,nPieceSum), 
" ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i �i ./want_compose", 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
elseif (n_count < nPieceSum) then 
CreateTaskSay( { format("<dec><npc> kh�ch quan mu�n h�p th�nh <color=yellow>%s<color> ? kh�ng �� trang b� m�nh v�n , kh�ng th� h�p th�nh .",szgoldname), 
" ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i �i ./want_compose", 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 
n_type = 1 

elseif (g_aryRecoinConfig[nversion][szgoldkey].m_nDetailtype ~= n_golddetail) then -- script viet hoa By http://tranhba.com  tr� th� nh�t b�n ngo�i , t�t c� m�nh v�n c�ng ��p �ng c�ng ch�ng lo�i 
CreateTaskSay( { "<dec><npc> h�p th�nh trang b� c�n ph�i c� trang b� m�nh v�n , ng��i cho ta trang b� m�nh v�n kh�ng ��ng , kh�ng th� h�p th�nh .", 
" ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i �i ./want_compose", 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 

local n_sid = tb_p[2] 
if tb_tgot[n_sid] then -- script viet hoa By http://tranhba.com  th� hai t� gi�ng nhau m�nh v�n �i v�o 
CreateTaskSay( { format("<dec><npc> ta kh�ng c�n 2 kh�i gi�ng nhau trang b� m�nh v�n <color=yellow>%s<color> c�n <color=yellow>%s<color> <color=yellow> kh�i %s<color>, nh� nga ?",szgoldname,nPieceSum,szgoldname), 
" ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i �i ./want_compose", 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 
tb_tgot[n_sid] = 1 -- script viet hoa By http://tranhba.com  �� c� m�nh v�n d�u hi�u 
end 
-- script viet hoa By http://tranhba.com  an to�n ki�m tra , ban b� sau c� th� b�i b� # n�u nh� c� l�ng tin l�i c�a # 
local szkey = format("[0,%d]",n_golddetail) 
if g_aryRecoinConfig[nversion][szkey] == nil then 
CreateTaskSay( { "<dec><npc> ph�t sinh h� th�ng sai l�m ?","Ng�t .../cancel" } ); 
local str = "do_compose ERROR!!! not tb_tgot "..i; 
WriteLog(format("[ h�p th�nh ho�ng kim trang b� m�nh v�n ] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str)); 
end 
for i = g_aryRecoinConfig[nversion][szkey].m_nFirstPieceDetail,g_aryRecoinConfig[nversion][szkey].m_nPieceSum-1 do 
if not tb_tgot[i] then 
CreateTaskSay( { "<dec><npc> ph�t sinh h� th�ng sai l�m ?","Ng�t .../cancel" } ); 
local str = "do_compose ERROR!!! not tb_tgot "..i; 
WriteLog(format("[ h�p th�nh ho�ng kim trang b� m�nh v�n ] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str)); 
return 
end 
end 
-- script viet hoa By http://tranhba.com  san nguy�n li�u 
local bBind = nil 
for i=1, n_count do 
local nIdx = GetGiveItemUnit(i) 
if (GetItemBindState(nIdx) ~= 0) then 
bBind = 1 
end 
if (RemoveItemByIndex(nIdx) ~= 1) then 
WriteLog(format("< h�p th�nh ho�ng kim trang b� m�nh v�n > %s\t%s\t%s\t th� ti�u nguy�n li�u th�t b�i \t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(GetGiveItemUnit(i)))); 
return 
end 
end 
-- script viet hoa By http://tranhba.com  cho v�t ph�m 

local str = format("H�p th�nh <color=yellow>%s<color> th�nh c�ng !",szgoldname) 
Msg2Player(str) 
local nItem = AddGoldItem(n_goldgenre,n_golddetail) 
local szItemInfo = getItemInfo(nItem); 
-- script viet hoa By http://tranhba.com  ch� c�n nguy�n li�u trung c� tr�i ��nh ho�c m� tr�i tr�ng th�i , h�p ra ��ch ho�ng kim v� tr�i ��nh 
if (bBind) then 
BindItem(nItem) 
end 
-- script viet hoa By http://tranhba.com AddGlobalNews("T�c truy�n nghe th�y "..GetName().." d�ng trang b� m�nh v�n th�nh c�ng h�p th�nh "..szgoldname.." . ") 
WriteLog(format("[ h�p th�nh ho�ng kim trang b� m�nh v�n ] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str)); 
writeRecoinLog("[ ho�ng kim m�nh v�n h�p th�nh ho�ng kim ]", szItemInfo); 
end 

-- script viet hoa By http://tranhba.com  ho�ng kim trang b� m�nh v�n trao ��i 
-- script viet hoa By http://tranhba.com  
function exchange_entry() 
local aryDescribe = 
{ 
format("<dec><npc> ch� c�n c�m <color=yellow>%s ti�n <color> ta �em gi�p ng��i ��i th�nh t��ng �ng trang b� m�nh v�n .",FRAME_EXCHANGE_COIN), 
" kh�ng c�n �� � , ta ch�ng qua l� t�y ti�n n�i m�t ch�t m� th�i ./cancel", 
}; 
for i = 9, 1, -1 do 
tinsert(aryDescribe, 2, format("M�nh v�n %d/#want_exchange(%d)",i,i)); 
end 
CreateTaskSay(aryDescribe); 
end 

function want_exchange(nFrameIdx) 
if (CalcItemCount(3, 4, 417, 1, -1) < FRAME_EXCHANGE_COIN) then 
CreateTaskSay( { format("<dec><npc> kh�ng c� ti�n th� n�o ��i l�y trang b� m�nh v�n , mu�n t�m �� <color=yellow>%s ti�n <color> sau �� tr� v� g�p ta .",FRAME_EXCHANGE_COIN), 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 
SetTaskTemp(TASKTMP_EXCHANGE_FRAME, nFrameIdx); 
GiveItemUI("Thay ��i qu�n �o b� m�nh v�n ","Thi�t tr� m�t kh�i mu�n ��i trang b� m�nh v�n , ti�n �em b� t� ��ng kh�u tr� ", "do_exchange", "cancel", 1); 
end 

function do_exchange(nItemCount) 
if (nItemCount ~= 1) then 
CreateTaskSay( { "<dec><npc> m�t l�n ��i m�t m�nh .", 
" ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i �i ./exchange_entry", 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 
local nItemIdx = GetGiveItemUnit(1); 
local tbItemProp = pack(GetItemProp(nItemIdx)); 
local nFirstPiece,nPieceSum,nPieceNo,nFirstPiece 
if GetItemStackCount(nItemIdx) ~= 1 then 
CreateTaskSay( { "<dec><npc> trang b� m�nh v�n kh�ng th� t�i di�n , m�i l�n ch� c� th� ��i m�t kh�i .", 
" ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i �i ./exchange_entry", 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
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
CreateTaskSay( { "<dec><npc> ta ch� c� th� gi�p ng��i ��i ho�ng kim trang b� m�nh v�n , ng��i cho ta c�i g� nha ?", 
" ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i �i ./exchange_entry", 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 
local nExchangeFrameIdx = GetTaskTemp(TASKTMP_EXCHANGE_FRAME); 
if (nExchangeFrameIdx < 1 or nExchangeFrameIdx > nPieceSum) then 
CreateTaskSay( { format("<dec><npc> m�nh v�n <color=yellow>%s<color> mu�n t�ng c�ng ��i <color=yellow>%s<color> kh�i , kh�ng c� th� <color=yellow>%s<color> kh�i .",szGoldName,nPieceSum,nExchangeFrameIdx), 
" ha ha , ��i hi�p c�ng c� kh�ng c�n th�n th�i �i�m , �� cho ta t�i �i ./exchange_entry", 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 
if (CalcItemCount(3, 4, 417, 1, -1) < FRAME_EXCHANGE_COIN) then 
CreateTaskSay( { format("<dec><npc> kh�ng c� ti�n th� n�o thay ��i qu�n �o b� m�nh v�n , nhanh �i t�m �� <color=yellow>%s ��ng ti�n <color> sau �� t�i th�y ta .",FRAME_EXCHANGE_COIN), 
" th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./cancel" } ); 
return 
end 
if (ConsumeItem(3, FRAME_EXCHANGE_COIN, 4, 417, 1, -1) ~= 1) then 
WriteLog(format("[ ��i ho�ng kim m�nh v�n ] %s\t%s\t%s\t th�ng xe ��ng ti�n th�t b�i .",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName())); 
return 
end 
if (RemoveItemByIndex(nItemIdx) ~= 1) then 
WriteLog(format("[ ��i ho�ng kim m�nh v�n ] %s\t%s\t%s\t th� ti�u v�t ph�m th�t b�i \t%s",GetLocalDate("%Y-%m-%d %H:%M:%S",GetAccount(),GetName(),GetItemName(nItemIdx)))); 
end 
	AddItem(4, nFirstPiece + nExchangeFrameIdx - 1, 1, 0, 0, 0);
CreateTaskSay( { format("<dec><npc> t�m ���c th� <color=yellow>%s<color> kh�i <color=yellow>%s<color>, mau c�m �i !",nExchangeFrameIdx,szGoldName), 
" c�m �n /cancel" } ); 
	WriteLog(format("[���ƽ���Ƭ] %s\t%s\t%s\t%s ��(%s) ����(%s)",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szGoldName,tbItemProp[2],(nFirstPiece + nExchangeFrameIdx - 1)));
end 

function pack(...) 
return arg 
end 

function cancel() 
end 

-- script viet hoa By http://tranhba.com {randseed,q,g,d,P,level,series,lucky,<magic1,magic2,magic3,magic4,magic5,magic6>}(gentime)(platinalvl) 

-- script viet hoa By http://tranhba.com [ th�i gian ] [ ho�ng kim h�y �i ph�n ] Account Name 
-- script viet hoa By http://tranhba.com [ th�i gian ] ch� y�u t�i li�u # 

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
