-- 算命先生.lua 看声望值的算命先生
-- By Dan_Deng(2003-11-11)

sexhead = {"少侠","女侠"}

Include("\\script\\global\\repute_head.lua")

function main()
	-- if (GetSex() == 0) then -- nam n� d飊g b蕋 ng i tho筰 
-- Say("Trng Thi誸 Ch駓 : V� thi觰 hi謕 kia kh� v� b蕋 ph祄 , c� mu鑞 bi誸 hay kh玭g thi誹 hi謕 ng礽 ch c萴 t� ti襫 tr譶h ? ch� c莕 500 lng b筩 . ",2," h秓 , cho ta t輓h m閠 l莕 /view_repute_yes"," kh玭g c莕 /no") 
-- else 
-- Say("Trng Thi誸 Ch駓 : V� c� nng n祔 xinh p nh� hoa , c� mu鑞 xem m閠 ch髏 hay kh玭g m譶h t鑤 p tng lai y ? ch� c莕 500 lng b筩 . ",2," h秓 , cho ta t輓h m閠 l莕 /view_repute_yes"," kh玭g c莕 /no") 
Say("Trng Thi誸 Ch駓: H玬 nay l穙 phu l筰 b閚 b� c玭g vi謈, ng祔 mai i hi謕 l筰 gh� ch琲 nh�!") 
-- end
end

-- function view_repute_yes()
	-- if (GetCash() < 500) then
		-- Talk(1,"","Trng Thi誸 Ch駓 : L筰 l� m閠 kh玭g c� ti襫, u鏽g ph� n鯽 ng祔 nc mi課g.")		
		-- return 0
	-- end
	-- Pay(500)
	-- repute_exp = GetRepute()
	-- repute_lvl = GetReputeLevel(repute_exp)
	-- if (repute_lvl == -1) then -- b� l鏸 l骳 
-- Talk(1,"","Trng Thi誸 Ch駓 : T� x璦 anh ki謙 nhi襲 kh� n筺 , b﹜ gi� ngi 產ng b� 竎h linh chi k裻 , d錸 khi課 cho ngi giang h� danh v鋘g xu蕋 hi謓 sai l莔 . xin/m阨 甶 t譵 thi猲 th莕 ban ph骳 甶 . ") 
-- elseif (repute_lvl == 0) then 
-- Talk(2,"","Trng Thi誸 Ch駓 : Kim long h� l� trong ao v藅 , ngi b﹜ gi� m芻 d� m閠 gi韎 竜 v秈 , ngi giang h� s� kh玭g bi誸 , nh璶g gi� l蕐 ng祔 gi� , t蕋 甧m c� kinh thi猲 ng a kh� n╪g . "," trng thi誸 ch駓 : ngi b﹜ gi� ch giang h� danh v鋘g l� "..repute_exp.." , ngi giang h� coi ngi v� <color=red> b譶h d﹏ b竎h t輓h <color> . ") 
-- elseif (repute_lvl == 1) then 
-- Talk(2,"","Trng Thi誸 Ch駓 : Th莕 long ch顃 hi謓 trong cu閏 s鑞g , ngi m芻 d� s� xu蕋 mao l� , nh璶g t蕋 甧m nhanh ch鉵g qu藅 kh雐 , c� th鴆 chi s� s� r蕋 nhanh ch� � t韎 l鵦 lng c馻 ngi . "," trng thi誸 ch駓 : ngi b﹜ gi� ch giang h� danh v鋘g l� "..repute_exp.." , ngi giang h� coi ngi v� <color=red> s� xu蕋 giang h� <color> . ") 
-- elseif (repute_lvl == 2) then 
-- Talk(2,"","Trng Thi誸 Ch駓 : S� phng l遪g c� h錸g h閏 ch� , m芻 d� � trong ch鑞 giang h� ngi v蒼 ch� l� v� danh ti觰 b鑙 , nh璶g vt qua ph祄 b鑙 i v韎 ngi m� n鉯 ch糿g qua l� ch筸 tay c� th� ng chuy謓 . "," trng thi誸 ch駓 : ngi b﹜ gi� ch giang h� danh v鋘g l� "..repute_exp.." , ngi giang h� coi ngi v� <color=red> v� danh ti觰 b鑙 <color> . ") 
-- elseif (repute_lvl == 3) then 
-- Talk(2,"","Trng Thi誸 Ch駓 : Ti襪 tu mi t竔 kh玭g ngi h醝 , � trong ch鑞 giang h� ngi v蒼 y猲 l苙g kh玭g nghe th蕐 , nh璶g ti襪 ch蕋  bi觰 l� kh玭g b� s鉻 , Nh蕋 Phi Tr飊g Thi猲 ch糿g qua l� s韒 mu閚 chuy謓 . "," trng thi誸 ch駓 : ngi b﹜ gi� ch giang h� danh v鋘g l� "..repute_exp.." , ngi giang h� coi ngi v� <color=red> y猲 l苙g kh玭g nghe th蕐 <color> . ") 
-- elseif (repute_lvl == 4) then 
-- Talk(2,"","Trng Thi誸 Ch駓 : Х tr秈 qua ng o ma luy謓 sau ch ngi ,  產ng l骳 m鋓 ngi trc s� s� hi觧 l� phong mang , giang h� b莥 hi謕  m� m韎 ch� � t韎 ngi qu藅 kh雐 . "," trng thi誸 ch駓 : ngi b﹜ gi� ch giang h� danh v鋘g l� "..repute_exp.." , ngi giang h� coi ngi v� <color=red> s� hi觧 phong mang <color> . ") 
-- elseif (repute_lvl == 5) then 
-- Talk(2,"","Trng Thi誸 Ch駓 : Ngi  vt qua gian nan nh蕋 kh鑞 kh� ch giai 畂筺 , ngi danh ti課g b総 u 秐h hng n nh鱪g ngi chung quanh , ngi nhi襲 h琻 ph竧 hi謓 n╪g l鵦 c馻 ngi . ","Trng Thi誸 Ch駓 : ngi b﹜ gi� ch giang h� danh v鋘g l� "..repute_exp.." , ngi giang h� coi ngi v� <color=red> c� ch髏 danh ti課g <color> . ") 
-- elseif (repute_lvl == 6) then 
-- Talk(2,"","Trng Thi誸 Ch駓 : Ngi qu藅 kh雐 產ng b� c祅g ng祔 c祅g nhi襲 ngi coi tr鋘g , trong ch鑞 giang h� ngi danh ti課g  c祅g ng祔 c祅g vang d閕 , m鋓 ngi b総 u th藅 l遪g th鵦 � a i v韎 ngi n鉯 nh� s蕀 b猲 ta","Trng Thi誸 Ch駓 : ngi b﹜ gi� ch giang h� danh v鋘g l� "..repute_exp.." , ngi giang h� coi ngi v� <color=red> danh ti課g vang d閕 <color> . ") 
-- elseif (repute_lvl == 7) then 
-- Talk(2,"","Trng Thi誸 Ch駓 : Ngi  th祅h v� i 產 s� m総 ngi trung ch cao th� , ngi c� kh玭g t莔 thng th鵦 l鵦 khi課 cho ngi danh ti課g uy tr蕁 nh蕋 phng . "," trng thi誸 ch駓 : ngi b﹜ gi� ch giang h� danh v鋘g l� "..repute_exp.." , ngi giang h� coi ngi v� <color=red> uy tr蕁 nh蕋 phng <color> . ") 
-- elseif (repute_lvl == 8) then 
-- Talk(2,"","Trng Thi誸 Ch駓 : Ng筼 th� qu莕 h飊g ch cng gi� c� th� ch骯 t� ngi kh竎 ch sinh t� . m� ngi , � kh玭g gi秈 c� g緉g c飊g gian kh� ph蕁 u di ,  tr� th祅h li評 cng gi� nh� v藋 . ","Trng Thi誸 Ch駓 : ngi b﹜ gi� ch giang h� danh v鋘g l� "..repute_exp.." , ngi giang h� coi ngi v� <color=red> ng筼 th� qu莕 h飊g <color> . ") 
-- elseif (repute_lvl == 9) then 
-- Talk(2,"","Trng Thi誸 Ch駓 : Ngi danh v鋘g nh� m苩 tr阨 ban tr璦 , giang h� tr� n猲 c秐h ngng , t玭 ngi l祄 m閠 Чi t玭g s� , v� l﹎ i hi謕 . ","Trng Thi誸 Ch駓 : ngi b﹜ gi� ch giang h� danh v鋘g l� "..repute_exp.." , ngi giang h� coi ngi v� <color=red> m閠 i t玭g s� <color> . ") 
-- else 
-- Talk(2,"","Trng Thi誸 Ch駓 : Th﹏ l� trong ch鑞 giang h� ch truy襫 thuy誸 nh﹏ v藅 , giang h� h藆 ti課 ch ph蕁 u m鬰 ti猽 , m� ngi l筰 nh� th莕 long th蕐 u kh玭g th蕐 畊玦 m閠 lo筰 theo t輓h l祄 . "," trng thi誸 ch駓 : ngi b﹜ gi� ch giang h� danh v鋘g l� "..repute_exp.." , ngi giang h� coi ngi v� <color=red> ti誹 ng筼 giang h� <color> . ") 
-- end
-- end

-- function no()
-- end
