--������ ������ ľ׮���� ���ִ���������(�����ظ�������)
-- Update: Dan_Deng(2003-08-09)

function learn()
	-- UTask_world32 = GetTask(32)
	-- if (UTask_world32 >= 20) and (UTask_world32 < 70) then
		-- SetTask(32,GetTask(32)+1)
	-- end
	
	local a = GetTask(5888)
	
	if a >= 1 and a <= 50 then
		a = a + 1
		SetTask(5888, a)
	end
	
	if mod((a-1), 10) == 0 then
		Msg2Player("B�n �� luy�n ���c "..(a-1).." c�c g�")
	end
	
	if a == 51 then
		return Msg2Player("<color=yellow>�� luy�n xong c�c g�, ��n ch� v� s� �� ph�c m�nh!")
	end
	
end;
