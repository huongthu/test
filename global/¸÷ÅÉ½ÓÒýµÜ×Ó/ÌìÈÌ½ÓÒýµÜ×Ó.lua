-- ���̽������� ģ�� ������ʿ
-- By: Dan_Deng(2003-10-28) ������Ի��޸Ķ���
-- Update: Dan_Deng(2004-05-25) �������ȫ���޸ģ������ⲿ�ļ���ʽ��
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "Thi�n Nh�n T� S� "

function default_talk()
end

function select()
	UTask_tr = nt_getTask(4)
	UTask_gb = nt_getTask(8)
	if ((UTask_gb > 5*256) and (UTask_gb < 10*256)) then		-- �ѽ���ؤ����������
		Talk(1,"","Nam tri�u u m�! T�i g� c�c ng��i c� ph�i b�n m�nh cho c�i g� h� Tri�u ngu ng�c �� v�y?")
	elseif (GetSeries() == 3) and (GetCamp() == 0) and (UTask_gb < 5*256) and (UTask_tr < 5*256) then		--��ϵ��δ��ؤ������
		if (GetLevel() >= 10) then						--�ȼ��ﵽʮ��
			Say("C� mu�n gia nh�p b�n gi�o kh�ng?", 3, "Gia nh�p Thi�n Nh�n gi�o/yes", "Kh�ng gia nh�p/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m l�m! H�y �i luy�n t�p th�m, bao gi� ��n <color=Red>c�p 10<color> l�i ��n t�m ta!")
		end
	end
end;

function yes()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	Talk(1,"","Gia nh�p b�n gi�o c�n ph�i ch�p h�nh hi�u l�nh! M�nh ���c y�u thua ch�nh l� t�n ch� c�a b�n gi�o! Ng��i h�y t� d�ng th�c l�c �� ch�ng minh m�nh!")
	-- SetRevPos(49,28)	 						--����������
	nt_setTask(4, 10*256)
	SetFaction("tianren")      					--��Ҽ������̽�
	SetCamp(2)
	SetCurCamp(2)
	-- SetRank(55)							--���óƺ�
	nt_setTask(137,64)
	SetLastFactionNumber(7)
	Msg2Player("Gia nh�p Thi�n Nh�n gi�o, tr� th�nh S�t th�. H�c ���c v� c�ng: T�n D��ng Nh� Huy�t; ��n Ch� Li�t Di�m")
	AddNote("Gia nh�p Thi�n Nh�n gi�o, tr� th�nh S�t th� ")
	Msg2Faction("tianren",GetName().." t� h�m nay gia nh�p Thi�n Nh�n gi�o! Xin b�i ki�n c�c v� ��o huynh s� t�! Mong c�c v� quan t�m ch� gi�o!",GetName())
-- ֱ�Ӵ�������
--	nt_setTask(4,80*256)
--	SetRank(81)
--	Msg2Player("��ӭ��������̣̽�������ֱ��ѧ�᱾�����м��ܡ�")
	-- add_tr(10)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	add_tr(70)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	-- AddMagic(210, 1)
-- ����
	-- NewWorld(49, 1644, 3215)					--����Ҵ��͵��������
AddMagic(362,20)
AddMagic(361,20)
AddMagic(715,20)
AddMagic(391)
AddMagic(210, 1)
SetRank(81)
end;



function return_yes()
	NewWorld(49, 1644, 3215)			--����Ҵ��͵��������
end;

function tr_check_yes()
	if (GetSeries() ~= 3) then
		Talk(1,"","Ng��i kh�ng thu�c nh�m Ng� h�nh h� H�a c�a ta, ��n ��y l�m g�? H�y l�n di�n ��n h�c h�i �i!")
	elseif (HaveMagic(148) >= 0) then		-- ������50������,��ɱ��ȭ
		nt_setTask(4,60*256)
		Talk(1,"","Ta �� ph�c h�i l�i tr�ng th�i nhi�m v� c�a ng��i! B�y gi� ng��i c� th� �i nh�n nhi�m v� xu�t s� ")
	elseif (HaveMagic(146) >= 0) then		-- ������40������,������
		nt_setTask(4,50*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 40.")
	elseif (HaveMagic(141) >= 0) then		-- ������30������,�һ�����
		nt_setTask(4,40*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 30.")
	elseif (HaveMagic(138) >= 0) then		-- ������20������,��ɽ�
		nt_setTask(4,30*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 20.")
	elseif (HaveMagic(131) >= 0) then		-- ������10������,����ì��
		nt_setTask(4,20*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 10.")
	else
		nt_setTask(4,10*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� c� th� nh�n nhi�m v� c�p 10.")
	end
end

function tr_check_no()
	Say("Nhi�m v� �� ho�n th�nh ch�a?",2,"Nhi�m v� �� ho�n th�nh! H�y ��a ta v� T�ng ��n!/return_yes","Kh�ng h�i n�a!/return_no")
end

function Uworld1000_jiaoyutianren()
	nt_setTask(1000,260)
	Msg2Player("�� t� ti�p d�n Thi�n Nh�n b�o b�n �� l� �� t� c�a m�n ph�i, c� th� tr�c ti�p �i g�p Long Ng� n�i chuy�n.")
end

function no()
end;
