-- script viet hoa By http://tranhba.com  ph�t �c khi�n cho 
-- script viet hoa By http://tranhba.com hehongpeng 2004-12-27 
Include("\\script\\global\\shangchenghead.lua") 
-- script viet hoa By http://tranhba.com  ��nh ngh�a to�n c�c thay ��i l��ng ghi ch�p nh� ch�i mu�n tr�ng ph�t c�i �� th�nh ph� 
nGlobalCityIndex = 0 

CityData = {0, 0, 0, 0, 0, 0, 0}; 

function main() 
if (nil) then 
Say("S� li�u sai l�m . ", 0) 
return 
end 
-- script viet hoa By http://tranhba.com  h�c l�y t�n m�m v�n ki�n , b�o ��m ch� h�c l�y m�t l�n 
loadsavevalue() 

local aryszContent = 
{ 
"<#> ph�t �c khi�n cho : ta l� tr�ng ph�t ng��i x�u ��ch s� gi� , ta c� th� gi�p ng��i c�i g� ?", 
"<#> tu�n tra c�c th�nh ph� chi�n c�ng /onchecknum", 
"<#> tr�ng ph�t chi�m l�nh ph��ng t��ng bang h�i /onpunish_fengxiang", 
"<#> tr�ng ph�t chi�m l�nh th�nh �� bang h�i /onpunish_chengdu", 
"<#> tr�ng ph�t chi�m l�nh ��i L� bang h�i /onpunish_dali", 
"<#> tr�ng ph�t chi�m l�nh bi�n kinh bang h�i /onpunish_bianjing", 
"<#> tr�ng ph�t chi�m l�nh t��ng d��ng bang h�i /onpunish_xiangyang", 
"<#> tr�ng ph�t chi�m l�nh D��ng Ch�u bang h�i /onpunish_yangzhou", 
"<#> tr�ng ph�t chi�m l�nh tr��c khi an bang h�i /onpunish_linan", 
"<#> ta ch�ng qua l� t�i �i d�o m�t ch�t /oncancel", 
} 

-- script viet hoa By http://tranhba.com  c� th� kh�ng th� d�ng ��m t� t�i th�c hi�n 
local aryCallBackFun = { 
"/onpunish_fengxiang", 
"/onpunish_chengdu", 
"/onpunish_dali", 
"/onpunish_bianjing", 
"/onpunish_xiangyang", 
"/onpunish_yangzhou", 
"/onpunish_linan" 
} 
local nNum 
for nCityIndex=1, 7 do 
strTongName = GetCityOwner(nCityIndex) 
if (strTongName == nil or strTongName == "") then 
			aryszContent[nCityIndex + 2] = "<#>"..arraycityindextoname[nCityIndex].."�ް��ռ�죬�޷����гͷ�/oncancel"
else 
nNum = GetGlbValue(arraycitytoglobalvalue[nCityIndex]) 
			aryszContent[nCityIndex + 2] = "<#>�ͷ����"..strTongName.."ռ��ĳ���"..arraycityindextoname[nCityIndex].."(���й���:"..nNum..")"..aryCallBackFun[nCityIndex]
end 
end 

Say(aryszContent[1], 9, aryszContent[2],aryszContent[3],aryszContent[4],aryszContent[5],aryszContent[6],aryszContent[7],aryszContent[8],aryszContent[9], aryszContent[10]); 
end 

function onpunish() 
-- script viet hoa By http://tranhba.com  c�n c� b�n �� t�c d�n tr�ng ph�t 
if (nGlobalCityIndex < 1) then 
Say("<#> kh�ng c� mu�n tr�ng ph�t th�nh ph� ", 0) 
return 
end 

local strCityTongName = GetCityOwner(nGlobalCityIndex) 
if (strCityTongName == nil or strCityTongName == "" ) then 
Say("<#> th�nh ph� <color=red>"..arraycityindextoname[nIndex].."<color> kh�ng ng��i chi�m l�nh , kh�ng c�ch n�o ti�n h�nh tr�ng ph�t ", 0) 
return 
end 

local strCityTongName = GetCityOwner(nGlobalCityIndex) 
local nNum = GetGlbValue(arraycitytoglobalvalue[nGlobalCityIndex]) 
-- script viet hoa By http://tranhba.com  m� ra cho c�ng gi�i m�t 
GiveItemUI("�� giao ph�t �c l�m ","Tr�ng ph�t th�nh ph� "..arraycityindextoname[nGlobalCityIndex]..", th�nh ph� chi�m l�nh bang h�i "..strCityTongName..", tr��c m�t n�n th�nh ��ch chi�n c�ng v� :"..nNum, "onsubmitconfirm", "oncancel" ) 
end 

function onconfirm(nIndex) 
local strCityTongName = GetCityOwner(nIndex) 
if (strCityTongName == nil or strCityTongName == "" ) then 
Say("<#> th�nh ph� <color=red>"..arraycityindextoname[nIndex].."<color> kh�ng ng��i chi�m l�nh , kh�ng c�ch n�o ti�n h�nh tr�ng ph�t ", 0) 
return 
end 

-- script viet hoa By http://tranhba.com  cho to�n c�c thay ��i l��ng ph� tr� gi� 
nGlobalCityIndex = nIndex 
strMsg={ 
"<#> chi�m l�nh <color=red>"..arraycityindextoname[nIndex].."<color> th�nh ph� ��ch bang h�i l� :<color=red>"..strCityTongName.."<color>, ng��i nh�t ��nh ph�i s� d�ng ph�t �c l�m sao ? ", 
"<#> x�c ��nh /onpunish", 
"<#> ta suy ngh� m�t ch�t n�a /oncancel" 
}; 

Say(strMsg[1], 2, strMsg[2], strMsg[3]); 
end 

function onpunish_fengxiang() 
onconfirm(1) 
end 

function onpunish_chengdu() 
onconfirm(2) 
end 

function onpunish_dali() 
onconfirm(3) 
end 

function onpunish_bianjing() 
onconfirm(4) 
end 

function onpunish_xiangyang() 
onconfirm(5) 
end 

function onpunish_yangzhou() 
onconfirm(6) 
end 

function onpunish_linan() 
onconfirm(7) 
end 

function oncancel() 
return 
end 

function onchecknum() 
-- script viet hoa By http://tranhba.com  tu�n tra c�c bang s� th��ng thi�n l�m ��ch s� l��ng 
local strTongName 
local nCityIndex 
local arr = {} 
local strInfo1 = "" 
local strInfo2 = "" 
for nCityIndex=1, 4 do 
strTongName = GetCityOwner(nCityIndex) 
local nNum = GetGlbValue(arraycitytoglobalvalue[nCityIndex]) 
if (strTongName == nil or strTongName == "") then 
arr[nCityIndex] = "<#><color=red>"..arraycityindextoname[nCityIndex].."<color> kh�ng ng��i chi�m l�nh , chi�n c�ng v� :<color=red>"..nNum.."<color>" 
else 
arr[nCityIndex] = "<#> chi�m l�nh <color=red>"..arraycityindextoname[nCityIndex].."<color> ��ch bang h�i l� :<color=red>"..strTongName.."<color>, th�nh ph� chi�n c�ng v� :<color=red>"..nNum.."<color>" 
end 
if (nCityIndex == 1) then 
strInfo = arr[nCityIndex] 
elseif (nCityIndex == 2) then 
strInfo = strInfo.."<enter>"..arr[nCityIndex] 
elseif (nCityIndex == 3) then 
strInfo1 = arr[nCityIndex] 
elseif (nCityIndex == 4) then 
strInfo1 = strInfo1.."<enter>"..arr[nCityIndex] 
end 
end 

-- script viet hoa By http://tranhba.com Talk(4, "onchecknum1", arr[1], arr[2], arr[3], arr[4]) 
Talk(2, "onchecknum1", strInfo, strInfo1) 
end 

function onchecknum1() 
-- script viet hoa By http://tranhba.com  tu�n tra c�c bang s� th��ng thi�n l�m ��ch s� l��ng 
local strTongName 
local nCityIndex 
local arr = {} 
local strInfo = "" 
local strInfo1 = "" 
for nCityIndex=5, 7 do 
strTongName = GetCityOwner(nCityIndex) 
local nNum = GetGlbValue(arraycitytoglobalvalue[nCityIndex]) 
if (strTongName == nil or strTongName == "") then 
arr[nCityIndex] = "<#><color=red>"..arraycityindextoname[nCityIndex].."<color> kh�ng ng��i chi�m l�nh , th�nh ph� chi�n c�ng v� :<color=red>"..nNum.."<color>" 
else 
arr[nCityIndex] = "<#> chi�m l�nh <color=red>"..arraycityindextoname[nCityIndex].."<color> ��ch bang h�i l� :<color=red>"..strTongName.."<color>, th�nh ph� chi�n c�ng v� :<color=red>"..nNum.."<color>" 
end 
if (nCityIndex == 5) then 
strInfo = arr[nCityIndex] 
elseif (nCityIndex == 6) then 
strInfo = strInfo.."<enter>"..arr[nCityIndex] 
else 
strInfo1 = arr[nCityIndex] 
end 
end 

-- script viet hoa By http://tranhba.com Talk(3, "", arr[5], arr[6], arr[7]) 
Talk(2, "", strInfo, strInfo1) 
end 

function onsubmitconfirm(nCount) 
if (nCount < 1) then 
Msg2Player("Ng��i kh�ng c� n�i ��ng ph�t �c l�m ") 
return 
end 

-- script viet hoa By http://tranhba.com  ph�n �o�n v�t ph�m l� hay kh�ng v� ph�t �c l�m 
for i = 1, nCount do 
local nItemIndex = GetGiveItemUnit( i ) 
ItemGenre, DetailType, ParticularType = GetItemProp(nItemIndex) 

if (ItemGenre ~= AEXP_PUNISHMEDIAL_NGENTYPE or 
DetailType ~= AEXP_PUNISHMEDIAL_DETAILTYPE or 
ParticularType ~= AEXP_PUNISHMEDIAL_PARTYPE) then 
Msg2Player("<#> ng��i th�t gi�ng nh� c� �� kh�ng ph�i l� ph�t �c l�m y�u #") 
return 0 
end 
end 

local nTotalNum = 0 
for i = 1, nCount do 
nItemIndex = GetGiveItemUnit( i ) 
		nTotalNum = nTotalNum + GetItemStackCount(nItemIndex)
RemoveItemByIndex( nItemIndex ) 
end 

local nNum = GetGlbValue(arraycitytoglobalvalue[nGlobalCityIndex]) 
-- script viet hoa By http://tranhba.com if (nNum < 0) then 
-- script viet hoa By http://tranhba.com  nNum = 0 
-- script viet hoa By http://tranhba.com end 

local nSpareNum = nNum - nTotalNum 
-- script viet hoa By http://tranhba.com if (nSpareNum < 0) then 
-- script viet hoa By http://tranhba.com  nSpareNum = 0 
-- script viet hoa By http://tranhba.com end 

SetGlbValue(arraycitytoglobalvalue[nGlobalCityIndex], nSpareNum) 
local strCityTongName = GetCityOwner(nGlobalCityIndex); 
-- script viet hoa By http://tranhba.com  ��i v�i tab v�n ki�n ti�n h�nh vi�t 
	CityData[nGlobalCityIndex] = CityData[nGlobalCityIndex] + nTotalNum
if (CityData[nGlobalCityIndex] > AEXP_REDUCEMAX_SAVE) then 
CityData[nGlobalCityIndex] = 0 
WriteLog("["..date("%Y-%m-%d %X").."] bang h�i :"..strCityTongName.." th�nh ph� :"..arraycityindextoname[nGlobalCityIndex].." b�i v� "..GetAccount().."("..GetName()..") �� giao li�u "..nTotalNum.." c� ph�t �c l�m , v��t qua m�t m�i k� t�n m�m s� l��ng . tr��c m�t th��ng thi�n l�m s� l��ng v� :"..nSpareNum.."(Current OnlineTime: "..GetGameTime().." sec)" ); 
savevalue() 
end 

Say("<#> th�nh ph� <color=red>"..arraycityindextoname[nGlobalCityIndex].."<color>, chi�m l�nh bang h�i :<color=red>"..strCityTongName.."<color>, ng��i �� giao li�u "..nTotalNum.." c� ph�t �c l�m ��i v�i n� tr�ng ph�t , tr��c m�t n�n th�nh ph� chi�n c�ng v� :<color=red>"..nSpareNum.."<color>",0) 
end 
