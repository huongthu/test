Include("\\script\\task\\system\\task_string.lua")
function main()
 dofile("script/global/sachkynang90.lua")
 local n_fac = GetLastFactionNumber(); 
if (n_fac < 0) then 
Talk(1, "","Gièng nh­ quyÓn s¸ch nµy miªu t¶ chÝnh lµ c¸c m«n ph¸i cao cÊp vâ c«ng , ng­¬i kh«ng cã m«n ph¸i nªn sÏ kh«ng hiÓu ®­îc. "); 
return 1; 
end
if GetLevel()>=80 then
 if n_fac == 0 then
local tbSay = {}
tinsert(tbSay,"V« T­íng Tr¶m./thieulamdao")
tinsert(tbSay,"Hoµnh T¶o Thiªn Qu©n./thieulamcon")
tinsert(tbSay,"§¹t Ma §é Giang./thieulamquyen")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn häc !", getn(tbSay), tbSay)
return 1

elseif n_fac == 1 then
local tbSay = {}
tinsert(tbSay,"Ph¸ Thiªn Tr¶m./thienvuongdao")
tinsert(tbSay,"Truy Phong QuyÕt./thienvuongchuy")
tinsert(tbSay,"Truy Tinh Trôc NguyÖt./thienvuongthuong")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn häc !", getn(tbSay), tbSay)
return 1

elseif n_fac == 2 then
local tbSay = {}
tinsert(tbSay,"B¹o Vò Lª Hoa./baovulehoa")
tinsert(tbSay,"NhiÕp Hån Lo¹n T©m./nhiephontuyetanh")
tinsert(tbSay,"Lo¹n Hoµn KÝch./loanhoankich")
tinsert(tbSay,"C÷u Cung Phi Tinh./cuucungphitinh")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn häc !", getn(tbSay), tbSay)
return 1

elseif n_fac == 3 then
local tbSay = {}
tinsert(tbSay,"HuyÒn ¢m Tr¶m./ngudocdao")
tinsert(tbSay,"¢m Phong Thùc Cèt./ngudocchuong")
tinsert(tbSay,"§o¹n C©n Hñ Cèt./ngudocbua")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn häc !", getn(tbSay), tbSay)
return 1

elseif n_fac == 4 then
local tbSay = {}
tinsert(tbSay,"Tam Nga TÒ TuyÕt./ngamikiem")
tinsert(tbSay,"Phong S­¬ng To¸i ¶nh./ngamichuong")
tinsert(tbSay,"Phæ §é Chóng Sinh./ngamibuff")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn häc !", getn(tbSay), tbSay)
return 1

elseif n_fac == 5 then
local tbSay = {}
tinsert(tbSay,"B¨ng Tung V« ¶nh./thuyyendao")
tinsert(tbSay,"B¨ng T©m Tiªn Tö./thuyyensongdao")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn häc !", getn(tbSay), tbSay)
return 1

elseif n_fac == 6 then
local tbSay = {}
tinsert(tbSay,"Thiªn H¹ V« CÈu./caibangbong")
tinsert(tbSay,"Phi Long T¹i Thiªn./caibangrong")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn häc !", getn(tbSay), tbSay)
return 1

elseif n_fac == 7 then
local tbSay = {}
tinsert(tbSay,"Thiªn Ngo¹i L­u Tinh./thiennhandao")
tinsert(tbSay,"V©n Long KÝch./thiennhankich")
tinsert(tbSay,"NhiÕp Hån Lo¹n T©m./thiennhanbua")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn häc !", getn(tbSay), tbSay)
return 1

elseif n_fac == 8 then
local tbSay = {}
tinsert(tbSay,"Thiªn §Þa V« Cùc./vodangquyen")
tinsert(tbSay,"Nh©n KiÕm Hîp NhÊt./vodangkiem")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn häc !", getn(tbSay), tbSay)
return 1

elseif n_fac == 9 then
tinsert(tbSay,"Ng¹o TuyÕt Tiªu Phong./conlondao")
tinsert(tbSay,"L«i §éng Cöu Thiªn./conlonkiem")
tinsert(tbSay,"Tóy Tiªn T¸ Cèt./conlonbua")
tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän vâ c«ng mµ b¹n muèn häc !", getn(tbSay), tbSay)
return 1

elseif n_fac == 10 then

tinsert(tbSay,"KÕt thóc ®èi tho¹i./no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, Hoa S¬n ph¸i ®· cã bÝ kiÕp cña bæn ph¸i, v× vËy kh«ng thÓ lÜnh ngé ®­îc bÝ kiÕp nµy !", getn(tbSay), tbSay)
return 1
end
else
Talk(1, "", "NghiÒn tíi ngÉm lui, nh­ng còng kh«ng häc ®­îc g× trong ®ã.")
end
end
function thieulamdao()
	if GetTask(80)==0 then
		AddMagic(321,1)
		SetTask(80,GetTask(80)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>V« T­íng Tr¶m<color> .")
end
function thieulamcon()
	if GetTask(81)==0 then
		AddMagic(319,1)
		SetTask(81,GetTask(81)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Hoµnh T¶o Thiªn Qu©n<color> .")
end
function thieulamquyen()
	if GetTask(82)==0 then
		AddMagic(318,1)
		SetTask(82,GetTask(82)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>§¹t Ma §é Giang<color> .")
end
function ngudocchuong()
	if GetTask(83)==0 then
		AddMagic(353,1)
		SetTask(83,GetTask(83)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>¢m Phong Thùc Cèt<color> .")
end
function ngudocdao()
	if GetTask(84)==0 then
		AddMagic(355,1)
		SetTask(84,GetTask(84)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>HuyÒn ¢m Tr¶m<color> .")
end
function ngudocbua()
	if GetTask(85)==0 then
		AddMagic(390,0)
		SetTask(85,GetTask(85)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>§o¹n C©n Hñ Cèt<color> .")
end
function thienvuongdao()
	if GetTask(86)==0 then
		AddMagic(322,1)
		SetTask(86,GetTask(86)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Ph¸ Thiªn Tr¶m<color> .")
end
function thienvuongchuy()
	if GetTask(87)==0 then
		AddMagic(325,1)
		SetTask(87,GetTask(87)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Truy Phong QuyÕt<color> .")
end
function thienvuongthuong()
	if GetTask(88)==0 then
		AddMagic(323,1)
		SetTask(88,GetTask(88)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Truy Tinh Trôc NguyÖt<color> .")
end
function baovulehoa()
	if GetTask(89)==0 then
		AddMagic(302,1)
		SetTask(89,GetTask(89)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>B¹o Vò Lª Hoa<color> .")
end
function  cuucungphitinh()
	if GetTask(90)==0 then
		AddMagic(342,1)
		SetTask(90,GetTask(90)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Cöu Cung Phi Tinh<color> .")
end
function  loanhoankich()
	if GetTask(91)==0 then
		AddMagic(351,0)
		SetTask(91,GetTask(91)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Lo¹n Hoµn KÝch<color> .")
end
function  nhiephontuyetanh()
	if GetTask(92)==0 then
		AddMagic(339,1)
		SetTask(92,GetTask(92)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>NhiÕp Hån NguyÖt ¶nh<color> .")
end
function  ngamikiem()
	if GetTask(93)==0 then
		AddMagic(328,1)
		SetTask(93,GetTask(93)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Tam Nga TÒ TuyÕt <color> .")
end
function  ngamichuong()
	if GetTask(94)==0 then
		AddMagic(380,1)
		SetTask(94,GetTask(94)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Phong S­¬ng To¸i ¶nh <color> .")
end
function  ngamibuff()
	if GetTask(95)==0 then
		AddMagic(332,0)
		SetTask(95,GetTask(95)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Phæ §é Chóng Sinh <color> .")
end
function  thuyyendao()
	if GetTask(96)==0 then
		AddMagic(336,1)
		SetTask(96,GetTask(96)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>B¨ng Tung V« ¶nh <color> .")
end
function  thuyyensongdao()
	if GetTask(97)==0 then
		AddMagic(337,1)
		SetTask(97,GetTask(97)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>B¨ng T©m Tiªn Tö<color> .")
end
function  caibangbong()
	if GetTask(98)==0 then
		AddMagic(359,1)
		SetTask(98,GetTask(98)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Thiªn H¹ V« CÈu<color> .")
end
function  caibangrong()
	if GetTask(99)==0 then
		AddMagic(357,1)
		SetTask(99,GetTask(99)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Phi Long T¹i Thiªn<color> .")
end

function  thiennhandao()
	if GetTask(100)==0 then
		AddMagic(362,1)
		SetTask(100,GetTask(100)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Thiªn Ngo¹i L­u Tinh<color> .")
end
function  thiennhankich()
	if GetTask(101)==0 then
		AddMagic(361,1)
		SetTask(101,GetTask(101)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>V©n Long KÝch<color> .")
end
function  thiennhanbua()
	if GetTask(102)==0 then
		AddMagic(391,1)
		SetTask(102,GetTask(102)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>NhiÕp Hån Lo¹n T©m<color> .")
end
function  vodangquyen()
	if GetTask(103)==0 then
		AddMagic(365,1)
		SetTask(103,GetTask(103)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Thiªn §Þa V« Cùc<color> .")
end
function  vodangkiem()
	if GetTask(104)==0 then
		AddMagic(368,1)
		SetTask(104,GetTask(104)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Nh©n KiÕm Hîp NhÊt<color> .")
end
function  conlondao()
	if GetTask(105)==0 then
		AddMagic(372,1)
		SetTask(105,GetTask(105)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Ng¹o TuyÕt Tiªu Phong<color> .")
end
function  conlonkiem()
	if GetTask(106)==0 then
		AddMagic(375,1)
		SetTask(106,GetTask(106)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>L«i ®éng Cöu Thiªn<color> .")
end
function  conlonbua()
	if GetTask(107)==0 then
		AddMagic(394,0)
		SetTask(107,GetTask(107)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng­¬i ®· häc kü n¨ng nµy råi kh«ng thÓ häc n÷a.")
		return 1;
	end
	Talk(1, "", "§· lÜnh ngé ®­îc kü n¨ng <color=yellow>Tóy Tiªn T¸ Cèt<color> .")
end