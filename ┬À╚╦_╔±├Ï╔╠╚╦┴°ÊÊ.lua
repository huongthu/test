--�Ը�Ե������Ʒ��NPC
--2004.8.5

Include( "\\script\\global\\fuyuan.lua" )
Include([[\script\event\mid_autumn06\head.lua]]);
Include("\\script\\vng_feature\\thuongnhanthanbi\\moruongfour\\openchestfour.lua")

function main()
	local tab_Content = {
		"Giao d�ch/OnBuy", 
		"K�t th�c ��i tho�i/OnCancel", 
		"�i Tr��ng b�ch s�n /GotoHuanZhuan",
		"Li�n quan t�i ph�c duy�n.../OnAbout"
	};
	if (au06_is_inperiod() == 1) then
		tinsert(tab_Content, "Trung thu ho�t ��ng/au06_lpaw_entrance");
	end;
		tinsert(tab_Content, "M� r��ng 4/#tbChectfour:main()");
	Say ( "Kh�ch quan mu�n mua g� B�n trang h�ng g� c�ng c�", getn(tab_Content), tab_Content);
end

function OnBuy()
	Sale( 93, 2 );
end

function OnAbout()
	Talk( 3, "", "Ph�c duy�n �i�m ��m: Th�ng qua t�ch l�y th�i gian ch�i, c� th� ��i �i�m ph�c duy�n. C� th� t�i T��ng D��ng th�n b� th��ng nh�n �� ��i c�c lo�i v�t ph�m ��c th�", " Ph�c duy�n ��i:t�ch l�y hai gi� online tr� l�n , �i c�c ��i th�nh th� t�m V� l�m truy�n nh�n �� ��i . m�t ng�y ���c ��i 2 l�n, t�ch l�y th�i gian 4 gi� tr� l�n, m�i gi� ��i 1 �i�m ph�c duy�n.", "H�n ch� �i�u ki�n :Ng�i t� kh�ng ���c t�ch l�y �i�m ph�c duy�n." );                                                                                                                                                                                                                                                                                            
end

function au06_lpaw_entrance()
	if (au06_IsPayed_player() == 0) then
		Say("Ch� c� t�t trung thu m�i c� th� tham gia trung thu ho�t ��ng", 0);
		return
	end;
Say("N�u nh� ng��i c� <color=yellow> 10 th��ng c� l�nh b�i <color> ta s� cho ng��i ��i m�t <color=yellow> ph�ng th�ng qu� dong <color> ��a k� n�ng tr� gi� ho�c l� 1 <color=yellow> c�ng th�ng ph� dung <color> ��a ti�m n�ng tr� gi� .", 3, "1 c� th��ng c� l�nh b�i ��i l�y t��ng th��ng /#shangjialingpai(1)", "10 c� th��ng c� l�nh b�i ��i l�y t��ng th��ng /#shangjialingpai(2)","K�t th�c ��i tho�i /oncancel"); 
end; 

function shangjialingpai(nIndex)
	if (CalcEquiproomItemCount(6, 1, 1252, -1) < 10) then
		Say("C�n 10 c� th��ng c� l�nh b�i m�i c� th� ��i l�y t��ng th��ng ", 0);
		return
	end;
	
	--�۳���Ʒ
	if (ConsumeEquiproomItem(10, 6, 1, 1252, -1) ~= 1) then
		return
	end
	
	--���轱��
	local str = "<color=yellow> ph�ng th�ng qu� dong<color>";
	if (nIndex == 1) then -- ����һ�����ܵ�
		AddItem(6, 1, 127, 1, 0, 0, 0);
	else -- ����5��Ǳ�ܵ�
		AddItem(6, 1, 128, 1, 0, 0, 0);
		str = "<color=yellow>c�ng th�ng ph� dung�<color>";
	end;
	
	--������ʾ
	Say("H�o ! Xin m�i ti�p nh�n m�t ch�t l� v�t !", 0);
	Msg2Player("Ng��i ��t t�i"..str);
end;

function OnCancel()
end
function GotoHuanZhuan()
	NewWorld(934, 49632 / 32, 105696 /32)
end


