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
		CreateTaskSay({"Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 6 « trë lªn nhÐ!",  "§­îc råi./Cancel",});
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
		tbAwardTemplet:GiveAwardByList(tbAWard[P], "NhËn th­ëng ®iÓm kinh nghiÖm")
		nExp = tbAWard[P].nExp_tl
		Msg2Player("Chóc mõng b¹n nhËn "..nExp.." ®iÓm kinh nghiÖm")
		SetTask(TaskExpCauCa,(nExp+GetTask(TaskExpCauCa)))
		tbAwardTemplet:Give(%ItemAwardNT_cathuong1, 1)
		lay_pt75()
end
end

function lay_pt75()	-----moc 10
local tbAward = {
		--[1]={szName="<color=green>Tói nguyªn liÖu",tbProp={6,1,4793,1,0,0},nCount=15,},	
}
	tbAwardTemplet:GiveAwardByList(tbAward, "PhÇn th­ëng mèc event");
end

