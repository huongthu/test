--¾üÐè¹Ù
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")


function main(nItemIndex)
if CalcFreeItemCellCount() < 10 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y më.",0);
		return 1
end
tbAwardTemplet:GiveAwardByList({{szName="Tói m¸u CTC",tbProp={6,1,4470,1,0},nCount=1,nExpiredTime=60,nBindState=-2,},}, "test", 1);
Say("Tói m¸u sÏ cã thêi h¹n sö dông 60 phót b¾t ®Çu tõ giê.",0);
end


