IncludeLib("ITEM"); 
IncludeLib("FILESYS") 

TB_PLATINAEQ_GOLDEQ ={ 
-- script viet hoa By http://tranhba.com [ bπch kim ID] = { bπch kim ID, hoµng kim ID, trang bﬁ th®ng c p gi∏ trﬁ l≠Óng h÷ sË , trang bﬁ t™n }; 
-- script viet hoa By http://tranhba.com [1] = {1, 1, 4,"MÈng long chi Æang hoµng t®ng mπo "}, 
} 

function LoadPlatinaEquipSetting() 

	local b1 = TabFile_Load("\\settings\\task\\equipex\\platina_def.txt", "PlatinaData")
if b1~=1 then 
print("K’ ti’p th®ng c p bπch kim trang bﬁ tin t¯c th t bπi !") 
return 
end 
local nRowCount = TabFile_GetRowCount("PlatinaData", "EQUIPNAME") 

for y = 2, nRowCount do 
local platinaid = tonumber(TabFile_GetCell("PlatinaData", y, "PLATINAID")); 

local goldid = tonumber(TabFile_GetCell("PlatinaData", y, "GOLDID")); 
local taskrate = tonumber(TabFile_GetCell("PlatinaData", y, "TASKRATE")); 
local name = TabFile_GetCell("PlatinaData", y, "EQUIPNAME"); 

TB_PLATINAEQ_GOLDEQ[platinaid] = {platinaid, goldid, taskrate, name}; 
end 
end; 

LoadPlatinaEquipSetting() 

-- script viet hoa By http://tranhba.com  bπch kim trang bﬁ c∏c c p bÀc th®ng c p Æ›ch gi∏ trﬁ l≠Óng 
PLATINAEQ_UPGRADERATE_BASIC = 10000; 
TB_PLATINAEQ_UPGRADERATE = { 
[0] = 2000*PLATINAEQ_UPGRADERATE_BASIC, 
[1] = 4000*PLATINAEQ_UPGRADERATE_BASIC, 
[2] = 6000*PLATINAEQ_UPGRADERATE_BASIC, 
[3] = 8000*PLATINAEQ_UPGRADERATE_BASIC, 
[4] = 10000*PLATINAEQ_UPGRADERATE_BASIC, 
[5] = 15000*PLATINAEQ_UPGRADERATE_BASIC, 
[6] = 30000*PLATINAEQ_UPGRADERATE_BASIC, 
[7] = 50000*PLATINAEQ_UPGRADERATE_BASIC, 
[8] = 80000*PLATINAEQ_UPGRADERATE_BASIC, 
[9] = 120000*PLATINAEQ_UPGRADERATE_BASIC, 
}; 

-- script viet hoa By http://tranhba.com  bπch kim th®ng c p Æ›ch bæt buÈc tµi li÷u 
tb_upgrade_material = 
{ 
-- script viet hoa By http://tranhba.com [ tµi li÷u ID] = { tµi li÷u t™n , gi∏ trﬁ l≠Óng , tµi li÷u Level , c«n sË l≠Óng , th®ng c p m y c p bπch kim } 
["6,1,1308"] = {szName = " bÊ ngµy Æ∏ b” phi’n # ti”u #", nValue = 20000000}, 
["6,1,1309"] = {szName = " bÊ ngµy Æ∏ b” phi’n # trung #", nValue = 100000000}, 
["6,1,1310"] = {szName = " bÊ ngµy Æ∏ b” phi’n # Æπi #", nValue = 1000000000}, 
["6,1,2127"] = {szName = " bæc Æ»u luy÷n kim thuÀt ( ph«n Æ«u ti™n )", nValue = 0, nCount = 1, nUpgradeLevel = 6}, 
["6,1,2160"] = {szName = " bæc Æ»u luy÷n kim thuÀt # cuËn hai #", nValue = 0, nCount = 1, nUpgradeLevel = 7}, 
["6,1,2161"] = {szName = " bæc Æ»u luy÷n kim thuÀt # cuËn ba #", nValue = 0, nCount = 1, nUpgradeLevel = 8}, 
["6,1,2162"] = {szName = " bæc Æ»u luy÷n kim thuÀt # cuËn bËn #", nValue = 0, nCount = 1, nUpgradeLevel = 9}, 
}; 

tb_gold2planita_material = 
{ 
["6,1,398"] = {szName = " th«n b› qu∏ng thπch ", nCount = 1}, 
["6,1,147"] = {szName = " c p t∏m huy“n tinh qu∏ng thπch ", nItemLevel = 8, nCount = 1}, 
["6,1,1309"] = {szName = " bÊ ngµy Æ∏ b” phi’n # trung #", nCount = 1}, 
}; 

tbUpGradeProcess = { 
[1] = { 
tbUpItemList = tb_gold2planita_material, 
szErrorMsg = "<dec><npc> sai l«m <color=yellow> bπch kim trang bﬁ <color>, ta cﬂn c«n <color=yellow> th«n b› qu∏ng thπch <color>, color=yellow> c p t∏m huy“n tinh qu∏ng thπch <color> , <color=yellow> bÊ ngµy Æ∏ b” phi’n # trung #<color>, xin/mÍi l≠u lπi nh˜ng vÀt kh∏c .", 
nItemQuality = 1, 
szGetEquipIDFunc = "GetGlodEqIndex", 
szContinueFunc = "want_upgoldeq", 
szDoProcessFunc = "UpgradePlatinaFromGoldItem"}, 
[3] = { 
tbUpItemList = tb_upgradematerial, 
szErrorMsg = "<dec><npc> sai l«m <color=yellow> bπch kim trang bﬁ <color>, ta cﬂn c«n <color=yellow> bÊ ngµy Æ∏ b” phi’n <color> xin/mÍi l≠u lπi nh˜ng vÀt kh∏c .", 
nItemQuality = 4, 
szGetEquipIDFunc = "GetPlatinaEquipIndex", 
szContinueFunc = "want_upplatinaeq", 
szDoProcessFunc = "UpgradePlatinaItem"}, 
} 
