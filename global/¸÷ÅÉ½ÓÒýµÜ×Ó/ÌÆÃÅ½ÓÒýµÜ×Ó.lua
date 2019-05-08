-- ���Ž������� ģ�� ��������
-- By: Dan_Deng(2003-10-28) ������Ի��޸Ķ���
-- Update: Dan_Deng(2004-05-25) �������ȫ���޸ģ������ⲿ�ļ���ʽ��
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "���ng M�n Th� v� "

function default_talk()
end

function select()
	UTask_tm = nt_getTask(2)
	UTask_wu = nt_getTask(10)
	if ((UTask_wu > 5*256) and (UTask_wu < 10*256)) then		-- �ѽ����嶾��������
		Talk(1,"","T�i hoa tu�n ki�t nh� ng��i, l�i �i gia nh�p Ng� ��c gi�o.Ch�c! ��ng ti�c! ��ng ti�c!")
	elseif (GetSeries() == 1) and (GetCamp() == 0) and (UTask_wu < 5*256) and (UTask_tm < 5*256) then		--ľϵ��δ���嶾����
		if (GetLevel() >= 10) then						--�ȼ��ﵽʮ��
			Say("B�n m�n �m kh� �� l�ng danh thi�n h�. C�m b�y thu�t c�ng khi�n v� l�m nhi�u phen khi�p v�a. Ng��i c� mu�n t�m hi�u m�t v�i s� tr��ng kh�ng?", 3, "Gia nh�p ���ng M�n/go", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m l�m! H�y �i luy�n t�p th�m, bao gi� ��n <color=Red>c�p 10<color> l�i ��n t�m ta!")
		end
	end
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(25,15)	 				--����������
	nt_setTask(2, 10*256)
	SetFaction("tangmen")      				--��Ҽ�������
	SetCamp(3)
	SetCurCamp(3)
	-- SetRank(25)
	nt_setTask(137,62)
	SetLastFactionNumber(2)
-- ֱ�Ӵ�������
--	nt_setTask(2,80*256)
--	SetRank(76)
--	Msg2Player("��ӭ��������ţ�������ֱ��ѧ�᱾�����м��ܡ�")
	-- add_tm(10)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	add_tm(70)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	-- AddMagic(210, 1)
-- ����
	Msg2Player("Hoan ngh�nh b�n gia nh�p ���ng m�, tr� th�nh T�p d�ch! H�c ���c v� c�ng T�ch L�ch ��n")
	AddNote("Gia nh�p ���ng M�n, tr� th�nh T�p d�ch.")
	Msg2Faction("tangmen",GetName().." t� h�m nay gia nh�p ���ng M�n, xin b�i ki�n c�c v� huynh t�. Mong c�c v� quan t�m ch� gi�o!",GetName())
	-- NewWorld(25, 3982, 5235)				--����Ҵ��͵��������
AddMagic(302,20)
AddMagic(342,20)
AddMagic(339,20)
AddMagic(710,20)
AddMagic(351)
AddMagic(210, 1)
SetRank(76)
end;




function return_yes()
	NewWorld(25, 3982, 5235)			--����Ҵ��͵��������
end;

function tm_check_yes()
	if (GetSeries() ~= 1) then
		Talk(1,"","Ng��i kh�ng thu�c nh�m Ng� h�nh c�a ta, ��n ��y l�m g�? H�y l�n di�n ��n h�c h�i th�m �i")
	elseif (HaveMagic(58) >= 0) then		-- ������50������,���޵���
		nt_setTask(2,60*256)
		Talk(1,"","Ta �� ph�c h�i l�i tr�ng th�i nhi�m v� c�a ng��i! B�y gi� ng��i c� th� �i nh�n nhi�m v� xu�t s� ")
	elseif (HaveMagic(54) >= 0) then		-- ������40������,���컨��
		nt_setTask(2,50*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 40.")
	elseif (HaveMagic(50) >= 0) then		-- ������30������,׷�ļ�
		nt_setTask(2,40*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 30.")
	elseif (HaveMagic(47) >= 0) then		-- ������20������,�����
		nt_setTask(2,30*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 20.")
	elseif (HaveMagic(43) >= 0) then		-- ������10������,���Ű���
		nt_setTask(2,20*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 10.")
	else
		nt_setTask(2,10*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� c� th� nh�n nhi�m v� c�p 10.")
	end
end;

function tm_check_no()
	Say("M�n ch� ph�i ng��i ��n ��y l�m g�??",2,"Xin ��a t�i h� v� T�ng ��n!/return_yes","Ta ph�i �i l�m vi�c kh�c ��y/return_no")
end

function Uworld1000_jiaoyutangmen()
	nt_setTask(1000,260)
	Msg2Player("�� t� ti�p d�n ���ng M�n b�o b�n �� l� �� t� c�a m�n ph�i, c� th� tr�c ti�p �i g�p Long Ng� n�i chuy�n.")
end

function no()
end;
