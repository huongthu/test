--用给予界面实现，用五件武器，包含金、木、水、火、土五行各一件，可换取一个垃圾戒指
--designed by yangqi
--written by renbin

function weapon_ring()

	Say("G莕 y nh蒼 qu� tr猲 giang h� hi誱, ta nh﹏ c� h閕 甶 h鋍 phng ph竝 l祄 nh蒼, ch� c莕 ngi chu萵 b� m閠 b� v� kh� c�  5 thu閏 t輓h ng� h祅h v� 10 v筺 lng, ta s� gi髉 i m閠 nh蒼 thu閏 t輓h m祏 xanh, ngi mu鑞 i kh玭g?",3,"Л頲, ta 產ng c莕 m閠 chi誧 nh蒼 y!/exchange_weapon","в ta t譵 hi觰 c竔 !/weapon_help","Th玦 b� 甶, ta c� nh蒼 r錳!/no")

end

function exchange_weapon()

	GiveItemUI( "V� kh� ng� h祅h i nh蒼", "B筺 c莕 chu萵 b� v� kh� ng� h祅h ph﹏ bi謙 c� Kim, M閏, Th駓, H醓, Th�, ch� c莕 <color=blue>y  ng� h祅h<color>, ng th阨 ph秈 c�<color=blue> thu閏 t輓h m祏 xanh<color>, th� c� th� i 頲 m閠 chi誧 nh蒼.<color=blue> Ъng c蕄 v� kh� v� ch駈g lo筰 kh玭g c� h筺 ch�, m鏸 l莕 nh� v藋 ch� t鑞 10 v筺 lng, x竎 su蕋 100%.<color>", "weapon_ring_Confirm", "onCancel" );
	
end

function weapon_ring_Confirm( nCount )

	onSeries = {1,1,1,1,1}
	if ( nCount ~= 5 ) then						--are there 5 weapons
		Say("Xin ki觤 tra k�, v� kh� b筺 a ta kh玭g ph� h頿 y猽 c莡!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit( i )		--get itemindex
			ItemGenre, DetailType, ParticularType, Level, nSeries, Luck = GetItemProp(nItemIndex)
			magictype , p1, p2, p3 = GetItemMagicAttrib(nItemIndex, 1)	--get magic attrib
--			Msg2Player("nSeries = "..nSeries)
--			Msg2Player("magictype = "..magictype)
			if ( ItemGenre ~= 0 ) then
				Say("Xin ki觤 tra k�, v� kh� b筺 a ta kh玭g ph� h頿 y猽 c莡!",0)
				return 0
			elseif ( DetailType ~= 0 and DetailType ~= 1) then					--is it weapon
				Say("Xin ki觤 tra k�, v� kh� b筺 a ta kh玭g ph� h頿 y猽 c莡!",0)
				return 0
			elseif ( magictype == 0 ) then
				Say("V韎 kinh nghi謒 bu玭 b竛 l﹗ n╩ c馻 Ta mu鑞 甧m trang b� m祏 tr緉g qua m苩 ta 礹, kh玭g d� u!",0)
				return 0
			elseif ( nSeries < 0 and nSeries > 4 ) then			--exception
				Say("Trang b� c馻 ngi l� qu� 甶! Tr� l筰 cho ngi!",0)
				return 0
			elseif ( onSeries[nSeries + 1] == 0 ) then				--五行属性是否齐全
				Say("Xin ki觤 tra k�, v� kh� ngi a ta kh玭g  thu閏 t輓h ng� h祅h!",0)
				return 0
			else
				onSeries[nSeries + 1] = 0
			end
		end
			onPay = 100000
			if ( GetCash() < onPay ) then
				Say("Kh玭g c� ti襫 th� kh玭g 頲 r錳, m蕐 m鉵  n祔 sao i 頲 nh蒼 y!",0)
				return 0
			end
			for i = 1, nCount do
		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy謓 g� v藋, sao ngi c� th� g箃 ta?",0)
					return 0
				end
			
			end
			Pay( onPay )
			local _nSeed = SetRandSeed(234)					--固定的戒指
			AddItem(0,3,0,1,0,0,1,0,0,0,0,0)     			--戒指
			SetRandSeed(_nSeed)
			Say("Uhm~ c馻 ngi  頲 x竎 nh, ta nh薾 y, chi誧 nh蒼 n祔 l� c馻 ngi!",0)
		
	end
	
end

function weapon_help()

	Say("B筺 c莕 chu萵 b� v� kh� ng� h祅h ph﹏ bi謙 c� Kim, M閏, Th駓, H醓, Th�, ch� c莕 <color=blue>y  ng� h祅h<color>, ng th阨 ph秈 c�<color=blue> thu閏 t輓h m祏 xanh<color>, th� c� th� i 頲 m閠 chi誧 nh蒼.<color=blue> Ъng c蕄 v� kh� v� ch駈g lo筰 kh玭g c� h筺 ch�, m鏸 l莕 nh� v藋 ch� t鑞 10 v筺 lng, x竎 su蕋 100%.<color>",1,"Oh! Ta hi觰 r錳, c竚 琻!/no")

end


function no()

end
