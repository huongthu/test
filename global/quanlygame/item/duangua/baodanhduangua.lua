Include("\\script\\missions\\racegame\\dailog.lua")




function main()
	local tbSay = 
	{
		"<dec><npc>§¹i hiÖp t×m ta cã viÖc g×?",
	}
	tinsert(tbSay, "Tham Gia §ua Heo/#racegame_SignUp_main(1)")
	tinsert(tbSay, "KÕt thóc ®èi tho¹i/OnCancel")
	CreateTaskSay(tbSay)
end;
