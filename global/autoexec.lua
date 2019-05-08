-- �Զ�����npc�ű�
Include("\\script\\missions\\maze\\head.lua")
Include("\\script\\missions\\bairenleitai\\head.lua")
Include("\\script\\missions\\maze\\addstatdata.lua")
Include("\\script\\global\\addxishancunnpc.lua")
Include("\\script\\task\\tollgate\\killbosshead.lua")
Include("\\script\\task\\tollgate\\addtollgatenpc.lua") --���عؿ������漰��NPC
Include("\\script\\task\\partner\\partner_head.lua")    --����ͬ�������漰��NPC
Include("\\script\\missions\\freshman_match\\add_championnpc.lua")
Include("\\script\\event\\mid_autumn\\add_zhongqiunpc.lua")
Include("\\script\\missions\\newcitydefence\\cd_addsignnpc.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\missions\\leaguematch\\wlls_autoexec.lua")	--WLLS ��������
Include("\\script\\missions\\statinfo\\head.lua")	--����ͳ��
Include("\\script\\event\\wulin_2nd\\wulin_addmaster.lua")
Include("\\script\\global\\addspreadernpc.lua")			--��Ϸ�ƹ�Ա
Include("\\script\\missions\\tongwar\\tongwar_autoexec.lua")
Include("\\script\\task\\lv120skill\\head.lua")	-- 120����������
Include("\\script\\tong\\addtongnpc.lua")
Include("\\script\\��ԭ����\\�꾩\\�꾩\\trap\\bianjing_ximen_trap.lua")
Include("\\script\\������\\��ɽ��\\addnpcandtrap.lua")
Include("\\script\\event\\jiefang_jieri\\200904\\denggao\\npc.lua");	-- ��������
Include("\\script\\event\\change_destiny\\npc.lua");	-- �������
Include("\\script\\missions\\newpracticemap\\addnpc.lua");	-- ��������ͼ	
Include("\\script\\event\\jiefang_jieri\\201004\\beat_tiger\\head.lua"); -- Ѱ����
Include("\\script\\misc\\timeline\\timelinemanager.lua") --ʱ����
Include("\\script\\global\\autoexec_head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\��������\\����\\����\\trap\\dali_heidong_trap.lua")
------------------------NPC TU TAO -------------------------
Include("\\script\\global\\quanlygame\\addnpc.lua")

if (GetProductRegion() =="cn"or GetProductRegion() =="cn_ib") then
	-- ������ļʹ����ͷ�ļ�
	Include("\\script\\task\\lord\\head.lua");
end

if (GetProductRegion() =="vn") then
	-- 2006 ����ڻͷ�ļ�
	Include("\\script\\event\\mid_autumn06\\autoexe.lua");
	Include("\\script\\global\\judgeoffline_special.lua")	--���������ȡ����йܷ�������ͼ
	Include("\\script\\event\\collect_juanzhou\\autoaddnpc.lua")--�ռ����ؾ�������������npc
	Include("\\script\\event\\act2years_yn\\head.lua")       --Խ����������������npc
	Include("\\script\\event\\vnchristmas2007\\addnpc.lua") --Խ��2007ʥ����,����npc
	Include("\\script\\event\\newyear_2008\\cailu\\addnpc.lua")	--Խ��2008���ڲ�»npc
	Include("\\script\\������\\������\\heisha_autoexec.lua")	-- Խ������������to��ɳ��trap��
	
	Include("\\script\\event\\great_night\\great_night_head.lua")	--˫�����ƽ�֮��
end
	

MSID_LOCALNEWS = 17 --ϵͳ�Զ�����LocalNews��ʱ���¼����

maptab={};
maptab[1]=209;
maptab[2]=210;
maptab[3]=211;
maptab[1]=212;
clearskillmap = {243, 245, 247, 249, 251, 253,255}

adddialognpc = {
{950,1,1642, 3270, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},
{950,11,3186, 5182, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},
{950,162,1680, 3276, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},
{950,37,1692, 3212, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},
{950,78,1582, 3380, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},
{950,80,1692, 3218, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},
{950,176,1689, 3289, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},


	{377,387,1570,3132,"\\script\\task\\tollgate\\messenger\\messenger_flyrukou.lua","D�ch quan"},
	{377,388,1570,3132,"\\script\\task\\tollgate\\messenger\\messenger_flyrukou.lua","D�ch quan"},
	{377,389,1570,3132,"\\script\\task\\tollgate\\messenger\\messenger_flyrukou.lua","D�ch quan"},

	{377,390,1320,3185,"\\script\\task\\tollgate\\messenger\\messenger_templerukou.lua","D�ch quan"},
	{377,391,1320,3185,"\\script\\task\\tollgate\\messenger\\messenger_templerukou.lua","D�ch quan"},
	{377,392,1320,3185,"\\script\\task\\tollgate\\messenger\\messenger_templerukou.lua","D�ch quan"},

	{377,393,1412,3203,"\\script\\task\\tollgate\\messenger\\messenger_turerukou.lua","D�ch quan"},
	{377,394,1412,3203,"\\script\\task\\tollgate\\messenger\\messenger_turerukou.lua","D�ch quan"},
	{377,395,1412,3203,"\\script\\task\\tollgate\\messenger\\messenger_turerukou.lua","D�ch quan"},

	--{387,176,1314,3194,"\\script\\������\\�ٰ�\\�ٰ�\\npc\\ְ��_��������.lua","Th� r�n th�n b�"},
	{769,11,3210,4974,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p Th� Tr�n"},
	{769,1,1506,3198,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p Th� Tr�n"},
	{769,37,1647,3050,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p Th� Tr�n"},
	{769,176,1372,3010,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p Th� Tr�n"},
	{769,162,1573,3227,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p Th� Tr�n"},
	{769,78,1512,3206,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p Th� Tr�n"},
	{769,80,1700,2963,"\\script\\task\\tollgate\\killer\\nieshichen.lua","Nhi�p Th� Tr�n"},
	 {1783,  174, 1644,3308, "\\script\\global\\��������.lua", "Ng��i h��ng d�n bang h�i"},
	 {1783,  121, 2036,4507, "\\script\\global\\��������.lua", "Ng��i h��ng d�n bang h�i"},
	 {1783,  153, 1609,3257, "\\script\\global\\��������.lua", "Ng��i h��ng d�n bang h�i"},
	 {1783,  101, 1694,3118, "\\script\\global\\��������.lua", "Ng��i h��ng d�n bang h�i"},
	 {1783,  99,  1578,3209, "\\script\\global\\��������.lua", "Ng��i h��ng d�n bang h�i"},
	 {1783,  100, 1614,3167, "\\script\\global\\��������.lua", "Ng��i h��ng d�n bang h�i"},
	 {1783,  20,  3534, 6197, "\\script\\global\\��������.lua", "Ng��i h��ng d�n bang h�i"},
	 {1783,  53,  1593, 3188, "\\script\\global\\��������.lua", "Ng��i h��ng d�n bang h�i"},
}

nw_npclist = {
	{1434, 176, 1478, 3238,"\\script\\nationalwar\\npc.lua","N�i c�c th��ng th�"},	-- �ڸ����飨�Σ�
	{1435, 37,  1785, 3041,"\\script\\nationalwar\\npc.lua","N�i c�c th��ng th�"},	-- �ڸ����飨��
}

-- �߳Ǵ�ս
npclist_sevencity = {
--	{950, 1, 	1642, 3270, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},
--	{950, 11, 	3186, 5182, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},
--	{950, 162, 	1680, 3276, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},
--	{950, 37, 	1692, 3212, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},
--	{950, 78, 	1582, 3380, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},
--	{950, 80, 	1692, 3218, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},
--	{950, 176, 	1689, 3289, "\\script\\missions\\sevencity\\dialog_npc.lua", "Ti�p ��u C�ng Th�nh Chi�n"},
}


addnewtasknpc={


{1320,80,4,37,1857,2968,0,"Vi�m  �� b�o t�ng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},

{389,80,4,851,1577,3184,0,"D��c th��ng",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},
{389,80,4,851,1607,3178,0,"D��c th��ng",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},
{389,80,4,852,1577,3184,0,"D��c th��ng",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},
{389,80,4,852,1607,3178,0,"D��c th��ng",0,"\\script\\missions\\yandibaozang\\npc\\yaoshang.lua"},
{1320,80,4,100,1626,3190,0,"B�nh B�nh C� N��ng",0,"\\script\\missions\\yandibaozang\\npc\\yandibaozang_main.lua"},

}



addmasknpc = {


}



Include([[\script\event\springfestival07\head.lua]]);

tab_springfestivalNPC = 
{


	
};

tab_zingplay_npc = {
-- ZingPlayʹ���Ѿ����� 2008-09-27
-- ���� ��ʦ�ڻ�Ķ�ʦ 2008-10-03
-- ���� JxWeb��ͨʹ�� 2009-04-13
	{354,11,3150,5075,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng"},
	{354,1,1611,3096,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng"},
	{354,37,1725,3090,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng"},
	{354,176,1557,2981,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng"},
	{354,162,1654,3233,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng"},
	{354,78,1599,3292,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng"},
	{354,80,1737,2958,	"\\script\\event\\other\\jxweb_npc\\npc_jxweb.lua","S� Gi� Ho�t ��ng"},
}

--220/192
local tbActNpcList =
{

};

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\event\\other\\shensuanzi\\class.lua")
Include("\\script\\activitysys\\functionlib.lua")

Include("\\script\\task\\150skilltask\\g_task.lua")
--Include("\\script\\global\\quanlygame\\npc_hoason.lua")
function main()
    dofile("script/global/autoexec.lua");
	DynamicExecute("\\script\\missions\\tianchimijing\\floor1\\gamefloor1.lua","GameFloor1:Start")
	DynamicExecute("\\script\\missions\\tianchimijing\\floor2\\gamefloor2.lua","GameFloor2:Start")
	DynamicExecute("\\script\\missions\\tianchimijing\\floor3\\gamefloor3.lua","GameFloor3:Start")
	DynamicExecute("\\script\\missions\\tianchimijing\\floor4\\gamefloor4.lua","GameFloor4:Start")
	
--�¸赺
	DynamicExecute("\\script\\missions\\yuegedao\\yuegedao\\yuegedaoworld.lua","YueGeDaoWorld:Start")
	DynamicExecute("\\script\\missions\\yuegedao\\yuegemigu\\yuegemiguworld.lua","YueGeMiGuWorld:Start")

	DynamicExecute("\\script\\changefeature\\initmap.lua","AddDailogNpc")
	DynamicExecute("\\script\\global\\npc\\huoke.lua","CallHuoKeInit")
	DynamicExecute("\\script\\missions\\tianchimijing\\floor1\\yunchihead.lua","AddEnterNpc")
	tbShenSuanZi:Init()
	
	OpenGlbMission(8)
	
	-- ��������ͳ������
	OpenGlbMission(MSID_STAT_GOODS_SALE)
	
	mapcount = getn(maptab)
	for i = 1, mapcount do 
		idx = SubWorldID2Idx(maptab[i]);
		if (idx ~= -1) then 
			SubWorld = idx;
			OpenMission(2);
		end;
	end
	
	------------------------- add npc tu tao ------------
	add_development(npchotrotanthu)

	-----------------------------------------------------
	buildAllCityInfoLeague()
	-- �һ���ͼ����
	load_mission_aexp();
	add_dialognpc(adddialognpc);
	add_dialognpc(nw_npclist)
	--add_dialognpc(npclist_sevencity)
	add_newtasknpc(addnewtasknpc);
	add_xishancunnpc(xishancunnpc);
	---add_allnpc_hoason()
	--add_spreadernpc(spreadernpc);		--������Ϸ�ƹ�Ա
	add_killertasknpc(addkillertasknpc);
	add_alltollgatenpc();   --���عؿ���������npc
	add_allpartnernpc();     --����ͬ����������npc
	add_zhongqiunpc();		--��������npc
	cd_addsignnpc()			--��������ս��������NPC
	wlls_autoexe()	--WLLS ��������
	--������NPC    
	add_dialognpc(%tbActNpcList)
	tongwar_addsignnpc()
	add_tongnpc()	--���ذ�����npc
	local n_date = tonumber(GetLocalDate("%Y%m%d"));
	local szRegion = GetProductRegion();
	if (szRegion =="cn"or szRegion =="cn_ib") then
		add_dialognpc(addmasknpc)	--7����м���������ʿ
		add_wulinnpc_2nd()	--�ڶ������ִ���Ա
		
		add_lv120skillnpc()		-- 120����������
		-- 2006 ʥ���
		add_dialognpc(ch06_addchristmasnpc);
		add_lottery_npc();	--����ļ������ 4��������٣�3�³�ɾ��
		addGraveStone(); -- 2006 �����ڻ
		qm07_addGraveStone()
	end

	if (szRegion =="cn_ib") then
		addEmissaryNpc()        -- ��ļʹ��������
	end

	if (szRegion =="vn") then
		add_dialognpc(ACT2YEAR_YN_NPC);	--������NPC   by�ӷ��� 2008-10-09ɾ������NPC
		AnonymVale_auto();
		add_dialognpc(addmasknpc)			--�йܵ�ͼ
		add_dialognpc(tab_springfestivalNPC);
		add_dialognpc(addmoontown_mulao);	--�ռ����ؾ�������������npc by�ӷ��� 2008-10-09ɾ������NPC

		add_dialognpc(tbaddJinShanDao_NpcAndTrap.tbDialogNpc);--���ӶԻ�npc
		tbaddJinShanDao_NpcAndTrap:AddTrapR()--������trap��
		tbaddJinShanDao_NpcAndTrap:AddTrapL()--������trap��
		tbaddJinShanDao_NpcAndTrap:AddMons()--���ӹ���
		--add_obstacle_map();
		if (n_date <= 20200101) then			-- JxWeb�����ʱ��
		--add_dialognpc(tab_zingplay_npc);
		end
		if(SubWorldID2Idx(11) >= 0) then
			local npcidx = AddNpc(245, 1, SubWorldID2Idx(11), 390 * 8 * 32, 317 * 16 * 32, 1,"Thi�n S�n ��ng L�o");
			SetNpcScript(npcidx,"\\script\\event\\jiefang_jieri\\200904\\denggao\\npc.lua");
		end
		--add_dialognpc(au06_tab_kidnpc);
		
		tbChangeDestiny:addNpc();	-- �������
		tbNewPracticeMap:addNpc();	-- ��������ͼ
		tbBeatTiger:AddNpc();		-- Ѱ����
	end
	--���Ӵ���ڶ�trap��
	add_trap_daliheidong()
	--�����꾩������trap��
	add_trap_bianjingximen()
	add_heisha_entertrap();
	
	G_ACTIVITY:LoadActivitys()
	G_TASK:LoadAllConfig()
	G_ACTIVITY:OnMessage("ServerStart");
	
	tbTimeLineManager:LoadAllTimeLine(tbTimeLineList);
	AutoFunctions:Run()
	
	local szFile ="\\script\\event\\great_night\\great_night_head.lua"
	DynamicExecute(szFile,"OnGreatNightServerStart")
end;

function load_mission_aexp()
	mapTab = {235, 236, 237, 238, 239, 240, 241,53,11,153};
	nCount = getn(mapTab);
	
	oldSubWorld = SubWorld;
	for i = 1, nCount do
		idx = SubWorldID2Idx(mapTab[i]);
		if (idx ~= -1) then 
			SubWorld = idx;
			OpenMission(9);	-- 9Ϊ�һ�Mission ID
		end;
	end;
	
	SubWorld = oldSubWorld;
end;

function add_dialognpc(Tab)
	for i = 1 , getn(Tab) do 
		local itemlist = Tab[i]
		SId = SubWorldID2Idx(itemlist[2]);
		if (SId >= 0) then
			
			npcindex = AddNpc(itemlist[1], 1, SId, itemlist[3] * 32, itemlist[4] * 32, 1, itemlist[6]);
			SetNpcScript(npcindex, itemlist[5]);
		else
			if itemlist[1] == 1454 then
				print(itemlist[6], itemlist[2])
			end
		end;
	end	
end;

function add_newtasknpc(Tab1)
	for i = 1 , getn(Tab1) do
		Mid = SubWorldID2Idx(Tab1[i][4]);
		if (Mid >= 0 ) then
			TabValue5 = Tab1[i][5] * 32
			TabValue6 = Tab1[i][6] * 32
			newtasknpcindex = AddNpc(Tab1[i][1],Tab1[i][2],Mid,TabValue5,TabValue6,Tab1[i][7],Tab1[i][8]);
			SetNpcScript(newtasknpcindex, Tab1[i][10]);
		end;
	end;
end;

local tbTiFuNpc =
{
	tbNpc =
	{
		{nNpcId=377, szName="L� Quan", nPosX=1532, nPosY=3231, szScript="\\script\\global\\·��_���.lua"},
		{nNpcId=389, szName="Ch� d��c �i�m", nPosX=1556, nPosY=3242, szScript="\\script\\global\\npc\\yaodian.lua"},
		{nNpcId=240, szName="Thuy�n Phu", nPosX=1519, nPosY=3237, szScript="\\script\\global\\npc\\chuanfu.lua"},
		{nNpcId=309, szName="C�ng B�nh T�", nPosX=1570, nPosY=3233, szScript="\\script\\missions\\bw\\bwmanager.lua"},
	},
	tbMap = {235, 236, 237, 238},
}
function add_tifu_npc()
	local tbMap = %tbTiFuNpc.tbMap
	local tbNpc = %tbTiFuNpc.tbNpc
	local nMapCount = getn(tbMap)
	local nNpcCount = getn(tbNpc)
	for i=1, nMapCount do
		local nSubWorldIdx = SubWorldID2Idx(tbMap[i])
		if nSubWorldIdx >= 0 then
			ClearMapNpc(tbMap[i])
			ClearMapTrap(tbMap[i])
			for j=1, nNpcCount do
				local tbNpcInfo = tbNpc[j]
				local nNpcIndex = AddNpcEx(tbNpcInfo.nNpcId, 1, random(0,4), nSubWorldIdx, tbNpcInfo.nPosX*32, tbNpcInfo.nPosY*32, 0, tbNpcInfo.szName, 0)
				SetNpcScript(nNpcIndex, tbNpcInfo.szScript)
			end
		end
	end
end


Include("\\script\\lib\\getrectangle_point.lua") --��þ��ε�

function add_trap_daliheidong()
	local tbpoint =
	{
		tbtoppoint={1832,3232},
		nleftstep = 80,
		nrightstep = 75,
	}
	local nMapID = 162 --����
	local szScriptfile = "\\script\\��������\\����\\����\\trap\\����ڶ�.lua"
	local tballpoint = getRectanglePoint(tbpoint)
	for nx,tbp in tballpoint do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile)
	end
end


function vlus_npc()
	local tbNpcList = {
		{1137,52,51216,102280,"H� tr� T�n th�","\\script\\vlus\\npctanthu.lua"},
	}
	for i=1, getn(tbNpcList) do
		local nID = AddNpc(tbNpcList[i][1],1,tbNpcList[i][2],tbNpcList[i][3],tbNpcList[i][4],3,tbNpcList[i][5])
		SetNpcScript(nID, tbNpcList[i][6])
	end
end

function add_development(npchotrotanthu)
	for i = 1 , getn(npchotrotanthu) do
		Mid = SubWorldID2Idx(npchotrotanthu[i][4]);
		if (Mid >= 0 ) then
			TabValue5 = npchotrotanthu[i][5] * 32;
			TabValue6 = npchotrotanthu[i][6] * 32;
			local nNpcIdx = AddNpc(npchotrotanthu[i][1],npchotrotanthu[i][2],Mid,TabValue5,TabValue6,npchotrotanthu[i][7],npchotrotanthu[i][8]);
			SetNpcTimer(nNpcIdx,5*18)
			SetNpcScript(nNpcIdx, npchotrotanthu[i][10]);
		end;
	end;
end
