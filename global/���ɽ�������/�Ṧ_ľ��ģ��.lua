--两湖区 巴陵县 木人死亡 新手村练级任务(不可重复的任务)
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
		Msg2Player("B筺  luy謓 頲 "..(a-2-50).." c鋍 g�")
	end
	
	if a == 102 then
		return Msg2Player("<color=yellow>Х luy謓 xong m閏 nh﹏, n ch� v� s�  ph鬰 m謓h!")
	end
	
end;
