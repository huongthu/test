IncludeLib("ITEM");
IncludeLib( "FILESYS" );
Include( "\\script\\item\\item_header.lua" );
Include( "\\script\\task\\system\\task_string.lua" );
Include("\\script\\lib\\log.lua")

FILE_Recoin_COMPOUND = "recoin_goldenequip.txt";
--非生铸相关的头文件转移
-- 黄金装备碎品对应表

function initRecoinConfig()
	g_aryRecoinConfig = {};
	
	local nLatestItemVer = ITEM_GetLatestItemVersion();
	for i = 0, nLatestItemVer do
		local strFullPath = makeItemFilePath( i, FILE_Recoin_COMPOUND );
		TabFile_Load( strFullPath, strFullPath );
		g_aryRecoinConfig[i+1] = {};
		local nRowCount = TabFile_GetRowCount( strFullPath );
		for j = 2, nRowCount do
			
			local szGoldName = TabFile_GetCell( strFullPath, j, "DES_GOLDNAME", "NoITEM" );
			local nGenre = tonumber( TabFile_GetCell( strFullPath, j, "DES_GENRE", -1 ) );
			local nDetailtype = tonumber( TabFile_GetCell( strFullPath, j, "DES_DETAILTYPE", -1 ) );
			local nFirstPieceDetail = tonumber( TabFile_GetCell( strFullPath, j, "MAR_FIRST_DETAIL", -1 ) );
			local nPieceSum = tonumber( TabFile_GetCell( strFullPath, j, "MAR_COUNT", -1 ) );
			local nBadValues = tonumber( TabFile_GetCell( strFullPath, j, "DES_BADVALUES", 0 ) );
			local nStandardValues = tonumber( TabFile_GetCell( strFullPath, j, "DES_STANDARDVALUES", 0 ) );
		
		
			local szgoldkey = format("[%d,%d]",nGenre,nDetailtype)
			if g_aryRecoinConfig[i+1][szgoldkey] == nil then
				g_aryRecoinConfig[i+1][szgoldkey] = {}
			end
			g_aryRecoinConfig[i+1][szgoldkey].m_szGoldName = szGoldName
			g_aryRecoinConfig[i+1][szgoldkey].m_nFirstPieceDetail = nFirstPieceDetail
			g_aryRecoinConfig[i+1][szgoldkey].m_nPieceSum = nPieceSum
			g_aryRecoinConfig[i+1][szgoldkey].m_nBadValues = nBadValues
			g_aryRecoinConfig[i+1][szgoldkey].m_nStandardValues = nStandardValues
			local nNo = 1
			for k = nFirstPieceDetail,nFirstPieceDetail+nPieceSum-1 do 
				local szgoldpiecekey = format("[%d]",k)
				if g_aryRecoinConfig[i+1][szgoldpiecekey] == nil then
					g_aryRecoinConfig[i+1][szgoldpiecekey] = {}
				end
				g_aryRecoinConfig[i+1][szgoldpiecekey].m_szGoldName = szGoldName
				g_aryRecoinConfig[i+1][szgoldpiecekey].m_nGenre = nGenre
				g_aryRecoinConfig[i+1][szgoldpiecekey].m_nDetailtype = nDetailtype
				g_aryRecoinConfig[i+1][szgoldpiecekey].m_nPieceSum = nPieceSum
				g_aryRecoinConfig[i+1][szgoldpiecekey].m_nPieceNo = nNo
				nNo = nNo + 1
				--g_aryRecoinConfig[i+1][szgoldpiecekey].m_nBadValues = nBadValues
				--g_aryRecoinConfig[i+1][szgoldpiecekey].m_nStandardValues = nStandardValues
			end
		end
	end
end

initRecoinConfig();

-- 黄金装备包含碎品数量和所需信物数量对应表
TB_MARK_ITEM_COUNT =
{
	{6, 1},	-- 黄金包含6个以上碎片需要至少1个信物
	{9,	2},	-- 黄金包含9个以上碎片需要至少2个信物
};

-- 黄金装备拆分附加物品的价值量
TB_ENHANCE_ITEM = {
		["6,1,398"] = 100000000,	-- 神秘矿石
		["6,1,122"] = 600000,		-- 福缘露（小）
		["6,1,123"] = 1200000,		-- 福缘露（中）
		["6,1,124"] = 3000000,		-- 福缘露（大）
		["4,238,1"] = 5000000,		-- 兰水晶
		["4,239,1"] = 5000000,		-- 紫水晶
		["4,240,1"] = 5000000,		-- 绿水晶
};

MARK_ITEM_ID = "4,979,1";								-- 黄金装备拆分信物（金犀）
GLBID_SPLIT_LAST_DATE = 919;							-- 全局变量ID of 最后一次装备拆分的日期
GLBID_SPLIT_DAILY_COUNT = 920;							-- 全局变量ID of 当天执行装备拆分的次数
SPLIT_COUNT_DAILY_THRESHOLD = 500;						-- 一台GameSvr一天内可执行装备拆分的次数上限
SPLIT_AVAILABLE_DATE_RANGE = { 20080113, 20080401 };	-- 装备拆分功能开放的开始、结束时间

FRAME_EXCHANGE_COIN = 2;			-- 交换装备碎片所需支付的铜钱个数
TASKTMP_EXCHANGE_FRAME = 194;		-- 要交换的装备碎片的索引

-- 黄金装备拆分
-- Fanghao_Wu	2006-06-21
function split_entry()
	local aryDescribe = {};
	local nTodayString = tonumber(GetLocalDate("%Y%m%d"));
	
	aryDescribe =
		{
		"<dec><npc>Ta c� th� ph﹏ m秐h trang b� Ho祅g Kim. Зy c騨g l� t﹎ huy誸 c� i c馻 s� ph� ta.",
			"Trang b� Ho祅g Kim n祔 c� th� chia th祅h m蕐 m秐h?/want_split_preview",
			"C� th� gi髉 ta ph﹏ m秐h trang b� Ho祅g Kim n祔 頲 kh玭g?/#want_split(0)",
			"C竎h ph﹏ m秐h trang b� Ho祅g Kim./about_split",
			"ng quan t﹎, ta ch� thu薾 mi謓g n鉯 ra th玦./cancel",
		};
	CreateTaskSay(aryDescribe);
end

function want_split_preview()
	GiveItemUI("Xem th� ph﹏ m秐h trang b�.", "t v祇 trang b� Ho祅g Kim, Kim T�, Kho竛g th筩h th莕 b�, Ph骳 Duy猲 L� ta s� cho ngi bi誸 s� lng m秐h trang b� c� th� ph﹏ ra.", "do_split_preview", "cancel", 1);
end

function want_split(bNoConfirm)
	if (_is_split_available() ~= 1) then
		return
	end
	if (bNoConfirm ~= 1 and CalcFreeItemCellCount() < 9) then
		CreateTaskSay(	{	"<dec><npc>H祅h trang kh玭g  kho秐g tr鑞g, h穣 s緋 x誴 sao cho c遪 d� 9 � tr鑞g. N誹 kh玭g, m秐h trang b� r韙 ra s� b� ngi kh竎 l蕐 m蕋, l骳  ng tr竎h ta kh玭g nh綾 nh�.",
							"H祅h trang   ch� tr鑞g r錳, xin h穣 ti誴 t鬰!/#want_split(1)",
							"V藋  ta s緋 x誴 l筰 h祅h trang !/cancel"	}	);
	else
		GiveItemUI("Ph﹏ m秐h trang b�", "t trang b� Ho祅g Kim, Kim T�, Kho竛g th筩h th莕 b�, Th駓 Tinh, Ph骳 Duy猲 L� v祇 ta m韎 c� th� gi髉 ngi ph﹏ m秐h, N誹 trang b� t v祇 trong tr筺g th竔 b� kh鉧 th� m秐h trang b� ph﹏ ra c騨g s� � tr筺g th竔 n祔!", "do_split", "cancel");
	end
end

function about_split()
	local aryDescribe =
	{
		"<dec><npc>Mu鑞 ph﹏ m秐h trang b� th� a n� cho ta l� 頲, nh璶g ta c莕 m閠 th� g鋓 l� <color=yellow>Kim T�<color>. Ch� � trang b� Ho祅g Kim c� th� ph﹏ th祅h 4, 6, 9 m秐h t飝 theo trang b�. Ph﹏ 4 m秐h thng kh玭g c莕 d飊g <color=yellow>Kim T�<color> c騨g 頲. Mu鑞 ph﹏ 6 m秐h th� y猽 c莡 ph秈 c� 輙 nh蕋 1 <color=yellow>Kim T�<color>, mu鑞 ph﹏ 9 m秐h th� c莕 2 <color=yellow>Kim T�<color>, ngo礽 ra n誹 a ta nhi襲 <color=yellow>Kim T�<color>, <color=yellow>Kho竛g th筩h th莕 b�<color>, <color=yellow>Th駓 Tinh<color> v� <color=yellow>Ph骳 Duy猲 L�<color> th� m秐h trang b� ph﹏ th祅h c� th� 頲 nhi襲 h琻. Ta nh� <color=yellow>Kim T�<color> c� b竛 trong <color=blue>K� Tr﹏ C竎<color>.",
		"Ta bi誸 r錳!/split_entry",
	};
	CreateTaskSay(aryDescribe);
end

function do_split(nItemCount)
	_do_split_process(nItemCount, 0);
end

function do_split_preview(nItemCount)
	_do_split_process(nItemCount, 1);
end

function _do_split_process(nItemCount, bPreview)
	local nComposeEntryIdx = 0;
	local nMarkItemCount = 0;
	local nSrcItemValueSum = 0;
	local szContinueFunc = "";
	local szItemInfo = "";
	if (bPreview ~= 1) then
		if (_is_split_available() ~= 1) then
			return
		end
		szContinueFunc = "#want_split(0)";
	else
		szContinueFunc = "#want_split_preview()";
	end
	
	local nItemBindState;	--原料黄金的绑定状态
	local tb_enhanceitem_count = {};
	for szkey, tb_item in TB_ENHANCE_ITEM do
		tb_enhanceitem_count[szkey] = {};
		tb_enhanceitem_count[szkey][1] = 0;
	end;
	local nversion,nFirstPiece,nPieceSum,nBadVaules,nStandardValues,szgoldName;
	-- 校验物品是否匹配
	for i = 1, nItemCount do
		local nCurItemIdx = GetGiveItemUnit(i);
		local nCurItemName = GetItemName(nCurItemIdx);
		local nCurItemQuality = GetItemQuality(nCurItemIdx);
		local tbCurItemProp = pack(GetItemProp(nCurItemIdx));
		local nExpiredTime = ITEM_GetExpiredTime(nCurItemIdx);
		local nCurItemValue = 0;
		if (nCurItemQuality == 1) then
			--如果不是装备(可能是损坏装备)
			if (tbCurItemProp[1] ~= 0) then
				CreateTaskSay(	{	"<dec><npc>Ngo礽 <color=yellow>trang b� Ho祅g Kim<color> v� <color=yellow>Kim T�<color> ra, ch� c� <color=yellow>Kho竛g th筩h th莕 b�<color>, <color=yellow>Th駓 Tinh<color> v� <color=yellow>Ph骳 Duy猲 L�<color> l� nguy猲 li謚 ta c莕, nh鱪g th� kh竎 h穣 c蕋 l筰 甶.",
					format("Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./%s",szContinueFunc),
					"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
				return
			end
			
			
			if (nExpiredTime > 0) then -- 有保质期的装备，不能拆！
				CreateTaskSay(	{	"<dec><npc>Trang b� c� <color=fire>th阨 h筺 s� d鬾g<color> th� kh玭g th� r蘮 頲.",
									"Th藅 l� th� l鏸, ta l筰 b� nh莔 n鱝 r錳. M閠 l骳 sau quay l筰 nh�/cancel"	}	);
				return
			end
			
			
			nversion = ITEM_GetItemVersion( nCurItemIdx ) + 1;
			
			local szgoldkey = format("[0,%d]",GetGlodEqIndex(nCurItemIdx))
			if nFirstPiece == nil then
				if (g_aryRecoinConfig[nversion][szgoldkey])~= nil then
							szgoldName = g_aryRecoinConfig[nversion][szgoldkey].m_szGoldName
							nFirstPiece = g_aryRecoinConfig[nversion][szgoldkey].m_nFirstPieceDetail
							nPieceSum = g_aryRecoinConfig[nversion][szgoldkey].m_nPieceSum
							nBadVaules = g_aryRecoinConfig[nversion][szgoldkey].m_nBadValues
							nStandardValues = g_aryRecoinConfig[nversion][szgoldkey].m_nStandardValues
				end
			else
				CreateTaskSay(	{	"<dec><npc>Kh竎h quan mu鑞 ph﹏ m秐h trang b� Ho祅g Kim n祇? Ta kh玭g hoa m総 ch�?",
									format("Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./%s",szContinueFunc),
									"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
				return
			end
			
			if (nFirstPiece == nil) then
				CreateTaskSay(	{	format("<dec><npc>Th藅 ng ti誧, v韎 kh� n╪g hi謓 th阨 c馻 ta, kh玭g th� gi髉 ngi ph﹏ m秐h trang b� Ho祅g Kim <color=yellow>%s<color> n祔.",GetItemName(nCurItemIdx)),
									format("Ch� t筼 trang b� Ho祅g Kim kh竎./%s",szContinueFunc),
									"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
				return
			end
			nCurItemValue = nBadVaules;
			nItemBindState = GetItemBindState(nCurItemIdx)	--获取绑定状态
			szItemInfo = getItemInfo(nCurItemIdx);
			writeRecoinLog("[Nguy猲 li謚 ch輓h ph﹏ m秐h Ho祅g Kim]", szItemInfo);
		else
			local szItemKey = format("%s,%s,%s",tbCurItemProp[1],tbCurItemProp[2],tbCurItemProp[3])
			if (szItemKey == MARK_ITEM_ID) then
				nMarkItemCount = nMarkItemCount + 1;
				nCurItemValue = ITEM_CalcItemValue(nCurItemIdx);
			else
				if (TB_ENHANCE_ITEM[szItemKey] == nil) then
					CreateTaskSay(	{	"<dec><npc>Ngo礽 <color=yellow>trang b� Ho祅g Kim<color> v� <color=yellow>Kim T�<color> ra, ch� c� <color=yellow>Kho竛g th筩h th莕 b�<color>, <color=yellow>Th駓 Tinh<color> v� <color=yellow>Ph骳 Duy猲 L�<color> l� nguy猲 li謚 ta c莕, nh鱪g th� kh竎 h穣 c蕋 l筰 甶.",
										format("Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./%s",szContinueFunc),
										"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
					return
				end
				nCurItemValue = TB_ENHANCE_ITEM[szItemKey];
				tb_enhanceitem_count[szItemKey][1] = tb_enhanceitem_count[szItemKey][1] + 1;
				tb_enhanceitem_count[szItemKey][2] = nCurItemName;
			end
		end
		nSrcItemValueSum = nSrcItemValueSum + nCurItemValue;
	end
	if (szgoldName == nil) then
		CreateTaskSay(	{	"<dec><npc>N誹 mu鑞 ta gi髉 ph﹏ m秐h trang b� th� h穣 甧m trang b�  n y, kh玭g c� trang b� ta kh玭g th� gi髉 ngi.",
							format("Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./%s",szContinueFunc),
							"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
		return
	end
	for i = getn(TB_MARK_ITEM_COUNT), 1, -1 do
		if (nPieceSum >= TB_MARK_ITEM_COUNT[i][1]) then
			if (nMarkItemCount < TB_MARK_ITEM_COUNT[i][2]) then
				CreateTaskSay(	{	format("<dec><npc>Ph﹏ m秐h trang b� n祔 c莕 輙 nh蕋 <color=yellow>%s Kim T�<color>, n誹 kh玭g ph秈 trang b� Ho祅g Kim th� c� th� s� b� h醤g.  t譵  <color=yellow>Kim T�<color> r錳 h穣 quay l筰. Ta nh� v藅 n祔 c� b竛 � <color=blue>K� Tr﹏ C竎<color>.",TB_MARK_ITEM_COUNT[i][2]),
									format("Х  r錳,  ta th� l筰 xem!/%s",szContinueFunc),
									"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
				return
			end
			break;
		end
	end
	
	-- 校验物品匹配成功，计算碎片数量及概率
	local aryProb = { { 0, 0 }, { 0, 0 } };
	local dFrameCount = nSrcItemValueSum / nStandardValues * nPieceSum;
	if (dFrameCount >= nPieceSum) then
		-- 投入大于最多碎片的总价值量，百分百出最多碎片
		aryProb[1][1] = nPieceSum;
		aryProb[1][2] = 1;
	else
		aryProb[1][1] = ceil(dFrameCount);
		aryProb[1][2] = 1 - (ceil(dFrameCount) - dFrameCount);
		aryProb[2][1] = aryProb[1][1] - 1;
		aryProb[2][2] = 1 - aryProb[1][2];
	end
	
	if (bPreview == 1) then
		local szPrompt = "<dec><npc>"
		for i = 1, 2 do
			if (aryProb[i][2] > 0) then
				if (aryProb[i][1] > 0) then
					szPrompt = szPrompt..format("trang b� Ho祅g Kim n祔 c� x竎 su蕋 \n<color=yellow>%5.2f%%<color> c� th� ph﹏ th祅h <color=yellow>%d<color> m秐h\n", aryProb[i][2] * 100, aryProb[i][1]);
				else
					szPrompt = szPrompt..format("trang b� n祔 c� \n<color=yellow>%5.2f%%<color> kh� n╪g ph﹏ m秐h th蕋 b筰\n", aryProb[i][2] * 100);
				end
			end
		end
		CreateTaskSay(	{	szPrompt,
							"H穣 gi髉 ta xem trang b� kh竎 c� th� ph﹏ th祅h bao nhi猽 m秐h./want_split_preview",
							"C� th� gi髉 ta ph﹏ m秐h trang b� Ho祅g Kim n祔 頲 kh玭g?/#want_split(0)",
							"Ta bi誸 r錳, xin 產 t�./cancel"	}	);
		return
	else
		-- 删原料
		for i = 1, nItemCount do
			if (RemoveItemByIndex(GetGiveItemUnit(i)) ~= 1) then
				WriteLog(format("[Ph﹏ m秐h trang b� Ho祅g Kim] %s\t%s\t%s\t x鉧 v藅 ph萴 th蕋 b筰 \t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(GetGiveItemUnit(i))));
				return
			end
		end
		-- 给碎片
		if (random() <= aryProb[1][2]) then
			dFrameCount = aryProb[1][1];
		else
			dFrameCount = aryProb[2][1];
		end
		local aryFrameDetailType = {};
		local szExpendableLog = "";
		local szFrameNameLog = "";
		for i = 1, nPieceSum do
			aryFrameDetailType[i] = nFirstPiece + i - 1;
		end
		for i = 1, dFrameCount do
			local nRandNum = random(getn(aryFrameDetailType));
			local nIdx = NewItemEx(4, 0, 0, 4, aryFrameDetailType[nRandNum], 1, 0, 0, 0);
			if nItemBindState ~= 0 then 
				--把碎片设置为源黄金装备的绑定状态值
				SetItemBindState(nIdx, nItemBindState)
			end
			AddItemByIndex(nIdx);
			szFrameNameLog = szFrameNameLog..szgoldName..format("M秐h [%s]\t",aryFrameDetailType[nRandNum]);
			tremove(aryFrameDetailType, nRandNum);
		end
		if (dFrameCount > 0) then
			CreateTaskSay(	{	format("<dec><npc> Trang b� <color=yellow>%s<color> ph﹏ m秐h xong r錳, h穣 mang <color=yellow>%s<color> m秐h n祔 甶. N誹 ng祔 n祇 mu鑞 h頿 th祅h ch髇g l筰 th� h穣 mang c竎 m秐h n祔 n g苝 ta.",szgoldName,dFrameCount),
								"Xin 產 t�!/cancel"	}	);
		else
			CreateTaskSay(	{	format("<dec><npc>Ph﹏ m秐h <color=yellow>%s<color> th蕋 b筰, l莕 sau h穣 d飊g nhi襲 nguy猲 li謚 h琻.",szgoldName),
								"Ta bi誸 r錳!/cancel"	}	);
		end
		-- 记录每日装备拆分执行次数
		SetGlbValue(GLBID_SPLIT_DAILY_COUNT, GetGlbValue(GLBID_SPLIT_DAILY_COUNT) + 1);
		-- 记录Log
		for szkey, tb_item in tb_enhanceitem_count do
			if (tb_enhanceitem_count[szkey][1] > 0) then
			szExpendableLog = szExpendableLog..tb_enhanceitem_count[szkey][2]..format("[%s](%s#)\t",szkey,tb_enhanceitem_count[szkey][1]);
			end;
		end;
	WriteLog(format("[Ph﹏ m秐h Ho祅g Kim] %s\t%s\t%s\t%s\t ti猽 hao: Kim T� (%s)\t%s ph﹏ th祅h %s m秐h:",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szgoldName,nMarkItemCount,szExpendableLog,dFrameCount,szFrameNameLog));
		writeRecoinLog("[Ph﹏ m秐h trang b� Ho祅g Kim]", szItemInfo);
		return
	end
end

-- 判断是否可以进行装备拆分，即在开放日期内，并且还没到达当日装备拆分次数上限
function _is_split_available()
	local nTodayString = tonumber(GetLocalDate("%Y%m%d"));
	--reloadRecoinGoldenDate();
	
	local nLastDate = GetGlbValue(GLBID_SPLIT_LAST_DATE);
	if (nLastDate ~= nTodayString) then
		SetGlbValue(GLBID_SPLIT_LAST_DATE, nTodayString);
		SetGlbValue(GLBID_SPLIT_DAILY_COUNT, 0);
	else
		local nDailySplitCount = GetGlbValue(GLBID_SPLIT_DAILY_COUNT);
		if (nDailySplitCount >= SPLIT_COUNT_DAILY_THRESHOLD) then
			CreateTaskSay(	{	"<dec><npc>Xin th� l鏸, h玬 nay ta  qu� m謙, ng祔 mai h穣 quay l筰 nh�!",
								"V藋 ta s� quay l筰 sau!/cancel"	}	);
			return 0;
		end
	end
	return 1;
end

-- 黄金装备碎片合成
-- 小浪多多
function compose_entry()
	local aryDescribe =
	{
		"<dec><npc>Ch� c莕 a ta to祅 b� m秐h trang b�, kh玭g d� kh玭g thi誹 ho芻 c� 2 m秐h trang b� gi鑞g nhau, ta s� gi髉 ngi h頿 th祅h.",
		"Ta c�  b� m秐h trang b� mu鑞 nh� 玭g h頿 th祅h./want_compose",
		"Ta ch� gh� xem cho bi誸./cancel",
	};
	CreateTaskSay(aryDescribe);
end

function want_compose(bNoConfirm)
--	if (bNoConfirm ~= 1 and CalcFreeItemCellCount() < 6) then
--		CreateTaskSay(	{	"<dec><npc>你背包的剩余空间不多了，最好整理一下留出6格空间来，否则合成好的黄金装备掉地上被别人捡走可别怪我没提醒你哦。",
--							"背包空间够了，没关系，继续吧/#want_compose(1)",
--							"那我先整理一下背包吧/cancel"	}	);
--	else
		GiveItemUI("H頿 th祅h trang b�", "Mu鑞 h頿 th祅h trang b� ph秈 c�  b� c竎 m秐h c馻 trang b� . N誹 m秐h trang b� 產ng trong tr筺g th竔 b� kh鉧 th� trang b� h頿 th祅h v蒼 s� trong tr筺g th竔 kh鉧.", "do_compose", "cancel", 1);
--	end
end

function do_compose(n_count)
	if (n_count <= 0) then
		CreateTaskSay(	{	"<dec><npc>N誹 mu鑞 h頿 th祅h trang b� th� h穣 甧m c竎 m秐h trang b� cho ta, n誹 kh玭g  b� ta kh玭g gi髉 ngi 頲.",
							"Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./want_compose",
							"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
		return
	end

	--看看是不是所有物品都是同一种类
	local n_goldgenre,n_golddetail,nversion,szgoldname,nPieceSum,nFirstPiece
	local tb_tgot = {}
	for i = 1, n_count do 
		local n_itemidx = GetGiveItemUnit(i)
		
		nversion = ITEM_GetItemVersion( n_itemidx ) + 1;

		local tb_p
		tb_p = pack(GetItemProp(n_itemidx))
		local szgoldkey = format("[%d]",tb_p[2])

--		print(GetItemProp(n_itemidx))
		if (tb_p[1] ~= 4 or g_aryRecoinConfig[nversion][szgoldkey] == nil ) then
			CreateTaskSay(	{	"<dec><npc>H頿 th祅h trang b� ch� c莕 c� m秐h trang b� tng 鴑g l� 頲, nh鱪g th� kh竎 ngi h穣 c蕋 l筰 甶.",
								"Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./want_compose",
								"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
			return
		elseif (GetItemStackCount(n_itemidx) ~= 1) then
			CreateTaskSay(	{	"<dec><npc>m秐h trang b� kh玭g th� x誴 ch錸g. Ngi kh玭g nghe ta d苙 r錳!",
								"Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./want_compose",
								"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
			return
		elseif not n_golddetail then	--根据第一个物品找到要合成的是哪种碎片

				nPieceSum = g_aryRecoinConfig[nversion][szgoldkey].m_nPieceSum
				n_goldgenre = g_aryRecoinConfig[nversion][szgoldkey].m_nGenre
				n_golddetail = g_aryRecoinConfig[nversion][szgoldkey].m_nDetailtype
				szgoldname = g_aryRecoinConfig[nversion][szgoldkey].m_szGoldName
				
				if (n_count > nPieceSum) then
					CreateTaskSay(	{	format("<dec><npc>Kh竎h quan mu鑞 h頿 th祅h <color=yellow]>%s<color>? Лa ta nhi襲  v藋  l祄 g�? Ch� c莕 <color=yellow>%s<color> m秐h l� 頲.",szgoldname,nPieceSum),
											"Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./want_compose",
											"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
						return
				elseif (n_count < nPieceSum) then
					CreateTaskSay(	{	format("<dec><npc>Kh竎h quan mu鑞 h頿 th祅h <color=yellow>%s<color>? Kh玭g c�  m秐h trang b�, kh玭g th� h頿 th祅h.",szgoldname),
											"Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./want_compose",
											"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
						return
				end
					n_type = 1

		elseif (g_aryRecoinConfig[nversion][szgoldkey].m_nDetailtype ~= n_golddetail) then	--除第一个外，所有碎片都应是同一种类
			CreateTaskSay(	{	"<dec><npc>H頿 th祅h trang b� c莕 c� m秐h trang b�, ngi a ta m秐h trang b� kh玭g ng, kh玭g th� h頿 th祅h.",
								"Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./want_compose",
								"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
			return
		end

		local n_sid = tb_p[2]
		if tb_tgot[n_sid] then	--放了两张同样的碎片进来
			CreateTaskSay(	{	format("<dec><npc>Ta kh玭g c莕 2 m秐h trang b� gi鑞g nhau, h頿 th祅h <color=yellow>%s<color> c莕 <color=yellow>%s<color>  <color=yellow>m秐h %s<color>, h穣 nh� k�!",szgoldname,nPieceSum,szgoldname),
								"Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./want_compose",
								"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
			return
		end
		tb_tgot[n_sid] = 1	--已有碎片标记
	end
	--安全检查，发布后可以删掉（如果有信心的话）
	local szkey = format("[0,%d]",n_golddetail)
	if g_aryRecoinConfig[nversion][szkey] == nil then
			CreateTaskSay(	{	"<dec><npc>Ph竧 sinh l鏸 h� th鑞g?", "Cho竛g.../cancel"	}	);
			local str = "do_compose ERROR!!! not tb_tgot "..i;
			WriteLog(format("[H頿 th祅h m秐h trang b� Ho祅g Kim] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str));		
	end
	for i = g_aryRecoinConfig[nversion][szkey].m_nFirstPieceDetail,g_aryRecoinConfig[nversion][szkey].m_nPieceSum-1 do
		if not tb_tgot[i] then
			CreateTaskSay(	{	"<dec><npc>Ph竧 sinh l鏸 h� th鑞g?", "Cho竛g.../cancel"	}	);
			local str = "do_compose ERROR!!! not tb_tgot "..i;
			WriteLog(format("[H頿 th祅h m秐h trang b� Ho祅g Kim] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str));
			return
		end
	end
	--删原料
	local bBind = nil
	for i=1, n_count do
		local nIdx = GetGiveItemUnit(i)
		if (GetItemBindState(nIdx) ~= 0) then
			bBind = 1
		end
		if (RemoveItemByIndex(nIdx) ~= 1) then
			WriteLog(format("<H頿 th祅h m秐h Ho祅g Kim> %s\t%s\t%s\t x鉧 v藅 ph萴 th蕋 b筰 \t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(GetGiveItemUnit(i))));
			return
		end
	end
	--给物品
	
	local str = format("H頿 th祅h <color=yellow>%s<color> th祅h c玭g!",szgoldname)
	Msg2Player(str)
	local nItem = AddGoldItem(n_goldgenre,n_golddetail)
	local szItemInfo = getItemInfo(nItem);
	--只要原料中有绑定或解绑状态，合出的黄金为绑定
	if (bBind) then
		BindItem(nItem)
	end
	--AddGlobalNews("据传闻 "..GetName().." 用装备碎片成功合成了"..szgoldname.."。")
	WriteLog(format("[H頿 th祅h m秐h trang b� Ho祅g Kim] %s\t%s\t%s\t%s",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),str));
	writeRecoinLog("[M秐h Ho祅g Kim h頿 th祅h Ho祅g Kim]", szItemInfo);
end

-- 黄金装备碎片交换
--
function exchange_entry()
	local aryDescribe =
	{
		format("<dec><npc>Ch� c莕 a <color=yellow>%s ti襫 ng<color> ta s� gi髉 ngi i m秐h trang b� tng 鴑g.",FRAME_EXCHANGE_COIN),
		"ng quan t﹎, ta ch� thu薾 mi謓g n鉯 ra th玦./cancel",
	};
	for i = 9, 1, -1 do
		tinsert(aryDescribe, 2, format("M秐h th� %d/#want_exchange(%d)",i,i));
	end
	CreateTaskSay(aryDescribe);
end

function want_exchange(nFrameIdx)
	if (CalcItemCount(3, 4, 417, 1, -1) < FRAME_EXCHANGE_COIN) then
		CreateTaskSay(	{	format("<dec><npc>Kh玭g c� ti襫 ng l祄 sao i m秐h trang b�. H穣 t譵  <color=yellow>%s ti襫 ng<color> r錳 h穣 quay l筰 g苝 ta.",FRAME_EXCHANGE_COIN),
							"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
		return
	end
	SetTaskTemp(TASKTMP_EXCHANGE_FRAME, nFrameIdx);
	GiveItemUI("фi m秐h trang b�", "t v祇 1 m秐h trang b� mu鑞 i. Ti襫 ng s� t� ng b� kh蕌 tr�.", "do_exchange", "cancel", 1);
end

function do_exchange(nItemCount)
	if (nItemCount ~= 1) then
		CreateTaskSay(	{	"<dec><npc>M閠 l莕 ch� c� th� i 1 m秐h.",
							"Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./exchange_entry",
							"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
		return
	end
	local nItemIdx = GetGiveItemUnit(1);
	local tbItemProp = pack(GetItemProp(nItemIdx));
	local nFirstPiece,nPieceSum,nPieceNo,nFirstPiece
	if GetItemStackCount(nItemIdx) ~= 1 then
		CreateTaskSay(	{	"<dec><npc> M秐h trang b� kh玭g th� x誴 ch錸g, m鏸 l莕 ch� c� th� i 1 m秐h.",
							"Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./exchange_entry",
							"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
		return		
	end
	if (tbItemProp[1] == 4) then
		local szgoldkey = format("[%d]",tbItemProp[2])
		local nversion = ITEM_GetItemVersion( nItemIdx ) + 1;
		
		if g_aryRecoinConfig[nversion][szgoldkey] ~= nil then
			--nFirstPiece = g_aryRecoinConfig[nversion][szgoldkey].m_nFirstPieceDetail
			nPieceSum = g_aryRecoinConfig[nversion][szgoldkey].m_nPieceSum
			szGoldName = g_aryRecoinConfig[nversion][szgoldkey].m_szGoldName
			nPieceNo = g_aryRecoinConfig[nversion][szgoldkey].m_nPieceNo
			nFirstPiece = tbItemProp[2] - (nPieceNo - 1)
		end
	end
	if nPieceSum == nil then
		CreateTaskSay(	{	"<dec><npc>Ta ch� c� th� gi髉 ngi i m秐h trang b� Ho祅g Kim, ngi a ta c竔 g� v藋?",
							"Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./exchange_entry",
							"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
		return
	end
	local nExchangeFrameIdx = GetTaskTemp(TASKTMP_EXCHANGE_FRAME);
	if (nExchangeFrameIdx < 1 or nExchangeFrameIdx > nPieceSum) then
		CreateTaskSay(	{	format("<dec><npc>M秐h <color=yellow>%s<color> mu鑞 i t鎛g c閚g c� <color=yellow>%s<color> m秐h, kh玭g c� m秐h th� <color=yellow>%s<color>.",szGoldName,nPieceSum,nExchangeFrameIdx),
							"Ha ha, i hi謕 c騨g c� l骳 b蕋 c萵,  ta t v祇 l筰./exchange_entry",
							"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
		return
	end
	if (CalcItemCount(3, 4, 417, 1, -1) < FRAME_EXCHANGE_COIN) then
		CreateTaskSay(	{	format("<dec><npc>Kh玭g c� ti襫 ng l祄 sao i m秐h trang b�. H穣 t譵  <color=yellow>%s ti襫 ng<color> r錳 h穣 quay l筰 g苝 ta.",FRAME_EXCHANGE_COIN),
							"Th藅 ng筰 qu�, ta s� quay l筰 sau./cancel"	}	);
		return
	end
	if (ConsumeItem(3, FRAME_EXCHANGE_COIN, 4, 417, 1, -1) ~= 1) then
		WriteLog(format("[фi m秐h Ho祅g Kim] %s\t%s\t%s\t X鉧 ti襫 ng th蕋 b筰.",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName()));
		return
	end
	if (RemoveItemByIndex(nItemIdx) ~= 1) then
		WriteLog(format("[фi m秐h Ho祅g Kim] %s\t%s\t%s\t X鉧 v藅 ph萴 th蕋 b筰 \t%s",GetLocalDate("%Y-%m-%d %H:%M:%S",GetAccount(),GetName(),GetItemName(nItemIdx))));
	end
	AddItem(4, nFirstPiece + nExchangeFrameIdx - 1, 1, 0, 0, 0);
	CreateTaskSay(	{	format("<dec><npc>T譵 th蕐 m秐h th�  <color=yellow>%s<color> c馻  <color=yellow>%s<color>, h穣 c莔 l蕐 甶!",nExchangeFrameIdx,szGoldName),
						"Xin 產 t�!/cancel"	}	);
	WriteLog(format("[фi m秐h Ho祅g Kim] %s\t%s\t%s\t%s m秐h(%s) i th祅h (%s)",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),szGoldName,tbItemProp[2],(nFirstPiece + nExchangeFrameIdx - 1)));
end

function pack(...)
	return arg
end

function cancel()
end

--{randseed,q,g,d,P,level,series,lucky,<magic1,magic2,magic3,magic4,magic5,magic6>}(gentime)(platinalvl)

--[时间]	[黄金拆分]	Account	Name
--[时间]	主要材料：

function writeRecoinLog(szTitle, szLog)
	WriteLog(format("  %s\t%s\tNAME:%s\tACCOUNT:%s",GetLocalDate("%Y-%m-%d %H:%M:%S"), szTitle,GetName(),GetAccount()));
	WriteLog(format("  %s\t%s", GetLocalDate("%Y-%m-%d %H:%M:%S"), szLog));
end;

function reloadRecoinGoldenDate()
	local tb_NewAvailableDate = {gb_GetTask("RECOIN_GOLDENEQUIP",1), gb_GetTask("RECOIN_GOLDENEQUIP",2)};
	if (tb_NewAvailableDate[1] ~= 0 and tb_NewAvailableDate[2] ~= 0 and tb_NewAvailableDate[2] ~= SPLIT_AVAILABLE_DATE_RANGE[2]) then
		SPLIT_AVAILABLE_DATE_RANGE[1] = tb_NewAvailableDate[1];
		SPLIT_AVAILABLE_DATE_RANGE[2] = tb_NewAvailableDate[2];
	end;
end;