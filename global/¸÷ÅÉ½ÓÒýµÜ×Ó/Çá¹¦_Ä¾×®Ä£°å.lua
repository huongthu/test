--两湖区 巴陵县 木桩死亡 新手村练级任务(不可重复的任务)
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
		Msg2Player("B筺  luy謓 頲 "..(a-1).." c鋍 g�")
	end
	
	if a == 51 then
		return Msg2Player("<color=yellow>Х luy謓 xong c鋍 g�, n ch� v� s�  ph鬰 m謓h!")
	end
	
end;
