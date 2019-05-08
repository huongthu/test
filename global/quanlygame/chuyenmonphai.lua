-------------------------------------------------Script*By* nguyenkhai-----------------------------------------
IncludeLib("LEAGUE");
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\translife.lua")


function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
end

function ChuyenPhaiMenu()
	local tbDialog = 
{ 
"<dec><npc> Ta chuy�n ph� tr�ch chuy�n m�n ph�i ng��i c� mu�n ta gi�p kh�ng?", 
" B��c 1 : Giao t�n v�t tr��c/nop_tinvat", 
" B��c 2 : Ch�n ph�i c�n chuy�n /chon_phai", 
" K�t th�c ��i tho�i /0", 
} 
CreateTaskSay(tbDialog) 
end

function nop_tinvat()
	if GetCurCamp() == 0 then
		Talk(1, "", "<color=green>"..myplayersex().."<color> v�n ch�a gia nh�p m�n ph�i ?")
	else if GetLastFactionNumber() == 0 then  ------thieu lam
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." mu�n chuy�n ph�i ph�i giao n�p cho ta <color=red>T�n V�t M�n Ph�i<color> ..!", 
				" Giao n�p t�n v�t Thi�u L�m/#daiyitoushi_main(0)", 
				" Ta qu�n mang theo r�i, l�n sau nh� /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 1 then --------thien vuong vuong
			local tbDialog = 
			{	"<dec><npc> "..myplayersex().." mu�n chuy�n ph�i ph�i giao n�p cho ta <color=red>T�n V�t M�n Ph�i<color> ..!", 
				" Giao n�p t�n v�t Thi�n V��ng/#daiyitoushi_main(1)", 
				" Ta qu�n mang theo r�i, l�n sau nh� /0", 
			} 
			CreateTaskSay(tbDialog) 
	else if GetLastFactionNumber() == 2 then ---------duong mon
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." mu�n chuy�n ph�i ph�i giao n�p cho ta <color=red>T�n V�t M�n Ph�i<color> ..!", 
				" Giao n�p t�n v�t ���ng M�n/#daiyitoushi_main(2)", 
				" Ta qu�n mang theo r�i, l�n sau nh� /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 3 then  ----------ngu doc
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." mu�n chuy�n ph�i ph�i giao n�p cho ta <color=red>T�n V�t M�n Ph�i<color> ..!", 
				" Giao n�p t�n v�t Ng� ��c/#daiyitoushi_main(3)", 
				" Ta qu�n mang theo r�i, l�n sau nh� /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetFaction() == "emei" or GetLastFactionNumber == 4 then  -------nga my		
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." mu�n chuy�n ph�i ph�i giao n�p cho ta <color=red>T�n V�t M�n Ph�i<color> ..!", 
				" Giao n�p t�n v�t Nga my/#daiyitoushi_main(4)", 
				" Ta qu�n mang theo r�i, l�n sau nh� /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetFaction() == "cuiyan" or  GetLastFactionNumber() == 5  then -----thuy yen
	DelMagic(1223)
	DelMagic(1224)
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." mu�n chuy�n ph�i ph�i giao n�p cho ta <color=red>T�n V�t M�n Ph�i<color> ..!", 
				" Giao n�p t�n v�t Th�y Y�n/#daiyitoushi_main(5)", 
				" Ta qu�n mang theo r�i, l�n sau nh� /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 6 then -----gaibang
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." mu�n chuy�n ph�i ph�i giao n�p cho ta <color=red>T�n V�t M�n Ph�i<color> ..!", 
				" Giao n�p t�n v�t C�i Bang/#daiyitoushi_main(6)", 
				" Ta qu�n mang theo r�i, l�n sau nh� /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 7 then -----thien nhan
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." mu�n chuy�n ph�i ph�i giao n�p cho ta <color=red>T�n V�t M�n Ph�i<color> ..!", 
				" Giao n�p t�n v�t Thi�n Nh�n/#daiyitoushi_main(7)", 
				" Ta qu�n mang theo r�i, l�n sau nh� /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 8 then -------vo dang
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." mu�n chuy�n ph�i ph�i giao n�p cho ta <color=red>T�n V�t M�n Ph�i<color> ..!", 
				" Giao n�p t�n v�t V� �ang/#daiyitoushi_main(8)", 
				" Ta qu�n mang theo r�i, l�n sau nh� /0", 
			} 
			CreateTaskSay(tbDialog)	
	else if GetLastFactionNumber() == 9 then ------con luon
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." mu�n chuy�n ph�i ph�i giao n�p cho ta <color=red>T�n V�t M�n Ph�i<color> ..!", 
				" Giao n�p t�n v�t C�n L�n/#daiyitoushi_main(9)", 
				" Ta qu�n mang theo r�i, l�n sau nh� /0", 
			} 
			CreateTaskSay(tbDialog)
	else if GetLastFactionNumber() == 10 then ------hoa son
		local tbDialog = 
			{	"<dec><npc> "..myplayersex().." mu�n chuy�n ph�i ph�i giao n�p cho ta <color=red>T�n V�t M�n Ph�i<color> ..!", 
				--" Giao n�p t�n v�t Hoa S�n /dieukiengianhaphs", 
				--" Ta qu�n mang theo r�i, l�n sau nh� /0", 
			} 
			CreateTaskSay(tbDialog)
	
end
end
end
end
end
end
end
end
end
end
end
end
end


function chon_phai()
	local tbDialog = 
{ 
"<dec><npc> B�n mu�n chuy�n sang ph�i n�o?", 
" Thi�u L�m/#daiyitoushi_main(0)",
" Thi�n V��ng/#daiyitoushi_main(1)",
" ���ng M�n/#daiyitoushi_main(2)",
" Ng� ��c/#daiyitoushi_main(3)",
" Nga Mi/#daiyitoushi_main(4)",
" Th�y y�n/#daiyitoushi_main(5)",
" C�i Bang/#daiyitoushi_main(6)",
" Thi�n Nh�n/#daiyitoushi_main(7)",
" V� �ang/#daiyitoushi_main(8)",
" C�n L�n/#daiyitoushi_main(9)",
--" Hoa S�n/chuyen_hsz",
" K�t th�c ��i tho�i /0", 
} 
CreateTaskSay(tbDialog) 
end

function chuyen_hoason_fix()
if GetFaction() == "huashan" then 
Talk(2,""," Ta cho ph�p ng��i xu�ng n�i t�m con ���ng v� h�c m�i..! Khi n�o mu�n l�m <color=yellow>L�nh H� Xung<color> th� quay l�i g�p ta..!")
return end
if GetLastFactionNumber() == 10 then
	SetFaction("huashan") 
	SetTask(11,10*256)	--mac dinh		
	SetCamp(3)
	SetCurCamp(3)
	SetLastFactionNumber(10)
	SetRank(89)
	for i=1,1122 do
		DelMagic(i,0)
	end
	add_hs(150)
	AddMagic(1368,20) --Skill Hoa son --------Doc Co Cuu Kiem
	SetSex(0) ---nu 1
	KickOutSelf()
return end
Talk(2,""," Nh�n ng��i c� v� l�m la l�m l�t..! C� th� x�c ��nh r� ng��i kh�ng ph�i<color=yellow> L�nh H� Xung<color> r�i..!")
end

function chuyen_hs()
local nFlag	= GetTask(TSK_TOUSHI_FLAG);
if (nFlag == 0) then	
	local tbDialog = 
	{ 
		"<dec><npc> Tr��c ti�n ph�i giao n�p t�n v�t m�n ph�i?", 
		" Giao N�p T�n V�t M�n Ph�i/#daiyitoushi_main(10)",
		" K�t th�c ��i tho�i /thonghonafk", 
	} 
	CreateTaskSay(tbDialog)
elseif (nFlag == 1) then
	local tbDialog = 
	{ 
		"<dec><npc> <dec><npc>Thi�n h� ��i lo�n nh�  ng�y h�m nay, c�c ��i m�n ph�i trong v� l�m ai c�ng ch� bi�t lo cho c�i l�i c�a m�nh, t�y theo chi�n s� m� b� quan,  trung nh�n v� l�m th� b� t�n th�t h�n qu� n�a. V� k� v� l�m h��ng h�a, tr�ng t�n ch�n h�ng v� l�m. T�n m�nh v� l�m minh ch�, k� t� h�m nay c�c ��i m�n ph�i x�a b� c�c quy t�c, m� r�ng m�n quy, cho ph�p c�c �� t� gia nh�p c�c m�n ph�i kh�c, �� c�ng nhau �n ch�ng v� h�c, s�ng l�p ra nh�ng tuy�t h�c v� c�ng m�i l�, trung h�ng ng� v� l�m.", 
		" Gia Nh�p Ph�i Hoa S�n/chuyen_hsz",
		" K�t th�c ��i tho�i /thonghonafk", 
	}
	CreateTaskSay(tbDialog)
	elseif (nFlag == 2 and GetLastFactionNumber() == 10) then
	local tbDialog = 
	{ 
		"<dec><npc> <dec><npc>N�u nh� ng��i �� mu�n gia nh�p b�n ph�i, sau n�y ph�i chuy�n t�m m� kh� luy�n, s�m c� ng�y ng� ra ���c tuy�t k� v� h�c", 
		" K�t th�c ��i tho�i /thonghonafk", 
	}
	else
	local tbDialog = 
	{ 
		"<dec><npc>Xem ra, v� <sex> n�y mang g�nh n�ng tr�n vai tr�ng t�n ch�n h�ng v� l�m.", 
		" K�t th�c ��i tho�i /thonghonafk", 
	}
	end	
end

function chuyen_hsz()
	if GetLevel() < 200 then
		Talk(1, "", "C�p 200 tr� l�n m�i c� th� gia nh�p hoa s�n.")
		return
	end
--if GetFaction() == "huashan" then 
	local bFlag			= GetTask(TSK_TOUSHI_FLAG);				-- ���תͶʦ�ŵı��
	local nMyFacNumb	= GetLastFactionNumber();				-- ���ԭ����ID
	local nSex			= GetSex();								-- ��ɫ�Ա�
	local nLastChange   = GetTask(TSK_LAST_CHANGE_FACTION)      -- �ϴ�תͶʦ�ű��
	local nCurTime      = tonumber( GetCurServerTime() );
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Mu�n chuy�n m�n ph�i mi ph�i c��i tr�n tru�ng ch�i ch�i h�t t�t c� trang b� m�i ���c chuy�n m�n ph�i.",0);

		end
if GetLastFactionNumber() == 10 then
Talk(2,"","Ng��i �� l� �� t� hoa s�n r�i c�n mu�n chuy�n hoa s�n n�a �.!")
return end
	local i = HaveMagic(210)		-- �Ṧ�������
	local j = HaveMagic(400)		-- ���ٸ���ƶ���������
	local n = RollbackSkill()		-- ������ܲ��������м���?㣨�����Ṧ�����⼼�ܣ?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- �������ж����ų���δѧ���Ṧ���˷���-1�Ӷ����µ�������������
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- �Ѽ��ܵ㵱�����е�������������?۳��Ṧ�?
	if (rollback_point + GetMagicPoint() < 0) then		-- ���ϴ���˸���������0��Ϊ�Ժ���ϴ�㱣?��?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- ���ѧ�u�Ṧ�?�ӻ�ԭ�еȼ�
	if (j ~= -1) then AddMagic(400, j) end			-- ���ѧ�u���ٸ��Aƶ��ͬ������
	Msg2Player("T�y t�y th�nh c�ng! Ng��i ca "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
	SetTask(11,10*256)	--mac dinh			-- ֱ������
	SetFaction("huashan")       			--��Ҽ�������
	SetCamp(3)
	SetCurCamp(3)
	SetLastFactionNumber(10)
	SetRank(89)
	Msg2Player("Ch�c m�ng b�n gia nh�p th�nh c�ng Hoa S�n Ph�i!")
	Msg2Faction("huashan",GetName().."�� gia nh�p Hoa S�n ph�i, t� h�m nay mong c�c s� huynh chi�u c�.!",GetName())
	--Ms2Global("huashan",GetName().."�� gia nh�p Hoa S�n Ph�i , c�c s� Huynh, s� T� c�ng n�ng ch�n ch�c m�ng n�o!",GetName())	
	for i=1,5000 do
	DelMagic(i)
	end
	add_hs(150)
	AddMagic(1368,20) --Skill Hoa son --------Doc Co Cuu Kiem
	AddMagic(1364,20) --Skill Hoa son --------Doc Co Cuu Kiem
                                                                                  AddMagic(1369, 20)
                                                                                  AddMagic(1365, 20)
	--SetTask(TSK_TOUSHI_FLAG,GetTask(TSK_TOUSHI_FLAG)+1)
local n_solan = ST_GetTransLifeCount();
if n_solan < 1 then
	KickOutSelf()
elseif 	n_solan >= 1 then
	--AddMagicPoint(100)
	KickOutSelf()
end
end

function ChuyenPhaix()
	 Talk(3,"nop_tinvat",
			"<color=pink>Chuy�n Ph�i:<color>\nB��c 1: Mua T�n V�t M�n Ph�i T�i K� Tr�n C�c gi� <color=green>300 xu <color>\nB��c 2: V� g�p Tr��ng M�n <color=yellow> M�n Ph�i <color> c�a b�n...! ",
			"\nB��c 3: Giao n�p T�n V�t M�n Ph�i \nB��c 4: Sau khi giao n�p T�n V�t M�n Ph�i xong tr� v� g�p Tr��ng M�n <bclr=blue> M�n ph�i c�n gia nh�p <bclr>", 
			"Nh�n skill 150x v� 180x t�i <color=green>L�nh B�i T�n Th� <color>\n <color=yellow>L�u �:<color> <color=red>Hoa S�n kh�ng th� chuy�n ph�i..!")
end


------------------------------------------CHUYENHOASON--------------------------
function dieukiengianhaphs()
	local bFlag			= GetTask(TSK_TOUSHI_FLAG);				-- ���תͶʦ�ŵı��
	local nMyFacNumb	= GetLastFactionNumber();				-- ���ԭ����ID
	local nSex			= GetSex();								-- ��ɫ�Ա�
	local nLastChange   = GetTask(TSK_LAST_CHANGE_FACTION)      -- �ϴ�תͶʦ�ű��
	local nCurTime      = tonumber( GetCurServerTime() );
		if (CalcItemCount(2,0,-1,-1,-1) > 0) then
			return Say("Mu�n chuy�n m�n ph�i mi ph�i c��i tr�n tru�ng ch�i ch�i h�t t�t c� trang b� m�i ���c chuy�n m�n ph�i.",0);

		end
if GetLastFactionNumber() == 10 then
batdauhoasonok()
else
		Say("Ch� c� ph�i hoa s�n m�i ch�n ch�c n�ng n�y",0);
end
end




function batdauhoasonok()
	if GetLevel() < 200 then
		Talk(1, "", "C�p 200 tr� l�n m�i c� th� gia nh�p hoa s�n.")
		return
	end
	SetFaction("emei")       			--��Ҽ�������
	SetCamp(1)
	SetCurCamp(1)
	SetLastFactionNumber(4)
	local i = HaveMagic(210)		-- �Ṧ�������
	local j = HaveMagic(400)		-- ���ٸ���ƶ���������
	local n = RollbackSkill()		-- ������ܲ��������м���?㣨�����Ṧ�����⼼�ܣ?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- �������ж����ų���δѧ���Ṧ���˷���-1�Ӷ����µ�������������
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- �Ѽ��ܵ㵱�����е�������������?۳��Ṧ�?
	if (rollback_point + GetMagicPoint() < 0) then		-- ���ϴ���˸���������0��Ϊ�Ժ���ϴ�㱣?��?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- ���ѧ�u�Ṧ�?�ӻ�ԭ�еȼ�
	if (j ~= -1) then AddMagic(400, j) end			-- ���ѧ�u���ٸ��Aƶ��ͬ������
	Msg2Player("T�y t�y th�nh c�ng! Ng��i ca "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
			DelMagic(1347) --Skill Hoa son
		DelMagic(1372) --Skill Hoa son
		DelMagic(1349) --Skill Hoa son
		DelMagic(1374) --Skill Hoa son
		DelMagic(1350) --Skill Hoa son
		DelMagic(1375) --Skill Hoa son
		DelMagic(1351) --Skill Hoa son
		DelMagic(1376) --Skill Hoa son
		DelMagic(1354) --Skill Hoa son
		DelMagic(1378) --Skill Hoa son
		DelMagic(1355) --Skill Hoa son
		DelMagic(1379) --Skill Hoa son
		DelMagic(1358) --Skill Hoa son
		DelMagic(1360) --Skill Hoa son
		DelMagic(1380) --Skill Hoa son
		DelMagic(1364) --Skill Hoa son
		DelMagic(1382) --Skill Hoa son
		DelMagic(1365) --Skill Hoa son
		DelMagic(1370) --Skill Hoa son
		DelMagic(1369) --Skill Hoa son
		DelMagic(1384) --Skill Hoa son
		DelMagic(1368) --Skill Hoa son
		DelMagic(1347) --Skill Hoa son

ConsumeEquiproomItem(1,6,1,1670,1)
		Say("Ch�c m�ng ta �� chuy�n nh� ng��i th�nh Nga Mi nh�ng ch�a c� skill ng��i h�y l�i NPC �� chuy�n Nga Mi sang ph�i nh� b�nh th��ng",0);

end
