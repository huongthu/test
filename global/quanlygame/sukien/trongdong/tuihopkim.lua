IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
local s = random(1,3)
if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="§ång",tbProp={6,1,4493,1,1},nCount=1,},}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="S¾t",tbProp={6,1,4494,1,1},nCount=1,},}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="Ch×",tbProp={6,1,4495,1,1},nCount=1,},}, "test", 1);
end;
end


