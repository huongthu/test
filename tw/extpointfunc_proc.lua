QUESTKEY_TICKET = 488; -- script viet hoa By http://tranhba.com  ng�n phi�u ��ch v�t ph�m ID 

function OnExtPointChange_Proc(nExtPointIndex, nChangeValue) 
	if (ExtFunTab[nExtPointIndex + 1] == nil) then
print("Error!!!!!!!!, No ExtPoint Fun On"..nExtPointIndex) 
WriteGoldLog("Importacne Error!!!!!!!!, No ExtPoint CallFun On"..nExtPointIndex..", "..GetAccount().." "..GetName().." nExtPointIndex"..nExtPointIndex.." nChangeValue"..nChangeValue, 0, 0, 0, 0) 
return 
end 
	ExtFunTab[nExtPointIndex + 1](nChangeValue)
end 

function OnPayYuanBao(nChangeValue) 
nValue = -nChangeValue 
if (nValue == 4) then 
-- script viet hoa By http://tranhba.com  c�m kim nguy�n b�o 
AddEventItem(343) 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
WriteGoldLog( GetAccount().."("..GetName()..") MAKE a GOLD with a HIGH CARD", 1, 0, 0, 0 ); 
Talk(1,"","Ti�n Trang l�o b�n # ��y l� ng�i ��ch kim nguy�n b�o , xin c�m h�o l�u #") 
Msg2Player("Ng�i ��t ���c 1 c� kim nguy�n b�o . kim nguy�n b�o thao t�c �� th�nh c�ng #"); 
elseif (nValue == 1) then 
-- script viet hoa By http://tranhba.com  c�m ng�n nguy�n b�o 
AddEventItem(342) 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
WriteGoldLog( GetAccount().."("..GetName()..") MAKE a SILVER with a LOW CARD", 0, 1, 0, 0 ); 
Talk(1,"","Ti�n Trang l�o b�n # ��y l� ng�i ��ch ng�n nguy�n b�o , xin c�m h�o l�u #") 
Msg2Player("Ng�i ��t ���c 1 c� ng�n nguy�n b�o . ng�n nguy�n b�o thao t�c �� th�nh c�ng #"); 
elseif( nValue > 1) then 
WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO , MUST PAY(4) BUT PAY("..nValue..")!!!!", 0,0,0,0) 
Msg2Player("Nguy�n b�o thao t�c b� l�i , �� b� ���ng , xin/m�i c�ng nh�n vi�n qu�n l� li�n l�c #") 
else 
WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO PAYVALUE <= 0", 0,0,0,0) 
Say("Ti�n Trang l�o b�n # th�t xin l�i , kh�ch quan ng�i c�ng kh�ng c� � ti�u s� g�i t�n nguy�n b�o . ", 0) 
end 
end 

function OnPayYinPiao(nChangeValue) 
-- script viet hoa By http://tranhba.com  c�m ng�n phi�u 
nValue = -nChangeValue 
if (nValue == 1) then 
AddEventItem(QUESTKEY_TICKET) 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 
WriteGoldLog( GetAccount() .. "(" .. GetName() .. ") MAKE a TICKET:"..szItemEnName, 0, 0, 0, 1 ); 
Say("Ti�n Trang l�o b�n # ��y l� ng�i ��ch ng�n phi�u , xin c�m h�o l�u #",0) 
Msg2Player("Ng�i ��t ���c 1 c� ng�n phi�u . ng�n phi�u thao t�c �� th�nh c�ng #"); 
elseif (nValue > 1) then 
WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YINPIAO , MUST PAY(1) BUT PAY("..nValue..")!!!!") 
Msg2Player("Ng�n phi�u thao t�c b� l�i , �� b� ���ng , xin/m�i c�ng nh�n vi�n qu�n l� li�n l�c #") 
else 
Say("Ti�n Trang l�o b�n # th�t xin l�i , kh�ch quan ng�i c�ng kh�ng c� � ti�u s� g�i t�n ng�n phi�u . ", 0) 
WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO PAYVALUE <= 0", 0,0,0,0) 
end 
end 

function LiguanLog(object) 
WriteLog(date("%H%M%S") .. "# tr��ng m�c #" .. GetAccount() .. " , vai tr� #" .. GetName() .. " , " .. object); 
end 

function OnYearGift(nChangeValue) 
nValue = -nChangeValue 
if (nValue == 1) then 
AddStackItem(5, 6, 1, 147, 6, 1, 1, 1) 
AddStackItem(5, 6, 1, 147, 7, 1, 1, 1) 
LiguanLog("B�i v� sung tr� gi� n�m t�p ��t ���c 5 c� 6 c�p huy�n tinh qu�ng th�ch c�ng 5 c� 7 c�p huy�n tinh qu�ng th�ch "); 
Say("Ng�i ��t ���c 5 c� 6 c�p huy�n tinh qu�ng th�ch c�ng 5 c� 7 c�p huy�n tinh qu�ng th�ch ", 0) 
Msg2Player("Ng�i ��t ���c 5 c� 6 c�p huy�n tinh qu�ng th�ch c�ng 5 c� 7 c�p huy�n tinh qu�ng th�ch . l�y ���c n�m t�p l� v�t thao t�c th�nh c�ng #"); 
elseif (nValue > 1) then 
Msg2Player("Th�t xin l�i n�m t�p l� v�t l�y ���c thao t�c b� l�i , �� b� ���ng , xin/m�i c�ng GM li�n l�c #") 
WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YEARGIFT , MUST PAY(3,1) BUT PAY(3"..nValue..")!!!!",0,0,0,0) 
else 
Say("Th�t xin l�i , ng�i kh�ng c� n�m t�p l� v�t ho�c �� nh�n l�y qua , nh� c� v�n �� xin/m�i c�ng GM li�n l�c . ", 0) 
WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO PAYVALUE <= 0", 0,0,0,0) 
end 
end 


ExtFunTab= 
{nil, 
nil, -- script viet hoa By http://tranhba.com  OnPayYuanBao, 
OnPayYinPiao, 
OnYearGift, 
nil, 
nil, 
nil, 
nil 
};
