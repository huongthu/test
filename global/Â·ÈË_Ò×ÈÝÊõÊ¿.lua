-- 用铜钱出售易容物品的NPC
-- Fanghao Wu
-- 2004.11.1

function main()

	--Say("易容术士：这位客官，想要什么好东西直接去<color=yellow>奇珍阁<color>里挑就是了，老夫终于可以清闲清闲了呢！什么？不懂怎么去<color=yellow>奇珍阁<color>？直接点击<color=green>右息角的那个圆形的图标<color>就是了。", 0);
	--return
	
	 -- Say ( "D辌h Dung Thu藅 S� : Mu鑞 h鋍 thu藅 d辌h dung ? Th藅 ra th� r蕋 n gi秐, � ta y mua m閠 c ch� d辌h dung m苩 n� ta li襫 c� th� d箉 ngi. B蕋 ng m苩 n� c� th� d辌h dung 頲 kh玭g c飊g ch d竛g v� , i hi謕 c� mu鑞 hay kh玭g nh譶 m閠 ch髏 ? ", 3, "Mua/OnBuy", "T筸 th阨 kh玭g mua /OnCancel", "Li猲 quan t韎 d辌h dung m苩 n�/OnAbout" );
	 Say ("Th藅 bu錸 khi l穙 phu ngh� vi謈!");
end

function OnBuy()
	Sale( 95, 3 );
end

function OnCancel()
end

function OnAbout()
	Say( "m t飝 � m苩 n� trang b� n trang b�<color=yellow> m苩 n� <color> m閠 c竎h, ngi ch琲 nh﹏ v藅 d竛g ngo礽 s鯽 i v� n猲 m苩 n� i 鴑g NPC h譶h tng, nh﹏ v藅 t猲 c飊g t蕋 c� thu閏 t輓h u <color=yellow> kh玭g thay i <color> , c騨g <color=yellow> kh玭g 秐h hng <color> nh﹏ v藅 b譶h thng s� d鬾g c竎 lo筰 trang b� o c� c飊g ch鴆 n╪g. m m苩 n� t� trang b� lan g� xu鑞g, nh﹏ v藅 d竛g ngo礽 thay i tr� v� b� d竛g l骳 trc, m苩 n� ch s� d鬾g s� l莕 <color=yellow> gi秏 b韙 m閠 l莕 <color>.", 0 );
end
