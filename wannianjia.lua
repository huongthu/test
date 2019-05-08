Include("\\script\\event\\pingzi\\200805\\pingzi.lua");	-- script viet hoa By http://tranhba.com  Æ´×ÖÓÎÏ·
Include("\\script\\event\\young_hero\\hero.lua");		-- script viet hoa By http://tranhba.com  ÉÙÄêÓ¢ĞÛ
Include("\\script\\task\\system\\task_string.lua");
function main() 
wannianjia_main(); 
end 


function wannianjia_main() 
local nDateH = tonumber(GetLocalDate("%Y%m%d%H")); 
local tbSay = 
{ 
"<dec><npc> vâ l©m truyÒn kú ®· ®Õn thø ba tuæi , chóc quèc th¸i d©n an , gia gia h¹nh phóc , ng­êi ng­êi Êm no . ®¹i hiÖp cã hay kh«ng cÇn g× ®©y ? ", 
} 
if pingzi0805:IsActTime() then 
tinsert(tbSay,"Ta muèn tiÕn hµnh hîp thµnh ch÷ /#pingzi0805:main()"); 
end 
if (nDateH >= hero_nDate_S and nDateH <= hero_nDate_E) then 
tinsert(tbSay,"Ta muèn tham gia thiÕu niªn anh hïng ho¹t ®éng /#here_main()"); 
end 
tinsert(tbSay,"HiÓu râ ®æi lÊy t­ëng th­ëng ph­¬ng ph¸p /wannianjia_Detailed"); 
tinsert(tbSay,"Ta chê mét chót trë l¹i /OnCancel"); 
CreateTaskSay(tbSay); 
end 
-- script viet hoa By http://tranhba.com  hiÓu râ ®æi t­ëng th­ëng 
function wannianjia_Detailed(nStep) 
local tbSay = 
{ 
"<dec><npc> cã hai ®¹i ho¹t ®éng , ®¹i hiÖp muèn biÕt c¸i nµo ho¹t ®éng ? ", 
" hiÓu râ hîp thµnh ch÷ ho¹t ®éng #pingzi0805:Detailed()", 
" hiÓu râ thiÕu niªn anh hïng ho¹t ®éng /#hero_intruduction()", 
" trë vÒ /wannianjia_main" 
} 

CreateTaskSay(tbSay); 
end 


function OnCancel() 

end
