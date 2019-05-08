-- ÌÆÃÅ½ÓÒıµÜ×Ó Ä£°å ÌÆÃÅÊÌÎÀ
-- By: Dan_Deng(2003-10-28) ÓÉÈËÎï¶Ô»°ĞŞ¸Ä¶øÀ´
-- Update: Dan_Deng(2004-05-25) Ìå·ş¼¼ÄÜÈ«¿ªĞŞ¸Ä£¨µ÷ÓÃÍâ²¿ÎÄ¼ş·½Ê½£©
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "§­êng M«n ThŞ vÖ "

function default_talk()
end

function select()
	UTask_tm = nt_getTask(2)
	UTask_wu = nt_getTask(10)
	if ((UTask_wu > 5*256) and (UTask_wu < 10*256)) then		-- ÒÑ½ÓÁËÎå¶¾ÈëÃÅÈÎÎñ
		Talk(1,"","Tµi hoa tuÊn kiÖt nh­ ng­¬i, l¹i ®i gia nh©p Ngò §éc gi¸o.ChËc! §¸ng tiÕc! §¸ng tiÕc!")
	elseif (GetSeries() == 1) and (GetCamp() == 0) and (UTask_wu < 5*256) and (UTask_tm < 5*256) then		--Ä¾Ïµ¡¢Î´ÈëÎå¶¾ÌÆÃÅ
		if (GetLevel() >= 10) then						--µÈ¼¶´ïµ½Ê®¼¶
			Say("Bæn m«n ¸m khİ ®· lõng danh thiªn h¹. C¹m bÉy thuËt còng khiÕn vâ l©m nhiÒu phen khiÕp vİa. Ng­¬i cã muèn t×m hiÓu mét vµi së tr­êng kh«ng?", 3, "Gia nhËp §­êng M«n/go", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","C¨n b¶n cña ng­¬i cßn kĞm l¾m! H·y ®i luyÖn tËp thªm, bao giê ®Õn <color=Red>cÊp 10<color> l¹i ®Õn t×m ta!")
		end
	end
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(25,15)	 				--ÉèÖÃÖØÉúµã
	nt_setTask(2, 10*256)
	SetFaction("tangmen")      				--Íæ¼Ò¼ÓÈëÌÆÃÅ
	SetCamp(3)
	SetCurCamp(3)
	-- SetRank(25)
	nt_setTask(137,62)
	SetLastFactionNumber(2)
-- Ö±½Ó´¦ÀíÁ÷³Ì
--	nt_setTask(2,80*256)
--	SetRank(76)
--	Msg2Player("»¶Ó­Äã¼ÓÈëÌÆÃÅ£¬²âÊÔÖĞÖ±½ÓÑ§»á±¾ÃÅËùÓĞ¼¼ÄÜ¡£")
	-- add_tm(10)			-- µ÷ÓÃskills_table.luaÖĞµÄº¯Êı£¬²ÎÊıÎªÑ§µ½¶àÉÙ¼¶¼¼ÄÜ¡£
	add_tm(70)			-- µ÷ÓÃskills_table.luaÖĞµÄº¯Êı£¬²ÎÊıÎªÑ§µ½¶àÉÙ¼¶¼¼ÄÜ¡£
	-- AddMagic(210, 1)
-- ½áÊø
	Msg2Player("Hoan nghªnh b¹n gia nhËp §­êng m«, trë thµnh T¹p dŞch! Häc ®­îc vâ c«ng Tİch LŞch §¬n")
	AddNote("Gia nhËp §­êng M«n, trë thµnh T¹p dŞch.")
	Msg2Faction("tangmen",GetName().." tõ h«m nay gia nhËp §­êng M«n, xin b¸i kiÕn c¸c vŞ huynh tû. Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
	-- NewWorld(25, 3982, 5235)				--°ÑÍæ¼Ò´«ËÍµ½ÃÅÅÉÈë¿Ú
AddMagic(302,20)
AddMagic(342,20)
AddMagic(339,20)
AddMagic(710,20)
AddMagic(351)
AddMagic(210, 1)
SetRank(76)
end;




function return_yes()
	NewWorld(25, 3982, 5235)			--°ÑÍæ¼Ò´«ËÍµ½ÃÅÅÉÈë¿Ú
end;

function tm_check_yes()
	if (GetSeries() ~= 1) then
		Talk(1,"","Ng­¬i kh«ng thuéc nhãm Ngò hµnh cña ta, ®Õn ®©y lµm g×? H·y lªn diÔn ®µn häc hái thªm ®i")
	elseif (HaveMagic(58) >= 0) then		-- ×öÍêÁË50¼¶ÈÎÎñ,ÌìÂŞµØÍø
		nt_setTask(2,60*256)
		Talk(1,"","Ta ®· phôc håi l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i! B©y giê ng­¬i cã thÓ ®i nhËn nhiÖm vô xuÊt s­ ")
	elseif (HaveMagic(54) >= 0) then		-- ×öÍêÁË40¼¶ÈÎÎñ,ÂşÌì»¨Óê
		nt_setTask(2,50*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· hoµn thµnh nhiÖm vô cÊp 40.")
	elseif (HaveMagic(50) >= 0) then		-- ×öÍêÁË30¼¶ÈÎÎñ,×·ĞÄ¼ı
		nt_setTask(2,40*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· hoµn thµnh nhiÖm vô cÊp 30.")
	elseif (HaveMagic(47) >= 0) then		-- ×öÍêÁË20¼¶ÈÎÎñ,¶á»êïÚ
		nt_setTask(2,30*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· hoµn thµnh nhiÖm vô cÊp 20.")
	elseif (HaveMagic(43) >= 0) then		-- ×öÍêÁË10¼¶ÈÎÎñ,ÌÆÃÅ°µÆ÷
		nt_setTask(2,20*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· hoµn thµnh nhiÖm vô cÊp 10.")
	else
		nt_setTask(2,10*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· cã thÓ nhËn nhiÖm vô cÊp 10.")
	end
end;

function tm_check_no()
	Say("M«n chñ ph¸i ng­¬i ®Õn ®©y lµm g×??",2,"Xin ®­a t¹i h¹ vÒ Tæng ®µn!/return_yes","Ta ph¶i ®i lµm viÖc kh¸c ®©y/return_no")
end

function Uworld1000_jiaoyutangmen()
	nt_setTask(1000,260)
	Msg2Player("§Ö tö tiÕp dÉn §­êng M«n b¶o b¹n ®· lµ ®Ö tö cña m«n ph¸i, cã thÓ trùc tiÕp ®i gÆp Long Ngò nãi chuyÖn.")
end

function no()
end;
