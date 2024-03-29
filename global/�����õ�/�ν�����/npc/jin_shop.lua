
-- Modified by Bil4i3n

Include("\\script\\global\\bil4i3n\\bill4i3n.lua")

IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\task\\system\\task_string.lua");

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

Include("\\script\\global\\特殊用地\\宋金报名点\\npc\\head.lua")
Include("\\script\\global\\特殊用地\\宋金报名点\\npc\\songjin_shophead.lua")

Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")

Include("\\script\\global\\bil4i3n\\bil4i3n_doi_diem_tong_kim.lua")

tbLimit_Exp = {
						[0] = 700000,
						[3] = 800000,
						[4] = 1000000, 
					};
YUEWANGHUN_STONECOUNT = 100
nState = 0;

function main(sel)
	if BilNpcSongJinShop == nil then
		Talk(1, "", "Library Bill4i3n.lua c� v蕁 , y猽 c莡 qu秐 l� ki觤 tra g蕄.")	
		return
	end
	local nWorld, _, _ = GetWorldPos()
	nOldSW = SubWorld
	SubWorld = SubWorldID2Idx(325)
	if (nState == 0) then
		bt_setnormaltask2type()
		nState = 1;
	end
	battlemapid = BT_GetGameData(GAME_MAPID);
	if (battlemapid <= 0) then
			maintalk()
			return 
	end
	SyncTaskValue(747);
	battlemap = SubWorldID2Idx(BT_GetGameData(GAME_MAPID));
	if (battlemap < 0) then
		Msg2Player("error"..battlemap)
		return
	end
	
	tempSubWorld = SubWorld;
	SubWorld = battlemap
	state = GetMissionV(MS_STATE);
	
	if (state == 0 or state == 1) then
		maintalk()
		SubWorld = tempSubWorld;
		return
	else
		Talk(1,"",BilNpcSongJinShop.."Ph輆 trc chi課 trng 產ng trong giai 畂筺 tranh 畂箃 quy誸 li謙, c竎 v� vui l遪g tr竛h 甶 m閠 x輚.")
		SubWorld = tempSubWorld;
		return
	end;
	SubWorld = nOldSW;	
end;

function no()
end;

function jinshop_sell()
		Sale(98, 4);
		-- Sale(196, 4);
end;

function maintalk()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end
	local tbDailog = DailogClass:new(szNpcName)
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	local BilSongJinszTitleMsg = BilNpcSongJinShop.."N琲 y l� chi課 trng, ngi c莕 ta gi髉 c竔 g�?"
	local AddOption = {}
	tinsert(AddOption, "Ta mu鑞 mua o c�/jinshop_sell")
	tinsert(AddOption, "T筰 h� mu鑞 quy i 甶觤 T輈h l騳 sang ph莕 thng/#SJ_PointExChange:Main()")
	tinsert(AddOption, "V� song m穘h tng chi課 trng/wushuangmengjiang")
	tinsert(AddOption, "S� d鬾g nh筩 vng h錸 th筩h luy謓 nh筩 vng ki誱/yuewang_want")
	tinsert(AddOption, "K誸 th骳 i tho筰/Oncanel")
	Say(BilSongJinszTitleMsg, getn(AddOption), AddOption)
end

function xunzhang_exchange()
	if( GetLevel() < 40 ) then
		Talk( 1, "", "Quan Ti誴 Li謚 : ch� ca 50 c蕄 tr� l猲 ngi ch琲 m韎 ca th� nh薾 l蕐 huy chng");
		return 0
	elseif ( GetExtPoint(0)==0 ) then
		Talk( 1, "", "Quan Ti誴 Li謚 : Ch� ca  sung tr~ gi� ngi ch琲 m韎 ca th� nh薾 l蕐 huy chng");
		return 0
	elseif ( CalcFreeItemCellCount() < 1 ) then
		Talk( 1, "", "Xin m阨 chu萵 b~ m閠 ch� tr鑞g t韎  1 c竔 huy chng");
		return 0;
	else
		Say("Quan Ti誴 Li謚 : Ngi ngh� d飊g 500 tUch ph﹏ i l蕐 huy chng sao?", 2,"фi l蕐 huy chng/xunzhang_do", "Kh玭g mu鑞/no");
	end
end

function xunzhang_do()
	if nt_getTask(747) < 500 then
		Say("觤 tUch ph﹏ ch璦  500, kh玭g th� nh薾 l蕐 huy chng",0);
		return 0;
	end
	nt_setTask(747, floor(nt_getTask(747) - 500));
	local nidx = AddItem(6,1,1412,1,0,0) 
	WriteLog(format("[GetZhanGongXunZhang]\t date:%s \t Account:%s \t Name:%s \t GetItem:%s Del:500SongJinJiFen\t",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(nidx)));
	Say("Х th祅h c玭g nh薾 l蕐 m閠 huy chng",0);
end

function exp_exchange()
	if( GetLevel() < 40 ) then
		Talk( 1, "", "<color=Orange>Qu﹏ nhu quan<color>: Ngi kh玭g ca t t韎 40 c蕄, kh玭g th� tham gia.");
	else
		if (GetTiredDegree() == 2) then
			Say(BilNpcSongJinShop.."H玬 nay ta m謙 r錳, khi kh竎 h穣 n nh�!",0);
		else
			local tbOpt = 
			{
				"500 甶觤 t輈h l騳/#wantpay(500)", 
				"1000 甶觤 t輈h l騳/#wantpay(1000)",
				"2000 甶觤 t輈h l騳/#wantpay(2000)",
				"5000 甶觤 t輈h l騳/#wantpay(5000)",
				"T蕋 c� 甶觤 t輈h l騳/#wantpay(9999)",
				"Kh玭g mu鑞 i/no"
			}
			Say(BilNpcSongJinShop.."Ngi mu鑞 i bao nhi猽 甶觤 t輈h l騳 th祅h kinh nghi謒", getn(tbOpt), tbOpt);
		end;
	end
end;


function wantpayex(mark, nStep)
	
	if GetLevel() < 120 then
		Talk(1, "", format("Y猽 c莡 c莕 %d c蕄 tr� l猲 m韎 ca th� i l蕐.", 120))
		return 
	end
	
	if PlayerFunLib:CheckTaskDaily(2645, 1, "Nh薾 thng m鏸 ng祔 ch� ca th� nh薾 l蕐 m閠 l莕.", "<") ~= 1 then
		return
	end
	local nDate = tonumber(GetLocalDate("%Y%m%d"))
				
	if gb_GetTask("songjin butianshi2009", 1) ~= nDate then
		gb_SetTask("songjin butianshi2009", 1, nDate)
		gb_SetTask("songjin butianshi2009", 2, 0)
	end
	
	if gb_GetTask("songjin butianshi2009", 2) >= 10 then
		Talk(1, "", "M鏸 ng祔 m鏸 ph鬰 v� khU, nhanh nh蕋 mi ngi m韎 ca th� i l蕐 ph莕 thng.")
		return 
	end
	
	if( mark > nt_getTask(747) ) then
		Say("Quan TiOp Li謚 : Ng礽 tUch l?y 甶觤 ch璦 , mu鑞 t 頲 kinh nghi謒 tr~ gi�.", 1, "Kh玭g/no");
	elseif (mark == 0) then
		Say("Quan TiOp Li謚 : Kh玭g ca kinh nghi謒 tr~ gi� c遪 mu鑞 i h鋍 h醝 kinh nghi謒 nghi謒 tr~ gi� a, th藅 l� hoang 阯g.", 1, "Kh玭g/no");
	else
		local level = GetLevel();
		local bonus = bt_exchangeexp(level, mark)
		
		local tbItem = {szName="B� thi猲 th筩h to竔 phiOn ( trung ))", tbProp={6, 1, 1309, 1, 0, 0}}
		if nStep == 1 then
			if (expchange_limit(mark) == 1) then
				nt_setTask(747, floor(nt_getTask(747) - mark))
				AddOwnExp( bonus);
				Add120SkillExp(bonus);
				
				tbAwardTemplet:GiveAwardByList(tbItem, "MidAutumn,GetItemFromSongjin")
				gb_AppendTask("songjin butianshi2009", 2, 1)
				PlayerFunLib:AddTaskDaily(2645, 1)	
				Msg2Player("<#>Ng礽  ti猽 hao"..mark.."<#>tUch 甶觤, i l蕐"..bonus .."<#>kinh nghi謒.");
				WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]:Х ti猽 hao"..mark.."tUch 甶觤, i l蕐"..bonus.."kinh nghi謒.");
			end
			
			
			
		elseif nStep == 0 then
			Say("Quan TiOp Li謚 : Ng礽 ca th� i l蕐"..bonus.."觤 kinh nghi謒, x竎 畘nh i l蕐 ph秈 kh玭g?", 2, "цi v韎 ta ph秈 thay i/#wantpayex("..mark..",1"..")", "Uh,  cho ta suy ngh� l筰 m閠 ch髏/no")	
		end
		
	end	
end

function wantpay(mark)
	if (mark == 9999) then		
		mark = nt_getTask(747)
	end
	
	if( mark > nt_getTask(747) ) then
		Say(BilNpcSongJinShop.."Ng礽 ch璦  甶觤, kh玭g th� i.", 0);
	elseif (mark == 0) then
		Say(BilNpcSongJinShop.."Х kh玭g c� 甶觤 t輈h l騳 m� c騨g i kinh nghi謒, th藅 l� hoang 阯g.", 0);
	else
		-- local level = GetLevel();
		-- local bonus = bt_exchangeexp(level, mark)
		local bonus = Bil_SongJinExChangeExp(mark)
		Say(BilNpcSongJinShop.."Ng礽 c� th� i <color=yellow>"..mark.."<color> 甶觤 t輈h l騳 l蕐 <color=green>"..floor(bonus).."<color> 觤 kinh nghi謒 kh玭g th� c閚g d錸, x竎 nh i ph秈 kh玭g?", 2, "уng � i/#paymark("..mark..")", "Uh,  cho ta suy ngh� l筰 m閠 ch髏/no")
	end	
end

function paymark(mark)
	if (mark == 9999) then
		mark = nt_getTask(747)
	end
	
	if( mark > nt_getTask(747) ) then
		Say(BilNpcSongJinShop.."Ng礽 ch璦  甶觤, kh玭g th� i.", 0);
	elseif (mark == 0) then
		Say(BilNpcSongJinShop.."Х kh玭g c� 甶觤 t齝h l騳 m� c騨g i kinh nghi謒, th藅 l� hoang 阯g.", 0);
	else
		local level = GetLevel();
		-- local bonus = bt_exchangeexp(level, mark)
		local bonus = floor(Bil_SongJinExChangeExp(mark))
		if (expchange_limit(mark) == 1) then
			nt_setTask(747, floor(nt_getTask(747) - mark))
			AddOwnExp( bonus);
			-- Add120SkillExp(bonus);
			Msg2Player("Ng礽  t鑞 "..mark.."<#> 甶觤, i l蕐 "..bonus .." kinh nghi謒.");
			WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: ?严�"..mark.."甶觤, i l蕐"..bonus.." kinh nghi謒.");
		end
	end
end


function expchange_limit(cost)
	local nNumber = tbVNG2011_ChangeSign:GetTransLife()	
	local Limit_Exp = tbLimit_Exp[nNumber]
	if ( (nt_getTask(1017) + cost) <= Limit_Exp) then
		nt_setTask(1017, nt_getTask(1017) + cost)
		return 1
	else
		Say("Quan TiOp Li謚 : kh玭g mu鑞 nh� v藋 tham lam, trong v遪g m閠 tu莕 l� kh玭g th� i l蕐 vt qua<color=red>"..Limit_Exp.."<color> tUch 甶觤 kinh nghi謒", 0)
		return -1
	end
end

function nt_setTask(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID) 
end

function nt_getTask(nTaskID)
	return GetTask(nTaskID)
end

function person_change()
	Say("Quan TiOp Li謚 : ? <color=yellow> ng h祅g b譶h lu薾 b秐g thng <color> ng h祅g <color=yellow> 5 t猲 <color> th� nh蕋 nh� ch琲 甧m t 頲 c bi謙 danh hi謚 c飊g uy phong h譶h tng", 3, "Xem t鑞g kim nam nh﹏ v藅 h譶h tng/title_male","Xem t鑞g kim n� nh﹏ v藅 h譶h tng/title_female","Kh玭g mu鑞 xem !/no" )
end;

function title_male()
	Describe("<link=image:\\spr\\npcres\\enemy\\enemy208\\enemy208_at.spr>T鑞g kim nam nh﹏ v藅 h譶h tng <link> � ng h祅g b秐g tr猲 ca 5 c� t猲 甎ch nam nh﹏ v藅 b譶h lu薾 甧m t 頲 tng 鴑g h譶h tng", 1, "Kh玭g/no" );
end

function title_female()
	Describe("<link=image:\\spr\\npcres\\enemy\\enemy207\\enemy207_at.spr>T鑞g kim n� nh﹏ v藅 h譶h tng <link> � ng h祅g b秐g tr猲 ca 5 c� t猲 甎ch n� nh﹏ v藅 b譶h lu薾 甧m t 頲 tng 鴑g h譶h tng", 1, "Kh玭g/no" );
end

function effect_aura()
	Say("Quan TiOp Li謚 : � <color=yellow> ng h祅g b譶h lu薾 b秐g thng <color> ng h祅g <color=yellow>5 t猲 <color> ngi th� nh蕋 v藅 tng t 頲 c bi謙 v遪g tr遪 c hi謚", 6, "Xem 畘nh nc Nguy猲 so竔 c hi謚/aura_dingguo","Xem an bang Чi tng qu﹏ c hi謚/aura_anbang","Xem phi猽 k� tng qu﹏ c hi謚/aura_biaoji","Xem trong ch鑞 v� l﹎ lang c hi謚/aura_yulin","Xem chi猽 v? gi竜 髖 c hi謚/aura_zhaowu","Kh玭g!/no" );
end

function aura_dingguo()
	Describe("<link=image:\\spr\\skill\\others\\title_dg.spr>nh nc Nguy猲 so竔 c hi謚 <link> nh﹏ v藅 b譶h lu薾 xOp h祅g th� nh蕋 nai t 頲 v遪g tr遪 c hi謚", 1, "Kh玭g/no" );
end

function aura_anbang()
	Describe("<link=image:\\spr\\skill\\others\\title_ab.spr>An bang Чi tng qu﹏ c hi謚 <link> nh﹏ v藅 b譶h lu薾 ng h祅g th� hai 甧m t 頲 v遪g tr遪 c hi謚", 1, "Kh玭g/no" );
end

function aura_biaoji()
	Describe("<link=image:\\spr\\skill\\others\\title_bj.spr>Phi猽 k� tng qu﹏ c hi謚 <link> nh﹏ v藅 b譶h lu薾 ng h祅g th� ba nai t 頲 v遪g tr遪 c hi謚", 1, "Kh玭g/no" );
end

function aura_yulin()
	Describe("<link=image:\\spr\\skill\\others\\title_yl.spr>Trong ch鑞 v� l﹎ lang c hi謚 <link> nh﹏ v藅 b譶h lu薾 ng h祅g th� t� nai t 頲 v遪g tr遪 c hi謚", 1, "Kh玭g/no" );
end

function aura_zhaowu()
	Describe("<link=image:\\spr\\skill\\others\\title_zw.spr>Chi猽 v? gi竜 髖 c hi謚 <link> nh﹏ v藅 b譶h lu薾 ng h祅g th� n╩ nai t 頲 v遪g tr遪 c hi謚", 1, "Kh玭g/no" );
end

function yuewang_want()
	Say(BilNpcSongJinShop.."T藀 trung tinh hoa c馻 Nh筩 vng h錸 th筩h c� th� ch� t筼 ra Nh筩 vng ki誱, c莕 "..YUEWANGHUN_STONECOUNT.." nh筩 vng h錸 th筩h nh蕋 nh i ph秈 kh玭g?", 2, "Mu鑞/yuewang_change", "Kh玭g mu鑞/no")
end

function yuewang_change()
	Say(BilNpcSongJinShop.."Nh筩 vng ki誱 chi誱 kh玭g gian <color=yellow>6 (2 X 3)<color> ch� tr鑞g, ngi x竎 nh h祅h trang c遪 ch� tr鑞g ch�?", 2, "Ch綾 r錳!/yuewang_sure", "в ta ki觤 tra l筰/no")
end

function yuewang_sure()
	if (CalcEquiproomItemCount(4, 507, 1, -1) >= YUEWANGHUN_STONECOUNT) then
		ConsumeEquiproomItem(YUEWANGHUN_STONECOUNT, 4, 507, 1, -1)
		AddEventItem(195)
		Say(BilNpcSongJinShop.."C竔 n祔 l� Nh筩 vng ki誱, m閠 t輓 v藅 quan tr鋘g c馻 bang h閕 y!", 0)
		Msg2Player("Х nh薾 頲 Nh筩 vng ki誱!")
	else
		Say(BilNpcSongJinShop.."Ngi kh玭g  Nh筩 vng h錸 th筩h, mau ki觤 tra l筰, Nh筩 vng ki誱 kh玭g ph秈 ai c騨g c� th� s� h鱱.", 0)
	end
end

function ore()
	Sale( 102, 4);
end

function goldenitem_menu()
	Sale( 103, 4);
end

