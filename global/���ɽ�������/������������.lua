-- ÌìÍõ½ÓÒıµÜ×Ó Ä£°å ÌìÍõ½«Áì
-- By: Dan_Deng(2003-10-28) ÓÉÈËÎï¶Ô»°ĞŞ¸Ä¶øÀ´
-- Update: Dan_Deng(2004-05-25) Ìå·ş¼¼ÄÜÈ«¿ªĞŞ¸Ä£¨µ÷ÓÃÍâ²¿ÎÄ¼ş·½Ê½£©
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "Thiªn V­¬ng T­íng LÜnh"

function default_talk()
end

function select()
	UTask_tw = nt_getTask(3)
	UTask_sl = nt_getTask(7)			-- ÔİÊ±²»ÔÊĞíÖØ·µÉÙÁÖÔÙÖØ·µÌìÍõ¡£
	if ((UTask_sl > 5*256) and (UTask_sl < 10*256)) then		-- ÒÑ½ÓÁËÉÙÁÖÈëÃÅÈÎÎñ
		Talk(1,"","Tuy huynh ®Ö gia nhËp ph¸i ThiÕu l©m nh­ng r¶nh rçi vÉn cã thÓ ®Õn Thiªn v­¬ng bang lµm kh¸ch!")
	elseif (GetCamp() == 0) and (GetSeries() == 0) and (UTask_sl < 5*256) and (UTask_tw < 5*256) then		--½ğÏµ¡¢Î´ÈëÉÙÁÖÌìÍõ
		if (GetLevel() >= 10) then					--µÈ¼¶´ïµ½Ê®¼¶
			Say("Gia nhËp bæn bang, chóng ta sÏ lµ huynh ®Ö mét nhµ, häa phóc cïng h­ëng!", 3, "Gia nhËp Thiªn V­¬ng Bang/go", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
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
	-- SetRevPos(59,21)	  				--ÉèÖÃÖØÉúµã
	nt_setTask(3, 10*256)
	SetFaction("tianwang")       			--Íæ¼Ò¼ÓÈëÌìÍõ°ï
	SetCamp(3)
	SetCurCamp(3)
	-- SetRank(43)
	nt_setTask(137,63)
	SetLastFactionNumber(1)
-- Ö±½Ó´¦ÀíÁ÷³Ì
--	nt_setTask(3,80*256)
--	SetRank(69)
--	Msg2Player("»¶Ó­Äã¼ÓÈëÌìÍõ°ï£¬²âÊÔÖĞÖ±½ÓÑ§»á±¾ÃÅËùÓĞ¼¼ÄÜ¡£")
	-- add_tw(10)			-- µ÷ÓÃskills_table.luaÖĞµÄº¯Êı£¬²ÎÊıÎªÑ§µ½¶àÉÙ¼¶¼¼ÄÜ¡£
	add_tw(70)			-- µ÷ÓÃskills_table.luaÖĞµÄº¯Êı£¬²ÎÊıÎªÑ§µ½¶àÉÙ¼¶¼¼ÄÜ¡£
	-- AddMagic(210, 1)
-- ½áÊø
	Msg2Player("Hoan nghªnh b¹n gia nhËp Thiªn V­¬ng bang! H·y khëi ®Çu tõ mét ng­êi ThŞ vÖ!")
	Msg2Player("Häc ®­îc vâ c«ng Kinh L«i Tr¶m, Håi Phong L¹c Nh¹n, Tr¶m Long QuyÕt")
	AddNote("Gia nhËp Thiªn V­¬ng Bang, trë thµnh ThŞ VÖ.")
	bilgoMsg2Fac()
	-- NewWorld(59,1552,3188)			--°ÑÍæ¼Ò´«ËÍµ½ÃÅÅÉÈë¿Ú
AddMagic(322,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(708,20)
AddMagic(210, 1)
SetRank(69)
end;

function bilgoMsg2Fac()
	Msg2Faction(GetFaction(),GetName().." tõ h«m nay gia nhËp Thiªn V­¬ng bang, xin b¸i kiÕn c¸c vŞ huynh ®Ö! Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
end




function return_yes()
	NewWorld(59, 1425, 3472)			--°ÑÍæ¼Ò´«ËÍµ½ÃÅÅÉÈë¿Ú
end;

function tw_check_yes()
	if (GetSeries() ~= 0) then
		Talk(1,"","Ngò hµnh cña ng­¬i kh¸c hÖ Kim víi bän ta! §Õn ®©y lµm g×? H·y lªn diÔn ®µn häc hái ®i!")
	elseif (HaveMagic(41) >= 0) then		-- ×öÍêÁË50¼¶ÈÎÎñ,ÑªÕ½°Ë·½
		nt_setTask(3,60*256)
		Talk(1,"","Ta ®· phôc håi l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i! B©y giê ng­¬i cã thÓ ®i nhËn nhiÖm vô xuÊt s­ ")
	elseif (HaveMagic(37) >= 0) then		-- ×öÍêÁË40¼¶ÈÎÎñ,ÆÃ·çÕ¶
		nt_setTask(3,50*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· hoµn thµnh nhiÖm vô cÊp 40.")
	elseif (HaveMagic(36) >= 0) then		-- ×öÍêÁË30¼¶ÈÎÎñ,ÌìÍõÕ½Òâ
		nt_setTask(3,40*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· hoµn thµnh nhiÖm vô cÊp 30.")
	elseif (HaveMagic(33) >= 0) then		-- ×öÍêÁË20¼¶ÈÎÎñ,¾²ĞÄ¾÷
		nt_setTask(3,30*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· hoµn thµnh nhiÖm vô cÊp 20.")
	elseif (HaveMagic(23) >= 0) then		-- ×öÍêÁË10¼¶ÈÎÎñ,ÌìÍõÇ¹·¨
		nt_setTask(3,20*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· hoµn thµnh nhiÖm vô cÊp 10.")
	else
		nt_setTask(3,10*256)
		Talk(1,"","Ta ®· chØnh lı l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i. Ng­¬i ®· cã thÓ nhËn nhiÖm vô cÊp 10.")
	end
end

function tw_check_no()
	Say("Huynh ®Ö! Cã muèn ta ®­a vÒ ®¶o kh«ng?",2,"§­îc! §a t¹ huynh ®µi!/return_yes","Kh«ng cÇn ®©u! §a t¹!  /return_no")
end


function Uworld1000_jiaoyutianwang()
	nt_setTask(1000,260)
	Msg2Player("§Ö tö tiÕp dÉn Thiªn V­¬ng b¶o b¹n ®· lµ ®Ö tö cña bang ph¸i, cã thÓ trùc tiÕp ®i gÆp Long Ngò nãi chuyÖn.")
end


function no()
end;


