--�ṩ��Ե��ȡ��NPC
--2004.8.5

Include( "\\script\\global\\fuyuan.lua" )
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua")
--Include("\\script\\event\\storm\\award_npc.lua")	--Storm
Include("\\script\\event\\mid_autumn\\autumn_portal.lua")
Include("\\script\\event\\tongwar\\head.lua")
Include("\\script\\task\\system\\task_string.lua")
Include([[\script\missions\chrismas\ch_head.lua]]);--
--	2007�괺��
Include([[\script\event\springfestival07\head.lua]]);
--��ָ�
Include( "\\script\\event\\wulinling\\wulinling.lua" )
Include( "\\script\\event\\nanfangjiefangri\\event.lua" )
Include("\\script\\event\\tongwar\\head.lua");
--dinhhq_20110124:Vip acc 2011
Include("\\script\\vng_event\\vip_account_2011\\npc\\volamtruyennhan.lua")

function main()
	
	-- �����漰�������ַ˴��˶Ի��Բ��뵽������ -- ���˹ 2006/03/20
	local aryTalk  = {};
	local ndate = tonumber(GetLocalDate("%Y%m%d%H"));
	local Uworld1000 = nt_getTask(1000);
	
	tinsert(aryTalk, "<dec><npc>Giang h� ph�n tranh gi� n�i m�y v�n. Ch� v� cao th� v� l�m ch�nh ngh�a, t�o ph�c th��ng sinh, nh� th� m�i c� th� tr� th�nh m�t ��i hi�p, ���c m�i ng��i ng��ng m� .");
	--dinhhq_20110124:Vip acc 2011
	tbVNG_VipAcc2011_VLTN:addDialog(aryTalk)
	
	if ndate >= 2007042800 and ndate <= 2007051324 then
	tinsert(aryTalk,"Ho�t ��ng ng�y gi�i ph�ng /nanfangjiefangri_main");
	end
	if (not FALSE(tongwar_checkinphase())) then
		tinsert(aryTalk,"Bang h�i chi�n /tongWar_Start");
	end;
	
	tinsert(aryTalk, "Th�n b�/honor_hall_enter");
	
	tinsert(aryTalk, "Minh Nguy�t tr�n/autumn_enter");
	
	tinsert(aryTalk, "Nh�n ph�c duy�n /OnGain_Self");

	if( GetTeamSize() > 1 ) then
		tinsert(aryTalk, "Nh�n ph�c duy�n c� ��i /OnGain_Team");
	end;
	
	tinsert(aryTalk, "Nh�n �i�m danh v�ng /W33_prise");
	
	tinsert(aryTalk, "Ki�m tra th�i gian t�ch l�y Online /OnQueryTime");
	
	tinsert(aryTalk, "Li�n quan t�i ph�c duy�n/OnAbout");
	
	tinsert(aryTalk, "H�y b�/OnCancel");
	
	if ( Uworld1000 ==340 ) or ( Uworld1000 == 350 ) then
		education_wulinmengchuanren();
		return
	end;
	
	CreateTaskSay(aryTalk);
	
	
end

--��ȡ��ұ��˵ĸ�Ե����
function OnGain_Self()
	if( IsCharged() ~= 1 ) then
		Say( "Ng��i ch�a �� th�i gian t�ch l�y �� nh�n ph�c duy�n.", 0 );
		return
	end
	if (GetTiredDegree() == 2) then
		Say( "Ng��i c� v� �� m�t m�i r�i, h�y �i ngh� ng�i �i !", 0 );
		return
	end;
	if( GetTask( TASKID_FY_START_ONLINE_TIME ) == 0 ) then
		Say( "Ng��i m�i s� nh�p giang h�, n�i n�y l� m�t l� v�t nh�, h�y nh�n l�y.", 0 );
		FuYuan_Start();
		FuYuan_Add( 2 );
		return
	end
	local nResult = FuYuan_Gain();
	if( nResult == 0 ) then
		Say( "Ng��i x�ng pha giang h� nh�ng v�n ch�a �� gi� t�ch l�y! ", 0 );
	elseif( nResult == 1 ) then
		Say( "Ng��i x�ng pha giang h� �� l�u, c�ng c� 1 ch�t c�ng lao, ��y ph�n th��ng c�a ng��i.", 0 );
	end
end

--��ȡ��Ҷ������г�Ա�ĸ�Ե����
function OnGain_Team()
	if( IsCharged() ~= 1 ) then
		Say( "Ng��i ch�a �� th�i gian t�ch l�y �� nh�n ph�c duy�n.", 0 );
		return
	end
	if (GetTiredDegree() == 2) then
		Say( "Ng��i c� v� �� m�t m�i r�i, h�y �i ngh� ng�i �i !", 0 );
		return
	end;
	if( GetTask( TASKID_FY_START_ONLINE_TIME ) == 0 ) then
		Say( "Ng��i m�i s� nh�p giang h�, n�i n�y l� m�t l� v�t nh�, h�y nh�n l�y.", 0 );
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
		Say( "Ng��i x�ng pha giang h� �� l�u, c�ng c� 1 ch�t c�ng lao, ��y ph�n th��ng c�a ng��i.", 0 );
	else
		Say( "Ng��i x�ng pha giang h� nh�ng v�n ch�a �� gi� t�ch l�y! ", 0 );
	end
end

--��ѯ��ǰ�ɻ�ȡ��Ե�ĵۻ�����ʱ��
function OnQueryTime()
	if( IsCharged() ~= 1 ) then
		Say( "Ng��i ch�a �� th�i gian t�ch l�y �� nh�n ph�c duy�n.", 0 );
		return
	end
	if( GetTask( TASKID_FY_START_ONLINE_TIME ) == 0 ) then
		Say( "Ng��i m�i s� nh�p giang h�, n�i n�y l� m�t l� v�t nh�, h�y nh�n l�y.", 0 );
		FuYuan_Start();
		FuYuan_Add( 2 );
		return
	end
	local nFYTotalTime, FYValidTime = FuYuan_GetDepositTime();
	Say( "<#>K� t� l�n nh�n ph�c duy�n tr��c, ng��i �� t�ch l�y <color=yellow>"..timeToString( nFYTotalTime ).."<#><color> th�i gian Online", 0 );
end

--����Ե
function OnAbout()
	Talk( 3, "", "Ph�c duy�n �i�m ��m: Th�ng qua t�ch l�y th�i gian ch�i, c� th� ��i �i�m ph�c duy�n. C� th� t�i T��ng D��ng th�n b� th��ng nh�n Li�u ?t ��i c�c lo�i v�t ph�m ��c th�. ", " Ph�c duy�n ��i:t�ch l�y hai gi� online tr� l�n , �i c�c ��i th�nh th� t�m v� l�m minh ch� truy�n nh�n l� ���c ��i . m�t ng�y ���c ��i 2 l�n, t�ch l�y � tuy�n th�i gian 4 gi� tr� l�n, m�i gi� ��i 1 �i�m ph�c duy�n.", "H�n ch� �i�u ki�n :Ng�i t� kh�ng ���c t�ch l�y �i�m ph�c duy�n." );
end


function W33_prise()				-- ����ʱ������������

Uworld33 = GetTask(33)

if (GetGameTime() - Uworld33 >= 43200) then

	SetTask(33,GetGameTime())
	Talk(1,"","V� l�m minh ch� truy�n nh�n: Ta nh�n th�y s� c� g�ng � trong m�t c�a ng��i, ng��i ti�n b� ta c�ng r�t vui m�ng. H�y ti�p t�c c� g�ng l�n !")
	i = random(0,99)
	if (i < 19) then			-- 19%
		AddRepute(1)
		Msg2Player("Danh v�ng t�ng l�n 1 �i�m. ")
	elseif (i < 36) then		-- 17%
		AddRepute(2)
		Msg2Player("Danh v�ng t�ng l�n 2 �i�m. ")
	elseif (i < 51) then		-- 15%
		AddRepute(3)
		Msg2Player("Danh v�ng t�ng l�n 3 �i�m. ")
	elseif (i < 64) then		-- 13%
		AddRepute(4)
		Msg2Player("Danh v�ng t�ng l�n 4 �i�m. ")
	elseif (i < 75) then		-- 11%
		AddRepute(5)
		Msg2Player("Danh v�ng t�ng l�n 5 �i�m. ")
	elseif (i < 84) then		-- 9%
		AddRepute(6)
		Msg2Player("Danh v�ng t�ng l�n 6 �i�m. ")
	elseif (i < 91) then		-- 7%
		AddRepute(7)
		Msg2Player("Danh v�ng t�ng l�n 7 �i�m. ")
	elseif (i < 96) then		-- 5%
		AddRepute(8)
		Msg2Player("Danh v�ng t�ng l�n 8 �i�m. ")
	elseif (i < 99) then		-- 3%
		AddRepute(9)
		Msg2Player("Danh v�ng t�ng l�n 9 �i�m. ")
	else							-- 1% (i = 99)
		AddRepute(10)
		Msg2Player("Danh v�ng t�ng l�n 10 �i�m. ")
	end

else

	Say("V� l�m minh ch� truy�n nh�n: Ng��i v�n ch�a �� �i�u ki�n �� nh�n danh v�ng. H�y c� g�ng h�n n�a! ",0)

end

end



--ȡ��
function OnCancel()
end

function timeToString( time )
	local nHour = floor( time / 3600 );
	local nMinute = mod( floor( time / 60 ), 60 );
	local nSecond = mod( time, 60 );
	return nHour.."<#>gi� "..nMinute.."<#>ph�t "..nSecond.."<#>gi�y";	
end

function honor_hall_enter()
    NewWorld(897, 1553, 3329);
end
