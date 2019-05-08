Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\quanlygame\\sukien\\trongdong\\trongdong.lua")



TASKTRONGDONG = 5331



-------------------------------------- TU DONG NOI CHUYEN --------------------------------
function OnTimer(nNpcIndex,nTimeOut)
	local tab_Chat = {
		"<color=white>��c Tr�ng S�t <enter>Tr�ng ��ng T�t Nh�t ��y",
		"<color=white>Nhanh Tay Nh�n <enter>Ngay Nhi�u Qu� Qu�",
		"<color=white>Truy C�p <enter>www.jxtinhvolam.com �� Xem",
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
	"��c Tr�ng B�ng S�t/thoso",
	"��c Tr�ng B�ng ��ng  /trongdong",
	 "Mua S�ch K� N�ng ��c/sachkynang",
	"Nh�n Nguy�n Li�u Test/nhannltest",
	"Nh�n Th�nh Ph�m Test/thanhpham",
	"Reset M�c Tr�ng v� 0 /resetmocevent",
	"Test T� L� M�c Max 500 /testmocmax",
	"Ta ch�a mang �� nguy�n li�u/no"
	}
Say("<color=green>��c Tr�ng Event:<color>\nNh�n d�p ng�y gi� t� c�c ��i hi�p h�y mau ch� t�i ��c tr�ng �� nh�n ngay c�c ph�n qu� kh�ng  bao gi� h�p d�n b�ng\n<color=Red>S� M�c Tr�ng ��ng hi�n t�i : <color>" .. GetTask(TASKTRONGDONG) .. "/500 ", getn(tab_Content), tab_Content);       
end;

function testmocmax()
mocmax()
end


function resetmocevent()
SetTask(5331,0)
end

function thoso()
local tab_Content = {
		"Ta mu�n ��c ngay/thoso1",
		"k�t th�c/no"
	}
Say("<color=yellow>��c Tr�ng Event:<color> Nguy�n li�u ��c tr�ng S�t c�n: \n 1 ��ng + 1 ch� + 1 s�t", getn(tab_Content), tab_Content);       
end;


function trongdong()
local tab_Content = {
		"��c tr�ng ��ng ngay/trongdong1",
		"k�t th�c/no"
	}
Say("<color=yellow>��c Tr�ng Event:<color> Nguy�n li�u ��c tr�ng ��ng ��ng S�n c�n: \n 1 Tr�ng S�t + 1 K� N�ng ��c Tr�ng", getn(tab_Content), tab_Content);       
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
		return "N� hi�p";
	else
		return "��i hi�p";
	end
end
-----------------------------------------------------------MUA SACH--------------------------------------------------


function sachkynang()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 2) then -- gia xu
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� Ti�n ��ng mua s�ch.") -- go
	return
 else
AskClientForNumber("sachkynang1",0,50,"S� l��ng mua")
end
end
function sachkynang1(num)
local tienxu  = CalcItemCount(3,4,417,1, -1) ; --xu 

 	num1= num*2;

	if ( num >tienxu) then
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng Ti�n ��ng �� mua �� "..num.." S�ch K� N�ng ��c Tr�ng.") -- go
	return   
	end
	if (tienxu >= num1) then

					for i=1,num1 do
					ConsumeEquiproomItem(1,4,417,1,-1)
					end
	
			for i=1, num do			
			AddItem(6,1,4496,1,1,0) 			
end	
			Msg2Player("<color=white>Mua th�nh c�ng <color=pink>"..num.." <color=white>S�ch K� N�ng ��c Tr�ng.")
		return end	
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng Ti�n ��ng �� mua �� "..num.." S�ch K� N�ng ��c Tr�ng.") -- go
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..GetName().." <color> online vui v�..!"); 	
	end
end

-----------------------------------------------------------TRONG THO SO--------------------------------------------------

function thoso1()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4493,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "C�n thi�u ��ng xin h�y ki�m tra l�i.")
		return
		end
	local nSilverCount2 = CalcEquiproomItemCount(6,1,4494,1) ;
	if(nSilverCount2 < 1) then
		Talk(1, "no", "C�n thi�u S�t xin h�y ki�m tra l�i.")
		return
		end
	local nSilverCount3 = CalcEquiproomItemCount(6,1,4495,1) ;
	if(nSilverCount3 < 1) then
		Talk(1, "no", "C�n thi�u Ch� xin h�y ki�m tra l�i.")
		return
		end
thoso2()
end


function thoso2()
local dong = CalcItemCount(3,6,1,4493, -1) ; --dong 
local sat = CalcItemCount(3,6, 1,4494, -1) ; --sat 
local chi = CalcItemCount(3,6,1,4495, -1) ; --chi 

 

if dong < 1 and sat < 1 and chi< 1  then
 Talk(2, "", ""..myplayersex().." Xin th� l�i","Nguy�n li�u ph�i c�: <color=while>\n 1 ��ng - 1 ch� - 1 s�t..!"); 
 else
AskClientForNumber("thoso3",0,50,"S� l��ng ��c")
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
		Talk(1, "", " Nguy�n li�u c�n thi�u "..num1-dong.." ��ng, "..num2-sat.." S�t , "..num3-chi.." Ch�\n\n"..myplayersex().." \ <color=green>xin ki�m tra l�i..!");
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
			Msg2Player(" <color=white>B�n ��c ���c <color=pink>"..num.." <color=white>tr�ng S�t.")
		return
end	
		Talk(1, "", " Nguy�n li�u c�n thi�u "..num1-dong.." ��ng, "..num2-sat.." S�t , "..num3-chi.." Ch�\n\n"..myplayersex().." \ <color=green>xin ki�m tra l�i..!");
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..GetName().." <color>m�t ng�y online vui v� ...!"); 	
	end
end




-----------------------------------------------------------TRONG DONG---------------------------------------------------

function trongdong1()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4497,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "C�n thi�u Tr�ng S�t xin h�y ki�m tra l�i.")
		return
		end
	local nSilverCount2 = CalcEquiproomItemCount(6,1,4496,1) ;
	if(nSilverCount2 < 1) then
		Talk(1, "no", "C�n thi�u s�ch K� N�ng ��c Tr�ng xin h�y ki�m tra l�i.")
		return
		end
trongdong2()
end


function trongdong2()
local trongthoso = CalcItemCount(3,6,1,4497, -1) ; --trongthoso
local kynangduc = CalcItemCount(3,6, 1,4496, -1) ; --kynangduc 

 

if trongthoso < 1 and kynangduc < 1 then
 Talk(2, "", ""..myplayersex().." Xin th� l�i","Nguy�n li�u ph�i c�: <color=while>\n 1 Tr�ng S�t + 1 K� N�ng ��c"); 
 else
AskClientForNumber("trongdong3",0,50,"S� l��ng ��c")
end
end

function trongdong3(num)
local trongthoso = CalcItemCount(3,6,1,4497, -1) ; --trongthoso
local kynangduc = CalcItemCount(3,6, 1,4496, -1) ; --kynangduc 
 


			num1= num*1;
			num2= num*1;


	if ( num1 >trongthoso and num2 >kynangduc) then
		Talk(1, "", "Nguy�n li�u c�n thi�u "..num1-trongthoso.." Tr�ng S�t, "..num2-kynangduc.." K� N�ng ��c Tr�ng.\n\n"..myplayersex().." \ <color=green>xin ki�m tra l�i..!");
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
			Msg2Player("<color=white>B�n ��c ���c <color=pink>"..num.." <color=white>tr�ng S�t.")
		return
end	
		Talk(1, "", " Nguy�n li�u c�n thi�u "..num1-trongthoso.." Tr�ng S�t, "..num2-kynangduc.." K� N�ng ��c Tr�ng.\n\n"..myplayersex().." \ <color=green>xin ki�m tra l�i..!");
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..GetName().." <color>m�t ng�y online vui v� ...!"); 	
	end
end







