Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
-- /script/江南区/临安/临安/npc/职能_神秘铁匠.lua main

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
	{id = 168, ne = "Thi猲 Ho祅g Long Long Уi", fragment = 4},
	{id = 169, ne = "Thi猲 Ho祅g Long B筩h Long T鴆", fragment = 6},
	{id = 170, ne = "Thi猲 Ho祅g Long Tr蕁 Minh Li猲", fragment = 6},
	{id = 171, ne = "Thi猲 Ho祅g Long C鰑 Hi謓 ch�", fragment = 4},
	{id = 172, ne = "Thi猲 Ho祅g Long Ng鋍 Ti猽 Di猽", fragment = 4},
	{id = 173, ne = "Thi猲 Ho祅g Long Ho祅g Kim L﹏", fragment = 4},
	{id = 174, ne = "Thi猲 Ho祅g Long B祅 Long c玦", fragment = 4},
	{id = 175, ne = "Thi猲 Ho祅g Long Long Kh鑓 Thi猲 L�", fragment = 6},
	{id = 176, ne = "Thi猲 Ho祅g Long N� Long уng", fragment = 6},
}

function Join2ThienHoang:Main(_1, _2)
	local a = {}
	
	if _1 then
		if _2 and _2 > 0 then
			if _2 ~= self.p[_1].fragment then
				return bil.Talk(self.p[_1].ne.." Y猽 c莡 ng "..self.p[_1].fragment.." m秐h, t� 1 n "..self.p[_1].fragment.." h穣 thu th藀  sau  m韎 n t譵 l穙 phu!")
			end
			
			local b_G, b_D, b_P, b_L, b_S, b, b_c
			
			for _i2 = 1, _2 do
				b_c = 0
				b = GetGiveItemUnit(_i2)
				b_G, b_D, b_P, b_L, b_S = GetItemProp(b)
				
				if b_G ~= 6 or b_D ~= 1 then
					return bil.Talk("C竎 h� t nguy猲 li謚 kh玭g ph� h頿, xin ki觤 tra l筰!")
				end
				
				if GetItemStackCount(b) ~= 1 then
					return bil.Talk("C竎 h� xin ki觤 tra l筰, c� v藅 ph萴 x誴 ch錸g v韎 s� lng l韓 h琻 2!")
				end
				
				for _i3 = 1, self.p[_1].fragment do
					if b_c ~= 1 and self.f[_i3] == b_P then
						b_c = 1
						break
					end
				end
				
				if b_c ~= 1 then
					return bil.Talk("Nguy猲 li謚 c竎 h� t v祇 b� thi誹, xin ki觤 tra l筰!")
				end
			end
			
			for _i4 = 1, self.p[_1].fragment do
				ConsumeEquiproomItem(1,6,1,self.f[_i4],-1)
			end
			
			AddGoldItem(0, self.p[_1].id)
			Msg2Player("Gh衟 th祅h c玭g trang b� "..self.p[_1].ne)
			
			return
		end
	
		if _1 > 0 and _1 < (self.n + 1) then
			return bil.iItem("M秐h Thi猲 Ho祅g", self.p[_1].ne.."<enter>Y猽 c莡: <enter>"..self.p[_1].fragment.." M秐h trang b� Thi猲 Ho祅g!", {self.Main, {self, _1}})
		end
		return
	end
	
	for _i = 1, self.n do 
		tinsert(a, {"Gh衟 "..self.p[_i].ne, self.Main, {self, _i}})
	end
	
	tinsert(a, {"K誸 th骳 i tho筰", self.NoThing, {self}})
	
	return CreateNewSayEx("<npc>'Thi猲 Ho祅g' nghe t猲 th玦 c騨g    khi誴 s�!", a)
end

function Join2ThienHoang:NoThing()
	return
end

























