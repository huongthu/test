Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")

TASKTRONGDONG = 5331


function main(sel)
dofile("script/global/quanlygame/sukien/trongdong/trongdong.lua");
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate >= 20190420 then
		Say("Ho¹t ®éng ®· kÕt thóc, kh«ng thÓ sö dông.", 0);
		return 1;
	end;
if GetLevel() < 50 then
		Say("Ng­êi ch¬i ch­a ®¹t cÊp 50 kh«ng thÓ sö dông event.", 0);
		return 1;
                        end
	local nTask = GetTask(TASKTRONGDONG)
	if nTask > 500 then
		 Say("B¹n ®· max 300 trèng ®ång kh«ng thÓ sö dông tiÕp!")
		return 1
	end
	local nTask = GetTask(TASKTRONGDONG)
	if nTask == 499 then -- max 300 c¸i
--tl_addPlayerExp(30000000)
mocmax()
	end
	 SetTask(TASKTRONGDONG,GetTask(TASKTRONGDONG)+1)
--AddOwnExp(1000000)
Msg2Player("<color=white>B¹n sö dông 1 Trèng §ång.");
--thuongngaunhien()
phanthuongphu()
end




function thuongngaunhien() -- phÇn th­ëng ngÉu nhiªn khi ¨n mçi c¸i trèng
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§¹i hiÖp <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi Sö Dông Trèng §ång><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbthuongitem = {

			{szName = "ck1",tbProp={4,1679,1,1},nCount=1,nRate=0.5,CallBack= _Message,},
			{szName = "ck2",tbProp={4,1680,1,1},nCount=1,nRate=2,CallBack= _Message,},
			{szName = "ck3",tbProp={4,1681,1,1},nCount=1,nRate=2,CallBack= _Message,},
			{szName = "ck4",tbProp={4,1682,1,1},nCount=1,nRate=2,CallBack= _Message,},
			{szName = "ck5",tbProp={4,1683,1,1},nCount=1,nRate=2,CallBack= _Message,},
			{szName = "ck6",tbProp={4,1684,1,1},nCount=1,nRate=1,CallBack= _Message,},
			{szName = "ck7",tbProp={4,1685,1,1},nCount=1,nRate=0.8,CallBack= _Message,},
			{szName = "ck8",tbProp={4,1686,1,1},nCount=1,nRate=0.8,CallBack= _Message,},
			{szName = "ck9",tbProp={4,1687,1,1},nCount=1,nRate=1,CallBack= _Message,},
			{szName = "mm1",tbProp={4,1668,1,1},nCount=1,nRate=2,CallBack= _Message,},
			{szName = "mm2",tbProp={4,1669,1,1},nCount=1,nRate=2,CallBack= _Message,},
			{szName = "mm3",tbProp={4,1670,1,1},nCount=1,nRate=2,CallBack= _Message,},
			{szName = "mm4",tbProp={4,1671,1,1},nCount=1,nRate=2,CallBack= _Message,},
			{szName = "Tinh hång",tbProp={4,353,1,1},nCount=1,nRate=0.3,CallBack= _Message,},
			{szName = "Lôc Thñy Tinh",tbProp={4,238,1,1},nCount=1,nRate=0.2,CallBack= _Message,},
			{szName = "Tö Thñy Tinh",tbProp={4,239,1,1},nCount=1,nRate=0.2,CallBack= _Message,},
			{szName = "Lam Thñy Tinh",tbProp={4,240,1,1},nCount=1,nRate=0.2,CallBack= _Message,},
			{szName = "TuyÕt ¶nh",tbProp={0,10,5,3,0,0,0},nCount=1,nRate=0.1,nExpiredTime=10080,CallBack= _Message,},
			{szName = "« V©n §¹p TuyÕt",tbProp={0,10,5,6,0,0,0},nCount=0.1,nRate=1,nExpiredTime=10080,CallBack= _Message,},
			{szName = "ChiÕu D¹",tbProp={0,10,5,10,0,0,0},nCount=1,nRate=0.1,nExpiredTime=10080,CallBack= _Message,},
			{szName = "XÝch Thè",tbProp={0,10,5,7,0,0,0},nCount=1,nRate=0.1,nExpiredTime=10080,CallBack= _Message,},
			{szName = "§Ých L«",tbProp={0,10,5,9,0,0,0},nCount=1,nRate=0.1,nExpiredTime=10080,CallBack= _Message,},



			
}
tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});

end



         


function mocmax()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§¹i hiÖp ®Ñp trai <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi Max 500 Trèng §ång><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local s = random(1,9)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName = "sieu quang vv",tbProp={0,10,13,10,0,0},nCount=1,nExpiredTime= 43200,CallBack= _Message,},}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName = "ao nhu tinh",tbProp={0,541},nCount=1,nQuality = 1,CallBack= _Message,},}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName = "ao nhu tinh",tbProp={0,565},nCount=1,nQuality = 1,nExpiredTime= 28800,CallBack= _Message,},}, "test", 1);
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName = "ao nhu tinh",tbProp={0,567},nCount=1,nQuality = 1,nExpiredTime= 28800,CallBack= _Message,},}, "test", 1);
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName = "ao nhu tinh",tbProp={0,568},nCount=1,nQuality = 1,nExpiredTime= 28800,CallBack= _Message,},}, "test", 1);
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName = "ao nhu tinh",tbProp={0,569},nCount=1,nQuality = 1,nExpiredTime= 28800,CallBack= _Message,},}, "test", 1);
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName = "mat na 1 cap",tbProp={0,11,828,1,1,0},nCount=1,nExpiredTime= 28800,CallBack= _Message,},}, "test", 1);
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName = "can khono",tbProp={6,1,2219,1,0},nCount=1,nExpiredTime= 28800,CallBack= _Message,},}, "test", 1);
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName = "ao nhu tinh",tbProp={0,428},nCount=1,nQuality = 1,nExpiredTime= 28800,CallBack= _Message,},}, "test", 1);
end;


end


			
                                                                        





function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end




function phanthuongphu()
local s = random(1,52)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="TTK",tbProp={6,1,22,1},nCount=1,},}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="VLMT",tbProp={6,1,26,1},nCount=1,},}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="§¸ May M¾n C1",tbProp={4,1668,1,1,},nCount=2,},}, "test", 1);
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="§¸ May M¾n C2",tbProp={4,1669,1,1,},nCount=2,},}, "test", 1);
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="§¸ May M¾n C3",tbProp={4,1670,1,1,},nCount=2,},}, "test", 1);
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1,1,},nCount=2,},}, "test", 1);
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1,1,},nCount=2,},}, "test", 1);
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1,1,},nCount=2,},}, "test", 1);
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="Tói tèng kim",tbProp={6,1,4415,1,1},nCount=1,},}, "test", 1);
end;
if s==10 then
tbAwardTemplet:GiveAwardByList({{szName="M·nh Nhu T×nh 4",tbProp={4,780,1,1,},nCount=1,nRate=5,},}, "test", 1);
end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="Ph¸o Hoa",tbProp={6,0,11,1,1},nCount=1,},}, "test", 1);
end;
if s==12 then
tbAwardTemplet:GiveAwardByList({{szName="B¸ch Qu¶ Lé",tbProp={6,1,73,1,1},nCount=1,},}, "test", 1);
end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="bao d­îc hoµn",tbProp={6,1,910,1,1},nCount=1,},}, "test", 1);
end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="Ph¸o Hoa",tbProp={6,0,20,1,1},nCount=1,},}, "test", 1);
end;
if s==15 then
tbAwardTemplet:GiveAwardByList({{szName="M·nh cµn kh«n 1",tbProp={4,1679,1,1,},nCount=1,},}, "test", 1);
end;
if s==16 then
tbAwardTemplet:GiveAwardByList({{szName="M·nh cµn kh«n 2",tbProp={4,1680,1,1,},nCount=1,},}, "test", 1);
end;
if s==17 then
tbAwardTemplet:GiveAwardByList({{szName="M·nh cµn kh«n 3",tbProp={4,1681,1,1,},nCount=1,},}, "test", 1);
end;
if s==18 then
tbAwardTemplet:GiveAwardByList({{szName="M·nh cµn kh«n 4",tbProp={4,1682,1,1,},nCount=1,},}, "test", 1);
end;
if s==19 then
tbAwardTemplet:GiveAwardByList({{szName="M·nh cµn kh«n 5",tbProp={4,1683,1,1,},nCount=1,},}, "test", 1);
end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="M·nh cµn kh«n 6",tbProp={4,1684,1,1,},nCount=1,},}, "test", 1);
end;
if s==21 then
tbAwardTemplet:GiveAwardByList({{szName="M·nh cµn kh«n 7",tbProp={4,1685,1,1,},nCount=1,},}, "test", 1);
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName="M·nh cµn kh«n 8",tbProp={4,1686,1,1,},nCount=1,},}, "test", 1);
end;
if s==23 then
tbAwardTemplet:GiveAwardByList({{szName="M·nh cµn kh«n 9",tbProp={4,1687,1,1,},nCount=1,},}, "test", 1);
end;
if s==24 then
tbAwardTemplet:GiveAwardByList({{szName="M·nh dai tlq",tbProp={4,1499,1,1,},nCount=1,nRate=25,},}, "test", 1);
end;
if s==25 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh tld",tbProp={4,1509,1,1,},nCount=1,},}, "test", 1);
end;
if s==26 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh ®ai tvc",tbProp={4,1514,1,1,},nCount=1,},}, "test", 1);
end;
if s==27 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh day chuyen tv",tbProp={4,1524,1,1,},nCount=1,},}, "test", 1);
end;
if s==28 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh daitvt",tbProp={4,1523,1,1,},nCount=1,},}, "test", 1);
end;
if s==29 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh dai nmk",tbProp={4,1529,1,1,},nCount=1,},}, "test", 1);
end;
if s==30 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh day chuyen nm",tbProp={4,1538,1,1,},nCount=1,},}, "test", 1);
end;
if s==31 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh dai tyd",tbProp={4,1544,1,1,},nCount=1,},}, "test", 1);
end;
if s==32 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh day chuyen tysd",tbProp={4,1548,1,1,},nCount=1,},}, "test", 1);
end;
if s==33 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh dai 5 doc chuong",tbProp={4,1554,1,1,},nCount=1,},}, "test", 1);
end;
if s==34 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh day chuyen 5 doc",tbProp={4,1563,1,1,},nCount=1,},}, "test", 1);
end;
if s==36 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh bao tay 5dd",tbProp={4,1560,1,1,},nCount=1,},}, "test", 1);
end;
if s==37 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh manh dai dmn",tbProp={4,1574,1,1,},nCount=1,},}, "test", 1);
end;
if s==38 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh dai dmt",tbProp={4,1579,1,1,},nCount=1,},}, "test", 1);
end;
if s==39 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh day chuyen dmb",tbProp={4,1583,1,1,},nCount=1,},}, "test", 1);
end;
if s==40 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh dai CBR",tbProp={4,1589,1,1,},nCount=1,},}, "test", 1);
end;
if s==41 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh bao tay cbb",tbProp={4,1595,1,1,},nCount=1,},}, "test", 1);
end;
if s==42 then


tbAwardTemplet:GiveAwardByList({{szName="M·nh day chuyen tn",tbProp={4,1603,1,1,},nCount=1,},}, "test", 1);
end;
if s==43 then


tbAwardTemplet:GiveAwardByList({{szName="M·nh giµy TNC",tbProp={4,1611,1,1,},nCount=1,},}, "test", 1);
end;
if s==44 then


tbAwardTemplet:GiveAwardByList({{szName="M·nh bao tay cbb",tbProp={4,1595,1,1,},nCount=1,},}, "test", 1);
end;
if s==45 then


tbAwardTemplet:GiveAwardByList({{szName="M·nh day chuyen vd",tbProp={4,1618,1,1,},nCount=1,},}, "test", 1);
end;
if s==46 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh day chuyen vdk",tbProp={4,1619,1,1,},nCount=1,},}, "test", 1);
end;
if s==47 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh dai cl",tbProp={4,1624,1,1,},nCount=1,nRate=15,},}, "test", 1);
end;
if s==48 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh day chuyen clb",tbProp={4,1633,1,1,},nCount=1,},}, "test", 1);
end;
if s==49 then

tbAwardTemplet:GiveAwardByList({{szName="M·nh dai clk",tbProp={4,1629,1,1,},nCount=1,},}, "test", 1);
end;
if s==50 then

tbAwardTemplet:GiveAwardByList({{szName="§¸ CH4",tbProp={4,1689,1,1,},nCount=1,},}, "test", 1);
end;
if s==51 then

tbAwardTemplet:GiveAwardByList({{szName="§a cmm4",tbProp={4,1671,1,1,},nCount=1,},}, "test", 1);
end;
if s==52 then

tbAwardTemplet:GiveAwardByList({{szName="da quy",tbProp={4,1688,1,1,},nCount=1,},}, "test", 1);
end;

end
