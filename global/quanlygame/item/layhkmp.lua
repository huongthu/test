Include("\\script\\battles\\battlehead.lua")


TOWNPORTAL_MAXCOUNT = 1

function main(nItemIdx)
	local n_param = tonumber(GetItemParam(nItemIdx,1)) + 1
	local itemname = "<color=blue>"..GetItemName(nItemIdx).."<color>"
	SetSpecItemParam(nItemIdx,1,n_param)
	SyncItem(nItemIdx)
	if (n_param >= TOWNPORTAL_MAXCOUNT) then
		RemoveItemByIndex(nItemIdx)
		Msg2Player("<#> "..itemname.."<#> �� s� d�ng h�t "..TOWNPORTAL_MAXCOUNT.."<#> l�n, v�t ph�m b� h�y!")
	else
		Msg2Player("<#> "..itemname.."<#> S� l�n d�ng c�n l�i "..(TOWNPORTAL_MAXCOUNT - n_param).."<#> l�n")
	end
	hkmpvip1();
	return 1	
end;

function GetDesc( nItemIdx )
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItemIdx, 1 ))
	szDesc = szDesc..format("\nC�n s� l�n <color=green> %d <color> l�n", (TOWNPORTAL_MAXCOUNT - n_param));
	return szDesc;
end



function hkmpvip1() 
Say("Xin m�i ch�n trang b�",7,"Nga Mi/hkmpnm","Th�y Y�n/hkmpty","���ng M�n/hkmpdm","Ng� ��c/hkmpnd","Thi�n V��ng/hkmptv","Trang Sau/hkmpvip2","K�t th�c ��i tho�i/no") 
end

function hkmpvip2() 
Say("Xin m�i ch�n trang b�",7,"Thi�u L�m/hkmptl","V� �ang/hkmpvd","C�n L�n/hkmpcl","Thi�n Nh�n/hkmptn","C�i Bang/hkmpcb","Trang Tr��c/hkmpvip1","K�t th�c ��i tho�i/no") 
end

function hkmpnm() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Nga My Ch��ng", hkvipnmc}, 
                {"Nga My Ki�m", hkvipnmk}, 
                --{"Nga My Buff", hkvipnmbuff}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
        return 1 
end 

function hkvipnmc()
tbAwardTemplet:GiveAwardByList({{szName="V� Ma T�y Ng�c Kh�u",tbProp={0,39},nCount=1,nQuality = 1, },}, "test", 1);
end


function hkvipnmk() 
tbAwardTemplet:GiveAwardByList({{szName="V� Gian � Thi�n Ki�m",tbProp={0,31},nCount=1,nQuality = 1, },}, "test", 1);
end


function hkvipnmbuff() 
tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n Th�ch Di�n Ch�u",tbProp={0,42},nCount=1,nQuality = 1, },}, "test", 1);
end

function hkmpty()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Th�y Y�n �ao", hkviptyd}, 
                {"Th�y Y�n Ch��ng", hkviptyc}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptyd() 
tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Ph�ng Nghi �ao",tbProp={0,46},nCount=1,nQuality = 1, },}, "test", 1);
end


function hkviptyc()
tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Uy�n ��ng Ho�ng �ao",tbProp={0,51},nCount=1,nQuality = 1, },}, "test", 1);
end
 

function hkmpdm()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
        local tbOpt= 
               { 
                {"���ng M�n N�", hkvipbv}, 
                {"���ng M�n Phi Ti�u", hkvippt}, 
                {"���ng M�n Phi �ao", hkvippd}, 
                --{"���ng M�n B�y", hkvipbay}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipbv()
tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang M�n V� M�n Thi�n",tbProp={0,76},nCount=1,nQuality = 1, },}, "test", 1);
end


function hkvippt() 
tbAwardTemplet:GiveAwardByList({{szName="S�m Ho�ng Phi Tinh �o�t H�n",tbProp={0,81},nCount=1,nQuality = 1, },}, "test", 1);
end
 

function hkvippd() 
tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n ��n Ch� Phi �ao",tbProp={0,71},nCount=1,nQuality = 1, },}, "test", 1);
end
 

function hkvipbay() 
for i =1,5 do
AddGoldItem(0,87)  
end
end;

function hkmpnd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
        local tbOpt= 
               { 
                {"Ng� ��c Ch��ng", hkvipndc}, 
                {"Ng� ��c �ao", hkvipndd}, 
                --{"Ng� ��c B�a", hkvipndb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipndc() 
tbAwardTemplet:GiveAwardByList({{szName="U Lung Kim X� Ph�t ��i",tbProp={0,56},nCount=1,nQuality = 1, },}, "test", 1);
end

function hkvipndd() 
tbAwardTemplet:GiveAwardByList({{szName="Minh �o T� S�t ��c Nh�n",tbProp={0,61},nCount=1,nQuality = 1, },}, "test", 1);
end

function hkvipndb() 
tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c Di�t L�i C�nh Ph�",tbProp={0,67},nCount=1,nQuality = 1, },}, "test", 1);
end

function hkmptv()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"Thi�n V��ng Th��ng", hkviptvt}, 
                {"Thi�n V��ng Ch�y", hkviptvc}, 
                {"Thi�n V��ng �ao", hkviptvd}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptvt() 
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p B�n L�i To�n Long th��ng",tbProp={0,21},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkviptvc() 
tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",tbProp={0,16},nCount=1,nQuality = 1, },}, "test", 1);
end

function hkviptvd() 
tbAwardTemplet:GiveAwardByList({{szName="Ng� Long L��ng Ng�n B�o �ao",tbProp={0,26},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkmptl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Thi�u L�m �ao", hkviptld}, 
                            {"Thi�u L�m B�ng", hkviptlb}, 
                {"Thi�u L�m Quy�n", hkviptlq}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptld() 
tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng Gi�ng Ma Gi�i �ao",tbProp={0,11},nCount=1,nQuality = 1, },}, "test", 1);
end  

function hkviptlb() 
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma T� Kim C�n",tbProp={0,6},nCount=1,nQuality = 1, },}, "test", 1);
end  

function hkviptlq() 
tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Kim Ti Ch�nh H�ng C� Sa",tbProp={0,2},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkmpvd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"V� �ang Ch��ng", hkvipvdc}, 
                            {"V� �ang Ki�m", hkvipvdk}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipvdc() 
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,116},nCount=1,nQuality = 1, },}, "test", 1);
end  

function hkvipvdk() 
tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Ch�n V� Ki�m",tbProp={0,121},nCount=1,nQuality = 1, },}, "test", 1);
end  

function hkmpcl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"C�n L�n �ao", hkvipcld}, 
                            {"C�n L�n Ch��ng", hkvipclc}, 
                --{"C�n L�n B�a", hkvipclb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcld() 
tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Thi�n Ni�n H�n Thi�t",tbProp={0,126},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkvipclc() 
tbAwardTemplet:GiveAwardByList({{szName="L�i Khung H�n Tung B�ng B�ch quan",tbProp={0,131},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkvipclb() 
for i =1,5 do
AddGoldItem(0,136)  
end
end; 

function hkmptn()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end 
local tbOpt= 
               { 
                {"Thi�n Nh�n Th��ng", hkviptnt}, 
                {"Thi�n Nh�n Ch��ng", hkviptnd}, 
               -- {"Thi�n Nh�n B�a", hkviptnb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkviptnt() 
tbAwardTemplet:GiveAwardByList({{szName="Ma S�t Qu� C�c U Minh Th��ng",tbProp={0,101},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkviptnd() 
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� To�i Tinh �ao",tbProp={0,540},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkviptnb() 
tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng �n Xu�t H� H�ng Khuy�n",tbProp={0,107},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkmpcb()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
local tbOpt= 
               { 
                {"C�i Bang Ch��ng", hkvipcbc}, 
                            {"C�i Bang B�ng", hkvipcbb}, 
                {"Tho�t"}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
        return 1 
end 

function hkvipcbc() 
tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Kh�ng Long H� Uy�n",tbProp={0,94},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkvipcbb() 
tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i L�c Ng�c Tr��ng",tbProp={0,96},nCount=1,nQuality = 1, },}, "test", 1);
end


