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
		Talk(1,"","Xin l�i c�n 30xu m�i c� th� m� ���c r��ng..") -- go
	return 1
end
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Bat Dau Chon Mon Phai Khi Mo Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)	
ConsumeEquiproomItem(30,4,417,1,1)
Say("Xin m�i ch�n trang b�",10,"Nga Mi/hkmpnm","Th�y Y�n/hkmpty","���ng M�n/hkmpdm","Ng� ��c/hkmpnd","Thi�n V��ng/hkmptv","Thi�u L�m/hkmptl","V� �ang/hkmpvd","C�n L�n/hkmpcl","Thi�n Nh�n/hkmptn","C�i Bang/hkmpcb")
end


function hkmpnm() 
        local tbOpt= 
               { 
                {"V� Ma T�y T���ng Ng�c Kh�u", hkvipnmc}, 
                {"V� Giang � Thi�n Ki�m", hkvipnmk}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
end

function hkvipnmc()
tbAwardTemplet:GiveAwardByList({{szName="V� Ma T�y T���ng Ng�c Kh�u",tbProp={0,39},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n V� Ma T�y T���ng Ng�c Kh�u v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end


function hkvipnmk() 
tbAwardTemplet:GiveAwardByList({{szName="V� Giang � Thi�n Ki�m",tbProp={0,31},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n V� Giang � Thi�n Ki�m v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end


function hkmpty()
        local tbOpt= 
               { 
                {"T� Ho�ng Ph�ng Nghi �ao", hkviptyd}, 
                {"B�ch H�i Uy�n ��ng Ho�ng �ao", hkviptyc}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkviptyd() 
tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Ph�ng Nghi �ao",tbProp={0,46},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n T� Ho�ng Ph�ng Nghi �ao v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end


function hkviptyc()
tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Uy�n ��ng Ho�ng �ao",tbProp={0,51},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n B�ch H�i Uy�n ��ng Ho�ng �ao v�nh vi�n t� ch�n")	
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)			
end
 

function hkmpdm()
        local tbOpt= 
               { 
                {"Thi�n Quang M�n V� M�n Thi�n", hkvipbv}, 
                {"S�m Ho�ng Phi Tinh �o�t H�n", hkvippt}, 
                {"B�ng H�n ��n Ch� Phi �ao", hkvippd}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 
function hkvipbv()
tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang M�n V� M�n Thi�n",tbProp={0,76},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n Thi�n Quang M�n V� M�n Thi�n v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end


function hkvippt() 
tbAwardTemplet:GiveAwardByList({{szName="S�m Ho�ng Phi Tinh �o�t H�n",tbProp={0,81},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n S�m Ho�ng Phi Tinh �o�t H�n v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end
 

function hkvippd() 
tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n ��n Ch� Phi �ao",tbProp={0,71},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n B�ng H�n ��n Ch� Phi �ao v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end
 


function hkmpnd()
        local tbOpt= 
               { 
                {"U Lung Kim X� Ph�t ��i", hkvipndc}, 
                {"Minh �o T� S�t ��c Nh�n", hkvipndd}, 
              --  {"Ng� ��c B�a", hkvipndb}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 
function hkvipndc() 
tbAwardTemplet:GiveAwardByList({{szName="U Lung Kim X� Ph�t ��i",tbProp={0,56},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n U Lung Kim X� Ph�t ��i v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkvipndd() 
tbAwardTemplet:GiveAwardByList({{szName="Minh �o T� S�t ��c Nh�n",tbProp={0,61},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n Minh �o T� S�t ��c Nh�n v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkvipndb() 
tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c Di�t L�i C�nh Ph�",tbProp={0,67},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n Ch� Ph��c Di�t L�i C�nh Ph� v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkmptv()
        local tbOpt= 
               { 
                {"K� Nghi�p B�n L�i To�n Long th��ng", hkviptvt}, 
                {"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y", hkviptvc}, 
                {"Ng� Long L��ng Ng�n B�o �ao", hkviptvd}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkviptvt() 
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p B�n L�i To�n Long th��ng",tbProp={0,21},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n K� Nghi�p B�n L�i To�n Long th��ng v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkviptvc() 
tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",tbProp={0,16},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkviptvd() 
tbAwardTemplet:GiveAwardByList({{szName="Ng� Long L��ng Ng�n B�o �ao",tbProp={0,26},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n Ng� Long L��ng Ng�n B�o �ao v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkmptl()
        local tbOpt= 
               { 
                {"T� Kh�ng Gi�ng Ma Gi�i �ao", hkviptld}, 
                {"Ph�c Ma T� Kim C�n", hkviptlb}, 
                {"M�ng Long Kim Ti Ch�nh H�ng C� Sa", hkviptlq}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkviptld() 
tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng Gi�ng Ma Gi�i �ao",tbProp={0,11},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n T� Kh�ng Gi�ng Ma Gi�i �ao v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkviptlb() 
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma T� Kim C�n",tbProp={0,6},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n Ph�c Ma T� Kim C�n v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkviptlq() 
tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Kim Ti Ch�nh H�ng C� Sa",tbProp={0,2},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n M�ng Long Kim Ti Ch�nh H�ng C� Sa v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkmpvd()
        local tbOpt= 
               { 
                {"L�ng Nh�c Th�i C�c Ki�m", hkvipvdc}, 
                {"C�p Phong Ch�n V� Ki�m", hkvipvdk}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkvipvdc() 
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,116},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n L�ng Nh�c Th�i C�c Ki�m v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkvipvdk() 
tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Ch�n V� Ki�m",tbProp={0,121},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n C�p Phong Ch�n V� Ki�m v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkmpcl()
        local tbOpt= 
               { 
                {"S��ng Tinh Thi�n Ni�n H�n Thi�t", hkvipcld}, 
                {"L�i Khung H�n Tung B�ng B�ch quan", hkvipclc}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkvipcld() 
tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Thi�n Ni�n H�n Thi�t",tbProp={0,126},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n S��ng Tinh Thi�n Ni�n H�n Thi�t v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkvipclc() 
tbAwardTemplet:GiveAwardByList({{szName="L�i Khung H�n Tung B�ng B�ch quan",tbProp={0,131},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n L�i Khung H�n Tung B�ng B�ch quan v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end



function hkmptn()
        local tbOpt= 
               { 
                {"Ma S�t Qu� C�c U Minh Th��ng", hkviptnt}, 
              --  {"Ma Th� s�n H�i Phi H�ng L�", hkviptnd},
                {"Ma Th� To�i Tinh �ao", hkviptnmathi},  
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkviptnt() 
tbAwardTemplet:GiveAwardByList({{szName="Ma S�t Qu� C�c U Minh Th��ng",tbProp={0,101},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�nMa S�t Qu� C�c U Minh Th��ng v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkviptnd() 
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� s�n H�i Phi H�ng L�",tbProp={0,115},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n Ma Th� s�n H�i Phi H�ng L� v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkviptnmathi() 
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� To�i Tinh �ao",tbProp={0,540},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n Ma Th� To�i Tinh �ao v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end

function hkmpcb()
        local tbOpt= 
               { 
                {"��ng C�u Kh�ng Long H� Uy�n", hkvipcbc}, 
                {"��ch Kh�i L�c Ng�c Tr��ng", hkvipcbb}, 
               } 
                CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt) 
end 

function hkvipcbc() 
tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Kh�ng Long H� Uy�n",tbProp={0,94},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n ��ng C�u Kh�ng Long H� Uy�n v�nh vi�n t� ch�n")	
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)			
end

function hkvipcbb() 
tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i L�c Ng�c Tr��ng",tbProp={0,96},nCount=1,nQuality = 1,},}, "test", 1);
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan> �� d�ng �i�m t�ch l�y t�ng kim mua v� m� th�nh c�ng b�o r��ng HKMP <color=yellow>Nh�n ��ch Kh�i L�c Ng�c Tr��ng v�nh vi�n t� ch�n")
    local baoruong = "script/global/bil4i3n/bil4i3n_log/baoruongtongkim.log"
	local mobaoruong1 = openfile(baoruong, "a");
	 write(mobaoruong1 , format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Mo Thanh Cong Bao Ruong\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(mobaoruong1)				
end




