
-- Modified by Bil4i3n

CurStation = 1;
Include("\\script\\global\\station.lua")
IncludeLib("BATTLE")

function main(sel)
	BT_LeaveBattle()
	SetCurCamp(GetCamp())
	SetFightState(0)
	local mapid = SubWorldIdx2ID(SubWorld);
	local tbOpp = {"Nh�ng n�i �� �i qua/WayPointFun", 
					"Nh�ng th�nh th� �� �i qua/StationFun", 
					"Tr� l�i ��a �i�m c�/TownPortalFun"};
--	if (mapid == 325) then
		tinsert(tbOpp, format("��n �i�m b�o danh phe Kim/#battle_transprot(2,%d)", mapid));
--	end;
	tinsert(tbOpp, "K�t th�c ��i tho�i/OnCancel");
	Say("L� nh�ng phu xe cho c�c chi�n tr��ng ch�ng t�i h�n ai h�t hi�u ���c s� c�c kh�, c� l�c c�n k� c�i ch�t, mong c�c v� ��i hi�p h�y b� ra v�i l�ng b�c �� gi�p �� ch�ng t�i.", getn(tbOpp), tbOpp);
end;

function OnCancel()
end;
function battle_transprot(nSel, mapid)
	local tbsongjin_pos = {1541, 3178};	--�η������
	local szstr = "Kim ph��ng(T)";
	if (nSel == 2) then
		tbsongjin_pos = {1570, 3085};
		szstr = "T�ng ph��ng(K)";
	end;
	if (mapid >= 323 and mapid <= 325) then
		NewWorld( mapid, tbsongjin_pos[1], tbsongjin_pos[2]);
		Msg2Player( "�� ��n �i�m b�o danh phe Kim" );
	end
end;
