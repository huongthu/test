Include("\\script\\lib\\awardtemplet.lua")

function main1(NpcIndex)
Say("Event K�t Th�c !!") 
return 
end



function main(NpcIndex)
dofile("script/global/quanlygame/sukien/8thang3/hangrong.lua");
do Say("H�t th�i gian gh�p v�t ph�m !!") return end
local tab_Content = {
	"Mua Ph�n B�n/phanbon",
	"Mua B�nh Th�nh Th�y/thanhthuy",
	"Hi�n t�i ta ch� ��n xem/no"
	}
Say("<color=green>T�i Ph�n B�n - 2 V�n / 1 T�i<enter><color=green>B�nh Th�nh Th�y - 1 Xu / 1 B�nh<enter><enter><color=yellow>Ta ��y chuy�n b�n c�c lo�i b�nh th�y d��c v� c�c lo�i th� d��c r�t t�t cho c�y tr�ng nh� ng��i c� �ng h� g� ta hay ch�ng ?", getn(tab_Content), tab_Content);       
end;




function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
end


function phanbon()
	if (GetCash() < 20000) then
		Say("C�n �t nh�t 2 v�n l��ng �� mua 1 t�i ph�n b�n", 0)
		return
 else
AskClientForNumber("phanbon1",0,50,"S� l��ng mua")
end
end

function phanbon1(num)
tienvan = GetCash()
num1 = num*20000

	if ( num1 >tienvan) then
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng ti�n v�n �� mua �� "..num.." t�i Ph�n B�n.") -- go
	return   end
	if (tienvan >= num1) then

					for i=1,num do
					Pay(20000)
                                                                                                                           end

			for i=1, num do			
			AddItem(6,1,4364,1,1,0) 	
end		
			Msg2Player(""..myplayersex().." Mua th�nh c�ng <color=green>"..num.." T�i Ph�n B�n ..!")
		return end	
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng ti�n v�n �� mua �� "..num.." t�i Ph�n B�n.") -- go
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..myplayersex().." <color=green>"..GetName().." <color> online vui v�..!"); 	
	end
end



function thanhthuy()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 1) then -- gia xu
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� Ti�n ��ng.") -- go
	return
 else
AskClientForNumber("thanhthuy1",0,50,"S� l��ng mua")
end
end
function thanhthuy1(num)
local tienxu  = CalcItemCount(3,4,417,1, -1) ; --xu 
 

	if ( num >tienxu) then
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng Ti�n ��ng �� mua �� "..num.." Th�nh Th�y.") -- go
	return   end
	if (tienxu >= num) then

					for i=1,num do
					ConsumeEquiproomItem(1,4,417,1,-1)
					end
	
			for i=1, num do			
				AddItem(6,1,4365,1,1,0) 			
end	
			Msg2Player(""..myplayersex().." Mua th�nh c�ng <color=green>"..num.." Th�nh Th�y ..!")
		return end	
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng Ti�n ��ng �� mua �� "..num.." Th�nh Th�y.") -- go
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..myplayersex().." <color=green>"..GetName().." <color> online vui v�..!"); 	
	end
end
