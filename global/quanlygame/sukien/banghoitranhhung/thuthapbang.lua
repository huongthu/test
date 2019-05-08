IncludeLib("SPREADER")
IncludeLib("SETTING")
IncludeLib("LEAGUE")
IncludeLib("TONG")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\missions\\citywar_arena\\head.lua");
Include("\\script\\missions\\citywar_global\\head.lua");
Include("\\script\\missions\\citywar_global\\citywar_function.lua");
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\lib\\common.lua")
Include("\\script\\missions\\citywar_global\\ladder.lua")


nCityWar_Item_ID_G = 6	--lo�i
nCityWar_Item_ID_D = 1	--lo�i
nCityWar_Item_ID_P = 4450	--id v�t ph�m
TIAOZHANLING_TASK_DATE = 2018 -- kkl h�ng ng�y
TIAOZHANLING_TASK_COUNT = 2019 -- s� kkl h�ng ng�y
TIAOZHANLING_LGTYPEE= 539
TIAOZHANLING_LGNameE = "tiaozhanling"
LGTSK_TIAOZHANLING_COUNTT = 1
TASKKKL = 3518

function main()
       dofile("script/global/quanlygame/sukien/banghoitranhhung/thuthapbang.lua");
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate >= 20181202 then
		--Say("<pic=26> �� h�t th�i gian s� ki�n hi�n t�i ban qu�n tr� �ang ch�t s� l��ng �� ph�t th��ng cho bang h�i d�nh th�ng cu�c trong cu�c �ua n�y.", 0);
		Say("�� C� K�t Qu� Bang Ng�o D�nh Th�ng L�i.", 0);

		return
	end;
	local tbSay = {}
	tinsert(tbSay,"Ta ��n giao Khi�u Kh�ch L�nh cho b�n bang./GiveTiaoZhanLing")
	tinsert(tbSay,"Xem s� l��ng khi�u kh�ch l�nh c�a bang./ViewTiaoZhanLing")
	tinsert(tbSay,"Xem t�ng s� khi�u kh�ch l�nh �� ��ng g�p t� b�n./TongKKL")
	--tinsert(tbSay,"Xem c�ng b� x�p h�ng Bang H�i Tranh T�i./citywar_CheckVotes")
	tinsert(tbSay,"K�t th�c ��i tho�i/OnCancel")
	Say("<color=yellow>Th�i gian di�n ra s� ki�n t� 1/11 ��n 1/12 Th�nh vi�n bang h�i tham gia c�c ho�t ��ng nh�n ���c khi�u kh�ch l�nh t�ng k�t 30 ng�y bang n�o nhi�u nh�t s� nh�n.<enter>Ph�n th��ng:1 c�p v� danh gi�i ch� 30 ng�y + 1 �o nhu t�nh maxop m�i th�ng bang h�i tranh t�i ch� c� 1 c�p kh�ng th� gia h�n.Bang thua cu�c khuy�n kh�ch 300xu.<pic=1>", getn(tbSay), tbSay)
end

function TongKKL()
local nTask = GetTask(TASKKKL)
Talk (1, "","<pic=26>T�i h� �� ��ng g�p v�o bang t�ng <color=yellow>"..nTask.."<color> Khi�u Kh�ch L�nh.<pic=26>")
end

function citywar_CheckVotes()
	local tbVotes = citywar_tbLadder:GetInfo()
	local szMsg = format("<dec>B�ng x�p h�ng Tranh �o�t khi�u kh�ch l�nh: <enter>%s%s%s<enter>", strfill_center("STT",4, " "), strfill_center("Bang h�i", 20, " "), strfill_center("S� l��ng", 20, " "))
	local res = {}
	for i = 1, getn(tbVotes) do
		tinsert(res, strfill_center(i, 4, " "))
		tinsert(res, strfill_center(tbVotes[i].szName, 20, " "))
		tinsert(res, strfill_center(tbVotes[i].nValue, 20, " "))
		tinsert(res, "<enter>")
	end
	PushString(szMsg)
	for i = 1, getn(res) do
		AppendString(res[i])
	end
	szMsg = PopString()
	TaskSayList(szMsg, "C�m �n! Ta �� r� r�i./OnCancel")
end

function checkBangHuiLimit()
	local TongName,TongID = GetTongName();
	if TongName == "" or TongName == nil then
		return 0;
	else
		return 1;
	end
end


function checkCreatLG(szlgname)
	local nlid = LG_GetLeagueObj(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE)
	if nlid == 0 or nlid == nil then
		local nNewLeagueID = LG_CreateLeagueObj()
		LG_SetLeagueInfo(nNewLeagueID, TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE)	--����������Ϣ(���͡�����)
		local ret = LG_ApplyAddLeague(nNewLeagueID, "", "") 
		LG_FreeLeagueObj(nNewLeagueID)
	end
end

function checkJoinLG(szlgname)
	local roleid = LG_GetLeagueObjByRole(TIAOZHANLING_LGTYPEE,szlgname);
	if roleid == 0 or roleid == nil then
		local nMemberID = LGM_CreateMemberObj()
		LGM_SetMemberInfo(nMemberID,szlgname, 0, TIAOZHANLING_LGTYPEE, TIAOZHANLING_LGNameE) 
		local ret = LGM_ApplyAddMember(nMemberID, "", "") 
		LGM_FreeMemberObj(nMemberID)
	end
end

function GiveTiaoZhanLing()
	if checkBangHuiLimit() == 0 then
			Say("Xin l�i! ��i hi�p ch�a gia nh�p bang h�i n�o c�!",0);
			return 0;
	end
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCount = GetTask(TIAOZHANLING_TASK_COUNT);
	if ( nOlddate == nDate and nCount >= 100) then
			Say("M�i ng�y giao n�p t�i �a 100 l�nh b�i. H�m nay ng��i �� giao 100 l�nh b�i r�i, ng�y mai h�y ti�p t�c.",0)
			return 0;
	end
	if ( nOlddate ~= nDate ) then
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d"))));
		SetTask(TIAOZHANLING_TASK_COUNT,0);
	end
	----------------- gi�i h�n s� l��ng khi�u kh�ch l�nh-------------------
--	local szlgname = GetTongName();
--	checkCreatLG(szlgname);	
--	checkJoinLG(szlgname);
--	local szTongName, nTongID = GetTongName();
--	local nsum = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)
--	if nsum >= 2000000000 then   --���޴�20���������ύ
--		Say("T�ng s� v� l�m l�nh �� ��t gi�i h�n. L�c kh�c th� l�i v�y.",0)
--		return 0;
--	end
	---------------------m� ra giao di�n giao n�p
	GiveItemUI("Giao n�p khi�u kh�ch l�nh", "Ch� � kh�ng ���c x�p ch�ng khi�u kh�ch m� ph�i t�ch ra tr��c khi b� v�o n�u kh�ng s� m�t.", "sure_GiveTiaoZhanLing", "OnCancel");
end

function sure_GiveTiaoZhanLing(nCount)
	if nCount <= 0 then
		Say("Th�t ��ng ti�c, ng��i ch�a giao v�t ph�m nhi�m v� cho ta",2,"Giao l�i v�t ph�m/GiveTiaoZhanLing","�� ta suy ngh� l�i/OnCancel");
		return 0;
	end
	for i = 1, nCount do
		local nItemidx = GetGiveItemUnit(i);
		local g, d, p = GetItemProp(nItemidx);
		if (g ~= nCityWar_Item_ID_G or d ~= nCityWar_Item_ID_D or p ~= nCityWar_Item_ID_P) then
			Say("Ta kh�ng nh�n nh�ng th� kh�c, ch� c�n ��a ta <color=yellow>khi�u kh�ch l�nh<color> l� ���c r�i.", 2,"Giao l�i v�t ph�m/GiveTiaoZhanLing","�� ta suy ngh� l�i/OnCancel");
			return 0;
		end;
	end;
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCountall = GetTask(TIAOZHANLING_TASK_COUNT);
	if ( nOlddate == nDate and nCountall+nCount > 100) then
			Say(format("Th�t ��ng ti�c, h�m nay ng��i �� n�p v�o %d khi�u kh�ch l�nh, ch� c�n n�p %d l�nh b�i n�a l� ���c r�i.",nCountall,100-nCountall),0)
			return 0;
	end
	if ( nOlddate ~= nDate ) then
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d"))));
		SetTask(TIAOZHANLING_TASK_COUNT,0);
	end
	local nCityId = getSigningUpCity(1);
	local szTongName, nTongID = GetTongName();
	local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)
	for i = 1, nCount do
		local nItemidx = GetGiveItemUnit(i);
		RemoveItemByIndex(nItemidx)
	end;
                            local nTask = GetTask(TASKKKL)
	SetTask(TIAOZHANLING_TASK_COUNT,nCountall+nCount);	
	LG_ApplyAppendMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE, szTongName, LGTSK_TIAOZHANLING_COUNTT, nCount, "", "");
	szMsg = ''..GetName().." �� ��ng g�p <color=red>"..nCount.."<color> khi�u kh�ch l�nh v�o bang h�i b�n bang.Th�nh vi�n n�y �� ��ng t�ng c�ng<color=green> "..nTask.." <color>khi�u kh�ch l�nh."	
	Msg2Tong(nTongID, szMsg)
	Msg2Player(format("B�n �� n�p v�o %d khi�u kh�ch l�nh v�o bang h�i",nCount))
SetTask(TASKKKL,GetTask(TASKKKL)+nCount)
end;



function ViewTiaoZhanLing()
		local szTongName, nTongID = GetTongName();
		if (nTongID == 0 or ( GetTongFigure() ~= TONG_MASTER and GetTongFigure() ~= TONG_ELDER and GetTongFigure() ~= TONG_MANAGER)) then
			Say("Th�t ��ng ti�c, ch� c� bang ch� c�ng tr��ng l�o v� ��i tr��ng m�i c� th� xem th�ng tin s� l��ng khi�u kh�ch l�nh.", 0);
			return 0
		end
		checkCreatLG(szTongName);
		checkJoinLG(szTongName);
		local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)		
		Say(format(szTongName.." c�a ta m�i x�ng ��ng l� k� v� ��ch:<pic=18><enter><color=green>Hi�n t�i bang h�i c�a ta �� n�p ���c <color=yellow>%d<color> khi�u kh�ch l�nh bang b�n �� g�ng c� g�ng �u�i k�p bang anh nhe m�y ��a.<enter><pic=77><pic=77><pic=77><pic=77><pic=77><pic=77>",nCurCount),0)


end

function OnCancel()
end;