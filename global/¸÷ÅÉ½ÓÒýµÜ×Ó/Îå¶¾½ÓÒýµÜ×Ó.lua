-- �����ɽ������ӽű����嶾
-- By: Dan_Deng(2003-10-27)
-- Update: Dan_Deng(2004-05-25) �������ȫ���޸ģ������ⲿ�ļ���ʽ��
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "Ng� ��c T�n Nh�n"

function default_talk()
end

function defection_get()
	Talk(1,"","Ha! Ha! Ha! Qu� nhi�n l� tu�n ki�t th�c th�i!Ng��i ch� c�n ��n g�p l�o gi� ���ng C�u xin ly gi�o sau �� ��n g�p gi�o ch� H�c Di�n Lang Qu�n c�a ta �� b�o danh l� c� th� nh�p m�n")
	nt_setTask(10,5*256+10)
	Msg2Player("Mu�n gia nh�p Ng� ��c gi�o, ch� c�n xin ph�p ���ng C�u, sau �� ��n g�p H�c Di�n Lang Qu�n b�o danh!")
	AddNote("Mu�n gia nh�p Ng� ��c gi�o, ch� c�n xin ph�p ���ng C�u, sau �� ��n g�p H�c Di�n Lang Qu�n b�o danh!")
end

function enroll_select()
	UTask_wu = nt_getTask(10)
	UTask_tm = nt_getTask(2)
	if ((UTask_tm > 5*256) and (UTask_tm < 10*256)) then		-- �ѽ���������������
		Talk(1,"","Ng��i kh�ng mu�n gia nh�p th� bi�n kh�i ��y �i! H�m! Hao c� n�a ng�y n��c b�t c�a ta")
	elseif (GetSeries() == 1) and (GetCamp() == 0) and (UTask_tm < 5*256) and (UTask_wu < 5*256) then		--ľϵ��δ�������嶾
		if (GetLevel() >= 10) then						--�ȼ��ﵽʮ��
			Say("Sao h�? C� mu�n gia nh�p b�n gi�o kh�ng?", 3, "Gia nh�p Ng� ��c Gi�o/go", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m l�m! H�y �i luy�n t�p th�m, bao gi� ��n c�p 10 l�i ��n t�m ta!")
		end
	end		-- ����ľϵ�ľͲ��ٶ�˵���ˡ�
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(183,70)		  			--����������
	nt_setTask(10,10*256)				-- ֱ������
	SetFaction("wudu")       			--��Ҽ��������
	SetCamp(2)
	SetCurCamp(2)
	-- SetRank(49)
	nt_setTask(137,70)
	SetLastFactionNumber(3)
-- ֱ�Ӵ�������
--	nt_setTask(10,80*256)
--	SetRank(80)
--	Msg2Player("��ӭ������嶾�̣�������ֱ��ѧ�᱾�����м��ܡ�")
	-- add_wu(10)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	add_wu(70)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	-- AddMagic(210, 1)
-- ����
	Msg2Player("Hoan ngh�nh b�n Gia nh�p Ng� ��c gi�o, tr� th�nh Ng� ��c ��ng T�! H�c ���c ��c Sa Ch��ng, Huy�t �ao ��c S�t.")
	AddNote("Gia nh�p Ng� ��c gi�o, tr� th�nh Ng� ��c ��ng T�.")
	Msg2Faction("wudu",GetName().." t� h�m nay gia nh�p Ng� ��c gi�o, xin b�i ki�n c�c v� huynh t�. Mong c�c v� quan t�m ch� gi�o!",GetName())
	-- NewWorld(183, 1746, 2673)			--����Ҵ��͵��������
AddMagic(353,20)
AddMagic(355,20)
AddMagic(711,20)
AddMagic(390)
AddMagic(210, 1)
SetRank(80)
end;




function return_yes()
	NewWorld(183, 1746, 2673)			--����Ҵ��͵��������
end;

function wu_check_yes()					-- ������ȷ����������ļ�顣������δ��Ӧ����
	if (GetSeries() ~= 2) then
		Talk(1,"","Ng� h�nh c�a ng��i kh�c h� M�c v�i b�n ta!  ��n ��y l�m g�? H�y l�n di�n ��n h�c h�i �i!")
	elseif (HaveMagic(91) >= 0) then		-- ������50������,�������
		nt_setTask(1,60*256)
		Talk(1,"","Ta �� ph�c h�i l�i tr�ng th�i nhi�m v� c�a ng��i! B�y gi� ng��i c� th� �i nh�n nhi�m v� xu�t s� ")
	elseif (HaveMagic(88) >= 0) then		-- ������40������,���𲻾�
		nt_setTask(1,50*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 40.")
	elseif (HaveMagic(85) >= 0) then		-- ������30������,һҶ֪��
		nt_setTask(1,40*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 30.")
	elseif (HaveMagic(82) >= 0) then		-- ������20������,����ͬ��
		nt_setTask(1,30*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 20.")
	elseif (HaveMagic(77) >= 0) then		-- ������10������,��ü����
		nt_setTask(1,20*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 10.")
	else
		nt_setTask(1,10*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� c� th� nh�n nhi�m v� c�p 10.")
	end
end;

function em_check_no()
	Say("Nghe n�i tr�n n�i v�a xu�t hi�n m�t ��i nam thanh n� t�,ng��i v�i v�ng ��n xem h�? H�! H�! H�!",2,"Ha! Ha! C�m phi�n ��a t�i h� �i m�t chuy�n!/return_yes","Ch�a c�n! Ta c�n vi�c ph�i l�m!/no")
end

function Uworld1000_jiaoyuwudu()
	nt_setTask(1000,260)
	Msg2Player("�� t� ti�p d�n Ng� ��c b�o b�n �� l� �� t� c�a m�n pah�, c� th� tr�c ti�p �i g�p Long Ng� n�i chuy�n.")
end

function no()
end;
