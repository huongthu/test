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
Say("Xin mêi chän trang bÞ",6,"Nga Mi/hkmpnm","Thóy Yªn/hkmpty","§­êng M«n/hkmpdm","Ngò §éc/hkmpnd","Thiªn V­¬ng/hkmptv","Trang Sau/hkmpvip2") 
end

function hkmpvip2() 
Say("Xin mêi chän trang bÞ",6,"ThiÕu L©m/hkmptl","Vâ §ang/hkmpvd","C«n L«n/hkmpcl","Thiªn NhÉn/hkmptn","C¸i Bang/hkmpcb","Trang Tr­íc/hkmpvip1") 
end

function hkmpnm() 
        local tbOpt= 
               { 
                {"V« TrÇn Thanh T©m H­íng ThiÖn Ch©u", hkvipnmc}, 
                {"V« Gian PhÊt V©n Ti ®¸i", hkvipnmk},
                {"V« TrÇn Tõ Bi Ngäc Ban ChØ", hkvipnmc2},  
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
end

function hkvipnmc()
tbAwardTemplet:GiveAwardByList({{szName="V« TrÇn Thanh T©m H­íng ThiÖn Ch©u",tbProp={0,42},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ V« TrÇn Thanh T©m H­íng ThiÖn Ch©u ")				
end

function hkvipnmc2()
tbAwardTemplet:GiveAwardByList({{szName="V« TrÇn Tõ Bi Ngäc Ban ChØ",tbProp={0,43},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ V« TrÇn Tõ Bi Ngäc Ban ChØ ")				
end


function hkvipnmk() 
tbAwardTemplet:GiveAwardByList({{szName="V« Gian PhÊt V©n Ti ®¸i",tbProp={0,33},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ V« Gian PhÊt V©n Ti ®¸i ")				
end


function hkmpty()
        local tbOpt= 
               { 
                {"Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i", hkviptyd}, 
                {"BÝch H¶i Hång L¨ng Ba", hkviptyc}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkviptyd() 
tbAwardTemplet:GiveAwardByList({{szName="Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i",tbProp={0,48},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i")				
end


function hkviptyc()
tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Hång L¨ng Ba",tbProp={0,54},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ BÝch H¶i Hång L¨ng Ba")				
end
 

function hkmpdm()
        local tbOpt= 
               { 
                {"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï", hkvipbv}, 
                --{"S©m Hoang Hån Gi¶o Yªu Thóc", hkvippt}, 
                {"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi", hkvippd}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 
function hkvipbv()
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï",tbProp={0,77},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï")				
end


function hkvippt() 
tbAwardTemplet:GiveAwardByList({{szName="S©m Hoang Hån Gi¶o Yªu Thóc",tbProp={0,83},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ S©m Hoang Hån Gi¶o Yªu Thóc")				
end
 

function hkvippd() 
tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi",tbProp={0,74},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi")				
end
 


function hkmpnd()
        local tbOpt= 
               { 
                {"U Lung MÆc Thï NhuyÔn Lý", hkvipndc}, 
                --{"Minh ¶o U §éc ¸m Y", hkvipndd}, 
                {"Chó Ph­îc DiÖt L«i C¶nh Phï", hkvipndb}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 
function hkvipndc() 
tbAwardTemplet:GiveAwardByList({{szName="U Lung MÆc Thï NhuyÔn Lý",tbProp={0,60},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ U Lung MÆc Thï NhuyÔn Lý")				
end

function hkvipndd() 
tbAwardTemplet:GiveAwardByList({{szName="Minh ¶o U §éc ¸m Y",tbProp={0,62},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ Minh ¶o U §éc ¸m Y")				
end

function hkvipndb() 
tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc DiÖt L«i C¶nh Phï",tbProp={0,67},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ Chó Ph­îc DiÖt L«i C¶nh Phï")				
end

function hkmptv()
        local tbOpt= 
               { 
                --{"KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i", hkviptvt}, 
                {"H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn", hkviptvc}, 
                {"Ngù Long TÊn Phong Hé yÓn", hkviptvd}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkviptvt() 
tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",tbProp={0,22},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i")				
end

function hkviptvc() 
tbAwardTemplet:GiveAwardByList({{szName="H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn",tbProp={0,19},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn")				
end

function hkviptvd() 
tbAwardTemplet:GiveAwardByList({{szName="Ngù Long TÊn Phong Hé yÓn",tbProp={0,29},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>Ngù Long TÊn Phong Hé yÓn")				
end

function hkmptl()
        local tbOpt= 
               { 
                {"Tø Kh«ng Hé ph¸p Yªu ®¸i", hkviptld}, 
               -- {"Phôc Ma PhËt T©m NhuyÔn KhÊu", hkviptlb}, 
                {"Méng Long PhËt Ph¸p HuyÒn Béi", hkviptlq}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkviptld() 
tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Hé ph¸p Yªu ®¸i",tbProp={0,13},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>Tø Kh«ng Hé ph¸p Yªu ®¸i")				
end

function hkviptlb() 
tbAwardTemplet:GiveAwardByList({{szName="Phôc Ma PhËt T©m NhuyÔn KhÊu",tbProp={0,9},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ Phôc Ma PhËt T©m NhuyÔn KhÊu")				
end

function hkviptlq() 
tbAwardTemplet:GiveAwardByList({{szName="Méng Long PhËt Ph¸p HuyÒn Béi",tbProp={0,4},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ Méng Long PhËt Ph¸p HuyÒn Béi ")				
end

function hkmpvd()
        local tbOpt= 
               { 
                {"L¨ng Nh¹c Né L«i Giíi", hkvipvdc}, 
                {"CËp Phong Thanh Tïng Ph¸p giíi", nhancapphong2}, 
                {"CËp Phong Tam Thanh Phï", hkvipvdk}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkvipvdc() 
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Né L«i Giíi",tbProp={0,118},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ L¨ng Nh¹c Né L«i Giíi")				
end

function nhancapphong2()
tbAwardTemplet:GiveAwardByList({{szName="CËp Phong Thanh Tïng Ph¸p giíi",tbProp={0,125},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>CËp Phong Thanh Tïng Ph¸p giíi")				
end

function hkvipvdk() 
tbAwardTemplet:GiveAwardByList({{szName="CËp Phong Tam Thanh Phï",tbProp={0,122},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ CËp Phong Tam Thanh Phï")				
end

function hkmpcl()
        local tbOpt= 
               { 
                {"S­¬ng Tinh Phong B¹o chØ hoµn", hkvipcld}, 
                {"L«i Khung Phong L«i Thanh CÈm ®¸i", hkvipclc}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkvipcld() 
tbAwardTemplet:GiveAwardByList({{szName="S­¬ng Tinh Phong B¹o chØ hoµn",tbProp={0,130},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ S­¬ng Tinh Thanh Phong Lò ®¸i ")				
end

function hkvipclc() 
tbAwardTemplet:GiveAwardByList({{szName="L«i Khung Phong L«i Thanh CÈm ®¸i",tbProp={0,133},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ L«i Khung Phong L«i Thanh CÈm ®¸i ")				
end



function hkmptn()
        local tbOpt= 
               { 
                {"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi", hkviptnt}, 
                {"Ma s¸t háa liªu thiªn uyÓn", hkviptnb}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkviptnt() 
tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",tbProp={0,114},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi ")				
end

function hkviptnd() 
tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ s¬n H¶i Phi Hång Lý",tbProp={0,115},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ Ma ThÞ s¬n H¶i Phi Hång Lý ")				
end

function hkviptnb() 
tbAwardTemplet:GiveAwardByList({{szName="Ma s¸t háa liªu thiªn uyÓn",tbProp={0,104},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ Ma s¸t háa liªu thiªn uyÓn")				
end

function hkmpcb()
        local tbOpt= 
               { 
                {"§ång Cõu KiÕn Long Ban ChØ ", hkvipcbc}, 
                {"§Þch Kh¸i Cöu §¹i C¸i Y", hkvipcbb}, 
                {"Trë l¹i", hkmpvip1}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkvipcbc() 
tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu KiÕn Long Ban ChØ ",tbProp={0,95},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ §ång Cõu KiÕn Long Ban ChØ ")				
end

function hkvipcbb() 
tbAwardTemplet:GiveAwardByList({{szName="§Þch Kh¸i TriÒn M·ng yªu ®¸i",tbProp={0,97},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn trang bÞ §Þch Kh¸i Cöu §¹i C¸i Y")				
end




