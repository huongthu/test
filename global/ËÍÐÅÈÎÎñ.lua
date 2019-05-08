
Include("\\script\\global\\bil4i3n\\bill4i3n.lua");
Include("\\script\\task\\partner\\master\\partner_master_main.lua");
Include("\\script\\task\\tollgate\\killbosshead.lua")
-- Include("\\script\\task\\tollgate\\messenger\\posthouse.lua")
Include("\\script\\task\\tollgate\\messenger\\bil_newfengzhiqi.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

Define_City = {"<#>L�m An","<#>Ph��ng T��ng","<#>Th�nh ��","<#>��i L�","<#>Bi�n Kinh","<#>T��ng D��ng","<#>D��ng Ch�u"}

function default_talk(letter_laststation)
	if bilNPCDichQuan ~= 1 then
		return Msg2Player("<color=yellow>Hi�n t�i ta �ang r�t m�t m�i, ng�y mai h�y ��n ��y g�p ta v�y!")
	end
	local W, _ ,_ = GetWorldPos()
	local BIl_letter_laststation = Bil_Getletter_station(W);
	local BIl_Uworld12 = GetTask(12)
	if BIl_Uworld12 < 256 and BIl_Uworld12 > 0  then
		return check_letter(BIl_letter_laststation)
	end
	local nParTaskState = GetMasterTaskState(PARID_TASK_MASTER_002);
	if nParTaskState==nil then nParTaskState = 0; end;
	local aryTalk = {"<dec><npc>Chuy�n tr�n giang h� ta b�t k�, tr��c m�t th�i cu�c lung tung lo�n l�c, tri�u ��nh m�nh c�ng c� th�t nhi�u phi�n to�i mu�n gi�i quy�t. "};
	-- tinsert(aryTalk, "Ta mu�n v� tri�u ��nh m� ra ch�t s�c gi�p ��/especiallymessenger");
	tinsert(aryTalk, "Ta mu�n v� tri�u ��nh m� ra ch�t s�c gi�p ��/Bil_NewEspeciallyMessenger");
	tinsert(aryTalk, "Ta ��n ��y �� nh�n nhi�m v� ��a th� /#lastdefault_talk("..BIl_letter_laststation..")");
	tinsert(aryTalk, "Ta ch�ng qua gh� th�m ch�t th�i./no");
	CreateTaskSay(aryTalk);
end

function lastdefault_talk(letter_station)
	Uworld12 = GetTask(12)
	if (Uworld12 == 0) then			
		W12_get(letter_station)
	elseif (Uworld12 < 256) then	
		check_letter(letter_station)
	elseif (GetGameTime() >= Uworld12) then	
		W12_get(letter_station)
	else										
		Talk(1,"","<color=Orange>D�ch Quan:<color> B�y gi� t�m th�i kh�ng c� phong th� �� ng��i gi�p m�t tay, l�m phi�n ng��i t� n�a quay l�i nh�.")
	end
end

function W12_get(start_city)
	dest_city = random(1,7)			
	if (dest_city == start_city) then		
		Talk(1,"","<color=Orange>D�ch Quan:<color> B�y gi� t�m th�i kh�ng c� phong th� �� ng��i gi�p m�t tay, l�m phi�n ng��i t� n�a quay l�i nh�.")
	else
		SetTaskTemp(3,start_city*10+dest_city)	
		Say("<color=Orange>D�ch Quan:<color> H�m nay chi�n s� b�n r�n, c�ng v�n nhi�u kh�ng ��m h�t, ng��i trong d�ch tr�m ��a tin kh�ng k�p, ng��i c� � mu�n gi�p ta m�t tay ��a tin sao? m�i l�n ��a tin c�ng c� th� lao ��ch ��ng ��y.",2,"Ta ��n l� �� gi�p ��a tin, ��ng nhi�u l�i/W12_get_yes","th�i, ta c�n nhi�u vi�c ph�i lo/no")
	end
end

function check_letter(get_city) 
	x = GetTask(12) 
	dest_city = mod(x,10) 
	start_city = (x - dest_city) / 10 
	if (dest_city == get_city) then 
		if (HaveItem(231+x) == 1) then			
			Talk(1,"","<color=Orange>D�ch Quan:<color> �� nh�n ���c m�t b�c m�t h�m t� <color=yellow>"..Define_City[start_city].."<color>, �� ki�m tra kh�ng nh�m. ��y 500 l��ng l� ch�t qu� m�n t� l� cho ng��i. <pic=0>") 
			DelItem(231+x)
			SetTask(12,GetGameTime()+7200)			
			i = random(5,20) 
			AddRepute(i) 
			Msg2Player("Ho�n th�nh nhi�m v� ��a th� T�n s�, Danh v�ng t�ng th�m "..i.." �i�m.") 
			AddNote("Ho�n th�nh nhi�m v� ��a th� T�n s�, Danh v�ng t�ng th�m "..i.." �i�m.") 
			Earn(500) 
		else 
			Say("<color=Orange>D�ch Quan:<color> B�c c�ng v�n m�t h�m quan tr�ng nh� v�y m� nh� ng��i �em �i v�t b�? l�n n�y coi nh�ng phi�n to�i. ho�c l� , ��ng 2000 l��ng b�c ta gi�p ng��i �em chuy�n n�y gi�u �i. ",2,"�ng gi�p ta m�t l�n n�y nh�, 2000 l��ng c�a �ng ��y/W12_cancel","��i ta t�m l�i xem./no") 
		end 
	elseif (start_city == get_city) then 
		if (HaveItem(231+x) == 0) then			
			Say("<color=Orange>D�ch Quan:<color> B�c c�ng v�n m�t h�m quan tr�ng nh� v�y m� nh� ng��i �em �i v�t b�? l�n n�y coi nh�ng phi�n to�i. ho�c l� , ��ng 2000 l��ng b�c ta gi�p ng��i �em chuy�n n�y gi�u �i. ",2,"�ng gi�p ta m�t l�n n�y nh�, 2000 l��ng c�a �ng ��y/W12_cancel","��i ta t�m l�i xem./no") 
		else 
			Talk(1,"","<color=Orange>D�ch Quan:<color> ��y l� c�ng v�n kh�n c�p , l�m phi�n ng��i ��a �i nhanh m�t ch�t.") 
		end 
	else
		Talk(1,"","<color=Orange>D�ch Quan:<color> h�nh nh� phong th� n�y kh�ng ph�i ��a ��n ��y, ng��i h�n ��a ��n <color=yellow>"..Define_City[dest_city].."<color>.") 
	end 
end 

function W12_cancel() 
	if (GetCash() >= 2000) then 
		Pay(2000) 
		SetTask(12,0) 
		Msg2Player("H�y b� nhi�m v� ��a tin.") 
		AddNote("H�y b� nhi�m v� ��a tin.") 
		Talk(1,"","<color=Orange>D�ch Quan:<color> l�n n�y c� t�nh nh� th� , sau n�y ng��i c�ng n�n c�n th�n l�i.") 
	else 
		Talk(1,"","<color=Orange>D�ch Quan:<color> ngay c� 2000 l��ng m� c�ng kh�ng c�? ng��i c� c�n ph�i ngh�o nh� v�y kh�ng? ��ng c� ��n t�m ta n�a. <pic=15>") 
	end 
end 

function W12_get_yes() 
	x = GetTaskTemp(3) 
	dest_city = mod(x,10) 
	start_city = (x - dest_city) / 10 
	Talk(1,"","<color=Orange>D�ch Quan:<color> Xin gi�p ta m�t tay �em phong th�  m�t h�m n�y ��a ��n D�ch Quan <color=yellow>"..Define_City[dest_city].."<color> m�i chuy�n �y th�c cho ng��i. <pic=107>") 
	Msg2Player("D�ch Quan <color=yellow>"..Define_City[start_city].."<color> nh� ng��i gi�p h�n �em m�t phong h�m ��a ��n <color=green>"..Define_City[dest_city].."<color>. ") 
	AddNote("D�ch Quan <color=yellow>"..Define_City[start_city].."<color> nh� ng��i gi�p h�n �em m�t phong h�m ��a ��n <color=green>"..Define_City[dest_city].."<color>. ") 
	SetTask(12,x) 
	AddEventItem(231+x)
end 

function no() 
end 
