---------Chinh vat pham-----------
TaskExpCauCa	= 3019
TaskDateCauCa 	= 3020
MaxExpMoiNgay 	=  9999000000
GccPos = 		{{47072,107840},};

tbAWard=
{
	[4442]={szName = "�i�m kinh nghi�m", nExp_tl=90000},	
	[4443]={szName = "�i�m kinh nghi�m", nExp_tl=9500},	
	[4444]={szName = "�i�m kinh nghi�m", nExp_tl=10000},	
	[4445]={szName = "�i�m kinh nghi�m", nExp_tl=10000},	

}
ItemAwardNT_cathuong1 = {
	{szName="Qu� Hoa T�u",tbProp={6,1,125,1,0,0},nCount=1,nRate=50},
	{szName="Ph�c Duy�n L� (��i)",tbProp={6,1,124,1,0,0},nCount=1,nRate=30},
	{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nRate=30},
	{szName="Ti�n Th�o L� ��c bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nRate=10},
	{szName="V� L�m M�t T�ch",tbProp={6,1,26,1,0,0},nCount=1,nRate=2},
	{szName="T�y T�y Kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=2},
	{szName = "S� d�ng L��i ��nh c� kh�ng may m�n",
		pFun = function (nItemCount, szLogTitle)
			Msg2Player("L�n n�y kh�ng may m�n")
		end,
		nRate = 100,
	}
}
ItemAwardNT_cathuong2 = {
	{szName="V� L�m M�t T�ch",tbProp={6,1,26,1,0,0},nCount=1,nRate=2},
	{szName="T�y T�y Kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=2},
	{szName = "S� d�ng L��i ��nh c� kh�ng may m�n",
		pFun = function (nItemCount, szLogTitle)
			Msg2Player("L�n n�y kh�ng may m�n")
		end,
		nRate = 100,
	}
}

ItemAwardNT = {
	{szName = "S� d�ng L��i ��nh c� kh�ng may m�n",
		pFun = function (nItemCount, szLogTitle)
			Msg2Player("L�n n�y kh�ng may m�n")
		end,
		nRate = 100,
	}
}

function CheckGioiHan()
	old_date = GetByte(GetTask(TaskDateCauCa), 1)
	old_month = GetByte(GetTask(TaskDateCauCa), 2)
	old_year = GetByte(GetTask(TaskDateCauCa), 3)

	now_date = tonumber(date("%d"))
	now_month = tonumber(date("%m"))
	now_year = tonumber(date("%y"))

	if old_date == now_date and old_month == now_month and old_year == now_year then
		if GetTask(TaskExpCauCa) > MaxExpMoiNgay then
			Msg2Player("M�i ng�y ch� s� d�ng t�i �a "..MaxExpMoiNgay.." �i�m kinh nghi�m")
			return 1;
		end
	else
		SetTask(TaskDateCauCa, SetByte(GetTask(TaskDateCauCa), 1, now_date))
		SetTask(TaskDateCauCa, SetByte(GetTask(TaskDateCauCa), 2, now_month))
		SetTask(TaskDateCauCa, SetByte(GetTask(TaskDateCauCa), 3, now_year))
		SetTask(TaskExpCauCa,0)
		return 0;
	end
end

function GetNearstPos(X,Y, PosTab)
	PosCount = getn(PosTab);
	PosId = 0;
	MaxDist = 999999999;

	BeyondCount = 0;---gi do

	for i = 1, PosCount do 
		Dist = sqrt( (X-PosTab[i][1]) * (X-PosTab[i][1]) + (Y - PosTab[i][2]) * (Y - PosTab[i][2]))
		if (Dist >= 250) then 
			BeyondCount = BeyondCount + 1;
		end;
		if (i == 1) then 
			PosId = 1
			MaxDist = Dist
		elseif (MaxDist > Dist) then 
			PosId = i
			MaxDist = Dist
		end
	end;

	if (BeyondCount >= PosCount) then
		return 0
	else
		return PosId;
	end;
end