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
		Say("§¹i hiÖp cÇn cã cÇn cã 1 ch×a khãa hoµng kim mua t¹i NPC T©n Thñ ®Ó më b¶o r­¬ng nµy (l­u ý ch¹y cËp nhËt tr­íc khi sö dông)",0)
	return 1
                                                                                  end 
ConsumeEquiproomItem(1,6,1,30191,1)
tbitem  =
	{
		{szName = "Trang BÞ Hoµng Kim", tbProp = {0, random(2,163)}, nCount = 1,nQuality = 1,nExpiredTime=10880,},
	}
	tbAwardTemplet:GiveAwardByList(tbitem, "NhËn Trang BÞ Hoµng Kim NgÉu Nhiªn ");
                          

end




