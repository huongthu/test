IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

TASKEVENTTET = 900

function main()
	if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y m�.",0);
		return 1
	end
local nSubWorldID = GetWorldPos();
if (nSubWorldID ~= 53) then
                                                                                  Say("<color=yellow>Ch� c� th� s� d�ng h�p qu� t�i Ba L�ng Huy�n.")
		return 1
	end
	local nTask = GetTask(TASKEVENTTET)
	if nTask >= 1 then
		 Say("M�i nh�n v�t ch� s� d�ng t�i �a 1 h�p qu� n�m m�i")
		return 1
	end
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate >= 20190330 then
		Say("H�p qu� �� h�t h�n s� d�ng.", 0);
		return 1
	end
AddProp(50)
SetTask(900,1)
tbAwardTemplet:GiveAwardByList({{szName="Nh�t K�",tbProp={6,1,4357,1,0},nCount=1,nExpiredTime=43200 ,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={0,424},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={0,425},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={0,426},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ho�n M�",tbProp={0,427},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="�� May M�n C1",tbProp={4,1668,1,1,},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="�� May M�n C2",tbProp={4,1669,1,1,},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="�� May M�n C3",tbProp={4,1670,1,1,},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="TTK",tbProp={6,1,22,1},nCount=25 ,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="VLMT",tbProp={6,1,26,1},nCount=25 ,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="D�y Chuy�n HM 1",tbProp={4,747,1,1,},nCount=25,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ng�c B�i HM 2",tbProp={4,760,1,1,},nCount=25,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Nh�n Th�y HM 6",tbProp={4,758,1,1,},nCount=25,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Nh�n H�a HM 3",tbProp={4,767,1,1,},nCount=25,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ng�c B�i HC 3",tbProp={4,773,1,1,},nCount=25,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="R��ng HKMP",tbProp={6,1,4423,1,1},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="��o",tbProp={6,1,30373,1,1},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Mai",tbProp={6,1,30374,1,1},nCount=1,},}, "test", 1);


                        local tetamlich = "script/global/bil4i3n/bil4i3n_log/eventamlich2019.log"
	local tetamlich1 = openfile(tetamlich, "a");
	 write(tetamlich1, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Su Dung 1 Hop Qua\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(tetamlich1)
end



function ngaunhienrahk()
local s = random(1,23)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="V� Ma T�y Ng�c Kh�u",tbProp={0,258},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="V� Gian � Thi�n Ki�m",tbProp={0,250},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Ph�ng Nghi �ao",tbProp={0,265},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Uy�n ��ng Ho�ng �ao",tbProp={0,270},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang M�n V� M�n Thi�n",tbProp={0,295},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="S�m Ho�ng Phi Tinh �o�t H�n",tbProp={0,300},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n ��n Ch� Phi �ao",tbProp={0,290},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="U Lung Kim X� Ph�t ��i",tbProp={0,275},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="Minh �o T� S�t ��c Nh�n",tbProp={0,280},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==10 then
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p B�n L�i To�n Long th��ng",tbProp={0,240},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� Long L��ng Ng�n B�o �ao",tbProp={0,245},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==12 then
tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng Gi�ng Ma Gi�i �ao",tbProp={0,230},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma T� Kim C�n",tbProp={0,225},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Kim Ti Ch�nh H�ng C� Sa",tbProp={0,221},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==15 then
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,335},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==16 then
tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Ch�n V� Ki�m",tbProp={0,340},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==17 then
tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Thi�n Ni�n H�n Thi�t",tbProp={0,345},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==18 then
tbAwardTemplet:GiveAwardByList({{szName="V� �o b�c minh ��o qu�n",tbProp={0,350},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==19 then
tbAwardTemplet:GiveAwardByList({{szName="Ma S�t Qu� C�c U Minh Th��ng",tbProp={0,320},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� To�i Tinh �ao",tbProp={0,329},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==21 then
tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Bao tay",tbProp={0,313},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName="B�ng ��ch Kh�i",tbProp={0,315},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==23 then
tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n Ch�y",tbProp={0,235},nCount=1,nQuality = 1, },}, "test", 1);
end;
end





