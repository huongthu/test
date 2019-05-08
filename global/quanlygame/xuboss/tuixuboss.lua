IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
tbAwardTemplet:GiveAwardByList({{szName="Hoa Hång",tbProp={4,417,1,1},nCount=1,nBindState=-2,},}, "test", 1);
end

