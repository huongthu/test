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
local szTitle = "<npc><enter><color=cyan>Cña lµm ra kh«ng bao giê ¨n hÕt<enter>Cña cê b¹c khi chÕt ch¼ng mang theo<enter>Cã mÊy ai giµu b»ng nghÒ ®¸nh b¹c<enter>ChØ cã ng­êi s¹c nghiÖp bëi ®am mª<enter>§· biÕt d¹i mµ vÉn lao vµo ®ã<enter>§Ó cho ng­êi chia sÎ tói tiÒn riªng<enter>§«i lÇn may ¨n ®­îc vµi ba v¸n<enter>§ªm tiªu xµi phung phÝ chèn ®am mª<enter>Nh­ng lì ch¼ng may thua cho s¹c m¸u<enter>ThÕ lµ råi vÒ nhµ ®©m giËn dçi<enter>Vî chång lôc dèi lõa nhau<enter>ChØ lµm con c¸i cµng thªm sÇu.....<color>"
		local Opt = 
		{	
			--{"Xãc §Üa §æi Kú Th¹ch",xockythachdia},
			{"BÇu Cua",baucuaok},
			{"Xãc §Üa",xocdia},
			--{"§ç xóc x¾c",xucxac_anxu},
			--{"L« ®Ò B¾c Nam (tÝnh kÕt qu¶ theo ®µi)",lodebacnam},
			--{"Quy ®Þnh vÒ ®æ xóc x¾c",quydinh},
			{"KÕt Thóc Cuéc §èi Tho¹i",cane},
		}
		CreateNewSayEx(szTitle,Opt)
end

function xucxac_anxu()	
	if (IsCaptain() ~= 1) then
		local tbarytalk ={
			"<dec><npc>Xin Lçi ! §¹i HiÖp<color=yellow> "..GetName().."<color> Kh«ng ph¶i lµ <color=green>§éi Tr­ëng<color> Kh«ng thÓ <color=Cyan>§æ Xóc X¾c<color>",
			"BiÕt råi/NoChoice",
		}
		CreateTaskSay(tbarytalk)
		return 1
	end
	if (GetTeamSize() < 2) then
		local tbarytalk ={
			"<dec><npc>Tæ ®éi tham gia <color=Cyan>§æ Xóc X¾c<color> cÇn Ýt nhÊt <color=red> 3 Thµnh Viªn<color> trë lªn . HiÖn t¹i sè ng­êi trong tæ ®éi kh«ng phï hîp yªu cÇu.",
			"BiÕt råi/NoChoice",
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
			local str = "<color=green>Thµnh viªn <color=yellow>"..GetName().."<color> trong tæ ®éi kh«ng ®ñ <color=yellow>3 xu<color>, kh«ng thÓ ®æ xóc x¾c."
			Msg2Team(str)
			local tbarytalk ={
				"<dec><npc><color=Cyan>"..GetName().."<color> hÕt tiÒn råi k×a mµy ! N¹p thÎ ®i nhÐ .",
				"BiÕt råi/NoChoice",
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
			local str = "<color=green>"..value[1].." <color>§æ xóc x¾c <color=cyan>"..value[2].." ®iÓm<color>."
			if value[3] == 0 then
				str = "<color=yellow>"..value[1].."<color> t¹i h¹ kh« m¸u xin bá qua v¸n nµy <pic=10>"
			elseif value[3] == 2 then
				if value[4] == 1 then
					if oldplayindex == value[5] and nSeries == 1 and ndouble == 1 then
						--¼ÇÂ¼log
						if nGenre == 6 and nDetial == 1 and nPart == 1606 then
							--YDBZ_sdl_writeLog("V­ît ¶i b¶o tµng viªm ®Õ","Trong qu¸ tr×nh v­ît ¶i thu ®­îc 1 Viªm §Õ ®å ®»ng")
						end	
						if nGenre == 6 and nDetial == 1 and nPart == 1605 then
							--YDBZ_sdl_writeLog("V­ît ¶i b¶o tµng viªm ®Õ","Trong lóc v­ît ¶i thu ®­îc 1 h×nh ném")
						end			
					end
					str = str..format("<enter><enter><color=yellow><pic=126><pic=58> <color=pink>"..GetName().." <color=yellow>Hèt B¹c. <enter><color=green> Xin chóc mõng <pic=48><pic=26><pic=120>")
				end
				bAllGiveUp = 0
			end
			PlayerIndex = oldplayindex
			Msg2Player(str)
		end
	end
	if bAllGiveUp == 1 then
		Msg2Player("TÊt c¶ ng­êi ch¬i ®Òu hñy bá råi")
	elseif nSize ~= getn(t) then
		Msg2Player("Ng­êi ch¬i kh¸c v× qu¸ h¹n thêi gian, nªn tÝnh lµ hñy bá")
	end
end

function quydinh()
		local tbarytalk ={
			"<dec><npc>Xin chµo !<color=yellow> "..GetName().."<color><enter><color=Cyan>§éi tr­ëng míi cã quyÒn ®æ xóc x¾c<enter>Mçi thµnh viªn trong nhãm ph¶i cã 3 xu<enter>§æ xóc x¾c tõ 1 ®Õn 100 ®iÓm<enter>Ai cã sè ®iÓm cao nhÊt sÏ th¾ng<enter>Mçi v¸n ta xin 1 xu tiÒn b¶o kª sßng<color>",
			"BiÕt råi/NoChoice",
		}
		CreateTaskSay(tbarytalk)
		return 1
end

----------------------------------------------Xoc Dia----------------------------------------------------

function xocdia()
Say("<color=green>Chñ sßng b¹c<color>: C¸c h¹ ®o¸n ®óng 2 lÇn sÏ dµnh chiÕn th¾ng",2,"Oke ch¬i /doanchanle0","Th«i ®õng lõa ta")  
end;

function doanchanle0()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
i = 1
if nSilverCount >= i then 
ConsumeEquiproomItem(1,4,417,1,1)
doanchanle()
else
Talk(1,"","<color=pink>§¹i gia cø ®ïa, ngµi kh«ng mang ®ñ 1 <color=gold>TiÒn §ång<color> råi k×a<color>!") 
end;
end


function doanchanle()
local szTitle = "<npc>LuËt ch¬i ®¬n gi¶n:\n\t<color=green>Ch½n<color>: KÕt qu¶ 5 lång cÇu lµ sè ch¼n\n\t<color=blue>LÎ<color>:   KÕt qu¶ 5 lång cÇu lµ sè lÎ\n\t<color=yellow>L­u ý<color>: C¸c lÇn quay ®iÒu lµ ngÉu nhiªn 100%"
	local tbOpt =
	{
		{"§Æt Ch½n",doanchan1},
                                      {"§Æt LÎ",doanle1},
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
Talk(2,"doanchanle2","<color=yellow> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> Ch½n","TiÕp v¸n thø 2 !!!!")

--Msg2SubWorld("<color=cyan>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> Ch½n<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> Th¾ng Sßng Bµi <pic=108>")

elseif s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Msg2SubWorld("<color=yellow>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> LÎ <pic=17><enter><enter>"..GetName().."<color> dõng cuéc ch¬i <pic=92>")
Talk(2,"lose","<color=cyan> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> LÎ","T¹ch råi nhÐ !!!!<color>")
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
Talk(2,"doanchanle2","<color=yellow> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> LÎ","TiÕp v¸n thø 2 !!!!")

--Msg2SubWorld("<color=cyan>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> LÎ<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> Th¾ng Sßng Bµi <pic=108>")

elseif s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Msg2SubWorld("<color=yellow>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> Ch½n <pic=17><enter><enter>"..GetName().."<color> dõng cuéc ch¬i <pic=92>")
Talk(2,"lose","<color=cyan> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> Ch½n","T¹ch råi nhÐ !!!!<color>")
end;
end





function doanchanle2()
local szTitle = "<npc><color=cyan>Chñ Sßng B¹c:<color>LuËt ch¬i ®¬n gi¶n:\n\t<color=green>Ch½n<color>: KÕt Qu¶ 4 Lång CÇu Lµ Sè Ch¼n\n\t<color=blue>LÎ<color>:   KÕt Qu¶ 4 Lång CÇu Lµ Sè LÎ\n\t<color=yellow>L­u ý<color>: C¸c LÇn Quay §iÒu Lµ NgÉu Nhiªn 100%"
	local tbOpt =
	{
		{"§Æt ch¼n",doanvantai2},
                                       {"§Æt lÎ",doanvansiu2},
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
Talk(2,"winok","<color=cyan> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> Ch½n","Winer  !!!!")

--Msg2SubWorld("<color=cyan>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> Ch½n<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> Th¾ng Sßng Bµi <pic=108>")

elseif s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Msg2SubWorld("<color=cyan>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> LÎ <pic=17><enter><enter>"..GetName().."<color> dõng cuéc ch¬i <pic=92>")
Talk(2,"lose","<color=cyan> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> LÎ","Lost !!!!<color>")
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
Talk(2,"winok","<color=cyan> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> LÎ","Winer  !!!!")

--Msg2SubWorld("<color=cyan>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> LÎ<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> Th¾ng Sßng Bµi <pic=108>")

elseif s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Msg2SubWorld("<color=cyan>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> Ch½n <pic=17><enter><enter>"..GetName().."<color> dõng cuéc ch¬i <pic=92>")
Talk(2,"lose","<color=cyan> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> Ch½n","Lost !!!!<color>")
end;
end

function winok()
tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1,0},nCount=2,},}, "Xu", 1);
Msg2SubWorld(""..GetName().." <color=yellow>H¹ sßng bµi 2 v¸n combo liªn tiÕp dµnh th¾ng lîi nhËn ®­îc<color=green> 2Xu<pic=25>")
end


function baucuaok()
baucuacacop()
end

function lodebacnam()
mainlode()
end


---------------------------------------------------------


function xockythachdia()
local szTitle = "<npc><enter><color=cyan>Cã mÊy ai giµu b»ng nghÒ ®¸nh b¹c<enter>ChØ cã ng­êi s¹c nghiÖp bëi ®am mª<enter>§· biÕt d¹i mµ vÉn lao vµo ®ã<enter>§Ó cho ng­êi chia sÎ tói tiÒn riªng<enter>§«i lÇn may ¨n ®­îc vµi ba v¸n<enter>§ªm tiªu xµi phung phÝ chèn ®am mª<enter>Nh­ng lì ch¼ng may thua cho s¹c m¸u<enter>ThÕ lµ råi vÒ nhµ ®©m giËn dçi<enter>Vî chång lôc dèi lõa nhau<enter>ChØ lµm con c¸i cµng thªm sÇu.....<color>"
		local Opt = 
		{	
			{"§o¸n Ch¼n LÎ",batdauchoine},
			{"KÕt Thóc Cuéc §èi Tho¹i",cane},
		}
		CreateNewSayEx(szTitle,Opt)
end

function quydinhne()
		local tbarytalk ={
			"<dec><npc>Xin chµo !<color=yellow> "..GetName().."<color> Quy t¾c ch¬i rÊt ®¬n gi¶n ta sÏ cho xæ 5 lång cÇu ngÉu nhiªn tuyÖt ®èi nÕu ng­¬i ®o¸n tróng 5 lÇn liªn tiÕp ta sÏ tÆng ng­¬i 1 b¶o r­¬ng hoµng kim tù chän 7 ngµy.L­u ý mçi 1 v¸n ch¬i tèn 1 xu.NÕu ng­êi ®o¸n sai tÝnh l¹i tõ ®Çu",
			"BiÕt råi/NoChoice",
		}
		CreateTaskSay(tbarytalk)
		return 1
end


function batdauchoine()
Say("<color=green>Thö Tµi §o¸n<color>: C¸c h¹ ®o¸n ®óng 3 lÇn sÏ dµnh chiÕn th¾ng vµ nhËn ®­îc Ngò Hµnh Kú Th¹ch",2,"Oke ch¬i /doancup0","Th«i ®õng lõa ta")  
end;

function doancup0()
local nSilverCount = CalcEquiproomItemCount(4, 417,1,1) ;
i = 2
if nSilverCount >= i then 
ConsumeEquiproomItem(2,4,417,1,1)
doancup1()
else
Talk(1,"","<color=pink>§¹i gia cø ®ïa, ngµi kh«ng mang ®ñ 2 <color=gold>TiÒn §ång<color> råi k×a<color>!") 
end;
end


function doancup1()
local szTitle = "<npc>LuËt ch¬i ®¬n gi¶n:\n\t<color=green>Ch½n<color>: KÕt qu¶ 5 lång cÇu lµ sè ch¼n\n\t<color=blue>LÎ<color>:   KÕt qu¶ 5 lång cÇu lµ sè lÎ\n\t<color=yellow>L­u ý<color>: C¸c lÇn quay ®iÒu lµ ngÉu nhiªn 100%"
	local tbOpt =
	{
	{"§o¸n Ch½n",doanchan01},
                                                                                  {"§o¸n LÎ",doanle01},
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
Talk(2,"doancup2","<color=yellow> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> Ch½n","TiÕp v¸n thø 2 !!!!")
Msg2SubWorld("<color=cyan>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> Ch½n<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> §i tiÕp vßng 2 <pic=0>")

elseif s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Msg2SubWorld("<color=yellow>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> LÎ <pic=17><enter><enter>"..GetName().."<color> dõng cuéc ch¬i t¹i vßng 1 <pic=92>")
Talk(2,"lose","<color=cyan> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> LÎ","T¹ch råi nhÐ !!!!<color>")
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
Talk(2,"doancup2","<color=yellow> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> LÎ","TiÕp v¸n thø 2 !!!!")

Msg2SubWorld("<color=cyan>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> LÎ<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> §i tiÕp vßng 2 <pic=0>")

elseif s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Msg2SubWorld("<color=yellow>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> Ch½n <pic=17><enter><enter>"..GetName().."<color> dõng cuéc ch¬i t¹i vßng 1 <pic=92>")
Talk(2,"lose","<color=cyan> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> Ch½n","T¹ch råi nhÐ !!!!<color>")
end;
end



function doancup2()
local szTitle = "<npc>LuËt ch¬i ®¬n gi¶n:\n\t<color=green>Ch½n<color>: KÕt qu¶ 5 lång cÇu lµ sè ch¼n\n\t<color=blue>LÎ<color>:   KÕt qu¶ 5 lång cÇu lµ sè lÎ\n\t<color=yellow>L­u ý<color>: C¸c lÇn quay ®iÒu lµ ngÉu nhiªn 100%"
	local tbOpt =
	{
	{"§o¸n Ch½n",doanchan02},
                                                                                  {"§o¸n LÎ",doanle02},
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
Talk(2,"doancup3","<color=yellow> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> Ch½n","TiÕp v¸n thø 3 !!!!")
Msg2SubWorld("<color=cyan>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> Ch½n<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> §i tiÕp vßng 3 <pic=5>")

elseif s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Msg2SubWorld("<color=yellow>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> LÎ <pic=17><enter><enter>"..GetName().."<color> dõng cuéc ch¬i t¹i vßng 2 <pic=92>")
Talk(2,"lose","<color=cyan> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> LÎ","T¹ch råi nhÐ !!!!<color>")
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
Talk(2,"doancup3","<color=yellow> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> LÎ","TiÕp v¸n thø 3 !!!!")

Msg2SubWorld("<color=cyan>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> LÎ<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> §i tiÕp vßng 3 <pic=5>")

elseif s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Msg2SubWorld("<color=yellow>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> Ch½n <pic=17><enter><enter>"..GetName().."<color> dõng cuéc ch¬i t¹i vßng 2 <pic=92>")
Talk(2,"lose","<color=cyan> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> Ch½n","T¹ch råi nhÐ !!!!<color>")
end;
end


function doancup3()
local szTitle = "<npc>LuËt ch¬i ®¬n gi¶n:\n\t<color=green>Ch½n<color>: KÕt qu¶ 5 lång cÇu lµ sè ch¼n\n\t<color=blue>LÎ<color>:   KÕt qu¶ 5 lång cÇu lµ sè lÎ\n\t<color=yellow>L­u ý<color>: C¸c lÇn quay ®iÒu lµ ngÉu nhiªn 100%"
	local tbOpt =
	{
	{"§o¸n Ch½n",doanchan05},
                                                                                  {"§o¸n LÎ",doanle05},
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
Talk(2,"wincup","<color=yellow> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> Ch½n","Hahaha Chøc Mõng !!!!")
Msg2SubWorld("<color=cyan>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> Ch½n<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> ChiÕn Th¾ng HÕt 3 Vßng <pic=78>")

elseif s==1 or s==3 or s==5 or s==7 or s==9 or s==11 or s==13 or s==15 or s==17 or s==19 or s==21 or s==23 or s==25 or s==27 or s==29 or s==31 or s==33 or s==35 or s==37 or s==39 or s==41 or s==43 or s==45 or s==47 or s==49 or s==51 or s==53 or s==55 or s==57 or s==59 or s==61 or s==63 or s==65 or s==67 or s==69 or s==71 or s==73 or s==75 or s==77 or s==79 or s==81 or s==83 or s==85 or s==87 or s==89 or s==91 or s==93 or s==95 or s==97 or s==99 then
Msg2SubWorld("<color=yellow>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> LÎ <pic=17><enter><enter>"..GetName().."<color> dõng cuéc ch¬i t¹i vßng 3 <pic=6>")
Talk(2,"lose","<color=cyan> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> LÎ","T¹ch råi nhÐ !!!!<color>")
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
Talk(2,"wincup","<color=yellow> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> LÎ","Hahaha Chøc Mõng  !!!!")

Msg2SubWorld("<color=cyan>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=58><pic=36>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> LÎ<pic=48><pic=104><enter><enter>"..GetName().."<color=pink> ChiÕn Th¾ng 3 Vßng <pic=77>")

elseif s==0 or s==2 or s==4 or s==6 or s==8 or s==10 or s==12 or s==14 or s==16 or s==18 or s==20 or s==22 or s==24 or s==26 or s==28 or s==30 or s==32 or s==34 or s==36 or s==38 or s==40 or s==42 or s==44 or s==46 or s==48 or s==50 or s==52 or s==54 or s==56 or s==58 or s==60 or s==62 or s==64 or s==66 or s==68 or s==70 or s==72 or s==74 or s==76 or s==78 or s==80 or s==82 or s==84 or s==86 or s==88 or s==90 or s==92 or s==94 or s==96 or s==98 or s==100 then
Msg2SubWorld("<color=yellow>KÕt qu¶ xãc ®Üa lÇn nµy:\n\t<enter><color=yellow> "..x.." + "..y.." + "..z.." + "..w.." + "..p.." <pic=48><pic=14>\n\t<enter><color=cyan>Tæng ®iÓm <color=yellow>"..s.."<color=green> Ch½n <pic=17><enter><enter>"..GetName().."<color> dõng cuéc ch¬i t¹i vßng 3 <pic=6>")
Talk(2,"lose","<color=cyan> KÕt qu¶ quay lång cÇu 1 lµ: "..x.."\n\tKÕt qu¶ quay lång cÇu 2 lµ: "..y.."\n\tKÕt qu¶ quay lång cÇu 3 lµ: "..z.."\n\tKÕt qu¶ quay lång cÇu 4 lµ: "..w.."\n\tKÕt qu¶ quay lång cÇu 5 lµ: "..p.."\n\t<color=green>Tæng ®iÓm 5 lång cÇu lµ "..s.." =><color=yellow> Ch½n","T¹ch råi nhÐ !!!!<color>")
end;
end

function wincup()
tbAwardTemplet:GiveAwardByList({{szName="B¶o R­¬ng Hoµng Kim",tbProp={6,1,2125,1,1,0},nCount=1,},}, "Ngò Hµnh Kú Th¹ch", 1);
Msg2SubWorld(""..GetName().." <color=yellow>H¹ combo sßng bµi 3 v¸n liªn tiÕp nhËn ®­îc 1 Ngò Hµnh Kú Th¹ch<color=green> dïng ®Ó läc l¹i option trang bÞ HKMP<pic=25>")
end
	