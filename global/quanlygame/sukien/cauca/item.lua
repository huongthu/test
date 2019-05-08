--Event cau ca bang hoi
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\global\\quanlygame\\sukien\\cauca\\head.lua")

function main(nItemIndex)
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if (G ~= 6) then
		return 1;
	end
	
	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 6 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
	
	if CheckGioiHan()==1 then
		return 1;
	end

	if P >= 4442 and P <= 4445 then
		Exp(P)
		return 0;
	end
	return 1
end
function Exp(P)
	if (P >= 4442 and P <= 4445) then
		tbAwardTemplet:GiveAwardByList(tbAWard[P], "Nh�n th��ng �i�m kinh nghi�m")
		nExp = tbAWard[P].nExp_tl
		Msg2Player("Ch�c m�ng b�n nh�n "..nExp.." �i�m kinh nghi�m")
		SetTask(TaskExpCauCa,(nExp+GetTask(TaskExpCauCa)))
		tbAwardTemplet:Give(%ItemAwardNT_cathuong1, 1)
		lay_pt75()
end
end

function lay_pt75()	-----moc 10
local tbAward = {
		--[1]={szName="<color=green>T�i nguy�n li�u",tbProp={6,1,4793,1,0,0},nCount=15,},	
}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng m�c event");
end

