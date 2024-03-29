-- 南蛮老人.lua (圣诞活动)
Include([[\script\missions\chrismas\ch_head.lua]]);
Include([[\script\missions\chrismas\xmas_day.lua]]);

tabExp = {
2000000,
2000000,
2000000,
1500000,
1500000,
1500000,
1000000,
1000000,
1000000,
500000
};

tabRate = {
	{0, 0.69, 0.27, 0.04},
	{0, 0.83, 0.14, 0.03},
	{0, 0.86, 0.13, 0.01},
	{0, 0.85, 0.15, 0},
	{0, 0.9, 0.1, 0},
	{0, 0.95, 0.05, 0},
	{0.27, 0.68, 0.05, 0},
	{0.37, 0.59, 0.04, 0},
	{0.61, 0.36, 0.03, 0},
	{0.72, 0.26, 0.02, 0}
};

function main()
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if (nDate < 20061222) then
		Describe(DescLink_LiGuan.."Ch骳 gi竛g sinh vui v�!", 1, "K誸 th骳 i tho筰/oncancel");
	else
		Describe(DescLink_LiGuan.."Ha ha, ch骳 gi竛g sinh vui v�! C� mu鑞 bi誸 gi竛g sinh n╩ nay c� ho箃 ng g� kh玭g?", 5, 
			"Nghe n鉯 玭g b� m蕋 bao h祅h l�/want_xmasevent",
			"Ta mu鑞 t筼 ngi tuy誸./want_snowman",
			"Ta mu鑞 甧m ngi tuy誸 i qu�./want_gift",
			"Ta mu鑞 t譵 hi觰 n閕 dung ho箃 ng/xmas_about",
			"Ta hi謓 t筰 r蕋 b薾, khi kh竎 s� quay l筰./oncancel");
	end;
end;

function want_xmasevent()
	if (isXmasTime() ~= 1) then
		Describe(DescLink_LiGuan.."C秏 琻 ngi, ta  t譵 l筰 頲 bao h祅h l�.",1, "K誸 th骳 i tho筰/oncancel");
		return 0;
	end;
	Describe(DescLink_LiGuan.."Ta v鮝 b� m蕋 bao h祅h l�, b猲 trong c� r蕋 nhi襲 qu� gi竛g sinh c馻 m鋓 ngi. Ngi c� th� gi髉 ta t譵 l筰 kh玭g?", 4,
	"Л琻g nhi猲 l� 頲 r錳./onok",
	"Ta  t譵 ra b鋘 ch髇g r錳./award",
	"Gi韎 thi謚 ho箃 ng gi竛g sinh./detail",
	"Ta hi謓 t筰 r蕋 b薾, khi kh竎 s� quay l筰./oncancel")
end;


function onok()
	if (50 > GetLevel()) then
		strTalk = DescLink_LiGuan.."B筺 ch璦 t n c蕄 50, kh玭g th� tham gia ho箃 ng Gi竛g Sinh.";
		Describe(strTalk, 1, "K誸 th骳 i tho筰/oncancel");
		return
	end;
	Describe(DescLink_LiGuan.."C秏 琻 ngi nhi襲, ta s� a ngi n n琲 ta l祄 r琲 bao qu�.", 2, "Л頲 r錳./wantjoin", "Hi謓 th阨 ta b薾 qu�, kh玭g c� th阨 gian u./oncancel");
end;

function award()
	local nCount = GetTask(TK_COUNT_ONETIME);
	local nRank = GetTask(TK_RANK);
	SetTask(TK_COUNT_ONETIME, 0);
	SetTask(TK_RANK, 0);
	if (nCount == 0 or nRank == 0) then
		Describe(DescLink_LiGuan.."H譶h nh� ngi v蒼 ch璦 t譵 頲 c竎 m鉵 qu� c馻 ta.", 1, "K誸 th骳 i tho筰/oncancel");
		return
	end;
	local strSay = format(", y ch輓h l� qu� m� ta l祄 m蕋 y m�! в ta xem, ngi t譵 頲 t鎛g c閚g %d bao <color=yellow>qu� gi竛g sinh<color>, x誴 h筺g th� %d trong nh鉳 ngi 甶 t譵. Зy l� qu� c馻 ngi, h穣 nh薾 l蕐.", nCount, nRank);
	Describe(DescLink_LiGuan..strSay, 1, "Nh薾 l蕐 l� v藅./oncancel");
	giveaward(nRank);
end;

function detail()
	Describe(DescLink_LiGuan.."Ho箃 ng t譵 qu� gi竛g sinh th蕋 l筩 m鏸 t chia th祅h <color=yellow>15<color> ph髏, trong  c� <color=yellow>5<color> ph髏  b竜 danh v� chu萵 b�. Khi b竜 danh xong, ngi ch琲 s� 頲 a n m閠 b秐  chung  chu萵 b�. Khi ch輓h th鴆 b総 u t t譵 ki誱 qu�, ngi ch琲 s� 頲 a ng蓇 nhi猲 n khu v鵦 ho箃 ng  tham gia t譵 ki誱 qu� b� th蕋 l筩. Khi ph竧 hi謓 qu�, nh蕄 chu閠 tr竔 v祇 <color=yellow>qu� gi竛g sinh<color>  nh苩 ch髇g. Trong l骳 甶 t譵, ngi ch琲 s� ph秈 s� d鬾g c竎 o c�  ng╪ c秐 v� tho竧 kh醝 s� c秐 tr� c馻 ngi ch琲 kh竎. Nh苩 c祅g nhi襲 qu�, ph莕 thng nh薾 頲 s� c祅g l韓.", 1, "C� th莕 k� nh� v藋 kh玭g? в ta th� xem./oncancel");
end;

function giveaward(nRank)
	expaward(nRank);
	goodsaward(nRank);
end;

function expaward(nRank)
	AddOwnExp(tabExp[nRank]);
end;

function goodsaward(nRank)
	-- local nGoodsType = getgoodtype(nRank);
	-- if (nGoodsType == 1) then
		-- AddItem(6, 1, 1008, 1, 0, 0, 0);
		-- local strsay = "B筺 nh薾 頲 m閠 h箃 Ho祅g Kim"
		-- Msg2Player(strsay);
	-- elseif (nGoodsType == 2) then
		-- AddItem(6, 1, 1007, 1, 0, 0, 0);
		-- local strsay = "B筺 nh薾 頲 m閠 h箃 Th駓 Tinh"
		-- Msg2Player(strsay);
	-- elseif (nGoodsType == 3) then
		-- AddItem(6, 1, 1006, 1, 0, 0, 0);
		-- local strsay = "B筺 nh薾 頲 m閠 h箃 Hoa h錸g"
		-- Msg2Player(strsay);
	-- elseif (nGoodsType == 4) then
		-- AddItem(6, 1, 1005, 1, 0, 0, 0);
		-- local strsay = "B筺 nh薾 頲 m閠 h箃 May m緉"
		-- Msg2Player(strsay);
	-- end;
end;

function getgoodtype(nRank)
	local nSeed = random(100);
	local nRate = {}
	local i;
	for i = 1, 4 do
		nRate[i] = tabRate[nRank][i] * 100;
	end;
	local nBase = 0;
	for i = 1, 4 do
		nBase = nBase + nRate[i];
		if (nBase >= nSeed) then
			return (5 - i);
		end;
	end;
end;

function onsale()

end;

function wantjoin()
	local w, x, y;
	w, x, y = GetWorldPos();
	SetTask(TK_LEAVERMAPID, w);	--存储玩家离开的坐标
	SetTask(TK_LEAVERPOSX, x);
	SetTask(TK_LEAVERPOSY, y);
	joingame() --加入到游戏中
end;

function xmas_about()
	Describe(DescLink_LiGuan.."Trong th阨 gian ho箃 ng, ngi ch琲 s� ph秈 nh qu竔 v藅  thu th藀 h閜 qu�, b猲 trong s� c� <color=yellow>b玭g tuy誸, c� r鑤, c祅h th玭g, n鉵, c﹜ th玭g, kh╪ cho祅g<color>, l� c竎 nguy猲 li謚 d飊g  t筼 ra <color=yellow>ngi tuy誸 c bi謙<color>. N誹 ch� t筼 th蕋 b筰, s� cho ra  <color=yellow>ngi tuy誸 thng<color>. Sau , c� th� d飊g ngi tuy誸  i qu� t筰 y.", 1, "Ta bi誸 r錳/main");
end;

function oncancel()	--取消

end;