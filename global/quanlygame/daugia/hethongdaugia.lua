-------------------------------------------------Script*By*NguyenKhai-DuyManh -----------------------------------------
---------------------------------------------------dau gia-------------------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\dulieu\\giaodich.lua");

--KETTHUC ="thoat/no"
TASK_GIAODICH = 2018
function CheckName(number)
local b = 0
for i = 1,getn(GIAO_DICH) do
if GIAO_DICH[i][1] == GetName() then
a = GIAO_DICH[i][number]
b = i
end
end
if number == 1 then
return b -- thu tu cua thang A trong bang GD
end
if number > 1 then
return a -- Chi so cac cot cua thang A
end
end

function MaxMin(nMin,nMax,a,b)
--local nMax = 1000
--local nMin = 0
-- gia ban tu 1 den 999
-- a =3 gia ban, a = 6 gia mua
-- b = 1 nho nhat b = 2 lon nhat
if b == 1 then -- gia nho nhat trong khoang nMin, nMax
	for i = 1,getn(GIAO_DICH) do
		if GIAO_DICH[i][a] > nMin and GIAO_DICH[i][a] < nMax then	
			nMax = GIAO_DICH[i][a]
		end
	end
if nMax == 1000 then 
return 0 -- khong co GD nao tren dau gia
else
return nMax -- gia nho nhat
end
end
if b == 2 then -- gia lon nhat trong khoang nMin, nMax
	for i = 1,getn(GIAO_DICH) do
		if GIAO_DICH[i][a] > nMin and GIAO_DICH[i][a] < nMax then	
			nMin = GIAO_DICH[i][a]
		end
	end
return nMin -- gia lon nhat ( neu = 0 la ko co GD nao
end
end
function MaxMin(nMin,nMax,a,b)
--local nMax = 1000
--local nMin = 0
-- gia ban tu 1 den 999
-- a =3 gia ban, a = 6 gia mua
-- b = 1 nho nhat b = 2 lon nhat
if b == 1 then -- gia nho nhat trong khoang nMin, nMax
	for i = 1,getn(GIAO_DICH) do
		if GIAO_DICH[i][a] > nMin and GIAO_DICH[i][a] < nMax then	
			nMax = GIAO_DICH[i][a]
		end
	end
if nMax == 1000 then 
return 0 -- khong co GD nao tren dau gia
else
return nMax -- gia nho nhat
end
end
if b == 2 then -- gia lon nhat trong khoang nMin, nMax
	for i = 1,getn(GIAO_DICH) do
		if GIAO_DICH[i][a] > nMin and GIAO_DICH[i][a] < nMax then	
			nMin = GIAO_DICH[i][a]
		end
	end
return nMin -- gia lon nhat ( neu = 0 la ko co GD nao
end
end
function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
end
function main()
dofile("script/global/quanlygame/daugia/hethongdaugia.lua")
--Talk(1,"","T�nh n�ng �ang trong qu� tr�nh ho�n thi�n.")

Gifcode_VLTS_Full()
end

function Gifcode_VLTS_Full()
local tab_Content = {
	"Xem danh s�ch r��ng HKMP tr�n s�n ��u gi�. /daugia",
	"Chuy�n Ti�n l�n s�n ��u gi� d�ng �� mua./_Checktien1",
	"Chuy�n B�o r��ng l�n s�n ��u gi� �� b�n./_Checktien",
	"C�p nh�t m�i danh s�ch s�n ��u gi� ae ��ng./lammoi",
	"Ki�m tra th�ng tin h�ng h�a ti�n b�c c�a m�nh./dulieu",
		"Tho�t./no",
	

		}
Say("<color=pink>H� th�ng ��u gi� ��c quy�n t�i V� L�m Ki�m Thi�n:<color><color=green>\n�� bi�t c�ch th�c mua b�n ��u gi� v� k� g�i v�t ph�m vui l�ng truy c�p.<bclr>\nTrang ch�:<color=yellow> www.VoLamKiemThien.Com <color>", getn(tab_Content), tab_Content);       
end


------------------He thong dau gia by  -------------------
function daugia()
if CheckName(1) >= 1 then
local a = MaxMin(0,1000,3,1) -- gia ban nho nhat
local b = MaxMin(a,1000,3,1) -- gia ban nho thu hai
local c = MaxMin(0,1000,6,2) -- gia mua lon nhat
local d = MaxMin(0,c,6,2) -- gia mua lon thu hai
Say("Gi� ae c�n b�n B�o R��ng hi�n t�i tr�n s�n ��u gi�:<enter>"..CheckNum(a,1,2).." B�o R��ng l�y "..a.." Ti�n ��ng<enter>"..CheckNum(b,1,2).." B�o R��ng l�y "..b.." Ti�n ��ng <enter>Gi� ae c�n mua B�o R��ng hi�n t�i tr�n s�n ��u gi�: <enter>"..c.." Ti�n ��ng mua "..CheckNum(c,2,2).." B�o R��ng <enter>"..d.." Ti�n ��ng mua "..CheckNum(d,2,2).." B�o R��ng ",7,
	"T�i h� mu�n ��ng B�n B�o R��ng./giaodich",
	"T�i h� mu�n ��ng Mua B�o R��ng./giaodich",
	"Kh�ng./no")
else
Say("�� tham gia phi�n ��u gi� c�n ph�i ��ng k�,ph� k�ch ho�t l� 1xu.<enter>Ch� c�n ��ng k� 1 l�n l� s� d�ng m�i m�i",2,
"��ng k� ��u gi� t�i Ki�m Thi�n. /yes",
"Ta ch�a c�n l�m./no")
end
end

function _Checktien1()
	AskClientForNumber("chuyentiendong", 0,1000, "S� Ti�n Chuy�n Mua")
	end

function _Checktien()
	AskClientForNumber("chuyentienbaoruong", 0,100, "S� R�ng Chuy�n B�n")
	end

function giaodich(nsel)
local a = MaxMin(0,1000,3,1) -- gia ban nho nhat
local b = CheckNum(a,1,2) -- so luong ban theo gia nho nhat
local c = MaxMin(0,1000,6,2) -- gia mua lon nhat
local d = CheckNum(c,2,2) -- so luong mua theo gia lon nhat
local nGD = CheckName(3) + CheckName(6)
if nGD == 0 then
	if nsel == 0 then
		Say("Gi� ae �ang mu�n mua B�o r��ng tr�n s�n ��u gi� hi�n t�i:<enter><color=yellow>"..c.."<color> ti�n ��ng mua <color=red>"..d.." <color>B�o R��ng ",3,
			"Gi� mua t�t ta c�n b�n v�i B�o R��ng l�y ti�n ��y./nhapban",
			"Tho�t/no")
		end
	if nsel == 1 then
		Say("Gi� ae �ang mu�n b�n B�o r��ng tr�n s�n ��u gi� hi�n t�i:<enter><color=red>"..b.." <color>B�o R��ng l�y <color=yellow>"..a.."<color> ti�n ��ng ",3,
			"Gi� b�n t�t ta c�n mua v�i B�o R��ng v� d�ng./nhapmua",
			"Tho�t/no")
		end
else
Say("H�ng h�a c�a b�n tr�n s�n ��u gi� <enter>Gi� b�n b�n:<color=red> "..CheckName(3).."<color> ti�n ��ng/1r��ng<enter>Gi� b�n mua: <color=yellow>"..CheckName(6).." <color>ti�n ��ng/1r��ng. <enter>b�n c� mu�n thay ��i giao d�ch kh�ng",2,
	"H�y b� giao d�ch c� ��ng l�i m�i/huygd",
	"Kh�ng n�./no")
end
end


function nhapban()
AskClientForNumber("giaban", 0,100000000000, "Nh�p gi� c�n b�n")
end
function giaban(num)
if (num == 0 or num > 999)then
Msg2Player("Gi� giao d�ch t� 1 ��n 999 ��ng. ")
end
if(num > 0 and num <= 999)then
local nBR = CheckName(7)
local nTB = nBR*num
	SetTask(TASK_GIAODICH,num)
Say("H� th�ng:Gi� b�n 1 B�o r��ng b�n �� ra l� "..num.." ��ng. <enter>T�ng B�o r��ng tr�n s�n ��u gi� c�a b�n l� "..nBR..". <enter>N�u s�n b�n h�t b�n s� ���c "..nTB.." ti�n ��ng",2,
	"B�n mu�n b�n m�y b�o r��ng nh�p v�o./soban",
	"Tho�t/no")
end
end
function soban()
	AskClientForNumber("giaodichban", 0,100000000000, "S� R��ng C�n B�n")
end
function giaodichban(num)
if (num == 0 ) then
SetTask(TASK_GIAODICH,0)
Msg2Player("ch�a nh�p s� B�o r��ng ")
end
if (num > 0 )then
local k = CheckName(1)
local a = GetTask(TASK_GIAODICH)
local nSL = GIAO_DICH[k][7]
	if num > nSL then
		Msg2Player("S� B�o r��ng kh�ng �� b�n ph�i chuy�n r��ng l�n s�n tr��c r�i m�i ��ng ���c")
	end
	if num <= nSL then
		GIAO_DICH[k][2] = num
		GIAO_DICH[k][3] = a
		giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
		SaveData("dulieu/giaodich.lua",giaodich)
Msg2SubWorld("<color=pink>"..GetName().."<color> v�a ��ng b�n<color=metal>( "..num.." )<color><color=green>B�o r��ng v�i gi�<color=metal>( "..a.." )<color><color=green> ti�n ��ng<color> l�n s�n ��u gi�.")
Talk(1,"","b�n �� ��ng tin b�n b�o r��ng v�i gi� b�n �� ra n�u c� ai �� c�n mua b�o r��ng v�i gi� tr� b�ng gi� b�n �� ra tr�n s�n th� h� th�ng s� chuy�n ti�n v�o th�ng tin cho b�n v� trao b�o r��ng b�n cho ng��i mua n�.") -- go	
for n =1,getn(GIAO_DICH) do
Reset_Daugia()
SaveNow();
	end
end
end
end   
-- mua tien dong
function nhapmua()
	AskClientForNumber("giamua", 0,100000000000, "Nh�p gi� c�n mua")
end
function giamua(num)
if( num == 0 or num > 999) then
Msg2Player("Gia giao dich tu 1 den 999 van. ")
end
if (num > 0 and num <= 999) then
local nTD = CheckName(4)
local nTM = floor(nTD/num)
SetTask(TASK_GIAODICH,num)
Say("H� th�ng:Gi� mua B�o r��ng c�a b�n l� "..num.." ti�n ��ng. <enter>B�n �ang c� "..nTD.." ti�n ��ng tr�n s�n ��u gi�. <enter>C� th� mua t�i �a "..nTM.." B�o r��ng.",2,
	"Nh�p S� B�o r��ng c�n mua/somua",
	"Tho�t/no")
end
end
function somua()
	AskClientForNumber("giaodichmua", 0,100000000000, "Nh�p s� R��ng Mua")
end
function giaodichmua(num)
local a = GetTask(TASK_GIAODICH) -- gia mua 
local nTien = CheckName(4)
local nMua = a*num
	if nTien < nMua  then
		Msg2Player("s� l��ng kh�ng �� b�n c�n ph�i chuy�n ti�n l�n s�n ��u gi� tr��c m�i c� th� mua b�n.")
	end
	if nTien >= nMua then
		local i = CheckName(1)
		GIAO_DICH[i][6] = a
		GIAO_DICH[i][5] = num
		giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
		SaveData("dulieu/giaodich.lua",giaodich)		
Msg2SubWorld("<color=pink>"..GetName().."<color> v�a ��ng mua<color=metal> ("..num..")<color=green> B�o r��ng<color><enter> v�i gi� <color=metal>("..a..")<color> <color=green> Ti�n ��ng <color> l�n s�n ��u gi�.")
Talk(1,"","b�n �� ��ng tin mua b�o r��ng v�i gi� b�n �� ra n�u c� ai �� b�n b�o r��ng v�i gi� tr� b�ng gi� b�n �� ra tr�n s�n th� h� th�ng s� chuy�n b�o r��ng v�o th�ng tin cho b�n v� trao ti�n b�n cho ng��i ��ng b�n.") -- go	
for n =1,getn(GIAO_DICH) do
Reset_Daugia()
SaveNow();
	end
end
end


function huygd()
local nTT = CheckName(1)
GIAO_DICH[nTT][2] =0
GIAO_DICH[nTT][3] =0
GIAO_DICH[nTT][5] =0
GIAO_DICH[nTT][6] =0
giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
SaveData("dulieu/giaodich.lua",giaodich)
Msg2Player("H�y b� giao d�ch ��u gi� th�nh c�ng. c� th� giao d�ch l�i.")
end
function yes()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 1) then -- gia xu
		Talk(1,"","Xin l�i mu�n ��ng k� ��u gi� v�nh vi�n c�n 1 xu b�n s� ���c rao b�n v�t ph�m v� mua v�t ph�m tr�n s�n ��u gi� v�nh vi�n.") -- go
	return end
GIAO_DICH[getn(GIAO_DICH)+1] = {GetName(),0,0,0,0,0,0} 
----{GetName() ,0,        0,         0,         0,		0,			0} 
--- ( Name -   TD ban - Gia ban TD -Tien DG - TD mua -Gia mua TD - TDong GD)
giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
SaveData("dulieu/giaodich.lua",giaodich)
ConsumeEquiproomItem(1,4,417,1,1)
Talk(1,"","��ng k� ��u gi� th�nh c�ng b�n c� th� ��u gi� ngay t� b�y gi� n�u b�n kh�ng bi�t vui l�ng xem video t�i www.volamkiemthien.com.")
SaveNow();
end

function no()
end
--file Include("\\dulieu\\giaodich.lua");
--Code:
--GIAO_DICH={}
--file Include("\\script\\library\\worldlibrary.lua"); th�m 
--Code:
function TaoBang(tTable, sTableName, sTab)
    sTab = sTab or "";  
    sTmp = ""  
    sTmp = sTmp..sTab..sTableName.."={"  
 
    local tStart = 0  
    for key, value in tTable do  
  
        if tStart == 1 then  
            sTmp = sTmp..",\r\n"  
 
        else  
            sTmp = sTmp.."\r\n"  
            tStart = 1  
        end  
        local sKey = (type(key) == "string") and format("[%q]",key) or format("[%d]",key);  
        if(type(value) == "table") then  
            sTmp = sTmp..TaoBang(value, sKey, sTab.."\t");  
        else  
            local sValue = (type(value) == "string") and format("%q",value) or tostring(value);  
            sTmp = sTmp..sTab.."\t"..sKey.." = "..sValue 
        end  
 
    end 
    sTmp = sTmp.."\r\n"..sTab.."}"  
    return sTmp
  
end  

function SaveData(file, string)   ---Tuy ngan nhung wan trong nhat >''<
file_op = openfile( file, "w+" )  --- a+ la vit them hem xoa file dau -- w+ -- la che do doc ghi xoa file dau  
    write(file_op,string) 
    closefile(file_op)  
end 

function LuuBang(file, string)
local f,e = openfile( file, "w+" )
if f then
    write(f,string)
    closefile(f)
    return 1
else
    local _,_,path = strfind(file, "(.+[/_\\]).+$") 
    if path ~= nil then execute("mkdir ".."\""..gsub(path, "/", "\\").."\"") end
    f,e = openfile( file, "w+" )
    if f then
        write(f,string) 
        closefile(f)
        return 2
    else
        return 0
        end
    end
end


function CheckGD(a,b)
local nTT = 0
for i =1,getn(GIAO_DICH) do
	if a == GIAO_DICH[i][b] then
		nTT = i
	end
return nTT
end
end
		
function CheckNum(a,b,c)
-- a: gia TD mua( b = 1) hoac ban ( b = 2)
-- c: So TD tuong ung cua a ( c=1) hoac tong so TD voi gia a ( c =2) hoac thu tu cua a trong bang ( c=3)
local nMua = 0
local nTong = 0
local d = b*3
for i =1,getn(GIAO_DICH) do
if a == GIAO_DICH[i][d] then
	nMua = GIAO_DICH[i][d-1]
	nTong = nTong +GIAO_DICH[i][d-1]
	nTab = i
	end
end
if c == 1 then
return nMua
end
if c == 2 then
return nTong
end
if c == 3 then
return nTab
end
end


function NhanBR(a)
	if a <= 50 then
	--AddStackItem( a, 4, 417, 1, 1, 0, 0, 0 ); --tien dong
	AddStackItem( a,6,1,4367,1,0,0,0); --chia khoa  bao ruong HK
		end
	if a > 50 then
		local nSoLan = floor(a/50)
		local nSoLe = a - nSoLan*50
		if nSoLe == 0 then
		for i =1,nSoLan do
			AddStackItem( 50, 6,1,4367,1,0,0,0 );
			end
		end
		if nSoLe > 0 then
		for i =1,nSoLan do
			AddStackItem( 50,6,1,4367,1,0,0,0 );
			end
		AddStackItem(nSoLe , 6,1,4367,1,0,0,0 );
			end
		end
Msg2Player("b�n  nh�n t� h� th�ng ��u gi�  <color=yellow>"..a.." <color>B�o R��ng. ")
SaveNow();		
end

function NhanTD(a)
	if a <= 50 then
	AddStackItem( a, 4, 417, 1, 1, 0, 0, 0 );
		end
	if a > 50 then
		local nSoLan = floor(a/50)
		local nSoLe = a - nSoLan*50
		if nSoLe == 0 then
		for i =1,nSoLan do
			AddStackItem( 50, 4, 417, 1, 1, 0, 0, 0 );
			end
		end
		if nSoLe > 0 then
		for i =1,nSoLan do
			AddStackItem( 50, 4, 417, 1, 1, 0, 0, 0 );
			end
		AddStackItem(nSoLe , 4, 417, 1, 1, 0, 0, 0 );
			end
		end
Msg2Player("b�n  nh�n t� h� th�ng ��u gi�  <color=yellow>"..a.." <color>Ti�n ��ng. ")
SaveNow();		
end


-- Cac cong thuc tinh trong GD --
			----------
function Reset_Daugia() -- ham reset dau gia( thuc hien cac giao dich tren dau gia)
local a = MaxMin(0,1000,3,1) -- gia ban nho nhat 3
local b = MaxMin(0,1000,6,2) -- gia mua lon nhat 6
local c = CheckNum(a,1,3)
local d = CheckNum(b,2,3)
if b >= a then -- khi gia mua lon hon gia ban thuc hien giao dich theo gia ban nho nhat
local SoBan = GIAO_DICH[c][2] -- so tien dong ban
local SoMua = GIAO_DICH[d][5] -- so tien dong mua
	if SoBan > SoMua then
	----- thang mua
		GIAO_DICH[d][4] = GIAO_DICH[d][4] - a*SoMua
		GIAO_DICH[d][7] = GIAO_DICH[d][7] + SoMua
		GIAO_DICH[d][5] = 0
		GIAO_DICH[d][6] = 0
	----- thang ban	
		GIAO_DICH[c][4] = GIAO_DICH[c][4] + a*SoMua
		GIAO_DICH[c][7] = GIAO_DICH[c][7] - SoMua
		GIAO_DICH[c][2] = GIAO_DICH[c][2] - SoMua
	end
	if SoBan < SoMua then
	----- thang mua
		GIAO_DICH[d][4] = GIAO_DICH[d][4] - a*SoBan
		GIAO_DICH[d][7] = GIAO_DICH[d][7] + SoBan
		GIAO_DICH[d][5] = GIAO_DICH[d][5] - SoBan
	----- thang ban	
		GIAO_DICH[c][4] = GIAO_DICH[c][4] + a*SoBan
		GIAO_DICH[c][7] = GIAO_DICH[c][7] - SoBan
		GIAO_DICH[c][2] = 0
		GIAO_DICH[c][3] = 0
	end
	if SoBan == SoMua then
	----- thang mua
		GIAO_DICH[d][4] = GIAO_DICH[d][4] - a*SoBan
		GIAO_DICH[d][7] = GIAO_DICH[d][7] + SoBan
		GIAO_DICH[d][5] = 0
		GIAO_DICH[d][6] = 0
	----- thang ban	
		GIAO_DICH[c][4] = GIAO_DICH[c][4] + a*SoBan
		GIAO_DICH[c][7] = GIAO_DICH[c][7] - SoBan
		GIAO_DICH[c][2] = 0
		GIAO_DICH[c][3] = 0
	end
giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
SaveData("dulieu/giaodich.lua",giaodich)			
end
if b < a then -- gia mua nho hon gia ban giu nguyen giao dich
end
end

function chuyentiendong(num)
if CheckName(1) < 1 then
  Say("��ng ky di")
  return
 end
local nSL = CalcEquiproomItemCount(4, 417, 1, 1)
if ( num == 0 or num > nSL) then
Msg2Player("ch�a nh�p s� ti�n ��ng ho�c kh�ng ��. ")
end
if ( num > 0 and num <=  nSL) then
ConsumeEquiproomItem(num, 4, 417, 1, 1)
local nTT = CheckName(1)
GIAO_DICH[nTT][4] = GIAO_DICH[nTT][4] + num
giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
SaveData("dulieu/giaodich.lua",giaodich)	
Msg2Player("b�n v�a chuy�n th�nh c�ng <color=yellow>"..num.."<color> ti�n ��ng l�n h� th�ng ��u gi�. ")
SaveNow();
end
end

function chuyentienbaoruong(num)
if CheckName(1) < 1 then
Say("��ng k� �i b�n m�i c� th� ��ng b�n.")
return
end

local nSL = CalcEquiproomItemCount(6,1,4367,1)
if ( num == 0 or num > nSL) then
Msg2Player("ch�a nh�p s� B�o R��ng ho�c kh�ng ��. ")
end
if ( num > 0 and num <=  nSL) then
ConsumeEquiproomItem(num, 6,1,4367,1)
local nTT = CheckName(1)
GIAO_DICH[nTT][7] = GIAO_DICH[nTT][7] + num
giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
SaveData("dulieu/giaodich.lua",giaodich)	
Msg2Player("b�n v�a chuy�n th�nh c�ng  <color=yellow>"..num.."<color> B�o R��ng l�n h� th�ng ��u gi�. ")
SaveNow();
end
end

function dulieu()
Say("NV <color=green>"..GetName().." <color>hi�n c� "..CheckName(4).." Ti�n ��ng v� "..CheckName(7).." B�o R��ng tr�n s�n ��u gi�.<enter>B�n �ang rao mua "..CheckName(5).." B�o R��ng gi� "..CheckName(6).." Ti�n ��ng 1 R��ng<enter>B�n �ang rao b�n "..CheckName(2).." B�o R��ng gi� "..CheckName(3).." ti�n ��ng 1 R��ng ",3,
	"Ta mu�n r�t l�i B�o R��ng./laytien",
	"Ta mu�n r�t l�i Ti�n ��ng./laytien",
	"Tho�t/no")
end

function laytien(nsel)
local nGD = CheckName(3) + CheckName(6)
if nGD == 0 then
	if nsel == 0 then
		Say("Hi�n t�i b�n c� <color=green>"..CheckName(7).." <color>B�o R��ng tr�n s�n ��u gi�",2,
			"Nh�p s� l��ng b�o r��ng c�n r�t. /rutBR",
			"�� ta suy ngh� l�i. /no")
			end
	if nsel == 1 then
		Say("Hi�n t�i b�n c� <color=green>"..CheckName(4).." <color>Ti�n ��ng tr�n s�n ��u gi�.<enter><color=pink>Khi r�t ti�n �� tr�nh b� m�t ti�n h�y c�t h�t ti�n trong h�nh trang. ",2,
			"Nh�p s� l��ng ti�n ��ng c�n r�t. /rutTD",
			"�� ta suy ngh� l�i. /no")
			end
else
Say("�ang giao d�ch tr�n s�n ��u gi� <enter>Gi� b�n c�n b�n b�o r��ng:<color=red> "..CheckName(3).." <color>ti�n<enter>Gi� b�n c�n mua b�o r��ng: <color=yellow>"..CheckName(6).."<color> ti�n. <enter>b�n c� mu�n thay ��i l�i kh�ng n�u c� ch�n h�y giao d�ch.",2,
	"H�y giao d�ch ��ng l�i giao d�ch m�i/huygd",
	"Kh�ng/no")
end
end

function rutBR()
AskClientForNumber("SoBR", 0,100000000000, "Xin m�i nh�p s� l��ng")
end
function SoBR(num)
local nBR = CheckName(7)
local nTT = CheckName(1)
if (num == 0 or num > nBR) then
Msg2Player("ch�a nh�p s� B�o R��ng ho�c B�o R��ng kh�ng �� v�i s� r�t. ")
end
if (num > 0 and num <= nBR) then
GIAO_DICH[nTT][7] = GIAO_DICH[nTT][7] - num
giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
SaveData("dulieu/giaodich.lua",giaodich)
NhanBR(num)
end
end

function rutTD()
AskClientForNumber("SoTD", 0,100000000000, "Xin m�i nh�p s� l��ng")
end

function SoTD(num)
local nTD = CheckName(4)
local nTT = CheckName(1)
if (num == 0 or num > nTD) then
Msg2Player("Ch�a nh�p s� ti�n ��ng ho�c ti�n ��ng kh�ng �� v�i s� r�t. ")
end
if (num > 0 and num <= nTD) then
GIAO_DICH[nTT][4] = GIAO_DICH[nTT][4] - num
giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
SaveData("dulieu/giaodich.lua",giaodich)
NhanTD(num)
end
end










