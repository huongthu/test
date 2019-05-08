--¾üÐè¹Ù
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")


function main(nItemIndex)
if CalcFreeItemCellCount() < 10 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y më.",0);
		return 1
end
tbAwardTemplet:GiveAwardByList({{szName="§¸ May M¾n",tbProp={4,1669,1,1,0},nCount=5,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="TTK",tbProp={6,1,22,1,1,0},nCount=2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="VLMT",tbProp={6,1,26,1,1,0},nCount=2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Phóc Duyªn Lé",tbProp={6,1,124,1,1,0},nCount=2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1,0},nCount=2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§¸ C­êng Hãa",tbProp={4,1677,1,1,0},nCount=1,},}, "test", 1);
end


