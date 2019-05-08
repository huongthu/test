

Include("\\script\\global\\recoin_goldenequip.lua") 
Include("\\script\\global\\equipenchase_help.lua") 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") 
Include("\\script\\global\\×ÏÉ«¼°»Æ½ð×°±¸ÖýÔì.lua")
Include("\\script\\global\\shenmi_chapman.lua"); -- script viet hoa By http://tranhba.com  söa trang bÞ chøc n¨ng 



Include("\\script\\activitysys\\npcdailog.lua") 
Include("\\script\\misc\\eventsys\\type\\npc.lua") 



-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  cè ®Þnh ®èi tho¹i thµnh phè -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function tiejiang_city(...) 

local nNpcIndex = GetLastDiagNpc(); 
-- script viet hoa By http://tranhba.com local szNpcName = GetNpcName(nNpcIndex); 
-- script viet hoa By http://tranhba.com if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end 
local szNpcName = " thî rÌn " 
local tbDailog = DailogClass:new(szNpcName); 
G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex); 

EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex) 

local aryParam = arg; 

if (getn(aryParam) == 0) then 
tbDailog.szTitleMsg = TIEJIANG_DIALOG 
else 
for i = 1, getn(aryParam) do 
if (i == 1) then 
tbDailog.szTitleMsg = TIEJIANG_DIALOG 
else 
				local _,_, szOpt, szFun = strfind(aryParam[i], "([^/]+)/([^/]+)")
local fn = getglobal(szFun) 
if fn then 
tbDailog:AddOptEntry(szOpt, fn); 
end 
end; 
end; 
end; 


tbDailog.szTitleMsg = gsub(tbDailog.szTitleMsg, "<dec>", "") 


tbDailog:AddOptEntry("Giao dÞch ", yes); 
tbDailog:AddOptEntry("Tinh luyÖn th¹ch cöa hµng ", energy_sale); 
tbDailog:AddOptEntry("Giao dÞch ", yes); 

tbDailog:AddOptEntry("VËt phÈm chÕ t¹o ", onFoundry); 

tbDailog:AddOptEntry("VËt phÈm v©y quanh ", jewel_yes); 
tbDailog:AddOptEntry("Xö lý < h­ h¹i ®Ých trang bÞ >", deal_brokenequip); 
tbDailog:AddOptEntry("Ta ®Õn nhËn nhiÖm vô s¬ nhËp ", education_tiejiang); 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("Ta tïy tiÖn ®i d¹o mét chót ", no, {}); 
tbDailog:Show() 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  cè ®Þnh ®èi tho¹i tay míi th«n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function tiejiang_village(...) 
local aryParam = arg; 
local aryDescribe = { 
-- script viet hoa By http://tranhba.com szDialog, -- script viet hoa By http://tranhba.com  thî rÌn ®Ých nãi chuyÖn , ë c¸c thµnh phè thî rÌn chç 
"Giao dÞch /yes", 

-- script viet hoa By http://tranhba.com Change request 04/06/2011, #ng ch? t v©n trang b? b ®ång h kim - Modified by DinhHQ - 20110605 
-- script viet hoa By http://tranhba.com "V# ph# #c/onFoundry", 

"Ta ®Õn nhËn nhiÖm vô s¬ nhËp /tboss", 
"KÕt thóc ®èi tho¹i /no", 
}; 

if (getn(aryParam) == 0) then 
tinsert(aryDescribe, 1, TIEJIANG_DIALOG) 
else 
for i = 1, getn(aryParam) do 
if (i == 1) then 
tinsert(aryDescribe, 1, aryParam[i]); 
else 
tinsert(aryDescribe, 2, aryParam[i]); 
end; 
end; 
end; 
CreateTaskSay(aryDescribe); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  v©y quanh -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function jewel_yes() 
CreateTaskSay({"<dec><npc> thñy tinh v©y quanh thiÖp cËp ngò hµnh th¨ng b»ng # linh khÝ vËn chuyÓn ph­¬ng ph¸p , tuyÖt kh«ng ph¶i nh©n lùc nh­ng tr¾c , ch­a ch¾c thËt cã thÓ nh­ ng­¬i hy väng biÕn thµnh tuyÖt thÕ cùc phÈm # mµ vò khÝ ®å phæ cïng vùc ngo¹i kú tr©n lµ cã thÓ thµnh c«ng söa ®æi trang bÞ ®Ých cÊp bËc . ng­¬i thËt quyÕt ®Þnh v©y quanh trang bÞ cña ng­¬i sao ? ","B¾t ®Çu v©y quanh /jewel_yes1", " liªn quan tíi v©y quanh /help","Ta suy nghÜ l¹i mét chót /no"}); 
end 

function jewel_yes1() 
EnchaseItem() 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -No-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function no() 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  tinh luyÖn th¹ch -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function energy_sale() 
CreateStores(); 
AddShop2Stores(174,"Tinh luyÖn cöa hµng ", 15, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(179,"Ho¹t ®éng cöa hµng ", 1, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(93,"Phóc duyªn cöa hµng ", 2, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(98,"Tèng kim cöa hµng ", 4, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(146,"Vinh dù cöa hµng ", 11, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(173,"Uy väng cöa hµng ", 13, 100, "fBuyCallBack(%d,%d)"); 
OpenStores(); 
end 

function fBuyCallBack(nItemIdx, nPrice) 
local nCount = 1 
local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIdx) 
if itemgenre == 6 and itemdetail == 1 and itemParticular == 2317 then 
-- script viet hoa By http://tranhba.com  thö luyÖn thiÕp 
AddStatData("jlxiaohao_shiliantiegoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2355 then 
-- script viet hoa By http://tranhba.com  huyÒn thiªn cÈm nang 
AddStatData("jlxiaohao_xuantiangoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2369 then 
-- script viet hoa By http://tranhba.com  thanh c©u lµm 
AddStatData("jlxiaohao_qingjulinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2353 then 
-- script viet hoa By http://tranhba.com  v©n léc lµm 
AddStatData("jlxiaohao_yunlulinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2352 then 
-- script viet hoa By http://tranhba.com  th­¬ng lang lµm 
AddStatData("jlsxiaohao_canglanglinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2351 then 
-- script viet hoa By http://tranhba.com  huyÒn viªn lµm 
AddStatData("jlxiaohao_xuanyuanlinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2350 then 
-- script viet hoa By http://tranhba.com  tö m·ng lµm 
AddStatData("jlxiaohao_zimanglinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2744 then 
-- script viet hoa By http://tranhba.com  nh­ ý c¸i ch×a khãa 
AddStatData("jlxiaohao_ruyiyaoshigoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 1617 then 
-- script viet hoa By http://tranhba.com  viªm ®Õ lµm 
AddStatData("jlxiaohao_yandilinggoumai", nCount) 
end 
return 1 
end 
