-- ������������ ģ�� ��������
-- By: Dan_Deng(2003-10-28) ������Ի��޸Ķ���
-- Update: Dan_Deng(2004-05-25) �������ȫ���޸ģ������ⲿ�ļ���ʽ��
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "Thi�n V��ng T��ng L�nh"

function default_talk()
end

function select()
	UTask_tw = nt_getTask(3)
	UTask_sl = nt_getTask(7)			-- ��ʱ�������ط��������ط�������
	if ((UTask_sl > 5*256) and (UTask_sl < 10*256)) then		-- �ѽ���������������
		Talk(1,"","Tuy huynh �� gia nh�p ph�i Thi�u l�m nh�ng r�nh r�i v�n c� th� ��n Thi�n v��ng bang l�m kh�ch!")
	elseif (GetCamp() == 0) and (GetSeries() == 0) and (UTask_sl < 5*256) and (UTask_tw < 5*256) then		--��ϵ��δ����������
		if (GetLevel() >= 10) then					--�ȼ��ﵽʮ��
			Say("Gia nh�p b�n bang, ch�ng ta s� l� huynh �� m�t nh�, h�a ph�c c�ng h��ng!", 3, "Gia nh�p Thi�n V��ng Bang/go", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
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
	-- SetRevPos(59,21)	  				--����������
	nt_setTask(3, 10*256)
	SetFaction("tianwang")       			--��Ҽ���������
	SetCamp(3)
	SetCurCamp(3)
	-- SetRank(43)
	nt_setTask(137,63)
	SetLastFactionNumber(1)
-- ֱ�Ӵ�������
--	nt_setTask(3,80*256)
--	SetRank(69)
--	Msg2Player("��ӭ����������������ֱ��ѧ�᱾�����м��ܡ�")
	-- add_tw(10)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	add_tw(70)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	-- AddMagic(210, 1)
-- ����
	Msg2Player("Hoan ngh�nh b�n gia nh�p Thi�n V��ng bang! H�y kh�i ��u t� m�t ng��i Th� v�!")
	Msg2Player("H�c ���c v� c�ng Kinh L�i Tr�m, H�i Phong L�c Nh�n, Tr�m Long Quy�t")
	AddNote("Gia nh�p Thi�n V��ng Bang, tr� th�nh Th� V�.")
	bilgoMsg2Fac()
	-- NewWorld(59,1552,3188)			--����Ҵ��͵��������
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(210, 1)
SetRank(69)
end;

function bilgoMsg2Fac()
	Msg2Faction(GetFaction(),GetName().." t� h�m nay gia nh�p Thi�n V��ng bang, xin b�i ki�n c�c v� huynh ��! Mong c�c v� quan t�m ch� gi�o!",GetName())
end




function return_yes()
	NewWorld(59, 1425, 3472)			--����Ҵ��͵��������
end;

function tw_check_yes()
	if (GetSeries() ~= 0) then
		Talk(1,"","Ng� h�nh c�a ng��i kh�c h� Kim v�i b�n ta! ��n ��y l�m g�? H�y l�n di�n ��n h�c h�i �i!")
	elseif (HaveMagic(41) >= 0) then		-- ������50������,Ѫս�˷�
		nt_setTask(3,60*256)
		Talk(1,"","Ta �� ph�c h�i l�i tr�ng th�i nhi�m v� c�a ng��i! B�y gi� ng��i c� th� �i nh�n nhi�m v� xu�t s� ")
	elseif (HaveMagic(37) >= 0) then		-- ������40������,�÷�ն
		nt_setTask(3,50*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 40.")
	elseif (HaveMagic(36) >= 0) then		-- ������30������,����ս��
		nt_setTask(3,40*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 30.")
	elseif (HaveMagic(33) >= 0) then		-- ������20������,���ľ�
		nt_setTask(3,30*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 20.")
	elseif (HaveMagic(23) >= 0) then		-- ������10������,����ǹ��
		nt_setTask(3,20*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 10.")
	else
		nt_setTask(3,10*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� c� th� nh�n nhi�m v� c�p 10.")
	end
end

function tw_check_no()
	Say("Huynh ��! C� mu�n ta ��a v� ��o kh�ng?",2,"���c! �a t� huynh ��i!/return_yes","Kh�ng c�n ��u! �a t�!  /return_no")
end


function Uworld1000_jiaoyutianwang()
	nt_setTask(1000,260)
	Msg2Player("�� t� ti�p d�n Thi�n V��ng b�o b�n �� l� �� t� c�a bang ph�i, c� th� tr�c ti�p �i g�p Long Ng� n�i chuy�n.")
end


function no()
end;


