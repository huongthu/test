

Include("\\script\\global\\recoin_goldenequip.lua") 
Include("\\script\\global\\equipenchase_help.lua") 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") 
Include("\\script\\global\\紫色及黄金装备铸造.lua")
Include("\\script\\global\\shenmi_chapman.lua"); -- script viet hoa By http://tranhba.com  s鯽 trang b� ch鴆 n╪g 



Include("\\script\\activitysys\\npcdailog.lua") 
Include("\\script\\misc\\eventsys\\type\\npc.lua") 



-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  c� nh i tho筰 th祅h ph� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function tiejiang_city(...) 

local nNpcIndex = GetLastDiagNpc(); 
-- script viet hoa By http://tranhba.com local szNpcName = GetNpcName(nNpcIndex); 
-- script viet hoa By http://tranhba.com if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end 
local szNpcName = " th� r蘮 " 
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


tbDailog:AddOptEntry("Giao d辌h ", yes); 
tbDailog:AddOptEntry("Tinh luy謓 th筩h c鯽 h祅g ", energy_sale); 
tbDailog:AddOptEntry("Giao d辌h ", yes); 

tbDailog:AddOptEntry("V藅 ph萴 ch� t筼 ", onFoundry); 

tbDailog:AddOptEntry("V藅 ph萴 v﹜ quanh ", jewel_yes); 
tbDailog:AddOptEntry("X� l� < h� h筰 ch trang b� >", deal_brokenequip); 
tbDailog:AddOptEntry("Ta n nh薾 nhi謒 v� s� nh藀 ", education_tiejiang); 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("Ta t飝 ti謓 甶 d筼 m閠 ch髏 ", no, {}); 
tbDailog:Show() 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  c� nh i tho筰 tay m韎 th玭 -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function tiejiang_village(...) 
local aryParam = arg; 
local aryDescribe = { 
-- script viet hoa By http://tranhba.com szDialog, -- script viet hoa By http://tranhba.com  th� r蘮 ch n鉯 chuy謓 , � c竎 th祅h ph� th� r蘮 ch� 
"Giao d辌h /yes", 

-- script viet hoa By http://tranhba.com Change request 04/06/2011, #ng ch? t v﹏ trang b? b ng h kim - Modified by DinhHQ - 20110605 
-- script viet hoa By http://tranhba.com "V# ph# #c/onFoundry", 

"Ta n nh薾 nhi謒 v� s� nh藀 /tboss", 
"K誸 th骳 i tho筰 /no", 
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

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  v﹜ quanh -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function jewel_yes() 
CreateTaskSay({"<dec><npc> th駓 tinh v﹜ quanh thi謕 c藀 ng� h祅h th╪g b籲g # linh kh� v薾 chuy觧 phng ph竝 , tuy謙 kh玭g ph秈 nh﹏ l鵦 nh璶g tr綾 , ch璦 ch綾 th藅 c� th� nh� ngi hy v鋘g bi課 th祅h tuy謙 th� c鵦 ph萴 # m� v� kh�  ph� c飊g v鵦 ngo筰 k� tr﹏ l� c� th� th祅h c玭g s鯽 i trang b� ch c蕄 b薱 . ngi th藅 quy誸 nh v﹜ quanh trang b� c馻 ngi sao ? ","B総 u v﹜ quanh /jewel_yes1", " li猲 quan t韎 v﹜ quanh /help","Ta suy ngh� l筰 m閠 ch髏 /no"}); 
end 

function jewel_yes1() 
EnchaseItem() 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -No-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function no() 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  tinh luy謓 th筩h -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function energy_sale() 
CreateStores(); 
AddShop2Stores(174,"Tinh luy謓 c鯽 h祅g ", 15, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(179,"Ho箃 ng c鯽 h祅g ", 1, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(93,"Ph骳 duy猲 c鯽 h祅g ", 2, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(98,"T鑞g kim c鯽 h祅g ", 4, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(146,"Vinh d� c鯽 h祅g ", 11, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(173,"Uy v鋘g c鯽 h祅g ", 13, 100, "fBuyCallBack(%d,%d)"); 
OpenStores(); 
end 

function fBuyCallBack(nItemIdx, nPrice) 
local nCount = 1 
local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIdx) 
if itemgenre == 6 and itemdetail == 1 and itemParticular == 2317 then 
-- script viet hoa By http://tranhba.com  th� luy謓 thi誴 
AddStatData("jlxiaohao_shiliantiegoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2355 then 
-- script viet hoa By http://tranhba.com  huy襫 thi猲 c萴 nang 
AddStatData("jlxiaohao_xuantiangoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2369 then 
-- script viet hoa By http://tranhba.com  thanh c﹗ l祄 
AddStatData("jlxiaohao_qingjulinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2353 then 
-- script viet hoa By http://tranhba.com  v﹏ l閏 l祄 
AddStatData("jlxiaohao_yunlulinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2352 then 
-- script viet hoa By http://tranhba.com  thng lang l祄 
AddStatData("jlsxiaohao_canglanglinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2351 then 
-- script viet hoa By http://tranhba.com  huy襫 vi猲 l祄 
AddStatData("jlxiaohao_xuanyuanlinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2350 then 
-- script viet hoa By http://tranhba.com  t� m穘g l祄 
AddStatData("jlxiaohao_zimanglinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2744 then 
-- script viet hoa By http://tranhba.com  nh� � c竔 ch譨 kh鉧 
AddStatData("jlxiaohao_ruyiyaoshigoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 1617 then 
-- script viet hoa By http://tranhba.com  vi猰  l祄 
AddStatData("jlxiaohao_yandilinggoumai", nCount) 
end 
return 1 
end 
