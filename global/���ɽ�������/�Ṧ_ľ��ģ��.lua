--������ ������ ľ������ ���ִ���������(�����ظ�������)
-- Update: Dan_Deng(2003-08-09)

function learn()
	-- UTask_world32 = GetTask(32)
	-- if (UTask_world32 >= 140) and (UTask_world32 < 190) then
		-- SetTask(32,GetTask(32)+1)
	-- end
	
	local a  = GetTask(5888) or 0
	
	if a >= 52 and a < 102 then
		a = a + 1
		SetTask(5888, a)
	end
	
	if mod((a-2), 10) == 0 then
		Msg2Player("B�n �� luy�n ���c "..(a-2-50).." c�c g�")
	end
	
	if a == 102 then
		return Msg2Player("<color=yellow>�� luy�n xong m�c nh�n, ��n ch� v� s� �� ph�c m�nh!")
	end
	
end;
