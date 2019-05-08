Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\activitysys\\playerfunlib.lua")



TASKGIOHOA = 5320

function main(NpcIndex)
dofile("script/global/quanlygame/sukien/8thang3/npcsukien.lua");
local tab_Content = {
	"Gh�p Gi� Hoa H�ng 8-3 /giohoa",
	"��i Hoa L�y M�t N� /doihoalaymn",
	"Ki�m Tra M�c Gi� Hoa/mocgiohoa",
	--"L�y Nguy�n Li�u Test/laynguyenlieu",
	--"Reset C� 2 m�c test ti�p /resetmocevent",
	"Ta ch�a mang �� nguy�n li�u/no"
	}
Say("<color=yellow>Ph� N� Vi�t 8-3:<color>\nNh�n ng�y ph� n� Vi�t Nam h�y s�  h�u th�t nhi�u nh�ng gi� hoa t�nh y�u l�ng m�n t�ng cho ng��i ph� n�a nh� ", getn(tab_Content), tab_Content);       
end;

function mocgiohoa()
  local nTask = GetTask(TASKGIOHOA)
  Talk (1, "","B�n �� s� d�ng <color=yellow>"..nTask.."<color> Gi� Hoa T��i 8-3")
end


function resetmocevent()
SetTask(5320,0)
SetTask(5319,0)
SetTask(5321,0)
end

function giohoa()
local tab_Content = {
		"Ta �� hi�u b�t ��u gh�p/giohoa1",
		"Ta ch� ti�n gh� qua ��y th�i..!/no"
	}
Say("<color=yellow>1 Gi� Hoa 8-3 G�m:<color> Nguy�n li�u gh�p : \n1 Hoa C�c - 1 Hoa H�ng - 1 Hoa Lan - 1 Gi� ��ng Hoa", getn(tab_Content), tab_Content);       
end;





function laynguyenlieu()
tbAwardTemplet:GiveAwardByList({{szName="M�nh",tbProp={6,1,4484,1,1},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M�nh",tbProp={6,1,4485,1,1},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M�nh",tbProp={6,1,4486,1,1},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M�nh",tbProp={6,1,4491,1,1},nCount=200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M�nh",tbProp={4,1676,1,1},nCount=20,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M�nh",tbProp={4,1677,1,1},nCount=20,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M�nh",tbProp={4,1678,1,1},nCount=20,},}, "test", 1);




end




function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
end



-----------------------------------------------------------HOA CUC CUC PHAM---------------------------------------------------

function giohoa1()
	local nSilverCount = CalcEquiproomItemCount(6,1,4484,1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "Trong h�nh trang ��i hi�p c�n thi�u Hoa H�ng xin h�y ki�m tra l�i.")
		return
		end
	local nSilverCount = CalcEquiproomItemCount(6,1,4485,1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "Trong h�nh trang ��i hi�p c�n thi�u Hoa C�c  xin h�y ki�m tra l�i.")
		return
		end
	local nSilverCount = CalcEquiproomItemCount(6,1,4486,1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "Trong h�nh trang ��i hi�p c�n thi�u Hoa Lan xin h�y ki�m tra l�i.")
		return
		end
	local nSilverCount = CalcEquiproomItemCount(6,1,4487,1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "Trong h�nh trang ��i hi�p c�n thi�u Gi� ��ng Hoa mua t�i h�ng rong t��ng d��ng xin h�y ki�m tra l�i.")
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
 Talk(2, "", ""..myplayersex().." Xin th� l�i","Nguy�n li�u ph�i c�: <color=while>\n1 Hoa C�c - 1 Hoa H�ng - 1 Hoa Lan - 1 Gi� ��ng Hoa!"); 
 else
AskClientForNumber("giohoa3",0,50,"S� l��ng g�i")
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
		Talk(1, "", ""..myplayersex().." Nguy�n li�u c�n thi�u "..num1-hoahong.." Hoa H�ng, "..num2-hoacuc.." Hoa C�c , "..num3-hoalan.." Hoa Lan  , "..num4-giohoa.." Gi� Hoa \n\n"..myplayersex().." kh�ng mang theo �� nguy�n li�u.<color=yellow>\ <color=red>xin ki�m tra l�i..!");
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
			Msg2Player(""..myplayersex().." �� Ho�n Th�nh <color=green>"..num.." Gi� Hoa T��i 8 -3..!")
		return
end	
		Talk(1, "", ""..myplayersex().." Nguy�n li�u c�n thi�u "..num1-hoahong.." Hoa H�ng, "..num2-hoacuc.." Hoa C�c , "..num3-hoalan.." Hoa Lan  , "..num4-giohoa.." Gi� Hoa \n\n"..myplayersex().." kh�ng mang theo �� nguy�n li�u.<color=yellow>\ <color=red>xin ki�m tra l�i..!");
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..myplayersex().." <color=green>"..GetName().." <color>m�t ng�y online vui v� ...!"); 	
	end
end




function doihoalaymn() 
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> ��i hoa l�y <color=gold><%s><color=green><enter><color=yellow>< T�i Ph� N� 8 - 3 ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
				{szName="Hoa H�ng",tbProp={6,1,4484,1},nCount=200},
				{szName="Hoa C�c",tbProp={6,1,4485,1},nCount=200},
				{szName="Hoa Lan",tbProp={6,1,4486,1},nCount=200},
				{szName="Hoa b�ch H�p",tbProp={6,1,4491,1},nCount=200},
				{szName="�� C��ng H�a C1",tbProp={4,1676,1},nCount=20},
				{szName="�� C��ng H�a C2",tbProp={4,1677,1},nCount=20},
				{szName="�� C��ng H�a C3",tbProp={4,1678,1},nCount=20},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={6,1,4489,1,1},nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n c� : 200 Hoa H�ng - 200 HJoa C�c - 200 Hoa Lan - 200 Hoa b�ch H�p - �� c��ng h�a 1 2 3 m�i th� 20 vi�n.")

end




function OnTimer(nNpcIndex,nTimeOut)
	local tab_Chat = {
                            "<color=cyan><pic=5>8-3 Y�u Th��ng.",
                            "<color=green><pic=7>G�i Gi� Hoa Nh�n Nhi�u Qu�",
                            "<color=pink><pic=1>Xem t�i www.jxtinhvolam.com",

	}
	local ran = random(1,getn(tab_Chat))
	NpcChat(nNpcIndex,tab_Chat[ran])
	local ranTimer = random(5,15)
	SetNpcTimer(nNpcIndex,ranTimer*18)
	SetNpcScript(nNpcIndex,"\\script\\global\\quanlygame\\sukien\\8thang3\\npcsukien.lua")
end
