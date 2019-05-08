IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

function main(nItemIndex)
dofile("script/global/quanlygame/item/baoruongvinhvien.lua")
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 30) then -- gia xu
		Talk(1,"","Xin lçi cÇn 30xu míi cã thÓ më ®­îc r­¬ng..") -- go
	return 1
end
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Bat Dau Chon Mon Phai Khi Mo Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)	
ConsumeEquiproomItem(30,4,417,1,1)
Say("Xin mêi chän trang bÞ",10,"Nga Mi/hkmpnm","Thóy Yªn/hkmpty","§­êng M«n/hkmpdm","Ngò §éc/hkmpnd","Thiªn V­¬ng/hkmptv","ThiÕu L©m/hkmptl","Vâ §ang/hkmpvd","C«n L«n/hkmpcl","Thiªn NhÉn/hkmptn","C¸i Bang/hkmpcb")
end


function hkmpnm() 
        local tbOpt= 
               { 
                {"V« Ma TÈy T­­îng Ngäc KhÊu", hkvipnmc}, 
                {"V« Giang û Thiªn KiÕm", hkvipnmk}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
end

function hkvipnmc()
tbAwardTemplet:GiveAwardByList({{szName="V« Ma TÈy T­­îng Ngäc KhÊu",tbProp={0,39},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn V« Ma TÈy T­­îng Ngäc KhÊu vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end


function hkvipnmk() 
tbAwardTemplet:GiveAwardByList({{szName="V« Giang û Thiªn KiÕm",tbProp={0,31},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn V« Giang û Thiªn KiÕm vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end


function hkmpty()
        local tbOpt= 
               { 
                {"Tª Hoµng Phông Nghi §ao", hkviptyd}, 
                {"BÝch H¶i Uyªn ¦¬ng Hoµng §ao", hkviptyc}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkviptyd() 
tbAwardTemplet:GiveAwardByList({{szName="Tª Hoµng Phông Nghi §ao",tbProp={0,46},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn Tª Hoµng Phông Nghi §ao vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end


function hkviptyc()
tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Uyªn ¦¬ng Hoµng §ao",tbProp={0,51},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn BÝch H¶i Uyªn ¦¬ng Hoµng §ao vÜnh viÔn tù chän")	
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)			
end
 

function hkmpdm()
        local tbOpt= 
               { 
                {"Thiªn Quang M¹n Vò M·n Thiªn", hkvipbv}, 
                {"S©m Hoµng Phi Tinh §o¹t Hån", hkvippt}, 
                {"B¨ng Hµn §¬n ChØ Phi §ao", hkvippd}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 
function hkvipbv()
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Quang M¹n Vò M·n Thiªn",tbProp={0,76},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn Thiªn Quang M¹n Vò M·n Thiªn vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end


function hkvippt() 
tbAwardTemplet:GiveAwardByList({{szName="S©m Hoµng Phi Tinh §o¹t Hån",tbProp={0,81},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn S©m Hoµng Phi Tinh §o¹t Hån vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end
 

function hkvippd() 
tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn §¬n ChØ Phi §ao",tbProp={0,71},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn B¨ng Hµn §¬n ChØ Phi §ao vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end
 


function hkmpnd()
        local tbOpt= 
               { 
                {"U Lung Kim Xµ Ph¸t ®¸i", hkvipndc}, 
                {"Minh ¶o Tµ S¸t §éc NhËn", hkvipndd}, 
              --  {"Ngò §éc Bïa", hkvipndb}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 
function hkvipndc() 
tbAwardTemplet:GiveAwardByList({{szName="U Lung Kim Xµ Ph¸t ®¸i",tbProp={0,56},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn U Lung Kim Xµ Ph¸t ®¸i vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkvipndd() 
tbAwardTemplet:GiveAwardByList({{szName="Minh ¶o Tµ S¸t §éc NhËn",tbProp={0,61},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn Minh ¶o Tµ S¸t §éc NhËn vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkvipndb() 
tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc DiÖt L«i C¶nh Phï",tbProp={0,67},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn Chó Ph­îc DiÖt L«i C¶nh Phï vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkmptv()
        local tbOpt= 
               { 
                {"KÕ NghiÖp B«n L«i Toµn Long th­¬ng", hkviptvt}, 
                {"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy", hkviptvc}, 
                {"Ngù Long L­îng Ng©n B¶o ®ao", hkviptvd}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkviptvt() 
tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp B«n L«i Toµn Long th­¬ng",tbProp={0,21},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn KÕ NghiÖp B«n L«i Toµn Long th­¬ng vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkviptvc() 
tbAwardTemplet:GiveAwardByList({{szName="H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy",tbProp={0,16},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkviptvd() 
tbAwardTemplet:GiveAwardByList({{szName="Ngù Long L­îng Ng©n B¶o ®ao",tbProp={0,26},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn Ngù Long L­îng Ng©n B¶o ®ao vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkmptl()
        local tbOpt= 
               { 
                {"Tø Kh«ng Gi¸ng Ma Giíi ®ao", hkviptld}, 
                {"Phôc Ma Tö Kim C«n", hkviptlb}, 
                {"Méng Long Kim Ti ChÝnh Hång Cµ Sa", hkviptlq}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkviptld() 
tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Gi¸ng Ma Giíi ®ao",tbProp={0,11},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn Tø Kh«ng Gi¸ng Ma Giíi ®ao vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkviptlb() 
tbAwardTemplet:GiveAwardByList({{szName="Phôc Ma Tö Kim C«n",tbProp={0,6},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn Phôc Ma Tö Kim C«n vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkviptlq() 
tbAwardTemplet:GiveAwardByList({{szName="Méng Long Kim Ti ChÝnh Hång Cµ Sa",tbProp={0,2},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn Méng Long Kim Ti ChÝnh Hång Cµ Sa vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkmpvd()
        local tbOpt= 
               { 
                {"L¨ng Nh¹c Th¸i Cùc KiÕm", hkvipvdc}, 
                {"CËp Phong Ch©n Vò KiÕm", hkvipvdk}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkvipvdc() 
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,116},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn L¨ng Nh¹c Th¸i Cùc KiÕm vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkvipvdk() 
tbAwardTemplet:GiveAwardByList({{szName="CËp Phong Ch©n Vò KiÕm",tbProp={0,121},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn CËp Phong Ch©n Vò KiÕm vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkmpcl()
        local tbOpt= 
               { 
                {"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt", hkvipcld}, 
                {"L«i Khung Hµn Tung B¨ng B¹ch quan", hkvipclc}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkvipcld() 
tbAwardTemplet:GiveAwardByList({{szName="S­¬ng Tinh Thiªn Niªn Hµn ThiÕt",tbProp={0,126},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn S­¬ng Tinh Thiªn Niªn Hµn ThiÕt vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkvipclc() 
tbAwardTemplet:GiveAwardByList({{szName="L«i Khung Hµn Tung B¨ng B¹ch quan",tbProp={0,131},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn L«i Khung Hµn Tung B¨ng B¹ch quan vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end



function hkmptn()
        local tbOpt= 
               { 
                {"Ma S¸t Quû Cèc U Minh Th­¬ng", hkviptnt}, 
              --  {"Ma ThÞ s¬n H¶i Phi Hång Lý", hkviptnd},
                {"Ma ThÞ To¹i Tinh §ao", hkviptnmathi},  
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkviptnt() 
tbAwardTemplet:GiveAwardByList({{szName="Ma S¸t Quû Cèc U Minh Th­¬ng",tbProp={0,101},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËnMa S¸t Quû Cèc U Minh Th­¬ng vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkviptnd() 
tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ s¬n H¶i Phi Hång Lý",tbProp={0,115},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn Ma ThÞ s¬n H¶i Phi Hång Lý vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkviptnmathi() 
tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ To¹i Tinh §ao",tbProp={0,540},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn Ma ThÞ To¹i Tinh §ao vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkmpcb()
        local tbOpt= 
               { 
                {"§ång Cõu Kh¸ng Long Hé UyÓn", hkvipcbc}, 
                {"§Þch Kh¸i Lôc Ngäc Tr­îng", hkvipcbb}, 
               } 
                CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt) 
end 

function hkvipcbc() 
tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu Kh¸ng Long Hé UyÓn",tbProp={0,94},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn §ång Cõu Kh¸ng Long Hé UyÓn vÜnh viÔn tù chän")	
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)			
end

function hkvipcbb() 
tbAwardTemplet:GiveAwardByList({{szName="§Þch Kh¸i Lôc Ngäc Tr­îng",tbProp={0,96},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan> ®· dïng ®iÓm tÝch lòy tèng kim mua vµ më thµnh c«ng b¶o r­¬ng HKMP <color=yellow>NhËn §Þch Kh¸i Lôc Ngäc Tr­îng vÜnh viÔn tù chän")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end




