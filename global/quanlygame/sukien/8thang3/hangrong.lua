Include("\\script\\lib\\awardtemplet.lua")


function main(NpcIndex)
dofile("script/global/quanlygame/sukien/8thang3/hangrong.lua");
local tab_Content = {
	"Mua Gi� ��ng Hoa 1xu/muagiohoa",
	"Hi�n t�i ta ch� ��n xem/no"
	}
Say("<color=green>H�ng rong ta chuy�n b�n c�c lo�i gi� ��ng hoa ���c �an t� tre v�ng nam h� ng��i c� c�n : Gi� 1 gi� l� 1 xu ?", getn(tab_Content), tab_Content);       
end;




function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
end




function muagiohoa()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 1) then -- gia xu
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� Ti�n ��ng.") -- go
	return
 else
AskClientForNumber("muagiohoa1",0,50,"S� l��ng mua")
end
end
function muagiohoa1(num)
local tienxu  = CalcItemCount(3,4,417,1, -1) ; --xu 
 

	if ( num >tienxu) then
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng Ti�n ��ng �� mua �� "..num.." Gi� ��ng Hoa.") -- go
	return   end
	if (tienxu >= num) then

					for i=1,num do
					ConsumeEquiproomItem(1,4,417,1,-1)
					end
	
			for i=1, num do			
				AddItem(6,1,4487,1,1,0) 			
end	
			Msg2Player(""..myplayersex().." Mua th�nh c�ng <color=green>"..num.." Gi� ��ng Hoa ..!")
		return end	
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng Ti�n ��ng �� mua �� "..num.." Gi� ��ng Hoa.") -- go
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..myplayersex().." <color=green>"..GetName().." <color> online vui v�..!"); 	
	end
end
