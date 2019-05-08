IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1171,80,4,53,1805,3428,0,"NhËn ThiÕt Ph¸o Sa",0,"\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua","main", 0},   
}
function add_npc_click()
	call_npc(NPC_Clickdb)
end
function call_npc(tbnpc) 
		for i = 1 , getn(tbnpc) do 
			Mid = SubWorldID2Idx(tbnpc[i][4]); 
			if (Mid >= 0 ) then 
				TabValue5 = tbnpc[i][5] * 32; 
				TabValue6 = tbnpc[i][6] * 32; 
				local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]); 
				SetNpcScript(nNpcIdx, tbnpc[i][10]); 
			end; 
	end; 
end


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


	local nBuildFund = 5000
	local _, nTongID = GetTongName()
	if(nTongID == 0) then
		Msg2Player("ChØ cã bang chñ míi ®­îc ®iÒu khiÓn thiÕt ph¸o sa..");
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Msg2Player("<color=green>ChØ cã bang chñ míi ®­îc ®iÒu khiÓn thiÕt ph¸o sa...");
		return
	end;

	return nGetSeedLevel
end
	
local _GetFruit = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return 0
	end
	local nGetSeedLevel = %_Limit(nNpcIdx)
	
	if nGetSeedLevel == nil then
		return 0
	end
	DOIGM()
	DelNpc(nNpcIdx)
	

                      Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> b¾t ®Çu kÐo ph¸o tõ cæng Nam Nh¹c TrÊn vÒ trung t©m Ba L¨ng huyÖn c¸c bang héi kh¸c mau mau ra c­íp ph¸o .!")	
end


local _OnBreak = function()
	Msg2Player("b¹n bÞ tróng ®ßn ø ø")
                      Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> bÞ ®©m lÐn<color=green> kh«ng thÓ kÐo ph¸o sa.!")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	if (GetFightState() == 0 or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Tr¹ng th¸i dÞ th­êng phi chiÕn ®Êu kh«ng thÓ tham gia.")
		return
	end
	--¿ªÆô½ø¶ÈÌõ
	tbProgressBar:OpenByConfig(12, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;

function DOIGM()
ForbidEnmity(1);
SetPKFlag(1)
DisabledUseTownP(1);
ChangeOwnFeature(0,0,524);
ForbitSkill(1);
ForbidChangePK(1);
SetMoveSpeed(2);
AddSkillState(464, 20, 0, 18*3000);
AddSkillState(739, 1, 0, 18*3000); --CHIM
AddSkillState(731, 1, 0, 18*3000); --VONG XANH
AddSkillState(313, 60, 0, 18*3000); --TANHINH
AddSkillState(458, 60, 0, 18*3000); --TANHINH
AddSkillState(874, 1, 0, 18*3000); --BAYMAU
SetDeathScript("\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua");
Say("<color=green>L­u ý quý bang chñ kh«ng ®­îc out game trong lóc chuyÓn ph¸o sÏ bÞ kÑt acc 24 tiÕng.", 0)
end


function OnDeath(nPlayerIndex)
add_npc_click()
ForbidEnmity(0);
SetPKFlag(0)
DisabledUseTownP(0);
ForbitSkill(0);
ForbidChangePK(0);
SetMoveSpeed(-2);
RestoreOwnFeature();
AddSkillState(464, 20, 0, 18*30);
AddSkillState(739, 1, 0, 18*30); --CHIM
AddSkillState(731, 1, 0, 18*30); --VONG XANH
AddSkillState(313, 60, 0, 18*30); --TANHINH
AddSkillState(458, 60, 0, 18*30); --TANHINH
AddSkillState(874, 1, 0, 18*30); --BAYMAU
SetDeathScript("");
--KickOutSelf()
Msg2SubWorld("<color=cyan>Ph¸o Sa cña Bang Chñ <color=green>"..GetName().."<color=yellow> BÞ h¹ thñ hoµn toµn ph¸o míi ®· xuÊt hiÖn l¹i t¹i 224/214 Ba L¨ng HuyÖn. .!")	
end
