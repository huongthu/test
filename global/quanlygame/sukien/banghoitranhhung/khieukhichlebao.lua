-- ====================== �ļ���Ϣ ======================

-- ������Ե�����Խ�ϰ� - ��ս���
-- �ļ�������tiaozhan_libao.lua
-- �����ߡ����ӷ��~
-- ����ʱ�䣺2009-04-26 13:16:50

-- ======================================================

Include("\\script\\lib\\pay.lua");
Include("\\script\\lib\\awardtemplet.lua");

function main(nItemIdx)
	if (CalcFreeItemCellCount() < 50) then
		Say(format("�� tr�nh m�t m�t t�i s�n, h�y b�o ��m h�nh trang c�n �� %d � tr�ng.", 50), 0);
		return 1;
	end
	tbItem = { tbProp = {6,1,4450,1,1,0}, nCount = 50};
	tbAwardTemplet:GiveAwardByList(tbItem, "Khi�u Kh�ch L� bao")
end

