Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
motuinguyenlieu()
end

function motuinguyenlieu()
local s = random(1,20)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="V� Ma T�y Ng�c Kh�u",tbProp={0,39},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="V� Gian � Thi�n Ki�m",tbProp={0,31},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Ph�ng Nghi �ao",tbProp={0,46},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Uy�n ��ng Ho�ng �ao",tbProp={0,51},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang M�n V� M�n Thi�n",tbProp={0,76},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="S�m Ho�ng Phi Tinh �o�t H�n",tbProp={0,81},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n ��n Ch� Phi �ao",tbProp={0,71},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="U Lung Kim X� Ph�t ��i",tbProp={0,56},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="Minh �o T� S�t ��c Nh�n",tbProp={0,61},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==10 then
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p B�n L�i To�n Long th��ng",tbProp={0,21},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� Long L��ng Ng�n B�o �ao",tbProp={0,26},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==12 then
tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng Gi�ng Ma Gi�i �ao",tbProp={0,11},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma T� Kim C�n",tbProp={0,6},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Kim Ti Ch�nh H�ng C� Sa",tbProp={0,2},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==15 then
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,116},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==16 then
tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Ch�n V� Ki�m",tbProp={0,121},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==17 then
tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Thi�n Ni�n H�n Thi�t",tbProp={0,126},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==18 then
tbAwardTemplet:GiveAwardByList({{szName="L�i Khung H�n Tung B�ng B�ch quan",tbProp={0,131},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==19 then
tbAwardTemplet:GiveAwardByList({{szName="Ma S�t Qu� C�c U Minh Th��ng",tbProp={0,101},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� To�i Tinh �ao",tbProp={0,540},nCount=1,nQuality = 1, },}, "test", 1);
end;
end

