Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
-- /script/������/�ٰ�/�ٰ�/npc/ְ��_��������.lua main

Join2ThienHoang = {}
Join2ThienHoang.f = {
	[1] = 4342,
	[2] = 4343,
	[3] = 4344,
	[4] = 4345,
	[5] = 4346,
	[6] = 4347,
}
Join2ThienHoang.n = 9
Join2ThienHoang.p = {
	{id = 168, ne = "Thi�n Ho�ng Long Long ��i", fragment = 4},
	{id = 169, ne = "Thi�n Ho�ng Long B�ch Long T�c", fragment = 6},
	{id = 170, ne = "Thi�n Ho�ng Long Tr�n Minh Li�n", fragment = 6},
	{id = 171, ne = "Thi�n Ho�ng Long C�u Hi�n ch�", fragment = 4},
	{id = 172, ne = "Thi�n Ho�ng Long Ng�c Ti�u Di�u", fragment = 4},
	{id = 173, ne = "Thi�n Ho�ng Long Ho�ng Kim L�n", fragment = 4},
	{id = 174, ne = "Thi�n Ho�ng Long B�n Long c�i", fragment = 4},
	{id = 175, ne = "Thi�n Ho�ng Long Long Kh�c Thi�n L�", fragment = 6},
	{id = 176, ne = "Thi�n Ho�ng Long N� Long ��ng", fragment = 6},
}

function Join2ThienHoang:Main(_1, _2)
	local a = {}
	
	if _1 then
		if _2 and _2 > 0 then
			if _2 ~= self.p[_1].fragment then
				return bil.Talk(self.p[_1].ne.." Y�u c�u ��ng "..self.p[_1].fragment.." m�nh, t� 1 ��n "..self.p[_1].fragment.." h�y thu th�p �� sau �� m�i ��n t�m l�o phu!")
			end
			
			local b_G, b_D, b_P, b_L, b_S, b, b_c
			
			for _i2 = 1, _2 do
				b_c = 0
				b = GetGiveItemUnit(_i2)
				b_G, b_D, b_P, b_L, b_S = GetItemProp(b)
				
				if b_G ~= 6 or b_D ~= 1 then
					return bil.Talk("C�c h� ��t nguy�n li�u kh�ng ph� h�p, xin ki�m tra l�i!")
				end
				
				if GetItemStackCount(b) ~= 1 then
					return bil.Talk("C�c h� xin ki�m tra l�i, c� v�t ph�m x�p ch�ng v�i s� l��ng l�n h�n 2!")
				end
				
				for _i3 = 1, self.p[_1].fragment do
					if b_c ~= 1 and self.f[_i3] == b_P then
						b_c = 1
						break
					end
				end
				
				if b_c ~= 1 then
					return bil.Talk("Nguy�n li�u c�c h� ��t v�o b� thi�u, xin ki�m tra l�i!")
				end
			end
			
			for _i4 = 1, self.p[_1].fragment do
				ConsumeEquiproomItem(1,6,1,self.f[_i4],-1)
			end
			
			AddGoldItem(0, self.p[_1].id)
			Msg2Player("Gh�p th�nh c�ng trang b� "..self.p[_1].ne)
			
			return
		end
	
		if _1 > 0 and _1 < (self.n + 1) then
			return bil.iItem("M�nh Thi�n Ho�ng", self.p[_1].ne.."<enter>Y�u c�u: <enter>"..self.p[_1].fragment.." M�nh trang b� Thi�n Ho�ng!", {self.Main, {self, _1}})
		end
		return
	end
	
	for _i = 1, self.n do 
		tinsert(a, {"Gh�p "..self.p[_i].ne, self.Main, {self, _i}})
	end
	
	tinsert(a, {"K�t th�c ��i tho�i", self.NoThing, {self}})
	
	return CreateNewSayEx("<npc>'Thi�n Ho�ng' nghe t�n th�i c�ng �� �� �� khi�p s�!", a)
end

function Join2ThienHoang:NoThing()
	return
end

























