IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

function main(nItemIndex)
dofile("script/global/quanlygame/baoruonghoangkim.lua")
	local nSilverCount = CalcEquiproomItemCount(6,1,30226,1) ;
	if(nSilverCount < 1) then
		Say("§¹i hiÖp cÇn cã cÇn cã 1 ch×a khãa hoµng kim mua t¹i NPC T©n Thñ ®Ó më b¶o r­¬ng nµy (l­u ý ch¹y cËp nhËt tr­íc khi sö dông)",0)
	return 1
                                                                                  end 
ConsumeEquiproomItem(1,6,1,30226,1)
hkmpvip1()	
end




function hkmpvip1() 
Say("Xin mêi chän trang bÞ",6,"Nga Mi/hkmpnm","Thóy Yªn/hkmpty","§­êng M«n/hkmpdm","Ngò §éc/hkmpnd","Thiªn V­¬ng/hkmptv","Trang Sau/hkmpvip2") 
end

function hkmpvip2() 
Say("Xin mêi chän trang bÞ",6,"ThiÕu L©m/hkmptl","Vâ §ang/hkmpvd","C«n L«n/hkmpcl","Thiªn NhÉn/hkmptn","C¸i Bang/hkmpcb","Trang Tr­íc/hkmpvip1") 
end

function hkmpnm() 
        local tbOpt= 
               { 
                {"Nga My Ch­ëng", hkvipnmc}, 
                {"Nga My KiÕm", hkvipnmk}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
end

function hkvipnmc()
tbAwardTemplet:GiveAwardByList({{szName="V« Ma TÈy T­gäc KhÊu",tbProp={0,39},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end


function hkvipnmk() 
tbAwardTemplet:GiveAwardByList({{szName="V« Giang û Thiªn KiÕm",tbProp={0,31},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end


function hkmpty()
        local tbOpt= 
               { 
                {"Thóy Yªn §ao", hkviptyd}, 
                {"Thóy Yªn Ch­ëng", hkviptyc}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkviptyd() 
tbAwardTemplet:GiveAwardByList({{szName="Tª Hoµng Phông Nghi §ao",tbProp={0,46},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end


function hkviptyc()
tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Uyªn ¦¬ng Hoµng §ao",tbProp={0,51},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end
 

function hkmpdm()
        local tbOpt= 
               { 
                {"§­êng M«n Ná", hkvipbv}, 
                {"§­êng M«n Phi Tiªu", hkvippt}, 
                {"§­êng M«n Phi §ao", hkvippd}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 
function hkvipbv()
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Quang M¹n Vò M·n Thiªn",tbProp={0,76},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end


function hkvippt() 
tbAwardTemplet:GiveAwardByList({{szName="S©m Hoµng Phi Tinh §o¹t Hån",tbProp={0,81},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end
 

function hkvippd() 
tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn §¬n ChØ Phi §ao",tbProp={0,71},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end
 


function hkmpnd()
        local tbOpt= 
               { 
                {"Ngò §éc Ch­ëng", hkvipndc}, 
                {"Ngò §éc §ao", hkvipndd}, 
                {"Ngò §éc Bïa", hkvipndb}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 
function hkvipndc() 
tbAwardTemplet:GiveAwardByList({{szName="U Lung Kim Xµ Ph¸t ®¸i",tbProp={0,56},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkvipndd() 
tbAwardTemplet:GiveAwardByList({{szName="Minh ¶o Tµ S¸t §éc NhËn",tbProp={0,61},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkvipndb() 
tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc DiÖt L«i C¶nh Phï",tbProp={0,67},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkmptv()
        local tbOpt= 
               { 
                {"Thiªn V­¬ng Th­¬ng", hkviptvt}, 
                {"Thiªn V­¬ng Chïy", hkviptvc}, 
                {"Thiªn V­¬ng §ao", hkviptvd}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkviptvt() 
tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp B«n L«i Toµn Long th­¬ng",tbProp={0,21},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkviptvc() 
tbAwardTemplet:GiveAwardByList({{szName="H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy",tbProp={0,16},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkviptvd() 
tbAwardTemplet:GiveAwardByList({{szName="Ngù Long L­îng Ng©n B¶o ®ao",tbProp={0,26},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkmptl()
        local tbOpt= 
               { 
                {"ThiÕu L©m §ao", hkviptld}, 
                {"ThiÕu L©m Bæng", hkviptlb}, 
                {"ThiÕu L©m QuyÒn", hkviptlq}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkviptld() 
tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Gi¸ng Ma Giíi ®ao",tbProp={0,11},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkviptlb() 
tbAwardTemplet:GiveAwardByList({{szName="Phôc Ma Tö Kim C«n",tbProp={0,6},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkviptlq() 
tbAwardTemplet:GiveAwardByList({{szName="Méng Long Kim Ti ChÝnh Hång Cµ Sa",tbProp={0,2},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkmpvd()
        local tbOpt= 
               { 
                {"Vâ §ang Ch­ëng", hkvipvdc}, 
                {"Vâ §ang KiÕm", hkvipvdk}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkvipvdc() 
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,116},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkvipvdk() 
tbAwardTemplet:GiveAwardByList({{szName="CËp Phong Ch©n Vò KiÕm",tbProp={0,121},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkmpcl()
        local tbOpt= 
               { 
                {"C«n L«n §ao", hkvipcld}, 
                {"C«n L«n Ch­ëng", hkvipclc}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkvipcld() 
tbAwardTemplet:GiveAwardByList({{szName="S­¬ng Tinh Thiªn Niªn Hµn ThiÕt",tbProp={0,126},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkvipclc() 
tbAwardTemplet:GiveAwardByList({{szName="L«i Khung Hµn Tung B¨ng B¹ch quan",tbProp={0,131},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end



function hkmptn()
        local tbOpt= 
               { 
                {"Thiªn NhÉn Th­¬ng", hkviptnt}, 
                {"Thiªn NhÉn Bïa", hkviptnb}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkviptnt() 
tbAwardTemplet:GiveAwardByList({{szName="Ma S¸t Quû Cèc U Minh Th­¬ng",tbProp={0,101},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkviptnd() 
tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ s¬n H¶i Phi Hång Lý",tbProp={0,115},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkviptnb() 
tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",tbProp={0,107},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkmpcb()
        local tbOpt= 
               { 
                {"C¸i Bang Ch­ëng", hkvipcbc}, 
                {"C¸i Bang Bæng", hkvipcbb}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkvipcbc() 
tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu Kh¸ng Long Hé UyÓn",tbProp={0,94},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end

function hkvipcbb() 
tbAwardTemplet:GiveAwardByList({{szName="§Þch Kh¸i Lôc Ngäc Tr­îng",tbProp={0,96},nCount=1,nQuality = 1,nExpiredTime=4320,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ HKMP 3 ngµy tù chän")				
end




