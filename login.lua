Include("\\script\\global\\login_head.lua")
-- script viet hoa By http://tranhba.com  ®¨ng lôc ch©n vèn 
-- script viet hoa By http://tranhba.com  By: LaiLiGao(2004-06-20) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-07-09) t¨ng thªm tù ®éng ®æi míi kü n¨ng chøc n¨ng 
-- script viet hoa By http://tranhba.com  Update: FanZai ®æi dïng míi ky chÕ , chØ cÇn ®i r¬i Include liÒn cã thÓ thùc hiÖn chøc n¨ng chèt më 


-- script viet hoa By http://tranhba.com  mét lo¹i chØ cÇn söa ®æi # t¨ng thªm / thñ tiªu # n¬i nµy Include v¨n kiÖn # 
-- script viet hoa By http://tranhba.com £¨ÔÚÎÄ¼þÖÐÖ´ÐÐÒ»ÏÂlogin_add(fun, n_time)¼´¿É£¬Àý×Ó²Î¼û"\\script\\missions\\leaguematch\\wlls_login.lua"£©
-- script viet hoa By http://tranhba.com ================================================================ 
Include("\\script\\global\\login_old.lua")	-- script viet hoa By http://tranhba.com ¾ÉµÄLogin½Å±¾£¨°üº¬¶à¸ö»î¶¯£©
Include("\\script\\missions\\leaguematch\\wlls_login.lua")	-- script viet hoa By http://tranhba.com WLLSÎäÁÖÁªÈü
Include("\\script\\misc\\extpoint_loginmsg\\login_msg.lua")
Include("\\script\\global\\offline_login.lua")	-- script viet hoa By http://tranhba.com if offline time > 8hours then reset hours
Include("\\script\\global\\recordplayerinfo.lua")
Include("\\script\\nationalwar\\login.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_resetbase.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\global\\resetbos.lua")	
Include ("\\script\\global\\login_hint.lua")	-- script viet hoa By http://tranhba.com µÇÂ½»î¶¯ÌáÊ¾
-- script viet hoa By http://tranhba.com ================================================================ 

Include("\\script\\activitysys\\g_activity.lua")	

if (GetProductRegion() ~= "vn") then 
	Include("\\script\\global\\chuangong_login.lua")
	Include("\\script\\task\\lv120skill\\head.lua")	-- script viet hoa By http://tranhba.com  120¼¶¼¼ÄÜÈÎÎñ

-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 ®îi x¸c nhËn 
	-- script viet hoa By http://tranhba.com  Include("\\script\\battles\\battle_login.lua")	-- script viet hoa By http://tranhba.com ËÎ½ðÈÙÓþ½±ÀøµÄÌáÊ¾
end 

if (GetProductRegion() == "cn_ib") then 
	-- script viet hoa By http://tranhba.com  Include("\\script\\misc\\spreader\\emigration.lua")
	-- script viet hoa By http://tranhba.com  Include("\\script\\misc\\lost_item\\takelostitem.lua")
-- script viet hoa By http://tranhba.com  Include([[\script\item\ib\tishenzhiren.lua]]) -- script viet hoa By http://tranhba.com  thÕ th©n ng­êi giÊy 
	Include("\\script\\item\\ib\\zimudai.lua");
end 

Include("\\script\\tong\\tong_login.lua");
Include("\\script\\item\\tianziyuxi.lua");	-- script viet hoa By http://tranhba.com  ÌìÖ®Óñçô
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\misc\\eventsys\\type\\player.lua")

-- script viet hoa By http://tranhba.com tinhpn 20100817: Online Award 
Include("\\script\\bonus_onlinetime\\head.lua")

-- script viet hoa By http://tranhba.com tinhpn 20110223:Reset pass ruong 
Include("\\script\\vng_feature\\resetbox.lua")

function main(bExchangeIn) 

local W,X,Y = GetWorldPos(); 
local nMapId = W; 
if ( nMapId == 341 ) or ( nMapId == 162 ) then 
Msg2Player("N¬i ®©y ®å th­îng tuyÕn s¾p trë vÒ thµnh ..."); 
SetRevPos(19); -- script viet hoa By http://tranhba.com  thiÕt trÝ sèng l¹i ®iÓm 
UseTownPortal(); -- script viet hoa By http://tranhba.com  thi hµnh trë vÒ thµnh 
end 

SetProtectTime(18*3) -- script viet hoa By http://tranhba.com  ba gi©y b¶o vÖ thêi gian 
AddSkillState(963, 1, 0, 18*3) 
-- script viet hoa By http://tranhba.com tinhpn 20110223:Reset pass ruong 
ResetBox:AnnounceResetBoxDate() 
Reoff();-- script viet hoa By http://tranhba.com tinhpn 20100817: Online Award 
if (OnlineAward_StartDate() == 1 and OnlineAward_Check_TransferLife() ~= 0) then 
Msg2Player("Ngµi cã thÓ nhËn lÊy mçi ngµy ë tuyÕn phÇn th­ëng #") 
OnlineAward_ResetDaily() 
OnlineAward_SummaryOnlineTime() 
OnlineAward_StartTime() 
end 

PlayerList:AddPlayer(PlayerIndex) 
-- script viet hoa By http://tranhba.com  t¸i nhËp toµn bé login ch©n vèn 
if (TB_LOGIN_FUN[0]) then 
for i = 1, getn(TB_LOGIN_FUN[0]) do 
local func = TB_LOGIN_FUN[0][i] 
if (func) then 
func(bExchangeIn) 
end 
end 
end 

EventSys:GetType("OnLogin"):OnPlayerEvent(0, PlayerIndex, bExchangeIn) 
G_ACTIVITY:OnMessage("OnLogin", PlayerIndex) 


for i = 1, getn(TB_LOGIN_FILEFUN) do 
local reg = TB_LOGIN_FILEFUN[i] 
DynamicExecute(reg[1], reg[2], PlayerIndex, bExchangeIn) 
end 
TaskManager:ResetUseGroup() 
LoginDelaySync(1) -- script viet hoa By http://tranhba.com  1 bµy tá cÇn duyªn lóc cïng b­íc sè liÖu , 0 bµy tá kh«ng cÇn 
-- script viet hoa By http://tranhba.com  xin chí ë chç nµy hµm sè trung trùc tiÕp t¨ng thªm suy luËn xö lý , xin/mêi phong gi¶ d¹ng lµm hµm sè còng th«ng qua login_add ®Ó ®­a ®Õn TB_LOGIN_FUN[0] ®Õm tæ lý 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  chøc n¨ng # ®¨ng lôc lóc , duyªn lóc cïng b­íc mét Ýt kh«ng ¶nh h­ëng hÖ thèng vËn hµnh ®Ých sè liÖu ®Õn kh¸ch hµng b­ng , gi¶m bít ®¨ng lôc thêi gian hao phÝ 
-- script viet hoa By http://tranhba.com  tr­íc m¾t duyªn lóc nµo còng ®ang lóc v× 2 gi©y ( tøc # thi hµnh main_delaysync ®Ých gian c¸ch # hai gi©y ) 
-- script viet hoa By http://tranhba.com - tham sæ #nStep bµy tá tr­íc mÆt lµ lÇn thø mÊy cïng b­íc 
-- script viet hoa By http://tranhba.com  trë vÒ #0 - bµy tá cïng b­íc ch­a kÕt thóc , hÖ thèng ë lÇn nµy ®iÒu dông sau khi hoµn thµnh , vÉn sÏ lÇn n÷a ®iÒu dông main_delaysync 
-- script viet hoa By http://tranhba.com  1 - bµy tá tÊt c¶ cïng b­íc kÕt thóc 
function main_delaysync(nStep) 
if (nStep < 1 or nStep > getn(TB_LOGIN_FUN)) then 
print("main_delaysync error: "..nStep.." funccount:"..getn(TB_LOGIN_FUN)); 
return 1; 
end 

-- script viet hoa By http://tranhba.com  vËn hµnh thø nStep lÇn duyªn lóc cïng b­íc ®Ých tÊt c¶ hµm sè 
if (TB_LOGIN_FUN[nStep]) then 
for i = 1, getn(TB_LOGIN_FUN[nStep]) do 
if (TB_LOGIN_FUN[nStep][i]) then TB_LOGIN_FUN[nStep][i]() end 
end 
end 

if (nStep < getn(TB_LOGIN_FUN)) then 
return 0 
else 
return 1 
end 
end 
function no() 
if chuangong_login ~= nil then 
chuangong_login() 
end 
end 
