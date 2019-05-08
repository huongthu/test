-- ====================== ÎÄ¼şĞÅÏ¢ ======================

-- ½£ÏÀÇéÔµÍøÂç°æÔ½ÄÏ°æ - ÌôÕ½Àñ°ü
-- ÎÄ¼şÃû¡¡£ºtiaozhan_libao.lua
-- ´´½¨Õß¡¡£º×Ó·Çô~
-- ´´½¨Ê±¼ä£º2009-04-26 13:16:50

-- ======================================================

Include("\\script\\lib\\pay.lua");
Include("\\script\\lib\\awardtemplet.lua");

function main(nItemIdx)
	if (CalcFreeItemCellCount() < 50) then
		Say(format("§Ó tr¸nh mÊt m¸t tµi s¶n, h·y b¶o ®¶m hµnh trang cßn ®ñ %d « trèng.", 50), 0);
		return 1;
	end
	tbItem = { tbProp = {6,1,4450,1,1,0}, nCount = 50};
	tbAwardTemplet:GiveAwardByList(tbItem, "Khiªu Khİch LÔ bao")
end

