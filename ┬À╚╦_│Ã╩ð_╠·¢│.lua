-- script viet hoa By http://tranhba.com  thµnh phè thî rÌn c«ng céng nhËp khÈu 
-- script viet hoa By http://tranhba.com by liªu chÝ s¬n 

if (not __H_CHAT_CITY_SMITH__) then 
__H_CHAT_CITY_SMITH__ = 1; 


function main(sel) 
local tab_Content = { 
" ta muèn mua mét Ýt binh khÝ /tj_default_chat", -- script viet hoa By http://tranhba.com  nguyªn thî rÌn chøc n¨ng nhËp khÈu 
" hñy bá /oncancel", 
}; 

-- script viet hoa By http://tranhba.com  nÕu nh­ ho¹t ®éng thêi gian , c¾m vµo ho¹t ®éng ®èi tho¹i , trë xuèng gi¬ lÖ 
-- script viet hoa By http://tranhba.com  if (isEventDay() ==1) then 
-- script viet hoa By http://tranhba.com  tinsert(tab_Content,1,"Tham gia ho¹t ®éng /onEventMain"); 
-- script viet hoa By http://tranhba.com  end; 

if (getn(tab_Content) > 2) then -- script viet hoa By http://tranhba.com  nÕu nh­ cã ho¹t ®éng c¾m vµo ®èi tho¹i 

Say("Thî rÌn # kh¸ch quan t×m ta cã chuyÖn g× kh«ng ? ", getn(tab_Content), tab_Content); 

else -- script viet hoa By http://tranhba.com  kh«ng cã ho¹t ®éng trùc tiÕp tiÕn vµo nguyªn ®èi tho¹i 

tj_default_chat(); 

end; 
end; 

function oncancel() 
end; 

end; -- script viet hoa By http://tranhba.com // end of __H_CHAT_CITY_SMITH__;
