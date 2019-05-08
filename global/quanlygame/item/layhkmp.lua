Include("\\script\\battles\\battlehead.lua")


TOWNPORTAL_MAXCOUNT = 1

function main(nItemIdx)
	local n_param = tonumber(GetItemParam(nItemIdx,1)) + 1
	local itemname = "<color=blue>"..GetItemName(nItemIdx).."<color>"
	SetSpecItemParam(nItemIdx,1,n_param)
	SyncItem(nItemIdx)
	if (n_param >= TOWNPORTAL_MAXCOUNT) then
		RemoveItemByIndex(nItemIdx)
		Msg2Player("<#> "..itemname.."<#> ®· sö dông hÕt "..TOWNPORTAL_MAXCOUNT.."<#> lÇn, vËt phÈm bÞ hñy!")
	else
		Msg2Player("<#> "..itemname.."<#> Sè lÇn dïng cßn l¹i "..(TOWNPORTAL_MAXCOUNT - n_param).."<#> lÇn")
	end
	hkmpvip1();
	return 1	
end;

function GetDesc( nItemIdx )
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItemIdx, 1 ))
	szDesc = szDesc..format("\nCßn sè lÇn <color=green> %d <color> lÇn", (TOWNPORTAL_MAXCOUNT - n_param));
	return szDesc;
end



function hkmpvip1() 
Say("Xin mêi chän trang bÞ",7,"Nga Mi/hkmpnm","Thóy Yªn/hkmpty","§­êng M«n/hkmpdm","Ngò §éc/hkmpnd","Thiªn V­¬ng/hkmptv","Trang Sau/hkmpvip2","KÕt thóc ®èi tho¹i/no") 
end

function hkmpvip2() 
Say("Xin mêi chän trang bÞ",7,"ThiÕu L©m/hkmptl","Vâ §ang/hkmpvd","C«n L«n/hkmpcl","Thiªn NhÉn/hkmptn","C¸i Bang/hkmpcb","Trang Tr­íc/hkmpvip1","KÕt thóc ®èi tho¹i/no") 
end

function hkmpnm() 
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Nga My Ch­ëng", hkvipnmc}, 
                {"Nga My KiÕm", hkvipnmk}, 
                --{"Nga My Buff", hkvipnmbuff}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
        return 1 
end 

function hkvipnmc()
tbAwardTemplet:GiveAwardByList({{szName="V« Ma TÈy Ngäc KhÊu",tbProp={0,39},nCount=1,nQuality = 1, },}, "test", 1);
end


function hkvipnmk() 
tbAwardTemplet:GiveAwardByList({{szName="V« Gian û Thiªn KiÕm",tbProp={0,31},nCount=1,nQuality = 1, },}, "test", 1);
end


function hkvipnmbuff() 
tbAwardTemplet:GiveAwardByList({{szName="V« TrÇn ThÝch DiÖn Ch©u",tbProp={0,42},nCount=1,nQuality = 1, },}, "test", 1);
end

function hkmpty()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Thóy Yªn §ao", hkviptyd}, 
                {"Thóy Yªn Ch­ëng", hkviptyc}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptyd() 
tbAwardTemplet:GiveAwardByList({{szName="Tª Hoµng Phông Nghi §ao",tbProp={0,46},nCount=1,nQuality = 1, },}, "test", 1);
end


function hkviptyc()
tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Uyªn ¦¬ng Hoµng §ao",tbProp={0,51},nCount=1,nQuality = 1, },}, "test", 1);
end
 

function hkmpdm()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
        local tbOpt= 
               { 
                {"§­êng M«n Ná", hkvipbv}, 
                {"§­êng M«n Phi Tiªu", hkvippt}, 
                {"§­êng M«n Phi §ao", hkvippd}, 
                --{"§­êng M«n BÉy", hkvipbay}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipbv()
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Quang M¹n Vò M·n Thiªn",tbProp={0,76},nCount=1,nQuality = 1, },}, "test", 1);
end


function hkvippt() 
tbAwardTemplet:GiveAwardByList({{szName="S©m Hoµng Phi Tinh §o¹t Hån",tbProp={0,81},nCount=1,nQuality = 1, },}, "test", 1);
end
 

function hkvippd() 
tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn §¬n ChØ Phi §ao",tbProp={0,71},nCount=1,nQuality = 1, },}, "test", 1);
end
 

function hkvipbay() 
for i =1,5 do
AddGoldItem(0,87)  
end
end;

function hkmpnd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
        local tbOpt= 
               { 
                {"Ngò §éc Ch­ëng", hkvipndc}, 
                {"Ngò §éc §ao", hkvipndd}, 
                --{"Ngò §éc Bïa", hkvipndb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipndc() 
tbAwardTemplet:GiveAwardByList({{szName="U Lung Kim Xµ Ph¸t ®¸i",tbProp={0,56},nCount=1,nQuality = 1, },}, "test", 1);
end

function hkvipndd() 
tbAwardTemplet:GiveAwardByList({{szName="Minh ¶o Tµ S¸t §éc NhËn",tbProp={0,61},nCount=1,nQuality = 1, },}, "test", 1);
end

function hkvipndb() 
tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc DiÖt L«i C¶nh Phï",tbProp={0,67},nCount=1,nQuality = 1, },}, "test", 1);
end

function hkmptv()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"Thiªn V­¬ng Th­¬ng", hkviptvt}, 
                {"Thiªn V­¬ng Chïy", hkviptvc}, 
                {"Thiªn V­¬ng §ao", hkviptvd}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptvt() 
tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp B«n L«i Toµn Long th­¬ng",tbProp={0,21},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkviptvc() 
tbAwardTemplet:GiveAwardByList({{szName="H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy",tbProp={0,16},nCount=1,nQuality = 1, },}, "test", 1);
end

function hkviptvd() 
tbAwardTemplet:GiveAwardByList({{szName="Ngù Long L­îng Ng©n B¶o ®ao",tbProp={0,26},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkmptl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"ThiÕu L©m §ao", hkviptld}, 
                            {"ThiÕu L©m Bæng", hkviptlb}, 
                {"ThiÕu L©m QuyÒn", hkviptlq}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptld() 
tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Gi¸ng Ma Giíi ®ao",tbProp={0,11},nCount=1,nQuality = 1, },}, "test", 1);
end  

function hkviptlb() 
tbAwardTemplet:GiveAwardByList({{szName="Phôc Ma Tö Kim C«n",tbProp={0,6},nCount=1,nQuality = 1, },}, "test", 1);
end  

function hkviptlq() 
tbAwardTemplet:GiveAwardByList({{szName="Méng Long Kim Ti ChÝnh Hång Cµ Sa",tbProp={0,2},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkmpvd()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Vâ §ang Ch­ëng", hkvipvdc}, 
                            {"Vâ §ang KiÕm", hkvipvdk}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipvdc() 
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,116},nCount=1,nQuality = 1, },}, "test", 1);
end  

function hkvipvdk() 
tbAwardTemplet:GiveAwardByList({{szName="CËp Phong Ch©n Vò KiÕm",tbProp={0,121},nCount=1,nQuality = 1, },}, "test", 1);
end  

function hkmpcl()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"C«n L«n §ao", hkvipcld}, 
                            {"C«n L«n Ch­ëng", hkvipclc}, 
                --{"C«n L«n Bïa", hkvipclb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipcld() 
tbAwardTemplet:GiveAwardByList({{szName="S­¬ng Tinh Thiªn Niªn Hµn ThiÕt",tbProp={0,126},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkvipclc() 
tbAwardTemplet:GiveAwardByList({{szName="L«i Khung Hµn Tung B¨ng B¹ch quan",tbProp={0,131},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkvipclb() 
for i =1,5 do
AddGoldItem(0,136)  
end
end; 

function hkmptn()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end 
local tbOpt= 
               { 
                {"Thiªn NhÉn Th­¬ng", hkviptnt}, 
                {"Thiªn NhÉn Ch­ëng", hkviptnd}, 
               -- {"Thiªn NhÉn Bïa", hkviptnb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkviptnt() 
tbAwardTemplet:GiveAwardByList({{szName="Ma S¸t Quû Cèc U Minh Th­¬ng",tbProp={0,101},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkviptnd() 
tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ To¹i Tinh §ao",tbProp={0,540},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkviptnb() 
tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",tbProp={0,107},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkmpcb()
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
local tbOpt= 
               { 
                {"C¸i Bang Ch­ëng", hkvipcbc}, 
                            {"C¸i Bang Bæng", hkvipcbb}, 
                {"Tho¸t"}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
        return 1 
end 

function hkvipcbc() 
tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu Kh¸ng Long Hé UyÓn",tbProp={0,94},nCount=1,nQuality = 1, },}, "test", 1);
end 

function hkvipcbb() 
tbAwardTemplet:GiveAwardByList({{szName="§Þch Kh¸i Lôc Ngäc Tr­îng",tbProp={0,96},nCount=1,nQuality = 1, },}, "test", 1);
end


