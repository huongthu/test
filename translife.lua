
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn in tê nÕt b¶n ®¹i lôc 
-- script viet hoa By http://tranhba.com  v¨n kiÖn tªn ##translife.lua 
-- script viet hoa By http://tranhba.com  ng­êi khai s¸ng ## tö kh«ng ph¶i lµ ng­ 
-- script viet hoa By http://tranhba.com  khai s¸ng thêi gian #2009-02-05 11:00:50 

-- script viet hoa By http://tranhba.com  ====================================================== 


IncludeLib("SETTING") 
IncludeLib("PARTNER") 
Include("\\script\\task\\metempsychosis\\task_func.lua")
-- script viet hoa By http://tranhba.com  phong v©n lÖnh bµi - ®iÒu chØnh ®èi víi tay míi sèng l¹i ®Ých thêi gian - Modified By DinhHQ - 20110926 
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

-- script viet hoa By http://tranhba.com  4 chuyÓn xö lý 
if n_transcount == 3 then 
Pay(ZHUANSHENG_TUITION_4) 
SetTask(TSK_TRANSLIFE_4, 0) -- script viet hoa By http://tranhba.com  4 chuyÓn nhiÖm vô thiÕt trÝ v× kh«ng tiÕp thu , giÕt tr¸ch lóc sÏ kh«ng lÊy ®­îc phÝch lÞch ®¹n 
SetTask(TSK_LEAVE_SKILL_POINT_4, 0) -- script viet hoa By http://tranhba.com  thanh kh«ng cßn thõa l¹i kü n¨ng ®iÓm 
SetTask(TSK_USED_SKILL_POINT_4, 0) -- script viet hoa By http://tranhba.com  thanh kh«ng ®· sö dông kü n¨ng ®iÓm 
SetTask(TSK_LAST_UP_LEVEL_4, 0) -- script viet hoa By http://tranhba.com  thiÕt trÝ cuèi cïng th¨ng cÊp cÊp bËc v× 0 
for i=1,getn(TBITEMNEED_4) do 
local tbProb = TBITEMNEED_4[i].tbProb 
ConsumeItem(3,TBITEMNEED_4[i].nCount, tbProb[1], tbProb[2], tbProb[3], -1) 
end 
-- script viet hoa By http://tranhba.com Kh tÇn g add skill TS4 khi TS - Modified by DinhHQ - 20110812 
-- script viet hoa By http://tranhba.com  for i=1,getn(TB_SKILL_4) do 
-- script viet hoa By http://tranhba.com  AddMagic(TB_SKILL_4[i][1],TB_SKILL_4[i][2]) 
-- script viet hoa By http://tranhba.com  end 
else 
-- script viet hoa By http://tranhba.com  phong v©n lÖnh bµi - ®iÒu chØnh ®èi víi tay míi sèng l¹i ®Ých thêi gian - Modified By DinhHQ - 20110926 
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

SetTask(144, 0); -- script viet hoa By http://tranhba.com  miÔn phÝ t¾m ®iÓm 
SetRevPos(121, 55); -- script viet hoa By http://tranhba.com  thiÕt sèng l¹i ®iÓm ë long m«n trÊn 
zhuansheng_clear_skill(n_level, nmgpoint); -- script viet hoa By http://tranhba.com  thanh r¬i kü n¨ng ®iÓm 
zhuansheng_clear_prop(n_level, nprop); -- script viet hoa By http://tranhba.com  thanh r¬i tiÒm n¨ng ®iÓm 

	SetSkillMaxLevelAddons(GetSkillMaxLevelAddons() + naddskill);

if (n_resistid >= 0 and n_resistid <= 4) then 
-- script viet hoa By http://tranhba.com  AddMaxResist(n_resistid, nresist); 
-- script viet hoa By http://tranhba.com  elseif (n_resistid == -1) then 
for i = 0, 4 do 
AddMaxResist(i, nresist); 
end 
end 

local nBaseLevel = 10 -- script viet hoa By http://tranhba.com  cam chÞu chuyÓn sinh sau th¨ng cÊp ®Õn 10 cÊp 

ST_LevelUp(nBaseLevel-n_level); -- script viet hoa By http://tranhba.com  thiÕt cÊp bËc v× 10 cÊp , tr¸nh khái 10 cÊp tr­íc vai trß san sè kh«ng thÓ t×m vÒ 
SetTask(TSK_ZHUANSHENG_FLAG,0); 
SetTask(TSK_ZHUANSHENG_LASTTIME, GetCurServerTime()); 

PARTNER_CallOutCurPartner(0) 
-- script viet hoa By http://tranhba.com SetTask(TSK_ZHUANSHENG_FLAG, 2); 
Msg2Player(" lÜnh héi < b¾c ®Èu sèng l¹i thuËt - t©m ph¸p ngµy >"); 

KickOutSelf(); 
-- script viet hoa By http://tranhba.com Msg2Player("Translife done") 
return 1 
end 
