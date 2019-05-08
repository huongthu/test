-- ¶ëáÒ½ÓÒıµÜ×Ó Ä£°å ¶ëáÒ½õÒÂÄá
-- By: Dan_Deng(2003-10-28) ÓÉÈËÎï¶Ô»°ĞŞ¸Ä¶øÀ´
-- Update: Dan_Deng(2004-05-25) Ìå·ş¼¼ÄÜÈ«¿ªĞŞ¸Ä£¨µ÷ÓÃÍâ²¿ÎÄ¼ş·½Ê½£©
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "Nga My CÈm Y Ni"

function default_talk()
end

function select()
	UTask_em = nt_getTask(1)
	UTask_cy = nt_getTask(6)
	if ((UTask_cy > 5*256) and (UTask_cy < 10*256)) then		-- ÒÑ½ÓÁË´äÑÌÈëÃÅÈÎÎñ
		Talk(1,"","C« ng­¬i nµy vèn lµ muèn gia nhËp Thóy Yªn m«n! Mçi ng­êi cã chİ h­íng riªng cña m×nh! Ta còng kh«ng miÔn c­ìng! ")
	elseif (GetSeries() == 2) and (GetCamp() == 0) and (UTask_cy < 5*256) and (UTask_em < 5*256) then		--Ë®Ïµ¡¢Î´Èë´äÑÌ¶ëáÒ
		if (GetLevel() >= 10) then						--µÈ¼¶´ïµ½Ê®¼¶
			Say("Gia nhËp Nga My ph¸i, chóng ta sÏ lµ tû muéi 1 nhµ!  Häa phóc cïng h­ëng! ", 3, "Gia nhËp Nga Mi ph¸i/go", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Say("Tr­íc tiªn muéi h·y luyÖn tËp l¹i c¨n b¶n, ®¹t ®Õn <color=Red>cÊp 10<color> chóng ta sÏ lµ tû muéi 1 nhµ! ", 0)		
		end
	end		-- ²»ÊÇË®ÏµµÄ¾Í²»ÔÙ¶àËµ»°ÁË¡£
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(13,13)		  			--ÉèÖÃÖØÉúµã
	nt_setTask(1, 10*256)				-- Ö±½ÓÈëÃÅ
	SetFaction("emei")       			--Íæ¼Ò¼ÓÈë¶ëáÒÅÉ
	SetCamp(1)
	SetCurCamp(1)
	-- SetRank(13)
	nt_setTask(137,61)
	SetLastFactionNumber(4)
-- Ö±½Ó´¦ÀíÁ÷³Ì
--	nt_setTask(1,80*256)
--	SetRank(63)
--	Msg2Player("»¶Ó­Äã¼ÓÈë¶ëáÒÅÉ£¬²âÊÔÖĞÖ±½ÓÑ§»á±¾ÃÅËùÓĞ¼¼ÄÜ¡£")
	-- add_em(10)			-- µ÷ÓÃskills_table.luaÖĞµÄº¯Êı£¬²ÎÊıÎªÑ§µ½¶àÉÙ¼¶¼¼ÄÜ¡£
	add_em(70)			-- µ÷ÓÃskills_table.luaÖĞµÄº¯Êı£¬²ÎÊıÎªÑ§µ½¶àÉÙ¼¶¼¼ÄÜ¡£
	-- AddMagic(210, 1)
-- ½áÊø
	Msg2Player("Hoan nghªnh b¹n gia nhËp Nga Mi ph¸i, trë thµnh Bè Y Ni. Häc ®­îc NhÊt DiÖp Tri Thu, Phiªu TuyÕt Xuyªn V©n")
	AddNote("gia nhËp Nga Mi Ph¸i, trë thµnh Bè Y Ni")
	Msg2Faction("emei",GetName().." tõ h«m nay gia nhËp Nga Mi ph¸i. Xin b¸i kiÕn c¸c vŞ s­ tû. Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
	-- NewWorld(13, 1898, 4978)			--°ÑÍæ¼Ò´«ËÍµ½ÃÅÅÉÈë¿Ú
AddMagic(328,20)
AddMagic(380,20)
AddMagic(712,20)
AddMagic(332)
AddMagic(210, 1)
SetRank(63)
end;


function return_yes()
	NewWorld(13, 1898, 4978)			--°ÑÍæ¼Ò´«ËÍµ½ÃÅÅÉÈë¿Ú
end;

function em_check_yes()
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

function em_check_no()
	Say("TiÓu s­ muéi l¹i xuèng nói ch¬i µ? Cã cÇn ta ®­a vÒ nói kh«ng?",2,"L¹i lµm phiÒn tû tû n÷a råi!/return_yes","Kh«ng cÇn ®©u! §a t¹ S­ tû /return_no")
end

function Uworld1000_jiaoyuemei()
	nt_setTask(1000,260)
	Msg2Player("§Ö tö tiÕp dÉn Nga Mi b¶o b¹n ®· lµ ®Ö tö cña m«n ph¸i, cã thÓ trùc tiÕp gÆp Long Ngò nãi chuyÖn.")
end

function no()
end;
