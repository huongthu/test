
function main(nItemIdx)
	if CountFreeRoomByWH(2, 3) > 0 then
		local bilRandom = floor((random(0,200) + random(0,200))/2)
		if bilRandom <= 20 then
			if random(1,3) == 2 then
				AddItem(0,10,5,10,0,0,0)
				Msg2SubWorld("Ch�c m�ng <color=yellow>"..GetName().."<color> �� nh�n ���c <color=yellow>Chi�u D� Ng�c S� T�<color> t� <color=green>T�i ng�a 8x")
				return 0
			end
		elseif bilRandom <= 40 then
			AddItem(0,10,5,9,0,0,0)
			Msg2Player("Ch�c m�ng b�n �� nh�n ���c <color=yellow>��ch L�<color> th�n m� t� <color=green>t�i ng�a 8x")
			return 0
		elseif bilRandom <= 60 then
			AddItem(0,10,5,8,0,0,0)
			Msg2Player("Ch�c m�ng b�n �� nh�n ���c <color=yellow>Tuy�t �nh<color> th�n m� t� <color=green>t�i ng�a 8x")
			return 0
		elseif bilRandom <= 100 then
			AddItem(0,10,5,7,0,0,0)
			Msg2Player("Ch�c m�ng b�n �� nh�n ���c <color=yellow>X�ch Th�<color> th�n m� t� <color=green>t�i ng�a 8x")
			return 0
		elseif bilRandom <= 200 then
			AddItem(0,10,5,6,0,0,0)
			Msg2Player("Ch�c m�ng b�n �� nh�n ���c <color=yellow>� V�n ��p Tuy�t<color> th�n m� t� <color=green>t�i ng�a 8x")
			return 0
		end
	else
		Talk(1, "", "H�nh trang c�a b�n ph�i tr�ng �t nh�t 6 �: 2x3 �� ch�a ch� cho 1 chi�n m�.")
		return 1
	end
end

function GetDesc( nItemIdx )
	return "<color=green>     M�t chi�c t�i nh� th�n k�, m� ra ng�u nhi�n s� nh�n ���c nh�ng th�n m� sau     <color><color=Orange><enter>� V�n ��p Tuy�t<enter>X�ch Th�<enter>Tuy�t �nh<enter>��ch L�<enter>Chi�u D� Ng�c S� T�<enter>";
end





























