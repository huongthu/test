--两湖区 巴陵县 沙袋死亡 新手村练级任务(不可重复的任务)
-- Update: Dan_Deng(2003-08-09)

function learn()
	-- UTask_world32 = GetTask(32)
	-- if (UTask_world32 >= 80) and (UTask_world32 < 130) then
		-- SetTask(32,GetTask(32)+1)
	-- end
	
	local a = GetTask(5888) or 0
	
	if a >= 103 and a < 153 then
		a = a + 1
		SetTask(5888, a)
	end
	
	if mod((a-3), 10) == 0 then
		Msg2Player("B筺  luy謓 頲 "..(a-3-100).." bao c竧")
	end
	
	if a == 153 then
		return Msg2Player("<color=yellow>Х luy謓 xong bao c竧, n ch� v� s�  ph鬰 m謓h!")
	end
	
end;
