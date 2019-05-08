-- ¸÷ÃÅÅÉ½ÓÒıµÜ×Ó½Å±¾¡¡Ø¤°ï
-- By: Dan_Deng(2003-10-27)
-- Update: Dan_Deng(2004-05-25) Ìå·ş¼¼ÄÜÈ«¿ªĞŞ¸Ä£¨µ÷ÓÃÍâ²¿ÎÄ¼ş·½Ê½£©
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
npc_name = "§Ö tö 3 tói C¸i Bang "

function default_talk()
end

function defection_get()
	Talk(1,"","NÕu ®· cã ı hèi c¶i, h·y ®Õn gÆp Hoµng Nhan Hïng LiÖt ®Ó xin ly gi¸o, sau ®ã ®Õn diÖn kiÕn Bang chñ Hµ Nh©n Ng· ®Ó xin nhËp m«n")
	nt_setTask(8,5*256+10)
	Msg2Player("NÕu muèn gia nhËp C¸i bang, h·y ®Õn gÆp Hoµn Nhan Hïng LiÖt ®Ó xin ly gi¸o, sau ®ã ®Õn diÖn kiÕn Bang chñ Hµ Nh©n Ng· ®Ó xin nhËp m«n")
	AddNote("NÕu muèn gia nhËp C¸i bang, h·y ®Õn gÆp Hoµn Nhan Hïng LiÖt ®Ó xin ly gi¸o, sau ®ã ®Õn diÖn kiÕn Bang chñ Hµ Nh©n Ng· ®Ó xin nhËp m«n")
end

function defection_no()
	Talk(1,"","X­a nay Thµnh v­¬ng b¹i khÊu, cßn nãi g× ®Õn chuyÖn ®óng sai?! C¸i bang cã lo¹i ®Ö tö cè chÊp nh­ ng­¬i, sím muén g× còng th©n b¹i danh liÖt!")
end

function enroll_select()
	UTask_gb = nt_getTask(8)
	UTask_tr = nt_getTask(4)
	if ((UTask_tr > 5*256) and (UTask_tr < 10*256)) then		-- ÒÑ½ÓÁËÌìÈÌÈëÃÅÈÎÎñ
		Talk(1,"","C¸i Bang vµ Thiªn NhÉn x­a nay vèn kh«ng ®éi trêi chung! NÕu ng­¬i ®· quyÕt t©m gia nhËp Thiªn NhÉn, ta kh«ng cßn g× ®Ó nãi!")
	elseif (GetSeries() == 3) and (GetCamp() == 0) and (UTask_tr < 5*256) and (UTask_gb < 5*256) then		--»ğÏµ¡¢Î´ÈëÌìÈÌØ¤°ï
		if (GetLevel() >= 10) then						--µÈ¼¶´ïµ½Ê®¼¶
			Say("Cã høng thó gia nhËp C¸i bang kh«ng? Mäi ng­êi cã c¬m cïng ¨n, cã r­îu cïng uèng!", 3, "Gia NhËp C¸i bang/go", "§Ó ta suy nghÜ kü l¹i xem/no","T×m hiÓu tinh hoa vâ nghÖ c¸c m«n ph¸i/Uworld1000_knowmagic")
		else
			Talk(1,"","C¨n b¶n cña ng­¬i cßn kĞm l¾m! H·y ®i luyÖn tËp thªm, bao giê ®Õn cÊp 10 l¹i ®Õn t×m ta!")
		end
	end		-- ²»ÊÇ»ğÏµµÄ¾Í²»ÔÙ¶àËµ»°ÁË¡£
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	-- SetRevPos(115,53)		  			--µÈ´ıÌá¹©ÖØÉúµã
	nt_setTask(8, 10*256)				-- Ö±½ÓÈëÃÅ
	SetFaction("gaibang")       			--Íæ¼Ò¼ÓÈëÃÅÅÉ
	SetCamp(1)
	SetCurCamp(1)
	-- SetRank(37)
	nt_setTask(137,68)
	SetLastFactionNumber(6)
-- Ö±½Ó´¦ÀíÁ÷³Ì
--	nt_setTask(8,80*256)
--	SetRank(78)
--	Msg2Player("»¶Ó­Äã¼ÓÈëØ¤°ï£¬²âÊÔÖĞÖ±½ÓÑ§»á±¾ÃÅËùÓĞ¼¼ÄÜ¡£")
	-- add_gb(10)			-- µ÷ÓÃskills_table.luaÖĞµÄº¯Êı£¬²ÎÊıÎªÑ§µ½¶àÉÙ¼¶¼¼ÄÜ¡£
	add_gb(70)			-- µ÷ÓÃskills_table.luaÖĞµÄº¯Êı£¬²ÎÊıÎªÑ§µ½¶àÉÙ¼¶¼¼ÄÜ¡£
	-- AddMagic(210, 1)
-- ½áÊø
	Msg2Player("Hoan nghªnh b¹n gia nhËp C¸i bang, trë thµnh §Ö tö kh«ng tói! Häc ®­îc KiÕn Nh©n ThÇn Thñ, Diªn M«n Th¸c B¸t")
	AddNote("Gia nhËp C¸i bang, trë thµnh §Ö tö kh«ng tói.")
	Msg2Faction("gaibang",GetName().." Tõ h«m nay gia nhËp C¸i bang! Xin b¸i kiÕn c¸c vŞ s­ huynh s­ tû! Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())
	-- NewWorld(115, 1501, 3672)			--°ÑÍæ¼Ò´«ËÍµ½ÃÅÅÉÈë¿Ú
AddMagic(359,20)
AddMagic(357,20)
AddMagic(714,20)
AddMagic(210, 1)
SetRank(78)
end;




function return_yes()
	NewWorld(115, 1501, 3672)			--°ÑÍæ¼Ò´«ËÍµ½ÃÅÅÉÈë¿Ú
end;

function gb_check_yes()			-- °´¼¼ÄÜÈ·¶¨ÈÎÎñ±äÁ¿µÄ¼ì²é¡£¡£¡£ÉĞÎ´ÏàÓ¦¸üĞÂ
	if (GetSeries() ~= 2) then
		Talk(1,"","Ngò hµnh cña ng­¬i kh¸c hÖ Háa víi bän ta!  §Õn ®©y lµm g×? H·y lªn diÔn ®µn häc hái ®i!")
	elseif (HaveMagic(91) >= 0) then		-- ×öÍêÁË50¼¶ÈÎÎñ,·ğ¹âÆÕÕÕ
		nt_setTask(1,60*256)
		Talk(1,"","Ta ®· phôc håi l¹i tr¹ng th¸i nhiÖm vô cña ng­¬i! B©y giê ng­¬i cã thÓ ®i nhËn nhiÖm vô xuÊt s­ ")
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

function gb_check_no()
	Say("Cã lêi g× muèn nãi víi bang chñ kh«ng? Hay muèn ta ®­a vÒ Tæng ®µn?",2,"Xin ®­a t¹i h¹ vÒ Tæng ®µn!/return_yes","Xin chuyÓn dïm lêi hái th¨m s­ phô /no")
end

function Uworld1000_jiaoyugaibang()
	nt_setTask(1000,260)
	Msg2Player("Ng­¬i ®· lµ ®Ö tö cña bæn bang, kh«ng cÇn ®i n÷a, cã thÓ trùc tiÕp gÆp Long Ngò nãi chuyÖn.")
end

function no()
end;
