-- 神秘商人 对话脚本
-- Li_Xin(2004-07-20)

--Include("\\script\\global\\systemconfig.lua") -- 系统配置
IncludeLib("ITEM")
IncludeLib("SETTING")

function writeChapManLog(str)
	WriteLog(date("%H%M%S")..": T礽 kho秐:"..GetAccount()..", nh﹏ v藅:"..GetName()..","..str);
end;

function writeChapManGoldLog( str, nPaidGold, nPaidSilver, nPaidCoin, nPaidTicket )
	WriteGoldLog( GetAccount().."("..GetName()..") "..str, -nPaidGold, -nPaidSilver, -nPaidCoin, -nPaidTicket );
end;

function get1()
	str=
	{
		"<#> Зy ch輓h l�  ph� v� kh� qu� b竨 trong v� l﹎. у ph� v� kh� d飊g  c luy謓 binh kh�, c� c玭g d鬾g t╪g ng c蕄. ngi c� th� d飊g Th駓 Tinh  trao i, c� nhu c莡 kh玭g?",
		"<#> Ch� xem th玦/no",
		"<#> L╪g Vng Thng 筺 T筼 T祅 bi猲 (Thng) /yes1",
		"<#> Huy襫 V� Ch飝 Chi c T筼 thu藅 (Ch飝) /yes2",
		"<#> Long Ng﹎ Ki誱 筺 T筼  (Ki誱) /yes3",
		"<#> Gia C竧 C� Qu竧 M藅 y誹 (Cung) /yes4",
		"<#> Li評 Di謕 To竔 Phong o. T魕 Th� bi猲 (Phi 產o) /yes5",
		"<#> Huy襫 Nguy謙 產o T� Kinh b秓 l鬰 (o) /yes6",
		"<#> Thi猲 C� C玭  ph� (C玭) /yes7",
		"<#> 竚 Kh� T鎛g ph�. Quy觧 1 (Ph� ti猽) /yes8",
		"<#> Uy猲 Μng 產o. Khai Quang  bi猲 (Song 產o) /yes9"
	};
	-- Say(str[1],10,str[2],str[3],str[4],str[5],str[6],str[7],str[8],str[9],str[10],str[11])
end;

function get2()
	str=
	{
		"<#> K� tr﹏ B秓 v藅 c馻 ta c� th� d飊g  ch� t筼, kh秏 n筸, t╪g v� gi秏 ng c蕄 trang b�. Kh竎h quan c� mu鑞 xem qua kh玭g?",
		"<#> B╪g t祄 V� C鵦 t� (T╪g ng c蕄) /buy_silk",
		"<#> Nam Minh Chi Tinh (Gi秏 ng c蕄) /buy_stone",
		"<#> Ch� xem th玦/no",
	};
	-- Say(str[1],3,str[2],str[3],str[4])
end;

function yes1()
	-- 越南版本价格改动：
	--Say("神秘商人：你确定要换<color=red>陵王枪锻造残篇<color>吗？陵王枪锻造残篇需要3颗<color=red>紫水晶<color>、<color=red>2颗绿水晶<color>和<color=red>1颗兰水晶<color>交换。",2,"确定/sure1","取消/no")
	Say("Чi hi謕 x竎 nh mu鑞 i <color=red>L╪g Vng Thng 筺 T筼 T祅 Bi猲<color> ch�? C莕 c� 1 <color=red>T� Th駓 Tinh<color>, <color=red>1 L鬰 Th駓 Tinh<color> v� <color=red>1 Lam Th駓 Tinh<color>  i!",2,"X竎 nh薾/sure1","H駓 b� /no")
end;

function sure1()
	if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
		Talk(1,"","Ha!Ha! Th駓 Tinh p qu�! Зy l� у ph�, b秓 m c� th� gi髉 Чi hi謕 th╪g c蕄 v� kh�.")
	  	DelItemEx(238)
	  	DelItemEx(239)
	  	--DelItemEx(239)
	  	--DelItemEx(239)
	  	DelItemEx(240)
	  	--DelItemEx(240)
	  	AddEventItem(406)
	  	writeChapManLog("B筺 nh薾 頲 L╪g Vng Thng 筺 T筼 T祅 bi猲.")
	  	Msg2Player("B筺 nh薾 頲 L╪g Vng Thng 筺 T筼 T祅 bi猲.")
	else
	  	Talk(1,"","L╪g Vng Thng 筺 T筼 T祅 Bi猲 c莕 ph秈 1 T� Th駓 Tinh, 1 L鬰 Th駓 Tinh v� 1 Lam Th駓 Tinh   i. Чi hi謕 h譶h nh� ch璦  Th駓 Tinh!")
	end
end;

function yes2()
	Say("Чi hi謕 x竎 nh mu鑞 i <color=red>Huy襫 V� Ch飝 c T筼 Thu藅<color> ch�? C莕 c� 1 <color=red>T� Th駓 Tinh<color>, 1 <color=red>L鬰 Th駓 Tinh<color> v� 1 <color=red>Lam Th駓 Tinh<color>  i!",2,"X竎 nh薾/sure2","H駓 b� /no")
end;

function sure2()
	if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
		Talk(1,"","Ha!Ha! Th駓 Tinh p qu�! Зy l� у ph�, b秓 m c� th� gi髉 Чi hi謕 th╪g c蕄 v� kh�.")
	  	DelItemEx(238)
	  	--DelItemEx(238)
	  	DelItemEx(239)
	  	--DelItemEx(239)
	  	DelItemEx(240)
	  	--DelItemEx(240)
	  	AddEventItem(407)
	  	writeChapManLog("B筺 nh薾 頲 Huy襫 V� Ch飝 Chi c T筼 thu藅.")
	  	Msg2Player("B筺 nh薾 頲 Huy襫 V� Ch飝 Chi c T筼 thu藅.")
	else
	  	Talk(1,"","Huy襫 V� Ch飝 c T筼 Thu藅 c莕 c� 1 T� T駓 Tinh, 1 L鬰 Th駓 Tinh v� 1 Lam Th駓 Tinh  i.Чi hi謕 h譶h nh� ch璦  Th駓 Tinh!")
	end
end;

function yes3()
	Say("Чi hi謕 x竎 nh mu鑞 i <color=red>Long Ng﹎ Ki誱 筺 T筼 у<color> ch�? C莕 1 <color=red>T� Th駓 Tinh<color>, 1 <color=red>L鬰 Th駓 Tinh<color> v� 1 <color=red>Lam Th駓 Tinh<color>  i!",2,"X竎 nh薾/sure3","H駓 b� /no")
end;

function sure3()
	if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
		Talk(1,"","Ha!Ha! Th駓 Tinh p qu�! Зy l� у ph�, b秓 m c� th� gi髉 Чi hi謕 th╪g c蕄 v� kh�.")
	  	DelItemEx(238)
	  	--DelItemEx(238)
	  	--DelItemEx(238)
	  	DelItemEx(239)
	  	DelItemEx(240)
	  	--DelItemEx(240)
	  	AddEventItem(408)
	  	writeChapManLog("B筺 nh薾 頲 Long Ng﹎ Ki誱 筺 T筼 .")
	  	Msg2Player("B筺 nh薾 頲 Long Ng﹎ Ki誱 筺 T筼 .")
	else
	  	Talk(1,"","Long Ng﹎ Ki誱 筺 T筼 у c莕 1 T� T駓 Tinh, 1 L鬰 Th駓 Tinh v� 1 Lam Th駓 Tinh  i. Чi hi謕 h譶h nh� ch璦  Th駓 Tinh!")
	end
end;

function yes4()
	Say("Чi hi謕 x竎 nh mu鑞 i <color=red>Gia C竧 C� Qu竧 M藅 Y誹<color> ch�? C莕 1 <color=red>T� Th駓 Tinh<color>, 1 <color=red>L鬰 Th駓 Tinh<color> v� 1 <color=red>Lam Th駓 Tinh<color>  i!",2,"X竎 nh薾/sure4","H駓 b� /no")
end;

function sure4()
	if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
		Talk(1,"","Ha!Ha! Th駓 Tinh p qu�! Зy l� у ph�, b秓 m c� th� gi髉 Чi hi謕 th╪g c蕄 v� kh�.")
	  	DelItemEx(238)
	  	DelItemEx(239)
	  	--DelItemEx(239)
	  	DelItemEx(240)
	  	--DelItemEx(240)
	  	AddEventItem(409)
	  	writeChapManLog("B筺 nh薾 頲 Gia C竧 C� Qu竧 M藅 y誹.")
	  	Msg2Player("B筺 nh薾 頲 Gia C竧 C� Qu竧 M藅 y誹.")
	else
	  	Talk(1,"","Gia C竧 C� Qu竧 M藅 Y誹 c莕 c� 1 T� T駓 Tinh, 1 L鬰 Th駓 Tinh v� 1 Lam Th駓 Tinh  i. Чi hi謕 h譶h nh� ch璦  Th駓 Tinh!")
	end
end;

function yes5()
	Say("Чi hi謕 x竎 nh mu鑞 i <color=red>Li評 Di謕 To竔 Phong o. T魕 Th� Bi猲<color> ch�? C莕 1 <color=red>T� Th駓 Tinh<color>, 1 <color=red>L鬰 Th駓 Tinh<color> v� 1 <color=red>Lam Th駓 Tinh<color>  i!",2,"X竎 nh薾/sure5","H駓 b� /no")
end;

function sure5()
	if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
		Talk(1,"","Ha!Ha! Th駓 Tinh p qu�! Зy l� у ph�, b秓 m c� th� gi髉 Чi hi謕 th╪g c蕄 v� kh�.")
	  	DelItemEx(238)
	  	--DelItemEx(238)
	  	DelItemEx(239)
	  	DelItemEx(240)
	  	AddEventItem(410)
	  	writeChapManLog("B筺 nh薾 頲 Li評 Di謕 To竔 Phong o. T魕 Th� bi猲.")
	  	Msg2Player("B筺 nh薾 頲 Li評 Di謕 To竔 Phong o. T魕 Th� bi猲.")
	else
	  	Talk(1,"","Li評 Di謕 To竔 Phong o. T魕 Th� Bi猲 c莕 1 T� T駓 Tinh, 1 L鬰 Th駓 Tinh v� 1 Lam Th駓 Tinh  i. Чi hi謕 h譶h nh� ch璦  Th駓 Tinh!")
	end
end;

function yes6()
	Say("Чi hi謕 x竎 nh mu鑞 i <color=red>Huy襫 Nguy謙 o T� Kinh B秓 L鬰<color> ch�? C莕 c� 1 <color=red>T� Th駓 Tinh<color>, 1 <color=red>L鬰 Th駓 Tinh<color> v� 1 <color=red>Lam Th駓 Tinh<color>  i!",2,"X竎 nh薾/sure6","H駓 b� /no")
end;

function sure6()
	if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
		Talk(1,"","Ha!Ha! Th駓 Tinh p qu�! Зy l� у ph�, b秓 m c� th� gi髉 Чi hi謕 th╪g c蕄 v� kh�.")
	  	DelItemEx(238)
	  	--DelItemEx(238)
	  	DelItemEx(239)
	  	--DelItemEx(239)
	  	DelItemEx(240)
	  	AddEventItem(411)
	  	writeChapManLog("B筺 nh薾 頲 Huy襫 Nguy謙 產o T� Kinh b秓 l鬰.")
	  	Msg2Player("B筺 nh薾 頲 Huy襫 Nguy謙 產o T� Kinh b秓 l鬰.")
	else
	  	Talk(1,"","Huy襫 Nguy謙 o T� Kinh B秓 L鬰 c莕 c� 1 T� T駓 Tinh, 1 L鬰 Th駓 Tinh v� 1 Lam Th駓 Tinh  i. Чi hi謕 h譶h nh� ch璦  Th駓 Tinh!")
	end
end;

function yes7()
	Say("Чi hi謕 x竎 nh mu鑞 i <color=red>Thi猲 C� C玭 у Ph�<color> ch�? C莕 1 <color=red>T� Th駓 Tinh<color>, 1 <color=red>L鬰 Th駓 Tinh<color> v� 1 <color=red>Lam Th駓 Tinh<color>  i!",2,"X竎 nh薾/sure7","H駓 b� /no")
end;

function sure7()
	if ((GetItemCountEx(238)>=1) and (GetItemCountEx(239)>=1) and (GetItemCountEx(240)>=1)) then 
		Talk(1,"","Ha!Ha! Th駓 Tinh p qu�! Зy l� у ph�, b秓 m c� th� gi髉 Чi hi謕 th╪g c蕄 v� kh�.")
	  	DelItemEx(238)
	  	DelItemEx(239)
	  	DelItemEx(240)
	  	AddEventItem(412)
	  	writeChapManLog("B筺 nh薾 頲 Thi猲 C� C玭  ph�.")
	  	Msg2Player("B筺 nh薾 頲 Thi猲 C� C玭  ph�.")
	else
	  	Talk(1,"","Thi猲 C� C玭 у Ph� c莕 1 T� T駓 Tinh, 1 L鬰 Th駓 Tinh v� 1 Lam Th駓 Tinh  i. Чi hi謕 h譶h nh� ch璦  Th駓 Tinh!")
	end
end;

function yes8()
	Say("Чi hi謕 x竎 nh mu鑞 i <color=red>竚 Kh� T鎛g Ph�.Quy觧 1<color> ch�? C莕 c� 2 <color=red>T� Th駓 Tinh<color>  i!",2,"X竎 nh薾/sure8","H駓 b� /no")
end;

function sure8()
	if ((GetItemCountEx(239)>=2)) then 
		Talk(1,"","Ha!Ha! Th駓 Tinh p qu�! Зy l� у ph�, b秓 m c� th� gi髉 Чi hi謕 th╪g c蕄 v� kh�.")
	  	DelItemEx(239)
	  	DelItemEx(239)
	  	AddEventItem(413)
	  	writeChapManLog("B筺 nh薾 頲 竚 Kh� T鎛g ph�. Quy觧 1.")
	  	Msg2Player("B筺 nh薾 頲 竚 Kh� T鎛g ph�. Quy觧 1.")
	else
	  	Talk(1,"","竚 Kh� T鎛g Ph�.Quy觧 1 c莕 c� 2 T� Th駓 Tinh  i. Чi hi謕 h譶h nh� ch璦  Th駓 Tinh!")
	end
end;

function yes9()
	Say("Чi hi謕 x竎 nh mu鑞 i <color=red>Uy猲 Μng o. Khai Quang Bi猲<color> ch�?Uy猲 Μng o. C莕 1 <color=red>T� Th駓 Tinh<color>  i!",2,"X竎 nh薾/sure9","H駓 b� /no")
end;

function sure9()
	if ((GetItemCountEx(239)>=1)) then 
		Talk(1,"","Ha!Ha! Th駓 Tinh p qu�! Зy l� у ph�, b秓 m c� th� gi髉 Чi hi謕 th╪g c蕄 v� kh�.")
	  	DelItemEx(239)
	  	AddEventItem(414)
	  	writeChapManLog("B筺 nh薾 頲 Uy猲 Μng 產o. Khai Quang  bi猲.")
	  	Msg2Player("B筺 nh薾 頲 Uy猲 Μng 產o. Khai Quang  bi猲.")
	else
	  	Talk(1,"","Uy猲 Μng o. Khai Quang Bi猲 c莕 1 T� Th駓 Tinh  i. Чi hi謕 h譶h nh� ch璦  Th駓 Tinh!")
	end
end;

function buy_silk()
	str=
	{
		"<#> Kh竎h quan x竎 nh mua <color=red>B╪g T祄 V� C鵦 T�<color> ch�? <color=red>40 Ti襫 уng<color> i 頲 <color=red>1 B╪g T祄 V� C鵦 T�<color>.",
		"<#> S� d鬾g/sure10",
		"<#> H駓 b� /no",
	};
	Say(str[1],2,str[2],str[3])
end;

function sure10()
	if (CalcEquiproomItemCount(4, 417, 1, 1)>=40) then 
		Talk(1,"","Ha! Ha! Х nh薾 頲 40 Ti襫 уng. Зy l� <color=red>B╪g T祄 V� C鵦 T�<color>. Чi hi謕 xem! Фm b秓 c� th� th╪g c蕄 y ph鬰, kh玦 m穙!")
	  	ConsumeEquiproomItem(40, 4, 417, 1, 1)
	  	AddEventItem(415)
	  	UseSilver(1, 2, 2); -- 金元宝兑换为铜钱的消耗统计(直接消耗的元宝银票，与铜钱兑换等同处理)
	  	SaveNow(); -- 立即存盘
	  	-- writeChapManLog("你得到冰蚕无极丝。")
	  	writeChapManGoldLog("D飊g 40 ti襫 ng i 頲 B╪g T祄 V� C鵦 T�", 1, 0, 0, 0);
	  	Msg2Player("B筺 nh薾 頲 B╪g T祄 V� C鵦 T�.")
	else
	  	Talk(1,"","B╪g T祄 V� C鵦 T� ph秈 i b籲g 40 Ti襫 ng, Чi hi謕 dng nh� ch璦  Ti襫 ng!")
	end
end;

function buy_stone()
	str=
	{
		"<#> Kh竎h quan x竎 nh mua <color=red>Nam Minh Chi Tinh<color> ch�? <color=red>40 Ti襫 ng<color> i 頲 <color=red>1 Nam Minh Chi Tinh<color>.",
		"<#> S� d鬾g/sure11",
		"<#> H駓 b� /no",
	};
	Say(str[1],2,str[2],str[3])
end;

function sure11()
	if (CalcEquiproomItemCount(4, 417, 1, 1)>=40) then 
		Talk(1,"","Ha! Ha! Х nh薾 頲 40 Ti襫 уng. Зy l� <color=red>Nam Minh Chi Tinh<color>. Чi hi謕 xem! Фm b秓 c� th� gi秏 c蕄 y ph鬰, kh玦 m穙!")
	  	ConsumeEquiproomItem(40, 4, 417, 1, 1)
	  	AddEventItem(416)
		UseSilver(1, 2, 2); -- 金元宝兑换为铜钱的消耗统计(直接消耗的元宝银票，与铜钱兑换等同处理)
		SaveNow(); -- 立即存盘
		
	  	-- writeChapManLog("你得到南明之精。")
	  	writeChapManGoldLog("D飊g 40 Ti襫 ng i 頲 Nam Minh Chi Tinh", 1, 0, 0, 0);
	  	Msg2Player("B筺 nh薾 頲 Nam Minh Chi Tinh.")
	else
	  	Talk(1,"","Nam Minh Chi Tinh ph秈 i b籲g 40 Ti襫 ng, Чi hi謕 dng nh� ch璦  Ti襫 ng!")
	end
end;


function deal_brokenequip()
	if (ST_CheckLockState() == 1) then
		Say("Mu鑞 s鯽 <color=red><trang b� t鎛 h筰><color>, c莕 ph秈 m� m藅 m� rng ra. Rng c馻 b筺 trong tr筺g th竔 產ng 頲<color=red> kh鉧 l筰<color>! C莕 ph秈 m� kh鉧 trc!", 0)
		return
	end
	Say("B筺 c� <color=red><trang b� t鎛 h筰><color>kh玭g? Mu鑞 s鯽 nh� th� n祇?", 2, "Ta mu鑞 s� d鬾g Ti襫 ng  kh玦 ph鬰 l筰/restore_brokenequip", "Th玦  khi kh竎 ta n s鯽 trang b�!/no")	
end

function check_brokenequip(nCount, szDealFunc)
	if (nCount <= 0) then
		return 0
	end

	if (nCount > 1) then
		Say("M鏸 l莕 ch� s鯽 頲 m閠 <color=red><trang b� t鎛 h筰><color> th玦!", 2, "�! Th� ra t nh莔  ta th� l筰./"..szDealFunc, "в ta ki觤 tra xem sao/no")
		return 0
	end
	
	local nItemIdx = GetGiveItemUnit(1);
	itemgenre, detailtype, parttype = GetItemProp(nItemIdx)
	if (itemgenre ~= 7) then -- 不是损坏的装备
		Say("Nh鱪g th� b筺 t v祇 kh玭g ph秈 <color=red><trang b� t鎛 h筰><color>, xin ki觤 tra k� l筰.", 2, "�! Th� ra t nh莔  ta th� l筰./"..szDealFunc, "в ta ki觤 tra xem sao/no")
		return	0	
	end
	
	return nItemIdx
end

------------------------------------
-- ”损坏的装备“丢弃
function throw_brokenequip()
	GiveItemUI( "<trang b� t鎛 h筰>giao di謓 thu h錳", "M阨 b筺 t <trang b� t鎛 h筰> c莕 thu h錳 v祇 � b猲 di.", "on_throw_be", "no" );
end

function on_throw_be(nCount)
	local nItemIdx = check_brokenequip(nCount, "throw_brokenequip")
	if (nItemIdx == 0) then
		return
	end
	
	local szItemName = GetItemName(nItemIdx)
	Say("<color=red><trang b� t鎛 h筰>"..szItemName.."<color> m閠 khi thu h錳, s� bi課 m蕋, ngi x竎 nh mu鑞 thu h錳 kh玭g?", 2, "ta x竎 nh kh玭g c莕 n鱝, h穣 thu h錳 甶!/#throw_be_sure("..nItemIdx..")", "в ta suy ngh� l筰/no")
end

function throw_be_sure(nItemIdx)
	local szItemName = GetItemName(nItemIdx)
	RemoveItemByIndex(nItemIdx)
	Msg2Player("<trang b� t鎛 h筰>"..szItemName.." Х b� thu h錳");
	writeChapManLog("[Remove]: RestoreBrokenEquip Remove: "..szItemName);
end
------------------------------------

------------------------------------
-- ”损坏的装备“恢复
function restore_brokenequip()
	GiveItemUI( "<trang b� t鎛 h筰> giao di謓 ph鬰 h錳", "Xin m阨 b� <trang b�  h� h醤g> v祇 � b猲 di. Ph� c莕 s鯽 (xu): trang b� ph� th玭g c莕 1 xu, t輒 c莕 2 xu, ho祅g kim c莕 5 xu, b筩h kim c莕 6 xu (s鯽 b筩h kim +6 tr� l猲 c遪 c莕 th猰 thi誸 huy誸 n). Ch� �: trc khi ti課 h祅h s鯽 trang b�, h穣 ki觤 tra h祅h trang c遪  � tr鑞g.", "on_restore_be", "no", 1);	
end

function on_restore_be(nCount)
	local nItemIdx = check_brokenequip(nCount, "restore_brokenequip")
	if (nItemIdx == 0) then
		return
	end
	
	local szItemName = GetItemName(nItemIdx)
	local nQuality = GetItemQuality(nItemIdx)
	local nCoinCount = GetCashCoin();
	local nNeedCoin = 0;

	if (nQuality == 0) then
		nNeedCoin = 1;
	elseif (nQuality == 1) then -- 黄金装备
		nNeedCoin = 5;
	elseif (nQuality == 2) then -- 紫色装备
		nNeedCoin = 2;
	elseif (nQuality == 4) then -- 白金装备
		nNeedCoin = 10;
	end
	
	if (nNeedCoin <= 0) then
		Say("Зy l� trang b� g� v藋, ta kh玭g nh薾 ra 頲? H穣 li猲 h� v韎 ngi c� tr竎h nhi謒.", 1, "Uhm/no")
		writeChapManLog("[Error]: RestoreBrokenEquip Fail. ItemQuality:"..nQuality);
		return
	end
	
	if (nCoinCount < nNeedCoin) then
		Say("Mu鑞 ph鬰 h錳 <color=red><trang b� t鎛 h筰>"..szItemName.."<color>, c莕"..nNeedCoin.."Ti襫 ng. Ti襫 ng b筺 mang theo kh玭g , t譵 v礽 c竔 n鱝 甶!", 1, "Hi觰 r錳,  ta 甶 l蕐 Ti襫 ng !/no")
		return
	end
	
	if (nQuality == 4 and GetPlatinaLevel(nItemIdx) >= 6) then
		if (CalcEquiproomItemCount(6,1,2163,-1) < 1) then
			Say("Th莕 b� thng nh﹏: H祅h trang kh玭g c� thi誸 huy誸 n, kh玭g th� s鯽 trang b�.", 0)
			return
		end
		
		if (ConsumeItem(3, 1, 6, 1, 2163,-1) ~= 1) then
			Msg2Player("<trang b� t鎛 h筰>"..szItemName.." ph鬰 h錳 th蕋 b筰, xin li猲 h� ngi c� tr竎h nhi謒");
			Say("<trang b� t鎛 h筰>"..szItemName.." ph鬰 h錳 th蕋 b筰, xin li猲 h� ngi c� tr竎h nhi謒.", 1, "Л頲!/no")
			writeChapManGoldLog("[Error]: RestoreBrokenEquip Fail: thi誹 thi誸 huy誸 n"..szItemName, 0, 0, nNeedCoin, 0);
			return
		end
	end
	
	if (PayCoin(nNeedCoin) == 1) then
		if (ITEM_BrokenEquip2Normal(nItemIdx) == 1) then
			SetCurDurability(nItemIdx, GetMaxDurability(nItemIdx)) -- 耐久度恢复为最大耐久度
			Msg2Player("Ti猽 hao"..nNeedCoin.."Ti襫 ng, <trang b� t鎛 h筰>"..szItemName.." ph鬰 h錳 th祅h c玭g, xin ki觤 tra h祅h trang");
			writeChapManGoldLog("[Succeed]: RestoreBrokenEquip Ok: "..szItemName, 0, 0, nNeedCoin, 0)
			-- Fix ch鴆 n╪g s鯽  - Created by AnhHH - 20110704
			KickOutSelf()
		else
			Msg2Player("<trang b� t鎛 h筰>"..szItemName.." ph鬰 h錳 th蕋 b筰, xin li猲 h� ngi c� tr竎h nhi謒");
			Say("<trang b� t鎛 h筰>"..szItemName.." ph鬰 h錳 th蕋 b筰, xin li猲 h� ngi c� tr竎h nhi謒.", 1, "Л頲!/no")
			writeChapManGoldLog("[Error]: RestoreBrokenEquip Fail: "..szItemName, 0, 0, nNeedCoin, 0)
		end
	end
end
------------------------------------

function no()
end
