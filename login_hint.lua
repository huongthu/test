Include("\\script\\lib\\common.lua")
Include("\\script\\global\\rename_head.lua")

-- script viet hoa By http://tranhba.com  ho�t ��ng ��nh ngh�a 
EVENTS_TB = { 
-- script viet hoa By http://tranhba.com  { 
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  bi�u hi�n ho�t ��ng �i�u ki�n 
-- script viet hoa By http://tranhba.com  ndate = {051101, 051131}, -- script viet hoa By http://tranhba.com  kh�i ch� nh�t k� , c� th� ch�n 
-- script viet hoa By http://tranhba.com  ntime = {2000, 2359}, -- script viet hoa By http://tranhba.com  kh�i ch� th�i gian , c� th� ch�n 
-- script viet hoa By http://tranhba.com  level = {1, 200}, -- script viet hoa By http://tranhba.com  kh�i ch� c�p b�c , c� th� ch�n 
-- script viet hoa By http://tranhba.com  taskequal = {taskid, taskvalue}, -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng t��ng ��ng , c� th� ch�n 
-- script viet hoa By http://tranhba.com  tasknot = {taskid, taskvalue}, -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng kh�ng ��i , c� th� ch�n 
-- script viet hoa By http://tranhba.com  checkfunc = func -- script viet hoa By http://tranhba.com  ki�m tr�c h�m s� , c� th� ch�n . h�m s� tr� v� nil b�y t� kh�ng x�c ph�t , n�u kh�ng x�c ph�t 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  ho�t ��ng mi�u t� 
-- script viet hoa By http://tranhba.com  name = " m�t m�t ho�t ��ng ", -- script viet hoa By http://tranhba.com  ho�t ��ng t�n , t�t c�n 
-- script viet hoa By http://tranhba.com  describe = " n�i ��n gi�n minh v�n ch� ", -- script viet hoa By http://tranhba.com  ho�t ��ng n�i r� , c�ng c� th� d�ng m�t h�m s� tr� v� t� ph� chu�i , c� th� ch�n 
-- script viet hoa By http://tranhba.com  detail = 
-- script viet hoa By http://tranhba.com [[## n�i n�y c� th� vi�t r�t nhi�u ch� vi�t , c�n k� mi�u t� ng��i ho�t ��ng . 
-- script viet hoa By http://tranhba.com ## ph��ng qu�t s� ��ch h�nh th�c c� th� t� do ��i ���c . 
-- script viet hoa By http://tranhba.com ## c�ng c� th� d�ng m�t h�m s� tr� v� t� ph� chu�i ]], -- script viet hoa By http://tranhba.com  ho�t ��ng t��ng t�nh , c� th� ch�n \___ hai ng��i ch� c� th� ch�n th� nh�t 
-- script viet hoa By http://tranhba.com  callback = nil, -- script viet hoa By http://tranhba.com  tr� v� �i�u h�m s� , c� th� ch�n / 
-- script viet hoa By http://tranhba.com  link = nil, -- script viet hoa By http://tranhba.com Describe ��i tho�i link tin t�c , c� th� ch�n # s� d�ng detail l�c h�u hi�u # 
-- script viet hoa By http://tranhba.com  }, 
{ 
ndate = {070414,070424}, 
name = "3 th�ng 3 ng�y ", 
describe = " t� <color=yellow>14/4/2007<color> ��n <color=yellow>24/4/2007<color>, �ang ho�t ��ng th�i gian b�n trong , t�t c� �ang ��nh tr�ch luy�n c�ng trong qu� tr�nh ��ch nh� ch�i �em c� c� h�i nh�t ���c <color=yellow> h�ng h�a ��i <color>. c�m h�ng h�a ��i c�ng ng�n l��ng ��n c�c th�nh ph� NPC th��ng phi�n ch� ��i l�y <color=yellow> nguy�n li�u ch�a ��ng t�i <color>.", 
}, 
{ -- script viet hoa By http://tranhba.com 3 c�p tr��c kia long n�m nhi�m v� s� nh�p 
level = {1, 3}, 
tasknot = {1014, 2}, 
name = "Ta ��n nh�n nhi�m v� s� nh�p ", 
describe = " G�p Long Ng� � c�c th�n d� nh�n nhi�m v� ", 
callback = Uworld1000_word, 
}, 
{ -- script viet hoa By http://tranhba.com  v� l�m li�n cu�c so t�i �� t�n t� 
level = {80, 119}, 
name = "V� l�m li�n ��u so t�i , v� l�m li�n ��u so t�i ' v� l�m t�n t� '", 
describe = " C�p �� cao c� th� d�n Quan Vi�n Li�n ��u ghi danh �� so t�i .", 
detail = 
[[ v� l�m li�n cu�c so t�i �ang ��ng � chu�n b� giai �o�n , c�p b�c c�a ng��i c� th� tham gia <color=yellow> v� l�m li�n doanh <color>. 
li�n cu�c so t�i v� tr� : <color=yellow> bi�n kinh (222, 191)<color>, <color=yellow> tr��c khi an (182, 204)<color>.]], 
}, 
{ -- script viet hoa By http://tranhba.com  v� l�m li�n cu�c so t�i �� cao c�p 
level = {120, 200}, 
name = "V� l�m li�n ��u so t�i , v� l�m li�n ��u so t�i ' v� l�m t�n t� '", 
describe = " C�p �� cao c� th� d�n Quan Vi�n Li�n ��u ghi danh �� so t�i .", 
detail = 
[[ v� l�m li�n cu�c so t�i �ang ��ng � chu�n b� giai �o�n , c�p b�c c�a ng��i c� th� tham gia <color=yellow> v� l�m li�n doanh <color>. 
li�n cu�c so t�i v� tr� <color=yellow> ��i L� (200, 197)<color>, <color=yellow> D��ng Ch�u (219, 190)<color>.]], 
}, 
{ -- script viet hoa By http://tranhba.com  huy ho�ng chi ��m 
name = "��m Huy Ho�ng ", 
describe = " S� ki�n ��m Huy Ho�ng di�n ra v�o l�c 7 gi� 30 ph�t m�i t�i trong tu�n . ", 
detail = 
[[ tr��c m�t l� gi� �i�u m�a thu�n th�i gian , v� th�nh t�nh ��p t� giang h� v� l�m nh�n s� , minh ch� v� l�m truy�n nh�n c� h�nh ' huy ho�ng ��m ' ho�t ��ng . ho�t ��ng t� m�i ng�y 19 �i�m 30 t�ch ra m�i , m�i l�n ho�t ��ng 30 ph�t . c� th� n�i dung c� th� �i t�m l� quan m� .]], 
}, 

-- script viet hoa By http://tranhba.com  { 
-- script viet hoa By http://tranhba.com  name = "<#> vai tr� ��i t�n ", 
-- script viet hoa By http://tranhba.com  describe = "<#> b�i v� � c�ng d�ng/u�ng trong qu� tr�nh , ng�i ��ch vai tr� t�n thay v� h�n nh� ch�i ��ch vai tr� t�n xu�t hi�n n�ng t�n t�nh hu�ng , v� v�y h� th�ng �� gi�p ng�i t� ��ng h�n t�n , n�u nh� ng�i c�n l�n n�a s�a ��i vai tr� t�n l�i c�a , m�i ���c c�c tay m�i th�n ��ch tay m�i ph� bi�n r�ng r�i vi�n ch� l�a ch�n s�a ��i vai tr� t�n . ng�i ch� c� th� s�a ��i m�t l�n vai tr� t�n , cho n�n xin/m�i c�n th�n ��c t��ng �ng n�i r� . ", 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  { 
-- script viet hoa By http://tranhba.com  name = "<#> bang h�i ��i t�n ", 
-- script viet hoa By http://tranhba.com  describe = " b�i v� � c�ng d�ng/u�ng trong qu� tr�nh , ng�i ch� � bang h�i , bang h�i t�n thay v� h�n bang h�i t�n xu�t hi�n n�ng t�n t�nh hu�ng , v� v�y h� th�ng �� gi�p ng�i ch� � bang h�i t� ��ng h�n t�n , n�u nh� bang ch� c�n l�n n�a s�a ��i bang h�i t�n l�i c�a , m�i ���c c�c tay m�i th�n ��ch tay m�i ph� bi�n r�ng r�i vi�n ch� l�a ch�n s�a ��i bang h�i t�n . bang ch� ch� c� th� s�a ��i m�t l�n bang h�i t�n , cho n�n xin/m�i c�n th�n ��c t��ng �ng n�i r� . ", 
-- script viet hoa By http://tranhba.com  }, 
} 

EVENT_HINT_LINK = "<link=image[0,1]:\\spr\\npcres\\enemy\\enemy060\\enemy060_st.spr> g�n nh�t ��ch ho�t ��ng an b�i :<link>" 
EVENT_HINT_TIMES = 3 -- script viet hoa By http://tranhba.com  m�i ng�y th��ng tuy�n �� k� s� l�n 

-- script viet hoa By http://tranhba.com  n�u nh� c� gi�c ph�c t�p ho�t ��ng c�n t� ��nh ngh�a m�t �t h�m s� . xin/m�i t�i h� m�t Include , c�ng s� d�ng # 
-- script viet hoa By http://tranhba.com 	if EVENTS_TB then EVENTS_TB[getn(EVENTS_TB)+1] = {����} end
-- script viet hoa By http://tranhba.com  ��ch ph��ng th�c t�ng th�m 
-- script viet hoa By http://tranhba.com ================================================================= 
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
Include("\\script\\event\\great_night\\huangzhizhang\\event.lua")
-- script viet hoa By http://tranhba.com ================================================================= 

-- script viet hoa By http://tranhba.com  ��ng l�c l�c �i�u d�ng ��ch h�m s� 
function event_hint_login(bExchangeIn) 
-- script viet hoa By http://tranhba.com  nh�y qua d�ng/u�ng t�i ���c c�ng kh�ng c�n nh�c l�i k� li�u 
if (bExchangeIn == 1) then 
return 
end 
local n_date = tonumber(GetLocalDate("%y%m%d")); 
local n_time = tonumber(GetLocalDate("%H%M")); 
local n_times; 
if (GetTask(2308) ~= n_date) then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� h�m nay ��ng l�c ��ch 
SetTask(2308, n_date); 
SetTask(2309, 0); 
n_times = 0; 
else 
n_times = GetTask(2309); 
end 
if (n_times >= EVENT_HINT_TIMES) then -- script viet hoa By http://tranhba.com  �� ��t t�i �� k� s� l�n , kh�ng h� n�a �� k� 
return 
end 

local n_level = GetLevel(); 
local tb = {}; 
for i = 1, getn(EVENTS_TB) do 
if event_hint_check(EVENTS_TB[i], n_date, n_time, n_level) then -- script viet hoa By http://tranhba.com  ph� h�p �i�u ki�n 
			tb[getn(tb)+1] = i;
end 
end 
if (getn(tb) == 1) then -- script viet hoa By http://tranhba.com  ch� c� m�t ho�t ��ng , tr�c ti�p bi�u hi�n t��ng t�nh 
event_show_detail(tb, 1); 
elseif (getn(tb) > 0) then -- script viet hoa By http://tranhba.com  nhi�u ho�t ��ng 
event_show_all(tb); 
end 

	SetTask(2309, n_times + 1)

bingfu_hint() -- script viet hoa By http://tranhba.com  c�ng d�ng/u�ng h�n t�n , t�m th�i t�ng th�m ��ch cao �u ti�n c�p th��ng tuy�n �� k� , kh�ng thu�c v� quy ph�m ��ch s� d�ng 
end 

-- script viet hoa By http://tranhba.com  ki�m tra m�t ho�t ��ng c� hay kh�ng c�n th�ng b�o tr��c m�t nh� ch�i 
function event_hint_check(tb_event, n_date, n_time, n_level) 
local tb = tb_event.ndate; 
if (tb) then -- script viet hoa By http://tranhba.com  h�n ��nh nh�t k� 
if (n_date < tb[1] or n_date > tb[2]) then -- script viet hoa By http://tranhba.com  nh�t k� kh�ng h�p 
return 
end 
end 
tb = tb_event.ntime; 
if (tb) then -- script viet hoa By http://tranhba.com  h�n ��nh th�i gian 
if (n_time < tb[1] or n_time > tb[2]) then -- script viet hoa By http://tranhba.com  nh�t k� kh�ng h�p 
return 
end 
end 
tb = tb_event.level; 
if (tb) then -- script viet hoa By http://tranhba.com  h�n ��nh c�p b�c 
if (n_level < tb[1] or n_level > tb[2]) then -- script viet hoa By http://tranhba.com  c�p b�c kh�ng h�p 
return 
end 
end 
tb = tb_event.taskequal 
if (tb) then -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng t��ng ��ng 
if (GetTask(tb[1]) ~= tb[2]) then 
return 
end 
end 
tb = tb_event.tasknot 
if (tb) then -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng kh�ng ��i 
if (GetTask(tb[1]) == tb[2]) then 
return 
end 
end 
local func = tb_event.checkfunc 
if (func) then -- script viet hoa By http://tranhba.com  h�m s� ph�n �o�n 
if (not func()) then 
return 
end 
end 
return 1 
end 

-- script viet hoa By http://tranhba.com  bi�u hi�n t�t c� ho�t ��ng 
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
			tb_option[getn(tb_option)+1] = tb_event.name.."Xem chi ti�t/#event_show_detail({"..join(tb).."},"..i..")";
end 
end 
	tb_option[getn(tb_option)+1] = "Ng�y h�m nay, kh�ng nh�c nh� t�i n�a/event_hint_stop";
	tb_option[getn(tb_option)+1] = "T�i bi�t!/no";
Describe(EVENT_HINT_LINK..str, getn(tb_option), tb_option); 
end 

-- script viet hoa By http://tranhba.com  bi�u hi�n m�t ch� ��nh ho�t ��ng t��ng t�nh # to�n b� , tr��c m�t th� m�y c� # 
function event_show_detail(tb, n) 
local tb_event = EVENTS_TB[tb[n]]; 
if (tb_event.callback) then 
tb_event.callback(); 
else 
local str = "<enter><color=red>"..tb_event.name.."<color><enter>" 
local tb_option = {}; 
if (getn(tb) > 1) then 
tb_option[1] = "Ta c�n mu�n hi�u r� k� tha ho�t ��ng /#event_show_all({"..join(tb).."})"; 
end 
		tb_option[getn(tb_option)+1] = "Ng�y h�m nay, kh�ng nh�c nh� t�i n�a/event_hint_stop";
		tb_option[getn(tb_option)+1] = "T�i bi�t!/no";
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
-- script viet hoa By http://tranhba.com  vai tr� ��i t�n �� k� 
local msg = "" 
if (check_renamerole() == 1) then 
msg = msg .. "<#> b�i v� � c�ng d�ng/u�ng trong qu� tr�nh , h� th�ng �� gi�p ng�i t� ��ng h�n t�n , m�i ���c c�c tay m�i th�n ��ch tay m�i ph� bi�n r�ng r�i vi�n ch� l�a ch�n <color=red> s�a ��i vai tr� t�n <color> . " 
end 
-- script viet hoa By http://tranhba.com  bang h�i ��i t�n �� k� 
if (check_renametong() == 1) then 
msg = msg .. "<#> b�i v� � c�ng d�ng/u�ng trong qu� tr�nh , h� th�ng �� gi�p ng�i ch� � bang h�i t� ��ng h�n t�n , m�i ���c c�c tay m�i th�n ��ch tay m�i ph� bi�n r�ng r�i vi�n ch� l�a ch�n <color=red> s�a ��i bang h�i t�n <color> . " 
end 
if (check_castellan_remedy() == 1) then 
msg = msg .. "<#> b�i v� c�ng d�ng/u�ng trong qu� tr�nh h� th�ng t� ��ng thu v� li�u ng�i ch� � bang h�i ��ch th�nh ph� qu�n l� quy�n , ng�i c� th� ��n c�c tay m�i th�n ��ch tay m�i ph� bi�n r�ng r�i vi�n ch� <color=red> nh�n l�y t��ng �ng b�i th��ng <color> , nh�n l�y bang h�i b�i th��ng ch�c n�ng � <color=red> c�ng d�ng/u�ng sau trong v�ng m�t th�ng <color> h�u hi�u . " 
end 

if (msg ~= "") then 
Say(msg, 1, "<#> bi�t /cancel") 
end 
end 

if login_add then login_add(event_hint_login, 0) end 
