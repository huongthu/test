Include("\\script\\missions\\racegame\\dailog.lua")




function main()
	local tbSay = 
	{
		"<dec><npc>��i hi�p t�m ta c� vi�c g�?",
	}
	tinsert(tbSay, "Tham Gia �ua Heo/#racegame_SignUp_main(1)")
	tinsert(tbSay, "K�t th�c ��i tho�i/OnCancel")
	CreateTaskSay(tbSay)
end;
