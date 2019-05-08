-- script viet hoa By http://tranhba.com  chøc n¨ng # mµu tİm trang bŞ hÖ thèng - mµu tİm trang bŞ cïng hoµng kim trang bŞ chÕ t¹o 

Include( "\\script\\item\\compound\\compound_header.lua" );
Include( "\\script\\item\\compound\\atlas.lua" );
function onFoundry() 
Say("Thî rÌn # nÕu nh­ ®¹i hiÖp muèn mét th©n x­ng t©m ®İch trang bŞ , liÒn chuÈn bŞ ®Çy ®ñ tµi liÖu tíi t×m ta . ta cã thÓ gióp ngµi chÕ t¹o ra thİch hîp nhÊt ng­¬i vËt phÈm . ", 4,"B¾t ®Çu chÕ t¹o /onFoundryItem", " liªn quan tíi chÕ t¹o /onAbout","ChÕ t¹o tuÇn tra /onQueryPiece","Ta suy nghÜ l¹i mét chót /onCancel"); 
end 

-- script viet hoa By http://tranhba.com  b¾t ®Çu chÕ t¹o 
function onFoundryItem() 
if( isCompoundableToday() == 1 ) then 
FoundryItem(); 
else 
Say("Thî rÌn # l·o phu vèn ngµy ®· kiÖt søc , hiÖp sÜ cßn lµ ngµy mai trë l¹i chÕ t¹o trang bŞ ®i . ", 1,"H¶o , vËy ta c¸o tõ tr­íc /onCancel" ); 
end 
end 

function onQueryPiece() 
QueryPiece() 
end 
-- script viet hoa By http://tranhba.com  liªn quan tíi chÕ t¹o 
function onAbout() 
Talk( 3, "onAbout2","Dïng thuéc tİnh qu¸ng th¹ch , huyÒn tinh qu¸ng th¹ch , mµu tİm trang bŞ , hoµng kim ®å phæ chê ®Æc thï tµi liÖu , cã thÓ chÕ t¹o ra mµu tİm trang bŞ cïng víi hoµng kim trang bŞ . trang bŞ chÕ t¹o ph©n # ®Ò luyÖn # chÕ t¹o # lÊy ra # v©y quanh cïng ®å phæ 5 c¸ bé phËn . nÕu nh­ thu tËp ®ñ cÇn c¸c lo¹i tµi liÖu liÒn cã thÓ tíi chç cña ta chÕ t¹o liÔu . ", "<color=yellow> huyÒn tinh qu¸ng th¹ch <color># mét lo¹i ®Æc thï qu¸ng th¹ch , lÊy ra # chÕ t¹o # v©y quanh cïng dung hîp ®İch nhÊt ®Şnh ph¶i tµi liÖu mét trong , dïng ®Ó t¨ng lªn c¸c chÕ t¹o trong qu¸ tr×nh sinh thµnh vËt phÈm ®İch thuéc tİnh phÈm chÊt hoÆc lµ tû lÖ thµnh c«ng . céng 10 cÊp , cÊp bËc cµng cao , t¨ng lªn hiÖu qu¶ cµng tèt . ", "<color=yellow> thuéc tİnh qu¸ng th¹ch <color># dïng thuéc tİnh nguyªn má cïng ®èi øng vŞ trİ cã thuéc tİnh ®İch mµu xanh da trêi trang bŞ cïng nhau lÊy ra , cã nhÊt ®Şnh x¸c suÊt lÊy ®­îc nªn thuéc tİnh ®İch thuéc tİnh qu¸ng th¹ch . nÕu nh­ sö dông lµ thÇm thuéc tİnh nguyªn má , lµ mµu xanh da trêi trang bŞ ®İch ngò hµnh thuéc tİnh nhÊt ®Şnh ph¶i cïng thuéc tİnh nguyªn má ®İch ngò hµnh thuéc tİnh gièng nhau . thuéc tİnh qu¸ng th¹ch céng 10 cÊp , cÊp bËc cµng cao v©y quanh ra ngoµi thuéc tİnh trŞ sè liÒn cã thÓ cã thÓ cµng cao . " ); 
end 

function onAbout2() 
Talk( 2, "", "<color=yellow> mµu tİm trang bŞ <color># dïng mét mãn mµu xanh da trêi / mµu tr¾ng trang bŞ cïng mét viªn huyÒn tinh qu¸ng th¹ch cïng nhau chÕ t¹o , cã nhÊt ®Şnh x¸c suÊt lÊy ®­îc mét mãn mang cã 1~5 lÇn v©y quanh c¬ héi mµu tİm trang bŞ . trang bŞ ®İch nh÷ng kh¸c c¸c h¹ng thuéc tİnh cïng sö dông tµi liÖu trang bŞ gièng nhau . ", "<color=yellow> hoµng kim ®å phæ <color># mçi mãn hoµng kim trang bŞ ®Òu cã mét tê ®èi øng hoµng kim ®å phæ , dùa theo ®å phæ th­îng viÕt râ ®İch yªu cÇu t×m ®ñ tÊt c¶ tµi liÖu , th× cã nhÊt ®Şnh x¸c suÊt cã thÓ dung hîp ra nªn mãn hoµng kim trang bŞ . " ); 
end 

-- script viet hoa By http://tranhba.com  hñy bá 
function onCancel() 
end
