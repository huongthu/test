Include([[\script\global\特殊用地\梦境\npc\路人_叛僧.lua]])
Include("\\script\\item\\levelup_item.lua")
Include("\\script\\global\\head_qianzhuang.lua")
Include("\\script\\global\\systemconfig.lua")
IncludeLib("SETTING")

TBMONTH = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
strimg = "<link=image[0,1]:\\spr\\npcres\\enemy\\enemy111\\enemy111_pst.spr><link>"
function cg_getnextdate(oldday, num) --获得oldday的第num日的日期，比如060227的第5日为060304
	local nDay = tonumber(oldday)
	local nYear = floor(nDay / 10000)
	local nMonth = floor((nDay - nYear * 10000) / 100)
	nDay = nDay - nYear * 10000 - nMonth * 100 
	nDay = nDay + num
	
	while (nDay > TBMONTH[nMonth]) do
		nDay = nDay - TBMONTH[nMonth]
		if (nMonth == 12) then
			nMonth = 1
			nYear = nYear + 1
		else
			nMonth = nMonth + 1
		end
	end
	return (nYear * 10000 + nMonth * 100 + nDay)
end

function chuangong_main()
	-- VN_MODIFY_20060427
	if (1) then
		Say("Ch鴆 n╪g v蒼 ch璦 M� ra", 0)
		return
	end
	
	if (gb_GetModule("Truy襫 c玭g") ~= 1) then
		Say("Xin l鏸! Ch鴆 n╪g truy襫 c玭g  ng l筰, th阨 gian m� l筰 xem trang ch�  bi誸 th猰 th玭g tin!", 0)
		return 
	end
	if (GetTask(TV_LAST_APPLY_TIME) > 0) then
		Say(": "..GetName().."Х l﹗ kh玭g g苝! H玬 nay t譵 ta c� vi謈 g�?",3, "Ta mu鑞 h醝 th╩ v� chuy謓 truy襫 c玭g./chuangong_info", "Ta mu鑞 xin x鉧 b� truy襫 c玭g!/cg_undo", "Ch� l� n th╩ Minh ch�!/OnCancel")
	else
		Say(": "..GetName().."Х l﹗ kh玭g g苝! H玬 nay t譵 ta c� vi謈 g�?",2, "Ta mu鑞 h醝 th╩ v� chuy謓 truy襫 c玭g./chuangong_info", "Ch� l� n th╩ Minh ch�!/OnCancel")
	end
end

function chuangong_info()
	if (gb_GetModule("Truy襫 c玭g") ~= 1) then
		Say("Xin l鏸! Ch鴆 n╪g truy襫 c玭g  ng l筰, th阨 gian m� l筰 xem trang ch�  bi誸 th猰 th玭g tin!", 0)
		return 
	end
	local nowday = tonumber(date("%y%m%d"))
	local applytime = GetTask(TV_LAST_APPLY_TIME)
	if (applytime == 0) then
		Describe(strimg.."Ngi c� ng c蕄 t� 100 n 160 c� th� chuy觧 c玭g l鵦 th祅h 1 vi猲 'Nguy猲 Th莕 Кn', ngi t� c蕄 10 tr� xu鑞g, ch璦 gia nh藀 m玭 ph竔 v� ch璦 b竔 s� ch� c莕 u鑞g 1 vi猲 Nguy猲 Th莕 n s� c鉷 頲 tinh l鵦 h琻 ngi. Ngi t� 100~120 sau khi truy襫 c玭g kinh nghi謒 s� gi秏 5%, ngi t� 121~150 sau khi truy襫 c玭g kinh nghi謒 s� gi秏 10%, Ngi t� 150 tr� l猲 s� gi秏 20%. <color=yellow>Suy ngh� k� ch璦?<color>", 2, "Ta ngao du giang h�  l﹗, mu鑞 r鯽 tay g竎 ki誱!/chuangong_do", "Л琻g nhi猲 kh玭g ph秈! Ch� l� n h醝 th╩ 1 ch髏 m� th玦!./OnCancel");
	elseif (nowday >= applytime ) then
		Describe(strimg.."Chu萵 b� truy襫 c玭g! Ngi quy誸 d辬h ch璦? Х truy襫 l� kh玭g th� r髏 l筰 u !", 3, "ng v藋! � ta  quy誸!./chuangong_dosure","Kh玭g! Tta mu鑞 h駓 b� truy襫 c玭g! /cg_undo", "ьi ta suy ngh� th猰 v礽 ng祔./OnCancel");
	else
		Describe(strimg.."Ta 產ng chu萵 b� c竎 v藅 li謚 c莕 thi誸  truy襫 c玭g. Ta mu鑞 n"..(num2datestr(applytime))..", sau  m韎 ti課 h祅h", 2, "Qu� l� phi襫 Minh ch�, v穘 b鑙 c竜 bi謙 t筰 y!   /OnCancel", "Kh玭g! Tta mu鑞 h駓 b� truy襫 c玭g! /cg_undo");
	end
end



function num2datestr(nday)
	local year = floor(nday / 10000) + 2000
	local month = mod( floor(nday / 100) , 100)
	local day = mod(nday, 100)
	return year.."n╩"..month.."nguy謙 "..day.."nh藅 "
end

function cg_undo()
	local nowday = GetTask(TV_LAST_APPLY_TIME)
	if (nowday > 0) then
		Describe(strimg.."Ta n"..num2datestr(nowday).."l� c� th� truy襫 c玭g cho ngi, c� th藅 ngi kh玭g mu鑞 truy襫 c玭g kh玭g?",2,"Kh玭g! Ta kh玭g mu鑞 truy襫 c玭g!/cg_undo_sure", "V﹏g! Ta mu鑞 truy襫 c玭g./OnCancel")
	else
		Describe(strimg.."Ngi ch璦 xin ph衟 truy襫 c玭g, c莕 g� h駓 b�!",1,"K誸 th骳 i tho筰/OnCancel")
	end
end

function cg_undo_sure()
	SetTask(TV_LAST_APPLY_TIME, 0)
	Describe(strimg.."Л頲! Nguy猲 li謚 n祔 ta t筸 gi� l筰, n誹 l莕 sau mu鑞 truy襫 c玭g th� n y!",1,"C秏 琻 Minh ch�!/OnCancel")
end

function chuangong_do()
	local nEndLevel = GetLevel()
	local nRestExp = GetExp()
	if (nEndLevel < 100) then
		Describe(strimg.."Huynh ! Theo c玭g l鵦 c馻 ngi hi謓 nay kh玭g   truy襫 c玭g. Mu鑞 truy襫 c玭g ph秈 t� <color=yellow>c蕄 100<color> tr� l猲, ngi c莕 ph秈 luy謓 th猰!",1,"Ta bi誸 r錳!/OnCancel")
		return
	end
	if (nEndLevel >= 160) then
		Describe(strimg.."Ъng c蕄 c馻 b筺 nh� h琻 100 c蕄 ho芻 h琻 160 kh玭g th� truy襫 c玭g!",1,"Ta bi誸 r錳!/OnCancel")
		return
	end
	
	local nLevelFullExp = tonumber(GetTabFileData(FILE_LEVEL, nEndLevel+ 1, 2))
	local fPerc = format("%.2f", (nEndLevel)+(nRestExp/nLevelFullExp))
	
	local str = strimg.."V韎 v� c玭g c馻 ngi hi謓 nay, n誹 truy襫 c玭g s� chuy觧 h鉧 ng c蕄 <color=yellow> "..fPerc.."<color>s� t鎛 th蕋 kinh nghi謒"..(100 - exp_getRate(nEndLevel)).." %Nguy猲 Th莕 n"
	str = str..client_main(nEndLevel, nRestExp)
	Describe(str..", nh璶g ta c莕 ph秈 chu萵 b� m閠 tu莕, trong th阨 gian n祔, ngi c� th� x鉧 b� truy襫 c玭g, mu鑞 luy謓 n m閠 tr譶h  nh蕋 nh th� kh玭g d�, trong th阨 gian n祔 h穣 c� g緉g luy謓 c玭g.",2,"Minh ch�! Ta  quy誸 t﹎ quy 萵, 玭g c� th� b総 u chu萵 b�!/chuangong_doprepair1","Nh� th�! в ta suy ngh� l筰 xem!/OnCancel")
end

function chuangong_doprepair1()
	local nowday = tonumber(date("%y%m%d"))
	local nextday = cg_getnextdate(nowday, 7)
	SetTask(TV_LAST_APPLY_TIME , nextday);
	WriteLog(" [Truy襫 c玭g]:"..nowday.." Acc:"..GetAccount().."Role:"..GetName().."б ngh� truy襫 c玭g")
	Describe(strimg.."Л頲! Ta l藀 t鴆 chu萵 b� th� t鬰 truy襫 c玭g c馻 ngi, 1 tu莕 sau <color=yellow>"..num2datestr(nextday).."<color> ngi h穣 n, ta s� truy襫 c玭g cho ngi! Л琻g nhi猲 ngi l骳 n祇 c騨g c� th� n ch� ta x鉧 b� truy襫 c玭g.", 1," t� Minh ch�! Tu莕 sau ta s� quay l筰!/OnCancel")
	Msg2Player("Tu莕 sau h穣 n g苝 чc c� ki誱  ch輓h th鴆 truy襫 c玭g, ng th阨 nh薾 頲 Nguy猲 Th莕 Кn! C騨g c� th� x鉧 b� truy襫 c玭g!")
end

function chuangong_dosure()
	if (GetLevel() < 100 or GetLevel() >= 160) then
		Say("Ъng c蕄 c馻 b筺 nh� h琻 100 c蕄 ho芻 h琻 160 kh玭g th� truy襫 c玭g!",0)
		return
	end
	if (CalcItemCount(2,0,-1,-1,-1) > 0) then
		Say("L骳 truy襫 c玭g kh玭g th� m芻 trang b�, xin h穣 b� trang b� ra!",0)
		return
	end
	Describe(strimg.."Truy襫 c玭g c莕 ph秈 tr� 2 t蕀 ng﹏ phi誹, b筺  b� v祇 h祅h trang ch璦? B筺 x竎 nh mu鑞 truy襫 c玭g?",2, "2 t蕀 ng﹏ phi誹  chu萵 b� xong, x竎 nh!/chuangong_doit1", "в ta xem l筰/OnCancel")
end

function chuangong_doit1()
	if (GetLevel() < 100 or GetLevel() >= 160) then
		Say("Ъng c蕄 c馻 b筺 nh� h琻 100 c蕄 ho芻 h琻 160 kh玭g th� truy襫 c玭g!",0)
		return
	end
	Describe(strimg.."X竎 nh l筰 l莕 n鱝!",2, "X竎 nh!/chuangong_doit", "в ta xem l筰/OnCancel")
end

function chuangong_doit()
	if (GetLevel() < 100 or GetLevel() >= 160) then
		Say("Ъng c蕄 c馻 b筺 nh� h琻 100 c蕄 ho芻 h琻 160 kh玭g th� truy襫 c玭g!",0)
		return
	end
	local result = qz_use_silver(2, " [Truy襫 c玭g]")
	if ( result == 0) then
		Describe(strimg.."Ngi kh玭g  2 t蕀 ng﹏ phi誹, ta kh玭g th� truy襫 c玭g!", 1, "Ta s� chu萵 b� l筰!/OnCancel")	
		return
	elseif (result ~= 1) then
		return 
	end
	SetTask(TV_LAST_APPLY_TIME, 0)
	
	local nowday = tonumber(date("%y%m%d"))
	
	local logstr = " [Truy襫 c玭g]:"..nowday.." Acc:"..GetAccount().."Role:"..GetName().." Truy襫 c玭g th祅h c玭g! Level:"..GetLevel().." Exp:"..GetExp();
	
	
	DoClearSkillCore()
	DoClearPropCore()
	UpdateSkill()
	local endlevel = GetLevel()
	local restexp = GetExp()
	
	ST_LevelUp(80 - endlevel)
	local param5 = chuangong_item(endlevel, restexp)
	logstr = logstr.." ItemParam5:"..param5
	WriteLog(logstr)
end

function chuangong_item(level,restexp)
	if (restexp <0) then
		restexp = 0
	end
	
	nIt = AddItem(6,1,1061,1,0,0,0)
	SetItemMagicLevel(nIt, 1, level)
	SetItemMagicLevel(nIt, 2, restexp)

	m1 = GetByte(restexp, 3)
	m2 = GetByte(restexp, 4)
	m = m1
	m = SetByte(m1, 2, m2)
	
	n1 = SetByte(restexp, 3,0)
	n =  SetByte(n1, 4, 0)

	SetItemMagicLevel(nIt, 3, m)
	SetItemMagicLevel(nIt, 4, n)
	SetItemMagicLevel(nIt, 5, FileName2Id(GetName()))
	SyncItem(nIt)
	return GetItemParam(nIt, 5)
end

function OnCancel()
end