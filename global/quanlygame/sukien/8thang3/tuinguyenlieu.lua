IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
motuinguyenlieu()
end

function motuinguyenlieu()
local s = random(1,3)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="Hoa Hång",tbProp={6,1,4484,1,1},nCount=1,},}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="Hoa Cóc",tbProp={6,1,4485,1,1},nCount=1,},}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="Hoa Lan",tbProp={6,1,4486,1,1},nCount=1,},}, "test", 1);
end;
end


