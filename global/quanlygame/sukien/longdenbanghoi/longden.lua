IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
--Include( "\\script\\item\\checkmapid.lua" )
IncludeLib("TASKSYS");

NPC_Clickdb = {
	{1414,80,4,100,1624,2976,0,"Long Trô",0,"\\script\\global\\quanlygame\\sukien\\longdenbanghoi\\longden.lua","main", 0},   
}
NPC_nhentinh1 = {
	{1631,90,4,53,1630,3309,0,"NhÒn NhÖn Tinh",0,"","", 0},   
}
NPC_nhentinh2 = {
	{1631,90,4,53,1637,3305,0,"NhÒn NhÖn Tinh",0,"","", 0},   
}



function add_npc_click()
	call_npc(NPC_Clickdb)
	--call_npc(NPC_nhentinh1)
	--call_npc(NPC_nhentinh2)
end
function call_npc(tbnpc) 
		for i = 1 , getn(tbnpc) do 
			Mid = SubWorldID2Idx(tbnpc[i][4]); 
			if (Mid >= 0 ) then 
				TabValue5 = tbnpc[i][5] * 32; 
				TabValue6 = tbnpc[i][6] * 32; 
				local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]); 
				SetNpcScript(nNpcIdx, tbnpc[i][10]); 
                                                                                                              AddTimer(1800* 18, "OnTimeout", nNpcIdx);

			end; 
	end; 
end



local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ tham gia.")
		return
	end

	if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("ChØ cã bang chñ míi ®ñ t­ c¸ch.")
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
		Msg2Player("Ch­a gia nhËp bang héi, hoÆc kh«ng ph¶i lµ bang chñ kh«ng thÓ ®o¹t.");
		return
                      end
	local szTongName, nTongID = GetTongName();
	local figure = TONGM_GetFigure(nTongID, GetName())
	if (figure ~= TONG_MASTER) then
		Msg2Player("<color=green>ChØ cã bang chñ míi cã ®ñ t­ c¸ch");
		return
	end;

	return nGetSeedLevel
end
	
local _GetFruit = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return
	end
	local nGetSeedLevel = %_Limit(nNpcIdx)
	
	if nGetSeedLevel == nil then
		return
	end
	
	DelNpc(nNpcIdx)
	tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=200,},}, "test", 1);


 Msg2SubWorld("<color=cyan>Bang Chñ <color=green>"..GetName().."<color=yellow> §· ®o¹t thµnh c«ng Long Trô vµ<color=green> NhËn phÇn th­ëng cao quý  .!")	
end


local _OnBreak = function()
                      Msg2Player("<color=cyan>B¹n bÞ ®· th­¬ng<color=green> kh«ng thÓ ®o¹t trô.!")
end

function main()
--dofile("script/global/quanlygame/sukien/longdenbanghoi/longden.lua");
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
if GetLastFactionNumber() == 5 then
AddMagic(713,20)
end
	if (GetFightState() == 0 or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("Tr¹ng th¸i dÞ th­êng phi chiÕn ®Êu kh«ng thÓ tham gia.")
		return
	end	--¿ªÆô½ø¶ÈÌõ
	tbProgressBar:OpenByConfig(20, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
Msg2SubWorld("<color=cyan>Long Trô §· BiÕn MÊt!")
end