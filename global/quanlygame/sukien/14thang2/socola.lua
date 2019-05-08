IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

TASKEVENTTY = 975

function main()
	if CalcFreeItemCellCount() < 10 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y m�.",0);
		return 1
	end
	local nTask = GetTask(TASKEVENTTY )
	if nTask > 1500 then
		 Say("M�i nh�n v�t ch� s� d�ng t�i �a 1500 socola")
		return 1
	end
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate >= 20190230 then
		Say("Event k�t th�c kh�ng th� s� d�ng.", 0);
		return 1
	end
	local nTask = GetTask(TASKEVENTTY )
	if nTask == 1500 then

tbAwardTemplet:GiveAwardByList({{szName="Si�u Quang",tbProp={0,10,13,10,0,0},nCount=1,nExpiredTime=10080 ,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M� Trang S�c",tbProp={0,543},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Nhu T�nh",tbProp={0,190},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> Max event t�nh nh�n.")


                        local tetamlich1 = "script/global/bil4i3n/bil4i3n_log/event14thang2.log"
	local tetamlich11 = openfile(tetamlich1, "a");
	 write(tetamlich11, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Su Dung 1 Hop Qua\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(tetamlich11)
end
local lai5767 = GetTask(975)
SetTask(TASKEVENTTY,GetTask(TASKEVENTTY)+1)
ngaunhienitem()
Msg2Player("B�n �� s� d�ng "..lai5767.."  <color=yellow>Socola");
end



function ngaunhienitem()
local s = random(1,23)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="TTK",tbProp={6,1,22,1},nCount=1,nRate=20,},}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="VLMT",tbProp={6,1,26,1},nCount=1,},}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="�� May M�n C1",tbProp={4,1668,1,1,},nCount=1,},}, "test", 1);
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="�� May M�n C2",tbProp={4,1669,1,1,},nCount=1,},}, "test", 1);
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="�� May M�n C3",tbProp={4,1670,1,1,},nCount=1,},}, "test", 1);
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="�� C��ng H�a C1",tbProp={4,1676,1,1,},nCount=1,nRate=30,},}, "test", 1);
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="�� C��ng H�a C2",tbProp={4,1677,1,1,},nCount=1,nRate=30,},}, "test", 1);
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="�� C��ng H�a C3",tbProp={4,1678,1,1,},nCount=1,nRate=50,},}, "test", 1);
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="T�i t�ng kim",tbProp={6,1,4415,1,1},nCount=1,},}, "test", 1);
end;
if s==10 then
--tbAwardTemplet:GiveAwardByList({{szName="M�nh Nhu T�nh 4",tbProp={4,780,1,1,},nCount=0,nRate=1,},}, "test", 1);
end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�o Hoa",tbProp={6,0,11,1,1},nCount=1,},}, "test", 1);
end;
if s==12 then
tbAwardTemplet:GiveAwardByList({{szName="B�ch Qu� L�",tbProp={6,1,73,1,1},nCount=1,},}, "test", 1);
end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="bao d��c ho�n",tbProp={6,1,910,1,1},nCount=1,},}, "test", 1);
end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�o Hoa",tbProp={6,0,20,1,1},nCount=1,},}, "test", 1);
end;
if s==15 then
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 1",tbProp={4,1679,1,1,},nCount=1,},}, "test", 1);
end;
if s==16 then
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 2",tbProp={4,1680,1,1,},nCount=1,},}, "test", 1);
end;
if s==17 then
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 3",tbProp={4,1681,1,1,},nCount=1,},}, "test", 1);
end;
if s==18 then
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 4",tbProp={4,1682,1,1,},nCount=1,},}, "test", 1);
end;
if s==19 then
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 5",tbProp={4,1683,1,1,},nCount=1,nRate=50,},}, "test", 1);
end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 6",tbProp={4,1684,1,1,},nCount=1,nRate=50,},}, "test", 1);
end;
if s==21 then
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 7",tbProp={4,1685,1,1,},nCount=1,nRate=50,},}, "test", 1);
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 8",tbProp={4,1686,1,1,},nCount=1,nRate=50,},}, "test", 1);
end;
if s==23 then
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 9",tbProp={4,1687,1,1,},nCount=1,nRate=50,},}, "test", 1);
end;
end





