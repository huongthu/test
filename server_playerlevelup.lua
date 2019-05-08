IncludeLib("SETTING"); 
Include("\\script\\task\\newtask\\newtask_head.lua");
Include( "\\script\\missions\\leaguematch\\wlls_levelup.lua" )
Include("\\script\\task\\metempsychosis\\task_head.lua")

FACTION_SKILLTAB = { 
[0] = {[90] = {318, 319, 321}, [120] = {709}, [150] = {1055, 1056, 1057},}, 
[1] = {[90] = {322, 325, 323}, [120] = {708}, [150] = {1058, 1059, 1060},}, 
[2] = {[90] = {339, 302, 342, 351,}, [120] = {710}, [150] = {1069, 1070, 1071, 1110},}, 
[3] = {[90] = {353, 355, 390}, [120] = {711}, [150] = {1066, 1067},}, 
[4] = {[90] = {380, 328, 332}, [120] = {712}, [150] = {1061, 1062, 1114},}, 
[5] = {[90] = {336, 337}, [120] = {713}, [150] = {1063, 1065},}, 
[6] = {[90] = {357, 359}, [120] = {714}, [150] = {1073, 1074}}, 
[7] = {[90] = {361, 362, 391}, [120] = {715}, [150] = {1075, 1076},}, 
[8] = {[90] = {365, 368}, [120] = {716}, [150] = {1078, 1079},}, 
[9] = {[90] = {372, 375, 394}, [120] = {717}, [150] = {1080, 1081},}, 
} 

function levelup_check150skillmission() 
local nValue = GetTask(2885) 
if nValue > 0 then 
return 
end 
local nFact = GetLastFactionNumber() 
if nFact == nil or nFact < 0 or nFact > 9 then 
return 
end 
local tb90Skill = FACTION_SKILLTAB[nFact][90] 
local nHave90SkillFlag = 0 
for i = 1, getn(tb90Skill) do 
if HaveMagic(tb90Skill[i]) >= 0 then 
nHave90SkillFlag = 1 
break 
end 
end 
local tb120Skill = FACTION_SKILLTAB[nFact][120] 
local nHave120SkillFlag = 0 
for i = 1, getn(tb120Skill) do 
if HaveMagic(tb120Skill[i]) >= 0 then 
nHave120SkillFlag = 1 
break 
end 
end 
local tb150Skill = FACTION_SKILLTAB[nFact][150] 
local nHave150SkillFlag = 0 
for i = 1, getn(tb150Skill) do 
if HaveMagic(tb150Skill[i]) >= 0 then 
nHave150SkillFlag = 1 
break 
end 
end 
if nHave150SkillFlag == 0 then 
if nHave90SkillFlag == 1 and nHave120SkillFlag == 1 and GetLevel() >= 150 then 
Msg2Player("<color=yellow> b©y giê ng­¬i cã thÓ nhËn 150 cÊp kü n¨ng nhiÖm vô <enter>") 
else 
local szMsg = " b©y giê ng­¬i cßn lµ " 
local nFlag = 0 
if nHave90SkillFlag == 0 then 
if nFlag == 1 then 
szMsg = format("%s,", szMsg) 
end 
szMsg = format("%s häc ®­îc 150 cÊp kü n¨ng ", szMsg) 
nFlag = 1 
end 
if nHave120SkillFlag == 0 then 
if nFlag == 1 then 
szMsg = format("%s,", szMsg) 
end 
szMsg = format("%s häc ®­îc 120 cÊp kü n¨ng ", szMsg) 
nFlag = 1 
end 
if GetLevel() < 150 then 
if nFlag == 1 then 
szMsg = format("%s,", szMsg) 
end 
szMsg = format("%s ®¹t tíi 150 cÊp ", szMsg) 
nFlag = 1 
end 
szMsg = format("<color=yellow>%s<color>", szMsg) 
Msg2Player(szMsg) 
end 
end 
end 

function main() 
local Uworld1001 = nt_getTask(1001) 
local Uworld1002 = nt_getTask(1002) 
local Uworld1003 = nt_getTask(1003) 
local n_level = GetLevel(); 
if ( n_level == 30 ) then 
if ( Uworld1001 == 60 ) and ( Uworld1002 == 60 ) and ( Uworld1003 == 108) then 
nt_setTask(1001,80) 
nt_setTask(1002,80) 
nt_setTask(1003,109) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 30 cÊp ®İch chİnh ph¸i , trung lËp , tµ ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1001 == 60 ) and ( Uworld1002 == 60 ) then 
nt_setTask(1001,80) 
nt_setTask(1002,80) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 30 cÊp ®İch chİnh ph¸i , trung lËp trËn doanh nhiÖm vô . ") 
elseif ( Uworld1001 == 60 ) and ( Uworld1003 == 108) then 
nt_setTask(1001,80) 
nt_setTask(1003,109) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 30 cÊp ®İch chİnh ph¸i , tµ ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1002 == 60 ) and ( Uworld1003 == 108) then 
nt_setTask(1002,80) 
nt_setTask(1003,109) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 30 cÊp ®İch trung lËp , tµ ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1001 == 60 ) then 
nt_setTask(1001,80) 
SendTaskOrder("Ngµi thu ®­îc 30 cÊp ®İch chİnh ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1002 == 60 ) then 
nt_setTask(1002,80) 
SendTaskOrder("Ngµi thu ®­îc 30 cÊp ®İch trung lËp trËn doanh nhiÖm vô . ") 
elseif ( Uworld1003 == 108) then 
nt_setTask(1003,109) 
SendTaskOrder("Ngµi thu ®­îc 30 cÊp ®İch tµ ph¸i trËn doanh nhiÖm vô . ") 
end 
elseif ( n_level == 40 ) then 

if ( Uworld1001 == 130 ) and ( Uworld1002 == 110 ) and ( Uworld1003 == 208 ) then 
nt_setTask(1001,150) 
nt_setTask(1002,130) 
nt_setTask(1003,209) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 40 cÊp ®İch chİnh ph¸i , trung lËp , tµ ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1001 == 130 ) and ( Uworld1002 == 110 ) then 
nt_setTask(1001,150) 
nt_setTask(1002,130) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 40 cÊp ®İch chİnh ph¸i , trung lËp trËn doanh nhiÖm vô . ") 
elseif ( Uworld1001 == 130 ) and ( Uworld1003 == 208 ) then 
nt_setTask(1001,150) 
nt_setTask(1003,209) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 40 cÊp ®İch chİnh ph¸i , tµ ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1002 == 110 ) and ( Uworld1003 == 208 ) then 
nt_setTask(1002,130) 
nt_setTask(1003,209) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 40 cÊp ®İch trung lËp , tµ ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1001 == 130 ) then 
nt_setTask(1001,150) 
SendTaskOrder("Ngµi thu ®­îc 40 cÊp ®İch chİnh ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1002 == 110 ) then 
nt_setTask(1002,130) 
SendTaskOrder("Ngµi thu ®­îc 40 cÊp ®İch trung lËp trËn doanh nhiÖm vô . ") 
elseif ( Uworld1003 == 208 ) then 
nt_setTask(1003,209) 
SendTaskOrder("Ngµi thu ®­îc 40 cÊp ®İch tµ ph¸i trËn doanh nhiÖm vô . ") 
end 
elseif ( n_level == 50 ) then 
if ( Uworld1001 == 200 ) and ( Uworld1002 == 180 ) and ( Uworld1003 == 328) then 
nt_setTask(1001,220) 
nt_setTask(1002,200) 
nt_setTask(1003,329) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 50 cÊp ®İch chİnh ph¸i , trung lËp , tµ ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1001 == 200 ) and ( Uworld1002 == 180 ) then 
nt_setTask(1001,220) 
nt_setTask(1002,200) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 50 cÊp ®İch chİnh ph¸i , trung lËp trËn doanh nhiÖm vô . ") 
elseif ( Uworld1001 == 200 ) and ( Uworld1003 == 328 ) then 
nt_setTask(1001,220) 
nt_setTask(1003,329) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 50 cÊp ®İch chİnh ph¸i , tµ ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1002 == 180 ) and ( Uworld1003 == 328 ) then 
nt_setTask(1002,200) 
nt_setTask(1003,329) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 50 cÊp ®İch trung lËp , tµ ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1001 == 200 ) then 
nt_setTask(1001,220) 
SendTaskOrder("Ngµi thu ®­îc 50 cÊp ®İch chİnh ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1002 == 180 ) then 
nt_setTask(1002,200) 
SendTaskOrder("Ngµi thu ®­îc 50 cÊp ®İch trung lËp trËn doanh nhiÖm vô . ") 
elseif ( Uworld1003 == 328 ) then 
nt_setTask(1003,329) 
SendTaskOrder("Ngµi thu ®­îc 50 cÊp ®İch tµ ph¸i trËn doanh nhiÖm vô . ") 
end 
elseif ( n_level == 60 ) then 
if ( Uworld1001 == 270 ) and ( Uworld1002 == 240 ) and ( Uworld1003 == 408 ) then 
nt_setTask(1001,290) 
nt_setTask(1002,260) 
nt_setTask(1003,409) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 50 cÊp ®İch chİnh ph¸i , trung lËp , tµ ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1001 == 270 ) and ( Uworld1002 == 240 ) then 
nt_setTask(1001,290) 
nt_setTask(1002,260) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 50 cÊp ®İch chİnh ph¸i , trung lËp trËn doanh nhiÖm vô . ") 
elseif ( Uworld1001 == 270 ) and ( Uworld1003 == 408 ) then 
nt_setTask(1001,290) 
nt_setTask(1003,409) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 50 cÊp ®İch chİnh ph¸i , tµ ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1002 == 240 ) and ( Uworld1003 == 408 ) then 
nt_setTask(1002,260) 
nt_setTask(1003,409) 
SendTaskOrder("Ngµi ®ång thêi thu ®­îc 50 cÊp ®İch trung lËp , tµ ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1001 == 270 ) then 
nt_setTask(1001,290) 
SendTaskOrder("Ngµi thu ®­îc 50 cÊp ®İch chİnh ph¸i trËn doanh nhiÖm vô . ") 
elseif ( Uworld1002 == 240 ) then 
nt_setTask(1002,260) 
SendTaskOrder("Ngµi thu ®­îc 50 cÊp ®İch trung lËp trËn doanh nhiÖm vô . ") 
elseif ( Uworld1003 == 408 ) then 
nt_setTask(1003,409) 
SendTaskOrder("Ngµi thu ®­îc 50 cÊp ®İch tµ ph¸i trËn doanh nhiÖm vô . ") 
end 
elseif( n_level == 150 ) then 
-- script viet hoa By http://tranhba.com M? nhi# v? nh nhÜ k? n#g 150 - Modified By NgaVN - 20121207 
levelup_check150skillmission() 
end 

if (n_level == 160) then 
local n_transcount = ST_GetTransLifeCount(); 
if (n_transcount == 3 and GetTask(TSK_ZHUANSHENG_AWARD) == 1) then -- script viet hoa By http://tranhba.com  tr­íc mÆt lµ ba chuyÓn , h¬n n÷a ë 190 cÊp chuyÓn sinh 
Msg2Player(format("Chóc mõng ®¹i hiÖp chuyÓn sinh %d lÇn sau , ®¹t tíi %d cÊp , cã thÓ ®Õn %s nhËn lÊy t­ëng th­ëng : %s", 
3, 160, "B l¨ng #u L# Nh#", "Phi yÕt V? ")); 
WriteLog(format("[3rdTransLife]\t%s\tAccount:%s\tName:%s\tRank:%d", 
GetLocalDate("%Y-%m-%d %X"),GetAccount(), GetName(),n_count)) 
end 
end 
-- script viet hoa By http://tranhba.com  wlls_leveupcheck() -- script viet hoa By http://tranhba.com  vâ l©m t©n tó liªn cuéc so tµi v­ît cÊp kiÓm tra 
end 
