Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\quanlygame\\sukien\\trongdong\\trongdong.lua")



TASKTRONGDONG = 5331



-------------------------------------- TU DONG NOI CHUYEN --------------------------------
function OnTimer(nNpcIndex,nTimeOut)
	local tab_Chat = {
		"<color=white>§óc Trèng S¾t <enter>Trèng §ång Tèt NhÊt §©y",
		"<color=white>Nhanh Tay NhËn <enter>Ngay NhiÒu Quµ Quý",
		"<color=white>Truy CËp <enter>www.jxtinhvolam.com §Ó Xem",
	}
	local ran = random(1,getn(tab_Chat))
	NpcChat(nNpcIndex,tab_Chat[ran])
	local ranTimer = 10
	SetNpcTimer(nNpcIndex,ranTimer*18)
	SetNpcScript(nNpcIndex,"\\script\\global\\quanlygame\\sukien\\trongdong\\npcsukien.lua")
end

function main()
dofile("script/global/quanlygame/sukien/trongdong/npcsukien.lua");
local tab_Content = {
	"§óc Trèng B»ng S¾t/thoso",
	"§óc Trèng B»ng §ång  /trongdong",
	 "Mua S¸ch Kü N¨ng §óc/sachkynang",
	"NhËn Nguyªn LiÖu Test/nhannltest",
	"NhËn Thµnh PhÈm Test/thanhpham",
	"Reset Mèc Trèng vÒ 0 /resetmocevent",
	"Test TØ LÖ Mèc Max 500 /testmocmax",
	"Ta ch­a mang ®ñ nguyªn liÖu/no"
	}
Say("<color=green>§óc Trèng Event:<color>\nNh©n dÞp ngµy giç tæ c¸c ®¹i hiÖp h·y mau chç tµi ®óc trèng ®Ó nhËn ngay c¸c phÇn quµ kh«ng  bao giß hÊp dÉn b»ng\n<color=Red>Sè Mèc Trèng §ång hiÖn t¹i : <color>" .. GetTask(TASKTRONGDONG) .. "/500 ", getn(tab_Content), tab_Content);       
end;

function testmocmax()
mocmax()
end


function resetmocevent()
SetTask(5331,0)
end

function thoso()
local tab_Content = {
		"Ta muèn ®óc ngay/thoso1",
		"kÕt thóc/no"
	}
Say("<color=yellow>§óc Trèng Event:<color> Nguyªn liÖu ®óc trèng S¾t cÇn: \n 1 ®ång + 1 ch× + 1 s¾t", getn(tab_Content), tab_Content);       
end;


function trongdong()
local tab_Content = {
		"§óc trèng ®ång ngay/trongdong1",
		"kÕt thóc/no"
	}
Say("<color=yellow>§óc Trèng Event:<color> Nguyªn liÖu ®óc trèng ®ång §«ng S¬n cÇn: \n 1 Trèng S¾t + 1 Kü N¨ng §óc Trèng", getn(tab_Content), tab_Content);       
end;


function nhannltest()
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4493,1,1},nCount=100,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4494,1,1},nCount=100,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4495,1,1},nCount=100,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4496,1,1},nCount=100,},}, "test", 1);
Earn(10000000)
end

function thanhpham()
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4498,1,1},nCount=501,},}, "test", 1);
end



function myplayersex()
	if GetSex() == 1 then 
		return "N÷ hiÖp";
	else
		return "§¹i hiÖp";
	end
end
-----------------------------------------------------------MUA SACH--------------------------------------------------


function sachkynang()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 2) then -- gia xu
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ TiÒn ®ång mua s¸ch.") -- go
	return
 else
AskClientForNumber("sachkynang1",0,50,"Sè l­îng mua")
end
end
function sachkynang1(num)
local tienxu  = CalcItemCount(3,4,417,1, -1) ; --xu 

 	num1= num*2;

	if ( num >tienxu) then
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng TiÒn ®ång ®Ó mua ®ñ "..num.." S¸ch Kü N¨ng §óc Trèng.") -- go
	return   
	end
	if (tienxu >= num1) then

					for i=1,num1 do
					ConsumeEquiproomItem(1,4,417,1,-1)
					end
	
			for i=1, num do			
			AddItem(6,1,4496,1,1,0) 			
end	
			Msg2Player("<color=white>Mua thµnh c«ng <color=pink>"..num.." <color=white>S¸ch Kü N¨ng §óc Trèng.")
		return end	
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng TiÒn ®ång ®Ó mua ®ñ "..num.." S¸ch Kü N¨ng §óc Trèng.") -- go
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..GetName().." <color> online vui vÎ..!"); 	
	end
end

-----------------------------------------------------------TRONG THO SO--------------------------------------------------

function thoso1()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4493,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "Cßn thiÕu §ång xin h·y kiÓm tra l¹i.")
		return
		end
	local nSilverCount2 = CalcEquiproomItemCount(6,1,4494,1) ;
	if(nSilverCount2 < 1) then
		Talk(1, "no", "Cßn thiÕu S¾t xin h·y kiÓm tra l¹i.")
		return
		end
	local nSilverCount3 = CalcEquiproomItemCount(6,1,4495,1) ;
	if(nSilverCount3 < 1) then
		Talk(1, "no", "Cßn thiÕu Ch× xin h·y kiÓm tra l¹i.")
		return
		end
thoso2()
end


function thoso2()
local dong = CalcItemCount(3,6,1,4493, -1) ; --dong 
local sat = CalcItemCount(3,6, 1,4494, -1) ; --sat 
local chi = CalcItemCount(3,6,1,4495, -1) ; --chi 

 

if dong < 1 and sat < 1 and chi< 1  then
 Talk(2, "", ""..myplayersex().." Xin thø lçi","Nguyªn liÖu ph¶i cã: <color=while>\n 1 ®ång - 1 ch× - 1 s¾t..!"); 
 else
AskClientForNumber("thoso3",0,50,"Sè l­îng ®óc")
end
end

function thoso3(num)
local dong = CalcItemCount(3,6,1,4493, -1) ; --dong 
local sat = CalcItemCount(3,6, 1,4494, -1) ; --sat 
local chi = CalcItemCount(3,6,1,4495, -1) ; --chi 
 


			num1= num*1;
			num2= num*1;
			num3= num*1;


	if ( num1 >dong and num2 >sat and num3 >chi) then
		Talk(1, "", " Nguyªn liÖu cßn thiÕu "..num1-dong.." §ång, "..num2-sat.." S¾t , "..num3-chi.." Ch×\n\n"..myplayersex().." \ <color=green>xin kiÓm tra l¹i..!");
	return   
                       end
	if (dong >= num1 and sat >= num2 and chi >= num3) then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4493,-1)
			end
				for i=1,num2 do
				ConsumeEquiproomItem(1,6,1,4494,-1)
				end
					for i=1,num3 do
					ConsumeEquiproomItem(1,6,1,4495,-1)
					end
	
			for i=1, num do			
				AddItem(6,1,4497,1,1,0) 			
end	
			Msg2Player(" <color=white>B¹n ®óc ®­îc <color=pink>"..num.." <color=white>trèng S¾t.")
		return
end	
		Talk(1, "", " Nguyªn liÖu cßn thiÕu "..num1-dong.." §ång, "..num2-sat.." S¾t , "..num3-chi.." Ch×\n\n"..myplayersex().." \ <color=green>xin kiÓm tra l¹i..!");
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..GetName().." <color>mét ngµy online vui vÎ ...!"); 	
	end
end




-----------------------------------------------------------TRONG DONG---------------------------------------------------

function trongdong1()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4497,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "Cßn thiÕu Trèng S¾t xin h·y kiÓm tra l¹i.")
		return
		end
	local nSilverCount2 = CalcEquiproomItemCount(6,1,4496,1) ;
	if(nSilverCount2 < 1) then
		Talk(1, "no", "Cßn thiÕu s¸ch Kü N¨ng §óc Trèng xin h·y kiÓm tra l¹i.")
		return
		end
trongdong2()
end


function trongdong2()
local trongthoso = CalcItemCount(3,6,1,4497, -1) ; --trongthoso
local kynangduc = CalcItemCount(3,6, 1,4496, -1) ; --kynangduc 

 

if trongthoso < 1 and kynangduc < 1 then
 Talk(2, "", ""..myplayersex().." Xin thø lçi","Nguyªn liÖu ph¶i cã: <color=while>\n 1 Trèng S¾t + 1 Kü N¨ng §óc"); 
 else
AskClientForNumber("trongdong3",0,50,"Sè l­îng ®óc")
end
end

function trongdong3(num)
local trongthoso = CalcItemCount(3,6,1,4497, -1) ; --trongthoso
local kynangduc = CalcItemCount(3,6, 1,4496, -1) ; --kynangduc 
 


			num1= num*1;
			num2= num*1;


	if ( num1 >trongthoso and num2 >kynangduc) then
		Talk(1, "", "Nguyªn liÖu cßn thiÕu "..num1-trongthoso.." Trèng S¾t, "..num2-kynangduc.." Kü N¨ng §óc Trèng.\n\n"..myplayersex().." \ <color=green>xin kiÓm tra l¹i..!");
	return   
                       end
	if (trongthoso >= num1 and kynangduc >= num2) then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4497,-1)
			end
				for i=1,num2 do
				ConsumeEquiproomItem(1,6,1,4496,-1)
				end
			for i=1, num do			
				AddItem(6,1,4498,1,1,0) 			
end	
			Msg2Player("<color=white>B¹n ®óc ®­îc <color=pink>"..num.." <color=white>trèng S¾t.")
		return
end	
		Talk(1, "", " Nguyªn liÖu cßn thiÕu "..num1-trongthoso.." Trèng S¾t, "..num2-kynangduc.." Kü N¨ng §óc Trèng.\n\n"..myplayersex().." \ <color=green>xin kiÓm tra l¹i..!");
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..GetName().." <color>mét ngµy online vui vÎ ...!"); 	
	end
end







