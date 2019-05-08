-- Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
IncludeLib("ITEM")
IncludeLib("FILESYS")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\remoteexc.lua")

_BIL4I3N_INC_G_iNumber = {}
_BIL4I3N_INC_G_iItem = {}

if not (_BIL4I3N_INC) then
	_BIL4I3N_INC = 1
	
bil = {
	iNumber = function(_1, _2, _3, _4)
		if not(_BIL4I3N_INC_G_iNumber[PlayerIndex]) then
			_BIL4I3N_INC_G_iNumber[PlayerIndex] = {}
		end
		_BIL4I3N_INC_G_iNumber[PlayerIndex] = _4
		return AskClientForNumber("CallFunc_bil_iNumber", _1, _2, _3)
	end,
	
	iItem = function(Title, Desc, Array)
		if not(_BIL4I3N_INC_G_iItem[PlayerIndex]) then
			_BIL4I3N_INC_G_iItem[PlayerIndex] = {}
		end
		_BIL4I3N_INC_G_iItem[PlayerIndex] = Array
		return GiveItemUI(Title, Desc, "CallFunc_bil_iItem", "bil.OnCancel", 1)
	end,

	Time = {
		SetExpired = function(nTime, nTask)
			if not(nTask) or bil.False(nTask) then
				return Msg2Player("Time.SetExpired: Null Task!")
			end
			SetTask(nTask, (nTime or 0) + ((GetTask(nTask) ~= 0) and GetTask(nTask) or GetCurServerTime()))
		end,
		
		GetExpired = function(Task)
			return bil.False(GetTask(Task)) and nil or (((GetTask(Task) - GetCurServerTime()) > 0) and (GetTask(Task) - GetCurServerTime()) or nil)
		end,
	},

	False = function(bilVal)
		if (not(bilVal) or bilVal == nil or bilVal == 0 or bilVal == "") then return 1 
		else return nil end
	end,
	
	True = function(bil_In_1)
		if bil.False(bil_In_1) then return nil
		else return 1 end
	end,
	
	Str2Byte = function(string, b_Count)
		local len, bilByteRet = strlen(string), ""
		for i = 1, len do bilByteRet = bilByteRet..strbyte(string, i) end
		if (b_Count == 1) then
			return bilByteRet, bil.Math.Count(bilByteRet)
		else
			return bilByteRet
		end
	end,
	
	Math = {
		Count = function(nListNumber)
			local a_s = tostring(nListNumber)
			local a = strlen(a_s)
			local b, b_n = 0, 0
			if bil.False(a) then return 0 end
			for i = 1, a do
				b_n = 0
				b_n = tonumber(strsub(a_s, i, i))
				b = b + ((type(b_n) == "number") and b_n or 0)
			end
			return b
		end,
	},
	
	C = function(CodeColor, bilStr)
		local bilColorTb = {yel = "yellow",gre = "green",ora = "Orange",blu = "blue",red = "red",woo = "wood",fir = "fire",}
		-- 										1				2			  3		 4				5			6			 7			 8				9					10				11
		local bilColorTbNum = {"yellow","green","red","Orange","blue","wood","fire", "white", "0x92ff8f", "0xa9ffe0", "0x00ffff"}
		if type(CodeColor) == "number" then return "<color="..bilColorTbNum[CodeColor]..">"..bilStr.."<color>" end
		return "<color="..bilColorTb[CodeColor]..">"..bilStr.."<color>"
	end,
	
	InitRandMemTb = function(bil_1)
		local bil_tb, bil_2, bil_3 = {}, 0, 0
		for i = 1, bil_1 do tinsert(bil_tb, i) end
		for i2 = 1, bil_1 do
			bil_2 = random(1, bil_1)
			bil_3 = bil_tb[i2]
			bil_tb[i2] = bil_tb[bil_2]
			bil_tb[bil_2] = bil_3
		end
		return bil_tb
	end,
	
	TaskDate = function(bil_1, bil_2, bil_3)
		local bil_4 = tonumber(date("%y%m%d"))
		if GetTask(bil_1) ~= bil_4 then
			SetTask(bil_1, bil_4)
			SetTask(bil_3, bil_2)
			return 0
		else
			return GetTask(bil_3)
		end
	end,
	
	Pack = function(...)
		return arg
	end,
	
	Talk = function(_s)
		return Talk(1,"", _s)
	end,
	
	UpLevel = function(n_1)
		if GetLevel() >= n_1 then return end
		while GetLevel() < n_1 do
			AddOwnExp(999999999)
		end
	end,
	
	Say = function(bil_In_1, bil_In_2, bil_In_3, bil_In_4)
		local bil_1, bil_2, bil_3, bil_4, bil_6, bil_7 = bil_In_1, nil, {}, 1, nil, {cc = {}}
		if not(bil_In_1) then return end
		if getn(bil_In_1) > 1 then
			bil_4 = getn(bil_In_1)
		end
		for bil_l_1 = 1, bil_4 do
			if bil_In_1[bil_l_1] then
				bil_1 = bil_In_1[bil_l_1].P
				bil_2 = bil_In_1[bil_l_1].M or nil
				bil_6 = bil_In_1[bil_l_1].H or nil
			elseif bil_1.P then
				return bil.Talk(bil.C(3, "Input Param is Incorect"))
			end
			if not(bil_In_1[bil_l_1]) or not(bil_In_1[bil_l_1].P) or bil_In_3 then
				if bil_1.cc and getn(bil_1.cc) > 0 then
					for bil_l_2 = 1, getn(bil_1.cc) do
						local bil_5
						if getn(bil_1.cc[bil_l_2][3]) > 0 then
							bil_5 = call(bil_1.cc[bil_l_2][1], bil_1.cc[bil_l_2][3])
						else
							bil_5 = bil_1.cc[bil_l_2][1]()
						end
							-- [2] 0: =, 1 >, -1 <, 2 ~=, 3 >= - [4]: value
						if bil_1.cc[bil_l_2][2] == 1 then
							if bil_5 > bil_1.cc[bil_l_2][4] then 
								if bil_In_4 then return nil end
								return bil.Talk(bil_1.cc[bil_l_2][5]) 
							end
						elseif bil_1.cc[bil_l_2][2] == 0 then
							if bil_5 == bil_1.cc[bil_l_2][4] then 
								if bil_In_4 then return nil end
								return bil.Talk(bil_1.cc[bil_l_2][5]) 
							end
						elseif bil_1.cc[bil_l_2][2] == -1 then
							if bil_5 < bil_1.cc[bil_l_2][4] then 
								if bil_In_4 then return nil end
								return bil.Talk(bil_1.cc[bil_l_2][5]) 
							end
						elseif bil_1.cc[bil_l_2][2] == 2 then
							if bil_5 ~= bil_1.cc[bil_l_2][4] then 
								if bil_In_4 then return nil end
								return bil.Talk(bil_1.cc[bil_l_2][5]) 
							end
						elseif bil_1.cc[bil_l_2][2] == 3 then
							if bil_5 >= bil_1.cc[bil_l_2][4] then 
								if bil_In_4 then return nil end
								return bil.Talk(bil_1.cc[bil_l_2][5]) 
							end
						else
							return bil.Talk(bil.C(3, "Condition: "..(bil_1.cc[bil_l_2][2] or  "NIL").." is Unknow"))
						end
					end
					if bil_In_4 then return 1 end
				end
			else
				if bil_2 then
					if bil_6 then
						bil_7.cc = bil_6
						if bil.Say(bil_7, nil, 1, 1) then
							tinsert(bil_3, {bil_2, bil.Say, {bil_1, nil, 1}})
						end
					else
						tinsert(bil_3, {bil_2, bil.Say, {bil_1, nil, 1}})
					end
				end
			end
		end
		if getn(bil_3) > 0 or bil_6 then
			tinsert(bil_3, {"K�t th�c ��i tho�i", bil.OnCancel})
			if not(bil_In_2) then 
				bil_In_2 = "<< Xin l�a ch�n c�c t�y ch�n li�t k� b�n d��i >>"
			end
			return CreateNewSayEx(bil_In_2, bil_3)
		end
		return Say_Step2(bil_1)
	end,
	
	SplitTime = function(_1)
		local r, b, c = {0, 0, 0, 0, 0, 0}, {"n�m", "th�ng", "ng�y", "gi�", "ph�t", "gi�y"}, ""
		local a = {{31536000},{2592000},{86400},{3600},{60}}
		local _1 = _1 or 0
		
		for _i = 1, getn(a) do
			if _1 >= a[_i][1] then
				r[_i] = floor(_1/a[_i][1])
				_1 = _1 - (a[_i][1]*r[_i])
			end
		end
		
		local d = getn(r)
		r[d] = _1
		
		for _i = 1, d do
			c = c..((r[_i] ~= 0) and ("<color=yellow>"..r[_i].." "..b[_i].."<color> ") or "")
		end
		
		return r, ((c ~= "") and c or "0 gi�y")
	end,
	
	JoinTime = function(_1, _2, _3)
		local a, b = {{31536000},{2592000},{86400},{3600},{60}}, 0
		
		for _i = 1, getn(a) do
			if bil.True(_1[_i]) then
				b = b + (_1[_i]*a[_i][1])
			end
		end
		
		b = bil.True(_1[getn(_1)]) and (_1[getn(_1)] + b) or b
		
		-- return bil.True(_2) and SetTask(_2, (GetTask(_2) + b)) or b
		return bil.True(_2) and SetTask(_2, ((_3 and GetTask(_2) or 0) + b)) or b
	end,
	
	IniFile = {
		_In_a = "",
	
		Load = function(_1)
			_In_a = "\\script\\global\\bil4i3n\\bil4i3n_log\\".._1
			if (IniFile_Load(_In_a, _In_a) == 0) then 
				File_Create(_In_a)
				IniFile_Load(_In_a, _In_a)
			end
		end,
		
		Get = function(Sect, Key)
			local a = IniFile_GetData(_In_a, Sect, Key)
			return bil.False(a) and nil or a
		end,
		
		Set = function(Sect,Key,Value)
			IniFile_SetData(_In_a, Sect, Key, Value)
			IniFile_Save(_In_a,_In_a)
		end,
		
		Release = function()
			IniFile_UnLoad(_In_a,_In_a)
		end,
	},
	
	Msg2AllWorld = function(_1)
		RemoteExc("\\script\\bil4i3n\\bil4i3n_msg2allworld.lua", "bilMsg2AllWorld:Send2All", {_1})
	end,
	
	OnCancel = function() return end,
}

function Say_Step2(bil_In_1)
	local bil_1, bil_3
	if bil_In_1.i and getn(bil_In_1.i) > 0 then
		for bil_l_1 = 1, getn(bil_In_1.i) do
			for bil_l_2 = 1, bil_In_1.i[bil_l_1].n do
				bil_1 = AddItemNoStack(unpack(bil_In_1.i[bil_l_1].v))
				if bil_In_1.i[bil_l_1].e ~= 0 then
					ITEM_SetExpiredTime(bil_1, FormatTime2Date(bil_In_1.i[bil_l_1].e + GetCurServerTime()))
					SyncItem(bil_1)
				end
				if bil_In_1.i[bil_l_1].b ~= 0 then
					SetItemBindState(bil_1, bil_In_1.i[bil_l_1].b)
				end
				if bil_In_1.i[bil_l_1].p and getn(bil_In_1.i[bil_l_1].p) > 0 then
					for _i = 1, getn(bil_In_1.i[bil_l_1].p) do
						SetSpecItemParam(bil_1, _i, bil_In_1.i[bil_l_1].p[_i])
						SyncItem(bil_1)
					end
				end
				if bil_In_1.i[bil_l_1].l and type(bil_In_1.i[bil_l_1].l) == "string" then
					bil_3 = openfile("script/global/bil4i3n/bil4i3n_log/"..(bil_In_1.i[bil_l_1].l)..".log", "a")
						write(bil_3, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tAcc: "..GetAccount().."\tName: "..GetName().."\tGiveItem: ["..bil_In_1.i[bil_l_1].v[1]..", "..bil_In_1.i[bil_l_1].v[2]..", "..bil_In_1.i[bil_l_1].v[3]..", "..bil_In_1.i[bil_l_1].v[4].."] "..bil_In_1.i[bil_l_1].ne.."\tCount: "..bil_In_1.i[bil_l_1].n.."\tBindState: "..bil_In_1.i[bil_l_1].b.."\tExpired: "..bil_In_1.i[bil_l_1].e.."\n")
					closefile(bil_3)
				end
			end
		end
	end
	if bil_In_1.ig and getn(bil_In_1.ig) > 0 then
		for bil_l_3 = 1, getn(bil_In_1.ig) do
			for bil_l_4 = 1, bil_In_1.ig[bil_l_3].n do
				bil_1 = AddGoldItem(0, (bil_In_1.ig[bil_l_3].v[1] - 1))
				if bil_In_1.ig[bil_l_3].e ~= 0 then
					ITEM_SetExpiredTime(bil_1, FormatTime2Date(bil_In_1.ig[bil_l_3].e + GetCurServerTime()))
					SyncItem(bil_1)
				end
				if bil_In_1.ig[bil_l_3].b ~= 0 then
					SetItemBindState(bil_1, bil_In_1.ig[bil_l_3].b)
				end
				if bil_In_1.i[bil_l_1].l and type(bil_In_1.i[bil_l_1].l) == "string" then
					bil_3 = openfile("script/global/bil4i3n/bil4i3n_log/"..(bil_In_1.i[bil_l_1].l)..".log", "a")
						write(bil_3, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tAcc: "..GetAccount().."\tName: "..GetName().."\tGiveItemGold: ["..(bil_In_1.ig[bil_l_3].v[1] - 1).."] "..bil_In_1.i[bil_l_1].ne.."\tCount: "..bil_In_1.i[bil_l_1].n.."\tBindState: "..bil_In_1.i[bil_l_1].b.."\tExpired: "..bil_In_1.i[bil_l_1].e.."\n")
					closefile(bil_3)
				end
			end
		end
	end
	if bil_In_1.c and getn(bil_In_1.c) > 0 then
		local bil_2 = 1
		for bil_l_5 = 1, getn(bil_In_1.c) do
			if bil_In_1.c[bil_l_5][3] and bil_In_1.c[bil_l_5][3] > 0 then
				bil_2 = bil_In_1.c[bil_l_5][3]
			end
			for bil_l_6 = 1, bil_2 do
				if bil_In_1.c[bil_l_5][2] and getn(bil_In_1.c[bil_l_5][2]) > 0 then
					call(bil_In_1.c[bil_l_5][1], bil_In_1.c[bil_l_5][2])
				else
					bil_In_1.c[bil_l_5][1]()
				end
			end
			bil_2 = 1
		end
	end
end

function CallFunc_bil_iNumber(_1)
	if not(_BIL4I3N_INC_G_iNumber[PlayerIndex]) then
		return Msg2Player("CallBack iNumber NULL!")
	end
	
	local a = _BIL4I3N_INC_G_iNumber[PlayerIndex]
	_BIL4I3N_INC_G_iNumber[PlayerIndex] = nil
	
	tinsert(a[2], _1)
	
	return call(a[1], a[2])
end

function CallFunc_bil_iItem(_1)
	if not(_BIL4I3N_INC_G_iItem[PlayerIndex]) then
		return Msg2Player("CallBack iItem NULL!")
	end
	
	local a = _BIL4I3N_INC_G_iItem[PlayerIndex]
	_BIL4I3N_INC_G_iItem[PlayerIndex] = nil
	
	tinsert(a[2], _1)
	
	return call(a[1], a[2])
end

end

-- local a = {
	-- {
		-- M = "test",
		-- H = {{GetLevel, 1, {}, 30}},
		-- P = {
			-- c = {{Msg2Player, {"complete!!"}},{Msg2Player, {"B�n ���c n�ng l�n ��ng c�p 199"}},},
			-- cc = {{GetLevel, 1, {}, 30, "��ng c�p �� l�n h�n 30!"},},
			-- i = {
				-- {v = {6,1,71,1,0,0,0}, n = 1, b = -2, e = 0, ne = "Ti�n th�o l�"},},
			-- ig = {
				-- {v = {186}, n = 1, b = -2, e = 0, ne = "Kim Phong ��ng T��c Xu�n Th�m"},
			-- },
		-- }
	-- },
-- }

-- bil.Say(a, "aaa")















