--  GetGlbValue(9)  记录时间hour
--  GetGlbValue(8)  记录领取次数
--  GetTask(615)    记录一小时内是否有领过奖
--  圣诞树送礼活动，每小时每台服务器送13个礼物，每人每小时只能领取一个
--  此活动从12月22日持续到1月11日


function main()

	iRand = random(1,300)
	if ( iRand < 100 ) then
		Say("Ta c莡 nguy謓 b猲 C﹜ Th玭g, t nhi猲 ph竧 hi謓 tr猲 c﹜ c� 1 v藅 ph竧 s竛g.",2,"Hay qu�! Th藅 l� h蕄 d蒼!/present","Ta s� chuy猲 t﹎ h琻!/no")
	else
		Say("Ngi ch琲: C﹜ Th玭g p qu�! C莡 nguy謓 � ch� n祔 s� th祅h hi謓 th藅!",0)
	end

end

function present()

	local nLastTime = GetGlbValue(9)
	local nQuantity = GetGlbValue(8)
	local Utask615 = GetTask(615)
	local nHour = tonumber( date( "%m%d%H" ) )
	local nMinute = tonumber( date( "%M") )
	
	if ( nLastTime == 0 and mod( nHour , 100 ) ~= 0 and nMinute < 30 ) then
		SetGlbValue(9,nHour - 1)
		SetGlbValue(8,0)
		AddLocalNews("***g gi� Noel  nhi襲 qu� tr猲 C﹜ Th玭g, m鋓 ngi mau n l蕐 甶!***")
	elseif ( nLastTime ~= nHour and nMinute >= 30 ) then
		SetGlbValue(9,nHour)
		SetGlbValue(8,0)
--		Msg2Player("New hour : ["..nHour.."o'clock] Reset")
		AddLocalNews("***g gi� Noel  nhi襲 qu� tr猲 C﹜ Th玭g, m鋓 ngi mau n l蕐 甶!***")
	end
	nLastTime = GetGlbValue(9)
	nQuantity = GetGlbValue(8)
	if ( Utask615 ~= nLastTime and nQuantity <= 14 ) then
		onTake()
		SetGlbValue(8,nQuantity + 1)
		SetTask(615,nLastTime)
--		Msg2Player("AddItem 1,total = "..nQuantity + 1)
	elseif ( Utask615 == nLastTime ) then
		Say("ng c� tham th�! H穣 nhng c� h閕 cho ngi kh竎 v韎!",0)
	else
		Say("у t鑤 ch韕 m総  b� l蕐 h誸, 1 gi� sau h穣 quay l筰 th� v薾 may 甶!",0)
--		SetTask(615,nHour)
	end		

end

function onTake()

	i = random(1,100000)
	if ( i < 40000 ) then
		AddItem(6,0,20,1,0,0,0)
		Msg2Player("�! L� m閠 a hoa h錸g! Ta mu鑞 t苙g n� cho ngi y猽.")
	elseif ( i < 85000 ) then
		AddItem(6,0,11,1,0,0,0)
		Msg2Player("�! L� 1 c﹜ Ph竜 hoa, ta s� b緉 cho m鋓 ngi xem.")
	elseif ( i < 90000 ) then
		AddItem(6,1,72,1,0,0,0)
		Msg2Player("�! L� 1 b譶h Thi猲 S琻 B秓 L�! Hy v鋘g n� s� 甧m l筰 may m緉 cho ta.")
	elseif ( i < 95000 ) then
		AddItem(6,1,73,1,0,0,0)
		Msg2Player("Ha! 1 b譶h B竎h Qu� L�, ta 產ng c莕 n� y!")
	else
		AddItem(6,1,125,1,0,0,0)
		Msg2Player("Ha? 1 b譶h Qu� Hoa t鰑, ta mu鑞 t譵 m閠 ngi b筺 c飊g nhau i 萴!")
	end

end

function no()
end
