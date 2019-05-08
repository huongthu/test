IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")



function main()
tongkimlebaook()
end

function tongkimlebaook()
SetTask(747,GetTask (747)+10000)
Msg2Player("Chóc mõng ®¹i hiÖp nhËn ®­îc 10000 ®iÓm tÝch lòy tèng kim.")
end
