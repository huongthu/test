--�����
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")


function main(nItemIndex)
if CalcFreeItemCellCount() < 10 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y m�.",0);
		return 1
end
tbAwardTemplet:GiveAwardByList({{szName="T�i m�u CTC",tbProp={6,1,4470,1,0},nCount=1,nExpiredTime=60,nBindState=-2,},}, "test", 1);
Say("T�i m�u s� c� th�i h�n s� d�ng 60 ph�t b�t ��u t� gi�.",0);
end


