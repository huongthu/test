IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")



function main()
tongkimlebaook()
end

function tongkimlebaook()
SetTask(747,GetTask (747)+10000)
Msg2Player("Ch�c m�ng ��i hi�p nh�n ���c 10000 �i�m t�ch l�y t�ng kim.")
end
