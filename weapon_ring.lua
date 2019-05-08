-- script viet hoa By http://tranhba.com  dïng cho giíi mÆt thùc hiÖn , dïng n¨m mãn vò khİ , bao hµm kim # méc # n­íc # löa # ®Êt ngò hµnh c¸c mét mãn , cã thÓ ®æi lÊy mét r¸c r­íi chiÕc nhÉn 
-- script viet hoa By http://tranhba.com designed by yangqi 
-- script viet hoa By http://tranhba.com written by renbin 

function weapon_ring() 

Say("GÇn nhÊt trªn giang hå chiÕc nhÉn kú thiÕu , ta còng nh©n c¬ héi ®i nhiÒu häc d¹ng thñ nghÖ , chØ cÇn ng­¬i chuÈn bŞ mét bé ngò hµnh lam thuéc tİnh ®İch vò khİ cïng 10 v¹n l­îng b¹c , ta lµ cã thÓ gióp ng­¬i ®æi ph¶i mét lam thuéc tİnh ®İch chiÕc nhÉn , h¬n n÷a mçi lÇn còng cã hiÖu qu¶ nga . xin hái ng­¬i ph¶i thay ®æi sao ? ",3,"Tèt , ta ®ang cÇn c¸ chiÕc nhÉn ®©y /exchange_weapon","Ta tr­íc mæ mét chót ®i /weapon_help","Tİnh / chän ®i , ta cã thËt lµ nhiÒu chiÕc nhÉn ®©y /no") 

end 

function exchange_weapon() 

GiveItemUI("Ngò hµnh vò khİ ®æi chiÕc nhÉn ","Ngµi cÇn chuÈn bŞ n¨m mãn vò khİ , chia ra lµm kim # méc # n­íc # löa # thæ hÖ , chØ cÇn c¸i nµy <color=blue> ngò hµnh ®Çy ®ñ hÕt <color> , h¬n n÷a ®Òu mang cã <color=blue> mµu xanh da trêi thuéc tİnh <color> , liÒn cã thÓ ®æi lÊy mét chiÕc nhÉn . <color=blue> vò khİ ®İch cÊp bËc cïng chñng lo¹i ®Òu kh«ng bŞ h¹n chÕ , mçi lÇn cÇn tèn hao 10 v¹n l­îng b¹c , tr¨m phÇn tr¨m tû lÖ thµnh c«ng . <color>", "weapon_ring_Confirm", "onCancel" ); 

end 

function weapon_ring_Confirm( nCount ) 

onSeries = {1,1,1,1,1} 
if ( nCount ~= 5 ) then -- script viet hoa By http://tranhba.com are there 5 weapons 
Say("Xin/mêi n÷a cÈn thËn kiÓm tra mét c¸i , ngµi cho ta vò khİ kh«ng phï hîp yªu cÇu nga ",0) 
return 0 
else 
for i = 1, nCount do 
local nItemIndex = GetGiveItemUnit( i ) -- script viet hoa By http://tranhba.com get itemindex 
ItemGenre, DetailType, ParticularType, Level, nSeries, Luck = GetItemProp(nItemIndex) 
magictype , p1, p2, p3 = GetItemMagicAttrib(nItemIndex, 1) -- script viet hoa By http://tranhba.com get magic attrib 
-- script viet hoa By http://tranhba.com  Msg2Player("nSeries = "..nSeries) 
-- script viet hoa By http://tranhba.com  Msg2Player("magictype = "..magictype) 
if ( ItemGenre ~= 0 ) then 
Say("Xin/mêi n÷a cÈn thËn kiÓm tra mét c¸i , ngµi cho ta vò khİ kh«ng phï hîp yªu cÇu nga ",0) 
return 0 
elseif ( DetailType ~= 0 and DetailType ~= 1) then -- script viet hoa By http://tranhba.com is it weapon 
Say("Xin/mêi n÷a cÈn thËn kiÓm tra mét c¸i , ngµi cho ta vò khİ kh«ng phï hîp yªu cÇu nga ",0) 
return 0 
elseif ( magictype == 0 ) then 
Say("Muèn ta bu«n b¸n nhiÒu n¨m , c¸i nµy b¹ch thuéc tİnh vò khİ còng muèn ngu dèt lÉn vµo v­ît qua kiÓm tra , kh«ng cã cöa #",0) 
return 0 
elseif ( nSeries < 0 and nSeries > 4 ) then -- script viet hoa By http://tranhba.com exception 
Say("Trang bŞ cña ng­¬i thËt kú qu¸i a # tr¶ l¹i cho ng­¬i tèt l¾m . ",0) 
return 0 
			elseif ( onSeries[nSeries + 1] == 0 ) then				-- script viet hoa By http://tranhba.com ÎåĞĞÊôĞÔÊÇ·ñÆëÈ«
Say("Xin/mêi n÷a cÈn thËn kiÓm tra mét c¸i , ngµi cho ta vò khİ ®İch ngò hµnh kh«ng ®Çy ®ñ hÕt nga ",0) 
return 0 
else 
				onSeries[nSeries + 1] = 0
end 
end 
onPay = 100000 
if ( GetCash() < onPay ) then 
Say("Kh«ng cã tiÒn kh«ng thÓ ®­îc , ng­¬i nh÷ng thø nµy r¸ch n¸t ®å ch¬i nh­ng ®æi kh«ng ®­îc chiÕc nhÉn cña ta ",0) 
return 0 
end 
for i = 1, nCount do 

nItemIndex = GetGiveItemUnit( i ) 
k = RemoveItemByIndex( nItemIndex ) 
if ( k ~= 1 ) then 
Say("ChuyÖn g× x¶y ra , ng­¬i lµm sao cã thÓ g¹t ta ®©y ? ",0) 
return 0 
end 

end 
Pay( onPay ) 
local _nSeed = SetRandSeed(234) -- script viet hoa By http://tranhba.com  cè ®Şnh chiÕc nhÉn 
AddItem(0,3,0,1,0,0,1,0,0,0,0,0) -- script viet hoa By http://tranhba.com  chiÕc nhÉn 
SetRandSeed(_nSeed) 
Say("D¹/õ # vËt cña ng­¬i qu¶ thËt kh«ng tÖ , ta nhËn , chiÕc nhÉn nµy sÏ lµ cña ng­¬i ",0) 

end 

end 

function weapon_help() 

Say("Ngµi cÇn chuÈn bŞ n¨m mãn vò khİ , chia ra lµm kim # méc # n­íc # löa # thæ hÖ , chØ cÇn ngò hµnh nµy ®Çy ®ñ hÕt , h¬n n÷a ®Òu mang cã mµu xanh da trêi thuéc tİnh , liÒn cã thÓ ®æi lÊy mét chiÕc nhÉn . vò khİ ®İch cÊp bËc cïng chñng lo¹i ®Òu kh«ng bŞ h¹n chÕ , mçi lÇn cÇn tèn hao 10 v¹n l­îng b¹c , tr¨m phÇn tr¨m tû lÖ thµnh c«ng . ",1,"Nga , ta hiÓu , c¸m ¬n #/no") 

end 


function no() 

end 
