IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

function main(nItemIndex)
dofile("script/global/quanlygame/item/baoruonghkngaunhien.lua")
	local nSilverCount = CalcEquiproomItemCount(6,1,30191,1) ;
	if(nSilverCount < 1) then
		Say("��i hi�p c�n c� c�n c� 1 ch�a kh�a ho�ng kim mua t�i NPC T�n Th� �� m� b�o r��ng n�y (l�u � ch�y c�p nh�t tr��c khi s� d�ng)",0)
	return 1
                                                                                  end 
ConsumeEquiproomItem(1,6,1,30191,1)
tbitem  =
	{
		{szName = "Trang B� Ho�ng Kim", tbProp = {0, random(2,163)}, nCount = 1,nQuality = 1,nExpiredTime=10880,},
	}
	tbAwardTemplet:GiveAwardByList(tbitem, "Nh�n Trang B� Ho�ng Kim Ng�u Nhi�n ");
                          

end




