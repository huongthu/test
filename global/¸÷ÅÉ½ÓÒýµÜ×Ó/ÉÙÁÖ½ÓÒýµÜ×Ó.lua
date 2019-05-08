-- �����ɽ������ӽű�������
-- By: Dan_Deng(2003-10-27)
-- Update: Dan_Deng(2004-05-25) �������ȫ���޸ģ������ⲿ�ļ���ʽ��
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "Thi�u L�m La H�n"

function default_talk()
end

function defection_get()
	Talk(1,"","A di �� ph�t! Huynh ch� c�n th�nh c�u qu� bang D��ng bang ch� �� r�i kh�i Thi�n v��ng bang, r�i ��n b�m b�o v�i Huy�n Nh�n ph��ng tr��ng l� c� th� nh�p ��n t� t�!")
	nt_setTask(7,5*256+10)
	Msg2Player("Ch� c�n th�nh c�u D��ng bang ch� �� r�i kh�i Thi�n v��ng bang, r�i ��n b�m b�o v�i Huy�n Nh�n ph��ng tr��ng l� c� th� gia nh�p Thi�u l�m!")
	AddNote("Ch� c�n th�nh c�u D��ng bang ch� �� r�i kh�i Thi�n v��ng bang, r�i ��n b�m b�o v�i Huy�n Nh�n ph��ng tr��ng l� c� th� gia nh�p Thi�u l�m!")
end

function defection_no()
	Talk(1,"","V� ngh� b�n bang c�ng c� s� tr��ng ri�ng kh�ng thua k�m Thi�u L�m! Ta nguy�n trung th�nh v�i D��ng bang ch� ")
end

function enroll_select()
	UTask_sl = nt_getTask(7)
	UTask_tw = nt_getTask(3)
	if ((UTask_tw > 5*256) and (UTask_tw < 10*256)) then		-- �ѽ�����������
		Talk(1,"","Thi�n V��ng bang �ang l� c�i gai trong m�t Kim qu�c! Ng��i ch�n nh� th� ch�a h�n l� t�t!")
	elseif (GetSeries() == 0) and (GetCamp() == 0) and (UTask_tw < 5*256) and (UTask_sl < 5*256) then		--��ϵ��δ����������
		if ((GetLevel() >= 10) and (HaveMagic(29) == -1)) then						--�ȼ��ﵽʮ��������ûѧ����ն��������
			Say("Thi�u L�m kh�ng h� danh l� danh m�n ch�nh ph�i! Huynh �� c� mu�n gia nh�p kh�ng?", 3, "Gia nh�p Thi�u L�m ph�i/go", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m l�m! H�y �i luy�n t�p th�m, bao gi� ��n c�p 10 l�i ��n t�m ta!")
		end
	end		-- ���ǽ�ϵ�ľͲ��ٶ�˵���ˡ�
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(103,51)		  			--����������
	nt_setTask(7,10*256)				-- ֱ������
	SetFaction("shaolin")       			--��Ҽ�������
	SetCamp(1)
	SetCurCamp(1)
	-- SetRank(1)
	nt_setTask(137,67)
	SetLastFactionNumber(0)
-- ֱ�Ӵ�������
--	nt_setTask(7,80*256)
--	SetRank(72)
--	Msg2Player("��ӭ����������ɣ�������ֱ��ѧ�᱾�����м��ܡ�")
	-- add_sl(10)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	add_sl(70)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	-- AddMagic(210, 1)
-- ����
	Msg2Player("Hoan ngh�nh b�n gia nh�p Thi�u L�m, tr� th�nh T�o ��a t�ng! H�c ���c H�ng Long B�t V�, Kim Cang Ph�c Ma ")
	AddNote("Gia Nh�p Thi�u L�m ph�i, tr� th�nh T�o ��a t�ng.")
	Msg2Faction("shaolin",GetName().." t� h�m nay gia nh�p Thi�u l�m, xin b�i ki�n c�c v� huynh ��! Mong c�c v� quan t�m ch� gi�o!",GetName())
	-- NewWorld(103, 1845, 2983)			--����Ҵ��͵��������
AddMagic(318,20)
AddMagic(319,20)
AddMagic(321,20)
AddMagic(709,20)
AddMagic(210, 1)
SetRank(72)
end;




function return_yes()
	NewWorld(103, 1845, 2983)			--����Ҵ��͵��������
end;

function sl_check_yes()			-- ������ȷ����������ļ�顣������δ��Ӧ����
	if (GetSeries() ~= 2) then
		Talk(1,"","Ng� h�nh c�a ng��i kh�c h� Kim v�i b�n ta!  ��n ��y l�m g�? H�y l�n di�n ��n h�c h�i �i!")
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
	Say("S� ��! S� ph� l�i ph�i �� xu�ng n�i �?",2,"V�ng! Nh� s� huynh ��a �� v� n�i!/return_yes","Xin thay ta v�n an s� ph� /no")
end

function Uworld1000_jiaoyushaolin()
	nt_setTask(1000,260)
	Msg2Player("�� t� ti�p d�n Thi�u L�m b�o b�n �� l� �� t� c�a m�n ph�i, c� th� tr�c ti�p �i g�p Long Ng� n�i chuy�n.")
end

function no()
end;
