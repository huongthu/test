Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")



TASKGIOHOA = 5320



function main(sel)
	local hoangkim = GetTask(5319)
	if hoangkim  == 1 then
                       hkmpvip1()
	 SetTask(TASKGIOHOA,GetTask(TASKGIOHOA)+1)
return
	end
	--local nDate = tonumber(GetLocalDate("%Y%m%d"));
	--if nDate >= 20181018 then
		--Say("Ho�t ��ng �� k�t th�c, kh�ng th� s� d�ng.", 0);
		--return 1;
	--end;
	local nTask = GetTask(TASKGIOHOA)
	if nTask > 1000 then
		 Say("B�n �� s� d�ng �� m�c 1000 Hoa H�ng Ho�n M� kh�ng th� ti�p t�c !")
		return 1
	end
	if nTask == 999 then
SetTask(5319,1)
tbAwardTemplet:GiveAwardByList({{szName="Phi Phong",tbProp={0,544},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Nh�t K�",tbProp={6,1,4357,1,0,0},nCount=1,nExpiredTime=43200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="T�i M�u",tbProp={6,1,4422,1,0,0},nCount=1,nExpiredTime=43200,},}, "test", 1);
thuongmonphai()
hkmpvip1()
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� nh�n ph�n th��ng <color=yellow>Khi ��t m�c max 1000 Gi� Hoa 8 - 3")


                        local event83 = "script/global/bil4i3n/bil4i3n_log/event8thang3.log"
	local event8319= openfile(event83, "a");
	 write(event8319, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Su Dung Max 1000 Event 8 thang 3\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(event8319)
	end
	 SetTask(TASKGIOHOA,GetTask(TASKGIOHOA)+1)
Msg2Player("B�n s� d�ng 1 <color=yellow>Gi� Hoa T��i 8 Th�ng 3.");
phanthuongphu()
end




function phanthuongphu()
local s = random(1,24)

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
--tbAwardTemplet:GiveAwardByList({{szName="M�nh Nhu T�nh 4",tbProp={4,780,1,1,},nCount=1,nRate=1,},}, "test", 1);
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
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 5",tbProp={4,1683,1,1,},nCount=1,nRate=45,},}, "test", 1);
end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 6",tbProp={4,1684,1,1,},nCount=1,nRate=45,},}, "test", 1);
end;
if s==21 then
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 7",tbProp={4,1685,1,1,},nCount=1,nRate=45,},}, "test", 1);
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 8",tbProp={4,1686,1,1,},nCount=1,nRate=45,},}, "test", 1);
end;
if s==23 then
tbAwardTemplet:GiveAwardByList({{szName="M�nh c�n kh�n 9",tbProp={4,1687,1,1,},nCount=1,nRate=45,},}, "test", 1);
end;
if s==24 then
tbAwardTemplet:GiveAwardByList({{szName="da quy",tbProp={4,1688,1,1,},nCount=1,nRate=20,},}, "test", 1);
end;
end




function thuongmonphai()
checkphai = GetFaction()
if GetLastFactionNumber() == 0 then
tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,825,1},nCount=1,nExpiredTime=43200,},}, "test", 1);

elseif GetLastFactionNumber() == 1 then
tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,824,1},nCount=1,nExpiredTime=43200,},}, "test", 1);

elseif GetLastFactionNumber() == 2 then
tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,826,1},nCount=1,nExpiredTime=43200,},}, "test", 1);

elseif GetLastFactionNumber() == 3 then
tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,827,1},nCount=1,nExpiredTime=43200,},}, "test", 1);

elseif GetLastFactionNumber() == 4  then
tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,822,1},nCount=1,nExpiredTime=43200,},}, "test", 1);


elseif GetLastFactionNumber() == 5 then
tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,823,1},nCount=1,nExpiredTime=43200,},}, "test", 1);

elseif GetLastFactionNumber() == 6 then
tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,821,1},nCount=1,nExpiredTime=43200,},}, "test", 1);

elseif GetLastFactionNumber() == 7 then
tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,820,1},nCount=1,nExpiredTime=43200,},}, "test", 1);

elseif GetLastFactionNumber() == 8 then
tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,818,1},nCount=1,nExpiredTime=43200,},}, "test", 1);

elseif GetLastFactionNumber() == 9 then
tbAwardTemplet:GiveAwardByList({{szName="M�t N�",tbProp={0,11,819,1},nCount=1,nExpiredTime=43200,},}, "test", 1);

end
end

------------------------------------------



function hkmpvip1() 
Say("Xin m�i ch�n trang b�",6,"Nga Mi/hkmpnm","Th�y Y�n/hkmpty","���ng M�n/hkmpdm","Ng� ��c/hkmpnd","Thi�n V��ng/hkmptv","Trang Sau/hkmpvip2") 
end

function hkmpvip2() 
Say("Xin m�i ch�n trang b�",6,"Thi�u L�m/hkmptl","V� �ang/hkmpvd","C�n L�n/hkmpcl","Thi�n Nh�n/hkmptn","C�i Bang/hkmpcb","Trang Tr��c/hkmpvip1") 
end

function hkmpnm()
        local tbOpt= 
               { 
                {"Nga My Ch��ng", hkvipnmc}, 
                {"Nga My Ki�m", hkvipnmk}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>L�u � Ph�i Ch�n Th�t Nhanh N�u �� L�u Kh�ng Ch�n S� B� M�t BQT Kh�ng Ch�u Tr�ch Nhi�m ", tbOpt)
end 

function hkvipnmc()
SetTask(5319,2)
AddGoldItem(0,258)  
end


function hkvipnmk()
SetTask(5319,2)
 
AddGoldItem(0,250)  
end

function hkvipnmbuff()
SetTask(5319,2)
 
AddGoldItem(0,42)  
end

function hkmpty()
        local tbOpt= 
               { 
                {"Th�y Y�n �ao", hkviptyd}, 
                {"Th�y Y�n Ch��ng", hkviptyc}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>L�u � Ph�i Ch�n Th�t Nhanh N�u �� L�u Kh�ng Ch�n S� B� M�t BQT Kh�ng Ch�u Tr�ch Nhi�m ", tbOpt)
end 

function hkviptyd()
SetTask(5319,2)
 
AddGoldItem(0,265)  
end

function hkviptyc() 
SetTask(5319,2)

AddGoldItem(0,270)  
end

function hkmpdm()

        local tbOpt= 
               { 
                {"���ng M�n N�", hkvipbv}, 
                            {"���ng M�n Phi Ti�u", hkvippt}, 
                {"���ng M�n B�ng H�n", hkvippd}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>L�u � Ph�i Ch�n Th�t Nhanh N�u �� L�u Kh�ng Ch�n S� B� M�t BQT Kh�ng Ch�u Tr�ch Nhi�m ", tbOpt)
end 

function hkvipbv() 
SetTask(5319,2)

AddGoldItem(0,295)  
end


function hkvippt() 
SetTask(5319,2)

AddGoldItem(0,300)  
end


function hkvippd()
SetTask(5319,2)
 
AddGoldItem(0,290)  
end


function hkvipbay()
SetTask(5319,2)
 
AddGoldItem(0,87)  
end


function hkmpnd()

        local tbOpt= 
               { 
                {"Ng� ��c Ch��ng", hkvipndc}, 
                            {"Ng� ��c �ao", hkvipndd}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>L�u � Ph�i Ch�n Th�t Nhanh N�u �� L�u Kh�ng Ch�n S� B� M�t BQT Kh�ng Ch�u Tr�ch Nhi�m ", tbOpt)
end 

function hkvipndc()
SetTask(5319,2)
 
AddGoldItem(0,275)  
end

function hkvipndd() 
SetTask(5319,2)

AddGoldItem(0,280)  
end

function hkvipndb()
SetTask(5319,2)
 
AddGoldItem(0,67)  
end

function hkmptv()

local tbOpt= 
               { 
                {"Thi�n V��ng Th��ng", hkviptvt}, 
                            {"Thi�n V��ng Ch�y", hkviptvc}, 
                {"Thi�n V��ng �ao", hkviptvd}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>L�u � Ph�i Ch�n Th�t Nhanh N�u �� L�u Kh�ng Ch�n S� B� M�t BQT Kh�ng Ch�u Tr�ch Nhi�m ", tbOpt)
end 

function hkviptvt() 
SetTask(5319,2)

AddGoldItem(0,240)  
end

function hkviptvc() 
SetTask(5319,2)

AddGoldItem(0,235)  
end

function hkviptvd() 
SetTask(5319,2)

AddGoldItem(0,245)  
end

function hkmptl()

local tbOpt= 
               { 
                {"Thi�u L�m �ao", hkviptld}, 
                            {"Thi�u L�m B�ng", hkviptlb}, 
                {"Thi�u L�m Quy�n", hkviptlq}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>L�u � Ph�i Ch�n Th�t Nhanh N�u �� L�u Kh�ng Ch�n S� B� M�t BQT Kh�ng Ch�u Tr�ch Nhi�m ", tbOpt)
end 

function hkviptld() 
SetTask(5319,2)

AddGoldItem(0,230)  
end

function hkviptlb() 
SetTask(5319,2)

AddGoldItem(0,225)  
end

function hkviptlq() 
SetTask(5319,2)

AddGoldItem(0,221)  
end

function hkmpvd()

local tbOpt= 
               { 
                {"V� �ang Ch��ng", hkvipvdc}, 
                            {"V� �ang Ki�m", hkvipvdk}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>L�u � Ph�i Ch�n Th�t Nhanh N�u �� L�u Kh�ng Ch�n S� B� M�t BQT Kh�ng Ch�u Tr�ch Nhi�m ", tbOpt)
end 

function hkvipvdc() 
SetTask(5319,2)

AddGoldItem(0,340)  
end

function hkvipvdk() 
SetTask(5319,2)

AddGoldItem(0,335)  
end

function hkmpcl()


local tbOpt= 
               { 
                {"C�n L�n �ao", hkvipcld}, 
                            {"C�n L�n Ch��ng", hkvipclc}, 
                {"C�n L�n B�a", hkvipclb}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>L�u � Ph�i Ch�n Th�t Nhanh N�u �� L�u Kh�ng Ch�n S� B� M�t BQT Kh�ng Ch�u Tr�ch Nhi�m ", tbOpt)
end 

function hkvipcld() 
SetTask(5319,2)

AddGoldItem(0,345)  
end

function hkvipclc() 
SetTask(5319,2)

AddGoldItem(0,350)  
end

function hkvipclb() 
SetTask(5319,2)

AddGoldItem(0,136)  
end

function hkmptn()

local tbOpt= 
               { 
                {"Thi�n Nh�n Th��ng", hkviptnt}, 
                            {"Thi�n Nh�n Ch��ng", hkviptnd}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>L�u � Ph�i Ch�n Th�t Nhanh N�u �� L�u Kh�ng Ch�n S� B� M�t BQT Kh�ng Ch�u Tr�ch Nhi�m ", tbOpt)
end 

function hkviptnt() 
SetTask(5319,2)

AddGoldItem(0,320)  
end

function hkviptnd() 
SetTask(5319,2)

AddGoldItem(0,329)  
end

function hkviptnb() 
SetTask(5319,2)

AddGoldItem(0,107)  
end

function hkmpcb()

local tbOpt= 
               { 
                {"C�i Bang Ch��ng", hkvipcbc}, 
                            {"C�i Bang B�ng", hkvipcbb}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>L�u � Ph�i Ch�n Th�t Nhanh N�u �� L�u Kh�ng Ch�n S� B� M�t BQT Kh�ng Ch�u Tr�ch Nhi�m ", tbOpt)
end 

function hkvipcbc() 
SetTask(5319,2)

AddGoldItem(0,313)  
end

function hkvipcbb() 
SetTask(5319,2)

AddGoldItem(0,315)  
end






