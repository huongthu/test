-- Ò°ÛÅÈÎÎñÁ´½Å±¾
-- Edited by peres
-- 2004/12/24 Ê¥µ®½ÚÇ°Ò¹

IncludeLib("FILESYS");
IncludeLib("RELAYLADDER");	--ÅÅĞĞ°ñ
Include("\\script\\task\\newtask\\tasklink\\tasklink_head.lua"); -- ÈÎÎñÁ´µÄÍ·ÎÄ¼ş
Include("\\script\\task\\newtask\\tasklink\\tasklink_award.lua"); -- ÈÎÎñÁ´µÄ½±ÀøÍ·ÎÄ¼ş
Include("\\script\\event\\storm\\function.lua")	--Storm
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

--Storm ÕæÕıµÄ½ÓĞ¢ÈÎÎñ
function storm_goon_start(gameid, b_nonext)
	
	local nNum     = GetTask(ID_TASKLINK_LIMITNUM);
	
		-- Ã¿ÌìµÄÏŞÖÆ´ÎÊı +1
		nNum = nNum + 1;
		SetTask(ID_TASKLINK_LIMITNUM, nNum);
		
	if b_nonext then return end
	tl_dealtask()
	Task_MainDialog()
end

-- ¼ì²âÈÎÎñÊÇ·ñÒÑ¾­¹ıÁËÃ¿ÌìµÄÏŞÖÆ
function checkTask_Limit()
	
-- Ã¿ÌìÏŞÖÆ´ÎÊıµÄ´¦Àí
local nNowDate = tonumber(GetLocalDate("%y%m%d"));
local nOldDate = GetTask(ID_TASKLINK_LIMITDATE);
local nNum     = GetTask(ID_TASKLINK_LIMITNUM);
	
	if nNowDate~=nOldDate then
		
		SetTask(ID_TASKLINK_LIMITDATE, tonumber(GetLocalDate("%y%m%d")) );
		SetTask(ID_TASKLINK_LIMITNUM, 0);
		SetTask(ID_TASKLINK_LIMITCancelCount, 0);
		return 1;
		
	else
		-- 40 ´ÎµÄÏŞÖÆ
		if nNum>=40 then
			Say("Mçi ngµy kh«ng thÓ lµm qu¸ 40 nhiÖm vô ", 0);
			return 0;
		end;
		
		return 1;

	end;
	
end;
	
	
--Task_BuyGoods = {}
--Task_FindGoods = {}
--Task_ShowGoods = {}
--Task_FindMaps = {}
--Task_UpGround = {}
--Task_WorldMaps = {}
--Task_Level = {}
--Task_MainLevelRate = {}


-- ¹¹ÔìÈÎÎñÄÚ´æ±äÁ¿
Task_BuyGoods = AssignValue(Task_BuyGoods,TL_BUYGOODS)
Task_FindGoods = AssignValue(Task_FindGoods,TL_FINDGOODS)
Task_ShowGoods = AssignValue(Task_ShowGoods,TL_SHOWGOODS)
Task_FindMaps = AssignValue(Task_FindMaps,TL_FINDMAPS)
Task_UpGround = AssignValue(Task_UpGround,TL_UPGROUND)
Task_WorldMaps = AssignValue(Task_WorldMaps,TL_WORLDMAPS)

Task_MainTaskLink = AssignValue_TaskLink(Task_MainTaskLink,TL_LEVELLINK)
Task_MainLevelRate = AssignValue_TaskRate(Task_MainLevelRate,TL_MAINTASKLEVEL)

-- ¹¹Ôì½±ÀøÄÚ´æ±äÁ¿
Task_AwardBasic = AssignValue_Award(Task_AwardBasic,TL_AWARDBASIC)

-- ¹¹ÔìÍê³É´ÎÊıµÄ½±Àø
Task_AwardLink = AssignValue_LinkAward(TL_AWARDLINK)

Task_AwardLoop = AssignValue_Award(Task_AwardLoop,TL_AWARDLOOP)

-- ¹¹Ôì¶Ô»°ÄÚÈİÄÚ´æ±äÁ¿
Task_TalkGoods = AssignValue_TaskTalk(Task_TalkGoods,TL_TASKGOODSTALK)
Task_TalkBuy = AssignValue_TaskTalk(Task_TalkBuy,TL_TASKBUYTALK)
Task_TalkShow = AssignValue_TaskTalk(Task_TalkShow,TL_TASKSHOWTALK)
Task_TalkFind = AssignValue_TaskTalk(Task_TalkFind,TL_TASKFINDMAPS)
Task_TalkUp = AssignValue_TaskTalk(Task_TalkUp,TL_TASKUPGROUNDTALK)
Task_TalkWorld = AssignValue_TaskTalk(Task_TalkWorld,TL_TASKWORLDTALK)


function Task_NewVersionAward()
	
	local nNum = GetTask(ID_TASKLINK_LIMITNUM);
	local nCancelNum = GetTask(ID_TASKLINK_LIMITCancelCount);
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "yesourenwu")
	G_ACTIVITY:OnMessage("FinishYesou", nNum, nCancelNum);
	
	-- Ã¿ÌìÍê³ÉµÚ30¸ö¶îÍâ½±Àø
	if (nNum - nCancelNum) == 30 then
		Msg2Player("chóc mõng ng­¬i , hoµn thµnh 30 d· tÈu nhiÖm vô , ®¹t ®­îc phÇn th­ëng ");
		tbAwardTemplet:GiveAwardByList({nExp_tl = 30000000}, "§¹t ®­îc phÇn th­ëng")
	end
	
	-- Ã¿ÌìÍê³ÉµÚ40¸ö¶îÍâ½±Àø
	if (nNum == 40 and nCancelNum) == 0 then
		Msg2Player("chóc mõng ng­¬i , hoµn thµnh 40 d· tÈu nhiÖm vô , ®¹t ®­îc phÇn th­ëng");
		tbAwardTemplet:GiveAwardByList({nExp_tl = 100000000}, "§¹t ®­îc phÇn th­ëng")
	end	
	
end


function main()

	--ÓĞÓÛÀ¼½Ú»î¶¯ÆÚ¼ä¶Ô»°¡£
--	local nDate = tonumber(GetLocalDate("%y%m%d"));
--	if (nDate >= 60808 and nDate <= 60815) then
--		local tab_Content = {
--			"Xem cßn nhiÖm vô g× ®Ó lµm kh«ng/tasklink_entence",
--		}
--		tinsert(tab_Content, "Ta muèn lµm mét vßng Liªn Hoa/menglanjie");
--		tinsert(tab_Content, "Rêi khái/Task_Wait");
--		Say("MÊy n¨m nay chiÕn tranh triÒn miªn, d©n t×nh thèng kh? Ph­¬ng tr­îng ThiÕu L©m t?muèn t?chøc th?trai mõng L?Vu Lan ®Ó mäi ng­êi h­ëng chót gi©y phót yªn b×nh", getn(tab_Content), tab_Content);
--		return
--	end;
	
	tasklink_entence();
end;

function menglanjie()
	if (GetExtPoint(0) <= 0 or GetLevel() < 30) then
		Say("Xin lçi! Ch?c?ng­êi ch¬i t?cÊp <color=red>30, ®· n¹p th?color> míi c?th?tham gia ho¹t ®éng nµy", 0)
		return 
	end;
	local tab_Content = {
		"Ta muèn kÕt vßng Kim Liªn Hoa [cÇn 9 Kim Liªn Hoa]/#process(1)",
		"Ta muèn hîp thµnh vßng Méc Liªn Hoa [cÇn 9 Méc Liªn Hoa]/#process(2)",
		"Ta muèn hîp thµnh vßng Thñy Liªn Hoa [cÇn 9 Thñy Liªn Hoa]/#process(3)",
		"Ta muèn hîp thµnh vßng Háa Liªn Hoa [cÇn 9 Háa Liªn Hoa]/#process(4)",
		"Ta muèn hîp thµnh vßng Th?Liªn Hoa [cÇn 9 Th?Liªn Hoa]/#process(5)",
		"Ch?®Õn th¨m «ng chót th«i!/Task_Wait"
	}
	Say("Ch?cÇn ng­¬i ®i thu thËp ®ñ s?Liªn Hoa v?<color=yellow>"..MAKING_COST.."<color> l­îng ta s?gióp ng­¬i kÕt vßng hoa tuyÖt ®Ñp. Nh­ng l­u ? mçi ngµy ch?c?th?kÕt ®­îc 2 vßng Liªn Hoa cïng thuéc tİnh m?th«i.", getn(tab_Content), tab_Content);
end;

--{name, product}
MAKING_COST = 10000;
MAKING_COUNT = 9;
tab_Flower = {
	{1126, "½ğ", 1131, 1760, 1761}, {1127, "Ä¾", 1132, 1762, 1763}, {1128, "Ë® ", 1133, 1764, 1765}, {1129, "»ğ", 1134, 1766, 1767}, {1130, "ÍÁ", 1135, 1768, 1769}
}

function process(nIdx)
	if (nIdx < 1 or nIdx > getn(tab_Flower)) then
		return
	end;
	
	local nIndex;
	if (nIdx == 1) then
		nIndex = 1;
	elseif (nIdx == 2) then
		nIndex = 2;
	elseif (nIdx == 3) then
		nIndex = 3;
	elseif (nIdx == 4) then
		nIndex = 4;
	elseif (nIdx == 5) then
		nIndex = 5;
	end;
	
	Say("Muèn lµm 1 vßng <color=yellow>"..tab_Flower[nIdx][2].." Liªn Hoa<color> cÇn c?9 <color=yellow>"..tab_Flower[nIdx][2].."Liªn Hoa<color>. Ng­¬i x¸c ®Şnh lµm ch?", 2, "§óng! Xin l·o bèi tr?tµi!/#make_round("..nIndex..")", "Ta s?quay l¹i sau!/Task_Wait");
end;

function make_round(nIdx)
	if (GetCash() < MAKING_COST) then
		Say("Xin t×m ®ñ 10000 l­îng råi h·y quay l¹i! Ta ?®©y ch?", 1, "§­îc th«i! Ta ®i lÊy thªm tiÒn!/Task_Wait");
		return
	end;
	
	local nCount = CalcEquiproomItemCount(6,1,tab_Flower[nIdx][1],-1);
	if (nCount < 9) then
		Say("Ng­¬i h×nh nh?ch­a ®ñ <color=yellow>"..tab_Flower[nIdx][2].." Liªn Hoa<color=yellow>. Ch­a ®ñ 9 <color=yellow>"..tab_Flower[nIdx][2].." Liªn Hoa<color> th?ta kh«ng th?gióp ng­¬i kÕt vßng "..tab_Flower[nIdx][2].." Liªn Hoa hoµn", 1, "§Ó ta ®i chuÈn b?®·!/Task_Wait");
		return
	end;
	
	local nDate = tonumber(GetLocalDate("%y%m%d"));
	if (nDate ~= GetTask(tab_Flower[nIdx][4])) then
		SetTask(tab_Flower[nIdx][4], nDate);
		SetTask(tab_Flower[nIdx][5], 0);
	end;
	
	local nTimes = GetTask(tab_Flower[nIdx][5]);
	if (nTimes >= 2) then
		Say(tab_Flower[nIdx][2].."H«m nay ®· kÕt thµnh c«ng 2 vßng råi! Mai h·y ®Õn nh?", 0)
		return
	end;
	
	Pay(MAKING_COST);
	ConsumeEquiproomItem(9, 6, 1, tab_Flower[nIdx][1], -1);
	SetTask(tab_Flower[nIdx][5], nTimes + 1);
	AddItem(6, 1, tab_Flower[nIdx][3], 1, 0, 0, 0);
	Say("Vßng "..tab_Flower[nIdx][2].." Liªn Hoa cña ng­¬i ®· kÕt xong. H·y mang n?®Õn ch?L?Quan ®i!", 1, "NhËn vßng hoa/Task_Wait");
	Msg2Player("B¹n nhËn ®­îc mét"..tab_Flower[nIdx][2].." Liªn Hoa hoµn");
end;
    
-- ÈÎÎñÁ´µÄÈë¿Ú
function tasklink_entence()

_TaskLinkDebug() -- ¶ÔÓÚÈÎÎñÁ´ÎŞ·¨½øĞĞÏ¢È¥µÄ BUG ĞŞ¸´

local myTaskTimes = tl_gettaskstate(1) -- Íæ¼Ò½øĞĞµ½µÄ´ÎÊı
local myTaskLinks = tl_gettaskstate(2) -- Íæ¼Ò½øĞĞµ½µÄÁ´Êı
local myTaskLoops = tl_gettaskstate(3) -- Íæ¼Ò½øĞĞµ½µÄ»·Êı
local myTaskCancel = tl_gettaskstate(4) -- Íæ¼Ò¿ÉÒÔÈ¡ÏûµÄ´ÎÊı

local myCountLinks
local myCountTimes

local myCanceled = nt_getTask(1036)
local myTaskTime = GetGameTime() -- »ñÈ¡ÓÎÏ·Ê±¼ä£¬ÓÃÒÔÅĞ¶ÏÍæ¼ÒÊÇ·ñ±»·â
local n = myTaskTime - nt_getTask(1029)
local myTaskInfo = ""


-- Èç¹ûÍæ¼Òµ±Ç°µÄ×´Ì¬Îª»¹Î´·¢½±µÄ»°£¬ÔòÖØĞ¢·¢½±
if (tl_gettaskcourse() == 2) then
	Task_GiveAward()
	return
end

	if ( myCanceled == 10) then
		if (n < 605) then
			Task_Punish()
			return
		else
			myCanceled = 0
			nt_setTask(1036,0)
			Task_Confirm()
		end
	end

	if (tl_gettaskcourse() == 0) then
		-- Èç¹û»¹Ã»ÓĞ¿ªÊ¼Ò°ÛÅµÄÈÎÎñÁ´µÄ»°
		Say(" VŞ nµy"..GetPlayerSex().."xem ra ®· b«n ba giang hå ®­îc mét thêi gian dµi råi nhØ cã muèn tham gia kh¶o nghiÖm nhiÖm vô liªn tôc cña ta kh«ng?",3,"§­îc th«i! Ta kh«ng tin cã nhiÖm vô nµo lµm khã dÔ ®­îc ta/Task_Confirm","Ta muèn biÕt kh¶o nghiÖm cña ng­¬i nãi cã néi dung ra sao/Task_Info","Ta bËn råi, kh«ng r¶nh ngåi t¸n gÉu víi «ng/Task_Exit");
--		Say("Ò°ÛÅ£ºÕâÎ»"..GetPlayerSex().."¿´À´´³µ´½­ºşÒ²ÓĞÒ»¶ÎÊ±¼äÁË£¬¿É·ñÓĞĞËÈ¤À´²Î¼ÓÎÒµÄ<color=yellow>¡°»·»·Á´Á´Ïµ°ãÅä£¬²ã²ãµüµüÈ¡ºñÀñ¡±<color>µÄÈÎÎñ¿¼ÑéÄØ£¿",3,"ºÃÑ½£¬ÎÒ¾Í²»ĞÅÓĞÊ²Ã´ÈÎÎñÄÜÄÑµÃµ¹ÎÒµÄ/Task_Confirm","ÎÒÏëÖªµÀÄãËµµÄ¿¼ÑéÊÇ¸öÊ²Ã´Ñù×Ó/Task_Info","ÎÒ»¹ÓĞÊ¢£¬Ã»¿ÕºÍÄãÔÚÕâÏĞ³¶/Task_Exit");
	end
	
	if (tl_gettaskcourse() == 3) then

		-- ¼ì²âÊÇ·ñ³¬¹ıÃ¿ÌìµÄÏŞÖÆ
		if checkTask_Limit()~=1 then return end;
	
		myCountLinks = tl_counttasklinknum(2)
		myCountTimes = tl_counttasklinknum(1)
		
		Say(":<enter>VŞ"..GetPlayerSex().."®· hoµn thµnh <color=yellow>"..myCountTimes.."<color>, nhiÖm vô nµy ngµy h«m nay cã thÓ thùc hiÖn l¹i<color=yellow>"..(40 - GetTask(ID_TASKLINK_LIMITNUM)).."<color>, ng­¬i cã muèn lµm n÷a kh«ng?",2,"§­¬ng nhiªn, mau cho ta biÕt nhiÖm vô tiÕp theo lµ g×/Task_TaskProcess","§Ó ta nghØ ng¬i mét l¸t ®·! Ta bËn råi/Task_Wait");
--		Say("Ò°ÛÅ£º<enter>ÕâÎ»"..GetPlayerSex().."ÒÑ¾­Íê³ÉÁË <color=yellow>"..myCountTimes.."<color> ´ÎÎÒËù¸øÄãµÄÈÎÎñ£¬²»ÖªÄã»¹ÓĞÃ»ÓĞĞËÈ¤¼ÌĞø½Ó×Å×öÏ¢È¥ÄØ£¿",2,"µ±È»£¬¿ìÈÃÎÒÖªµÀÏ¢Ò»¸öÈÎÎñÊÇÊ²Ã´/Task_TaskProcess","»¹ÊÇÈÃÎÒĞªÒ»»á¶ù°É£¬ÎÒ»¹ÓĞ±ğµÄÊ¢Çé/Task_Wait");
	elseif (tl_gettaskcourse() == 1) then
		Task_MainDialog()
	end

end

-- ´ğÓ¦ÁËÒ°ÛÅµÄ¿¼Ñé£¬ÕıÊ½¿ªÊ¼ÈÎÎñÁ´
function Task_Confirm()

local myTaskID

-- ÉèÖÃÈÎÎñ±äÁ¿µÄÊıÖµ£¬1020 ºÅ±äÁ¿ÎªÈÎÎñÁ´×´Ì¬×¨ÓÃ±äÁ¿£¬ÆäÖĞµÄËÄ¸ö×Ö½Ú·Ö±ğ¶¨ÒåÎª£º| ¢Ù´ÎÊı | ¢ÚÁ´Êı | ¢Û»·Êı | ¢ÜÈ¡ÏûÊ£Óµ´ÎÊı |

tl_settaskstate(1,0) -- ÕıÔÚ½øĞĞµÚÒ»´ÎÈÎÎñ
tl_settaskstate(2,tl_getfirstlink()) -- ÕıÔÚ½øĞĞµÚÒ»Á´ÈÎÎñ
tl_settaskstate(3,tl_getfirstloop()) -- ÕıÔÚ½øĞĞµÚÒ»»·ÈÎÎñ

tl_settaskstate(4,0) -- Ê£Óµ 0 ´ÎÈ¡ÏûÈÎÎñµÄ»ú»á
nt_setTask(DEBUG_TASKVALUE, 0);

tl_settaskstate(6,0)

storm_ask2start(4)	--Storm ¿ªÊ¼ÌôÕ½
tbLog:PlayerActionLog("TinhNangKey","NhanNhiemVuDaTau")
--tbLog:PlayerActionLog("Ö÷ÒªÌØµã","NhanNhiemVuDaTau")
end


-- ½øĞĞÏ¢Ò»´ÎÈÎÎñ
function Task_TaskProcess()

local myTaskTimes = tl_gettaskstate(1) -- Íæ¼Ò½øĞĞµ½µÄ´ÎÊı
local myTaskLinks = tl_gettaskstate(2) -- Íæ¼Ò½øĞĞµ½µÄÁ´Êı
local myTaskLoops = tl_gettaskstate(3) -- Íæ¼Ò½øĞĞµ½µÄ»·Êı
local myTaskCancel = tl_gettaskstate(4) -- Íæ¼Ò¿ÉÒÔÈ¡ÏûµÄ´ÎÊı


-- ¼ì²âÊÇ·ñ³¬¹ıÃ¿ÌìµÄÏŞÖÆ
if checkTask_Limit()~=1 then return end;

tl_taskprocess() -- Ê×ÏÈÖ´ĞĞÏ¢Ò»¢Öº¯Êı

storm_goon_start()	--Storm»Ö¸´

end


-- ÈÎÎñÁ´µÄÖ÷Òª¿ØÖÆÃæ°æ
function Task_MainDialog()

local myTaskInfo = tl_gettaskinfo() -- ÈÎÎñµÄÏêÏ¸ĞÅÏ¢
local myTaskTotalNum = tl_counttasklinknum(1) + 1; -- ×ÜÈÎÎñ´ÎÊıÍ³¼Æ
local myTitleText = "";

if (myTaskInfo == nil) then
	myTaskInfo = ""
end

-- ÉèÖÃÈÎÎñ×´Ì¬ÎªÒÑ¾­½ÓÁËÈÎÎñµ«Î´Íê³É
tl_settaskcourse(1)


if myTaskTotalNum==0 or myTaskTotalNum==nil then
	myTitleText = "D· tÈu:<enter><enter>"..myTaskInfo;
else
	myTitleText = "D· tÈu:<enter><enter>§©y lµ nhiÖm vô thø <color=green>"..myTaskTotalNum.."<color> cña ng­¬i"..myTaskInfo;
end;

Say(myTitleText,
	4,
	"BiÕt råi, ®Ó ta hoµn thµnh nhiÖm vô xong míi l¹i t×m ng­¬i/Task_Wait",
	"ta ®· hoµn thµnh nhiÖm vô lÇn nµy, xin h·y kiÓm tra l¹i!/Task_Accept",
	"NhiÖm vô lÇn nµy khã qu¸ Ta muèn hñy bá kh«ng lµm n÷a/Task_CancelConfirm",
	"Ta muèn biÕt kh¶o nghiÖm cña ng­¬i nãi cã néi dung ra sao/Task_Info"
--	"ÖªµÀÁË£¬µÈÎÒÍê³ÉÈÎÎñºóÔÙÀ´ÕÒÄã/Task_Wait",
--	"ÎÒÒÑ¾­Íê³ÉÁËÕâ´ÎµÄÈÎÎñ£¬ÇëÄãÑéÊÕ°É£¡/Task_Accept",
--	"Õâ´ÎÈÎÎñÒ²Ì«ÄÑÁË£¬ÎÒÏëÈ¡Ïûµô²»×öÁË/Task_CancelConfirm",
--	"ÎÒÏëÖªµÀÄãËµµÄ¿¼ÑéÊÇ¸öÊ²Ã´Ñù×Ó/Task_Info"
	);

-- ÉèÖÃÈ¡ÏûÈÎÎñµÄ±ê¼ÇÎª¿ÉÒÔÈ¡Ïû
nt_setTask(1045, 1);

end


-- È¡ÏûÈÎÎñÊ±¸øÓèÍæ¼ÒÒ»´ÎÈ·ÈÏµÄ»ú»á
function Task_CancelConfirm()

local myTaskTimes = tl_gettaskstate(1) -- Íæ¼Ò½øĞĞµ½µÄ´ÎÊı
local myTaskLinks = tl_gettaskstate(2) -- Íæ¼Ò½øĞĞµ½µÄÁ´Êı
local myTaskLoops = tl_gettaskstate(3) -- Íæ¼Ò½øĞĞµ½µÄ»·Êı
local myTaskCancel = tl_gettaskstate(4) -- Íæ¼Ò¿ÉÒÔÈ¡ÏûµÄ´ÎÊı

local myCountTimes = tl_counttasklinknum(1);  -- Íæ¼Ò½øĞĞµÄÈÎÎñ×ÜÊı

--if (myTaskCancel==0) then
--	Say("D· tÈu:ÄúÏÖÔÚÒ»´ÎÈ¡ÏûµÄ»ú»áÒ²Ã»ÓĞ£¬ÕâÑùÒ»À´Äã¾Í±ØĞëµÃ´ÓÍ·¿ªÊ¼µ¸£¡¶øÇÒÄãÖ®Ç°µÄ½±ÀøÀÛ»ı¾Í»áÖØĞ¢¿ªÊ¼¼ÆÊı¡£",3,"ÊÇµÄ£¬ÎÒ¾ÍÊÇ²»Ïë×öÕâ¸ö¹íÈÎÎñ/Task_NormalCancel","ÎÒÏëÓÃ 100 ÕÅÉ½ºÓÉçğ¢Í¼²ĞÆ¬À´È¡ÏûÕâ´ÎÈÎÎñ/#Task_Cancel(2)","µÅ¡­¡­ÄÇ¾ÍÈÃÎÒÔÙÏëÏë°É/Task_Wait");
--else
--	Say("D· tÈu:ÄúÏÖÔÚ»¹ÓĞ "..myTaskCancel.." ´ÎÈ¡ÏûÈÎÎñµÄ»ú»á£¬ÄãÈ·¶¨ÒªÈ¡ÏûÕâ´ÎÈÎÎñ¢ğ£¿",2,"ÊÇµÄ£¬ÎÒ¾ÍÊÇ²»Ïë×öÕâ¸ö¹íÈÎÎñ/#Task_Cancel(1)","µÅ¡­¡­ÄÇ¾ÍÈÃÎÒÔÙÏëÏë°É/Task_Wait");
--end


if (myTaskCancel==0) then
	
	Say(" HiÖn t¹i b¹n kh«ng cã c¬ héi nµo ®Ó hñy bá nhiÖm vô b¹n chØ cã thÓ lµm l¹i tõ ®Çu th«i! §ång thêi phÇn th­ëng tİch lòy cña b¹n lóc tr­íc sÏ ®­îc tİnh l¹i tõ ®Çu.",
		3,
		"§óng, ta kh«ng muèn lµm nhiÖm vô quû qu¸i nµy ®©u/Task_NormalCancel",
		"Ta muèn sö dông 100 m¶nh s¬n Hµ X· T¾c ®Ó hñy bá nhiÖm vô lÇn nµy/#Task_Cancel(2)",
		"Uhm! §Ó ta suy nghÜ l¹i ®·/Task_Wait");
	
else
	
	Say(" HiÖn t¹i b¹n cßn"..myTaskCancel.." sè lÇn c¬ héi hñy bá nhiÖm vô b¹n x¸c ®Şnh hñy bá nhiÖm vô lÇn nµy ®óng kh«ng?",
		2,
		"§óng, ta kh«ng muèn lµm nhiÖm vô quû qu¸i nµy ®©u/#Task_Cancel(1)",
		"Uhm! §Ó ta suy nghÜ l¹i ®·/Task_Wait");
	
end

end


-- Õı³£µÄÈ¡Ïû·½Ê½ÔÙÈ·ÈÏÒ»´Î
function Task_NormalCancel()

--Say("D· tÈu:ÄãÏëºÃÁËÕæµÄÒªÈ¡ÏûÕâ´ÎÈÎÎñ¢ğ£¿",2,"²»Òª†ªËôÁË£¬ÎÒ¾ÍÊÇ²»Ïë×öÕâ¸ö¹íÈÎÎñ/#Task_Cancel(1)","ÄÇ»¹ÊÇÈÃÎÒÔÙÏëÏë°É/Task_Wait");

Say(" B¹n suy nghÜ kÜ hñy bá nhiÖm vô lÇn nµy ®óng kh«ng?",2,"§õng l«i th«i n÷a! ta kh«ng muèn lµm nhiÖm vô quû qu¸i nµy ®©u/#Task_Cancel(1)","Th«i ®Ó ta suy nghÜ l¹i ®·!/Task_Wait");

end;


-- 1000 ´ÎÒÔÉÏµÄÈÎÎñÈ¡ÏûÊ±ĞèÒª·ÅË®¾§
function Task_TotalCancel()
	GiveItemUI("Tõ nhiÖm vô thø 1000 trë ®i mçi lÇn hñy cÇn 1 viªn lam thñy tinh, h·y ®Æt thñy tinh vµo ®©y", "Task_TotalCancel_Main", "Task_Wait");
end;


function Task_TotalCancel_Main(nCount)
	
	local nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = 0,0,0,0,0,0;
	local nIndex = 0;
	
	if nCount~=1 then
		Say("D· tÈu:Thø ng­¬i ®­a ta kh«ng ph¶i<color=yellow>1 viªn<color> lam thñy tinh!", 0);
		return
	end;
	
	nIndex = GetGiveItemUnit(1);
	nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = GetItemProp(nIndex);
	
	if nGenre==4 and nDetail==240 and nParticular==1 then
		Task_Cancel(1);  -- È«²¿È¡Ïû
	else
		Say("D· tÈu:Thø ng­¬i ®­a ta kh«ng ph¶i<color=yellow>1 viªn<color> lam thñy tinh!", 0);
		return		
	end;
	
end;


-- ÏÔÊ¾Íæ¼Òµ±Ç°µÄÈÎÎñËù½øĞĞµÄ³Ì¶È£¨µ÷ÊÔÓÃ£©
function Task_ProcessInfo()

local myTaskTimes = tl_gettaskstate(1) -- Íæ¼Ò½øĞĞµ½µÄ´ÎÊı
local myTaskLinks = tl_gettaskstate(2) -- Íæ¼Ò½øĞĞµ½µÄÁ´Êı
local myTaskLoops = tl_gettaskstate(3) -- Íæ¼Ò½øĞĞµ½µÄ»·Êı
local myTaskCancel = tl_gettaskstate(4) -- Íæ¼Ò¿ÉÒÔÈ¡ÏûµÄ´ÎÊı

local myTaskType = tl_getplayertasktype()

local myTimes = tl_gettaskstate(1)
local myLinks = tl_gettaskstate(2)

local myCountTimes = tl_counttasklinknum(1)

-- local myTaskValue1 = tonumber(TabFile_GetCell(tl_gettasktextID(myTaskType),tl_gettasktablecol(),"TaskValue1"))
-- local myTaskValue2 = tonumber(TabFile_GetCell(tl_gettasktextID(myTaskType),tl_gettasktablecol(),"TaskValue2"))
	

-- local myMainValue = myTaskValue1 + (myTaskValue2 * (1+(myCountLinks+myTimes)*0.1))

-- local myMainValueText1 = "ÄãÄ¿Ç°µÄÈÎÎñÎïÆ·¼ÛÖµÎª: "..myTaskValue1.."  ÈÎÎñ¼ÛÖµÎª: "..myTaskValue2.."<enter>".."ÄãÏÖÔÚµÄÈÎÎñ×Ü¼ÛÖµÁ¿Îª: "..myMainValue

--	Say("D· tÈu:ÄãÏÖÔÚ½øĞĞµ½ÁËµÚ "..myTaskLoops.." »·ÖĞµÄµÚ "..myTaskLinks.." Á´ÖĞµÄµÚ "..myTaskTimes.." ´Î¡£<enter>ÄãÁ¬Ğø½øĞĞµÄ´ÎÊıÎª£º"..tl_counttasklinknum(1).." ´Î<enter>ÄãÁ¬Ğø½øĞĞµÄÁ´ÊıÎª£º"..tl_counttasklinknum(2).." Á´<enter>"..myMainValueText1,0);

--	Say(" HiÖn t¹i ng­êi ®· hoµn thµnh <color=yellow>"..myCountTimes.."<color> s?lÇn nhiÖm v?ta giao cho, cÇn c?g¾ng h¬n nh?", 0);
	Say("D· tÈu:ÄãÏÖÔÚÒÑ¾­Íê³ÉÁË <color=yellow>"..myCountTimes.."<color> ´ÎÎÒËù¸øÄãµÄÈÎÎñ£¬»¹Çë¼ÌĞøÅ¬Á¦Å¶£¡", 0);

end


-- Íæ¼ÒÒÑ¾­Íê³ÉÈÎÎñÇ°À´¸øÒ°ÛÅÑéÊÕ
function Task_Accept()
	--2007-09-19 Ôö¼ÓÎïÆ·½±ÀøÊ±µÄ±³°ü¿Õ¼äÅĞ¶Ï
	if (CalcFreeItemCellCount() < 5) then
		Say("H·y dän hßm ®å cña ng­¬i sao cho trèng İt nhÊt lµ 5 «",0);
		return
	end;
local myTaskType = tl_getplayertasktype()

	if (myTaskType == 1) then
		GiveItemUI("Ñ°ÕÒÎïÆ·ÈÎÎñ","D· tÈu:Å¶£¿ÎÒÈÃÄãÈ¥¢òµÄ¶«Î÷Äã¸øÎÒ¢òµ½ÁË¢ğ£¿","Task_Accept_01","Task_Wait");
	elseif (myTaskType == 2) then
		GiveItemUI("¹º¢òÎïÆ·ÈÎÎñ","D· tÈu:Å¶£¿ÎÒÈÃÄãÈ¥ÕÒµÄ¶«Î÷Äã¸øÎÒÕÒµ½ÁË¢ğ£¿","Task_Accept_02","Task_Wait");
	elseif (myTaskType == 3) then
		GiveItemUI("ÎïÆ·Õ¹Ê¾ÈÎÎñ","D· tÈu:Å¶£¿ÎÒÈÃÄãÈ¥ÕÒµÄ¶«Î÷Äã¸øÎÒÕÒµ½ÁË¢ğ£¿","Task_Accept_03","Task_Wait");
	elseif (myTaskType == 4) then
		Task_Accept_04()
	elseif (myTaskType == 5) then
		Task_Accept_05()
	elseif (myTaskType == 6) then
		Task_Accept_06()
	else -- Òì³£´¦Àí
		Say("D· tÈu: §å vËt nµy ch­a ®¹t yªu cÇu cña ta, ng­¬i h·y ®i t×m tiÕp ®i",0);
	end

end


-- ÈÎÎñÒ»µÄÅĞ¶Ï´¦Àí
function Task_Accept_01(nCount)
local myTaskGoods
local ItemGenre,DetailType,ParticularType,Level,nSeries,Luck

if ( nCount > 1 ) then
	Say("D· tÈu: VŞ "..GetPlayerSex().." nµy, ng­¬i chØ cÇn ®Ó vµo duy nhÊt mãn ®å ta cÇn lµ ®­îc..",0);
	return 0
elseif ( nCount == 0) then
	Say("D· tÈu: VŞ "..GetPlayerSex().." nµy, lµ ta hoa m¾t hay ng­¬i ch­a ®Ó ®å vµo thÕ?",0);
	return 0
end

	ItemGenre,DetailType,ParticularType,Level,nSeries,Luck = GetItemProp(GetGiveItemUnit(1))
--	magictype , p1, p2, p3 = GetItemMagicAttrib(nItemIndex, 1)
	myTaskGoods = {ItemGenre,DetailType,ParticularType,nSeries,Level}
	
--	tl_print ("Ò°ÛÅ¼ìÑéÁËÎïÆ·£º"..ItemGenre..DetailType..ParticularType..nSeries..Level)
	
	if (tl_checktask(myTaskGoods) == 1) then
		RemoveItemByIndex(GetGiveItemUnit(1)) -- É¾³ıÍæ¼ÒÉíÉÏµÄÎïÆ·
		Task_AwardRecord()
		Task_GiveAward()
		-- ·¢½±´¦Àí
	else
		Say("D· tÈu: §å vËt nµy ch­a ®¹t yªu cÇu cña ta, ng­¬i h·y ®i t×m tiÕp ®i",0);
	end
end


-- ÈÎÎñ¶şµÄÅĞ¶Ï´¦Àí
function Task_Accept_02(nCount)

local myTaskGoods
local ItemGenre, DetailType, ParticularType, Level, nSeries, Luck
local magictype,p1,p2,p3
local i,n,m = 0,0,0

if ( nCount > 1 ) then
	Say("D· tÈu: VŞ"..GetPlayerSex().." nµy, ng­¬i chØ cÇn ®Ó vµo duy nhÊt mãn ®å ta cÇn lµ ®­îc..",0);
	return 0
elseif ( nCount == 0) then
	Say("D· tÈu: VŞ"..GetPlayerSex().." nµy, lµ ta hoa m¾t hay ng­¬i ch­a ®Ó ®å vµo thÕ?",0);
	return 0
end

	for i=1,6 do
		ItemGenre,DetailType,ParticularType,Level,nSeries,Luck = GetItemProp(GetGiveItemUnit(1))
		magictype , p1, p2, p3 = GetItemMagicAttrib(GetGiveItemUnit(1), i)
		myTaskGoods = {ItemGenre,DetailType,ParticularType,Level,nSeries,magictype,p1,p2,p3}
--		tl_print("¼ìÑéÁËÄ§·¨ÊôĞÔ "..i.." :".." Ä§·¨ ID Îª: "..magictype.."  Ä§·¨²ÎÊı1Îª: "..p1.."  Ä§·¨²ÎÊı2Îª: "..p2.." Ä§·¨²ÎÊı3Îª: "..p3);
		n = tl_checktask(myTaskGoods)
		if (n == 1) then
			m = 1
		end
	end
	
	if (m == 1) then
		RemoveItemByIndex(GetGiveItemUnit(1)) -- É¾³ıÍæ¼ÒÉíÉÏµÄÎïÆ·
		Task_AwardRecord()
		Task_GiveAward()
	else
		Say("D· tÈu: §å vËt nµy ch­a ®¹t yªu cÇu cña ta, ng­¬i h·y ®i t×m tiÕp ®i",0);
	end
	
end


-- ÈÎÎñÈıµÄÅĞ¶Ï´¦Àí
function Task_Accept_03(nCount)

local myTaskGoods
local magictype,p1,p2,p3
local i,n,m = 0,0,0


if ( nCount > 1 ) then
	Say("D· tÈu:VŞ"..GetPlayerSex().." nµy,Ng­¬i chØ cÇn ®Ó vµo duy nhÊt mãn ®å ta cÇn lµ ®­îc..",0);
	return 0
elseif ( nCount == 0) then
	Say("D· tÈu:VŞ"..GetPlayerSex().." nµy,Lµ ta hoa m¾t hay ng­¬i ch­a ®Ó ®å vµo thÕ?",0);
	return 0
end

	for i=1,6 do -- Ñ­»·Àú±éËùÓĞµÄÄ§·¨ÊôĞÔ¿´¿´ÊÇ·ñÓĞºÏÊÊµÄ
		magictype,p1,p2,p3 = GetItemMagicAttrib(GetGiveItemUnit(1),i)
		myTaskGoods = {magictype,p1,p2,p3}
		n = tl_checktask(myTaskGoods)
		if (n == 1) then
			m = 1
		end
	end	

	if (m == 1) then
		Task_AwardRecord()
		Task_GiveAward()
		-- ·¢½±´¦Àí
	else
		Say("D· tÈu:§å vËt nµy ch­a ®¹t yªu cÇu cña ta, ng­¬i h·y ®i t×m tiÕp ®i",0);
	end
	
end


-- ÈÎÎñËÄµÄÅĞ¶Ï´¦Àí
function Task_Accept_04()

	if (tl_checktask() == 1) then
		Task_AwardRecord()
		Task_GiveAward()
		-- ·¢½±´¦Àí
	else
		Say("D· tÈu:Ng­¬i ch­a ®¹t kh¶o nghiÖm cña ta. h·y tiÕp tôc hoµn thµnh ®i sau ®ã quay l¹i gÆp ta",0);
	end
	
end


-- ÈÎÎñÎåµÄÅĞ¶Ï´¦Àí
function Task_Accept_05()

	if (tl_checktask() == 1) then
		Task_AwardRecord()
		Task_GiveAward()
		-- ·¢½±´¦Àí
	else
		Say("D· tÈu:Ng­¬i ch­a ®¹t kh¶o nghiÖm cña ta. h·y tiÕp tôc hoµn thµnh ®i sau ®ã quay l¹i gÆp ta",0);
	end
	
end



-- ÈÎÎñÁùµÄÅĞ¶Ï´¦Àí
function Task_Accept_06()
	
	if (tl_checktask()==1) then
		Task_AwardRecord()
		Task_GiveAward()
		return 1
	else
		Say("D· tÈu: Ha ha vŞ "..GetPlayerSex().." nµy, cßn ch­a thu thËp ®ñ m¶nh b¶n ®å s¬n hµ x· t¾c sao ®· tíi gÆp ta l·nh th­ëng vËy",0);
		return 0
	end

end



-- Íæ¼ÒÑ¡ÔñÈ¡ÏûÈÎÎñµÄ´¦Àí
-- ´«Èë²ÎÊı nType£ºÈ¡ÏûÈÎÎñµÄ·½·¨£¬1ÎªÓÃÈ¡Ïû»ú»áÀ´È¡Ïû£¬2ÎªÓÃ 100 ÕÅÉ½ºÓÉçğ¢Í¼ËéÆ¬À´È¡Ïû
function Task_Cancel(nType)

local myTaskTimes = tl_gettaskstate(1) -- Íæ¼Ò½øĞĞµ½µÄ´ÎÊı
local myTaskLinks = tl_gettaskstate(2) -- Íæ¼Ò½øĞĞµ½µÄÁ´Êı
local myTaskLoops = tl_gettaskstate(3) -- Íæ¼Ò½øĞĞµ½µÄ»·Êı
local myTaskCancel = tl_gettaskstate(4) -- Íæ¼Ò¿ÉÒÔÈ¡ÏûµÄ´ÎÊı
local myCanceled = nt_getTask(1036) -- Íæ¼ÒÒÑ¾­¶ñÒâÈ¡ÏûÁË¶µÉÙ´Î
local myMapNum = nt_getTask(1027) -- ¿´¿´Íæ¼ÒÉíÉÏÓĞ¶µÉÙ¸öÉ½ºÓÉçğ¢Í¼²ĞÆ¬

local myNewCancel = GetTask(DEBUG_TASKVALUE);  -- ±¸·İµÄÈ¡Ïû»ú»á

local nTotalTaskNum = tl_counttasklinknum(1); -- »ñÈ¡µ±Ç°Íæ¼ÒÒ»¹²×öÁË¶µÉÙ´ÎÈÎÎñ

-- Èç¹û²»ÊÇ´ÓÖ÷Ãæ°æ½øÈëµÄ×´Ì¬£¬Ôò²»ÄÜ½øĞĞÒÔÏ¢µÄÈ¡Ïû¹ı³Ì
if nt_getTask(1045)~=1 then
	return
end;

-- ÅĞ¶ÏÊÇ·ñ´æÔÚË¢È¡Ïû»ú»áµÄĞĞÎª
if _CancelTaskDebug()~=1 then
	Say("D· tÈu: Ng­¬i ®· hÕt c¬ héi hñy bá nhiÖm vô", 0);
	return
end;

-- ¼ì²âÊÇ·ñ³¬¹ıÃ¿ÌìµÄÏŞÖÆ
if checkTask_Limit()~=1 then return end;

	if (nType==2) then
		if (myMapNum>=100) then
			myMapNum = myMapNum - 100;
			nt_setTask(1027, myMapNum);
			myTaskCancel = myTaskCancel + 1;
			Msg2Player("Ta muèn sö dông 100 m¶nh s¬n Hµ X· T¾c ®Ó hñy bá nhiÖm vô lÇn nµy");
			Msg2Player("B©y giê ng­¬i cßn l¹i "..myMapNum.." m¶nh s¬n hµ x· t¾c");
		else
			Say("D· tÈu: Cã thËt lµ ng­¬i mang ®ñ <color=yellow>100<color> m¶nh s¬n hµ x· t¾c chø? Ta ®©u cã hoa m¾t ®©u?",0);
			return
		end;
	end;

	if (myTaskTimes == 0) and (myTaskLinks == tl_getfirstlink()) then
	
		if (myTaskCancel == 0) then
		
			myCanceled = myCanceled + 1
			nt_setTask(1036,myCanceled)
	
			if ( myCanceled > 2) then -- Èç¹ûÍæ¼ÒÁ¬ĞøÔÚ³õÆÚÈ¡ÏûÁËÈı´ÎÈÎÎñ£¬Ôò×÷´¦·£
				myCanceled = 10	
				nt_setTask(1036,myCanceled)
				nt_setTask(1029,GetGameTime())
				Task_Punish()
				
				return
				
			end
			
		end
		
		-- ÖØĞ¢Ëæ»úÅÉ·¢Ğ¢µÄÈÎÎñ
		SetTask(ID_TASKLINK_LIMITCancelCount, GetTask(ID_TASKLINK_LIMITCancelCount) + 1); -- Ôö¼Óµ±ÌìµÄÈ¡Ïû´ÎÊı
		storm_ask2start(4)	--Storm ¿ªÊ¼ÌôÕ½
		
		return
		
	end

	if (myTaskCancel >= 1) then -- Èç¹ûÍæ¼Ò»¹ÓĞ»ú»áÈ¡ÏûµÄ»°Ôò¼ÌĞøËæ»úµ±Ç°µÈ¼¶µÄÈÎÎñ
	
		-- Ğ´ÈëÈ¡ÏûÈÎÎñÊ±µÄ LOG
		_WriteCancelLog(nType, nTotalTaskNum, myTaskCancel);
		
		myTaskCancel = myTaskCancel - 1
		
		tl_settaskstate(4,myTaskCancel)
		
		nt_setTask(DEBUG_TASKVALUE, myTaskCancel);
			
	else
		-- Ğ´ÈëÈ¡ÏûÈÎÎñÊ±µÄ LOG
		_WriteCancelLog(nType, nTotalTaskNum, myTaskCancel);
	
		tl_settaskstate(1,0) -- ÕıÔÚ½øĞĞµÚÒ»´ÎÈÎÎñ
		tl_settaskstate(2,tl_getfirstlink()) -- ÕıÔÚ½øĞĞµÚÒ»Á´ÈÎÎñ
		tl_settaskstate(3,0) -- ´ÓµÚ 0 »·¿ªÊ¼
		
		tl_settaskstate(4,0) -- Ê£Óµ 0 ´ÎÈ¡ÏûÈÎÎñµÄ»ú»á
		nt_setTask(DEBUG_TASKVALUE, 0);
		
		tl_settaskstate(6,0) -- µ±Ç°µÄÁ´½øĞĞÁË 0 ´Î
		nt_setTask(1036,0) -- ³Í·£´ÎÊıÀÛ»ı±äÎª 0 
		-- ÔÚÕâÀï¼Ç¢¼Ò»Ï¢ÈÎÎñµÄ×ÜÊı
		nt_setTask(1044, tl_counttasklinknum(1));
		
--		Msg2Player("<color=yellow>Chuçi nhiÖm vô D· TÈu ®· xãa bá hoµn toµn, b©y giê sÏ ph¶i lµm l¹i tõ nhiÖm vô ®Çu tiªn<color>!");
	end
	
	-- ÉèÖÃÈ¡ÏûÈÎÎñµÄ±ê¼ÇÎª²»¿ÉÒÔÈ¡Ïû
	nt_setTask(1045, 2);
	
	-- ÖØĞ¢Ëæ»úÅÉ·¢Ğ¢µÄÈÎÎñ
	SetTask(ID_TASKLINK_LIMITCancelCount, GetTask(ID_TASKLINK_LIMITCancelCount) + 1); -- Ôö¼Óµ±ÌìµÄÈ¡Ïû´ÎÊı
	storm_ask2start(4)	--Storm ¿ªÊ¼ÌôÕ½
end;


-- ÌıÒ°ÛÅ½âÊÍÕû¸öÈÎÎñÁ´µÄ¹ı³ÌÓë·½·¨
function Task_Info()
	Talk(4,
		"tasklink_entence",
		"D· TÈu: ta ®©y cã rÊt nhiÒu lo¹i kh¶o nghiÖm dµnh cho ng­¬i",
		"D· TÈu: Mçi mét lÇn hoµn thµnh nhiÖm vô ®Òu cã<color=red>phÇn th­¬ng t­¬ng øng<color>chê ng­¬i, nÕu hoµn thµnh liªn tiÕp<color=red>8000<color>lÇn nhiÖm vô th× sÏ cã<color=red>®å hoµng kim m«n ph¸i<color>tÆng ng­¬i",
		"D· TÈu: Mçi khi ng­¬i hñy bá nhiÖm vô th× tÊt c¶ chuçi nhiÖm vô sÏ bŞ hñy l¹i tõ ®Çu, ng­¬i cã thÓ dïng c¬ héi hñy bá nhiÖm vô mµ ta trao hoÆc ®æi 100 m¶nh b¶n ®å s¬n hµ x· t¾c lÊy 1 c¬ héi hñy bá nhiÖm vô",
		"D· tÈu: thÕ nµo thiÕu hiÖp? ng­¬i cã høng thó víi kh¶o nghiÖm cña ta kh«ng?"
		);
end


-- ¾Ü¾øÁËÒ°ÛÅµÄ¿¼ÑéÌáÒé
function Task_Exit()

	if (GetSex() == 0) then
		Say("D· tÈu: chê khi ng­¬i biÕt phÇn th­ëng kh¶o nghiÖm cña ta nh­ nµo th× h·y quay l¹i t×m ta nhĞ",0);
	else
		Say("D· tÈu: chê khi ng­¬i biÕt phÇn th­ëng kh¶o nghiÖm cña ta nh­ nµo th× h·y quay l¹i t×m ta nhĞ",0);
	end
end


-- ÔÚ×öÈÎÎñµÄ¹ı³ÌÖĞÍË³öÒ°ÛÅµÄ¶Ô»°£¬²»×÷ÈÎºÎ´¦Àí
function Task_Wait()

end


function Task_Punish()
	Say("D· tÈu: vŞ thiÕu hiÖp nµy, cã ph¶i qu¸ gÊp g¸p råi kh«ng? ng­¬i vÉn cßn ®ang tiÕn hµnh nhiÖm vô mµ",0);
	return 0
end




--  //////////////////////////////////////////////////////////////
-- //                     ·¢Óè½±ÀøµÄ´¦Àí                       //
--//////////////////////////////////////////////////////////////

function Task_GiveAward()

	local i
	
	local myAward
	local myLinkAward,myLoopAward
	
	local myGoodsText = ""
	local ShowText = {"","",""}

	local nTotalTaskNum = tl_counttasklinknum(1); -- »ñÈ¡µ±Ç°Íæ¼ÒÒ»¹²×öÁË¶µÉÙ´ÎÈÎÎñ
--	if (nTotalTaskNum ~= 0 and mod(nTotalTaskNum, 10) == 0 and GetTask(TKS_TASKLINK_SPITEM) ~= nTotalTaskNum) then
--		SetTask(TKS_TASKLINK_SPITEM, nTotalTaskNum);
--		local tbItem = {tbProp = {6, 1, 2374, 1, 0, 0}}
--		tbAwardTemplet:GiveAwardByList(tbItem, "seasonnpc_10task")
--		Msg2Player(format("Chóc mõng ®¹i hiÖp ®· hoµn thµnh liªn tiÕp %d nhiÖm v?D?TÈu, nhËn ®­îc phÇn th­ëng %s!", 10, "B¶o r­¬ng thÇn b?cña D?TÈu"));
--	end

	--tl_print ("¸øÁ´½±ÀøºÍ»·½±Àø·¢½±Íê±Ï£¡£¡£¡");
	local nTongValue;
	myAward, nTongValue = tl_giveplayeraward(1);
	if (not nTongValue) then
		nTongValue = 0;
	end	
	local nBeishu = greatnight_huang_event(4);
	if (nBeishu > 0) then
		nTongValue = floor(nTongValue / nBeishu);
	end;
	
	for i=1,3 do
	--	tl_print ("µÃµ½½ğÇ®½±Àø£¡");
		if (myAward[i][1] == 1) then
			ShowText[i] = "µÃµ½"..myAward[i][9].."/3".."/"..myAward[i][2].."/SelectAward_Money"
		elseif (myAward[i][1] == 2) then
			ShowText[i] = "µÃµ½"..myAward[i][9].."/4".."/"..myAward[i][2].."/SelectAward_Exp"
		elseif (myAward[i][1] == 3) then
			myGoodsText = myAward[i][3]..","..myAward[i][4]..","..myAward[i][5]..","..myAward[i][6]..","..myAward[i][7]..","..myAward[i][8]
			ShowText[i] = "µÃµ½"..myAward[i][9].."/5".."/"..myGoodsText.."/mySG"
		elseif (myAward[i][1] == 4) then
			if (myAward[i][10]==1) then
				myGoodsText = myAward[i][3]..","..myAward[i][4]..","..myAward[i][5]..","..myAward[i][6]..","..myAward[i][7]..","..myAward[i][8]
				ShowText[i] = myAward[i][9].."/6".."/"..myGoodsText.."/mySG"
			elseif (myAward[i][10]==2) then
				ShowText[i] = myAward[i][9].."/6".."/"..myAward[i][2].."/SelectAward_Exp"
			elseif (myAward[i][10]==3) then
				ShowText[i] = myAward[i][9].."/6".."/"..myAward[i][2].."/SelectAward_Money"
			end
			
		elseif (myAward[i][1] == 5) then
			ShowText[i] = "µÃµ½"..myAward[i][9].."/7".."/"..myAward[i][1].."/SelectAward_Cancel"
		end
		
	end
	
	tl_print(ShowText[1])
	tl_print(ShowText[2])
	tl_print(ShowText[3])
	
Prise( "D· tÈu: h·y chän phÇn th­ëng cña ng­¬i ®i",ShowText[1],ShowText[2],ShowText[3] );
	
	--tl_print ("·¢½±Íê±Ï£¡£¡£¡£¡£¡");

end



-- ÔÚÒÑ¾­È·ÈÏÁËÈÎÎñÍê³Éµ«ÊÇ»¹Î´·¢½±Ê±µÄ±äÁ¿´¦Àí£¬ÒÔ·ÀÍæ¼ÒË¢½±
function Task_AwardRecord()
	--Storm ¼Ó»ı·Ö
	local filename = tl_gettasktextID(tl_getplayertasktype())
	local tabcol = tl_gettasktablecol()
	local myTaskValue1 = tonumber(TabFile_GetCell(filename,tabcol,"TaskValue1"))
	local myTaskValue2 = tonumber(TabFile_GetCell(filename,tabcol,"TaskValue2"))
	local myMainValue = myTaskValue1 + myTaskValue2
	storm_addpoint(4, myMainValue)
	
	tl_settaskcourse(2) -- ÈÎÎñµÄ½øÕ¹³Ì¶ÈÎª2£¬¼´ÊÇ»¹Ã»ÓĞ·¢½±
	nt_setTask(1037, GetGameTime() + tonumber(GetLocalDate("%H%M%S")));
end



-- Ñ¡ÔñÁËÎïÆ·µÄ½±Àø
-- PS£ºÒòÎª¿¼¢Çµ½ÈÎÎñÃæ°æµÄ´«Èë×Ö·û²»ÄÜ³¬¹ı 32 ¸ö£¬ËùÒÔÕâ¸ö¹ı³Ì¼òĞ´³É mySG
function mySG(myQuality,myGenre,myDetail,myParticular,myLevel,myFive)

-- ·ÀÖ¹¶µ¸öÃæ°æµ¯³öÀ´Ë¢½±ÀøµÄ´¦Àí
if (tl_gettaskcourse() == 3) then
	Say("D· tÈu: Ng­¬i ®· nhËn phÇn th­ëng råi mµ",0);
	return
end
	--2007-09-19 Ôö¼ÓÎïÆ·½±ÀøÊ±µÄ±³°ü¿Õ¼äÅĞ¶Ï
	if (CalcFreeItemCellCount() < 5) then
		Say("D· tÈu: h·y ®Ó İt nhÊt 5 « trèng trong hßm ®å tr­íc khi nhËn phÇn th­ëng",0);
		return
	end;
	
--	tl_print("µÃµ½ÁË½±ÀøÎïÆ·±µºÅ£º"..myQuality..myGenre..myDetail..myParticular..myLevel..myGoodsFive);
	if (myQuality == 0) then
		local nItemIndex =  AddItem(myGenre,myDetail,myParticular,myLevel,myFive,0,0)
		if (GetProductRegion() == "vn") then
			-- LLG_ALLINONE_TODO_20070802
			if (myDetail==238) or (myDetail==239) or (myDetail==240) or (myDetail==252) then
			WriteLog("[Ghi chĞp phÇn th­ëng nhiÖm vô]"..date("[%y N¨m %m Th¸ng %d ngµy %H Giê %M Phót]")..":Tµi kho¶n"..GetAccount()..",Vai trß"..GetName().."ë nhiÖm vô liªn t­ëng th­ëng trung lÊy ®­îc b¶o th¹ch mét , b¶o th¹ch lo¹i h×nh biªn sè v×:"..myDetail)
			elseif (myGenre == 6 and myDetail == 1 and myParticular ==1475) then
				local nLastTime = FormatTime2Number(GetCurServerTime() + 7*24*60*60);
				local nYear = floor(nLastTime / 100000000);
				local nMMDD = mod(floor(nLastTime / 10000) , 10000);
				SetItemMagicLevel(nItemIndex, 1, GetTask(TSK_TASKLINK_SEANSONPOINT));
				SetItemMagicLevel(nItemIndex, 2, nYear);
				SetItemMagicLevel(nItemIndex, 3, nMMDD);
				SyncItem(nItemIndex);
				WriteLog(format("[Log PhÇn th­ëng nhiÖm vô d· tÈu]%s: Tµi kho¶n %s, Nh©n vËt%s Hoµn thµnh nhiÖm vô d· tÈu nhËn ®­îc: %d kinh nghiÖm)",
					date(" [%y N¨m %m th¸ng %d ngµy  %H giê %M phót]"),
					GetAccount(),
					GetName(),
					GetTask(TSK_TASKLINK_SEANSONPOINT)
				))
				SetTask(TSK_TASKLINK_SEANSONPOINT, 0);
			end
		else
			WriteLog(" [Nhí dÉn t­ëng]"..date(" [%y N¨m %m Th¸ng %d ngµy %H Giê %M Phót]").." [Tµi kho¶n :"..GetAccount().."] [Nh©n vËt:"..GetName().."]".."NhËn ®­îc 1 "..szName);
		end
	else
		AddGoldItem(0,myGenre)
		AddGlobalNews("Th«ng b¸o: Ng­êi ch¬i "..GetName().." ®· nhËn ®­îc 1 trang bŞ hoµng kim tõ d· tÈu");
		WriteLog("[Ghi chĞp phÇn th­ëng hoµng kim]"..date("[%y N¨m %m Th¸ng %d ngµy %H Giê %M Phót]")..":Tµi kho¶n"..GetAccount()..",Vai trß"..GetName().."nhËn ®­îc mét trang bŞ hoµng kim:"..myGenre)
	end
	Msg2Player("NhËn ®­îc 1 phÇn th­ëng nhiÖm vô!");
	
	tl_settaskcourse(3)
	PayPlayerLinkAward();
	
	local nBeishu = greatnight_huang_event(4);
	local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP);
	if (nBeishu > 0) then
		nTongValueGift = floor(nTongValueGift / nBeishu);
	end;
	tongaward_tasklink(nTongValueGift);	
	Task_NewVersionAward()
end


-- Ñ¡ÔñÁË½ğÇ®µÄ½±Àø
function SelectAward_Money(nAward)

-- ·ÀÖ¹¶µ¸öÃæ°æµ¯³öÀ´Ë¢½±ÀøµÄ´¦Àí
if (tl_gettaskcourse() == 3) then
	Say("D· tÈu: Ng­¬i ®· nhËn phÇn th­ëng råi mµ",0);
	return
end

	Earn(nAward)
	Msg2Player("Ng­¬i nhËn ®­îc <color=green>"..nAward.."<color> l­îng b¹c");
	
	tl_settaskcourse(3)	
	PayPlayerLinkAward();
	
	-- Èç¹û½±ÀøµÄ½ğÇ®ÊıÁ¿´óÓÚ 30W£¬Ôò¼ÇLOG
	if nAward>=300000 then
		WriteLog("[ÈÎÎñÁ´½ğÇ®¼Ç¢¼]"..
				 date("[%y N¨m %m Th¸ng %d ngµy %H Giê %M Phót]")..
				 "[Tµi kho¶n]"..GetAccount()..
				 "[Nh©n vËt]"..GetName()..
				 "? nhiÖm vô d· tÈu nhËn ®­îc<money>"..nAward.."</money>l­îng b¹c");
	end;
	local nBeishu = greatnight_huang_event(4);
	local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP);
	if (nBeishu > 0) then
		nTongValueGift = floor(nTongValueGift / nBeishu);
	end;
	tongaward_tasklink(nTongValueGift);	--¼ÓÉÏÃÅÅÉ½±Àø
	Task_NewVersionAward()
end

-- Ñ¡ÔñÁË¾­ÑéÖµµÄ½±Àø
function SelectAward_Exp(nAward)

-- ·ÀÖ¹¶µ¸öÃæ°æµ¯³öÀ´Ë¢½±ÀøµÄ´¦Àí
if (tl_gettaskcourse() == 3) then
	Say("D· tÈu: Ng­¬i ®· nhËn phÇn th­ëng råi mµ",0);
	return
end

	tl_addPlayerExp(nAward)
	Msg2Player("Ng­¬i nhËn ®­îc <color=green>"..nAward.."<color> kinh nghiÖm");
	
	tl_settaskcourse(3)
	PayPlayerLinkAward();
	local nBeishu = greatnight_huang_event(4);
	local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP);
	if (nBeishu > 0) then
		nTongValueGift = floor(nTongValueGift / nBeishu);
	end;
	tongaward_tasklink(nTongValueGift);	--¼ÓÉÏÃÅÅÉ½±Àø
	Task_NewVersionAward()
end

-- Ñ¡ÔñÔÙËæ»úÒ»´ÎµÄ½±Àø
function SelectAward_Change(nAward)

-- ·ÀÖ¹¶µ¸öÃæ°æµ¯³öÀ´Ë¢½±ÀøµÄ´¦Àí
if (tl_gettaskcourse() == 3) then
	Say("D· tÈu: Ng­¬i ®· nhËn phÇn th­ëng råi mµ",0);
	return
end

	Msg2Player("Ng­¬i nhËn ®­îc 1 c¬ héi hñy bá nhiÖm vô");
	
	tl_settaskcourse(3)
	PayPlayerLinkAward();

end

-- Ñ¡ÔñÁËÈ¡ÏûµÄ»ú»á
function SelectAward_Cancel(nAward)

local myCancel = 0;
local myNewCancel = GetTask(DEBUG_TASKVALUE);

	-- ·ÀÖ¹¶µ¸öÃæ°æµ¯³öÀ´Ë¢½±ÀøµÄ´¦Àí
	if (tl_gettaskcourse() == 3) then
		Say("D· tÈu: Ng­¬i ®· nhËn phÇn th­ëng råi mµ",0);
		return
	end


	
	myCancel = tl_gettaskstate(4)
	myCancel = myCancel + 1
	
	if myNewCancel==0 then
		myNewCancel = myCancel;
	else
		myNewCancel = myNewCancel + 1;		
	end;
	
	if myNewCancel<=254 then
		-- ÔÙ´æÒ»´ÎÁíÍâµÄ±äÁ¿
		nt_setTask(DEBUG_TASKVALUE, myNewCancel);
	end;
	
	tl_settaskstate(4, myCancel);
	
	if myCancel<=254 then
		Msg2Player("Ng­¬i lÊy ®­îc <color=green>mét c¬ héi hñy bá nhiÖm vô<color>!");
	end;

	WriteLog("[ÈÎÎñÁ´½±Àø¼Ç¢¼]"..
			 date("[%yÄê%mÔ¢%dÈÕ%HÊ±%M·Ö%SÃë]")..
			 "[ÕËºÅ]"..GetAccount()..
			 "[½ÇÉ«]"..GetName()..
			 "ÔÚÈÎÎñÁ´ÖĞ»ñµÃÁËÈ¡Ïû»ú»áµÄ½±Àø£¬µ±Ç°µÄÈ¡Ïû»ú»áÎª <"..myCancel.."> ´Î¡£");
	
	tl_settaskcourse(3)	
	PayPlayerLinkAward();
	
	local nBeishu = greatnight_huang_event(4);
	local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP);
	if (nBeishu > 0) then
		nTongValueGift = floor(nTongValueGift / nBeishu);
	end;
	tongaward_tasklink(nTongValueGift);	--¼ÓÉÏÃÅÅÉ½±Àø
	Task_NewVersionAward()
end


-- ·¢¸øÍæ¼ÒÁ´½±Àø¡¢»·½±Àø»òÕß»Æ½ğ×°±¸
function PayPlayerLinkAward()

local myGolden = {2,6,11,16,21,22,26,31,39,40,42,46,51,54,56,60,61,67,71,76,81,87,92,94,96,101,106,107,115,119,121,122,126,132,136,144,145,146} -- 20 »·½±Àø»Æ½ğ×°±¸µÄ±µºÅ
local nGoldenID = 0

local myTaskTimes = tl_gettaskstate(1)
local myTaskLinks = tl_gettaskstate(2)
local myTaskLoops = tl_gettaskstate(3)

local nTotalTask = tl_counttasklinknum(1);

-- ÉèÖÃÈÎÎñÍê³É´ÎÊıÅÅÃû
Ladder_NewLadder(10118, GetName(), nTotalTask, 1);

-- ÔÚÕâÀï·¢Óè¹Ì¶¨ÈÎÎñ´ÎÊıµÄ½±Àø
tl_getlinkaward(Task_AwardLink, nTotalTask);

-- Ô½ÄÏ°æÍê³É 8000 ´ÎÈÎÎñ²»×öÈÎºÎ´¦Àí
if (nTotalTask == 8000) then

--	nGoldenID = myGolden[random(getn(myGolden))]
	
	-- ¢ú 8000 ´ÎÈÎÎñ½±Àø 1E ½ğÇ®
	Earn(100000000);
	
--	AddGoldItem( 0, nGoldenID )
	
	WriteLog("[ÈÎÎñÁ´½±Àø¼Ç¢¼]"..date("[%yÄê%mÔ¢%dÈÕ%HÊ±%M·Ö]").."£ºÕËºÅ"..GetAccount().."£¬½ÇÉ«"..GetName().."ÔÚÈÎÎñÁ´½±ÀøÖĞÒòÎªÍê³É 8000 ´ÎÈÎÎñµÃµ½ÁË»Æ½ğ×°±¸Ò»¼ş£¬»Æ½ğ×°±¸±µºÅÎª£º"..nGoldenID)
	
	AddGlobalCountNews("¹«¸æ£ºÍæ¼Ò "..GetName().." ÒòÎªÍê³ÉÁË 8000 ´ÎÈÎÎñÔÚÒ°ÛÅ´¦µÃµ½ÁËÃÅÅÉ´ó»Æ½ğ×°±¸Ò»¼şºÍ½£ÏÀ±ÒÒ»ÒÚÁ½£¡£¡£¡", 3);
	
	for i=1,3 do
		Msg2Player("Chóc mõng ng­¬i ®· nhËn ®­îc 1 phÇn th­ëng quı gi¸ vµ 10000 v¹n l­îng v× ®· hoµn thµnh 8000 nhiÖm vô d· tÈu");
	end

	return
	
end

storm_ask2start(4, 1)	--Storm ¿ªÊ¼ÌôÕ½

end


--/////ÈÎÎñÁ´µÄÎŞ·¨½øĞĞÏ¢È¥µÄ BUG µÄĞŞ²¹/////

function _TaskLinkDebug()

	if (nt_getTask(1030)==0) and (tl_gettaskcourse()==1) then
		nt_setTask(1030,2);
		tl_savetalkvalue(1,2);
		tl_savetalkvalue(2,2);
		tl_savetalkvalue(3,2);
		tl_savetalkvalue(4,2);
		tl_savetalkvalue(5,2);
		tl_savetalkvalue(6,2);
	end

end


--  ////////////////////////////////////////////////
-- ///// ÅĞ¶ÏÍæ¼ÒÊÇ·ñË¢È¡Ïû»ú»áµÄ¹ı³Ì /////////////
--////////////////////////////////////////////////

function _CancelTaskDebug()

local nOrgTask = GetTask(DEBUG_TASKVALUE);
local nDecTask = tl_gettaskstate(4);
local nDiff    = 0;

	if nOrgTask==nDecTask or nOrgTask==0 then
		return 1;
	else
		WriteLog("[ÈÎÎñÁ´³ö´í¼Ç¢¼]"..
				 date("[%yÄê%mÔ¢%dÈÕ%HÊ±%M·Ö%SÃë]")..
				 "[ÕËºÅ]"..GetAccount()..
				 "[½ÇÉ«]"..GetName()..
				 "ÈÎÎñÈ¡Ïû»ú»á²»¾ùµÈ£¬µ±Ç°È¡Ïû»ú»áÎª <"..nDecTask..">£¬±¸·İµÄÈ¡Ïû»ú»áÎª <"..nOrgTask..">¡£");
		return 0;
	end;

end;

--  /////Êä³öÈÎÎñÈ¡ÏûÊ±µÄ LOG //////////////////////
-- ///// ´«ÈëµÄ²ÎÊıÎªÈÎÎñ´ÎÊıºÍÈ¡ÏûÈÎÎñµÄ»ú»á /////
--////////////////////////////////////////////////

function _WriteCancelLog(nType, nTime, nCancel)

	if nType==1 then
		WriteLog("[ÈÎÎñÁ´È¡Ïû¼Ç¢¼]"..date("[%yÄê%mÔ¢%dÈÕ%HÊ±%M·Ö]").."£ºÕËºÅ"..GetAccount().."£¬½ÇÉ«"..GetName().."ÔÚÈÎÎñ´ÎÊıÎª"..nTime.."È¡Ïû»ú»áÊ£Óµ"..nCancel.."Ê±È¡ÏûÁËÒ»´ÎÈÎÎñ¡£");
	else
		WriteLog("[ÈÎÎñÁ´È¡Ïû¼Ç¢¼]"..date("[%yÄê%mÔ¢%dÈÕ%HÊ±%M·Ö]").."£ºÕËºÅ"..GetAccount().."£¬½ÇÉ«"..GetName().."ÔÚÈÎÎñ´ÎÊıÎª"..nTime.."Ê±ÓÃ100ÕÅÉçğ¢Í¼È¡ÏûÁËÒ»´ÎÈÎÎñ¡£");
	end;

end;
