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


nCityWar_Item_ID_G = 6	--lo¹i
nCityWar_Item_ID_D = 1	--lo¹i
nCityWar_Item_ID_P = 4450	--id vËt phÈm
TIAOZHANLING_TASK_DATE = 2018 -- kkl h»ng ngµy
TIAOZHANLING_TASK_COUNT = 2019 -- sè kkl h»ng ngµy
TIAOZHANLING_LGTYPEE= 539
TIAOZHANLING_LGNameE = "tiaozhanling"
LGTSK_TIAOZHANLING_COUNTT = 1
TASKKKL = 3518

function main()
       dofile("script/global/quanlygame/sukien/banghoitranhhung/thuthapbang.lua");
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate >= 20181202 then
		--Say("<pic=26> §· hÕt thêi gian sù kiÖn hiÖn t¹i ban qu¶n trÞ ®ang chèt sè l­îng ®Ó ph¸t th­ëng cho bang héi dµnh th¾ng cuéc trong cuéc ®ua nµy.", 0);
		Say("§· Cã KÕt Qu¶ Bang Ng¹o Dµnh Th¾ng Lîi.", 0);

		return
	end;
	local tbSay = {}
	tinsert(tbSay,"Ta ®Õn giao Khiªu KhÝch LÖnh cho bæn bang./GiveTiaoZhanLing")
	tinsert(tbSay,"Xem sè l­îng khiªu khÝch lÖnh cña bang./ViewTiaoZhanLing")
	tinsert(tbSay,"Xem tæng sè khiªu khÝch lÖnh ®· ®ãng gãp tõ b¹n./TongKKL")
	--tinsert(tbSay,"Xem c«ng bè xÕp h¹ng Bang Héi Tranh Tµi./citywar_CheckVotes")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i/OnCancel")
	Say("<color=yellow>Thêi gian diÔn ra sù kiÖn tõ 1/11 ®Õn 1/12 Thµnh viªn bang héi tham gia c¸c ho¹t ®éng nhËn ®­îc khiªu khÝch lÖnh tæng kÕt 30 ngµy bang nµo nhiÒu nhÊt sÏ nhËn.<enter>PhÇn th­ëng:1 cÆp v« danh giíi chØ 30 ngµy + 1 ¸o nhu t×nh maxop mçi th¸ng bang héi tranh tµi chØ cã 1 cÆp kh«ng thÓ gia h¹n.Bang thua cuéc khuyÕn khÝch 300xu.<pic=1>", getn(tbSay), tbSay)
end

function TongKKL()
local nTask = GetTask(TASKKKL)
Talk (1, "","<pic=26>T¹i h¹ ®· ®ãng gãp vµo bang tæng <color=yellow>"..nTask.."<color> Khiªu KhÝch LÖnh.<pic=26>")
end

function citywar_CheckVotes()
	local tbVotes = citywar_tbLadder:GetInfo()
	local szMsg = format("<dec>B¶ng xÕp h¹ng Tranh ®o¹t khiªu khÝch lÖnh: <enter>%s%s%s<enter>", strfill_center("STT",4, " "), strfill_center("Bang héi", 20, " "), strfill_center("Sè l­îng", 20, " "))
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
	TaskSayList(szMsg, "C¸m ¬n! Ta ®· râ råi./OnCancel")
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
		LG_SetLeagueInfo(nNewLeagueID, TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE)	--ÉèÖÃÉçÍÅÐÅÏ¢(ÀàÐÍ¡¢Ãû³Æ)
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
			Say("Xin lçi! §¹i hiÖp ch­a gia nhËp bang héi nµo c¶!",0);
			return 0;
	end
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCount = GetTask(TIAOZHANLING_TASK_COUNT);
	if ( nOlddate == nDate and nCount >= 100) then
			Say("Mçi ngµy giao n¹p tèi ®a 100 lÖnh bµi. H«m nay ng­¬i ®· giao 100 lÖnh bµi råi, ngµy mai h·y tiÕp tôc.",0)
			return 0;
	end
	if ( nOlddate ~= nDate ) then
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d"))));
		SetTask(TIAOZHANLING_TASK_COUNT,0);
	end
	----------------- giíi h¹n sè l­îng khiªu khÝch lÖnh-------------------
--	local szlgname = GetTongName();
--	checkCreatLG(szlgname);	
--	checkJoinLG(szlgname);
--	local szTongName, nTongID = GetTongName();
--	local nsum = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)
--	if nsum >= 2000000000 then   --ÉÏÏÞ´ï20ÒÚÔò²»ÄÜÔÙÌá½»
--		Say("Tæng sè vâ l©m lÖnh ®· ®¹t giíi h¹n. Lóc kh¸c thö l¹i vËy.",0)
--		return 0;
--	end
	---------------------më ra giao diÖn giao n¹p
	GiveItemUI("Giao nép khiªu khÝch lÖnh", "Chó ý kh«ng ®­îc xÕp chång khiªu khÝch mµ ph¶i t¸ch ra tr­íc khi bá vµo nÕu kh«ng sÏ mÊt.", "sure_GiveTiaoZhanLing", "OnCancel");
end

function sure_GiveTiaoZhanLing(nCount)
	if nCount <= 0 then
		Say("ThËt ®¸ng tiÕc, ng­¬i ch­a giao vËt phÈm nhiÖm vô cho ta",2,"Giao l¹i vËt phÈm/GiveTiaoZhanLing","§Ó ta suy nghÜ l¹i/OnCancel");
		return 0;
	end
	for i = 1, nCount do
		local nItemidx = GetGiveItemUnit(i);
		local g, d, p = GetItemProp(nItemidx);
		if (g ~= nCityWar_Item_ID_G or d ~= nCityWar_Item_ID_D or p ~= nCityWar_Item_ID_P) then
			Say("Ta kh«ng nhËn nh÷ng thø kh¸c, chØ cÇn ®­a ta <color=yellow>khiªu khÝch lÖnh<color> lµ ®­îc råi.", 2,"Giao l¹i vËt phÈm/GiveTiaoZhanLing","§Ó ta suy nghÜ l¹i/OnCancel");
			return 0;
		end;
	end;
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCountall = GetTask(TIAOZHANLING_TASK_COUNT);
	if ( nOlddate == nDate and nCountall+nCount > 100) then
			Say(format("ThËt ®¸ng tiÕc, h«m nay ng­¬i ®· nép vµo %d khiªu khÝch lÖnh, chØ cÇn nép %d lÖnh bµi n÷a lµ ®­îc råi.",nCountall,100-nCountall),0)
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
	szMsg = ''..GetName().." ®· ®ãng gãp <color=red>"..nCount.."<color> khiªu khÝch lÖnh vµo bang héi bæn bang.Thµnh viªn nµy ®· ®ãng tæng céng<color=green> "..nTask.." <color>khiªu khÝch lÖnh."	
	Msg2Tong(nTongID, szMsg)
	Msg2Player(format("B¹n ®· nép vµo %d khiªu khÝch lÖnh vµo bang héi",nCount))
SetTask(TASKKKL,GetTask(TASKKKL)+nCount)
end;



function ViewTiaoZhanLing()
		local szTongName, nTongID = GetTongName();
		if (nTongID == 0 or ( GetTongFigure() ~= TONG_MASTER and GetTongFigure() ~= TONG_ELDER and GetTongFigure() ~= TONG_MANAGER)) then
			Say("ThËt ®¸ng tiÕc, chØ cã bang chñ cïng tr­ëng l·o vµ ®éi tr­ëng míi cã thÓ xem th«ng tin sè l­îng khiªu khÝch lÖnh.", 0);
			return 0
		end
		checkCreatLG(szTongName);
		checkJoinLG(szTongName);
		local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)		
		Say(format(szTongName.." cña ta míi xøng ®¸ng lµ kÎ v« ®Þch:<pic=18><enter><color=green>HiÖn t¹i bang héi cña ta ®· nép ®­îc <color=yellow>%d<color> khiªu khÝch lÖnh bang bªn ®ã g¸ng cè g¾ng ®uæi kÞp bang anh nhe mÊy ®øa.<enter><pic=77><pic=77><pic=77><pic=77><pic=77><pic=77>",nCurCount),0)


end

function OnCancel()
end;