-- ====================== 文件信息 ======================

-- 剑侠情缘网络版越南版 - 挑战礼包
-- 文件名　：tiaozhan_libao.lua
-- 创建者　：子非魚
-- 创建时间：2009-04-26 13:16:50

-- ======================================================

Include("\\script\\lib\\pay.lua");
Include("\\script\\lib\\awardtemplet.lua");

function main(nItemIdx)
	if (CalcFreeItemCellCount() < 50) then
		Say(format("в tr竛h m蕋 m竧 t礽 s秐, h穣 b秓 m h祅h trang c遪  %d � tr鑞g.", 50), 0);
		return 1;
	end
	tbItem = { tbProp = {6,1,4450,1,1,0}, nCount = 50};
	tbAwardTemplet:GiveAwardByList(tbItem, "Khi猽 Kh輈h L� bao")
end

