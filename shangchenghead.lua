-- script viet hoa By http://tranhba.com  trß ch¬i thêi gian 
FRAME2TIME = 18; -- script viet hoa By http://tranhba.com  18 trinh t­¬ng ®­¬ng víi trong trß ch¬i 1 gi©y 
-- script viet hoa By http://tranhba.com  th­ëng thiÖn lµm t­ëng th­ëng , thêi gian bao l©u bªn trong gÊp ®«i kinh nghiÖm 
AEXP_ADWARD_TIME = 4 

-- script viet hoa By http://tranhba.com  ghi chÐp tr­íc mÆt v¨n kiÖn c¸c thµnh phè th­ëng thiÖn lµm ®Ých tab v¨n kiÖn 
-- script viet hoa By http://tranhba.com windows phÝa d­íi 
-- script viet hoa By http://tranhba.com CITYPRIZETABFILENAME = "data\\cityprize.txt" 
-- script viet hoa By http://tranhba.com Linux phÝa d­íi 
CITYPRIZETABFILENAME = "data//cityprize.txt" 

AEXP_LOAD = 0 

-- script viet hoa By http://tranhba.com  th­ëng thiÖn lµm 
AEXP_AWARDMEDIAL_NGENTYPE = 6; 
AEXP_AWARDMEDIAL_DETAILTYPE = 1; 
AEXP_AWARDMEDIAL_PARTYPE = 197; 

-- script viet hoa By http://tranhba.com  ph¹t ¸c lµm 
AEXP_PUNISHMEDIAL_NGENTYPE = 6; 
AEXP_PUNISHMEDIAL_DETAILTYPE = 1; 
AEXP_PUNISHMEDIAL_PARTYPE = 198; 

-- script viet hoa By http://tranhba.com  cã thÓ dÉn t­ëng kÐo dµi ngµy ®Õm 
AEXP_ADWARD_HOURNUM = 24 
-- script viet hoa By http://tranhba.com  b¾t ®Çu t­ëng th­ëng ®Ých lín nhÊt trÞ gi¸ 
AEXP_MAXADWARDNUM = 9999 

-- script viet hoa By http://tranhba.com  toµn côc nhiÖm vô thay ®æi l­îng ( thµnh phè th­ëng thiÖn lµm sè l­îng ) 
AEXP_GLOBAL_FENGXIANG = 20 
AEXP_GLOBAL_CHNEGDU = 21 
AEXP_GLOBAL_DALI = 22 
AEXP_GLOBAL_BIANJING = 23 
AEXP_GLOBAL_XIANGYANG = 24 
AEXP_GLOBAL_YANGZHOU = 25 
AEXP_GLOBAL_LINAN = 26 
-- script viet hoa By http://tranhba.com  tr­íc mÆt khai t­ëng thµnh phè 
AEXP_GLOBAL_ADWARD_CITY = 27 
-- script viet hoa By http://tranhba.com  khai t­ëng cuèi cïng nhËt kú 
AEXP_GLOBAL_ENDDATE = 28 
-- script viet hoa By http://tranhba.com  cã hay kh«ng thªm t¸i qu¸ tån m©m v¨n kiÖn 
AEXP_BLNLOADFILE = 29 


-- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng 
AEXP_TASK_ADWARDDATE = 606 -- script viet hoa By http://tranhba.com  tån tr÷ nhµ ch¬i dÉn t­ëng nhËt kú 
AEXP_PLAYERTONG_LIMIT = 1 -- script viet hoa By http://tranhba.com  nhµ ch¬i vµo gióp thêi gian nhÊt ®Þnh ph¶i lín h¬n nªn trÞ gi¸ , míi cã thÓ nhËn lÊy phÇn th­ëng . ®¬n vÞ lµ trêi ®Õm ( cïng ch©n vèn t­¬ng ®èi lóc xin chó ý ) 

-- script viet hoa By http://tranhba.com  thµnh phè cïng toµn côc thay ®æi l­îng ®Ých ®èi øng biÓu 
arraycitytoglobalvalue = 
{ 
AEXP_GLOBAL_FENGXIANG, 
AEXP_GLOBAL_CHNEGDU, 
AEXP_GLOBAL_DALI, 
AEXP_GLOBAL_BIANJING, 
AEXP_GLOBAL_XIANGYANG, 
AEXP_GLOBAL_YANGZHOU, 
AEXP_GLOBAL_LINAN, 
}; 

-- script viet hoa By http://tranhba.com  thµnh phè t¸c dÉn cïng thµnh phè tªn ®èi øng biÓu 
arraycityindextoname = 
{ 
" ph­îng t­êng ", 
" thµnh ®« ", 
" §¹i Lý ", 
" biÖn kinh ", 
" t­¬ng d­¬ng ", 
" D­¬ng Ch©u ", 
" tr­íc khi an ", 
}; 

-- script viet hoa By http://tranhba.com  mÖt mái kÕ lín h¬n mét trÞ gi¸ lóc tån m©m 
AEXP_ADDMAX_SAVE = 1000 
-- script viet hoa By http://tranhba.com  mÖt mái kÕ Ýt h¬n mét trÞ gi¸ lóc tån m©m 
AEXP_REDUCEMAX_SAVE = 1000 

function loadsavevalue() 
blnLoad = GetGlbValue(AEXP_BLNLOADFILE) 
if (blnLoad == nil or blnLoad == 0) then 
SetGlbValue(AEXP_BLNLOADFILE, 1) 

handle = openfile(CITYPRIZETABFILENAME, "r") 
if (handle == nil) then 
return 
end 

for nIndex=AEXP_GLOBAL_FENGXIANG, AEXP_GLOBAL_ENDDATE do 
nValue = read(handle, "*l") 
if (nValue == nil or nValue == "") then 
nValue = 0 
else 
nValue = tonumber(nValue) 
end 

SetGlbValue(nIndex, nValue) 
end 

closefile(handle) 
end 
end 

-- script viet hoa By http://tranhba.com  v× phßng ngõa seek t×m kiÕm file bÞ lçi , h¬n n÷a tr­íc m¾t sö dông sè liÖu Ýt , tån m©m lóc thanh trõ v¨n kiÖn lÇn n÷a viÕt mét míi v¨n kiÖn 
function savevalue() 
	handle = openfile(CITYPRIZETABFILENAME, "w+")
if (handle == nil) then 
return 0 
end 

for nIndex=AEXP_GLOBAL_FENGXIANG, AEXP_GLOBAL_ENDDATE do 
local nValue = GetGlbValue(nIndex) 
write(handle, nValue.."\n") 
end 

closefile(handle) 
end 
