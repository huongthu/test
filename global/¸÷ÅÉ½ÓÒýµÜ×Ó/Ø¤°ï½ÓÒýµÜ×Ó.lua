-- �����ɽ������ӽű���ؤ��
-- By: Dan_Deng(2003-10-27)
-- Update: Dan_Deng(2004-05-25) �������ȫ���޸ģ������ⲿ�ļ���ʽ��
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "�� t� 3 t�i C�i Bang "

function default_talk()
end

function defection_get()
	Talk(1,"","N�u �� c� � h�i c�i, h�y ��n g�p Ho�ng Nhan H�ng Li�t �� xin ly gi�o, sau �� ��n di�n ki�n Bang ch� H� Nh�n Ng� �� xin nh�p m�n")
	nt_setTask(8,5*256+10)
	Msg2Player("N�u mu�n gia nh�p C�i bang, h�y ��n g�p Ho�n Nhan H�ng Li�t �� xin ly gi�o, sau �� ��n di�n ki�n Bang ch� H� Nh�n Ng� �� xin nh�p m�n")
	AddNote("N�u mu�n gia nh�p C�i bang, h�y ��n g�p Ho�n Nhan H�ng Li�t �� xin ly gi�o, sau �� ��n di�n ki�n Bang ch� H� Nh�n Ng� �� xin nh�p m�n")
end

function defection_no()
	Talk(1,"","X�a nay Th�nh v��ng b�i kh�u, c�n n�i g� ��n chuy�n ��ng sai?! C�i bang c� lo�i �� t� c� ch�p nh� ng��i, s�m mu�n g� c�ng th�n b�i danh li�t!")
end

function enroll_select()
	UTask_gb = nt_getTask(8)
	UTask_tr = nt_getTask(4)
	if ((UTask_tr > 5*256) and (UTask_tr < 10*256)) then		-- �ѽ���������������
		Talk(1,"","C�i Bang v� Thi�n Nh�n x�a nay v�n kh�ng ��i tr�i chung! N�u ng��i �� quy�t t�m gia nh�p Thi�n Nh�n, ta kh�ng c�n g� �� n�i!")
	elseif (GetSeries() == 3) and (GetCamp() == 0) and (UTask_tr < 5*256) and (UTask_gb < 5*256) then		--��ϵ��δ������ؤ��
		if (GetLevel() >= 10) then						--�ȼ��ﵽʮ��
			Say("C� h�ng th� gia nh�p C�i bang kh�ng? M�i ng��i c� c�m c�ng �n, c� r��u c�ng u�ng!", 3, "Gia Nh�p C�i bang/go", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Talk(1,"","C�n b�n c�a ng��i c�n k�m l�m! H�y �i luy�n t�p th�m, bao gi� ��n c�p 10 l�i ��n t�m ta!")
		end
	end		-- ���ǻ�ϵ�ľͲ��ٶ�˵���ˡ�
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(115,53)		  			--�ȴ��ṩ������
	nt_setTask(8, 10*256)				-- ֱ������
	SetFaction("gaibang")       			--��Ҽ�������
	SetCamp(1)
	SetCurCamp(1)
	-- SetRank(37)
	nt_setTask(137,68)
	SetLastFactionNumber(6)
-- ֱ�Ӵ�������
--	nt_setTask(8,80*256)
--	SetRank(78)
--	Msg2Player("��ӭ�����ؤ�������ֱ��ѧ�᱾�����м��ܡ�")
	-- add_gb(10)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	add_gb(70)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	-- AddMagic(210, 1)
-- ����
	Msg2Player("Hoan ngh�nh b�n gia nh�p C�i bang, tr� th�nh �� t� kh�ng t�i! H�c ���c Ki�n Nh�n Th�n Th�, Di�n M�n Th�c B�t")
	AddNote("Gia nh�p C�i bang, tr� th�nh �� t� kh�ng t�i.")
	Msg2Faction("gaibang",GetName().." T� h�m nay gia nh�p C�i bang! Xin b�i ki�n c�c v� s� huynh s� t�! Mong c�c v� quan t�m ch� gi�o!",GetName())
	-- NewWorld(115, 1501, 3672)			--����Ҵ��͵��������
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(210, 1)
SetRank(78)
end;




function return_yes()
	NewWorld(115, 1501, 3672)			--����Ҵ��͵��������
end;

function gb_check_yes()			-- ������ȷ����������ļ�顣������δ��Ӧ����
	if (GetSeries() ~= 2) then
		Talk(1,"","Ng� h�nh c�a ng��i kh�c h� H�a v�i b�n ta!  ��n ��y l�m g�? H�y l�n di�n ��n h�c h�i �i!")
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

function gb_check_no()
	Say("C� l�i g� mu�n n�i v�i bang ch� kh�ng? Hay mu�n ta ��a v� T�ng ��n?",2,"Xin ��a t�i h� v� T�ng ��n!/return_yes","Xin chuy�n d�m l�i h�i th�m s� ph� /no")
end

function Uworld1000_jiaoyugaibang()
	nt_setTask(1000,260)
	Msg2Player("Ng��i �� l� �� t� c�a b�n bang, kh�ng c�n �i n�a, c� th� tr�c ti�p g�p Long Ng� n�i chuy�n.")
end

function no()
end;
