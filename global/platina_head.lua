IncludeLib("ITEM");
IncludeLib("FILESYS")

TB_PLATINAEQ_GOLDEQ ={
--[白金ID] = {白金ID, 黄金ID,装备升级价值量系数,装备名};
--[1] = {1, 1, 4, "梦龙之正黄僧帽"},
}

function LoadPlatinaEquipSetting()
	
	local b1 = TabFile_Load("\\settings\\task\\equipex\\platina_def.txt", "PlatinaData")
	if b1~=1 then
		print("T秈 t藀 tin th╪g c蕄 trang b� B筩h Kim th蕋 b筰!")
		return
	end
	local nRowCount = TabFile_GetRowCount("PlatinaData", "EQUIPNAME")
	
	for y = 2, nRowCount do
		local platinaid = tonumber(TabFile_GetCell("PlatinaData", y, "PLATINAID"));
		
		local goldid = tonumber(TabFile_GetCell("PlatinaData", y, "GOLDID"));
		local taskrate = tonumber(TabFile_GetCell("PlatinaData", y, "TASKRATE"));
		local name = TabFile_GetCell("PlatinaData", y, "EQUIPNAME");
		
		TB_PLATINAEQ_GOLDEQ[platinaid] = {platinaid, goldid, taskrate, name};
	end	
end;

LoadPlatinaEquipSetting()

--白金装备各等级升级的价值量
PLATINAEQ_UPGRADERATE_BASIC = 10000;
TB_PLATINAEQ_UPGRADERATE = {
	[0] = 2000*PLATINAEQ_UPGRADERATE_BASIC,
	[1] = 4000*PLATINAEQ_UPGRADERATE_BASIC,
	[2] = 6000*PLATINAEQ_UPGRADERATE_BASIC,
	[3] = 8000*PLATINAEQ_UPGRADERATE_BASIC,
	[4] = 10000*PLATINAEQ_UPGRADERATE_BASIC,
	[5] = 15000*PLATINAEQ_UPGRADERATE_BASIC,
	[6] = 30000*PLATINAEQ_UPGRADERATE_BASIC,
	[7] = 50000*PLATINAEQ_UPGRADERATE_BASIC,
	[8] = 80000*PLATINAEQ_UPGRADERATE_BASIC,
	[9] = 120000*PLATINAEQ_UPGRADERATE_BASIC,
};

-- 白金升级的必需的材料
tb_upgrade_material	=
{
	--[材料ID] = {材料名，价值量，材料Level，所需数量，升级几级白金}
	["6,1,1308"] 	= {szName = "B� Thi猲 Th筩h (ti觰)", nValue = 20000000},
	["6,1,1309"] 	= {szName = "B� Thi猲 Th筩h (trung)", nValue = 100000000},
	["6,1,1310"]	= {szName = "B� Thi猲 Th筩h (i)", nValue = 1000000000},
	["6,1,2127"]	= {szName = "B綾 u luy謓 kim thu藅 (Quy觧 1)", nValue = 0, nCount = 1, nUpgradeLevel = 6},
	["6,1,2160"]	= {szName = "B綾 u luy謓 kim thu藅 (Quy觧 2)", nValue = 0, nCount = 1, nUpgradeLevel = 7},
	["6,1,2161"]	= {szName = "B綾 u luy謓 kim thu藅 (Quy觧 3)", nValue = 0, nCount = 1, nUpgradeLevel = 8},
	["6,1,2162"]	= {szName = "B綾 u luy謓 kim thu藅 (Quy觧 4)", nValue = 0, nCount = 1, nUpgradeLevel = 9},
};

tb_gold2planita_material =
{
	["6,1,398"] 	= {szName = "Th莕 b� kho竛g th筩h", nCount = 1},
	["6,1,147"] 	= {szName = "Huy襫 Tinh Kho竛g Th筩h c蕄 8", nItemLevel = 8, nCount = 1},
	["6,1,1309"]	= {szName = "B� Thi猲 Th筩h (trung)", nCount = 1},
};

tbUpGradeProcess = {
[1] = {
				tbUpItemList = tb_gold2planita_material,
				szErrorMsg = "<dec><npc>Ngo礽 <color=yellow>trang b� B筩h Kim<color>, ta c遪 c莕 <color=yellow>Th莕 b� kho竛g th筩h<color>, color=yellow>Huy襫 Tinh Kho竛g Th筩h c蕄 8<color> v� <color=yellow>m秐h B� Thi猲 Th筩h (trung)<color>, xin h穣 gi� l筰 nh鱪g th� kh竎.",
				nItemQuality = 1,
				szGetEquipIDFunc = "GetGlodEqIndex",
				szContinueFunc = "want_upgoldeq",
				szDoProcessFunc = "UpgradePlatinaFromGoldItem"},
[3] = {
				tbUpItemList = tb_upgradematerial,
				szErrorMsg = "<dec><npc>Ngo礽 <color=yellow>trang b� B筩h Kim<color>, ta c遪 c莕  <color=yellow>m秐h B� Thi猲 Th筩h<color> n鱝, xin h穣 gi� l筰 nh鱪g th� kh竎.",
				nItemQuality = 4,
				szGetEquipIDFunc = "GetPlatinaEquipIndex",
				szContinueFunc = "want_upplatinaeq",
				szDoProcessFunc = "UpgradePlatinaItem"},
}
