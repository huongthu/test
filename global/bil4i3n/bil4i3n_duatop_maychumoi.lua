IncludeLib("RELAYLADDER")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

-- Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")

bilCheckDuaTop = {
	bil_nLadderMsg = 10500,
	bil_nPlayerCamp = 5970,
	bil_nPlayerJoin = 5966,
	bil_nCampAffter = 6,
	bil_sImg = "<link=image:\\spr\\skill\\others\\title_dg.spr><link><color><color=orange>�ua TOP m�y ch� m�i: <color>",
	-- bil_sImg = "<link=image:\\spr\\skill\\others\\title_dg.spr><link><color><color=orange>Th� nghi�m m�y ch� m�i: <color>",
}

function bilCheckDuaTop:FuncMain()
	if bilDenyAfterOpenTopRacing ~= 1 then
		return nil
	end
	local bil_1 = tonumber(bilDenyAfterOpenTopRacing_Year
		..bilDenyAfterOpenTopRacing_Month
		..bilDenyAfterOpenTopRacing_Day
		..bilDenyAfterOpenTopRacing_Hours
		..bilDenyAfterOpenTopRacing_Minute)
	local bil_2 = tonumber(date("%Y%m%d%H%M"))
	if bil_2 < bil_1 then
		if GetTask(self.bil_nPlayerJoin) <= 0 then
			SetTask(self.bil_nPlayerCamp, GetCamp())
		end
		
		SetTask(self.bil_nPlayerJoin, tonumber(date("%y%m%d")))
		
		if GetTask(5967) == 0 and bilNativePlace2ManualMap ~= 1 then
			SetTask(5967, 1)
			-- NewWorld(53, 1629, 3176)
		end
		
		SetCamp(self.bil_nCampAffter)
		SetCurCamp(0)
		self:Notify()
		
		-- Ladder_ClearLadder(self.bil_nLadderMsg)
		
		return bilDenyAfterOpenTopRacing
	else
		if GetTask(self.bil_nPlayerJoin) <= 0 then
			SetTask(self.bil_nPlayerJoin, tonumber(date("%y%m%d")))
		end
		
		if GetCamp() == self.bil_nCampAffter then
			SetCamp(GetTask(self.bil_nPlayerCamp))
			SetCurCamp(GetTask(self.bil_nPlayerCamp))
		end
		
		if ((bil_1 + 1) >= bil_2) then
				Msg2SubWorld(bil.C(9, "M�y ch� m�i �� ch�nh th�c Open, qu� nh�n s� vui l�ng s� d�ng C�m nang ��ng h�nh ho�c ��n c�c NPC c� li�n quan �� k�ch ho�t tr�ng th�i cho ph�p PK v� ��nh qu�i!"))
				
				AddLocalNews(bil.C(9, "M�y ch� m�i �� ch�nh th�c Open, qu� nh�n s� vui l�ng s� d�ng C�m nang ��ng h�nh ho�c ��n c�c NPC c� li�n quan �� k�ch ho�t tr�ng th�i cho ph�p PK v� ��nh qu�i!"))
				
				if bilAllowNvTanThu == 1 then
					Msg2SubWorld(bil.C(1, "H� th�ng nhi�m v� t�n th� �ang m�, ho�n th�nh chu�i NV t�n th� s� ���c th�ng c�p c�c nhanh v� ph�n th��ng trang b�."))
				end
				CastSkill(687,20)
				CastSkill(758,20)
				CastSkill(968,20)
				CastSkill(970,20)
				CastSkill(971,20)
				
		end
	end
	return nil
end

function bilCheckDuaTop_Notify_TestG()
	bilCheckDuaTop:FuncMain()
end

function bilCheckDuaTop:Notify()
	Msg2Player(bil.C(10, "Hi�n t�i m�y ch� m�i ch�a Open n�n tr�ng th�i hi�n t�i c�a qu� nh�n s� l� kh�ng th� Pk v� ��nh qu�i, ��n gi� Open qu� nh�n s� c� th� s� d�ng C�m nang ��ng h�nh ho�c NPC �� k�ch ho�t l�i tr�ng th�i b�nh th��ng!"))
	
	CreateNewSayEx(self.bil_sImg.."Hi�n t�i v�n ch�a ��n gi� Open <enter>m�y ch� m�i!<enter>Tr�ng th�i hi�n t�i l�: "..bil.C(2, "Kh�ng th� PK, kh�ng th� ��nh  qu�i.").."<enter>��n "..bil.C(1, bilDenyAfterOpenTopRacing_Hours).." gi� - "..bil.C(1, bilDenyAfterOpenTopRacing_Minute).." ph�t b�n c� th� s� d�ng c�m nang ��ng h�nh ho�c c�c NPC c� li�n quan �� nh�n l�i tr�ng th�i b�nh th��ng!<enter>Th�i gian hi�n t�i l�: "..bil.C(2,date("%H")).." gi� "..bil.C(2, date("%M")).." ph�t "..bil.C(2, date("%S")).." gi�y.", {{"T�i h� bi�t r�i!", bil.OnCancel}})
end

































