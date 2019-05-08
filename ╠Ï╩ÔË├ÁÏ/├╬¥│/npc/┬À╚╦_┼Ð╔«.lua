-- �ξ� ����_��ɮ.lua  ϴ�㹦��NPC

Include("\\script\\missions\\clearskill\\clearhole.lua");

function main()
	-- �Ƿ�״̬
	if (CSP_CheckValid() == 0) then
		CSP_WriteLog("Kh�ng th� ��n ��o t�y t�y ");
		Say("GM: <color=red>B�n kh�ng th� v�o t�y t�y ��o, �� ���c h� th�ng l�u l�i, vui l�ng li�n h� GM �� ���c h� tr�! <color> ", 1, "R�i kh�i t�y t�y ��o/LeaveHere_yes")
		return -1;
	end
	
	nLevel = GetLevel();
	if (nLevel < CSP_NEEDLEVEL) then
		Talk(1, "", "C�p b�c c�a ng��i ch�a ��"..CSP_NEEDLEVEL.."Kh�ng th� r�i kh�i t�y t�y ��o. ")
		return -1;
	end

	nType = GetTask(CSP_TID_ClearType);
	if (nType == CSP_CTYPE_SKILL) then -- ֻϴ���ܵ�
		local tbOpt = 
		{
			"T�y �i�m k� n�ng/DoClearSkill",
			"T�y �i�m ti�m n�ng/add_prop",
			"Kh�ng t�y/OnCancel",
			"Li�n quan ��n t�y t�y/Help",
			"R�i� kh�i t�y t�y ��o /LeaveHere",
		}
		Say("Ng��i mu�n t�y <color=blue> �i�m k� n�ng<color>. ��ng � t�y?", getn(tbOpt), tbOpt)
	elseif (nType == CSP_CTYPE_PROP) then -- ֻ��Ǳ�ܵ�
		local tbOpt = 
		{
			"T�y �i�m ti�m n�ng/DoClearProp",
			"T�ng �i�m ti�m n�ng/add_prop",
			"Kh�ng t�y/OnCancel",
			"Li�n quan ��n t�y t�y /Help",
			"R�i ��o t�y t�y /LeaveHere",
		}
		Say("Ng��i mu�n t�y<color=blue> �i�m ti�m n�ng<color>. ��ng � t�y ? ", getn(tbOpt), tbOpt)
	else -- if (nType == CSP_NEEDJEWEL_ALL) then -- ȫϴ(nType������0����3)
		local tbOpt = 
		{
			 "T�y �i�m k� n�ng/DoClearSkill",
			 "T�y �i�m ti�m n�ng/DoClearProp", 
			 "T�ng �i�m ti�m n�ng/add_prop", 
			 "Kh�ng t�y /OnCancel", 
			 "Li�n quan ��n t�y t�y/Help", 
			 "R�i ��o t�y t�y/LeaveHere"
		}
		Say("Ng��i ��ng � t�y t�y? ", getn(tbOpt),tbOpt)
	end;
end

function add_prop()
	Say("Ng��i ph�i hi�u r� c�ch t�ng �i�m", 4,
			"S�c m�nh/add_prop_str",
			"Th�n ph�p/add_prop_dex",
			"Sinh kh�/add_prop_vit",
			"N�i c�ng/add_prop_eng")
end

function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "M�i nh�p ch� s� s�c m�nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "M�i nh�p ch� s� th�n ph�p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "M�i nh�p ch� s� sinh kh�:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "M�i nh�p ch� s� n�i c�ng: ");
end

function enter_str_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddStrg(n_key);
end

function enter_dex_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddDex(n_key);
end

function enter_vit_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddVit(n_key);
end

function enter_eng_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddEng(n_key);
end

function DoClearSkill()
	Say("Ng��i ��ng � t�ng k� n�ng ", 2, "T�ng k� n�ng/DoClearSkillCore","Kh�ng n�ng/OnCancel")
end
function DoClearSkillCore()
--	if (Pay(100000) == 0) then
--		Say("T�y t�y th�nh c�ng ng��i c� th� t�ng l�i �i�m", 0)
--		return
--	end

	i = HaveMagic(210)		-- �Ṧ�������
	j = HaveMagic(400)		-- ���ٸ���ƶ���������
	n = RollbackSkill()		-- ������ܲ��������м��ܵ㣨�����Ṧ�����⼼�ܣ�
	x = 0
	if (i ~= -1) then x = x + i end		-- �������ж����ų���δѧ���Ṧ���˷���-1�Ӷ���֢��������������
	if (j ~= -1) then x = x + j end
	rollback_point = n - x			-- �Ѽ��ܵ㵱�����е������������ȿ۳��Ṧ��
	if (rollback_point + GetMagicPoint() < 0) then		-- ���ϴ���˸���������0��Ϊ�Ժ󶵴�ϴ�㱣����
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210,i) end			-- ���ѧ���Ṧ��ӻ�ԭ�еȼ�
	if (j ~= -1) then AddMagic(400,j) end			-- ���ѧ�����ٸ���ƶ��ͬ������
	Msg2Player("T�y t�y th�nh c�ng ng��i c� th� t�ng l�i �i�m"..rollback_point.."�i�m k� n�ng c� th� ph�n ph�i l�i. ")
	Talk(1,"KickOutSelf","T�y t�y th�nh c�ng ng��i c� th� t�ng l�i �i�m"..rollback_point.."�i�m k� n�ng c� th� ph�n ph�i l�i. ")
end;

function DoClearProp()
	Say("Ng��i ��ng � t�y �i�m ti�m n�ng? ", 2, "T�y �i�m ti�m n�ng/DoClearPropCore", "Kh�ng t�y/OnCancel")
end

function DoClearPropCore()
		base_str = {35,20,25,30,20}			-- �����������������ֵ
		base_dex = {25,35,25,20,15}
		base_vit = {25,20,25,30,25}
		base_eng = {15,25,25,20,40}
		player_series = GetSeries() + 1

		Utask88 = GetTask(88)
		AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88,1))			-- ���ѷ���Ǳ�����ã�task(88)��������ֱ�ӽ��������������ȣ�
		AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88,2))
		AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88,3))
		AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88,4))
end;

function OnCancel()
end;

function Help()
	strHelp = 
	{
		"Sau khi t�y t�y ng��i c� th� ra ngo�i ��nh m�c nh�n,ho�c c� th� l�p nh�m v�o s�n ��ng th�c h�nh chi�n ��u,sau �� r�i ��o m�i c� th� xem l� ��c ��o. ",
		"Ch� c�n ng��i kh�ng r�i ��o, ta c� th� gi�p ng��i t�y t�y",
		"B�n ngo�i c� c�c c�t g� 3000 sinh l�c ;  bao c�t 10000 sinh l�c ; M�c nh�n 30000 sinh l�c �� ng��i t�p luy�n hi�u qu�!",
		"N�u nh� mu�n th�c h�nh c� th� v�o s�n ��ng n�u nh� c� ch�t c�ng kh�ng m�t m�t g�",
		"Trong s�n ��ng r�t h�p nhi�u nh�t ch� ch�a 20 ng��i n�u �� �� ng��i th� kh�ng n�n v�o trong. ",
		"Trong s�n ��ng r�t h�p nhi�u nh�t ch� ch�a 20 ng��i n�u �� �� ng��i th� kh�ng n�n v�o trong ",
		"Cu�i c�ng l�c n�o khi th�y k� n�ng �� th�nh th�o th� c� th� g�p ta ��a v� ch� c�"
	}
	Talk(7, "", strHelp[1], strHelp[2], strHelp[3], strHelp[4], strHelp[5], strHelp[6], strHelp[7]);
end;

function LeaveHere()
	Say("Ng��i cho r�ng �� th�nh th�o mu�n r�i ��o? ",2, "Mu�n r�i kh�i/LeaveHere2", "Vi�c n�y ta s� suy ngh� l�i/OnCanCel")
end

function LeaveHere2()
	Say("Mu�n r�i kh�i ��o th� khi quay v� r�t kh�", 2, "Ta mu�n r�i kh�i n�i qu� qu�i n�y/LeaveHere_yes", "Kh�ng ta s� � l�i/OnCanCel")
end

function LeaveHere_yes()
	W,X,Y = GetWorldPos();
	LeaveTeam()
	CSP_LeaveClearMap(W);
end
