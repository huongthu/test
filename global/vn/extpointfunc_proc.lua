IncludeLib("LEAGUE")

-- COIN=10
COIN=1

function OnExtPointChange_Proc(nExtPointIndex, nChangeValue)
	if (ExtFunTab[nExtPointIndex + 1] == nil) then
		--print("Error!!!!!!!!, No ExtPoint Fun On"..nExtPointIndex)
		--WriteGoldLog("Importacne Error!!!!!!!!, No ExtPoint CallFun On"..nExtPointIndex..", "..GetAccount().." "..GetName().." nExtPointIndex"..nExtPointIndex.." nChangeValue"..nChangeValue, 0, 0, 0, 0)
		return 0;
	end
	ExtFunTab[nExtPointIndex + 1](nChangeValue)
	return 1;
end

function OnPayYuanBao(nChangeValue)
	nValue = -nChangeValue
	if (nValue > 0) then
	
	local a = nValue
	
	SetTask(5930, GetTask(5930) - nValue)
	
		
		if (nValue <= 100) then
			AddStackItem(nValue,4,417,1,1,0,0,0)
		else
			while ((nValue - 100) >= 0) do
				AddStackItem(100,4,417,1,1,0,0,0)
				nValue = nValue - 100
			end
			
			if nValue > 0 then
				AddStackItem(nValue,4,417,1,1,0,0,0)
			end
		end
		
		-- SetItemBindState(Bil_itIdex,-2);
		SaveNow(); -- ��������
		-- WriteGoldLog( GetAccount().."("..GetName()..") MAKE a SILVER with a LOW CARD", 0, 1, 0, 0 );
		WriteGoldLog( GetAccount().."("..GetName()..") MAKE a SILVER with a LOW CARD", 0, a, 0, 0 );
		local nCurValue = GetExtPoint(1)
		WriteLog(date("%Y%m%d %H%M%S").."\t".."R�t Ti�n ��ng"..GetAccount().."\t"..GetName().."\t".."R�t "..COIN.." Ti�n ��ng c�n l�i "..nCurValue)
 		Say("�ng ch� ti�n trang: ��y l� "..a.." Ti�n ��ng c�a kh�ch quan! Xin nh�n l�y!", 0)
		Msg2Player( "B�n nh�n ���c <color=yellow>"..a.." Ti�n ��ng !");
	                                                                                 -- local szNewsmoney = format("<pic=126>��i hi�p <color=green>"..GetName().."<color=yellow> V�a r�t ra<color=pink> "..a.." <color=yellow>ti�n ��ng t� s� ti�n n�p th� v�o server.");
	                                                                                 local szNewsmoney = format("��i hi�p <color=green>"..GetName().."<color=yellow> V�a r�t <color=pink> "..a.." <color=yellow>ti�n ��ng t� Ti�n Trang L�m An.");
	                                                                                  AddGlobalNews(szNewsmoney);
	                                                                                   LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNewsmoney , "", "");		print(".")
		print("-------------------------------------------------------------------------------------------------------------")
		print("Tai khoan: "..GetAccount()..", Nhan vat: "..GetName().." vua rut ra "..a.." Tien Dong")
		print("-------------------------------------------------------------------------------------------------------------")
		print(".")
 	elseif( nValue > 1) then
			WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO , MUST PAY(1) BUT PAY("..nValue..")!!!!", 0,0,0,0)
			Msg2Player("Thao t�c Ti�n ��ng b� l�i, xin li�n h� GM �� gi�i quy�t!")
	else
			WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO PAYVALUE <= 0", 0,0,0,0)
			Say("Xin l�i! Kh�ch quan kh�ng c� g�i Ti�n ��ng t�i b�n ti�m. ", 0)
	end
end

ExtFunTab=
{
	nil,
 	OnPayYuanBao,
 	nil,
 	nil,
 	nil,
 	nil,
 	nil,
 	nil
};
