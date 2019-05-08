--Include("\\script\\global\\lbadmin.lua")
-------------------------------------------------Script*By* NguyenKhai-----------------------------------------
IncludeLib("LEAGUE");
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");


local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end

	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if (nPlayerLevel < 90) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 90 and nPlayerLevel < 120) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 120) then
		nGetSeedLevel = 3;
	end

	if (nGetSeedLevel ~= 3) then -- Èç¹û¼¶±ð²»¶Ô,²»ÄÜ½øÐÐÊ°È¡
		--ÕâÀï¸æËßÍæ¼Ò¼¶±ð²»¶Ô,²»ÄÜÊ°È¡
		Msg2Player("Ng­êi ch¬i ph¶i tõ cÊp 120 trë lªn míi cã thÓ tham gia ")
		return
                      end
	return nGetSeedLevel
end
	
local _GetFruit = function(nNpcIdx, dwNpcId)
	vantieubanghoine()
	end


local _OnBreak = function()
	Msg2Player("§øng yªn kh«ng ®­îc nhót nhÝch.<pic=15>")
end



function main()
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
                                                                                                                                                                     Say("ChØ cã bang chñ nhµ ng­¬i míi cã t­ c¸ch nãi chuyÖn víi ta nhÐ ku em.<pic=150>",0)
		return
	end
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
		local nHour = tonumber(GetLocalDate("%H%M"))
		if( nHour >= 2105 and nHour <= 2300) then
	tbProgressBar:OpenByConfig(3, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)


		else
                                                                                                                                                                     Say("Chøc n¨ng kÐo ph¸o Ba L¨ng HuyÖn b¾t ®Çu tõ 22h5 ®Õn 23h thø 7 hµng tuÇn.PhÇn th­ëng 1 mÆt n¹ v« ®Þch chiÕn tr­êng KNVC 1 cÊp 7 ngµy + 100 khiªu khÝch lÖnh.<pic=146>",0)
return
	end
end

function vantieubanghoine()
	local tbDialog = 
{ 
"<npc><color=green>§¹i qu©n ta ®ang cÇn nhiÒu Ph¸o Sa ®Ó c«ng thµnh giÆc ph­¬ng kh«ng biÕt vÞ bang chñ cã ®ñ ®iÒu kiÖn ®em ph¸o tíi cho ta kh«ng.",
 "Ta ®Õn ®Ó giao ®¹i ph¸o sa cho qu©n binh/giaohangdaiquan",
"Ta chØ ghÐ qua th«i/",
} 
CreateTaskSay(tbDialog)
end



function giaohangdaiquan()
local state = GetSkillState(739);
if state == 1 then
ForbidEnmity(0);
SetPKFlag(0)
DisabledUseTownP(0);
ForbitSkill(0);
ForbidChangePK(0);
SetMoveSpeed(-2);
RestoreOwnFeature();
AddSkillState(464, 20, 0, 18*60);
AddSkillState(739, 1, 0, 18*5); --CHIM
AddSkillState(731, 1, 0, 18*60); --VONG XANH
AddSkillState(313, 60, 0, 18*60); --TANHINH
AddSkillState(458, 60, 0, 18*60); --TANHINH
AddSkillState(874, 1, 0, 18*60); --BAYMAU
tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,828,1},nCount=1,nExpiredTime=10080,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Khiªu KhÝch LÖnh",tbProp={6,1,4450,1,1,0},nCount=100,},}, "test", 1);
Msg2SubWorld("ThiÕt Ph¸o Sa cña bang Chñ <color=green>"..GetName().."<color=yellow> §· Hoµn thµnh nhiÖm vô nhËn ®­îc 1 MÆt N¹ V« §Þch ChiÕn Tr­êng 7 Ngµy + 100 Khiªu KhÝch LÖnh.")

SetDeathScript("");
--KickOutSelf()
	else
Say("<color=green>Ph¸o ®©u ®Þnh lõa ta h· t¸n chÕt mÑ µ !!<pic=6>.")
	end
end