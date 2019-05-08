Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\activitysys\\playerfunlib.lua")



TASKGIOHOA = 5320

function main(NpcIndex)
dofile("script/global/quanlygame/sukien/8thang3/npcsukien.lua");
local tab_Content = {
	"GhÐp Giá Hoa Hång 8-3 /giohoa",
	"§æi Hoa LÊy MÆt N¹ /doihoalaymn",
	"KiÓm Tra Mèc Giá Hoa/mocgiohoa",
	--"LÊy Nguyªn LiÖu Test/laynguyenlieu",
	--"Reset C¶ 2 mèc test tiÕp /resetmocevent",
	"Ta ch­a mang ®ñ nguyªn liÖu/no"
	}
Say("<color=yellow>Phô N÷ ViÖt 8-3:<color>\nNh©n ngµy phô n÷ ViÖt Nam h¶y sì  h÷u thËt nhiÒu nh÷ng giá hoa t×nh yªu l·ng m¹n tÆng cho ng­êi phô n÷a nhÐ ", getn(tab_Content), tab_Content);       
end;

function mocgiohoa()
  local nTask = GetTask(TASKGIOHOA)
  Talk (1, "","B¹n ®· sö dông <color=yellow>"..nTask.."<color> Giá Hoa T­¬i 8-3")
end


function resetmocevent()
SetTask(5320,0)
SetTask(5319,0)
SetTask(5321,0)
end

function giohoa()
local tab_Content = {
		"Ta ®· hiÓu b¾t ®Çu ghÐp/giohoa1",
		"Ta chØ tiÖn ghÐ qua ®©y th«i..!/no"
	}
Say("<color=yellow>1 Giá Hoa 8-3 Gåm:<color> Nguyªn liÖu ghÐp : \n1 Hoa Cóc - 1 Hoa Hång - 1 Hoa Lan - 1 Giá §ùng Hoa", getn(tab_Content), tab_Content);       
end;





function laynguyenlieu()
tbAwardTemplet:GiveAwardByList({{szName="M¶nh",tbProp={6,1,4484,1,1},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M¶nh",tbProp={6,1,4485,1,1},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M¶nh",tbProp={6,1,4486,1,1},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M¶nh",tbProp={6,1,4491,1,1},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M¶nh",tbProp={4,1676,1,1},nCount=20,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M¶nh",tbProp={4,1677,1,1},nCount=20,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M¶nh",tbProp={4,1678,1,1},nCount=20,},}, "test", 1);




end




function myplayersex()
	if GetSex() == 1 then 
		return "N÷ hiÖp";
	else
		return "§¹i hiÖp";
	end
end



-----------------------------------------------------------HOA CUC CUC PHAM---------------------------------------------------

function giohoa1()
	local nSilverCount = CalcEquiproomItemCount(6,1,4484,1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "Trong hµnh trang ®¹i hiÖp cßn thiÕu Hoa Hång xin h·y kiÓm tra l¹i.")
		return
		end
	local nSilverCount = CalcEquiproomItemCount(6,1,4485,1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "Trong hµnh trang ®¹i hiÖp cßn thiÕu Hoa Cóc  xin h·y kiÓm tra l¹i.")
		return
		end
	local nSilverCount = CalcEquiproomItemCount(6,1,4486,1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "Trong hµnh trang ®¹i hiÖp cßn thiÕu Hoa Lan xin h·y kiÓm tra l¹i.")
		return
		end
	local nSilverCount = CalcEquiproomItemCount(6,1,4487,1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "Trong hµnh trang ®¹i hiÖp cßn thiÕu Giá §ùng Hoa mua t¹i hµng rong t­¬ng d­¬ng xin h·y kiÓm tra l¹i.")
		return
		end
giohoa2()
end


function giohoa2()
local hoahong = CalcItemCount(3,6,1,4484, -1) ; --hoahong
local hoacuc = CalcItemCount(3,6, 1,4485, -1) ; --hoacuc
local hoalan = CalcItemCount(3,6,1,4486, -1) ; --hoalan
local giohoa = CalcItemCount(3,6,1,4487, -1) ; --giohoa


 

if hoahong < 1 and hoacuc < 1 and hoalan< 1 and giohoa< 1  then
 Talk(2, "", ""..myplayersex().." Xin thø lçi","Nguyªn liÖu ph¶i cã: <color=while>\n1 Hoa Cóc - 1 Hoa Hång - 1 Hoa Lan - 1 Giá §ùng Hoa!"); 
 else
AskClientForNumber("giohoa3",0,50,"Sè l­îng gãi")
end
end

function giohoa3(num)
local hoahong = CalcItemCount(3,6,1,4484, -1) ; --hoahong
local hoacuc = CalcItemCount(3,6, 1,4485, -1) ; --hoacuc
local hoalan = CalcItemCount(3,6,1,4486, -1) ; --hoalan
local giohoa = CalcItemCount(3,6,1,4487, -1) ; --giohoa
 


			num1= num*1;
			num2= num*1;
			num3= num*1;
			num4= num*1;



	if ( num1 >hoahong and num2 >hoacuc and num3 >hoalan and num4>giohoa) then
		Talk(1, "", ""..myplayersex().." Nguyªn liÖu cßn thiÕu "..num1-hoahong.." Hoa Hång, "..num2-hoacuc.." Hoa Cóc , "..num3-hoalan.." Hoa Lan  , "..num4-giohoa.." Giá Hoa \n\n"..myplayersex().." kh«ng mang theo ®ñ nguyªn liªu.<color=yellow>\ <color=red>xin kiÓm tra l¹i..!");
	return   
                       end
	if (hoahong>= num1 and hoacuc >= num2 and hoalan >= num3 and giohoa>=num4) then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4484,-1)
			end
				for i=1,num2 do
				ConsumeEquiproomItem(1,6,1,4485,-1)
				end
					for i=1,num3 do
					ConsumeEquiproomItem(1,6,1,4486,-1)
					end
					for i=1,num4 do
					ConsumeEquiproomItem(1,6,1,4487,-1)
					end
	
			for i=1, num do			
				AddItem(6,1,4488,1,1,0) 			
end	
			Msg2Player(""..myplayersex().." §· Hoµn Thµnh <color=green>"..num.." Giá Hoa T­¬i 8 -3..!")
		return
end	
		Talk(1, "", ""..myplayersex().." Nguyªn liÖu cßn thiÕu "..num1-hoahong.." Hoa Hång, "..num2-hoacuc.." Hoa Cóc , "..num3-hoalan.." Hoa Lan  , "..num4-giohoa.." Giá Hoa \n\n"..myplayersex().." kh«ng mang theo ®ñ nguyªn liªu.<color=yellow>\ <color=red>xin kiÓm tra l¹i..!");
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..myplayersex().." <color=green>"..GetName().." <color>mét ngµy online vui vÎ ...!"); 	
	end
end




function doihoalaymn() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> §æi hoa lÊy <color=gold><%s><color=green><enter><color=yellow>< T¹i Phô N÷ 8 - 3 ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Hoa Hång",tbProp={6,1,4484,1},nCount=200},
				{szName="Hoa Cóc",tbProp={6,1,4485,1},nCount=200},
				{szName="Hoa Lan",tbProp={6,1,4486,1},nCount=200},
				{szName="Hoa b¸ch Hîp",tbProp={6,1,4491,1},nCount=200},
				{szName="§¸ C­êng Hãa C1",tbProp={4,1676,1},nCount=20},
				{szName="§¸ C­êng Hãa C2",tbProp={4,1677,1},nCount=20},
				{szName="§¸ C­êng Hãa C3",tbProp={4,1678,1},nCount=20},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={6,1,4489,1,1},nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn cã : 200 Hoa Hång - 200 HJoa Cóc - 200 Hoa Lan - 200 Hoa b¸ch Hîp - §¸ c­êng hãa 1 2 3 mçi thø 20 viªn.")

end




function OnTimer(nNpcIndex,nTimeOut)
	local tab_Chat = {
                            "<color=cyan><pic=5>8-3 Yªu Th­¬ng.",
                            "<color=green><pic=7>Gãi Giá Hoa NhËn NhiÒu Qu¸",
                            "<color=pink><pic=1>Xem t¹i www.jxtinhvolam.com",

	}
	local ran = random(1,getn(tab_Chat))
	NpcChat(nNpcIndex,tab_Chat[ran])
	local ranTimer = random(5,15)
	SetNpcTimer(nNpcIndex,ranTimer*18)
	SetNpcScript(nNpcIndex,"\\script\\global\\quanlygame\\sukien\\8thang3\\npcsukien.lua")
end
