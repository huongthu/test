-- map_helper.lua
-- By: Dan_Deng(2004-06-28)
-- 主维护表，各五行、等级练级迷宫
Include("\\script\\activitysys\\npcdailog.lua")

lv_str={	"<#>kh玭g t韎 c蕄 10","<#>H琻 c蕄 10","<#>H琻 c蕄 20","<#>H琻 c蕄 30","<#>H琻 c蕄 40","<#>H琻 c蕄 50","<#>H琻 c蕄 60","<#>H琻 c蕄 70","<#>H琻 c蕄 80","<#>C蕄 90 tr� l猲"}
map0 = {	"<#>Khu v鵦 t﹏ th� th玭",
			"<#>Khu v鵦 c竎 ph竔 v� c竎 th祅h th�",
			"<#>Ki誱 c竎 trung nguy猲,ki誱 c竎 t﹜ b綾, ki誱 c竎 t﹜ nam, la ti猽 s琻, v� l╪ s琻,t莕 l╪g",
			"<#>Th鬰 cng s琻,mi猽 l躰h,y課 t� ng, dc vng ng t莕g m閠,kho竔 h鋋t l﹎",
			"<#>Kinh ho祅g ng,ph鬰 ng璾 s琻 t﹜,甶觤 thng ng t莕g ba,thi誹 l﹎ m藅 th蕋",
			"<#>Hng th駓 ng,thi猲 t﹎ ng,ng nh h�,b╪g nguy謙 m� cung",
			"<#>Thanh loa o,La h竛 tr薾,H祅h s琻 ph竔,tng dng nha m玭 m藅 o",
			"<#>Чi t� ng,thanh loa o,Linh c鑓 ng,L穙 h� ng,L﹎ du quan",
			"<#>Sa m筩 a bi觰,phi thi猲 ng,ph� dung ng,lng th駓 ng,b╪g h� ng,thanh kh� ng,trng b筩h s琻 cc",
			"<#>Sa m筩 s琻 ng t莕g m閠,hai,ba,xi v璾 ng,trng b筩h s琻 nam,trng b筩h s琻 b綾"}
map1 = {	"<#>Khu v鵦 t﹏ th� th玭",
			"<#>R莕 thu v鵦 c竎 ph竔 v� c竎 th祅h th�",
			"<#>Ki誱 c竎 trung nguy猲,ki誱 c竎 t﹜ b綾, ki誱 c竎 t﹜ nam, la ti猽 s琻, v� l╪ s琻,t莕 l╪g",
			"<#>V� di s琻,t莕 l╪g t莕g m閠,b筩h v﹏ ng,th� ph� ng",
			"<#>Thanh th祅h s琻,甶觤 thng s琻,phng nh穘 ng,甶觤 thng ng t莕g m閠,th莕 ti猲 ng",
			"<#>Hng th駓 ng,nghi謙 long ng,ng鋍 hoa ng,thi猲 t﹎ th竝 t莕g m閠,hai",
			"<#>Dng gi竎 ng,Tr骳 ti ng t莕g m閠,h祅h s琻 ph竔,thi猲 t﹎ th竝 t莕g ba",
			"<#>Long nh穘 ng,T莕 l╪g t莕g hai,Tr骳 ti ng t莕g hai,trng giang nguy猲 u,l﹎ du quan",
			"<#>Sa m筩 a bi觰,v� l╪g ng,dng trung ng,c� dng ng,nh筺 th筩h ng,dc vng ng t莕g ba,t莕 l╪g t莕g ba,trng b筩h s琻 cc",
			"<#>Sa m筩 s琻 ng t莕g,m閠,hai,ba,dc vng ng t莕g b鑞,ti課 c骳 ng,trng b筩h s琻 nam,trng b筩h s琻 b綾"}
map2 = {	"<#>Khu v鵦 t﹏ th� th玭",
			"<#>R莕 thu v鵦 c竎 ph竔 v� c竎 th祅h th�",
			"<#>Ki誱 c竎 trung nguy猲,ki誱 c竎 t﹜ b綾, ki誱 c竎 t﹜ nam, la ti猽 s琻, v� l╪ s琻,t莕 l╪g",
			"<#>B筩h v﹏ ng,th鬰 cng s琻,th� ph� ng,ph鬰 ng璾 s琻 ng,kim quang ng",
			"<#>phng nh穘 ng,甶觤 thng ng t莕g m閠,th莕 ti猲 ng,ph鬰 ng璾 s琻 t﹜,kinh ho祅g ng",
			"<#>Hng th駓 ng,thi猲 t﹎ th竝 t莕g m閠,hai,竎 b� a o",
			"<#>Thi猲 t﹎ th竝 t莕g ba,la h竛 tr薾,c蕀 a m� cung,h祅h s琻 ph竔",
			"<#>Trng giang nguy猲 u,s琻 b秓 ng,o hoa nguy猲,dc vng ng t莕g hai,l﹎ du quan",
			"<#>Sa m筩 a bi觰,phi thi猲 ng,ph� dung ng,dng trung ng,c� dng ng,dc vng ng t莕g ba,trng b筩h s琻 cc",
			"<#>Sa m筩 s琻 ng t莕g m閠,hai,ba ,Xi v璾 ng,ti課 c骳 ng,trng b筩h s琻 nam,trng b筩h s琻 b綾"}
map3 = {	"<#>Khu v鵦 t﹏ th� th玭",
			"<#>R莕 thu v鵦 c竎 ph竔 v� c竎 th祅h th�",
			"<#>Ki誱 c竎 trung nguy猲,ki誱 c竎 t﹜ b綾, ki誱 c竎 t﹜ nam, la ti猽 s琻, v� l╪ s琻,t莕 l╪g",
			"<#>Ph鬰 ng璾 s琻 ng,kim quang ng,t﹏ l╪g t莕g m閠,v� di s琻",
			"<#>T醓 v﹏ ng,long cung ng,甶觤 thng ng t莕g hai,thanh th祅h s琻,甶觤 thng s琻",
			"<#>Hng th駓 ng,bi謓 kinh thi誸 th竝 t莕g m閠,hai,ba,tng v﹏ ng t莕g m閠,ng� hoa vi猲 s琻 ng",
			"<#>Tng v﹏ ng t莕g hai,ba,b鑞,thi猲 nh蒼 th竛h ng,dng gi竎 ng,tr骳 ti ng",
			"<#>Dc vng ng t莕g hai,l穙 h� ng,tng v﹏ ng t莕g n╩,linh c鑓 ng,l﹎ du quan",
			"<#>Sa m筩 a bi觰,v� l╪g ng,v� danh ng,nh筺 th筩h ng,t莕 l╪g t莕g ba,trng b筩h s琻 cc",
			"<#>Sa m筩 s琻 ng t莕g m閠,hai,ba,dc vng ng t莕g b鑞,hi猲 vi猲 ng,trng b筩h s琻 nam,trng b筩h s琻 b綾"}
map4 = {	"<#>Khu v鵦 t﹏ th� th玭",
			"<#>R莕 thu v鵦 c竎 ph竔 v� c竎 th祅h th�",
			"<#>Ki誱 c竎 trung nguy猲,ki誱 c竎 t﹜ b綾, ki誱 c竎 t﹜ nam, la ti猽 s琻, v� l╪ s琻,t莕 l╪g",
			"<#>Mi猽 l躰h,dc vng ng t莕g m閠,kho竔 ho箃 l﹎,ph鬰 ng璾 s琻 ng,kim quang ng,tuy誸 b竜 ng t莕g m閠,hai",
			"<#>Phong s琻 ng,k� quan ng,ho祅g ha nguy猲 u,t醓 v﹏ ng,甶觤 thng ng t莕g hai",
			"<#>Hng th駓 ng,b╪g huy猼 m� cung,l璾 ti猲 ng t莕g m閠,thi誸 th竝 m� cung t莕g m閠,hai,ba",
			"<#>H祅h s琻 ph竔,tng dng nha m玭 m藅 o,l璾 ti猲 ng t莕g hai,ba,b鑞",
			"<#>Уo hoa nguy猲,l璾 ti猲 ng t莕g n╩,s竨, t莕 l╪g t莕g hai,long nh穘 ng,l﹎ du quan",
			"<#>Sa m筩 a bi觰,lng th駓 ng,v� danh ng,b╪g h� ng,thanh kh� ng,trng b筩h s琻 b綾",
			"<#>Sa m筩 s琻 ng t莕g m閠,hai,ba,dc vng ng t莕g b鑞,hi猲 vi猲 ng,trng b筩h s琻 nam,trng b筩h s琻 b綾"}

function map_help()
	ser = GetSeries() + 1
	lvl = floor(GetLevel()/10 + 1)
	if (lvl > 10) then lvl = 10 end
	if (ser == 1) then
		Say(npc_name.."<#>цi v韎<color=red>H� kim"..lv_str[lvl].."<#><color>B秐  ph� h頿 luy謓 c玭g l� "..map0[lvl].."<#>n a 甶觤",0)
	elseif (ser == 2) then
		Say(npc_name.."<#>цi v韎<color=red>H� m閏"..lv_str[lvl].."<#><color>B秐  ph� h頿 luy謓 c玭g l� "..map1[lvl].."<#>n a 甶觤",0)
	elseif (ser == 3) then
		Say(npc_name.."<#>цi v韎<color=red>H� th駓"..lv_str[lvl].."<#><color>B秐  ph� h頿 luy謓 c玭g l� "..map2[lvl].."<#>n a 甶觤",0)
	elseif (ser == 4) then
		Say(npc_name.."<#>цi v韎<color=red>H� h醓"..lv_str[lvl].."<#><color>B秐  ph� h頿 luy謓 c玭g l� "..map3[lvl].."<#>n a 甶觤",0)
	else
		Say(npc_name.."<#>цi v韎<color=red>H� th�"..lv_str[lvl].."<#><color>B秐  ph� h頿 luy謓 c玭g l� "..map4[lvl].."<#>n a 甶觤",0)
	end
end

function skill_help()
	fact_num = GetLastFactionNumber() + 1
	if (fact_num == 1) then				-- 少林
		Talk(5,"","цi v韎<color=red>Thi誹 l﹎<color>Ph竔 thi誹 l﹎ v� ngh� i th竔 chia l祄 ba lo筰","Th� nh藅 l� thi誹 l﹎ quy襫 ph竝 s� h鱱,h祅g long b竧 v�,thi誹 l﹎ quy襫 ph竝,s� t� h鉵g,long h� tr秓,t ma  giang","Th� hai l� thi誹 l﹎ c玭 ph竝 s� h鱱 kim cang ph鬰 ma,thi誹 l﹎ c玭 ph竝,ho祅h t秓 l鬰 h頿,ho祅h t秓 thi猲 qu﹏","Th� ba l� Thi誹 l﹎ 產o ph竝 s� h鱱 kim cng ph鬰 ma,thi誹 l﹎ 產o ph竝,ha ma v� lng,v� tng tr穖","Ngo礽 c竎 chi猽 th鴆  ra c遪 c� b蕋 ng minh vng, la h竛 tr薾,d辌h ch﹏ kinh,nh� lai thi猲 甶謕 h� tr� r蕋 nhi襲 cho thi誹 l﹎")
	elseif (fact_num == 2) then		-- 天王
		Talk(5,"","цi v韎<color=red>Thi猲 vng<color>V� ngh� thi猲 vng chia l祄 ba 阯g ri猲g bi謙","Л阯g th� nh蕋 thi猲 vng 產o s� h鱱 kinh l玦 tr秏,thi猲 vng 產o ph竝,b竧 phong tr秏,畂箃 h錸 th輈h,v� t﹎ tr秏,ph� thi猲 tr秏","Л阯g th� hai Thi猲 vng thng ph竝 s� h鱱 H錳 phong l筩 nh筺,thi猲 vng thng ph竝,dng quan tam 甶謕, 畂箃 h錸 th輈h,huy誸 chi課 b竧 phng, truy t譵 tr鬰 nguy謙","Л阯g th� ba Thi猲 vng ch飝 s� h鱱 Tr秏 long quy誸,thi猲 vng ch飝 ph竝, h祅g v﹏ quy誸,箃 h錸 th輈h,th鮝 long quy誸, truy phong nguy謙","Ngo礽 ra c遪 s� h鱱 c竎 k� n╪g kh竎 nh� T躰h t﹎ quy誸, kim trung ch竜,thi猲 vng chi課 �")
	elseif (fact_num == 3) then		-- 唐门
		Talk(5,"","цi v韎<color=red>Л阯g m玭<color>V� ngh� chia l祄 b鑞 hng ri猲g bi謙","Hng th� nh藅 l� phi 產o s� h鱱 c竎 tuy謙 k� nh� ph輈h l辌h n,truy t﹎ ti詎,ti觰 l� phi 產o,nhi誴 h錸 nguy謙 秐h","Hng th� hai s� d鬾g phi ti猽 v� s� h鱱 c竎 k� n╪g ph輈h l辌h n,畂箃 h錸 ti猽,t竛 hoa ti猽,c鱱 cung phi tinh","Hng th� ba s� d鬾g t� ti謓 thu藅 s� h鱱 c竎 k� n╪g ph輈h l辌h n,m筺 thi猲 hoa v�,thi猲 la a v鈔g,b筼 v� l� hoa,","Hng th� t� s� d騨g b蓎 s� h鱱 c竎 k� n╪g a di詍 h醓,c th� c鑤,xuy猲 t﹎ th輈h,h祅 b╪g th輈h,l玦 k輈h thu藅,lo筺 ho祅 k輈h")
	elseif (fact_num == 4) then		-- 五毒
		Talk(5,"","цi v韎<color=red>Ng� c<color>V� c玭g chia l祄 ba hng kh竎 nhau","Hng th� nh蕋 chng ph竝 s� h鱱 c竎 k� n╪g чc sa chng,ng� c chng ph竝,U minh kh� l﹗,Thi猲 cng a s竧, phong th鬰 c鑤","Hng th� hai l� 產o ph竝 s� h鱱 k� n╪g Huy誸 產o c s竧,ng� c 產o ph竝, b竎h c xuy猲 t﹎,chu c竝 thanh minh, huy襫 ﹎ tr穖","Hng th� ba s� d鬾g b颽 ch� s� h鱱 c竎 tuy謙 k� c鰑 thi猲 cu錸g l玦,X輈h di謓 th鬰 thi猲,b╪g lam huy襫 tinh,xuy猲 y ph� gi竝,v筺 c� th鵦 t﹎,Xuy猲 t﹎ c th輈h,畂筺 c﹏ h� c鑤","Ngo礽 ra c遪 s� h鱱 m閠 s� tuy謙 k� h� tr� nh� Tap nan dc kinh,v� h譶h c,ng� c k� kinh")
	elseif (fact_num == 5) then		-- 峨嵋
		Talk(4,"","цi v韎<color=red>Nga mi<color>V� c玭g chia l祄 ba hng kh竎 nhau","Hng th� nh蕋 nga mi ki誱 ph竝 s� h鱱 c竎 k� n╪g nh蕋 di謕 tri tru, nga mi ki誱 ph竝,th玦 song v鋘g nguy謙,b蕋 di謙 b蕋 tuy謙,tam nga t� nguy謙","Hng th� hai nga mi chng ph竝 s� h鱱 k� n╪g phi猽 tuy誸 xuy猲 v﹏,nga mi chng,t� tng ng quy,ph藅 quang ph� chi誹,phong sng to竔 秐h","Hng th� ba nghi猲 v� h� tr� v韎 c竎 k� n╪g nh� t� h祅g ph� ,m閚g 甶謕, l璾 th駓,ph藅 t﹎ t� h鱱,thanh ﹎ ph筸 xng,ph藅 ph竝 v� bi猲,ph�  ch髇g sinh")
	elseif (fact_num == 6) then		-- 翠烟
		Talk(4,"","цi v韎<color=red>Th髖 y猲<color>V� ngh� chia l祄 hai hng kh竎 nhau","hng th� nh蕋 th髖 y猲 n 產o s� h鱱 Phong hoa tuy誸 nguy謙,th髖 y猲 產o ph竝,v�  l� hoa,m鬰 d� l璾 tinh,b╪g tung v� 秐h","Hng th� hai th髖 y猲 song 產o Phong quy猲 t祅 tuy誸,th髖 y猲 song 產o,ph� v﹏ t竛 tuy誸,b輈h h秈 tri襲 sinh,b╪g t﹎ ti猲 t�","Ngo礽 ra c遪 h� tr� c竎 k� n╪g kh竎 nh� B╪g t﹎ tr竔 秐h,H� th� h祅 b╪g,Tuy誸 秐h,b╪g c鑤 tuy誸 t﹎")
	elseif (fact_num == 7) then		-- 丐帮
		Talk(4,"","цi v韎<color=red>C竔 bang<color>V� ngh� chia l祄 hai 阯g kh竎 nhau","Hng th� nh蕋 C竔 bang chng ph竝 s� h鱱 k� n╪g Ki課 nh﹏ th莕 ph�, C竔 bang chng ph竝, gi竛g long chng,kh竛g long h鱱 h鑙,phi long t筰 thi猲","Hng th� hai C竔 bang b鎛g ph竝 s� h鱱 k� n╪g Di猲 m玭 th竎 b竧,C竔 bang b鎛g ph竝,  c萿 tr薾,B鎛g  竎 c萿,Thi猲 h� v� c萿","Ngo礽 ra c遪 s� h鱱 m閠 s� k� n╪g nh� H鉧 hi猰 vi di,Ho箃 b竧 l璾 th�,Ti猽 di猽 c玭g,T髖 甶謕 cu錸g v�")
	elseif (fact_num == 8) then		-- 天忍
		Talk(4,"","цi v韎<color=red>Thi猲 nh蒼<color>V� c玭g chia l祄 ba lo筰 kh竎 nhau","Л阯g th� nh蕋 Thi猲 nh蒼 m﹗ ph竝 s� h鱱 tuy謙 k� T祅 dng nh� tuy誸,Thi猲 nh蒼 m﹗ ph竝,li謙 h醓 t譶h thi猲,Th﹗ thi猲 ho竛 nh藅,V﹏ long k輈h","Л阯g th� hai Thi猲 nh﹏ o ph竝 s� h鱱 tuy謙 k� Кn ch� li謙 di謒,thi猲 nh薾 產o ph竝, Th玦 s琻 甶襫 h秈,Ma di謒 th蕋 s竧,thi猲 ngo筰 l璾 tinh","Л阯g th� ba Thi猲 nh蒼 b颽 ch� s� h鱱 c竎 k� n╪g nh� H醓 li猲 ph莕 hoa,秓 秐h phi h�,Phi h錸g v� t輈h,B� t� thanh phong,L辌h ma 畂箃 h錸,nhi誴 h錸 lo筺 t﹎")
	elseif (fact_num == 9) then		-- 武当
		Talk(4,"","цi v韎<color=red>V� 產ng<color> V� c玭g chia l祄 hai hng kh竎 nhau","Hng th� nh蕋 V� 產ng quy襫 ph竝 s� h鱱 c竎 tuy謙 k� nh� N閕 l玦 ch�, V� 產ng quy襫 ph竝, B竎 c藀 nhi th鬰, v� ng� v� ki誱, Thi猲 a v� c鵦","Hng th� hai V� 產ng ki誱 ph竝 s� h鱱 c竎 k� n╪g nh� Thng h秈 minh nguy謙,V� 產ng ki誱 ph竝,Ki誱 phi kinh thi猲,Tam ho祅 thao nguy謙,Nh﹏ ki誱 h頿 nh蕋","Ngo礽 ra V� 產ng c遪 s� h鱱 m閠 s� tuy謙 k� nh� Th蕋 tinh tr薾, th� v﹏ tung,t鋋 v鈔g v� ng�, Th竔 c鵦 th莕 c玭g")
	elseif (fact_num == 10) then		-- 昆⒇
		Talk(5,"","цi v韎<color=red>C玭 l玭<color> V� c玭g C玭 l玭 chia l祄 ba 阯g","Л阯g th� nh蕋 C玭 l玭 產o ph竝 s� h鱱 k� n╪g H� phong ph竝, c玭 l玭 產o ph竝,Nh蕋 kh� tam thanh, Cu錸g phong s藆 甶謓,Ng筼 tuy誸 ti猽 phong","Л阯g th� hai C玭 l玭 ki誱 ph竝 s� h鱱 c竎 k� n╪g Cu錸g l玦 ch蕁 a, c玭 l玭 ki誱 ph竝, thi猲 t� t蕁 l玦,ng� l玦 ch輓h ph竝,l玦 ng c鰑 thi猲","Л阯g th� ba C玭 l玭 b颽 ch� s� h鱱 c竎 k� n╪g Th骳 phc ch�,thanh phong ch�,K� b竛 ph�,B綾 minh o h秈,thi猲 thanh a tr鋍,M� tung 秓 秐h,t髖 ti猲 t� c鑤","C竎 chi猽 th鴆 c玭 l玭 bi課 秓 th玭 lng")
	else									-- 白名
		Say(npc_name.."<#>Ngi n c� m玭 ph竔 c遪 kh玭g c� c遪 n鉯 g� luy謓 v� ch� tu",0)
	end
end

GV_TSK_CD_OPEN = 35
tbDEFENCE_SIGNMAP = { 518, 519 }
tbSIGNMAP_POS = {
					{ 1582,3174 },
					{ 1588,3160 },
					{ 1604,3147 },
				}
tbDEFENCE_RETURN = {
						[1] = { 1520,3228, "Phng tng", 2 },	--凤翔
						[11] = { 3018,5089, "Th祅h ", 1 },	--成都
						[37] = { 1632,3185, "Bi謓 kinh", 2 },	--汴京
						[78] = { 1439,3214, "Tng dng", 1 },	--襄阳
						[80] = { 1593,3197, "Dng ch﹗", 1 },	--扬州
						[162] = { 1470,3269, "Чi l�", 1 },	--大理
						[176] = { 1392,3313, "L﹎ an", 1 },	--临安
					}
CD_LEVEL_LIMIT = 80		--最低参加守城等级

function main(sel)
	
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end
    Msg2Player(szNpcName)
	local tbDailog = DailogClass:new(szNpcName)
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	--弹出对话框
	
	tbDailog.szTitleMsg = npc_name.."<#>ng ngh� ta kh玭g ph秈 l� ngi trong giang h� r錳 kh玭g bi誸 g�, chuy謓 ta bi誸 c遪 nhi襲 h琻 c竎 ngi"
	
	local mapid = SubWorldIdx2ID( SubWorld )
	local camp = tbDEFENCE_RETURN[mapid][4]
						
	tbDailog:AddOptEntry("Chi課 trng T鑞g Kim ", CallRescrptFunc )
	tbDailog:AddOptEntry("Ki觤 tra b秐  luy謓 c蕄 ", map_help )
	tbDailog:AddOptEntry("Tr� gi髉 k� n╪g ", skill_help )
	tbDailog:AddOptEntry("T竛 g蓇 ", default_talk )
	tbDailog:AddOptEntry("K誸 th骳")
	
	if ( GetGlbValue( GV_TSK_CD_OPEN ) == camp ) then
		tbDailog:AddOptEntry("Tham gia chi課 d辌h th� th祅h ", want2cd_signmap)
	end
	
	
	tbDailog:Show()
end

function want2cd_signmap()
	if ( GetLevel() < CD_LEVEL_LIMIT ) then
		Say(npc_name.."Ngi c騨g mu鑞 tham gia chi課 trng �, ti誧 l� c藀 b薱 ch璦 "..CD_LEVEL_LIMIT.."C蕄 b薱 c馻 ngi c遪 th蕄 qu� v祇 chi課 trng ch� t� b� m筺g, h穣 quay v� th祅h t藀 luy謓 th猰 甶", 0)
		return
	end
	Say(npc_name.."Ngi th藅 s� mu鑞 甶 th� th祅h ? ngi r蕋 d騨g c秏, ta nghe n鉯 b﹜ gi� t譶h h譶h r蕋 kh萵 c蕄, b猲 trong ch� c遪 ch鑞g  頲 kho秐g 2 canh gi�, ta ch� c� th� d蒼 ngi n g苝 tng qu﹏", 2, "Ta bi誸 d蒼 ta 甶 mau/sure2cd_signmap", "в ta chu萵 b� sau/no")
end

function sure2cd_signmap()
	LeaveTeam();
	local mapid = SubWorldIdx2ID( SubWorld )
	local camp = tbDEFENCE_RETURN[mapid][4]
	if ( camp == nil ) then
		Say(npc_name.."H譶h nh� qu﹏ t譶h kh玭g 鎛", 0)
		return
	end
	if (camp == 1) then
		Msg2Player("V祇 b秐  chi課 trng phe t鑞g")
	else
		Msg2Player("V祇 b秐  chi課 trng phe kim")
	end
	SetTask(TASKID_FIRE_ADDR, SubWorldIdx2ID(SubWorld))
	SetFightState(0)
	NewWorld(bt_getsignpos(camp))	--camp在守城卫兵处定义
end

function bt_getsignpos(camp)
	if ( camp ~= 1 and camp ~= 2 ) then
		camp = 1;
	end;
	local a = random(getn(tbSIGNMAP_POS))
	
	return tbDEFENCE_SIGNMAP[camp], tbSIGNMAP_POS[a][1], tbSIGNMAP_POS[a][2]
end

function cd_about_compose()
	Say(npc_name..":R莕 y chi課 s� th藅 nhi襲 ta kh玭g r穘h gi髉 ngi s鱝 trang b�,ngi mau 甶 t譵 th莕 b� th� r蘮 t譵 h緉 gi髉 , t礽 r蘮 c馻 h緉 c騨g h鋍 t� ta nh蕋 nh kh玭g th祅h v蕁 ", 0)
end

function CallRescrptFunc()
	if ( GetLevel() < 40 ) then
		Talk( 1, "", npc_name..": o ki誱 v� t譶h c蕄 th蕄 h琻 40 kh玭g th� v祇 chi課 trng" );
	else
		Say ( npc_name..": M阨 l鵤 chi課 trng th輈h h頿", 3, "Chi課 trng t鑞g kim Phe T鑞g/#DoRescriptFunc(1)", "Chi課 trng t鑞g kim Phe Kim/#DoRescriptFunc(2)","H駓 b�/no" );
	end;
end;

function DoRescriptFunc(nSel)
	local tbsongjin_pos = {1608,3254};	--宋方坐标点
	local szstr = "宋";
	if (nSel == 2) then
		tbsongjin_pos = {1566,3277};
		szstr = "金";
	end;
	if ( GetLevel() >= 40 and GetLevel() < 60 ) then
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- 不限制其使用回城符
		Msg2Player( "Chi課 trng t鑞g kim c蕄 th蕄" );
	elseif ( GetLevel() >= 60 and GetLevel() < 90 ) then
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- 不限制其使用回城符
		Msg2Player( "Chi課 trng t鑞g kim c蕄 trung" );
	else
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- 不限制其使用回城符
		Msg2Player( "Chi課 trng t鑞g kim c蕄 cao" );
	end
end;

function no()
end
