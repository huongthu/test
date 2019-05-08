if (not __GOVERM_SOLDIER_H__) then 
__GOVERM_SOLDIER_H__ = 1; 
Include("\\script\\missions\\springfestival\\dialog.lua");

function gsoldier_entance() 
local aryszContent = { " t×m kiÕm nh÷ng kh¸c tin tøc /main_former", 
" ta gÇn nhÊt b©y giê rÊt bËn rén , ng­¬i t×m ng­êi kh¸c ®i . /OnCancel"}; 

if (sf06_isactive() == 1) then 
tinsert(aryszContent, 1,"Mïa xu©n ho¹t ®éng /sf06_mainentrance"); 
end; 

if (getn(aryszContent) > 2) then 
Say("<color=yellow> nha m«n vÖ binh <color># th¸ng minh tinh khª , « th­íc bay vÒ phİa nam . quèc gia chİnh lµ dïng ng­êi chi tÕ , ta xem ng­¬i còng lµ häc vâ ng­êi , cã thÓ gióp chuyÖn sao ? ", getn(aryszContent), aryszContent); 
else 
main_former(); 
end; 

end; 

function OnCancel() 

end; 
end; -- script viet hoa By http://tranhba.com // end of __GOVERM_SOLDIER_H__
