IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
lebaomatna()
end

function lebaomatna()
checkphai = GetFaction()
if GetLastFactionNumber() == 0 then
tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,825,1},nCount=1,nExpiredTime=21600,},}, "test", 1);

elseif GetLastFactionNumber() == 1 then
tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,824,1},nCount=1,nExpiredTime=21600,},}, "test", 1);

elseif GetLastFactionNumber() == 2 then
tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,826,1},nCount=1,nExpiredTime=21600,},}, "test", 1);

elseif GetLastFactionNumber() == 3 then
tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,827,1},nCount=1,nExpiredTime=21600,},}, "test", 1);

elseif GetLastFactionNumber() == 4  then
tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,822,1},nCount=1,nExpiredTime=21600,},}, "test", 1);


elseif GetLastFactionNumber() == 5 then
tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,823,1},nCount=1,nExpiredTime=21600,},}, "test", 1);

elseif GetLastFactionNumber() == 6 then
tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,821,1},nCount=1,nExpiredTime=21600,},}, "test", 1);

elseif GetLastFactionNumber() == 7 then
tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,820,1},nCount=1,nExpiredTime=21600,},}, "test", 1);

elseif GetLastFactionNumber() == 8 then
tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,818,1},nCount=1,nExpiredTime=21600,},}, "test", 1);

elseif GetLastFactionNumber() == 9 then
tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹",tbProp={0,11,819,1},nCount=1,nExpiredTime=21600,},}, "test", 1);

end
end


