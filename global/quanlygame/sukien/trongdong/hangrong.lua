Include("\\script\\lib\\awardtemplet.lua")

function main1(NpcIndex)
Say("Event KÕt Thóc !!") 
return 
end



function main(NpcIndex)
dofile("script/global/quanlygame/sukien/8thang3/hangrong.lua");
do Say("HÕt thêi gian ghÐp vËt phÈm !!") return end
local tab_Content = {
	"Mua Ph©n Bãn/phanbon",
	"Mua B×nh Th¸nh Thñy/thanhthuy",
	"HiÖn t¹i ta chØ ®Õn xem/no"
	}
Say("<color=green>Tói Ph©n Bãn - 2 V¹n / 1 Tói<enter><color=green>B×nh Th¸nh Thñy - 1 Xu / 1 B×nh<enter><enter><color=yellow>Ta ®©y chuyªn b¸n c¸c lo¹i b×nh thñy d­îc vµ c¸c lo¹i thæ d­îc rÊt tèt cho c©y trång nhµ ng­¬i cã ñng hé g× ta hay ch¨ng ?", getn(tab_Content), tab_Content);       
end;




function myplayersex()
	if GetSex() == 1 then 
		return "N÷ hiÖp";
	else
		return "§¹i hiÖp";
	end
end


function phanbon()
	if (GetCash() < 20000) then
		Say("CÇn Ýt nhÊt 2 v¹n l­îng ®Ó mua 1 tói ph©n bãn", 0)
		return
 else
AskClientForNumber("phanbon1",0,50,"Sè l­îng mua")
end
end

function phanbon1(num)
tienvan = GetCash()
num1 = num*20000

	if ( num1 >tienvan) then
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng tiÒn v¹n ®Ó mua ®ñ "..num.." tói Ph©n Bãn.") -- go
	return   end
	if (tienvan >= num1) then

					for i=1,num do
					Pay(20000)
                                                                                                                           end

			for i=1, num do			
			AddItem(6,1,4364,1,1,0) 	
end		
			Msg2Player(""..myplayersex().." Mua thµnh c«ng <color=green>"..num.." Tói Ph©n Bãn ..!")
		return end	
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng tiÒn v¹n ®Ó mua ®ñ "..num.." tói Ph©n Bãn.") -- go
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..myplayersex().." <color=green>"..GetName().." <color> online vui vÎ..!"); 	
	end
end



function thanhthuy()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 1) then -- gia xu
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ TiÒn ®ång.") -- go
	return
 else
AskClientForNumber("thanhthuy1",0,50,"Sè l­îng mua")
end
end
function thanhthuy1(num)
local tienxu  = CalcItemCount(3,4,417,1, -1) ; --xu 
 

	if ( num >tienxu) then
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng TiÒn ®ång ®Ó mua ®ñ "..num.." Th¸nh Thñy.") -- go
	return   end
	if (tienxu >= num) then

					for i=1,num do
					ConsumeEquiproomItem(1,4,417,1,-1)
					end
	
			for i=1, num do			
				AddItem(6,1,4365,1,1,0) 			
end	
			Msg2Player(""..myplayersex().." Mua thµnh c«ng <color=green>"..num.." Th¸nh Thñy ..!")
		return end	
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng TiÒn ®ång ®Ó mua ®ñ "..num.." Th¸nh Thñy.") -- go
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..myplayersex().." <color=green>"..GetName().." <color> online vui vÎ..!"); 	
	end
end
