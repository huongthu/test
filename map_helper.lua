-- map_helper.lua
-- By: Dan_Deng(2004-06-28)
-- ��ά���������С��ȼ������Թ�
Include("\\script\\activitysys\\npcdailog.lua")

lv_str={	"<#>kh�ng t�i c�p 10","<#>H�n c�p 10","<#>H�n c�p 20","<#>H�n c�p 30","<#>H�n c�p 40","<#>H�n c�p 50","<#>H�n c�p 60","<#>H�n c�p 70","<#>H�n c�p 80","<#>C�p 90 tr� l�n"}
map0 = {	"<#>Khu v�c t�n th� th�n",
			"<#>Khu v�c c�c ph�i v� c�c th�nh th�",
			"<#>Ki�m c�c trung nguy�n,ki�m c�c t�y b�c, ki�m c�c t�y nam, la ti�u s�n, v� l�n s�n,t�n l�ng",
			"<#>Th�c c��ng s�n,mi�u l�nh,y�n t� ��ng, d��c v��ng ��ng t�ng m�t,kho�i h�at l�m",
			"<#>Kinh ho�ng ��ng,ph�c ng�u s�n t�y,�i�m th��ng ��ng t�ng ba,thi�u l�m m�t th�t",
			"<#>H��ng th�y ��ng,thi�n t�m ��ng,��ng ��nh h�,b�ng nguy�t m� cung",
			"<#>Thanh loa ��o,La h�n tr�n,H�nh s�n ph�i,t��ng d��ng nha m�n m�t ��o",
			"<#>��i t� ��ng,thanh loa ��o,Linh c�c ��ng,L�o h� ��ng,L�m du quan",
			"<#>Sa m�c ��a bi�u,phi thi�n ��ng,ph� dung ��ng,l��ng th�y ��ng,b�ng h� ��ng,thanh kh� ��ng,tr��ng b�ch s�n c��c",
			"<#>Sa m�c s�n ��ng t�ng m�t,hai,ba,xi v�u ��ng,tr��ng b�ch s�n nam,tr��ng b�ch s�n b�c"}
map1 = {	"<#>Khu v�c t�n th� th�n",
			"<#>R�n thu v�c c�c ph�i v� c�c th�nh th�",
			"<#>Ki�m c�c trung nguy�n,ki�m c�c t�y b�c, ki�m c�c t�y nam, la ti�u s�n, v� l�n s�n,t�n l�ng",
			"<#>V� di s�n,t�n l�ng t�ng m�t,b�ch v�n ��ng,th� ph� ��ng",
			"<#>Thanh th�nh s�n,�i�m th��ng s�n,ph��ng nh�n ��ng,�i�m th��ng ��ng t�ng m�t,th�n ti�n ��ng",
			"<#>H��ng th�y ��ng,nghi�t long ��ng,ng�c hoa ��ng,thi�n t�m th�p t�ng m�t,hai",
			"<#>D��ng gi�c ��ng,Tr�c ti ��ng t�ng m�t,h�nh s�n ph�i,thi�n t�m th�p t�ng ba",
			"<#>Long nh�n ��ng,T�n l�ng t�ng hai,Tr�c ti ��ng t�ng hai,tr��ng giang nguy�n ��u,l�m du quan",
			"<#>Sa m�c ��a bi�u,v� l�ng ��ng,d��ng trung ��ng,c� d��ng ��ng,nh�n th�ch ��ng,d��c v��ng ��ng t�ng ba,t�n l�ng t�ng ba,tr��ng b�ch s�n c��c",
			"<#>Sa m�c s�n ��ng t�ng,m�t,hai,ba,d��c v��ng ��ng t�ng b�n,ti�n c�c ��ng,tr��ng b�ch s�n nam,tr��ng b�ch s�n b�c"}
map2 = {	"<#>Khu v�c t�n th� th�n",
			"<#>R�n thu v�c c�c ph�i v� c�c th�nh th�",
			"<#>Ki�m c�c trung nguy�n,ki�m c�c t�y b�c, ki�m c�c t�y nam, la ti�u s�n, v� l�n s�n,t�n l�ng",
			"<#>B�ch v�n ��ng,th�c c��ng s�n,th� ph� ��ng,ph�c ng�u s�n ��ng,kim quang ��ng",
			"<#>ph��ng nh�n ��ng,�i�m th��ng ��ng t�ng m�t,th�n ti�n ��ng,ph�c ng�u s�n t�y,kinh ho�ng ��ng",
			"<#>H��ng th�y ��ng,thi�n t�m th�p t�ng m�t,hai,�c b� ��a ��o",
			"<#>Thi�n t�m th�p t�ng ba,la h�n tr�n,c�m ��a m� cung,h�nh s�n ph�i",
			"<#>Tr��ng giang nguy�n ��u,s�n b�o ��ng,��o hoa nguy�n,d��c v��ng ��ng t�ng hai,l�m du quan",
			"<#>Sa m�c ��a bi�u,phi thi�n ��ng,ph� dung ��ng,d��ng trung ��ng,c� d��ng ��ng,d��c v��ng ��ng t�ng ba,tr��ng b�ch s�n c��c",
			"<#>Sa m�c s�n ��ng t�ng m�t,hai,ba ,Xi v�u ��ng,ti�n c�c ��ng,tr��ng b�ch s�n nam,tr��ng b�ch s�n b�c"}
map3 = {	"<#>Khu v�c t�n th� th�n",
			"<#>R�n thu v�c c�c ph�i v� c�c th�nh th�",
			"<#>Ki�m c�c trung nguy�n,ki�m c�c t�y b�c, ki�m c�c t�y nam, la ti�u s�n, v� l�n s�n,t�n l�ng",
			"<#>Ph�c ng�u s�n ��ng,kim quang ��ng,t�n l�ng t�ng m�t,v� di s�n",
			"<#>T�a v�n ��ng,long cung ��ng,�i�m th��ng ��ng t�ng hai,thanh th�nh s�n,�i�m th��ng s�n",
			"<#>H��ng th�y ��ng,bi�n kinh thi�t th�p t�ng m�t,hai,ba,t��ng v�n ��ng t�ng m�t,ng� hoa vi�n s�n ��ng",
			"<#>T��ng v�n ��ng t�ng hai,ba,b�n,thi�n nh�n th�nh ��ng,d��ng gi�c ��ng,tr�c ti ��ng",
			"<#>D��c v��ng ��ng t�ng hai,l�o h� ��ng,t��ng v�n ��ng t�ng n�m,linh c�c ��ng,l�m du quan",
			"<#>Sa m�c ��a bi�u,v� l�ng ��ng,v� danh ��ng,nh�n th�ch ��ng,t�n l�ng t�ng ba,tr��ng b�ch s�n c��c",
			"<#>Sa m�c s�n ��ng t�ng m�t,hai,ba,d��c v��ng ��ng t�ng b�n,hi�n vi�n ��ng,tr��ng b�ch s�n nam,tr��ng b�ch s�n b�c"}
map4 = {	"<#>Khu v�c t�n th� th�n",
			"<#>R�n thu v�c c�c ph�i v� c�c th�nh th�",
			"<#>Ki�m c�c trung nguy�n,ki�m c�c t�y b�c, ki�m c�c t�y nam, la ti�u s�n, v� l�n s�n,t�n l�ng",
			"<#>Mi�u l�nh,d��c v��ng ��ng t�ng m�t,kho�i ho�t l�m,ph�c ng�u s�n ��ng,kim quang ��ng,tuy�t b�o ��ng t�ng m�t,hai",
			"<#>Phong s�n ��ng,k� quan ��ng,ho�ng ha nguy�n ��u,t�a v�n ��ng,�i�m th��ng ��ng t�ng hai",
			"<#>H��ng th�y ��ng,b�ng huy�t m� cung,l�u ti�n ��ng t�ng m�t,thi�t th�p m� cung t�ng m�t,hai,ba",
			"<#>H�nh s�n ph�i,t��ng d��ng nha m�n m�t ��o,l�u ti�n ��ng t�ng hai,ba,b�n",
			"<#>��o hoa nguy�n,l�u ti�n ��ng t�ng n�m,s�u, t�n l�ng t�ng hai,long nh�n ��ng,l�m du quan",
			"<#>Sa m�c ��a bi�u,l��ng th�y ��ng,v� danh ��ng,b�ng h� ��ng,thanh kh� ��ng,tr��ng b�ch s�n b�c",
			"<#>Sa m�c s�n ��ng t�ng m�t,hai,ba,d��c v��ng ��ng t�ng b�n,hi�n vi�n ��ng,tr��ng b�ch s�n nam,tr��ng b�ch s�n b�c"}

function map_help()
	ser = GetSeries() + 1
	lvl = floor(GetLevel()/10 + 1)
	if (lvl > 10) then lvl = 10 end
	if (ser == 1) then
		Say(npc_name.."<#>��i v�i<color=red>H� kim"..lv_str[lvl].."<#><color>B�n �� ph� h�p luy�n c�ng l� "..map0[lvl].."<#>��n ��a �i�m",0)
	elseif (ser == 2) then
		Say(npc_name.."<#>��i v�i<color=red>H� m�c"..lv_str[lvl].."<#><color>B�n �� ph� h�p luy�n c�ng l� "..map1[lvl].."<#>��n ��a �i�m",0)
	elseif (ser == 3) then
		Say(npc_name.."<#>��i v�i<color=red>H� th�y"..lv_str[lvl].."<#><color>B�n �� ph� h�p luy�n c�ng l� "..map2[lvl].."<#>��n ��a �i�m",0)
	elseif (ser == 4) then
		Say(npc_name.."<#>��i v�i<color=red>H� h�a"..lv_str[lvl].."<#><color>B�n �� ph� h�p luy�n c�ng l� "..map3[lvl].."<#>��n ��a �i�m",0)
	else
		Say(npc_name.."<#>��i v�i<color=red>H� th�"..lv_str[lvl].."<#><color>B�n �� ph� h�p luy�n c�ng l� "..map4[lvl].."<#>��n ��a �i�m",0)
	end
end

function skill_help()
	fact_num = GetLastFactionNumber() + 1
	if (fact_num == 1) then				-- ����
		Talk(5,"","��i v�i<color=red>Thi�u l�m<color>Ph�i thi�u l�m v� ngh� ��i th�i chia l�m ba lo�i","Th� nh�t l� thi�u l�m quy�n ph�p s� h�u,h�ng long b�t v�,thi�u l�m quy�n ph�p,s� t� h�ng,long h� tr�o,��t ma �� giang","Th� hai l� thi�u l�m c�n ph�p s� h�u kim cang ph�c ma,thi�u l�m c�n ph�p,ho�nh t�o l�c h�p,ho�nh t�o thi�n qu�n","Th� ba l� Thi�u l�m �ao ph�p s� h�u kim c��ng ph�c ma,thi�u l�m �ao ph�p,ha ma v� l��ng,v� t��ng tr�m","Ngo�i c�c chi�u th�c �� ra c�n c� b�t ��ng minh v��ng, la h�n tr�n,d�ch ch�n kinh,nh� lai thi�n �i�p h� tr� r�t nhi�u cho thi�u l�m")
	elseif (fact_num == 2) then		-- ����
		Talk(5,"","��i v�i<color=red>Thi�n v��ng<color>V� ngh� thi�n v��ng chia l�m ba ���ng ri�ng bi�t","���ng th� nh�t thi�n v��ng �ao s� h�u kinh l�i tr�m,thi�n v��ng �ao ph�p,b�t phong tr�m,�o�t h�n th�ch,v� t�m tr�m,ph� thi�n tr�m","���ng th� hai Thi�n v��ng th��ng ph�p s� h�u H�i phong l�c nh�n,thi�n v��ng th��ng ph�p,d��ng quan tam �i�p, �o�t h�n th�ch,huy�t chi�n b�t ph��ng, truy t�m tr�c nguy�t","���ng th� ba Thi�n v��ng ch�y s� h�u Tr�m long quy�t,thi�n v��ng ch�y ph�p, h�ng v�n quy�t,�o�t h�n th�ch,th�a long quy�t, truy phong nguy�t","Ngo�i ra c�n s� h�u c�c k� n�ng kh�c nh� T�nh t�m quy�t, kim trung ch�o,thi�n v��ng chi�n �")
	elseif (fact_num == 3) then		-- ����
		Talk(5,"","��i v�i<color=red>���ng m�n<color>V� ngh� chia l�m b�n h��ng ri�ng bi�t","H��ng th� nh�t l� phi �ao s� h�u c�c tuy�t k� nh� ph�ch l�ch ��n,truy t�m ti�n,ti�u l� phi �ao,nhi�p h�n nguy�t �nh","H��ng th� hai s� d�ng phi ti�u v� s� h�u c�c k� n�ng ph�ch l�ch ��n,�o�t h�n ti�u,t�n hoa ti�u,c�u cung phi tinh","H��ng th� ba s� d�ng t� ti�n thu�t s� h�u c�c k� n�ng ph�ch l�ch ��n,m�n thi�n hoa v�,thi�n la ��a v�ng,b�o v� l� hoa,","H��ng th� t� s� d�ng b�y s� h�u c�c k� n�ng ��a di�m h�a,��c th� c�t,xuy�n t�m th�ch,h�n b�ng th�ch,l�i k�ch thu�t,lo�n ho�n k�ch")
	elseif (fact_num == 4) then		-- �嶾
		Talk(5,"","��i v�i<color=red>Ng� ��c<color>V� c�ng chia l�m ba h��ng kh�c nhau","H��ng th� nh�t ch��ng ph�p s� h�u c�c k� n�ng ��c sa ch��ng,ng� ��c ch��ng ph�p,U minh kh� l�u,Thi�n c��ng ��a s�t,�m phong th�c c�t","H��ng th� hai l� �ao ph�p s� h�u k� n�ng Huy�t �ao ��c s�t,ng� ��c �ao ph�p, b�ch ��c xuy�n t�m,chu c�p thanh minh, huy�n �m tr�m","H��ng th� ba s� d�ng b�a ch� s� h�u c�c tuy�t k� c�u thi�n cu�ng l�i,X�ch di�n th�c thi�n,b�ng lam huy�n tinh,xuy�n y ph� gi�p,v�n c� th�c t�m,Xuy�n t�m ��c th�ch,�o�n c�n h� c�t","Ngo�i ra c�n s� h�u m�t s� tuy�t k� h� tr� nh� Tap nan d��c kinh,v� h�nh ��c,ng� ��c k� kinh")
	elseif (fact_num == 5) then		-- ����
		Talk(4,"","��i v�i<color=red>Nga mi<color>V� c�ng chia l�m ba h��ng kh�c nhau","H��ng th� nh�t nga mi ki�m ph�p s� h�u c�c k� n�ng nh�t di�p tri tru, nga mi ki�m ph�p,th�i song v�ng nguy�t,b�t di�t b�t tuy�t,tam nga t� nguy�t","H��ng th� hai nga mi ch��ng ph�p s� h�u k� n�ng phi�u tuy�t xuy�n v�n,nga mi ch��ng,t� t��ng ��ng quy,ph�t quang ph� chi�u,phong s��ng to�i �nh","H��ng th� ba nghi�n v� h� tr� v�i c�c k� n�ng nh� t� h�ng ph� ��,m�ng �i�p, l�u th�y,ph�t t�m t� h�u,thanh �m ph�m x��ng,ph�t ph�p v� bi�n,ph� �� ch�ng sinh")
	elseif (fact_num == 6) then		-- ����
		Talk(4,"","��i v�i<color=red>Th�y y�n<color>V� ngh� chia l�m hai h��ng kh�c nhau","h��ng th� nh�t th�y y�n ��n �ao s� h�u Phong hoa tuy�t nguy�t,th�y y�n �ao ph�p,v� �� l� hoa,m�c d� l�u tinh,b�ng tung v� �nh","H��ng th� hai th�y y�n song �ao Phong quy�n t�n tuy�t,th�y y�n song �ao,ph� v�n t�n tuy�t,b�ch h�i tri�u sinh,b�ng t�m ti�n t�","Ngo�i ra c�n h� tr� c�c k� n�ng kh�c nh� B�ng t�m tr�i �nh,H� th� h�n b�ng,Tuy�t �nh,b�ng c�t tuy�t t�m")
	elseif (fact_num == 7) then		-- ؤ��
		Talk(4,"","��i v�i<color=red>C�i bang<color>V� ngh� chia l�m hai ���ng kh�c nhau","H��ng th� nh�t C�i bang ch��ng ph�p s� h�u k� n�ng Ki�n nh�n th�n ph�, C�i bang ch��ng ph�p, gi�ng long ch��ng,kh�ng long h�u h�i,phi long t�i thi�n","H��ng th� hai C�i bang b�ng ph�p s� h�u k� n�ng Di�n m�n th�c b�t,C�i bang b�ng ph�p, �� c�u tr�n,B�ng �� �c c�u,Thi�n h� v� c�u","Ngo�i ra c�n s� h�u m�t s� k� n�ng nh� H�a hi�m vi di,Ho�t b�t l�u th�,Ti�u di�u c�ng,T�y �i�p cu�ng v�")
	elseif (fact_num == 8) then		-- ����
		Talk(4,"","��i v�i<color=red>Thi�n nh�n<color>V� c�ng chia l�m ba lo�i kh�c nhau","���ng th� nh�t Thi�n nh�n m�u ph�p s� h�u tuy�t k� T�n d��ng nh� tuy�t,Thi�n nh�n m�u ph�p,li�t h�a t�nh thi�n,Th�u thi�n ho�n nh�t,V�n long k�ch","���ng th� hai Thi�n nh�n �ao ph�p s� h�u tuy�t k� ��n ch� li�t di�m,thi�n nh�n �ao ph�p, Th�i s�n �i�n h�i,Ma di�m th�t s�t,thi�n ngo�i l�u tinh","���ng th� ba Thi�n nh�n b�a ch� s� h�u c�c k� n�ng nh� H�a li�n ph�n hoa,�o �nh phi h�,Phi h�ng v� t�ch,B� t� thanh phong,L�ch ma �o�t h�n,nhi�p h�n lo�n t�m")
	elseif (fact_num == 9) then		-- �䵱
		Talk(4,"","��i v�i<color=red>V� �ang<color> V� c�ng chia l�m hai h��ng kh�c nhau","H��ng th� nh�t V� �ang quy�n ph�p s� h�u c�c tuy�t k� nh� N�i l�i ch�, V� �ang quy�n ph�p, B�c c�p nhi th�c, v� ng� v� ki�m, Thi�n ��a v� c�c","H��ng th� hai V� �ang ki�m ph�p s� h�u c�c k� n�ng nh� Th��ng h�i minh nguy�t,V� �ang ki�m ph�p,Ki�m phi kinh thi�n,Tam ho�n thao nguy�t,Nh�n ki�m h�p nh�t","Ngo�i ra V� �ang c�n s� h�u m�t s� tuy�t k� nh� Th�t tinh tr�n, th� v�n tung,t�a v�ng v� ng�, Th�i c�c th�n c�ng")
	elseif (fact_num == 10) then		-- ����
		Talk(5,"","��i v�i<color=red>C�n l�n<color> V� c�ng C�n l�n chia l�m ba ���ng","���ng th� nh�t C�n l�n �ao ph�p s� h�u k� n�ng H� phong ph�p, c�n l�n �ao ph�p,Nh�t kh� tam thanh, Cu�ng phong s�u �i�n,Ng�o tuy�t ti�u phong","���ng th� hai C�n l�n ki�m ph�p s� h�u c�c k� n�ng Cu�ng l�i ch�n ��a, c�n l�n ki�m ph�p, thi�n t� t�n l�i,ng� l�i ch�nh ph�p,l�i ��ng c�u thi�n","���ng th� ba C�n l�n b�a ch� s� h�u c�c k� n�ng Th�c ph��c ch�,thanh phong ch�,K� b�n ph�,B�c minh ��o h�i,thi�n thanh ��a tr�c,M� tung �o �nh,t�y ti�n t� c�t","C�c chi�u th�c c�n l�n bi�n �o th�n l��ng")
	else									-- ����
		Say(npc_name.."<#>Ng��i ��n c� m�n ph�i c�n kh�ng c� c�n n�i g� luy�n v� ch� tu",0)
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
						[1] = { 1520,3228, "Ph��ng t��ng", 2 },	--����
						[11] = { 3018,5089, "Th�nh ��", 1 },	--�ɶ�
						[37] = { 1632,3185, "Bi�n kinh", 2 },	--�꾩
						[78] = { 1439,3214, "T��ng d��ng", 1 },	--����
						[80] = { 1593,3197, "D��ng ch�u", 1 },	--����
						[162] = { 1470,3269, "��i l�", 1 },	--����
						[176] = { 1392,3313, "L�m an", 1 },	--�ٰ�
					}
CD_LEVEL_LIMIT = 80		--��Ͳμ��سǵȼ�

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
	--�����Ի���
	
	tbDailog.szTitleMsg = npc_name.."<#>��ng ngh� ta kh�ng ph�i l� ng��i trong giang h� r�i kh�ng bi�t g�, chuy�n ta bi�t c�n nhi�u h�n c�c ng��i"
	
	local mapid = SubWorldIdx2ID( SubWorld )
	local camp = tbDEFENCE_RETURN[mapid][4]
						
	tbDailog:AddOptEntry("Chi�n tr��ng T�ng Kim ", CallRescrptFunc )
	tbDailog:AddOptEntry("Ki�m tra b�n �� luy�n c�p ", map_help )
	tbDailog:AddOptEntry("Tr� gi�p k� n�ng ", skill_help )
	tbDailog:AddOptEntry("T�n g�u ", default_talk )
	tbDailog:AddOptEntry("K�t th�c")
	
	if ( GetGlbValue( GV_TSK_CD_OPEN ) == camp ) then
		tbDailog:AddOptEntry("Tham gia chi�n d�ch th� th�nh ", want2cd_signmap)
	end
	
	
	tbDailog:Show()
end

function want2cd_signmap()
	if ( GetLevel() < CD_LEVEL_LIMIT ) then
		Say(npc_name.."Ng��i c�ng mu�n tham gia chi�n tr��ng �, ti�c l� c�p b�c ch�a ��"..CD_LEVEL_LIMIT.."C�p b�c c�a ng��i c�n th�p qu� v�o chi�n tr��ng ch� t� b� m�ng, h�y quay v� th�nh t�p luy�n th�m �i", 0)
		return
	end
	Say(npc_name.."Ng��i th�t s� mu�n �i th� th�nh ? ng��i r�t d�ng c�m, ta nghe n�i b�y gi� t�nh h�nh r�t kh�n c�p, b�n trong ch� c�n ch�ng �� ���c kho�ng 2 canh gi�, ta ch� c� th� d�n ng��i ��n g�p t��ng qu�n", 2, "Ta bi�t d�n ta �i mau/sure2cd_signmap", "�� ta chu�n b� sau/no")
end

function sure2cd_signmap()
	LeaveTeam();
	local mapid = SubWorldIdx2ID( SubWorld )
	local camp = tbDEFENCE_RETURN[mapid][4]
	if ( camp == nil ) then
		Say(npc_name.."H�nh nh� qu�n t�nh kh�ng �n", 0)
		return
	end
	if (camp == 1) then
		Msg2Player("V�o b�n �� chi�n tr��ng phe t�ng")
	else
		Msg2Player("V�o b�n �� chi�n tr��ng phe kim")
	end
	SetTask(TASKID_FIRE_ADDR, SubWorldIdx2ID(SubWorld))
	SetFightState(0)
	NewWorld(bt_getsignpos(camp))	--camp���س�����������
end

function bt_getsignpos(camp)
	if ( camp ~= 1 and camp ~= 2 ) then
		camp = 1;
	end;
	local a = random(getn(tbSIGNMAP_POS))
	
	return tbDEFENCE_SIGNMAP[camp], tbSIGNMAP_POS[a][1], tbSIGNMAP_POS[a][2]
end

function cd_about_compose()
	Say(npc_name..":R�n ��y chi�n s� th�t nhi�u ta kh�ng r�nh gi�p ng��i s�a trang b�,ng��i mau �i t�m th�n b� th� r�n t�m h�n gi�p ��, t�i r�n c�a h�n c�ng h�c t� ta nh�t ��nh kh�ng th�nh v�n ��", 0)
end

function CallRescrptFunc()
	if ( GetLevel() < 40 ) then
		Talk( 1, "", npc_name..": �ao ki�m v� t�nh c�p th�p h�n 40 kh�ng th� v�o chi�n tr��ng" );
	else
		Say ( npc_name..": M�i l�a chi�n tr��ng th�ch h�p", 3, "Chi�n tr��ng t�ng kim Phe T�ng/#DoRescriptFunc(1)", "Chi�n tr��ng t�ng kim Phe Kim/#DoRescriptFunc(2)","H�y b�/no" );
	end;
end;

function DoRescriptFunc(nSel)
	local tbsongjin_pos = {1608,3254};	--�η������
	local szstr = "��";
	if (nSel == 2) then
		tbsongjin_pos = {1566,3277};
		szstr = "��";
	end;
	if ( GetLevel() >= 40 and GetLevel() < 60 ) then
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "Chi�n tr��ng t�ng kim c�p th�p" );
	elseif ( GetLevel() >= 60 and GetLevel() < 90 ) then
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "Chi�n tr��ng t�ng kim c�p trung" );
	else
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "Chi�n tr��ng t�ng kim c�p cao" );
	end
end;

function no()
end
