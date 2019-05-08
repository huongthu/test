Include("\\script\\lib\\common.lua")
Include("\\script\\global\\rename_head.lua")

-- script viet hoa By http://tranhba.com  ho¹t ®éng ®Şnh nghÜa 
EVENTS_TB = { 
-- script viet hoa By http://tranhba.com  { 
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  biÓu hiÖn ho¹t ®éng ®iÒu kiÖn 
-- script viet hoa By http://tranhba.com  ndate = {051101, 051131}, -- script viet hoa By http://tranhba.com  khëi chØ nhËt kú , cã thÓ chän 
-- script viet hoa By http://tranhba.com  ntime = {2000, 2359}, -- script viet hoa By http://tranhba.com  khëi chØ thêi gian , cã thÓ chän 
-- script viet hoa By http://tranhba.com  level = {1, 200}, -- script viet hoa By http://tranhba.com  khëi chØ cÊp bËc , cã thÓ chän 
-- script viet hoa By http://tranhba.com  taskequal = {taskid, taskvalue}, -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng t­¬ng ®¼ng , cã thÓ chän 
-- script viet hoa By http://tranhba.com  tasknot = {taskid, taskvalue}, -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng kh«ng ®îi , cã thÓ chän 
-- script viet hoa By http://tranhba.com  checkfunc = func -- script viet hoa By http://tranhba.com  kiÓm tr¾c hµm sè , cã thÓ chän . hµm sè trë vÒ nil bµy tá kh«ng xóc ph¸t , nÕu kh«ng xóc ph¸t 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  ho¹t ®éng miªu t¶ 
-- script viet hoa By http://tranhba.com  name = " mét mét ho¹t ®éng ", -- script viet hoa By http://tranhba.com  ho¹t ®éng tªn , tÊt cÇn 
-- script viet hoa By http://tranhba.com  describe = " nãi ®¬n gi¶n minh v¨n ch÷ ", -- script viet hoa By http://tranhba.com  ho¹t ®éng nãi râ , còng cã thÓ dïng mét hµm sè trë vÒ tù phï chuçi , cã thÓ chän 
-- script viet hoa By http://tranhba.com  detail = 
-- script viet hoa By http://tranhba.com [[## n¬i nµy cã thÓ viÕt rÊt nhiÒu ch÷ viÕt , cÆn kÏ miªu t¶ ng­¬i ho¹t ®éng . 
-- script viet hoa By http://tranhba.com ## ph­¬ng qu¸t sè ®İch h×nh thøc cã thÓ tù do ®æi ®­îc . 
-- script viet hoa By http://tranhba.com ## còng cã thÓ dïng mét hµm sè trë vÒ tù phï chuçi ]], -- script viet hoa By http://tranhba.com  ho¹t ®éng t­êng t×nh , cã thÓ chän \___ hai ng­êi chØ cã thÓ chän thø nhÊt 
-- script viet hoa By http://tranhba.com  callback = nil, -- script viet hoa By http://tranhba.com  trë vÒ ®iÒu hµm sè , cã thÓ chän / 
-- script viet hoa By http://tranhba.com  link = nil, -- script viet hoa By http://tranhba.com Describe ®èi tho¹i link tin tøc , cã thÓ chän # sö dông detail lóc h÷u hiÖu # 
-- script viet hoa By http://tranhba.com  }, 
{ 
ndate = {070414,070424}, 
name = "3 th¸ng 3 ngµy ", 
describe = " tõ <color=yellow>14/4/2007<color> ®Õn <color=yellow>24/4/2007<color>, ®ang ho¹t ®éng thêi gian bªn trong , tÊt c¶ ®ang ®¸nh tr¸ch luyÖn c«ng trong qu¸ tr×nh ®İch nhµ ch¬i ®em cã c¬ héi nhÆt ®­îc <color=yellow> hµng hãa ®¹i <color>. cÇm hµng hãa ®¹i cïng ng©n l­îng ®Õn c¸c thµnh phè NPC th­¬ng phiÕn chç ®æi lÊy <color=yellow> nguyªn liÖu chøa ®ùng tói <color>.", 
}, 
{ -- script viet hoa By http://tranhba.com 3 cÊp tr­íc kia long n¨m nhiÖm vô s¬ nhËp 
level = {1, 3}, 
tasknot = {1014, 2}, 
name = "Ta ®Õn nhËn nhiÖm vô s¬ nhËp ", 
describe = " GÆp Long Ngò ë c¸c th«n dÓ nhËn nhiÖm vô ", 
callback = Uworld1000_word, 
}, 
{ -- script viet hoa By http://tranhba.com  vâ l©m liªn cuéc so tµi —— t©n tó 
level = {80, 119}, 
name = "Vâ l©m liªn ®Êu so tµi , vâ l©m liªn ®Êu so tµi ' vâ l©m t©n tó '", 
describe = " CÊp ®é cao cã thÓ dÕn Quan Viªn Liªn §Êu ghi danh ®Ó so tµi .", 
detail = 
[[ vâ l©m liªn cuéc so tµi ®ang ®øng ë chuÈn bŞ giai ®o¹n , cÊp bËc cña ng­¬i cã thÓ tham gia <color=yellow> vâ l©m liªn doanh <color>. 
liªn cuéc so tµi vŞ trİ : <color=yellow> biÖn kinh (222, 191)<color>, <color=yellow> tr­íc khi an (182, 204)<color>.]], 
}, 
{ -- script viet hoa By http://tranhba.com  vâ l©m liªn cuéc so tµi —— cao cÊp 
level = {120, 200}, 
name = "Vâ l©m liªn ®Êu so tµi , vâ l©m liªn ®Êu so tµi ' vâ l©m t©n tó '", 
describe = " CÊp ®é cao cã thÓ dÕn Quan Viªn Liªn §Êu ghi danh ®Ó so tµi .", 
detail = 
[[ vâ l©m liªn cuéc so tµi ®ang ®øng ë chuÈn bŞ giai ®o¹n , cÊp bËc cña ng­¬i cã thÓ tham gia <color=yellow> vâ l©m liªn doanh <color>. 
liªn cuéc so tµi vŞ trİ <color=yellow> §¹i Lı (200, 197)<color>, <color=yellow> D­¬ng Ch©u (219, 190)<color>.]], 
}, 
{ -- script viet hoa By http://tranhba.com  huy hoµng chi ®ªm 
name = "§ªm Huy Hoµng ", 
describe = " Sù kiÖn §ªm Huy Hoµng diÔn ra vµo lóc 7 giê 30 phót mçi tèi trong tuÇn . ", 
detail = 
[[ tr­íc m¾t lµ giã ®iÒu m­a thuËn thêi gian , v× thŞnh t×nh ®¸p t¹ giang hå vâ l©m nh©n sÜ , minh chñ vâ l©m truyÒn nh©n cö hµnh ' huy hoµng ®ªm ' ho¹t ®éng . ho¹t ®éng tõ mçi ngµy 19 ®iÓm 30 t¸ch ra míi , mçi lÇn ho¹t ®éng 30 phót . cô thÓ néi dung cã thÓ ®i t×m lÔ quan mæ .]], 
}, 

-- script viet hoa By http://tranhba.com  { 
-- script viet hoa By http://tranhba.com  name = "<#> vai trß ®æi tªn ", 
-- script viet hoa By http://tranhba.com  describe = "<#> bëi v× ë còng dïng/uèng trong qu¸ tr×nh , ngµi ®İch vai trß tªn thay v× h¾n nhµ ch¬i ®İch vai trß tªn xuÊt hiÖn nÆng tªn t×nh huèng , v× vËy hÖ thèng ®· gióp ngµi tù ®éng h¬n tªn , nÕu nh­ ngµi cÇn lÇn n÷a söa ®æi vai trß tªn lêi cña , mêi ®­îc c¸c tay míi th«n ®İch tay míi phæ biÕn réng r·i viªn chç lùa chän söa ®æi vai trß tªn . ngµi chØ cã thÓ söa ®æi mét lÇn vai trß tªn , cho nªn xin/mêi cÈn thËn ®äc t­¬ng øng nãi râ . ", 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  { 
-- script viet hoa By http://tranhba.com  name = "<#> bang héi ®æi tªn ", 
-- script viet hoa By http://tranhba.com  describe = " bëi v× ë còng dïng/uèng trong qu¸ tr×nh , ngµi chç ë bang héi , bang héi tªn thay v× h¾n bang héi tªn xuÊt hiÖn nÆng tªn t×nh huèng , v× vËy hÖ thèng ®· gióp ngµi chç ë bang héi tù ®éng h¬n tªn , nÕu nh­ bang chñ cÇn lÇn n÷a söa ®æi bang héi tªn lêi cña , mêi ®­îc c¸c tay míi th«n ®İch tay míi phæ biÕn réng r·i viªn chç lùa chän söa ®æi bang héi tªn . bang chñ chØ cã thÓ söa ®æi mét lÇn bang héi tªn , cho nªn xin/mêi cÈn thËn ®äc t­¬ng øng nãi râ . ", 
-- script viet hoa By http://tranhba.com  }, 
} 

EVENT_HINT_LINK = "<link=image[0,1]:\\spr\\npcres\\enemy\\enemy060\\enemy060_st.spr> gÇn nhÊt ®İch ho¹t ®éng an bµi :<link>" 
EVENT_HINT_TIMES = 3 -- script viet hoa By http://tranhba.com  mçi ngµy th­îng tuyÕn ®Ò kú sè lÇn 

-- script viet hoa By http://tranhba.com  nÕu nh­ cã gi¸c phøc t¹p ho¹t ®éng cÇn tù ®Şnh nghÜa mét İt hµm sè . xin/mêi t¹i h¹ mÆt Include , còng sö dông # 
-- script viet hoa By http://tranhba.com 	if EVENTS_TB then EVENTS_TB[getn(EVENTS_TB)+1] = {¡­¡­} end
-- script viet hoa By http://tranhba.com  ®İch ph­¬ng thøc t¨ng thªm 
-- script viet hoa By http://tranhba.com ================================================================= 
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
Include("\\script\\event\\great_night\\huangzhizhang\\event.lua")
-- script viet hoa By http://tranhba.com ================================================================= 

-- script viet hoa By http://tranhba.com  ®¨ng lôc lóc ®iÒu dông ®İch hµm sè 
function event_hint_login(bExchangeIn) 
-- script viet hoa By http://tranhba.com  nh¶y qua dïng/uèng tíi ®­îc còng kh«ng cÇn nh¾c l¹i kú liÔu 
if (bExchangeIn == 1) then 
return 
end 
local n_date = tonumber(GetLocalDate("%y%m%d")); 
local n_time = tonumber(GetLocalDate("%H%M")); 
local n_times; 
if (GetTask(2308) ~= n_date) then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ h«m nay ®¨ng lôc ®İch 
SetTask(2308, n_date); 
SetTask(2309, 0); 
n_times = 0; 
else 
n_times = GetTask(2309); 
end 
if (n_times >= EVENT_HINT_TIMES) then -- script viet hoa By http://tranhba.com  ®· ®¹t tíi ®Ò kú sè lÇn , kh«ng hÒ n÷a ®Ò kú 
return 
end 

local n_level = GetLevel(); 
local tb = {}; 
for i = 1, getn(EVENTS_TB) do 
if event_hint_check(EVENTS_TB[i], n_date, n_time, n_level) then -- script viet hoa By http://tranhba.com  phï hîp ®iÒu kiÖn 
			tb[getn(tb)+1] = i;
end 
end 
if (getn(tb) == 1) then -- script viet hoa By http://tranhba.com  chØ cã mét ho¹t ®éng , trùc tiÕp biÓu hiÖn t­êng t×nh 
event_show_detail(tb, 1); 
elseif (getn(tb) > 0) then -- script viet hoa By http://tranhba.com  nhiÒu ho¹t ®éng 
event_show_all(tb); 
end 

	SetTask(2309, n_times + 1)

bingfu_hint() -- script viet hoa By http://tranhba.com  còng dïng/uèng h¬n tªn , t¹m thêi t¨ng thªm ®İch cao ­u tiªn cÊp th­îng tuyÕn ®Ò kú , kh«ng thuéc vÒ quy ph¹m ®İch sö dông 
end 

-- script viet hoa By http://tranhba.com  kiÓm tra mét ho¹t ®éng cã hay kh«ng cÇn th«ng b¸o tr­íc mÆt nhµ ch¬i 
function event_hint_check(tb_event, n_date, n_time, n_level) 
local tb = tb_event.ndate; 
if (tb) then -- script viet hoa By http://tranhba.com  h¹n ®Şnh nhËt kú 
if (n_date < tb[1] or n_date > tb[2]) then -- script viet hoa By http://tranhba.com  nhËt kú kh«ng hîp 
return 
end 
end 
tb = tb_event.ntime; 
if (tb) then -- script viet hoa By http://tranhba.com  h¹n ®Şnh thêi gian 
if (n_time < tb[1] or n_time > tb[2]) then -- script viet hoa By http://tranhba.com  nhËt kú kh«ng hîp 
return 
end 
end 
tb = tb_event.level; 
if (tb) then -- script viet hoa By http://tranhba.com  h¹n ®Şnh cÊp bËc 
if (n_level < tb[1] or n_level > tb[2]) then -- script viet hoa By http://tranhba.com  cÊp bËc kh«ng hîp 
return 
end 
end 
tb = tb_event.taskequal 
if (tb) then -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng t­¬ng ®¼ng 
if (GetTask(tb[1]) ~= tb[2]) then 
return 
end 
end 
tb = tb_event.tasknot 
if (tb) then -- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng kh«ng ®îi 
if (GetTask(tb[1]) == tb[2]) then 
return 
end 
end 
local func = tb_event.checkfunc 
if (func) then -- script viet hoa By http://tranhba.com  hµm sè ph¸n ®o¸n 
if (not func()) then 
return 
end 
end 
return 1 
end 

-- script viet hoa By http://tranhba.com  biÓu hiÖn tÊt c¶ ho¹t ®éng 
function event_show_all(tb) 
local str = "<enter>"; 
local tb_option = {}; 
for i = 1, getn(tb) do 
local tb_event = EVENTS_TB[tb[i]]; 
str = str .. "<color=red>" .. tb_event.name .. "<color><enter>"; 
if (tb_event.describe) then 
local str_des 
if (type(tb_event.describe) == "function") then 
str_des = tb_event.describe() 
else 
str_des = tostring(tb_event.describe) 
end 
str = str .. " " .. str_des .. "<color><enter>"; 
end 
if (tb_event.detail or tb_event.callback) then 
			tb_option[getn(tb_option)+1] = tb_event.name.."Xem chi tiÕt/#event_show_detail({"..join(tb).."},"..i..")";
end 
end 
	tb_option[getn(tb_option)+1] = "Ngµy h«m nay, kh«ng nh¾c nhë t«i n÷a/event_hint_stop";
	tb_option[getn(tb_option)+1] = "T«i biÕt!/no";
Describe(EVENT_HINT_LINK..str, getn(tb_option), tb_option); 
end 

-- script viet hoa By http://tranhba.com  biÓu hiÖn mét chØ ®Şnh ho¹t ®éng t­êng t×nh # toµn bé , tr­íc mÆt thø mÊy c¸ # 
function event_show_detail(tb, n) 
local tb_event = EVENTS_TB[tb[n]]; 
if (tb_event.callback) then 
tb_event.callback(); 
else 
local str = "<enter><color=red>"..tb_event.name.."<color><enter>" 
local tb_option = {}; 
if (getn(tb) > 1) then 
tb_option[1] = "Ta cßn muèn hiÓu râ kú tha ho¹t ®éng /#event_show_all({"..join(tb).."})"; 
end 
		tb_option[getn(tb_option)+1] = "Ngµy h«m nay, kh«ng nh¾c nhë t«i n÷a/event_hint_stop";
		tb_option[getn(tb_option)+1] = "T«i biÕt!/no";
if (tb_event.link) then 
str = tb_event.link .. str 
else 
str = EVENT_HINT_LINK .. str 
end 
if (tb_event.detail) then 
if (type(tb_event.detail) == "function") then 
str = str .. tb_event.detail() 
else 
str = str .. tb_event.detail 
end 
elseif (tb_event.describe) then 
if (type(tb_event.describe) == "function") then 
str = str .. tb_event.describe() 
else 
str = str .. tostring(tb_event.describe) 
end 
end 
Describe(str, getn(tb_option), tb_option); 
end 
end 

function event_hint_stop() 
SetTask(2309, EVENT_HINT_TIMES); 
end 

function bingfu_hint() 
-- script viet hoa By http://tranhba.com  vai trß ®æi tªn ®Ò kú 
local msg = "" 
if (check_renamerole() == 1) then 
msg = msg .. "<#> bëi v× ë còng dïng/uèng trong qu¸ tr×nh , hÖ thèng ®· gióp ngµi tù ®éng h¬n tªn , mêi ®­îc c¸c tay míi th«n ®İch tay míi phæ biÕn réng r·i viªn chç lùa chän <color=red> söa ®æi vai trß tªn <color> . " 
end 
-- script viet hoa By http://tranhba.com  bang héi ®æi tªn ®Ò kú 
if (check_renametong() == 1) then 
msg = msg .. "<#> bëi v× ë còng dïng/uèng trong qu¸ tr×nh , hÖ thèng ®· gióp ngµi chç ë bang héi tù ®éng h¬n tªn , mêi ®­îc c¸c tay míi th«n ®İch tay míi phæ biÕn réng r·i viªn chç lùa chän <color=red> söa ®æi bang héi tªn <color> . " 
end 
if (check_castellan_remedy() == 1) then 
msg = msg .. "<#> bëi v× còng dïng/uèng trong qu¸ tr×nh hÖ thèng tù ®éng thu vÒ liÔu ngµi chç ë bang héi ®İch thµnh phè qu¶n lı quyÒn , ngµi cã thÓ ®Õn c¸c tay míi th«n ®İch tay míi phæ biÕn réng r·i viªn chç <color=red> nhËn lÊy t­¬ng øng båi th­êng <color> , nhËn lÊy bang héi båi th­êng chøc n¨ng ë <color=red> còng dïng/uèng sau trong vßng mét th¸ng <color> h÷u hiÖu . " 
end 

if (msg ~= "") then 
Say(msg, 1, "<#> biÕt /cancel") 
end 
end 

if login_add then login_add(event_hint_login, 0) end 
