
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n ��i l�c 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##translife.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2009-02-05 11:00:50 

-- script viet hoa By http://tranhba.com  ====================================================== 


IncludeLib("SETTING") 
IncludeLib("PARTNER") 
Include("\\script\\task\\metempsychosis\\task_func.lua")
-- script viet hoa By http://tranhba.com  phong v�n l�nh b�i - �i�u ch�nh ��i v�i tay m�i s�ng l�i ��ch th�i gian - Modified By DinhHQ - 20110926 
Include("\\script\\activitysys\\config\\1005\\check_func.lua")
function main() 

local n_level = GetLevel(); 
local n_setlevel = n_level; 
local n_curexp = GetExp(); 

local n_resistid = GetTaskTemp(TSKM_ZHUANSHENG_RESISTID); 
local n_transcount = ST_GetTransLifeCount(); 

	local nmgpoint, nprop, nresist, naddskill  =	TB_LEVEL_REMAIN_PROP[n_level][n_transcount+1][1],
													TB_LEVEL_REMAIN_PROP[n_level][n_transcount+1][2],
													TB_LEVEL_REMAIN_PROP[n_level][n_transcount+1][3],
													TB_LEVEL_REMAIN_PROP[n_level][n_transcount+1][4];

if (n_level == 199 and n_transcount == 0 and n_curexp >= ZHUANSHENG_XIANDAN_MINEXP) then 
		nmgpoint, nprop, nresist, naddskill  =	TB_LEVEL_REMAIN_PROP[200][n_transcount+1][1],
												TB_LEVEL_REMAIN_PROP[200][n_transcount+1][2],
												TB_LEVEL_REMAIN_PROP[200][n_transcount+1][3],
												TB_LEVEL_REMAIN_PROP[200][n_transcount+1][4];
n_setlevel = 200; 
end 

WriteLog(format("[DoTransLife]\t%s\tName:%s\tAccount:%s\tDoTransLife,LEVEL:%d,SetLevel:%d,FACTION:%d,TRANSCOUNT:%d,RESIST:%d,AddMagicPoint:%d,AddProp:%d,AddResist:%d", 
GetLocalDate("%Y-%m-%d %X"),GetName(), GetAccount(), 
GetLevel(), n_setlevel, GetLastFactionNumber(), n_transcount, n_resistid, 
nmgpoint, nprop, nresist)); 
	zhuansheng_set_gre(n_transcount+1, n_setlevel, n_resistid);

-- script viet hoa By http://tranhba.com  4 chuy�n x� l� 
if n_transcount == 3 then 
Pay(ZHUANSHENG_TUITION_4) 
SetTask(TSK_TRANSLIFE_4, 0) -- script viet hoa By http://tranhba.com  4 chuy�n nhi�m v� thi�t tr� v� kh�ng ti�p thu , gi�t tr�ch l�c s� kh�ng l�y ���c ph�ch l�ch ��n 
SetTask(TSK_LEAVE_SKILL_POINT_4, 0) -- script viet hoa By http://tranhba.com  thanh kh�ng c�n th�a l�i k� n�ng �i�m 
SetTask(TSK_USED_SKILL_POINT_4, 0) -- script viet hoa By http://tranhba.com  thanh kh�ng �� s� d�ng k� n�ng �i�m 
SetTask(TSK_LAST_UP_LEVEL_4, 0) -- script viet hoa By http://tranhba.com  thi�t tr� cu�i c�ng th�ng c�p c�p b�c v� 0 
for i=1,getn(TBITEMNEED_4) do 
local tbProb = TBITEMNEED_4[i].tbProb 
ConsumeItem(3,TBITEMNEED_4[i].nCount, tbProb[1], tbProb[2], tbProb[3], -1) 
end 
-- script viet hoa By http://tranhba.com Kh t�n g add skill TS4 khi TS - Modified by DinhHQ - 20110812 
-- script viet hoa By http://tranhba.com  for i=1,getn(TB_SKILL_4) do 
-- script viet hoa By http://tranhba.com  AddMagic(TB_SKILL_4[i][1],TB_SKILL_4[i][2]) 
-- script viet hoa By http://tranhba.com  end 
else 
-- script viet hoa By http://tranhba.com  phong v�n l�nh b�i - �i�u ch�nh ��i v�i tay m�i s�ng l�i ��ch th�i gian - Modified By DinhHQ - 20110926 
if tbPVLB_Check:IsNewPlayer() == 1 and tbPVLB_Check:CheckTime() == 1 and (n_transcount == 0 or n_transcount == 1) then 
if n_transcount == 0 then 
Pay(1000000) 
elseif n_transcount == 1 then 
Pay(20000000) 
end 
else 
Pay(ZHUANSHENG_TUITION) 
end 
end 

SetTask(144, 0); -- script viet hoa By http://tranhba.com  mi�n ph� t�m �i�m 
SetRevPos(121, 55); -- script viet hoa By http://tranhba.com  thi�t s�ng l�i �i�m � long m�n tr�n 
zhuansheng_clear_skill(n_level, nmgpoint); -- script viet hoa By http://tranhba.com  thanh r�i k� n�ng �i�m 
zhuansheng_clear_prop(n_level, nprop); -- script viet hoa By http://tranhba.com  thanh r�i ti�m n�ng �i�m 

	SetSkillMaxLevelAddons(GetSkillMaxLevelAddons() + naddskill);

if (n_resistid >= 0 and n_resistid <= 4) then 
-- script viet hoa By http://tranhba.com  AddMaxResist(n_resistid, nresist); 
-- script viet hoa By http://tranhba.com  elseif (n_resistid == -1) then 
for i = 0, 4 do 
AddMaxResist(i, nresist); 
end 
end 

local nBaseLevel = 10 -- script viet hoa By http://tranhba.com  cam ch�u chuy�n sinh sau th�ng c�p ��n 10 c�p 

ST_LevelUp(nBaseLevel-n_level); -- script viet hoa By http://tranhba.com  thi�t c�p b�c v� 10 c�p , tr�nh kh�i 10 c�p tr��c vai tr� san s� kh�ng th� t�m v� 
SetTask(TSK_ZHUANSHENG_FLAG,0); 
SetTask(TSK_ZHUANSHENG_LASTTIME, GetCurServerTime()); 

PARTNER_CallOutCurPartner(0) 
-- script viet hoa By http://tranhba.com SetTask(TSK_ZHUANSHENG_FLAG, 2); 
Msg2Player(" l�nh h�i < b�c ��u s�ng l�i thu�t - t�m ph�p ng�y >"); 

KickOutSelf(); 
-- script viet hoa By http://tranhba.com Msg2Player("Translife done") 
return 1 
end 
