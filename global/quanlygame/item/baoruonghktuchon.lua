Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")

function main()
dofile("script/global/quanlygame/item/baoruonghktuchon.lua")
local szTitle =  "<npc>B�o R��ng V� L�m Ki�m Thi�n !"
		local tbOpt =
	{
                                          {"M� R��ng T� Ch�n",hkmpvip1},
	}
		CreateNewSayEx(szTitle, tbOpt)
	
end




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
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
end

function hkvipnmc()
tbAwardTemplet:GiveAwardByList({{szName="V� Ma T�y T�g�c Kh�u",tbProp={0,39},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end


function hkvipnmk() 
tbAwardTemplet:GiveAwardByList({{szName="V� Giang � Thi�n Ki�m",tbProp={0,31},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end


function hkmpty()
        local tbOpt= 
               { 
                {"Th�y Y�n �ao", hkviptyd}, 
                {"Th�y Y�n Ch��ng", hkviptyc}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkviptyd() 
tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Ph�ng Nghi �ao",tbProp={0,46},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end


function hkviptyc()
tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Uy�n ��ng Ho�ng �ao",tbProp={0,51},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end
 

function hkmpdm()
        local tbOpt= 
               { 
                {"���ng M�n N�", hkvipbv}, 
                {"���ng M�n Phi Ti�u", hkvippt}, 
                {"���ng M�n Phi �ao", hkvippd}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 
function hkvipbv()
tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang M�n V� M�n Thi�n",tbProp={0,76},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end


function hkvippt() 
tbAwardTemplet:GiveAwardByList({{szName="S�m Ho�ng Phi Tinh �o�t H�n",tbProp={0,81},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end
 

function hkvippd() 
tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n ��n Ch� Phi �ao",tbProp={0,71},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end
 


function hkmpnd()
        local tbOpt= 
               { 
                {"Ng� ��c Ch��ng", hkvipndc}, 
                {"Ng� ��c �ao", hkvipndd}, 
                {"Ng� ��c B�a", hkvipndb}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 
function hkvipndc() 
tbAwardTemplet:GiveAwardByList({{szName="U Lung Kim X� Ph�t ��i",tbProp={0,56},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkvipndd() 
tbAwardTemplet:GiveAwardByList({{szName="Minh �o T� S�t ��c Nh�n",tbProp={0,61},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkvipndb() 
tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c Di�t L�i C�nh Ph�",tbProp={0,67},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkmptv()
        local tbOpt= 
               { 
                {"Thi�n V��ng Th��ng", hkviptvt}, 
                {"Thi�n V��ng Ch�y", hkviptvc}, 
                {"Thi�n V��ng �ao", hkviptvd}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkviptvt() 
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p B�n L�i To�n Long th��ng",tbProp={0,21},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkviptvc() 
tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",tbProp={0,16},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkviptvd() 
tbAwardTemplet:GiveAwardByList({{szName="Ng� Long L��ng Ng�n B�o �ao",tbProp={0,26},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkmptl()
        local tbOpt= 
               { 
                {"Thi�u L�m �ao", hkviptld}, 
                {"Thi�u L�m B�ng", hkviptlb}, 
                {"Thi�u L�m Quy�n", hkviptlq}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkviptld() 
tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng Gi�ng Ma Gi�i �ao",tbProp={0,11},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkviptlb() 
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma T� Kim C�n",tbProp={0,6},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkviptlq() 
tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Kim Ti Ch�nh H�ng C� Sa",tbProp={0,2},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkmpvd()
        local tbOpt= 
               { 
                {"V� �ang Ch��ng", hkvipvdc}, 
                {"V� �ang Ki�m", hkvipvdk}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkvipvdc() 
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,116},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkvipvdk() 
tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Ch�n V� Ki�m",tbProp={0,121},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkmpcl()
        local tbOpt= 
               { 
                {"C�n L�n �ao", hkvipcld}, 
                {"C�n L�n Ch��ng", hkvipclc}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkvipcld() 
tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Thi�n Ni�n H�n Thi�t",tbProp={0,126},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkvipclc() 
tbAwardTemplet:GiveAwardByList({{szName="L�i Khung H�n Tung B�ng B�ch quan",tbProp={0,131},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end



function hkmptn()
        local tbOpt= 
               { 
                {"Thi�n Nh�n Th��ng", hkviptnt}, 
                {"Thi�n Nh�n B�a", hkviptnb}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkviptnt() 
tbAwardTemplet:GiveAwardByList({{szName="Ma S�t Qu� C�c U Minh Th��ng",tbProp={0,101},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkviptnd() 
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� s�n H�i Phi H�ng L�",tbProp={0,115},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkviptnb() 
tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng �n Xu�t H� H�ng Khuy�n",tbProp={0,107},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkmpcb()
        local tbOpt= 
               { 
                {"C�i Bang Ch��ng", hkvipcbc}, 
                {"C�i Bang B�ng", hkvipcbb}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkvipcbc() 
tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Kh�ng Long H� Uy�n",tbProp={0,94},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end

function hkvipcbb() 
tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i L�c Ng�c Tr��ng",tbProp={0,96},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� m� th�nh c�ng B�o R��ng Ho�ng Kim <color=yellow>Nh�n trang b� HKMP 7 ng�y")				
end




