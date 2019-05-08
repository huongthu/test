IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
Include("\\script\\global\\forbidmap.lua");
--Include("\\script\\global\\quanlygame\\gmquanlyserver\\quanly.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
--Include("\\script\\global\\quanlygame\\gmquanlyserver\\libgm.lua")

--tinhpn 20100809: forbid Tong Map
local tbUseOnlyInMap = 
{
	586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,
}
local checkOnlyUseInMap = function()
	local nMapId = SubWorldIdx2MapCopy(SubWorld)
	for i = 1, getn( %tbUseOnlyInMap ) do		--�����ͼ����
		if( %tbUseOnlyInMap[i] == nMapId ) then
			return 1
		end
	end
	return 0
end

function main(nItemIdx)
   local nW, nX, nY = GetWorldPos() 
   local  nX = floor(nX/8);
   local  nY = floor(nY/16);
   SubName=SubWorldName(SubWorld)
  
	local _, _, _, nLevel= GetItemProp( nItemIdx );
	local ForbiddenMap = {44, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 326, 327, 328, 329, 330, 331, 334, 335, 337, 338, 339, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374}
	local GoldenBoss = {{562, "��o Thanh Ch�n Nh�n", 4,12},
					  {563, "Gia Lu�t T� Ly", 3,12},
					  --{564, "����ѩ��", 3,12},
					  {565, "�oan M�c Du� ", 3,12},
					  {566, "C� B�ch", 0,12},
					  {567, "Chung Linh T� ", 2,12},
					  {568, "H� Linh Phi�u", 2,12},
					  {582, "Lam Y Y", 1,12},
					  {583, "M�nh Th��ng L��ng", 3,12},
					  {739, "V��ng T� ", 0,10},
					  {740, "Huy�n Gi�c ��i S� ", 0,12},
					  {741, "���ng B�t Nhi�m", 1,12},
					  {742, "B�ch Doanh Doanh", 1,12},
					  {743, "Thanh Hi�u S� Th�i ", 2,12},
					  {744, "Y�n Hi�u Tr�i", 2,12},
					  {745, "H� Nh�n Ng� ", 3,12},
					  --{746, "��˼��", 4,10},
					  {747, "Tuy�n C� T� ", 4,12}}
					  --{511, "Tr��ng T�ng Ch�nh",5,270},
			  		  --{513, "Di�u Nh� ",5,270},
			  		 -- {523, "Li�u Thanh Thanh",5,270}}





			  		  
	local bosspro = {};
	local W,X,Y = GetWorldPos();
	local nMapId = W;
	if ( GetFightState() == 0 ) then	--��ս��������
		Msg2Player("Kh�ng ph�i l� tr�ng th�i chi�n ��u h� kh�ng th� s� d�ng");
		return 1
	end
	
	--tinhpn 20100803:  forbid Tong Map
--	if %checkOnlyUseInMap() ~= 1 then
--		Msg2Player("Bang h�i b�n �� c�m ch� s� d�ng")
--		return 1
--	end
	
	for i = 249, 318 do	--ϴ�赺ɽ��
		if ( i == nMapId ) then
			Msg2Player("N�i ��y kh�ng th� s� d�ng ��o n�y c�");
			return 1
		end
	end	
	for i = 375, 415 do	--�����ν�ս����ͼ ���������ͼ �������ͼ
		if ( i == nMapId ) then
			Msg2Player("N�i ��y kh�ng th� s� d�ng ��o n�y c�");

--			Msg2Player("�˵�?���ʹ�ô˵��?);
			return 1
		end
	end
	for i = 1, getn( ForbiddenMap ) do		--�����ͼ����
		if( ForbiddenMap[i] == nMapId ) then
			Msg2Player("N�i ��y kh�ng th� s� d�ng ��o n�y c�");
			return 1
		end
	end
	
	if (CheckAllMaps(nMapId) == 1) then
		Msg2Player("N�i ��y kh�ng th� s� d�ng ��o n�y c�");
		return 1
	end
	
	for i = 1, getn(GoldenBoss) do
		bosspro[i] = GoldenBoss[i][4];
	end

	local doubleodds = 160 - (nLevel - 1) * 10
	local j = 1;
	if( random(1,doubleodds) == 1) then
		j = 2;
	end
	
	for k = 1, j do
		local numth = randomaward(bosspro);
		local GoldenBossId = GoldenBoss[numth][1];
		local GoldenBossName = GoldenBoss[numth][2];
		local GoldenBossSeries = GoldenBoss[numth][3];
		if (GoldenBossSeries == 5) then
			GoldenBossSeries = random( 0, 4);
		end
		local npcindex = AddNpcEx( GoldenBossId, 95, GoldenBossSeries, SubWorldID2Idx(W), X * 32, (Y +  5)* 32, 1, GoldenBossName, 1 );
		SetNpcDeathScript(npcindex, "\\script\\missions\\boss\\bossdeath2.lua");
		--WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount().."��["..GetName().."]d�ng Boss cho g�i ph� g�i v� m�t ho�ng kim Boss"..GoldenBossName);
		--AddGlobalCountNews("Boss �� xu�t hi�n.!!!. C�c cao th� v� l�m h�y nhanh ch�n ��n so t�i n�o..!")
        Msg2SubWorld("Qu�n Tr� <color=yellow>"..GetName().." <color=red>�� g�i  <color=green>Event <color=violet> "..GoldenBossName );
		--Msg2SubWorld("<color=yellow>C�c game th� h�y mau mau tranh th� ra s�n boss n�o..!");  --- ---------------------------------------------------------------------------------------------------------------------toa do-----------------------------------------------------------------------------------------	
	Msg2SubWorld("T�a �� boss hi�n t�i: <color=green>"..SubName.."<color> <color=blue>"..nX.."/"..nY.."<color>");
	--Msg2SubWorld("<color=yellow>Th�p ��i h�o ki�t <color=violet>%s <color>t�i xu�t giang h� t�i <color=green>%s <color>t�a �� <color=blue>(%d,%d)<color> c�c ��i hi�p h�y mau mau t�m v� ti�u di�t boss �� nh�n qu� tri �n..");
		local szNews = format("<color=yellow>Noel<color=red> �� xu�t hi�n <color=violet>"..GoldenBossName);
		AddGlobalNews(szNews);
		
	end
	return 0	
end

function randomaward(aryProbability)
	local nRandNum;
	local nSum = 0;
	local nArgCount = getn( aryProbability );
	local nCompareSum = 0;
	for i = 1, nArgCount do
		nSum = nSum + aryProbability[i];
	end
	nRandNum = random(1,nSum);
	for i = 1,nArgCount do
		nCompareSum = nCompareSum + aryProbability[i]
		if( nRandNum <= nCompareSum) then
			return i;
		end
	end
end

function GetDesc(nItemIdx)
	local _, _, _, lvl = GetItemProp(nItemIdx);
	local doubleodds = 160 - (lvl - 1) * 10
	return "<color=blue> g�i ra th� 2 c� Boss ��ch t� l�<color=yellow>1/"..doubleodds;
end