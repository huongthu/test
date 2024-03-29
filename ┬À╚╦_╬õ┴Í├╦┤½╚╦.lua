--提供福缘胳取的NPC
--2004.8.5

Include( "\\script\\global\\fuyuan.lua" )
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua")
--Include("\\script\\event\\storm\\award_npc.lua")	--Storm
Include("\\script\\event\\mid_autumn\\autumn_portal.lua")
Include("\\script\\event\\tongwar\\head.lua")
Include("\\script\\task\\system\\task_string.lua")
Include([[\script\missions\chrismas\ch_head.lua]]);--
--	2007年春襟活动
Include([[\script\event\springfestival07\head.lua]]);
--武钢割活动
Include( "\\script\\event\\wulinling\\wulinling.lua" )
Include( "\\script\\event\\nanfangjiefangri\\event.lua" )
Include("\\script\\event\\tongwar\\head.lua");
--dinhhq_20110124:Vip acc 2011
Include("\\script\\vng_event\\vip_account_2011\\npc\\volamtruyennhan.lua")

function main()
	
	-- 凡是涉及到活动的武钢匪传人对话皆插入到此数组 -- 佩底斯 2006/03/20
	local aryTalk  = {};
	local ndate = tonumber(GetLocalDate("%Y%m%d%H"));
	local Uworld1000 = nt_getTask(1000);
	
	tinsert(aryTalk, "<dec><npc>Giang h� ph﹏ tranh gi� n鎖 m﹜ v莕. Ch� v� cao th� v� l﹎ ch竛h ngh躠, t筼 ph骳 thng sinh, nh� th� m韎 c� th� tr� th祅h m閠 i hi謕, 頲 m鋓 ngi ngng m� .");
	--dinhhq_20110124:Vip acc 2011
	tbVNG_VipAcc2011_VLTN:addDialog(aryTalk)
	
	if ndate >= 2007042800 and ndate <= 2007051324 then
	tinsert(aryTalk,"Ho箃 ng ng祔 gi秈 ph鉵g /nanfangjiefangri_main");
	end
	if (not FALSE(tongwar_checkinphase())) then
		tinsert(aryTalk,"Bang h閕 chi課 /tongWar_Start");
	end;
	
	tinsert(aryTalk, "Th莕 b�/honor_hall_enter");
	
	tinsert(aryTalk, "Minh Nguy謙 tr蕁/autumn_enter");
	
	tinsert(aryTalk, "Nh薾 ph骳 duy猲 /OnGain_Self");

	if( GetTeamSize() > 1 ) then
		tinsert(aryTalk, "Nh薾 ph骳 duy猲 c� i /OnGain_Team");
	end;
	
	tinsert(aryTalk, "Nh薾 甶觤 danh v鋘g /W33_prise");
	
	tinsert(aryTalk, "Ki觤 tra th阨 gian t輈h l騳 Online /OnQueryTime");
	
	tinsert(aryTalk, "Li猲 quan t韎 ph骳 duy猲/OnAbout");
	
	tinsert(aryTalk, "H駓 b�/OnCancel");
	
	if ( Uworld1000 ==340 ) or ( Uworld1000 == 350 ) then
		education_wulinmengchuanren();
		return
	end;
	
	CreateTaskSay(aryTalk);
	
	
end

--胳取萱家本人的福缘点数
function OnGain_Self()
	if( IsCharged() ~= 1 ) then
		Say( "Ngi ch璦  th阨 gian t輈h l騳  nh薾 ph骳 duy猲.", 0 );
		return
	end
	if (GetTiredDegree() == 2) then
		Say( "Ngi c� v�  m謙 m醝 r錳, h穣 甶 ngh� ng琲 甶 !", 0 );
		return
	end;
	if( GetTask( TASKID_FY_START_ONLINE_TIME ) == 0 ) then
		Say( "Ngi m韎 s� nh藀 giang h�, n琲 n祔 l� m閠 l� v藅 nh�, h穣 nh薾 l蕐.", 0 );
		FuYuan_Start();
		FuYuan_Add( 2 );
		return
	end
	local nResult = FuYuan_Gain();
	if( nResult == 0 ) then
		Say( "Ngi x玭g pha giang h� nh璶g v蒼 ch璦  gi� t輈h l騳! ", 0 );
	elseif( nResult == 1 ) then
		Say( "Ngi x玭g pha giang h�  l﹗, c騨g c� 1 ch髏 c玭g lao, y ph莕 thng c馻 ngi.", 0 );
	end
end

--胳取萱家队伍所有成员的福缘点数
function OnGain_Team()
	if( IsCharged() ~= 1 ) then
		Say( "Ngi ch璦  th阨 gian t輈h l騳  nh薾 ph骳 duy猲.", 0 );
		return
	end
	if (GetTiredDegree() == 2) then
		Say( "Ngi c� v�  m謙 m醝 r錳, h穣 甶 ngh� ng琲 甶 !", 0 );
		return
	end;
	if( GetTask( TASKID_FY_START_ONLINE_TIME ) == 0 ) then
		Say( "Ngi m韎 s� nh藀 giang h�, n琲 n祔 l� m閠 l� v藅 nh�, h穣 nh薾 l蕐.", 0 );
		FuYuan_Start();
		FuYuan_Add( 2 );
		return
	end
	local nPreservedPlayerIndex = PlayerIndex;
	local nMemCount = GetTeamSize();
	local bAllUnavailable = 1;
	for i = 1, nMemCount do
		PlayerIndex = GetTeamMember( i );
		if( FuYuan_Gain() == 1 ) then
			bAllUnavailable = 0;
		end		
	end
	PlayerIndex = nPreservedPlayerIndex;
	if( bAllUnavailable == 0 ) then
		Say( "Ngi x玭g pha giang h�  l﹗, c騨g c� 1 ch髏 c玭g lao, y ph莕 thng c馻 ngi.", 0 );
	else
		Say( "Ngi x玭g pha giang h� nh璶g v蒼 ch璦  gi� t輈h l騳! ", 0 );
	end
end

--查询当前可换取福缘的帝积泽线时间
function OnQueryTime()
	if( IsCharged() ~= 1 ) then
		Say( "Ngi ch璦  th阨 gian t輈h l騳  nh薾 ph骳 duy猲.", 0 );
		return
	end
	if( GetTask( TASKID_FY_START_ONLINE_TIME ) == 0 ) then
		Say( "Ngi m韎 s� nh藀 giang h�, n琲 n祔 l� m閠 l� v藅 nh�, h穣 nh薾 l蕐.", 0 );
		FuYuan_Start();
		FuYuan_Add( 2 );
		return
	end
	local nFYTotalTime, FYValidTime = FuYuan_GetDepositTime();
	Say( "<#>K� t� l莕 nh薾 ph骳 duy猲 trc, ngi  t輈h l騳 <color=yellow>"..timeToString( nFYTotalTime ).."<#><color> th阨 gian Online", 0 );
end

--关芋福缘
function OnAbout()
	Talk( 3, "", "Ph骳 duy猲 甶觤 m: Th玭g qua t輈h l騳 th阨 gian ch琲, c� th� i 甶觤 ph骳 duy猲. C� th� t韎 Tng Dng th莕 b� thng nh﹏ Li評 ?t i c竎 lo筰 v藅 ph萴 c th�. ", " Ph骳 duy猲 i:t輈h l騳 hai gi� online tr� l猲 , 甶 c竎 i th祅h th� t譵 v� l﹎ minh ch� truy襫 nh﹏ l� 頲 i . m閠 ng祔 頲 i 2 l莕, t輈h l騳 � tuy課 th阨 gian 4 gi� tr� l猲, m鏸 gi� i 1 甶觤 ph骳 duy猲.", "H筺 ch� 甶襲 ki謓 :Ng錳 t� kh玭g 頲 t輈h l騳 甶觤 ph骳 duy猲." );
end


function W33_prise()				-- 泽线时间溯声蓰任务

Uworld33 = GetTask(33)

if (GetGameTime() - Uworld33 >= 43200) then

	SetTask(33,GetGameTime())
	Talk(1,"","V� l﹎ minh ch� truy襫 nh﹏: Ta nh譶 th蕐 s� c� g緉g � trong m総 c馻 ngi, ngi ti課 b� ta c騨g r蕋 vui m鮪g. H穣 ti誴 t鬰 c� g緉g l猲 !")
	i = random(0,99)
	if (i < 19) then			-- 19%
		AddRepute(1)
		Msg2Player("Danh v鋘g t╪g l猲 1 甶觤. ")
	elseif (i < 36) then		-- 17%
		AddRepute(2)
		Msg2Player("Danh v鋘g t╪g l猲 2 甶觤. ")
	elseif (i < 51) then		-- 15%
		AddRepute(3)
		Msg2Player("Danh v鋘g t╪g l猲 3 甶觤. ")
	elseif (i < 64) then		-- 13%
		AddRepute(4)
		Msg2Player("Danh v鋘g t╪g l猲 4 甶觤. ")
	elseif (i < 75) then		-- 11%
		AddRepute(5)
		Msg2Player("Danh v鋘g t╪g l猲 5 甶觤. ")
	elseif (i < 84) then		-- 9%
		AddRepute(6)
		Msg2Player("Danh v鋘g t╪g l猲 6 甶觤. ")
	elseif (i < 91) then		-- 7%
		AddRepute(7)
		Msg2Player("Danh v鋘g t╪g l猲 7 甶觤. ")
	elseif (i < 96) then		-- 5%
		AddRepute(8)
		Msg2Player("Danh v鋘g t╪g l猲 8 甶觤. ")
	elseif (i < 99) then		-- 3%
		AddRepute(9)
		Msg2Player("Danh v鋘g t╪g l猲 9 甶觤. ")
	else							-- 1% (i = 99)
		AddRepute(10)
		Msg2Player("Danh v鋘g t╪g l猲 10 甶觤. ")
	end

else

	Say("V� l﹎ minh ch� truy襫 nh﹏: Ngi v蒼 ch璦  甶襲 ki謓  nh薾 danh v鋘g. H穣 c� g緉g h琻 n鱝! ",0)

end

end



--取消
function OnCancel()
end

function timeToString( time )
	local nHour = floor( time / 3600 );
	local nMinute = mod( floor( time / 60 ), 60 );
	local nSecond = mod( time, 60 );
	return nHour.."<#>gi� "..nMinute.."<#>ph髏 "..nSecond.."<#>gi﹜";	
end

function honor_hall_enter()
    NewWorld(897, 1553, 3329);
end
