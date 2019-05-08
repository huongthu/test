
function talk_yulongtie() 
Say("C¸i nµy lµ ngäc long trang cho c¸c vÞ anh hïng hµo kiÖt ®Ých thiÕp mêi , kh«ng ph¶i ai còng cã thÓ lÊy ®­îc nã ?", 
2, 
" ta sö dông nh¹c v­¬ng hån chi th¹ch ®Ó ®æi lÊy /get_yulongtie", 
" ®Ó cho ta muèn muèn /Cancel") 
end 

-- script viet hoa By http://tranhba.com  dïng nh¹c v­¬ng hån chi th¹ch ®æi lÊy ngäc long anh hïng thiÕp 
function get_yulongtie() 
if (CalcEquiproomItemCount(4, 507, 1, -1) < 1) then 
Say("Ng­¬i kh«ng cã nh¹c v­¬ng hån chi th¹ch , tiÕp tôc ®i luyÖn tËp , sau ®ã tíi n¬i nµy ?") 
else 
Say("Ng­¬i x¸c ®Þnh sö dông nh¹c v­¬ng hån chi th¹ch ®æi ngäc long anh hïng thiÕp tiÕn vµo kiÕm mé mª cung sao ?", 
2, 
" muèn /exchange_yulongtie", 
" ®Ó cho ta muèn muèn /Cancel") 
end 
end 

function exchange_yulongtie() 
if (CalcFreeItemCellCount() == 0) then 
Say("Trang bÞ chç trèng ch­a ®ñ #.") 
elseif (CalcEquiproomItemCount(4, 507, 1, -1) >= 1 and 
ConsumeEquiproomItem(1, 4, 507, 1, -1) == 1) then 
AddItem(6, 1, 2622, 1, 0, 0) 
Msg2Player("Ng­¬i ®¹t ®­îc mét ngäc long anh hïng thiÕp .") 
end 
end 
