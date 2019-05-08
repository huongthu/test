-- ¸÷ÃÅÅÉ½ÓÒıµÜ×Ó½Å±¾¡¡´äÑÌÃÅ
-- By: Dan_Deng(2003-10-27)
-- Update: Dan_Deng(2004-05-25) Ìå·ş¼¼ÄÜÈ«¿ªĞŞ¸Ä£¨µ÷ÓÃÍâ²¿ÎÄ¼ş·½Ê½£©
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "Thóy Yªn Hoa Sø "

function default_talk()
end

function defection_get()
	Talk(1,"","ChØ cÇn muéi ®Õn thØnh cÇu Thanh HiÓu S­ Th¸i xin chuyÓn qua Thóy Yªn m«n, sau ®ã ®Õn tr×nh kiÕn víi Do·n Hµm Yªn ch­ëng m«n cña ta th× cã thÓ ®­îc!  Yªn t©m!  Thanh HiÓu S­ Th¸i th«ng t×nh ®¹t lı, sÏ kh«ng lµm khã muéi ®©u! ")
	nt_setTask(6,5*256+10)
	Msg2Player("Muèn gia nhËp Thóy Yªn m«n, chØ cÇn ®Õn xin phĞp Thanh HiÓu S­ Th¸i sau ®ã ®Õn tr×nh kiÕn víi Do·n Hµm Yªn lµ ®­îc!")
	AddNote("Muèn gia nhËp Thóy Yªn m«n, chØ cÇn ®Õn xin phĞp Thanh HiÓu S­ Th¸i sau ®ã ®Õn tr×nh kiÕn víi Do·n Hµm Yªn lµ ®­îc!")
end

function enroll_select()
	UTask_em = nt_getTask(1)
	UTask_cy = nt_getTask(6)
	if ((UTask_em > 5*256) and (UTask_em < 10*256)) then		-- ÒÑ½ÓÁË´äÑÌÈëÃÅÈÎÎñ
		Talk(1,"","L¹i cã thªm 1 ng­êi muèn ®Õn cÇu kinh niÖm phËt! ThËt lµ ®¸ng tiÕc! ")
	elseif (GetSeries() == 2) and (GetCamp() == 0) and (UTask_em < 5*256) and (UTask_cy < 5*256) then		--Ë®Ïµ¡¢Î´Èë¶ëáÒ´äÑÌ
		if (GetLevel() >= 10) then						--µÈ¼¶´ïµ½Ê®¼¶
			Say("Muéi cã muèn gia nhËp Thóy Yªn m«n cña chóng ta kh«ng?", 3, "Gia nhËp Thóy Yªn M«n/go", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","Tr­íc tiªn muéi h·y luyÖn tËp l¹i c¨n b¶n, ®¹t ®Õn <color=Red>cÊp 10<color> chóng ta sÏ lµ tû muéi 1 nhµ! ")
		end
	end		-- ²»ÊÇË®ÏµµÄ¾Í²»ÔÙ¶àËµ»°ÁË¡£
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(154,61)		  				-- ÖØÉúµã
	nt_setTask(6,10*256)						-- Ö±½ÓÈëÃÅ
	SetFaction("cuiyan")      			--Íæ¼Ò¼ÓÈë¶ëáÒÅÉ
	SetCamp(3)
	SetCurCamp(3)
	-- SetRank(31)
	nt_setTask(137,66)
	SetLastFactionNumber(5)
-- Ö±½Ó´¦ÀíÁ÷³Ì
--	nt_setTask(6,80*256)
--	SetRank(67)
--	Msg2Player("»¶Ó­Äã¼ÓÈë´äÑÌÃÅ£¬²âÊÔÖĞÖ±½ÓÑ§»á±¾ÃÅËùÓĞ¼¼ÄÜ¡£")
	-- add_cy(10)			-- µ÷ÓÃskills_table.luaÖĞµÄº¯Êı£¬²ÎÊıÎªÑ§µ½¶àÉÙ¼¶¼¼ÄÜ¡£
	add_cy(70)			-- µ÷ÓÃskills_table.luaÖĞµÄº¯Êı£¬²ÎÊıÎªÑ§µ½¶àÉÙ¼¶¼¼ÄÜ¡£
	-- AddMagic(210, 1)
-- ½áÊø
	Msg2Player("Hoan nghªnh b¹n gia nhËp Thóy Yªn m«n! Trë thµnh Hoa Tú. Häc®­îc Phong Hoa TuyÕt NguyÖt, Phong QuyÓn Tµn TuyÕt")
	AddNote("gia nhËp Thóy Yªn m«n, trë thµnh Hoa Tú ")
	Msg2Faction("cuiyan",GetName().." tõ h«m nay gia nhËp Thóy Yªn m«n. Xin b¸i kiÕn c¸c vŞ s­ tû. Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
	-- NewWorld(154, 403, 1361)			-- ´«µ½ÃÅÅÉÖĞ
AddMagic(336,20)
AddMagic(337,20)
AddMagic(713,20)
AddMagic(210, 1)
SetRank(67)
end;



function return_yes()
	NewWorld(154, 403, 1361)			-- ´«µ½ÃÅÅÉÖĞ
end;

function cy_check_yes()					-- ÓÉ¶ëáÒ¸ÄÀ´¡£¡£¡£ÉĞÎ´ÏàÓ¦¸üĞÂ
	if (GetSeries() ~= 2) then
		Talk(1,"","Ngò hµnh cña ng­¬i kh¸c víi bän ta!  §Õn ®©y lµm g×? H·y lªn diÔn ®µn häc hái thªm!")
	elseif (HaveMagic(91) >= 0) then		-- ×öÍêÁË50¼¶ÈÎÎñ,·ğ¹âÆÕÕÕ
		nt_setTask(1,60*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· cã thÓ ®i nhËn nhiÖm vô xuÊt s­.")
	elseif (HaveMagic(88) >= 0) then		-- ×öÍêÁË40¼¶ÈÎÎñ,²»Ãğ²»¾ø
		nt_setTask(1,50*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· hoµn thµnh nhiÖm vô cÊp 40.")
	elseif (HaveMagic(85) >= 0) then		-- ×öÍêÁË30¼¶ÈÎÎñ,Ò»Ò¶ÖªÇï
		nt_setTask(1,40*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· hoµn thµnh nhiÖm vô cÊp 30.")
	elseif (HaveMagic(82) >= 0) then		-- ×öÍêÁË20¼¶ÈÎÎñ,ËÄÏóÍ¬¹é
		nt_setTask(1,30*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· hoµn thµnh nhiÖm vô cÊp 20.")
	elseif (HaveMagic(77) >= 0) then		-- ×öÍêÁË10¼¶ÈÎÎñ,¶ëÃ¼½£·¨
		nt_setTask(1,20*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· hoµn thµnh nhiÖm vô cÊp 10.")
	else
		nt_setTask(1,10*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· cã thÓ nhËn nhiÖm vô cÊp 10.")
	end
end;

function cy_check_no()
	Say("Muéi l¹i lĞn ®i ch¬i n÷a ­?",2,"Uhm! PhiÒn tû tû ®­a muéi vÒ!/return_yes","Tû cø gi¶ vê nh­ kh«ng thÊy muéi lµ ®­îc råi!/no")
end

function Uworld1000_jiaoyucuiyan()
	nt_setTask(1000,260)
	Msg2Player("§Ö tö tiÕp dÉn Thóy Yªn m«n b¶o b¹n cã thÓ trùc tiÕp ®i gÆp Long Ngò nãi chuyÖn.")
end

function no()
end;
