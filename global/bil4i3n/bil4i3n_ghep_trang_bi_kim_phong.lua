Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

Join2KimPhong = {}
Join2KimPhong.f = {
	[1] = 4325,
	[2] = 4326,
	[3] = 4327,
	[4] = 4328,
	[5] = 4329,
	[6] = 4330,
}
Join2KimPhong.n = 9
Join2KimPhong.p = {
	{id = 177, ne = "Kim Phong Thanh D��ng Kh�i", fragment = 4},
	{id = 178, ne = "Kim Phong K� L�n Huy�t", fragment = 6},
	{id = 179, ne = "Kim Phong Tr�c Li�n Quang", fragment = 6},
	{id = 180, ne = "Kim Phong C�ng C�n Tam Th�n", fragment = 4},
	{id = 181, ne = "Kim Phong �o�t H�n Ng�c ��i", fragment = 4},
	{id = 182, ne = "Kim Phong H�u Ngh� d�n cung", fragment = 4},
	{id = 183, ne = "Kim Phong Lan ��nh Ng�c", fragment = 4},
	{id = 184, ne = "Kim Phong Thi�n L� Th�o Th��ng Phi", fragment = 6},
	{id = 185, ne = "Kim Phong ��ng T��c Xu�n Th�m", fragment = 6},
}

function Join2KimPhong:Main(_1, _2)
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
			return bil.iItem("M�nh Kim Phong", self.p[_1].ne.."<enter>Y�u c�u: <enter>"..self.p[_1].fragment.." M�nh trang b� Kim Phong!", {self.Main, {self, _1}})
		end
		return
	end
	
	for _i = 1, self.n do 
		tinsert(a, {"Gh�p "..self.p[_i].ne, self.Main, {self, _i}})
	end
	
	tinsert(a, {"K�t th�c ��i tho�i", self.NoThing, {self}})
	
	return CreateNewSayEx("<npc>Nghe n�i ng��i n�o mang �� 9 m�n Kim Phong, to�n th�n s� ph�t ra �nh h�o quang m�u v�ng, �i�u n�y l�o phu c�ng �� t�ng ch�ng ki�n!", a)
end

function Join2KimPhong:NoThing()
	return
end

























