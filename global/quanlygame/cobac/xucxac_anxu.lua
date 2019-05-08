--XucXac
--01/04/2018
--Dev by LeTuan

--Include("\\script\\global\\newlife\\serverlib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
IL("DICEITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\quanlygame\\cobac\\songbaimacau.lua")
--Include("\\script\\global\\quanlygame\\cobac\\lodebacnam\\betnpc.lua") --tam bo lo de bac nam



function main()
dofile("script/global/quanlygame/cobac/xucxac_anxu.lua");
local szTitle = "<npc><enter><color=cyan>C�a l�m ra kh�ng bao gi� �n h�t<enter>C�a c� b�c khi ch�t ch�ng mang theo<enter>C� m�y ai gi�u b�ng ngh� ��nh b�c<enter>Ch� c� ng��i s�c nghi�p b�i �am m�<enter>�� bi�t d�i m� v�n lao v�o ��<enter>�� cho ng��i chia s� t�i ti�n ri�ng<enter>��i l�n may �n ���c v�i ba v�n<enter>��m ti�u x�i phung ph� ch�n �am m�<enter>Nh�ng l� ch�ng may thua cho s�c m�u<enter>Th� l� r�i v� nh� ��m gi�n d�i<enter>V� ch�ng l�c d�i l�a nhau<enter>Ch� l�m con c�i c�ng th�m s�u.....<color>"
		local Opt = 
		{	
			--{"X�c ��a ��i K� Th�ch",xockythachdia},
			{"B�u Cua",baucuaok},
			{"X�c ��a",xocdia},
			--{"�� x�c x�c",xucxac_anxu},
			--{"L� �� B�c Nam (t�nh k�t qu� theo ��i)",lodebacnam},
			--{"Quy ��nh v� �� x�c x�c",quydinh},
			{"K�t Th�c Cu�c ��i Tho�i",cane},
		}
		CreateNewSayEx(szTitle,Opt)
end

function xucxac_anxu()	
	if (IsCaptain() ~= 1) then
		local tbarytalk ={
			"<dec><npc>Xin L�i ! ��i Hi�p<color=yellow> "..GetName().."<color> Kh�ng ph�i l� <color=green>��i Tr��ng<color> Kh�ng th� <color=Cyan>�� X�c X�c<color>",
			"Bi�t r�i/NoChoice",
		}
		CreateTaskSay(tbarytalk)
		return 1
	end
	if (GetTeamSize() < 2) then
		local tbarytalk ={
			"<dec><npc>T� ��i tham gia <color=Cyan>�� X�c X�c<color> c�n �t nh�t <color=red> 3 Th�nh Vi�n<color> tr� l�n . Hi�n t�i s� ng��i trong t� ��i kh�ng ph� h�p y�u c�u.",
			"Bi�t r�i/NoChoice",
		}
		CreateTaskSay(tbarytalk)
		return 1
	end

	if CheckXu() ~= 1 then
		PlayGame()
	end
		
end

function PlayGame()

	local nRet = ApplyItemDice(1,100,60, "\\script\\global\\quanlygame\\cobac\\xucxac_anxu.lua", "OnTimeSMS", GetTeamSize())
	if (GetTeamSize() == 2) then
	AddDiceItemInfo(nRet,1,6,1,4407,1,1,1,1,1,1,1)
	end
	if (GetTeamSize() == 3) then
	AddDiceItemInfo(nRet,1,6,1,4408,1,1,1,1,1,1,1)
	end
	if (GetTeamSize() == 4) then
	AddDiceItemInfo(nRet,1,6,1,4409,1,1,1,1,1,1,1)
	end
	if (GetTeamSize() == 5) then
	AddDiceItemInfo(nRet,1,6,1,4410,1,1,1,1,1,1,1)
	end
	if (GetTeamSize() == 6) then
	AddDiceItemInfo(nRet,1,6,1,4411,1,1,1,1,1,1,1)
	end
	if (GetTeamSize() == 7) then
	AddDiceItemInfo(nRet,1,6,1,4412,1,1,1,1,1,1,1)
	end
	if (GetTeamSize() == 8) then
	AddDiceItemInfo(nRet,1,6,1,4413,1,1,1,1,1,1,1)
	end
	local nPlayerOld = PlayerIndex
	for i=1, GetTeamSize() do
		PlayerIndex = GetTeamMember(i)
		RollItem(nRet)
		ConsumeEquiproomItem(3, 4, 417, 1, 1)
	end
		PlayerIndex = nPlayerOld

end

function CheckXu()
	local nPlayerOld = PlayerIndex
	for i=1, GetTeamSize() do
		PlayerIndex = GetTeamMember(i)
		if CalcEquiproomItemCount(4, 417, 1, 1) < 3 then
			local str = "<color=green>Th�nh vi�n <color=yellow>"..GetName().."<color> trong t� ��i kh�ng �� <color=yellow>3 xu<color>, kh�ng th� �� x�c x�c."
			Msg2Team(str)
			local tbarytalk ={
				"<dec><npc><color=Cyan>"..GetName().."<color> h�t ti�n r�i k�a m�y ! N�p th� �i nh� .",
				"Bi�t r�i/NoChoice",
				}
			CreateTaskSay(tbarytalk)
			return 1
		end		
	end		
		PlayerIndex = nPlayerOld
end
function OnTimeSMS(dwID)
	show_roll_info(dwID)
end

function show_roll_info(dwID)
	local t, nSize, szItem,quality,nGenre,nDetial,nPart,nLevel,nSeries = GetItemDiceRollInfo(dwID)
	local bAllGiveUp = 1
	local oldplayindex = PlayerIndex
	for index, value in t do
		PlayerIndex = value[5]
		if GetName() == value[1] then	
			local str = "<color=green>"..value[1].." <color>�� x�c x�c <color=cyan>"..value[2].." �i�m<color>."
			if value[3] == 0 then
				str = "<color=yellow>"..value[1].."<color> t�i h� kh� m�u xin b� qua v�n n�y <pic=10>"
			elseif value[3] == 2 then
				if value[4] == 1 then
					if oldplayindex == value[5] and nSeries == 1 and ndouble == 1 then
						--��¼log
						if nGenre == 6 and nDetial == 1 and nPart == 1606 then
							--YDBZ_sdl_writeLog("V��t �i b�o t�ng vi�m ��","Trong qu� tr�nh v��t �i thu ���c 1 Vi�m �� �� ��ng")
						end	
						if nGenre == 6 and nDetial == 1 and nPart == 1605 then
							--YDBZ_sdl_writeLog("V��t �i b�o t�ng vi�m ��","Trong l�c v��t �i thu ���c 1 h�nh n�m")
						end			
					end
					str = str..format("<enter><enter><color=yellow><pic=126><pic=58> <color=pink>"..GetName().." <color=yellow>H�t B�c. <enter><color=green> Xin ch�c m�ng <pic=48><pic=26><pic=120>")
				end
				bAllGiveUp = 0
			end
			PlayerIndex = oldplayindex
			Msg2Player(str)
		end
	end
	if bAllGiveUp == 1 then
		Msg2Player("T�t c� ng��i ch�i ��u h�y b� r�i")
	elseif nSize ~= getn(t) then
		Msg2Player("Ng��i ch�i kh�c v� qu� h�n th�i gian, n�n t�nh l� h�y b�")
	end
end

function quydinh()
		local tbarytalk ={
			"<dec><npc>Xin ch�o !<color=yellow> "..GetName().."<color><enter><color=Cyan>��i tr��ng m�i c� quy�n �� x�c x�c<enter>M�i th�nh vi�n trong nh�m ph�i c� 3 xu<enter>�� x�c x�c t� 1 ��n 100 �i�m<enter>Ai c� s� �i�m cao nh�t s� th�ng<enter>M�i v�n ta xin 1 xu ti�n b�o k� s�ng<color>",
			"Bi�t r�i/NoChoice",
		}
		CreateTaskSay(tbarytalk)
		return 1
end

----------------------------------------------Xoc Dia----------------------------------------------------

function xocdia()
Say("<color=green>Ch� s�ng b�c<color>: C�c h� �o�n ��ng 2 l�n s� d�nh chi�n th�ng",2,"Oke ch�i /doanchanle0","Th�i ��ng l�a ta")  
end;

function doanchanle0()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
i = 1
if nSilverCount >= i then 
ConsumeEquiproomItem(1,4,417,1,1)
doanchanle()
else
Talk(1,"","<color=pink>��i gia c� ��a, ng�i kh�ng mang �� 1 <color=gold>Ti�n ��ng<color> r�i k�a<color>!") 
end;
end


function doanchanle()
local szTitle = "<npc>Lu�t ch�i ��n gi�n:\n\t<color=green>Ch�n<color>: K�t qu� 5 l�ng c�u l� s� ch�n\n\t<color=blue>L�<color>:   K�t qu� 5 l�ng c�u l� s� l�\n\t<color=yellow>L�u �<color>: C�c l�n quay �i�u l� ng�u nhi�n 100%"
	local tbOpt =
	{
		{"��t Ch�n",doanchan1},
                                      {"��t L�",doanle1},
	}
	CreateNewSayEx(szTitle, tbOpt)
		
end


function doanchan1()

local x = random(0,20)
local y = random(0,20)
local z = random(0,20)
local w = random(0,20)
local p = random(0,20)

s = x + y + z + w + p

if s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Talk(2,"doanchanle2","<color=yellow> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> Ch�n","Ti�p v�n th� 2 !!!!")

--Msg2SubWorld("<color=cyan>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> Ch�n<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> Th�ng S�ng B�i <pic=108>")

elseif s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Msg2SubWorld("<color=yellow>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> L� <pic=17><enter><enter>"..GetName().."<color> d�ng cu�c ch�i <pic=92>")
Talk(2,"lose","<color=cyan> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> L�","T�ch r�i nh� !!!!<color>")
end;
end

function doanle1()

local x = random(0,20)
local y = random(0,20)
local z = random(0,20)
local w = random(0,20)
local p = random(0,20)

s = x + y + z + w + p

if s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Talk(2,"doanchanle2","<color=yellow> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> L�","Ti�p v�n th� 2 !!!!")

--Msg2SubWorld("<color=cyan>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> L�<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> Th�ng S�ng B�i <pic=108>")

elseif s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Msg2SubWorld("<color=yellow>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> Ch�n <pic=17><enter><enter>"..GetName().."<color> d�ng cu�c ch�i <pic=92>")
Talk(2,"lose","<color=cyan> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> Ch�n","T�ch r�i nh� !!!!<color>")
end;
end





function doanchanle2()
local szTitle = "<npc><color=cyan>Ch� S�ng B�c:<color>Lu�t ch�i ��n gi�n:\n\t<color=green>Ch�n<color>: K�t Qu� 4 L�ng C�u L� S� Ch�n\n\t<color=blue>L�<color>:   K�t Qu� 4 L�ng C�u L� S� L�\n\t<color=yellow>L�u �<color>: C�c L�n Quay �i�u L� Ng�u Nhi�n 100%"
	local tbOpt =
	{
		{"��t ch�n",doanvantai2},
                                       {"��t l�",doanvansiu2},
	}
	CreateNewSayEx(szTitle, tbOpt)
		
end

function doanvantai2()

local x = random(0,20)
local y = random(0,20)
local z = random(0,20)
local w = random(0,20)
local p = random(0,20)

s = x + y + z + w + p

if s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Talk(2,"winok","<color=cyan> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> Ch�n","Winer  !!!!")

--Msg2SubWorld("<color=cyan>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> Ch�n<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> Th�ng S�ng B�i <pic=108>")

elseif s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Msg2SubWorld("<color=cyan>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> L� <pic=17><enter><enter>"..GetName().."<color> d�ng cu�c ch�i <pic=92>")
Talk(2,"lose","<color=cyan> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> L�","Lost !!!!<color>")
end;
end

function doanvansiu2()

local x = random(0,20)
local y = random(0,20)
local z = random(0,20)
local w = random(0,20)
local p = random(0,20)

s = x + y + z + w + p

if s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Talk(2,"winok","<color=cyan> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> L�","Winer  !!!!")

--Msg2SubWorld("<color=cyan>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> L�<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> Th�ng S�ng B�i <pic=108>")

elseif s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Msg2SubWorld("<color=cyan>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> Ch�n <pic=17><enter><enter>"..GetName().."<color> d�ng cu�c ch�i <pic=92>")
Talk(2,"lose","<color=cyan> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> Ch�n","Lost !!!!<color>")
end;
end

function winok()
tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1,0},nCount=2,},}, "Xu", 1);
Msg2SubWorld(""..GetName().." <color=yellow>H� s�ng b�i 2 v�n combo li�n ti�p d�nh th�ng l�i nh�n ���c<color=green> 2Xu<pic=25>")
end


function baucuaok()
baucuacacop()
end

function lodebacnam()
mainlode()
end


---------------------------------------------------------


function xockythachdia()
local szTitle = "<npc><enter><color=cyan>C� m�y ai gi�u b�ng ngh� ��nh b�c<enter>Ch� c� ng��i s�c nghi�p b�i �am m�<enter>�� bi�t d�i m� v�n lao v�o ��<enter>�� cho ng��i chia s� t�i ti�n ri�ng<enter>��i l�n may �n ���c v�i ba v�n<enter>��m ti�u x�i phung ph� ch�n �am m�<enter>Nh�ng l� ch�ng may thua cho s�c m�u<enter>Th� l� r�i v� nh� ��m gi�n d�i<enter>V� ch�ng l�c d�i l�a nhau<enter>Ch� l�m con c�i c�ng th�m s�u.....<color>"
		local Opt = 
		{	
			{"�o�n Ch�n L�",batdauchoine},
			{"K�t Th�c Cu�c ��i Tho�i",cane},
		}
		CreateNewSayEx(szTitle,Opt)
end

function quydinhne()
		local tbarytalk ={
			"<dec><npc>Xin ch�o !<color=yellow> "..GetName().."<color> Quy t�c ch�i r�t ��n gi�n ta s� cho x� 5 l�ng c�u ng�u nhi�n tuy�t ��i n�u ng��i �o�n tr�ng 5 l�n li�n ti�p ta s� t�ng ng��i 1 b�o r��ng ho�ng kim t� ch�n 7 ng�y.L�u � m�i 1 v�n ch�i t�n 1 xu.N�u ng��i �o�n sai t�nh l�i t� ��u",
			"Bi�t r�i/NoChoice",
		}
		CreateTaskSay(tbarytalk)
		return 1
end


function batdauchoine()
Say("<color=green>Th� T�i �o�n<color>: C�c h� �o�n ��ng 3 l�n s� d�nh chi�n th�ng v� nh�n ���c Ng� H�nh K� Th�ch",2,"Oke ch�i /doancup0","Th�i ��ng l�a ta")  
end;

function doancup0()
local nSilverCount = CalcEquiproomItemCount(4, 417,1,1) ;
i = 2
if nSilverCount >= i then 
ConsumeEquiproomItem(2,4,417,1,1)
doancup1()
else
Talk(1,"","<color=pink>��i gia c� ��a, ng�i kh�ng mang �� 2 <color=gold>Ti�n ��ng<color> r�i k�a<color>!") 
end;
end


function doancup1()
local szTitle = "<npc>Lu�t ch�i ��n gi�n:\n\t<color=green>Ch�n<color>: K�t qu� 5 l�ng c�u l� s� ch�n\n\t<color=blue>L�<color>:   K�t qu� 5 l�ng c�u l� s� l�\n\t<color=yellow>L�u �<color>: C�c l�n quay �i�u l� ng�u nhi�n 100%"
	local tbOpt =
	{
	{"�o�n Ch�n",doanchan01},
                                                                                  {"�o�n L�",doanle01},
	}
	CreateNewSayEx(szTitle, tbOpt)
		
end


function doanchan01()

local x = random(0,20)
local y = random(0,20)
local z = random(0,20)
local w = random(0,20)
local p = random(0,20)

s = x + y + z + w + p

if s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Talk(2,"doancup2","<color=yellow> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> Ch�n","Ti�p v�n th� 2 !!!!")
Msg2SubWorld("<color=cyan>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> Ch�n<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> �i ti�p v�ng 2 <pic=0>")

elseif s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Msg2SubWorld("<color=yellow>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> L� <pic=17><enter><enter>"..GetName().."<color> d�ng cu�c ch�i t�i v�ng 1 <pic=92>")
Talk(2,"lose","<color=cyan> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> L�","T�ch r�i nh� !!!!<color>")
end;
end

function doanle01()

local x = random(0,20)
local y = random(0,20)
local z = random(0,20)
local w = random(0,20)
local p = random(0,20)

s = x + y + z + w + p

if s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Talk(2,"doancup2","<color=yellow> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> L�","Ti�p v�n th� 2 !!!!")

Msg2SubWorld("<color=cyan>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> L�<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> �i ti�p v�ng 2 <pic=0>")

elseif s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Msg2SubWorld("<color=yellow>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> Ch�n <pic=17><enter><enter>"..GetName().."<color> d�ng cu�c ch�i t�i v�ng 1 <pic=92>")
Talk(2,"lose","<color=cyan> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> Ch�n","T�ch r�i nh� !!!!<color>")
end;
end



function doancup2()
local szTitle = "<npc>Lu�t ch�i ��n gi�n:\n\t<color=green>Ch�n<color>: K�t qu� 5 l�ng c�u l� s� ch�n\n\t<color=blue>L�<color>:   K�t qu� 5 l�ng c�u l� s� l�\n\t<color=yellow>L�u �<color>: C�c l�n quay �i�u l� ng�u nhi�n 100%"
	local tbOpt =
	{
	{"�o�n Ch�n",doanchan02},
                                                                                  {"�o�n L�",doanle02},
	}
	CreateNewSayEx(szTitle, tbOpt)
		
end


function doanchan02()

local x = random(0,20)
local y = random(0,20)
local z = random(0,20)
local w = random(0,20)
local p = random(0,20)

s = x + y + z + w + p

if s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Talk(2,"doancup3","<color=yellow> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> Ch�n","Ti�p v�n th� 3 !!!!")
Msg2SubWorld("<color=cyan>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> Ch�n<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> �i ti�p v�ng 3 <pic=5>")

elseif s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Msg2SubWorld("<color=yellow>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> L� <pic=17><enter><enter>"..GetName().."<color> d�ng cu�c ch�i t�i v�ng 2 <pic=92>")
Talk(2,"lose","<color=cyan> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> L�","T�ch r�i nh� !!!!<color>")
end;
end

function doanle02()

local x = random(0,20)
local y = random(0,20)
local z = random(0,20)
local w = random(0,20)
local p = random(0,20)

s = x + y + z + w + p

if s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Talk(2,"doancup3","<color=yellow> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> L�","Ti�p v�n th� 3 !!!!")

Msg2SubWorld("<color=cyan>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> L�<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> �i ti�p v�ng 3 <pic=5>")

elseif s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Msg2SubWorld("<color=yellow>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> Ch�n <pic=17><enter><enter>"..GetName().."<color> d�ng cu�c ch�i t�i v�ng 2 <pic=92>")
Talk(2,"lose","<color=cyan> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> Ch�n","T�ch r�i nh� !!!!<color>")
end;
end


function doancup3()
local szTitle = "<npc>Lu�t ch�i ��n gi�n:\n\t<color=green>Ch�n<color>: K�t qu� 5 l�ng c�u l� s� ch�n\n\t<color=blue>L�<color>:   K�t qu� 5 l�ng c�u l� s� l�\n\t<color=yellow>L�u �<color>: C�c l�n quay �i�u l� ng�u nhi�n 100%"
	local tbOpt =
	{
	{"�o�n Ch�n",doanchan05},
                                                                                  {"�o�n L�",doanle05},
	}
	CreateNewSayEx(szTitle, tbOpt)
		
end


function doanchan05()

local x = random(0,20)
local y = random(0,20)
local z = random(0,20)
local w = random(0,20)
local p = random(0,20)

s = x + y + z + w + p

if s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Talk(2,"wincup","<color=yellow> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> Ch�n","Hahaha Ch�c M�ng !!!!")
Msg2SubWorld("<color=cyan>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> Ch�n<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> Chi�n Th�ng H�t 3 V�ng <pic=78>")

elseif s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Msg2SubWorld("<color=yellow>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> L� <pic=17><enter><enter>"..GetName().."<color> d�ng cu�c ch�i t�i v�ng 3 <pic=6>")
Talk(2,"lose","<color=cyan> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> L�","T�ch r�i nh� !!!!<color>")
end;
end

function doanle05()

local x = random(0,20)
local y = random(0,20)
local z = random(0,20)
local w = random(0,20)
local p = random(0,20)

s = x + y + z + w + p

if s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Talk(2,"wincup","<color=yellow> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> L�","Hahaha Ch�c M�ng  !!!!")

Msg2SubWorld("<color=cyan>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> L�<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> Chi�n Th�ng 3 V�ng <pic=77>")

elseif s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Msg2SubWorld("<color=yellow>K�t qu� x�c ��a l�n n�y:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>T�ng �i�m <color=yellow>"..s.."<color=green> Ch�n <pic=17><enter><enter>"..GetName().."<color> d�ng cu�c ch�i t�i v�ng 3 <pic=6>")
Talk(2,"lose","<color=cyan> K�t qu� quay l�ng c�u 1 l�: "..x.."\n\tK�t qu� quay l�ng c�u 2 l�: "..y.."\n\tK�t qu� quay l�ng c�u 3 l�: "..z.."\n\tK�t qu� quay l�ng c�u 4 l�: "..w.."\n\tK�t qu� quay l�ng c�u 5 l�: "..p.."\n\t<color=green>T�ng �i�m 5 l�ng c�u l� "..s.." =><color=yellow> Ch�n","T�ch r�i nh� !!!!<color>")
end;
end

function wincup()
tbAwardTemplet:GiveAwardByList({{szName="B�o R��ng Ho�ng Kim",tbProp={6,1,2125,1,1,0},nCount=1,},}, "Ng� H�nh K� Th�ch", 1);
Msg2SubWorld(""..GetName().." <color=yellow>H� combo s�ng b�i 3 v�n li�n ti�p nh�n ���c 1 Ng� H�nh K� Th�ch<color=green> d�ng �� l�c l�i option trang b� HKMP<pic=25>")
end
	