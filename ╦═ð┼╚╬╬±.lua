-- script viet hoa By http://tranhba.com  ®­a tin nhiÖm vô .lua ( ®­a tin nhiÖm vô chñ v¨n kiÖn ) 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-12-08) 

-- script viet hoa By http://tranhba.com  c¸c cÊp bËc ®ång b¹n kŞch t×nh nhiÖm vô thËt thÓ xö lı v¨n kiÖn 
Include ("\\script\\task\\partner\\master\\partner_master_main.lua");

Include("\\script\\task\\tollgate\\killbosshead.lua")
Include("\\script\\task\\tollgate\\messenger\\posthouse.lua")


Define_City = {"<#> tr­íc khi an ","<#> ph­îng t­êng ","<#> thµnh ®« ","<#> §¹i Lı ","<#> biÖn kinh ","<#> t­¬ng d­¬ng ","<#> D­¬ng Ch©u "} 

function default_talk(letter_laststation) 

local nParTaskState = GetMasterTaskState(PARID_TASK_MASTER_002); 
local aryTalk = {"<dec><npc> chuyÖn trªn giang hå ta bÊt kÓ , tr­íc m¾t thêi cuéc lung tung , triÒu ®×nh m×nh còng cã thËt nhiÒu phiÒn to¸i muèn gi¶i quyÕt a . "}; 

if nParTaskState==nil then nParTaskState = 0; end; 

-- script viet hoa By http://tranhba.com tinsert(aryTalk, ); 

-- script viet hoa By http://tranhba.com T cao #ng t v·n h n#g t v·n s? - Modified by DinhHQ - 20110427 
tinsert(aryTalk,"Ta muèn v× triÒu ®×nh ra chót lùc /especiallymessenger"); 
tinsert(aryTalk,"Ta ch¼ng qua lµ tíi tïy tiÖn chuyÓn chuyÓn /no"); 

CreateTaskSay(aryTalk); 

end 

function lastdefault_talk(letter_station) 
Uworld12 = GetTask(12) 
if (Uworld12 == 0) then -- script viet hoa By http://tranhba.com  tïy thêi cã thÓ b¾t ®Çu nhiÖm vô # tr­íc kia ch­a bao giê lµm # 
W12_get(letter_station) 
elseif (Uworld12 < 256) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung 
check_letter(letter_station) 
elseif (GetGameTime() >= Uworld12) then -- script viet hoa By http://tranhba.com  ®· v­ît qua t¸i diÔn thêi gian h¹n chÕ , cho phĞp lÇn n÷a tiÕn hµnh nhiÖm vô # t¹m thêi sö dông ë tuyÕn thêi gian # 
W12_get(letter_station) 
else -- script viet hoa By http://tranhba.com  chê ®îi t¸i diÔn tiÕn hµnh nhiÖm vô trung 
Talk(1,"","DŞch quan # b©y giê t¹m thêi kh«ng cã phong th¬ cÇn ng­¬i gióp mét tay , qu¸ mét ®o¹n thêi gian trë l¹i xem mét chót ®i . ") 
end 
end 

function W12_get(start_city) 
dest_city = random(1,7) -- script viet hoa By http://tranhba.com  b©y giê lµ 7 c¸ thµnh phè 
if (dest_city == start_city) then -- script viet hoa By http://tranhba.com  kh«ng cho phĞp ®­a tin ®İch nguyªn thµnh phè cïng môc tiªu thµnh phè t¸i diÔn 
Talk(1,"","DŞch quan # b©y giê t¹m thêi kh«ng cã phong th¬ cÇn ng­¬i gióp mét tay , qu¸ mét ®o¹n thêi gian trë l¹i xem mét chót ®i . ") 
else 
		SetTaskTemp(3,start_city*10+dest_city)		-- script viet hoa By http://tranhba.com  Ê®Î»ÊıÎªÆğÊ¼µØ£¬¸öÎ»ÊıÎªÄ¿±êµØ
Say("DŞch quan # h«m nay chiÕn sù tÇn tÇn , c«ng v¨n phån ®a , dŞch tr¹m trong ®­a tin ng­êi cña tay kh«ng ®ñ , ng­¬i nguyÖn ı gióp mét tay ®­a tin sao ? mçi lÇn ®­a tin còng cã thï ng©n ®İch . ",2,"NguyÖn ı /W12_get_yes","Kh«ng muèn /no") 
end 
end 

function check_letter(get_city) 
x = GetTask(12) 
dest_city = mod(x,10) 
start_city = (x - dest_city) / 10 -- script viet hoa By http://tranhba.com  h¼n nhÊt ®Şnh cã thÓ c¶ trõ 
if (dest_city == get_city) then -- script viet hoa By http://tranhba.com  môc tiªu thµnh phè 
		if (HaveItem(231+x) == 1) then			-- script viet hoa By http://tranhba.com  ÓĞĞÅº¯ÄÜ¶ÔÓ¦ÉÏ£¬ÈÎÎñÍê³É
Talk(1,"","<#> dŞch quan # nhËn ®­îc "..Define_City[start_city].."<#> ph¸t tíi tİn hµm mét phong , nghiÖm chøng kh«ng cã lÇm . ®©y lµ ng­¬i ®İch t¹ lÔ 500 hai . ") 
			DelItem(231+x)
			SetTask(12,GetGameTime()+7200)				-- script viet hoa By http://tranhba.com  Á½Ğ¡Ê±£¨7200Ãë£©ºó¿ÉÖØ¸´×öÈÎÎñ
i = random(1,10) -- script viet hoa By http://tranhba.com  ngÉu nhiªn cho danh väng t­ëng th­ëng 
AddRepute(i) 
Msg2Player("<#> thµnh c«ng ®em tİn hµm ®­a ®Õn môc ®İch dŞch tr¹m , nhiÖm vô hoµn thµnh . ng­¬i danh väng t¨ng lªn "..i.."<#> ®iÓm . ") 
AddNote("Thµnh c«ng ®em tİn hµm ®­a ®Õn môc ®İch dŞch tr¹m , nhiÖm vô hoµn thµnh . ") 
Earn(500) 
else -- script viet hoa By http://tranhba.com  tİn hµm mÊt , hñy bá nhiÖm vô 
Say("DŞch quan # ng­¬i ®em träng yÕu nh­ vËy ®İch c«ng hµm vøt bá ? lÇn nµy nh­ng phiÒn to¸i . hoÆc lµ , ®ãng 2000 l­îng b¹c ta gióp ng­¬i ®em chuyÖn nµy che giÊu ®­îc ®i . ",2,"Giao tiÒn /W12_cancel","Ta t×m mét chót /no") 
end 
elseif (start_city == get_city) then -- script viet hoa By http://tranhba.com  lóc ®Çu thµnh phè 
		if (HaveItem(231+x) == 0) then			-- script viet hoa By http://tranhba.com  ĞÅº¯¶ªÊ§£¬È¡ÏûÈÎÎñ
Say("DŞch quan # ng­¬i ®em träng yÕu nh­ vËy ®İch c«ng hµm vøt bá ? lÇn nµy nh­ng phiÒn to¸i . hoÆc lµ , ®ãng 2000 l­îng b¹c ta gióp ng­¬i ®em chuyÖn nµy che giÊu ®­îc ®i . ",2,"Giao tiÒn /W12_cancel","Ta t×m mét chót /no") 
else 
Talk(1,"","DŞch quan # ®©y lµ khÈn cÊp c«ng v¨n , lµm phiÒn ng­¬i nhanh mét chót ®­a ®i . ") 
end 
else -- script viet hoa By http://tranhba.com  kú tha t×nh huèng # nhiÖm vô kh«ng hoµn thµnh # 
Talk(1,"","<#> dŞch quan # ng­¬i phong th­ nµy hµm kh«ng ph¶i lµ ®­a ®Õn n¬i nµy , ng­¬i h¼n ®­a ®Õn "..Define_City[dest_city].."<#> ®i . ") 
end 
end 

function W12_cancel() 
if (GetCash() >= 2000) then 
Pay(2000) 
SetTask(12,0) 
Msg2Player("Ng­¬i ®­a tin nhiÖm vô bŞ hñy bá . ") 
AddNote("Ng­¬i ®­a tin nhiÖm vô bŞ hñy bá . ") 
Talk(1,"","DŞch quan # lÇn nµy cø tİnh nh­ thÕ , sau nµy ng­¬i còng nªn cÈn thËn a #") 
else 
Talk(1,"","DŞch quan # ngay c¶ 2000 hai ®Òu kh«ng cã ? ng­¬i thÕ nµo nghÌo nh­ vËy a . cã tiÒn tíi t×m ta n÷a ®i #") 
end 
end 

function W12_get_yes() 
x = GetTaskTemp(3) 
dest_city = mod(x,10) 
start_city = (x - dest_city) / 10 -- script viet hoa By http://tranhba.com  h¼n nhÊt ®Şnh cã thÓ c¶ trõ 
Talk(1,"","<#> dŞch quan # xin gióp ta ®em phong th­ nµy hµm ®­a ®Õn "..Define_City[dest_city].."<#> , b¸i th¸c . ") 
Msg2Player(Define_City[start_city].."<#> dŞch quan mêi/xin ng­¬i gióp h¾n ®em mét phong hµm mãn ®­a ®Õn "..Define_City[dest_city].."<#> ®i . ") 
AddNote("<#> nhËn ®­îc ®­a tin nhiÖm vô # xin/mêi ®em mét phong hµm mãn tõ "..Define_City[start_city].."<#> ®­a ®Õn "..Define_City[dest_city].." . ") 
SetTask(12,x) 
	AddEventItem(231+x)		-- script viet hoa By http://tranhba.com  ĞÅº¯´Ó242¿ªÊ¼£¬³ÇÊĞ´Ó1¿ªÊ¼
end 

function no() 
end 
