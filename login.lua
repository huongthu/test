Include("\\script\\global\\login_head.lua")
-- script viet hoa By http://tranhba.com  ��ng l�c ch�n v�n 
-- script viet hoa By http://tranhba.com  By: LaiLiGao(2004-06-20) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-07-09) t�ng th�m t� ��ng ��i m�i k� n�ng ch�c n�ng 
-- script viet hoa By http://tranhba.com  Update: FanZai ��i d�ng m�i ky ch� , ch� c�n �i r�i Include li�n c� th� th�c hi�n ch�c n�ng ch�t m� 


-- script viet hoa By http://tranhba.com  m�t lo�i ch� c�n s�a ��i # t�ng th�m / th� ti�u # n�i n�y Include v�n ki�n # 
-- script viet hoa By http://tranhba.com �����ļ���ִ��һ��login_add(fun, n_time)���ɣ����Ӳμ�"\\script\\missions\\leaguematch\\wlls_login.lua"��
-- script viet hoa By http://tranhba.com ================================================================ 
Include("\\script\\global\\login_old.lua")	-- script viet hoa By http://tranhba.com �ɵ�Login�ű�������������
Include("\\script\\missions\\leaguematch\\wlls_login.lua")	-- script viet hoa By http://tranhba.com WLLS��������
Include("\\script\\misc\\extpoint_loginmsg\\login_msg.lua")
Include("\\script\\global\\offline_login.lua")	-- script viet hoa By http://tranhba.com if offline time > 8hours then reset hours
Include("\\script\\global\\recordplayerinfo.lua")
Include("\\script\\nationalwar\\login.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_resetbase.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\global\\resetbos.lua")	
Include ("\\script\\global\\login_hint.lua")	-- script viet hoa By http://tranhba.com ��½���ʾ
-- script viet hoa By http://tranhba.com ================================================================ 

Include("\\script\\activitysys\\g_activity.lua")	

if (GetProductRegion() ~= "vn") then 
	Include("\\script\\global\\chuangong_login.lua")
	Include("\\script\\task\\lv120skill\\head.lua")	-- script viet hoa By http://tranhba.com  120����������

-- script viet hoa By http://tranhba.com  LLG_ALLINONE_TODO_20070802 ��i x�c nh�n 
	-- script viet hoa By http://tranhba.com  Include("\\script\\battles\\battle_login.lua")	-- script viet hoa By http://tranhba.com �ν�������������ʾ
end 

if (GetProductRegion() == "cn_ib") then 
	-- script viet hoa By http://tranhba.com  Include("\\script\\misc\\spreader\\emigration.lua")
	-- script viet hoa By http://tranhba.com  Include("\\script\\misc\\lost_item\\takelostitem.lua")
-- script viet hoa By http://tranhba.com  Include([[\script\item\ib\tishenzhiren.lua]]) -- script viet hoa By http://tranhba.com  th� th�n ng��i gi�y 
	Include("\\script\\item\\ib\\zimudai.lua");
end 

Include("\\script\\tong\\tong_login.lua");
Include("\\script\\item\\tianziyuxi.lua");	-- script viet hoa By http://tranhba.com  ��֮����
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
Msg2Player("N�i ��y �� th��ng tuy�n s�p tr� v� th�nh ..."); 
SetRevPos(19); -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
UseTownPortal(); -- script viet hoa By http://tranhba.com  thi h�nh tr� v� th�nh 
end 

SetProtectTime(18*3) -- script viet hoa By http://tranhba.com  ba gi�y b�o v� th�i gian 
AddSkillState(963, 1, 0, 18*3) 
-- script viet hoa By http://tranhba.com tinhpn 20110223:Reset pass ruong 
ResetBox:AnnounceResetBoxDate() 
Reoff();-- script viet hoa By http://tranhba.com tinhpn 20100817: Online Award 
if (OnlineAward_StartDate() == 1 and OnlineAward_Check_TransferLife() ~= 0) then 
Msg2Player("Ng�i c� th� nh�n l�y m�i ng�y � tuy�n ph�n th��ng #") 
OnlineAward_ResetDaily() 
OnlineAward_SummaryOnlineTime() 
OnlineAward_StartTime() 
end 

PlayerList:AddPlayer(PlayerIndex) 
-- script viet hoa By http://tranhba.com  t�i nh�p to�n b� login ch�n v�n 
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
LoginDelaySync(1) -- script viet hoa By http://tranhba.com  1 b�y t� c�n duy�n l�c c�ng b��c s� li�u , 0 b�y t� kh�ng c�n 
-- script viet hoa By http://tranhba.com  xin ch� � ch� n�y h�m s� trung tr�c ti�p t�ng th�m suy lu�n x� l� , xin/m�i phong gi� d�ng l�m h�m s� c�ng th�ng qua login_add �� ��a ��n TB_LOGIN_FUN[0] ��m t� l� 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  ch�c n�ng # ��ng l�c l�c , duy�n l�c c�ng b��c m�t �t kh�ng �nh h��ng h� th�ng v�n h�nh ��ch s� li�u ��n kh�ch h�ng b�ng , gi�m b�t ��ng l�c th�i gian hao ph� 
-- script viet hoa By http://tranhba.com  tr��c m�t duy�n l�c n�o c�ng �ang l�c v� 2 gi�y ( t�c # thi h�nh main_delaysync ��ch gian c�ch # hai gi�y ) 
-- script viet hoa By http://tranhba.com - tham s� #nStep b�y t� tr��c m�t l� l�n th� m�y c�ng b��c 
-- script viet hoa By http://tranhba.com  tr� v� #0 - b�y t� c�ng b��c ch�a k�t th�c , h� th�ng � l�n n�y �i�u d�ng sau khi ho�n th�nh , v�n s� l�n n�a �i�u d�ng main_delaysync 
-- script viet hoa By http://tranhba.com  1 - b�y t� t�t c� c�ng b��c k�t th�c 
function main_delaysync(nStep) 
if (nStep < 1 or nStep > getn(TB_LOGIN_FUN)) then 
print("main_delaysync error: "..nStep.." funccount:"..getn(TB_LOGIN_FUN)); 
return 1; 
end 

-- script viet hoa By http://tranhba.com  v�n h�nh th� nStep l�n duy�n l�c c�ng b��c ��ch t�t c� h�m s� 
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
