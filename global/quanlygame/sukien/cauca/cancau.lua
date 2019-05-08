--Event cau ca bang hoi
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\quanlygame\\sukien\\cauca\\head.lua")
IncludeLib("ITEM")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
MAXCOUNT = 5

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>ßπi hi÷p <color=yellow>%s<color=yellow> bæt Æ≠Óc<enter><color=cyan><%s><color=green><enter><color=yellow>< khi c©u c∏ tπi Ba L®ng Huy÷n (184/211) ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local ItemAward = {
	{szName="M∑nh ABHM",tbProp={4,417,1,1,0,0},nCount=1,nRate=10, CallBack= _Message},
		{szName = "Kh´ng may mæn rÂi mŒ nµy hÙt hΩn",
		pFun = function (nItemCount, szLogTitle)
			Msg2Player("L«n nµy c©u kh´ng may mæn, ta ph∂i thˆ th™m l«n n˜a")
		end,
		nRate = 100,
	}
}
local _GetFruit = function(nItemIndex)
--kiemca()
	--tbAwardTemplet:Give(%ItemAward, 1)
	batdaucau()
	--SaveNow()
	DemSoLan(nItemIndex)
end
local _OnBreak = function()
	Msg2Player("C©u c∏ th t bπi")
end
function main(nItemIdx)
	local G,D,P,nLevel = GetItemProp(nItemIdx);
	if (G ~= 6) then
		return 1;
	end

	w,x,y=GetWorldPos()
	if w ~= 53 then
		CreateTaskSay({"Bπn h∑y Æ’n <color=red>Ba L®ng Huy÷n (184/211)<color> Æ” bæt c∏","ß≠a ta Æ’n Æ„./MoveMap","Tho∏t./Cancel",});
		return 1;
	end

	PosId = GetNearstPos(x*32,y*32, GccPos);
	if (PosId == 0) then 
		Say("Bπn Æ¯ng c∏ch khu v˘c qu∏ xa <color=red>Ba L®ng Huy÷n (184/211)<color>, kh´ng th” sˆ dÙng! ",0)
		return 1
	end;	

	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"Xin h∑y sæp x’p lπi hµnh trang! NhÌ Æ” trËng 6 ´ trÎ l™n nh–!",  "ß≠Óc rÂi./Cancel",});
		return 1;
	end
	if P == 4446 then ----can cau
		tbProgressBar:OpenByConfig(21, %_GetFruit,{nItemIdx}, %_OnBreak)
	end
	return 1
end
function DemSoLan(nItemIdx)
	local n_param = tonumber(GetItemParam(nItemIdx,1)) + 1
	local itemname = "<color=yellow>"..GetItemName(nItemIdx).."<color>"
	SetSpecItemParam(nItemIdx,1,n_param)
	SyncItem(nItemIdx)
	if (n_param >= MAXCOUNT) then
		RemoveItemByIndex(nItemIdx)
	else
		Msg2Player(""..itemname.." cﬂn sˆ dÙng "..(MAXCOUNT - n_param).." l«n")
	end
end
function MoveMap()
	NewWorld(53, 1471, 3370)
	Msg2Player("Bπn Æ∑ Æ’n khu v˘c c©u c∏!")
end
function GetDesc(nItemIdx)
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItemIdx, 1 ))
	szDesc = szDesc..format("\nC„ th” sˆ dÙng <color=yellow>%d<color> l«n", (MAXCOUNT - n_param));
	return szDesc;
end



function kiemca()
--tbAwardTemplet:GiveAwardByList({{szName="C∏",tbProp={6,1,random(4422,4445),1,0},nCount=1,CallBack= _Message,},}, "test", 1);
end


function batdaucau()
local s = random(1,1)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="C∏ Ch–p HÂng",tbProp={6,1,4335,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,755,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,748,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,753,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,755,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,748,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,750,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,767,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,769,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==10 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,750,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,767,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==12 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,769,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,757,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,757,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==15 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,757,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==16 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,757,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==17 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,757,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==18 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,757,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==19 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,757,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,762,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==21 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,762,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,762,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==23 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,762,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==24 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,762,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==25 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,762,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==26 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,762,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==27 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,762,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==28 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,762,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==29 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,763,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==30 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,763,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==31 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,763,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==32 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,763,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==33 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,763,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==34 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,763,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==35 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,763,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;

if s==36 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,761,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==37 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,761,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==38 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,761,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==39 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,754,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==40 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,759,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==41 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,752,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==42 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,765,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==43 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,770,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;

if s==44 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,763,1,1,0,0},nCount=1  ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==45 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,765,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==46 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,765,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==47 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,765,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==48 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,765,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==49 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,765,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==50 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,765,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==51 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,765,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==52 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,765,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==53 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,758,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==54 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,758,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==55 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,758,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==56 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,747,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==57 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,760,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==58 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,747,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==59 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,760,1,1,0,0},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
if s==60 then
tbAwardTemplet:GiveAwardByList({{szName="M∑nh ABHM",tbProp={4,1685,1,1,},nCount=1 ,},}, "test", 1);
Msg2SubWorld("ßπi hi÷p <color=yellow>"..GetName().."<color=yellow> nhÀn Æ≠Óc 1 m∑nh hoµng kim khi <enter><color=yellow> khi c©u c∏ tπi Ba L®ng Huy÷n (184/211)")
end;
end