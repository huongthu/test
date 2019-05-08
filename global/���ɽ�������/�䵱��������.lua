-- �䵱�������� ģ�� �䵱����
-- By: Dan_Deng(2003-10-28) ������Ի��޸Ķ���
-- Update: Dan_Deng(2004-05-25) �������ȫ���޸ģ������ⲿ�ļ���ʽ��
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "V� �ang ��o Nh�n"

function default_talk()
end

function select()
	UTask_wd = nt_getTask(5)
	UTask_kl = nt_getTask(9)
	if ((UTask_kl > 5*256) and (UTask_kl < 10*256)) then		-- �ѽ���������������
		Talk(1,"","Th� ra ng��i v�n mu�n ��n C�n L�n h�c ph� ph�p ��o thu�t!")
	elseif (GetSeries() == 4) and (GetCamp() == 0) and (UTask_kl < 5*256) and (UTask_wd < 5*256) then		--��ϵ��δ�������䵱
		if (GetLevel() >= 10) then						--�ȼ��ﵽʮ��
			Say("N�u mu�n gia nh�p b�n ph�i ph�i thay ��i t�m t�nh, chuy�n t�m tu h�nh, t��ng lai c� r�t nhi�u c� h�i ch� ��n ng��i!", 3, "Gia nh�p V� �ang/go", "�� ta suy ngh� k� l�i xem/no","T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
		else
			Say("C�n b�n c�a ng��i c�n k�m l�m! H�y �i luy�n t�p th�m, bao gi� ��n <color=Red>c�p 10<color> l�i ��n t�m ta", 0)
		end
	end
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(81,40)	 					--����������
	nt_setTask(5, 10*256)
	SetFaction("wudang")      				--��Ҽ����䵱
	SetCamp(1)
	SetCurCamp(1)
	-- SetRank(7)
	nt_setTask(137,65)
	SetLastFactionNumber(8)
-- ֱ�Ӵ�������
--	nt_setTask(5,80*256)
--	SetRank(73)
--	Msg2Player("��ӭ������䵱�ɣ�������ֱ��ѧ�᱾�����м��ܡ�")
	-- add_wd(10)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	add_wd(70)			-- ����skills_table.lua�еĺ���������Ϊѧ�����ټ����ܡ�
	-- AddMagic(210, 1)
-- ����
	Msg2Player("Hoan ngh�n b�n gia nh�p V� �ang ph�i! H�y b�t ��u t� m�t ��o ��ng! H�c ���c v� c�ng N� L�i Ch�, Th��ng h�i Minh Nguy�t!")
	AddNote("gia nh�p V� �ang ph�i, tr� th�nh ��o ��ng!")
	Msg2Faction("wudang",GetName().." t� h�m nay gia nh�p V� �ang ph�i, tr��c ti�n ��n b�i ki�n c�c v� s� huynh, s� t�!",GetName())
	-- NewWorld(81, 1574, 3224)				--����Ҵ��͵��������
AddMagic(365,20)
AddMagic(368,20)
AddMagic(716,20)
AddMagic(210, 1)
SetRank(73)
end;




function return_yes()
	NewWorld(81, 1574, 3224)			--����Ҵ��͵��������
end;

function wd_check_yes()
	if (GetSeries() ~= 4) then
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� c� th� �i nh�n nhi�m v� xu�t s�.")
	elseif (HaveMagic(164) >= 0) then		-- ������50������,��������
		nt_setTask(5,60*256)
		Talk(1,"","Ta �� ph�c h�i l�i tr�ng th�i nhi�m v� c�a ng��i! B�y gi� ng��i c� th� �i nh�n nhi�m v� xu�t s� ")
	elseif (HaveMagic(161) >= 0) then		-- ������40������,�����ķ�
		nt_setTask(5,50*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 40.")
	elseif (HaveMagic(158) >= 0) then		-- ������30������,���ɾ���
		nt_setTask(5,40*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 30.")
	elseif (HaveMagic(156) >= 0) then		-- ������20������,�����ķ�
		nt_setTask(5,30*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 20.")
	elseif (HaveMagic(151) >= 0) then		-- ������10������,�䵱����
		nt_setTask(5,20*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� ho�n th�nh nhi�m v� c�p 10.")
	else
		nt_setTask(5,10*256)
		Talk(1,"","Ta �� ch�nh l� l�i tr�ng th�i nhi�m v� c�a ng��i. Ng��i �� c� th� nh�n nhi�m v� c�p 10.")
	end
end

function wd_check_no()
	Say("Ta lu�n nh� v� s� ph�! �ng �y kh�ng bi�t c� kh�e kh�ng!?",2,"Nh� s� huynh ��a ta v� n�i!/return_yes","S� ph� l� ng��i ��ng k�nh!/return_no")
end

function check_WDtask()
	if (nt_getTask(5) == 30*256+50) then		-- �����������
		if (GetFaction() == "wudang") then		-- δ��ʦ������������
			nt_setTask(5,10*256)
			Say("D� li�u c�a ng��i c� ch�t sai s�t! Ng��i h�y ch�u kh� th�c hi�n l�i nhi�m v� c�p 10 nh�!",1,"Xin �a t� /no")
		elseif (HaveMagic(164) >= 0) then			-- �ѳ�ʦ(ѧ���ˡ��������������Ҳ���������)����Ϊ������ʦ
			nt_setTask(5,70*256)
			Say("D� li�u c�a ng��i c� ch�t sai s�t! Ta �� gi�p ng��i ch�nh s�a! Hi�n gi� ng��i �� xu�t s�!",1,"Xin �a t� /no")
		else										-- ������Ϊδ���䵱��
			nt_setTask(5,0)
			Say("D� li�u c�a ng��i c� ch�t sai s�t! B�y gi� ng��i �ang trong t�nh tr�ng ch�a gia nh�p m�n ph�i",1,"Xin �a t� /no")
		end
	end
end

function Uworld1000_jiaoyuwudang()
	nt_setTask(1000,260)
	Msg2Player("�� t� ti�p d�n V� �ang b�o b�n �� l� �� t� c�a m�n pah�, c� th� tr�c ti�p �i g�p Long Ng� n�i chuy�n.")
end



function no()
end;
