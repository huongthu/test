Include("\\script\\lib\\awardtemplet.lua")


function main(NpcIndex)
dofile("script/global/quanlygame/sukien/8thang3/hangrong.lua");
local tab_Content = {
	"Mua Giá §ùng Hoa 1xu/muagiohoa",
	"HiÖn t¹i ta chØ ®Õn xem/no"
	}
Say("<color=green>Hµng rong ta chuyªn b¸n c¸c lo¹i giá ®ùng hoa ®­îc ®an tõ tre vïng nam h¹ ng­¬i cã cÇn : Gi¸ 1 giá lµ 1 xu ?", getn(tab_Content), tab_Content);       
end;




function myplayersex()
	if GetSex() == 1 then 
		return "N÷ hiÖp";
	else
		return "§¹i hiÖp";
	end
end




function muagiohoa()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 1) then -- gia xu
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ TiÒn ®ång.") -- go
	return
 else
AskClientForNumber("muagiohoa1",0,50,"Sè l­îng mua")
end
end
function muagiohoa1(num)
local tienxu  = CalcItemCount(3,4,417,1, -1) ; --xu 
 

	if ( num >tienxu) then
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng TiÒn ®ång ®Ó mua ®ñ "..num.." Giá §ùng Hoa.") -- go
	return   end
	if (tienxu >= num) then

					for i=1,num do
					ConsumeEquiproomItem(1,4,417,1,-1)
					end
	
			for i=1, num do			
				AddItem(6,1,4487,1,1,0) 			
end	
			Msg2Player(""..myplayersex().." Mua thµnh c«ng <color=green>"..num.." Giá §ùng Hoa ..!")
		return end	
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng TiÒn ®ång ®Ó mua ®ñ "..num.." Giá §ùng Hoa.") -- go
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..myplayersex().." <color=green>"..GetName().." <color> online vui vÎ..!"); 	
	end
end
