-- ���ҽ������� ģ�� ���ҽ�����
-- By: Dan_Deng(2003-10-28) ������Ի��޸Ķ���
-- Update: Dan_Deng(2004-05-25) �������ȫ���޸ģ������ⲿ�ļ���ʽ��
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "Nga My C�m Y Ni"

function default_talk()
end

function select()
	UTask_em = nt_getTask(1)
	UTask_cy = nt_getTask(6)
	if ((UTask_cy > 5*256) and (UTask_cy < 10*256)) then		-- �ѽ��˴�����������
		Talk(1,"","C� ng��i n�y v�n l� mu�n gia nh�p Th�y Y�n m�n! M�i ng��i c� ch� h��ng ri�ng c�a m�nh! Ta c�ng kh�ng mi�n c��ng! ")
	elseif (GetSeries() == 2) and (GetCamp() == 0) and (UTask_cy < 5*256) and (UTask_em < 5*256) then		--ˮϵ��δ����̶���
		if (GetLevel() >= 10) then						--�ȼ��ﵽʮ��
			Say("Gia nh�p Nga My ph�i, ch�ng ta s� l� t� mu�i 1 nh�!  H�a ph�c c�ng h��ng! ", 3, "Gia nh�p Nga Mi ph�i/go", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Say("Tr��c ti�n mu�i h�y luy�n t�p l�i c�n b�n, ��t ��n <color=Red>c�p 10<color> ch�ng ta s� l� t� mu�i 1 nh�! ", 0)		
		end
	end		-- ����ˮϵ�ľͲ��ٶ�˵���ˡ�
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(13,13)		  			--����������
	nt_setTask(1, 10*256)				-- ֱ������
	SetFaction("emei")       			--��Ҽ��������
	SetCamp(1)
	SetCurCamp(1)
	-- SetRank(13)
	nt_setTask(137,61)
	SetLastFactionNumber(4)
-- ֱ�Ӵ�������
--	nt_setTask(1,80*256)
--	SetRank(63)
--	Msg2Player("��ӭ���������ɣ�������ֱ��ѧ�᱾�����м��ܡ�")
	-- add_em(10)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	add_em(70)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	-- AddMagic(210, 1)
-- ����
	Msg2Player("Hoan ngh�nh b�n gia nh�p Nga Mi ph�i, tr� th�nh B� Y Ni. H�c ���c Nh�t Di�p Tri Thu, Phi�u Tuy�t Xuy�n V�n")
	AddNote("gia nh�p Nga Mi Ph�i, tr� th�nh B� Y Ni")
	Msg2Faction("emei",GetName().." t� h�m nay gia nh�p Nga Mi ph�i. Xin b�i ki�n c�c v� s� t�. Mong c�c v� quan t�m ch� gi�o!",GetName())
	-- NewWorld(13, 1898, 4978)			--����Ҵ��͵��������
AddMagic(328,20)
AddMagic(380,20)
AddMagic(712,20)
AddMagic(332)
AddMagic(210, 1)
SetRank(63)
end;


function return_yes()
	NewWorld(13, 1898, 4978)			--����Ҵ��͵��������
end;

function em_check_yes()
	if (GetSeries() ~= 2) then
		Talk(1,"","Ng� h�nh c�a ng��i kh�c v�i b�n ta!  ��n ��y l�m g�? H�y l�n di�n ��n h�c h�i th�m!")
	elseif (HaveMagic(91) >= 0) then		-- ������50������,�������
		nt_setTask(1,60*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� c� th� �i nh�n nhi�m v� xu�t s�.")
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
	Say("Ti�u s� mu�i l�i xu�ng n�i ch�i �? C� c�n ta ��a v� n�i kh�ng?",2,"L�i l�m phi�n t� t� n�a r�i!/return_yes","Kh�ng c�n ��u! �a t� S� t� /return_no")
end

function Uworld1000_jiaoyuemei()
	nt_setTask(1000,260)
	Msg2Player("�� t� ti�p d�n Nga Mi b�o b�n �� l� �� t� c�a m�n ph�i, c� th� tr�c ti�p g�p Long Ng� n�i chuy�n.")
end

function no()
end;
