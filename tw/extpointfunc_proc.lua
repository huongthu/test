QUESTKEY_TICKET = 488; -- script viet hoa By http://tranhba.com  ng©n phiÕu ®Ých vËt phÈm ID 

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
-- script viet hoa By http://tranhba.com  cÇm kim nguyªn b¶o 
AddEventItem(343) 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 
WriteGoldLog( GetAccount().."("..GetName()..") MAKE a GOLD with a HIGH CARD", 1, 0, 0, 0 ); 
Talk(1,"","TiÒn Trang l·o b¶n # ®©y lµ ngµi ®Ých kim nguyªn b¶o , xin cÇm h¶o l©u #") 
Msg2Player("Ngµi ®¹t ®­îc 1 c¸ kim nguyªn b¶o . kim nguyªn b¶o thao t¸c ®· thµnh c«ng #"); 
elseif (nValue == 1) then 
-- script viet hoa By http://tranhba.com  cÇm ng©n nguyªn b¶o 
AddEventItem(342) 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 
WriteGoldLog( GetAccount().."("..GetName()..") MAKE a SILVER with a LOW CARD", 0, 1, 0, 0 ); 
Talk(1,"","TiÒn Trang l·o b¶n # ®©y lµ ngµi ®Ých ng©n nguyªn b¶o , xin cÇm h¶o l©u #") 
Msg2Player("Ngµi ®¹t ®­îc 1 c¸ ng©n nguyªn b¶o . ng©n nguyªn b¶o thao t¸c ®· thµnh c«ng #"); 
elseif( nValue > 1) then 
WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO , MUST PAY(4) BUT PAY("..nValue..")!!!!", 0,0,0,0) 
Msg2Player("Nguyªn b¶o thao t¸c bÞ lçi , ®· bÞ ®­¬ng , xin/mêi cïng nh©n viªn qu¶n lý liªn l¹c #") 
else 
WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO PAYVALUE <= 0", 0,0,0,0) 
Say("TiÒn Trang l·o b¶n # thËt xin lçi , kh¸ch quan ngµi còng kh«ng cã ë tiÓu sè göi tån nguyªn b¶o . ", 0) 
end 
end 

function OnPayYinPiao(nChangeValue) 
-- script viet hoa By http://tranhba.com  cÇm ng©n phiÕu 
nValue = -nChangeValue 
if (nValue == 1) then 
AddEventItem(QUESTKEY_TICKET) 
SaveNow(); -- script viet hoa By http://tranhba.com  lËp tøc tån m©m 
WriteGoldLog( GetAccount() .. "(" .. GetName() .. ") MAKE a TICKET:"..szItemEnName, 0, 0, 0, 1 ); 
Say("TiÒn Trang l·o b¶n # ®©y lµ ngµi ®Ých ng©n phiÕu , xin cÇm h¶o l©u #",0) 
Msg2Player("Ngµi ®¹t ®­îc 1 c¸ ng©n phiÕu . ng©n phiÕu thao t¸c ®· thµnh c«ng #"); 
elseif (nValue > 1) then 
WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YINPIAO , MUST PAY(1) BUT PAY("..nValue..")!!!!") 
Msg2Player("Ng©n phiÕu thao t¸c bÞ lçi , ®· bÞ ®­¬ng , xin/mêi cïng nh©n viªn qu¶n lý liªn l¹c #") 
else 
Say("TiÒn Trang l·o b¶n # thËt xin lçi , kh¸ch quan ngµi còng kh«ng cã ë tiÓu sè göi tån ng©n phiÕu . ", 0) 
WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO PAYVALUE <= 0", 0,0,0,0) 
end 
end 

function LiguanLog(object) 
WriteLog(date("%H%M%S") .. "# tr­¬ng môc #" .. GetAccount() .. " , vai trß #" .. GetName() .. " , " .. object); 
end 

function OnYearGift(nChangeValue) 
nValue = -nChangeValue 
if (nValue == 1) then 
AddStackItem(5, 6, 1, 147, 6, 1, 1, 1) 
AddStackItem(5, 6, 1, 147, 7, 1, 1, 1) 
LiguanLog("Bëi v× sung trÞ gi¸ n¨m t¹p ®¹t ®­îc 5 c¸ 6 cÊp huyÒn tinh qu¸ng th¹ch cïng 5 c¸ 7 cÊp huyÒn tinh qu¸ng th¹ch "); 
Say("Ngµi ®¹t ®­îc 5 c¸ 6 cÊp huyÒn tinh qu¸ng th¹ch cïng 5 c¸ 7 cÊp huyÒn tinh qu¸ng th¹ch ", 0) 
Msg2Player("Ngµi ®¹t ®­îc 5 c¸ 6 cÊp huyÒn tinh qu¸ng th¹ch cïng 5 c¸ 7 cÊp huyÒn tinh qu¸ng th¹ch . lÊy ®­îc n¨m t¹p lÔ vËt thao t¸c thµnh c«ng #"); 
elseif (nValue > 1) then 
Msg2Player("ThËt xin lçi n¨m t¹p lÔ vËt lÊy ®­îc thao t¸c bÞ lçi , ®· bÞ ®­¬ng , xin/mêi cïng GM liªn l¹c #") 
WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YEARGIFT , MUST PAY(3,1) BUT PAY(3"..nValue..")!!!!",0,0,0,0) 
else 
Say("ThËt xin lçi , ngµi kh«ng cã n¨m t¹p lÔ vËt hoÆc ®· nhËn lÊy qua , nh­ cã vÊn ®Ò xin/mêi cïng GM liªn l¹c . ", 0) 
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
