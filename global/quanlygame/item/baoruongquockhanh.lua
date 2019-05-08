IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

function main(nItemIndex)
dofile("script/global/quanlygame/item/baoruongquockhanh.lua")
hkmpvip1()	
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
                {"V� Tr�n Thanh T�m H��ng Thi�n Ch�u", hkvipnmc}, 
                {"V� Gian Ph�t V�n Ti ��i", hkvipnmk},
                {"V� Tr�n T� Bi Ng�c Ban Ch�", hkvipnmc2},  
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
end

function hkvipnmc()
tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n Thanh T�m H��ng Thi�n Ch�u",tbProp={0,42},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� V� Tr�n Thanh T�m H��ng Thi�n Ch�u ")				
end

function hkvipnmc2()
tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n T� Bi Ng�c Ban Ch�",tbProp={0,43},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� V� Tr�n T� Bi Ng�c Ban Ch� ")				
end


function hkvipnmk() 
tbAwardTemplet:GiveAwardByList({{szName="V� Gian Ph�t V�n Ti ��i",tbProp={0,33},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� V� Gian Ph�t V�n Ti ��i ")				
end


function hkmpty()
        local tbOpt= 
               { 
                {"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i", hkviptyd}, 
                {"B�ch H�i H�ng L�ng Ba", hkviptyc}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkviptyd() 
tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",tbProp={0,48},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i")				
end


function hkviptyc()
tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i H�ng L�ng Ba",tbProp={0,54},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� B�ch H�i H�ng L�ng Ba")				
end
 

function hkmpdm()
        local tbOpt= 
               { 
                {"Thi�n Quang ��nh T�m Ng�ng Th�n Ph�", hkvipbv}, 
                --{"S�m Hoang H�n Gi�o Y�u Th�c", hkvippt}, 
                {"B�ng H�n Huy�n Thi�n B�ng H�a B�i", hkvippd}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 
function hkvipbv()
tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang ��nh T�m Ng�ng Th�n Ph�",tbProp={0,77},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� Thi�n Quang ��nh T�m Ng�ng Th�n Ph�")				
end


function hkvippt() 
tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang H�n Gi�o Y�u Th�c",tbProp={0,83},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� S�m Hoang H�n Gi�o Y�u Th�c")				
end
 

function hkvippd() 
tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n Huy�n Thi�n B�ng H�a B�i",tbProp={0,74},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� B�ng H�n Huy�n Thi�n B�ng H�a B�i")				
end
 


function hkmpnd()
        local tbOpt= 
               { 
                {"U Lung M�c Th� Nhuy�n L�", hkvipndc}, 
                --{"Minh �o U ��c �m Y", hkvipndd}, 
                {"Ch� Ph��c Di�t L�i C�nh Ph�", hkvipndb}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 
function hkvipndc() 
tbAwardTemplet:GiveAwardByList({{szName="U Lung M�c Th� Nhuy�n L�",tbProp={0,60},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� U Lung M�c Th� Nhuy�n L�")				
end

function hkvipndd() 
tbAwardTemplet:GiveAwardByList({{szName="Minh �o U ��c �m Y",tbProp={0,62},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� Minh �o U ��c �m Y")				
end

function hkvipndb() 
tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c Di�t L�i C�nh Ph�",tbProp={0,67},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� Ch� Ph��c Di�t L�i C�nh Ph�")				
end

function hkmptv()
        local tbOpt= 
               { 
                --{"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i", hkviptvt}, 
                {"H�m Thi�n H� ��u Kh�n Th�c Uy�n", hkviptvc}, 
                {"Ng� Long T�n Phong H� y�n", hkviptvd}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkviptvt() 
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",tbProp={0,22},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� K� Nghi�p Huy�n V� Ho�ng Kim Kh�i")				
end

function hkviptvc() 
tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n H� ��u Kh�n Th�c Uy�n",tbProp={0,19},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>H�m Thi�n H� ��u Kh�n Th�c Uy�n")				
end

function hkviptvd() 
tbAwardTemplet:GiveAwardByList({{szName="Ng� Long T�n Phong H� y�n",tbProp={0,29},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Ng� Long T�n Phong H� y�n")				
end

function hkmptl()
        local tbOpt= 
               { 
                {"T� Kh�ng H� ph�p Y�u ��i", hkviptld}, 
               -- {"Ph�c Ma Ph�t T�m Nhuy�n Kh�u", hkviptlb}, 
                {"M�ng Long Ph�t Ph�p Huy�n B�i", hkviptlq}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkviptld() 
tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng H� ph�p Y�u ��i",tbProp={0,13},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>T� Kh�ng H� ph�p Y�u ��i")				
end

function hkviptlb() 
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma Ph�t T�m Nhuy�n Kh�u",tbProp={0,9},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� Ph�c Ma Ph�t T�m Nhuy�n Kh�u")				
end

function hkviptlq() 
tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Ph�t Ph�p Huy�n B�i",tbProp={0,4},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� M�ng Long Ph�t Ph�p Huy�n B�i ")				
end

function hkmpvd()
        local tbOpt= 
               { 
                {"L�ng Nh�c N� L�i Gi�i", hkvipvdc}, 
                {"C�p Phong Thanh T�ng Ph�p gi�i", nhancapphong2}, 
                {"C�p Phong Tam Thanh Ph�", hkvipvdk}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkvipvdc() 
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c N� L�i Gi�i",tbProp={0,118},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� L�ng Nh�c N� L�i Gi�i")				
end

function nhancapphong2()
tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Thanh T�ng Ph�p gi�i",tbProp={0,125},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>C�p Phong Thanh T�ng Ph�p gi�i")				
end

function hkvipvdk() 
tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Tam Thanh Ph�",tbProp={0,122},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� C�p Phong Tam Thanh Ph�")				
end

function hkmpcl()
        local tbOpt= 
               { 
                {"S��ng Tinh Phong B�o ch� ho�n", hkvipcld}, 
                {"L�i Khung Phong L�i Thanh C�m ��i", hkvipclc}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkvipcld() 
tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Phong B�o ch� ho�n",tbProp={0,130},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� S��ng Tinh Thanh Phong L� ��i ")				
end

function hkvipclc() 
tbAwardTemplet:GiveAwardByList({{szName="L�i Khung Phong L�i Thanh C�m ��i",tbProp={0,133},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� L�i Khung Phong L�i Thanh C�m ��i ")				
end



function hkmptn()
        local tbOpt= 
               { 
                {"Ma Th� Huy�t Ng�c Th�t S�t B�i", hkviptnt}, 
                {"Ma s�t h�a li�u thi�n uy�n", hkviptnb}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkviptnt() 
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� Huy�t Ng�c Th�t S�t B�i",tbProp={0,114},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� Ma Th� Huy�t Ng�c Th�t S�t B�i ")				
end

function hkviptnd() 
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� s�n H�i Phi H�ng L�",tbProp={0,115},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� Ma Th� s�n H�i Phi H�ng L� ")				
end

function hkviptnb() 
tbAwardTemplet:GiveAwardByList({{szName="Ma s�t h�a li�u thi�n uy�n",tbProp={0,104},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� Ma s�t h�a li�u thi�n uy�n")				
end

function hkmpcb()
        local tbOpt= 
               { 
                {"��ng C�u Ki�n Long Ban Ch� ", hkvipcbc}, 
                {"��ch Kh�i C�u ��i C�i Y", hkvipcbb}, 
                {"Tr� l�i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkvipcbc() 
tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch� ",tbProp={0,95},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� ��ng C�u Ki�n Long Ban Ch� ")				
end

function hkvipcbb() 
tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i Tri�n M�ng y�u ��i",tbProp={0,97},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n trang b� ��ch Kh�i C�u ��i C�i Y")				
end




