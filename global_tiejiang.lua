

Include("\\script\\global\\recoin_goldenequip.lua") 
Include("\\script\\global\\equipenchase_help.lua") 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") 
Include("\\script\\global\\��ɫ���ƽ�װ������.lua")
Include("\\script\\global\\shenmi_chapman.lua"); -- script viet hoa By http://tranhba.com  s�a trang b� ch�c n�ng 



Include("\\script\\activitysys\\npcdailog.lua") 
Include("\\script\\misc\\eventsys\\type\\npc.lua") 



-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  c� ��nh ��i tho�i th�nh ph� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function tiejiang_city(...) 

local nNpcIndex = GetLastDiagNpc(); 
-- script viet hoa By http://tranhba.com local szNpcName = GetNpcName(nNpcIndex); 
-- script viet hoa By http://tranhba.com if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end 
local szNpcName = " th� r�n " 
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


tbDailog:AddOptEntry("Giao d�ch ", yes); 
tbDailog:AddOptEntry("Tinh luy�n th�ch c�a h�ng ", energy_sale); 
tbDailog:AddOptEntry("Giao d�ch ", yes); 

tbDailog:AddOptEntry("V�t ph�m ch� t�o ", onFoundry); 

tbDailog:AddOptEntry("V�t ph�m v�y quanh ", jewel_yes); 
tbDailog:AddOptEntry("X� l� < h� h�i ��ch trang b� >", deal_brokenequip); 
tbDailog:AddOptEntry("Ta ��n nh�n nhi�m v� s� nh�p ", education_tiejiang); 
-- script viet hoa By http://tranhba.com tbDailog:AddOptEntry("Ta t�y ti�n �i d�o m�t ch�t ", no, {}); 
tbDailog:Show() 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  c� ��nh ��i tho�i tay m�i th�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function tiejiang_village(...) 
local aryParam = arg; 
local aryDescribe = { 
-- script viet hoa By http://tranhba.com szDialog, -- script viet hoa By http://tranhba.com  th� r�n ��ch n�i chuy�n , � c�c th�nh ph� th� r�n ch� 
"Giao d�ch /yes", 

-- script viet hoa By http://tranhba.com Change request 04/06/2011, #ng ch? t v�n trang b? b ��ng h kim - Modified by DinhHQ - 20110605 
-- script viet hoa By http://tranhba.com "V# ph# #c/onFoundry", 

"Ta ��n nh�n nhi�m v� s� nh�p /tboss", 
"K�t th�c ��i tho�i /no", 
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

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  v�y quanh -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function jewel_yes() 
CreateTaskSay({"<dec><npc> th�y tinh v�y quanh thi�p c�p ng� h�nh th�ng b�ng # linh kh� v�n chuy�n ph��ng ph�p , tuy�t kh�ng ph�i nh�n l�c nh�ng tr�c , ch�a ch�c th�t c� th� nh� ng��i hy v�ng bi�n th�nh tuy�t th� c�c ph�m # m� v� kh� �� ph� c�ng v�c ngo�i k� tr�n l� c� th� th�nh c�ng s�a ��i trang b� ��ch c�p b�c . ng��i th�t quy�t ��nh v�y quanh trang b� c�a ng��i sao ? ","B�t ��u v�y quanh /jewel_yes1", " li�n quan t�i v�y quanh /help","Ta suy ngh� l�i m�t ch�t /no"}); 
end 

function jewel_yes1() 
EnchaseItem() 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -No-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function no() 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  tinh luy�n th�ch -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function energy_sale() 
CreateStores(); 
AddShop2Stores(174,"Tinh luy�n c�a h�ng ", 15, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(179,"Ho�t ��ng c�a h�ng ", 1, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(93,"Ph�c duy�n c�a h�ng ", 2, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(98,"T�ng kim c�a h�ng ", 4, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(146,"Vinh d� c�a h�ng ", 11, 100, "fBuyCallBack(%d,%d)"); 
AddShop2Stores(173,"Uy v�ng c�a h�ng ", 13, 100, "fBuyCallBack(%d,%d)"); 
OpenStores(); 
end 

function fBuyCallBack(nItemIdx, nPrice) 
local nCount = 1 
local itemgenre, itemdetail, itemParticular = GetItemProp(nItemIdx) 
if itemgenre == 6 and itemdetail == 1 and itemParticular == 2317 then 
-- script viet hoa By http://tranhba.com  th� luy�n thi�p 
AddStatData("jlxiaohao_shiliantiegoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2355 then 
-- script viet hoa By http://tranhba.com  huy�n thi�n c�m nang 
AddStatData("jlxiaohao_xuantiangoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2369 then 
-- script viet hoa By http://tranhba.com  thanh c�u l�m 
AddStatData("jlxiaohao_qingjulinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2353 then 
-- script viet hoa By http://tranhba.com  v�n l�c l�m 
AddStatData("jlxiaohao_yunlulinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2352 then 
-- script viet hoa By http://tranhba.com  th��ng lang l�m 
AddStatData("jlsxiaohao_canglanglinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2351 then 
-- script viet hoa By http://tranhba.com  huy�n vi�n l�m 
AddStatData("jlxiaohao_xuanyuanlinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2350 then 
-- script viet hoa By http://tranhba.com  t� m�ng l�m 
AddStatData("jlxiaohao_zimanglinggoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 2744 then 
-- script viet hoa By http://tranhba.com  nh� � c�i ch�a kh�a 
AddStatData("jlxiaohao_ruyiyaoshigoumai", nCount) 
elseif itemgenre == 6 and itemdetail == 1 and itemParticular == 1617 then 
-- script viet hoa By http://tranhba.com  vi�m �� l�m 
AddStatData("jlxiaohao_yandilinggoumai", nCount) 
end 
return 1 
end 
