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
		return "N÷ hiÖp";
	else
		return "§¹i hiÖp";
	end
end
function main()
dofile("script/global/quanlygame/daugia/hethongdaugia.lua")
--Talk(1,"","TÝnh n¨ng ®ang trong qu¸ tr×nh hoµn thiÖn.")

Gifcode_VLTS_Full()
end

function Gifcode_VLTS_Full()
local tab_Content = {
	"Xem danh s¸ch r­¬ng HKMP trªn sµn §Êu gi¸. /daugia",
	"ChuyÓn TiÒn lªn sµn ®Êu gi¸ dïng ®Ó mua./_Checktien1",
	"ChuyÓn B¶o r­¬ng lªn sµn ®Êu gi¸ ®Ó b¸n./_Checktien",
	"CËp nhËt míi danh s¸ch sµn ®Êu gi¸ ae ®¨ng./lammoi",
	"KiÓm tra th«ng tin hµng hãa tiÒn b¹c cña m×nh./dulieu",
		"Tho¸t./no",
	

		}
Say("<color=pink>HÖ thèng ®Êu gi¸ ®éc quyÒn t¹i Vâ L©m KiÕm Thiªn:<color><color=green>\n§Ó biÕt c¸ch thøc mua b¸n ®Êu gi¸ vµ ký göi vËt phÈm vui lßng truy cËp.<bclr>\nTrang chñ:<color=yellow> www.VoLamKiemThien.Com <color>", getn(tab_Content), tab_Content);       
end


------------------He thong dau gia by  -------------------
function daugia()
if CheckName(1) >= 1 then
local a = MaxMin(0,1000,3,1) -- gia ban nho nhat
local b = MaxMin(a,1000,3,1) -- gia ban nho thu hai
local c = MaxMin(0,1000,6,2) -- gia mua lon nhat
local d = MaxMin(0,c,6,2) -- gia mua lon thu hai
Say("Gi¸ ae cÇn b¸n B¶o R­¬ng hiÖn t¹i trªn sµn ®Êu gi¸:<enter>"..CheckNum(a,1,2).." B¶o R­¬ng lÊy "..a.." TiÒn ®ång<enter>"..CheckNum(b,1,2).." B¶o R­¬ng lÊy "..b.." TiÒn ®ång <enter>Gi¸ ae cÇn mua B¶o R­¬ng hiÖn t¹i trªn sµn ®Êu gi¸: <enter>"..c.." TiÒn ®ång mua "..CheckNum(c,2,2).." B¶o R­¬ng <enter>"..d.." TiÒn ®ång mua "..CheckNum(d,2,2).." B¶o R­¬ng ",7,
	"T¹i h¹ muèn ®¨ng B¸n B¶o R­¬ng./giaodich",
	"T¹i h¹ muèn ®¨ng Mua B¶o R­¬ng./giaodich",
	"Kh«ng./no")
else
Say("§Ó tham gia phiªn ®Êu gi¸ cÇn ph¶i ®¨ng ký,phÝ kÝch ho¹t lµ 1xu.<enter>ChØ cÇn ®¨ng ký 1 lÇn lµ sö dông m·i m·i",2,
"§¨ng ký ®Êu gi¸ t¹i KiÕm Thiªn. /yes",
"Ta ch­a cÇn l¾m./no")
end
end

function _Checktien1()
	AskClientForNumber("chuyentiendong", 0,1000, "Sè TiÒn ChuyÓn Mua")
	end

function _Checktien()
	AskClientForNumber("chuyentienbaoruong", 0,100, "Sè R­ng ChuyÓn B¸n")
	end

function giaodich(nsel)
local a = MaxMin(0,1000,3,1) -- gia ban nho nhat
local b = CheckNum(a,1,2) -- so luong ban theo gia nho nhat
local c = MaxMin(0,1000,6,2) -- gia mua lon nhat
local d = CheckNum(c,2,2) -- so luong mua theo gia lon nhat
local nGD = CheckName(3) + CheckName(6)
if nGD == 0 then
	if nsel == 0 then
		Say("Gi¸ ae ®ang muèn mua B¶o r­¬ng trªn sµn ®Êu gi¸ hiÖn t¹i:<enter><color=yellow>"..c.."<color> tiÒn ®ång mua <color=red>"..d.." <color>B¶o R­¬ng ",3,
			"Gi¸ mua tèt ta cÇn b¸n vµi B¶o R­¬ng lÊy tiÒn ®©y./nhapban",
			"Tho¸t/no")
		end
	if nsel == 1 then
		Say("Gi¸ ae ®ang muèn b¸n B¶o r­¬ng trªn sµn ®Êu gi¸ hiÖn t¹i:<enter><color=red>"..b.." <color>B¶o R­¬ng lÊy <color=yellow>"..a.."<color> tiÒn ®ång ",3,
			"Gi¸ b¸n tèt ta cÇn mua vµi B¶o R­¬ng vÒ dïng./nhapmua",
			"Tho¸t/no")
		end
else
Say("Hµng hãa cña b¹n trªn sµn ®Êu gi¸ <enter>Gi¸ b¹n b¸n:<color=red> "..CheckName(3).."<color> tiÒn ®ång/1r­¬ng<enter>Gi¸ b¹n mua: <color=yellow>"..CheckName(6).." <color>tiÒn ®ång/1r­¬ng. <enter>b¹n cã muèn thay ®æi giao dÞch kh«ng",2,
	"Hñy bá giao dÞch cò ®¨ng l¹i míi/huygd",
	"Kh«ng nÌ./no")
end
end


function nhapban()
AskClientForNumber("giaban", 0,100000000000, "NhËp gi¸ cÇn b¸n")
end
function giaban(num)
if (num == 0 or num > 999)then
Msg2Player("Gi¸ giao dÞch tõ 1 ®Õn 999 ®ång. ")
end
if(num > 0 and num <= 999)then
local nBR = CheckName(7)
local nTB = nBR*num
	SetTask(TASK_GIAODICH,num)
Say("HÖ thèng:Gi¸ b¸n 1 B¶o r­¬ng b¹n ®Ò ra lµ "..num.." ®ång. <enter>Tæng B¶o r­¬ng trªn sµn ®Êu gi¸ cña b¹n lµ "..nBR..". <enter>NÕu sµn b¸n hÕt b¹n sÏ ®­îc "..nTB.." tiÒn ®ång",2,
	"B¹n muèn b¸n mÊy b¶o r­¬ng nhËp vµo./soban",
	"Tho¸t/no")
end
end
function soban()
	AskClientForNumber("giaodichban", 0,100000000000, "Sè R­¬ng CÇn B¸n")
end
function giaodichban(num)
if (num == 0 ) then
SetTask(TASK_GIAODICH,0)
Msg2Player("ch­a nhËp sè B¶o r­¬ng ")
end
if (num > 0 )then
local k = CheckName(1)
local a = GetTask(TASK_GIAODICH)
local nSL = GIAO_DICH[k][7]
	if num > nSL then
		Msg2Player("Sè B¶o r­¬ng kh«ng ®ñ b¹n ph¶i chuyÓn r­¬ng lªn sµn tr­íc råi míi ®¨ng ®­îc")
	end
	if num <= nSL then
		GIAO_DICH[k][2] = num
		GIAO_DICH[k][3] = a
		giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
		SaveData("dulieu/giaodich.lua",giaodich)
Msg2SubWorld("<color=pink>"..GetName().."<color> võa ®¨ng b¸n<color=metal>( "..num.." )<color><color=green>B¶o r­¬ng víi gi¸<color=metal>( "..a.." )<color><color=green> tiÒn ®ång<color> lªn sµn ®Êu gi¸.")
Talk(1,"","b¹n ®· ®¨ng tin b¸n b¶o r­¬ng víi gi¸ b¹n ®Ò ra nÕu cã ai ®ã cÇn mua b¶o r­¬ng víi gi¸ trÞ b»ng gi¸ b¹n ®Ò ra trªn sµn th× hÖ thèng sÏ chuyÓn tiÒn vµo th«ng tin cho b¹n vµ trao b¶o r­¬ng b¹n cho ng­êi mua nã.") -- go	
for n =1,getn(GIAO_DICH) do
Reset_Daugia()
SaveNow();
	end
end
end
end   
-- mua tien dong
function nhapmua()
	AskClientForNumber("giamua", 0,100000000000, "NhËp gi¸ cÇn mua")
end
function giamua(num)
if( num == 0 or num > 999) then
Msg2Player("Gia giao dich tu 1 den 999 van. ")
end
if (num > 0 and num <= 999) then
local nTD = CheckName(4)
local nTM = floor(nTD/num)
SetTask(TASK_GIAODICH,num)
Say("HÖ thèng:Gi¸ mua B¶o r­¬ng cña b¹n lµ "..num.." tiÒn ®ång. <enter>B¹n ®ang cã "..nTD.." tiÒn ®ång trªn sµn ®Êu gi¸. <enter>Cã thÓ mua tèi ®a "..nTM.." B¶o r­¬ng.",2,
	"NhËp Sè B¶o r­¬ng cÇn mua/somua",
	"Tho¸t/no")
end
end
function somua()
	AskClientForNumber("giaodichmua", 0,100000000000, "NhËp sè R­¬ng Mua")
end
function giaodichmua(num)
local a = GetTask(TASK_GIAODICH) -- gia mua 
local nTien = CheckName(4)
local nMua = a*num
	if nTien < nMua  then
		Msg2Player("sè l­îng kh«ng ®ñ b¹n cÇn ph¶i chuyÓn tiÒn lªn sµn ®Êu gi¸ tr­íc míi cã thÓ mua b¸n.")
	end
	if nTien >= nMua then
		local i = CheckName(1)
		GIAO_DICH[i][6] = a
		GIAO_DICH[i][5] = num
		giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
		SaveData("dulieu/giaodich.lua",giaodich)		
Msg2SubWorld("<color=pink>"..GetName().."<color> võa ®¨ng mua<color=metal> ("..num..")<color=green> B¶o r­¬ng<color><enter> víi gi¸ <color=metal>("..a..")<color> <color=green> TiÒn ®ång <color> lªn sµn ®Êu gi¸.")
Talk(1,"","b¹n ®· ®¨ng tin mua b¶o r­¬ng víi gi¸ b¹n ®Ò ra nÕu cã ai ®ã b¸n b¶o r­¬ng víi gi¸ trÞ b»ng gi¸ b¹n ®Ò ra trªn sµn th× hÖ thèng sÏ chuyÓn b¶o r­¬ng vµo th«ng tin cho b¹n vµ trao tiÒn b¹n cho ng­êi ®¨ng b¸n.") -- go	
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
Msg2Player("Hñy bá giao dÞch ®Êu gi¸ thµnh c«ng. cã thÓ giao dÞch l¹i.")
end
function yes()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 1) then -- gia xu
		Talk(1,"","Xin lçi muèn ®¨ng ký ®Êu gi¸ vÜnh viÔn cÇn 1 xu b¹n sÏ ®­îc rao b¸n vËt phÈm vµ mua vËt phÈm trªn sµn ®Êu gi¸ vÜnh viÔn.") -- go
	return end
GIAO_DICH[getn(GIAO_DICH)+1] = {GetName(),0,0,0,0,0,0} 
----{GetName() ,0,        0,         0,         0,		0,			0} 
--- ( Name -   TD ban - Gia ban TD -Tien DG - TD mua -Gia mua TD - TDong GD)
giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
SaveData("dulieu/giaodich.lua",giaodich)
ConsumeEquiproomItem(1,4,417,1,1)
Talk(1,"","§¨ng ký ®Êu gi¸ thµnh c«ng b¹n cã thÓ ®Êu gi¸ ngay tõ b©y giê nÕu b¹n kh«ng biÕt vui lßng xem video t¹i www.volamkiemthien.com.")
SaveNow();
end

function no()
end
--file Include("\\dulieu\\giaodich.lua");
--Code:
--GIAO_DICH={}
--file Include("\\script\\library\\worldlibrary.lua"); thêm 
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
Msg2Player("b¹n  nhËn tõ hÖ thèng ®Êu gi¸  <color=yellow>"..a.." <color>B¶o R­¬ng. ")
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
Msg2Player("b¹n  nhËn tõ hÖ thèng ®Êu gi¸  <color=yellow>"..a.." <color>TiÒn ®ång. ")
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
  Say("§¨ng ky di")
  return
 end
local nSL = CalcEquiproomItemCount(4, 417, 1, 1)
if ( num == 0 or num > nSL) then
Msg2Player("ch­a nhËp sè tiÒn ®ång hoÆc kh«ng ®ñ. ")
end
if ( num > 0 and num <=  nSL) then
ConsumeEquiproomItem(num, 4, 417, 1, 1)
local nTT = CheckName(1)
GIAO_DICH[nTT][4] = GIAO_DICH[nTT][4] + num
giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
SaveData("dulieu/giaodich.lua",giaodich)	
Msg2Player("b¹n võa chuyÓn thµnh c«ng <color=yellow>"..num.."<color> tiÒn ®ång lªn hÖ thèng ®Êu gi¸. ")
SaveNow();
end
end

function chuyentienbaoruong(num)
if CheckName(1) < 1 then
Say("§¨ng ký ®i b¹n míi cã thÓ ®¨ng b¸n.")
return
end

local nSL = CalcEquiproomItemCount(6,1,4367,1)
if ( num == 0 or num > nSL) then
Msg2Player("ch­a nhËp sè B¶o R­¬ng hoÆc kh«ng ®ñ. ")
end
if ( num > 0 and num <=  nSL) then
ConsumeEquiproomItem(num, 6,1,4367,1)
local nTT = CheckName(1)
GIAO_DICH[nTT][7] = GIAO_DICH[nTT][7] + num
giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
SaveData("dulieu/giaodich.lua",giaodich)	
Msg2Player("b¹n võa chuyÓn thµnh c«ng  <color=yellow>"..num.."<color> B¶o R­¬ng lªn hÖ thèng ®Êu gi¸. ")
SaveNow();
end
end

function dulieu()
Say("NV <color=green>"..GetName().." <color>hiÖn cã "..CheckName(4).." TiÒn ®ång vµ "..CheckName(7).." B¶o R­¬ng trªn sµn ®Êu gi¸.<enter>B¹n ®ang rao mua "..CheckName(5).." B¶o R­¬ng gi¸ "..CheckName(6).." TiÒn ®ång 1 R­¬ng<enter>B¹n ®ang rao b¸n "..CheckName(2).." B¶o R­¬ng gi¸ "..CheckName(3).." tiÒn ®ång 1 R­¬ng ",3,
	"Ta muèn rót l¹i B¶o R­¬ng./laytien",
	"Ta muèn rót l¹i TiÒn §ång./laytien",
	"Tho¸t/no")
end

function laytien(nsel)
local nGD = CheckName(3) + CheckName(6)
if nGD == 0 then
	if nsel == 0 then
		Say("HiÖn t¹i b¹n cã <color=green>"..CheckName(7).." <color>B¶o R­¬ng trªn sµn ®Êu gi¸",2,
			"NhËp sè l­îng b¶o r­¬ng cÇn rót. /rutBR",
			"®Ó ta suy nghÜ l¹i. /no")
			end
	if nsel == 1 then
		Say("HiÖn t¹i b¹n cã <color=green>"..CheckName(4).." <color>TiÒn ®ång trªn sµn ®Êu gi¸.<enter><color=pink>Khi rót tiÒn ®Ó tr¸nh bÞ mÊt tiÒn h·y cÊt hÕt tiÒn trong hµnh trang. ",2,
			"NhËp sè l­îng tiÒn ®ång cÇn rót. /rutTD",
			"®Ó ta suy nghÜ l¹i. /no")
			end
else
Say("§ang giao dÞch trªn sµn ®Êu gi¸ <enter>Gi¸ b¹n cÇn b¸n b¶o r­¬ng:<color=red> "..CheckName(3).." <color>tiÒn<enter>Gi¸ b¹n cÇn mua b¶o r­¬ng: <color=yellow>"..CheckName(6).."<color> tiÒn. <enter>b¹n cã muèn thay ®æi l¹i kh«ng nÕu cã chän hñy giao dÞch.",2,
	"Hñy giao dÞch ®¨ng l¹i giao dÞch míi/huygd",
	"Kh«ng/no")
end
end

function rutBR()
AskClientForNumber("SoBR", 0,100000000000, "Xin mêi nhËp sè l­îng")
end
function SoBR(num)
local nBR = CheckName(7)
local nTT = CheckName(1)
if (num == 0 or num > nBR) then
Msg2Player("ch­a nhËp sè B¶o R­¬ng hoÆc B¶o R­¬ng kh«ng ®ñ víi sè rót. ")
end
if (num > 0 and num <= nBR) then
GIAO_DICH[nTT][7] = GIAO_DICH[nTT][7] - num
giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
SaveData("dulieu/giaodich.lua",giaodich)
NhanBR(num)
end
end

function rutTD()
AskClientForNumber("SoTD", 0,100000000000, "Xin mêi nhËp sè l­îng")
end

function SoTD(num)
local nTD = CheckName(4)
local nTT = CheckName(1)
if (num == 0 or num > nTD) then
Msg2Player("Ch­a nhËp sè tiÒn ®ång hoÆc tiÒn ®ång kh«ng ®ñ víi sè rót. ")
end
if (num > 0 and num <= nTD) then
GIAO_DICH[nTT][4] = GIAO_DICH[nTT][4] - num
giaodich = TaoBang(GIAO_DICH,"GIAO_DICH","")
SaveData("dulieu/giaodich.lua",giaodich)
NhanTD(num)
end
end










