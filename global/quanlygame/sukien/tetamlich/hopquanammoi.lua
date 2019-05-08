IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

TASKEVENTTET = 900

function main()
	if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y më.",0);
		return 1
	end
local nSubWorldID = GetWorldPos();
if (nSubWorldID ~= 53) then
                                                                                  Say("<color=yellow>ChØ cã thÓ sö dông häp quµ t¹i Ba L¨ng HuyÖn.")
		return 1
	end
	local nTask = GetTask(TASKEVENTTET)
	if nTask >= 1 then
		 Say("Mçi nh©n vËt chØ sö dông tèi ®a 1 hép quµ n¨m míi")
		return 1
	end
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate >= 20190330 then
		Say("Hép quµ ®· hÕt h¹n sö dông.", 0);
		return 1
	end
AddProp(50)
SetTask(900,1)
tbAwardTemplet:GiveAwardByList({{szName="NhÊt Kû",tbProp={6,1,4357,1,0},nCount=1,nExpiredTime=43200 ,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,424},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,425},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,426},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Hoµn Mü",tbProp={0,427},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§¸ May M¾n C1",tbProp={4,1668,1,1,},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§¸ May M¾n C2",tbProp={4,1669,1,1,},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§¸ May M¾n C3",tbProp={4,1670,1,1,},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="TTK",tbProp={6,1,22,1},nCount=25 ,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="VLMT",tbProp={6,1,26,1},nCount=25 ,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="D©y ChuyÒn HM 1",tbProp={4,747,1,1,},nCount=25,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ngäc Béi HM 2",tbProp={4,760,1,1,},nCount=25,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NhÉn Thñy HM 6",tbProp={4,758,1,1,},nCount=25,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NhÉn Háa HM 3",tbProp={4,767,1,1,},nCount=25,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ngäc Béi HC 3",tbProp={4,773,1,1,},nCount=25,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="R­¬ng HKMP",tbProp={6,1,4423,1,1},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="§µo",tbProp={6,1,30373,1,1},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Mai",tbProp={6,1,30374,1,1},nCount=1,},}, "test", 1);


                        local tetamlich = "script/global/bil4i3n/bil4i3n_log/eventamlich2019.log"
	local tetamlich1 = openfile(tetamlich, "a");
	 write(tetamlich1, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Su Dung 1 Hop Qua\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(tetamlich1)
end



function ngaunhienrahk()
local s = random(1,23)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="V« Ma TÈy Ngäc KhÊu",tbProp={0,258},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="V« Gian û Thiªn KiÕm",tbProp={0,250},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="Tª Hoµng Phông Nghi §ao",tbProp={0,265},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Uyªn ¦¬ng Hoµng §ao",tbProp={0,270},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Quang M¹n Vò M·n Thiªn",tbProp={0,295},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="S©m Hoµng Phi Tinh §o¹t Hån",tbProp={0,300},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn §¬n ChØ Phi §ao",tbProp={0,290},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="U Lung Kim Xµ Ph¸t ®¸i",tbProp={0,275},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="Minh ¶o Tµ S¸t §éc NhËn",tbProp={0,280},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==10 then
tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp B«n L«i Toµn Long th­¬ng",tbProp={0,240},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="Ngù Long L­îng Ng©n B¶o ®ao",tbProp={0,245},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==12 then
tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Gi¸ng Ma Giíi ®ao",tbProp={0,230},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="Phôc Ma Tö Kim C«n",tbProp={0,225},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="Méng Long Kim Ti ChÝnh Hång Cµ Sa",tbProp={0,221},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==15 then
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,335},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==16 then
tbAwardTemplet:GiveAwardByList({{szName="CËp Phong Ch©n Vò KiÕm",tbProp={0,340},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==17 then
tbAwardTemplet:GiveAwardByList({{szName="S­¬ng Tinh Thiªn Niªn Hµn ThiÕt",tbProp={0,345},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==18 then
tbAwardTemplet:GiveAwardByList({{szName="Vò ¶o b¾c minh ®¹o qu¸n",tbProp={0,350},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==19 then
tbAwardTemplet:GiveAwardByList({{szName="Ma S¸t Quû Cèc U Minh Th­¬ng",tbProp={0,320},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ To¹i Tinh §ao",tbProp={0,329},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==21 then
tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu Bao tay",tbProp={0,313},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName="Bæng §Þch Kh¸i",tbProp={0,315},nCount=1,nQuality = 1, },}, "test", 1);
end;
if s==23 then
tbAwardTemplet:GiveAwardByList({{szName="H¸m Thiªn Chïy",tbProp={0,235},nCount=1,nQuality = 1, },}, "test", 1);
end;
end





