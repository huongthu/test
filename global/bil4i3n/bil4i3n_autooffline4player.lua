Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_client_ip.lua")

-- \script\global\bil4i3n\bil4i3n_autooffline4player.lua
	-- kh�ng ���c reload, n�u reload s� m�t to�n b� m�ng ng��i ch�i �ang �y th�c

-- _bilCOUNTPLAYER4AUTOOFFLINELIVE = 400
_bilCOUNTPLAYER4AUTOOFFLINELIVE = 500
	-- T�ng s� l��ng ng��i ch�i cho ph�p t� ��ng �y th�c

_bil_nPlayerAutoOfflineLive = {}
_bil_COUNTARRAYOFFLINELIVE = {0}

function bilAutoOfflineLiveMain()
	-- if getn(_bil_nPlayerAutoOfflineLive) >= _bilCOUNTPLAYER4AUTOOFFLINELIVE then
	if _bil_COUNTARRAYOFFLINELIVE[1] >= _bilCOUNTPLAYER4AUTOOFFLINELIVE then
		print(format("Vuot qua gioi han uy thac %d - Hien tai: %d", _bilCOUNTPLAYER4AUTOOFFLINELIVE, getn(_bil_nPlayerAutoOfflineLive)))
		Msg2Player("Hi�n t�i s� ng��i �y th�c qu� nhi�u, �� v��t qu� gi�i h�n cho ph�p, ��i hi�p vui l�ng chuy�n ��n khu v�c kh�c!")
		return 1
	else
		if bilAutoOfflineLiveCheckMap4Offline() then
			return 2
		else
			if bilAutoOfflineLiveCheckCondition() then
				return 4
			end
		end
	end
	bilAutoOfflineLiveAllowBeginOfflineLive()
	return nil
end

function bilAdminGetCountPlayerAutoOffline()
	return _bil_COUNTARRAYOFFLINELIVE[1]
end

function bilAutoOfflineLiveAllowBeginOfflineLive(_1)
	if _1 == 1111 then
		SetTask(5886, GetGameTime())
	end
	
	if bilDenyAfterOpenTopRacing == 1 then
		if GetCamp() == 6 then
			SetCamp(GetTask(5970))
			SetCurCamp(GetTask(5970))
		end
	end

	if not(_bil_nPlayerAutoOfflineLive[PlayerIndex]) then
		_bil_nPlayerAutoOfflineLive[PlayerIndex] = PlayerIndex
		_bil_COUNTARRAYOFFLINELIVE[1] = _bil_COUNTARRAYOFFLINELIVE[1] + 1
	end
	SetTask(5998, 1)
	bilClientIP:DelPlayer()
	SaveNow()
	OfflineLive(PlayerIndex);
end

function bilAutoOfflineLiveCheckCondition()
	if GetFightState() ~= 0 then
		return 5
	else
		if GetOnlineCommissionStatus() ~= 0 then
			return 6
		end
	end
end

function bilAutoOfflineLiveCheckMap4Offline()
	_bilAutoOfflineLiveTbMapAllow = {
		[53] = {_bilAutoOfflineLiveTbMapAllowMapName = "Ba l�ng huy�n"},
		[1] = {_bilAutoOfflineLiveTbMapAllowMapName = "Ph��ng t��ng"},
		[11] = {_bilAutoOfflineLiveTbMapAllowMapName = "Th�nh ��"},
		[37] = {_bilAutoOfflineLiveTbMapAllowMapName = "Bi�n kinh"},
		[80] = {_bilAutoOfflineLiveTbMapAllowMapName = "D��ng ch�u"},
		[78] = {_bilAutoOfflineLiveTbMapAllowMapName = "T��ng d��ng"},
		[162] = {_bilAutoOfflineLiveTbMapAllowMapName = "��i l�"},
		[176] = {_bilAutoOfflineLiveTbMapAllowMapName = "L�m an"},
	}
	bilAutoOfflineLiveGetMapPlayer,_,_ = GetWorldPos();
	if not(_bilAutoOfflineLiveTbMapAllow[bilAutoOfflineLiveGetMapPlayer]) then
		Talk(1,"","Khu v�c n�y hi�n kh�ng cho ph�p �y th�c, phi�n ��i hi�p h�y tr� v� c�c th�nh th� ho�c Ba l�ng huy�n �� ti�n h�nh �y th�c mi�n ph�!")
		return 3
	end
end

function bilAutoOfflineLiveDelPlayerIndex(PlayerIndexGamer)
	if _bil_nPlayerAutoOfflineLive[PlayerIndexGamer] then
		_bil_nPlayerAutoOfflineLive[PlayerIndexGamer] = nil
		_bil_COUNTARRAYOFFLINELIVE[1] = _bil_COUNTARRAYOFFLINELIVE[1] - 1
	end
	SetTask(5998, 0)
	
	if GetTask(5886) > 0 then
		bilAutoOfflineLive_Award()
	end
end

function bilAutoOfflineLive_Award()
	local _ex_percent = 300
	local a, b = GetTask(5886), GetGameTime()
	local c = b - a
	
	SetTask(5886, 0)
	
	Talk(1, "", "B�n �� ti�n h�nh �y th�c ���c :"..c.." gi�y")
end




