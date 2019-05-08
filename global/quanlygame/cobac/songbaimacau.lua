--Started by ZhuYingTai 14/5/2015 3p xo 1 lan
Include("\\script\\lib\\timerlist.lua")
Include("\\script\\lib\\player.lua")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
tbWinCashMsg = {
"Ng��i ch�i %s �� �n ���c %s v�n l��ng t� Banh X�c ��i nh�n. Th�t may m�n",
-- "Con b�c %s c�m %s v�n l��ng �n ���c t� b�u cua m� kh�c r�ng: Tr�i v�n c�n th��ng con.. Cu�c ��i th�t kh�ng nh�n t�m v�i nh�ng ng��i kh�n kh� nh� ta.",
-- "Banh X�c ��i nh�n h�ng m�u h� l�n: %s!, Ng��i �n ���c c�a ta %s v�n r�i. ��ng c� �n non m� b� v� nh�. Ha ha",
-- "�. %s. Ng��i l�m c�ch n�o m� th�ng ���c %s v�n l��ng t� ta hay v�y? Ng��i c� d�m th� v�i ta l�n n�a kh�ng? ",
-- "%s b�ng d�ng h�t to�ng l�n: H�o h�u v� trung t�m Ba L�ng huy�n ta chia ti�n n�. V�a tr�ng %s v�n l��ng �� thi�t �� ch�.",
"%s m�t m�y nh� h�a �i�n h�a d�i, tay ch�n b�p t�m lum t�m la. Cu�i c�ng �ng tr�i �� kh�ng ph� l�ng ta. �n ���c %s v�n r�i. H� h�.",
}
tbWinCoinMsg = {
--"Ng��i ch�i %s �� �n ���c %s ti�n ��ng t� Banh X�c ��i nh�n. Th�t may m�n",
-- "B�u cua, cua b�u. Cu�c ��i �� sang trang kh�c v�i %s sau khi h�n tr�ng %s ti�n ��ng t� Banh X�c ��i nh�n.",
-- "Th�n b�t do k� tr�i chu ��t di�t. %s sau khi tr�ng b�u cua v�i v� ch�y v� th� kh� c�t h�t %s ti�n ��ng �n ���c. Th�t l� trang h�o h�n..",
"Ng��i ��i th��ng n�i: �� b�c �en t�nh. Th�t qu� l� ch�nh x�c. %s tr�ng lu�n %s ti�n ��ng. �ng tr�i kh�ng l�y kh�ng c�a ai m�t c�i g�.",
-- "M�i ng�y %s d�n m�t v�o m�n h�nh b�u cua d�ng gi�y m�c ghi ch�p l�i quy lu�t th�t kh�ng u�ng c�ng. Tr�ng li�n %s ti�n ��ng. C� c�ng m�i s�t c� ng�y n�n kim.",
-- "L�m gi�u kh�ng kh� v�i b�u cua. %s ��t tr�ng ngay %s ti�n ��ng. Xa g�n t�n tr�i m� g�n ngay tr��c m�t. Ba L�ng th�ng ti�n n�o.",
-- "��n v�i V� l�m b� s� tr�i nghi�m b�u cua. Ai ng� %s tr�ng ngay %s ti�n ��ng. Sao h�n v�y ta?",
}
FishGame = FishGame or {
tbPlayerList = {},--luu toan bo thong tin nguoi choi: {nIndex,{Chua so cac con danh:["Bau"] = nCash,["Cua"] = nCash....},nAwardCash = 0-- luu so tien thang neu nguoi choi out game hoac trong truong hop dac biet khong add duoc tien}
nResult = {},--{"Bau","Cua"}

nTotalCash = 0,-- luu toan bo so tien danh
nTotalCoin = 0,-- lua tona bo so xu danh
nStarted = 0,
nTOTAL_RATE = 0,
DOUBLE_RATE = 1,-- ti le ra 2 amt giong nhau ti le chuan
NORMAL_RATE = 4,-- ti le ra 3 mat khac nhau ti le chuan
}
tbAllResult = tbAllResult or {

}

function FishGame:Init()
if SubWorldID2Idx(53) < 0 then-- kiem tra xem co phai map tuong duong ko?
	return
end
if self.nStarted == 0 then
self.TimerID = TimerList:AddTimer(self, 18*60); --1 phut se chay 1 lan
self.nStarted = 1
self.nStatus = 0
end
local nLuckRand= random(1,10)
self.NORMAL_RATE = nLuckRand
self.DOUBLE_RATE = nLuckRand * 2
for i=1,6 do-- khoi tao bang gia tri
	for j=1,6 do
		for k=1,6 do
			if i==j or i==k or k==j then
				tinsert(tbAllResult,1,{i,j,k,self.DOUBLE_RATE})
				self.nTOTAL_RATE = self.nTOTAL_RATE + self.DOUBLE_RATE
			else
				tinsert(tbAllResult,1,{i,j,k,self.NORMAL_RATE})
				self.nTOTAL_RATE = self.nTOTAL_RATE + self.NORMAL_RATE
			end
		end
	end
end
end
function FishGame:Stop()-- dong bau cua
self.nStarted = 0
TimerList:DelTimer(self.TimerID);
end
-- FishGame:Init()
function FishGame:GetNextResult()
print("Da chay qua")
local nRand = random(1,self.nTOTAL_RATE)
local nResult = 0
local nValue = 0
for i = 1,getn(tbAllResult) do
	nValue = nValue + tbAllResult[i][4]
	if nRand <= nValue then
		nResult = i
		break
	end
end
if nResult == 0 then
return nil
end
local tbResult = {ChangeToString(tbAllResult[nResult][1]),ChangeToString(tbAllResult[nResult][2]),ChangeToString(tbAllResult[nResult][3])}
for i=1,3 do
self.nResult[tbResult[i]] = self.nResult[tbResult[i]] or 0--
self.nResult[tbResult[i]] = self.nResult[tbResult[i]] + 1
end
-- end

-- end
local szMsg = format("<color=pink>K�t qu� ��t n�y<enter><enter><color=cyan> %s - %s - %s  <pic=48><pic=146><enter><enter><color=red>60 gi�y n�a c� th� ��t ti�p<pic=189><color>",tbResult[1],tbResult[2],tbResult[3])
WriteLog("Ket qua bau cua lan nay"..tbResult[1].."va"..tbResult[2].."va"..tbResult[3])
Msg2SubWorld(szMsg)
return 1
end
function ChangeToString(nValue)
if nValue == 1 then
return "B�u"
elseif nValue == 2 then
return "Cua"
elseif nValue == 3 then
return "T�m"
elseif nValue == 4 then
return "C�"
elseif nValue == 5 then
return "G�"
elseif nValue == 6 then
return "Nai"
end
end
function FishGame:CalAwardForPlayer()
print("Da chay qua 2")
local nLoseCash = 0
local nLoseCoint = 0
for szName,tbInfo in self.tbPlayerList do
	for szChoice,nPoint in self.nResult do
	local tbKind = tbInfo.tbPut[szChoice]
	if tbKind then--
		if tbKind.nCash then--
			tbInfo.nAwardCash =  tbInfo.nAwardCash + (nPoint + 1)*tbKind.nCash
			nLoseCash = nLoseCash + (nPoint + 1)*tbKind.nCash
		end
		if tbKind.nCoin then--
			tbInfo.nAwardCoin =  tbInfo.nAwardCoin + (nPoint + 1)*tbKind.nCoin
			nLoseCoint = nLoseCoint + (nPoint + 1)*tbKind.nCoin
		end
	end
	end
tbInfo.tbPut = {-- reset sau khi nhan giai

}-- xoa toan bo du lieu danh truoc day
-- end
end
WriteLog("Bau cua lan nay tong tien van dat "..self.nTotalCash.." thua "..nLoseCash)
WriteLog("Bau cua lan nay tong tien don dat "..self.nTotalCoin.." thua "..nLoseCoint)
self.nTotalCash = 0--
self.nTotalCoin = 0
self.nResult = {}
end
function FishGame:AddAwardForPlayer()
print("Da chay qua 3")
for szName,tbInfo in self.tbPlayerList do
	
	if callPlayerFunction(tbInfo.nIndex,GetName) == szName and tbInfo.nAwardCash and tbInfo.nAwardCash > 0 then--  tien van
		callPlayerFunction(tbInfo.nIndex,Earn,tbInfo.nAwardCash*10000)
		callPlayerFunction(tbInfo.nIndex,Msg2Player,format("Ng��i nh�n ���c s� ti�n %d v�n t� Banh X�c ��i nh�n",tbInfo.nAwardCash))
		if tbInfo.nAwardCash > 100  then--<color=yellow> %d v�n <color>
			Msg2SubWorld(format("<pic=150><pic=182><color=green>%s<enter><color>Ch�i banh x�c s�ng b�i �n ���c <color=pink>%d ti�n v�n <color>t� l�c B�u Cua.",szName,tbInfo.nAwardCash))
			Msg2SubWorld(format(tbWinCashMsg[random(getn(tbWinCashMsg))],"<color=green>"..szName.."<color>","<color=yellow>"..tbInfo.nAwardCash.."<color>"))
			WriteLog(format("Nhan vat %s th�ng so tien %d v�n",szName ,tbInfo.nAwardCash))
		end
		tbInfo.nAwardCash = 0
	end
	if callPlayerFunction(tbInfo.nIndex,GetName) == szName and tbInfo.nAwardCoin and tbInfo.nAwardCoin > 0 then-- ti�n ��ng
		-- print ("Da trao thuong tien dong cho"..szName)
		local nCoin = tbInfo.nAwardCoin
		if nCoin <= 2 then
			callPlayerFunction(tbInfo.nIndex,AddStackItem,nCoin,4,417,1,1,0,0)
		else-- lon hon 10
			local nRound = nCoin/2
			for i=1,nRound do
				callPlayerFunction(tbInfo.nIndex,AddStackItem,2,4,417,1,1,0,0)
			end
			if mod(nCoin,2) > 0 then
				callPlayerFunction(tbInfo.nIndex,AddStackItem,mod(nCoin,2),4,417,1,1,0,0)
			end
		end
		callPlayerFunction(tbInfo.nIndex,Msg2Player,format("Ng��i nh�n ���c %d ti�n ��ng t� Banh X�c ��i nh�n",nCoin))
		Msg2SubWorld(format("<pic=150><pic=182><color=green>%s<enter><color>Ch�i banh x�c s�ng b�i �n ���c <color=pink>%d ti�n ��ng <color>t� l�c B�u Cua.",szName,nCoin))
		-- Msg2SubWorld(format(tbWinCoinMsg[random(getn(tbWinCoinMsg))], "<color=green>"..szName.."<color>","<color=yellow>"..nCoin.."<color>"))
		WriteLog(format("Nhan vat %s th�ng so tien %d ��ng",szName ,nCoin))
		tbInfo.nAwardCoin = 0
	end
end
end
function baucuacacop()-- doi thoai voi npc
if FishGame.nStarted ~= 1 then
Say("<pic=150>L�c b�u cua ch� ���c ta ch� m� t�:<enter>12h ��n 13h - 18h ��n 19h - 22h ��n 23h",0)
return
end
-- do 
-- Say("Xin l�i t�nh n�ng t�m ��ng �� m�i ng�u�i c� th�i gian tham gia ho�t ��ng",0)
-- return
-- end
-- --dofile("script/global/bet/baucua.lua")
-- FishGame:GetNextResult()
Say("<pic=146>N�y ng��i huynh �� c� th�ch �� �en ko nh�o v� ki�m �n?<pic=173>",3,"L�c B�u Cua/OnChoseKind","Xem l�i ta �� ��t g� r�i/showFishGate","Th�i ta kh�ng ch�i/no")
end
function showFishGate()
local szName = GetName()
if not FishGame.tbPlayerList[szName]  then--
Say("<pic=151>Ng��i ch�a ��t con n�o c�<pic=151>",0)
return
end
local pPlayer =FishGame.tbPlayerList[szName]
local szMsg = ""
for szChoice,tbKind in pPlayer.tbPut do
szMsg = szMsg.."�� ��t: <color=green>"..szChoice.."<color> ".."Ti�n ��t:"
if tbKind.nCash then
szMsg = szMsg.."<color=red>"..tbKind.nCash.."<color> v�n "
end
if tbKind.nCoin then
szMsg = szMsg.." <color=green>"..tbKind.nCoin.."<color> ti�n ��ng"
end
szMsg=szMsg.."\n"
end
Say(szMsg,0)
end
function OnChoseKind()
Say("<pic=193> Kh� m�u nhe ku <pic=193>",2,"Ch�i b�ng ti�n ��ng/#joinFishGame(2)","Th�i ta kh�ng ch�i/no")
--Say("<pic=193> Kh� m�u nhe ku <pic=193>",3,"Ch�i b�ng ti�n v�n/#joinFishGame(1)","Ch�i b�ng ti�n ��ng/#joinFishGame(2)","Th�i ta kh�ng ch�i/no")
-- Say("Ng��i mu�n ch�i b�ng g�?",2,"Ti�n v�n/#joinFishGame(1)","Th�i ta thua nhi�u qu� r�i/no")
end
function joinFishGame(nKind)
if FishGame.nStatus ~= 1 then
Say("<pic=188>Ng��i c� g�p qu� kh�ng? ��i 60 gi�y n�a m�i c� th� ��t k�o 1 �i�u cho ��i l�n h��ng �i<pic=188>",0)
return
end
FishGame:OnPlayerJoin(PlayerIndex,GetName())
if nKind == 1 then
local tbSay = {
"B�u/#OnChoose(1,1)",
"Cua/#OnChoose(2,1)",
"T�m/#OnChoose(3,1)",
"C�/#OnChoose(4,1)",
"G�/#OnChoose(5,1)",
"Nai/#OnChoose(6,1)",
"Th�i ta kh�ng ch�i n�a/no"
}
Say("Ng��i ch�n con n�o?",getn(tbSay),tbSay)
else
local tbSay = {
"B�u/#OnChoose(1,2)",
"Cua/#OnChoose(2,2)",
"T�m/#OnChoose(3,2)",
"C�/#OnChoose(4,2)",
"G�/#OnChoose(5,2)",
"Nai/#OnChoose(6,2)",
"Th�i ta kh�ng ch�i n�a/no"
}
Say("<pic=150><pic=161>Ng��i ch�n con n�o?",getn(tbSay),tbSay)

end
end
function OnChoose(nChoice,nKind)
-- Say("")
if nKind == 1 then
local nMaxCount = 10
g_AskClientNumberEx(1,nMaxCount, format("Ti�n (1-%d) v�n", nMaxCount), {FishGame.GetNumberFromClient,{FishGame,nChoice,nKind} })
else
local nMaxCount = 2
g_AskClientNumberEx(1,nMaxCount, format("Ti�n ��ng (1-%d)", nMaxCount), {FishGame.GetNumberFromClient,{FishGame,nChoice,nKind} })
end
end
function FishGame:GetNumberFromClient(nChoice,nKind,nPutCash)
self:OnPlayerPut(PlayerIndex,GetName(),nPutCash,nChoice,nKind)
end
function FishGame:OnPlayerPut(nPlayerIndex,szName,nPutCash,nChoice,nKind)
if nPutCash > 2 then
Say("��ng c� �n gian<pic=191><pic=188>",0)
return
end
if not self.tbPlayerList[szName] or self.tbPlayerList[szName].nIndex ~= nPlayerIndex then
callPlayerFunction(nPlayerIndex,Say,"C� l�i xay ra vui l�ng li�n h� GM �� bi�t th�m chi ti�t",0)
return
end
local pPlayer = self.tbPlayerList[szName]
local szChoice =""
if nChoice == 1 then
	szChoice = "B�u"
elseif nChoice == 2 then
	szChoice = "Cua"
elseif nChoice == 3 then
	szChoice = "T�m"
elseif nChoice == 4 then
	szChoice = "C�"
elseif nChoice == 5 then
	szChoice = "G�"
elseif nChoice == 6 then
	szChoice = "Nai"
end
-- if nKind == 1 then-- tien van ne

-- else -- tien dong

-- end
if nKind == 1 then-- tien van
if pPlayer.tbPut[szChoice] and pPlayer.tbPut[szChoice].nCash and pPlayer.tbPut[szChoice].nCash + nPutCash >= 1000 then
Say("<pic=191>Ng��i ��t qu� 10 v�n r�i.Ng��i th�ng l� ta qu�t ti�n lu�n ��:T...",0)
return
end
local nOwnCash = callPlayerFunction(nPlayerIndex,GetCash)
if nOwnCash < nPutCash * 10000 then
callPlayerFunction(nPlayerIndex,Say,"<pic=191><pic=188>Kh�ng �� ti�n m� c�ng d�m t�i �.Ch�m m�y m� dao c�t.",0)
return
end
callPlayerFunction(nPlayerIndex,Pay,nPutCash*10000)
pPlayer.tbPut[szChoice] = pPlayer.tbPut[szChoice] or {}
pPlayer.tbPut[szChoice].nCash = pPlayer.tbPut[szChoice].nCash or 0-- chua co thi khoi tao
pPlayer.tbPut[szChoice].nCash = pPlayer.tbPut[szChoice].nCash + nPutCash	
WriteLog(format("Nhan vat %s dat cua %s so tien %d v�n",szName,szChoice,nPutCash))
if nPutCash >= 1 then
Msg2SubWorld(format("Con b�c<color=green> %s <color=yellow>Quy�t Ch�i Kh� M�u Ch� S�ng B�c V�i V�n<color=yellow> %d v�n<color=blue> (B�u Cua)",szName,nPutCash))
end
self.nTotalCash = self.nTotalCash + nPutCash
else-- tien dong
if pPlayer.tbPut[szChoice] and pPlayer.tbPut[szChoice].nCoin and pPlayer.tbPut[szChoice].nCoin + nPutCash >= 2 then
Say("<pic=191>Ng��i ��t qu� 2 ti�n ��ng cho 1 con r�i.C� c�n kh� m�u ��n v�y kh�ng ku..th�i ��t con kh�c �i..",0)
return
end
local nOwnCoin = callPlayerFunction(nPlayerIndex,CalcEquiproomItemCount,4, 417, 1, -1)
if nOwnCoin < nPutCash then
callPlayerFunction(nPlayerIndex,Say,"<pic=191><pic=188>Kh�ng �� ti�n ��ng m� c�ng d�m ��t �. T� �i m�y",0)
return
end
if callPlayerFunction(nPlayerIndex,ConsumeEquiproomItem,nPutCash, 4, 417, 1, -1) ~= 1 then--
callPlayerFunction(nPlayerIndex,Say,"Xin l�i c� l�i x�y nghi�m tr�ng vui l�ng li�n h� GM")
return
end
pPlayer.tbPut[szChoice] = pPlayer.tbPut[szChoice] or {}
pPlayer.tbPut[szChoice].nCoin = pPlayer.tbPut[szChoice].nCoin or 0-- chua co thi khoi tao
pPlayer.tbPut[szChoice].nCoin = pPlayer.tbPut[szChoice].nCoin + nPutCash
WriteLog(format("Nhan vat %s dat cua %s so tien %d ti�n ��ng",szName,szChoice,nPutCash))
if nPutCash >= 1 then
Msg2SubWorld(format("Con b�c<color=green> %s <color=yellow>Quy�t Ch�i Kh� M�u Ch� S�ng B�c v�i<color=yellow> %d ti�n ��ng cho v�n<color=blue> "..szChoice.."",szName,nPutCash))
end
self.nTotalCoin = self.nTotalCoin + nPutCash

end
end
function FishGame:OnPlayerJoin(nPlayerIndex,szName)
if not self.tbPlayerList[szName] then
self:AddNewPlayer(nPlayerIndex,szName)
return
end
if self.tbPlayerList[szName].nAwardCash > 0 then-- tra lai tien thang truoc do
	callPlayerFunction(nPlayerIndex,Earn,self.tbPlayerList[szName].nAwardCash*10000 )
	callPlayerFunction(nPlayerIndex,Msg2Player,format("Ng��i nh�n ���c s� ti�n %d v�n t� b�u cua th�t may m�n",self.tbPlayerList[szName].nAwardCash))
	WriteLog(format("Nhan vat %s th�ng so tien %d v�n",szName ,self.tbPlayerList[szName].nAwardCash))
	self.tbPlayerList[szName].nAwardCash = 0
end
if self.tbPlayerList[szName].nAwardCoin > 0 then-- tra lai tien thang truoc do
		local nCoin = self.tbPlayerList[szName].nAwardCoin
		if nCoin <= 2 then
			callPlayerFunction(nPlayerIndex,AddStackItem,nCoin,4,417,1,1,0,0)
		else-- lon hon 10
			local nRound = nCoin/2
			for i=1,nRound do
				callPlayerFunction(nPlayerIndex,AddStackItem,2,4,417,1,1,0,0)
			end
			if mod(nCoin,2) > 0 then
				callPlayerFunction(nPlayerIndex,AddStackItem,mod(nCoin,2),4,417,1,1,0,0)
			end
		end
		self.tbPlayerList[szName].nAwardCoin = 0
		callPlayerFunction(nPlayerIndex,Msg2Player,format("Ng��i nh�n ���c %d ti�n ��ng t� b�u cua th�t may m�n",nCoin))
		-- Msg2SubWorld(format("Con b�c <color=green> %s<color> �n ���c t� Banh X�c phu nh�n <color=yellow> %d ti�n ��ng <color> t� b�u cua th�t may m�n.",szName,nCoin))
		WriteLog(format("Nhan vat %s th�ng so tien %d ��ng",szName ,nCoin))
		-- tbInfo.nAwardCoin = 0
end
self.tbPlayerList[szName].nIndex = nPlayerIndex-- tra lai index cho dung
end
function FishGame:AddNewPlayer(nPlayerIndex,szName)
self.tbPlayerList[szName] = {
nIndex = nPlayerIndex,
tbPut ={
-- ["B�u"] = {}
-- ["Cua"] = {}
-- ["T�m"] = {}
-- ["C�"] = {}
-- ["G�"] = {}
-- ["Nai"] = {}
},
nAwardCash = 0,
nAwardCoin = 0,
}
end
function FishGame:OnTime()-- moi 1 phut se chay 1 lan
print("BAU CUA DA CHAY")
local nMin = tonumber(GetLocalDate("%M")); -- lay so phut
local nX = mod(nMin,3)-- phut 1, 2 cho danh phut thu 3 ko cho danh
if nX == 0 then-- dang tinh ket qua khong cho danh tranh bug
FishGame.nStatus = 0
if FishGame:GetNextResult() ~= 1 then-- loi tinh toan
print("Bi dien roi")
return
end
FishGame:CalAwardForPlayer()
FishGame:AddAwardForPlayer()
else
FishGame.nStatus = 1
end
local nNowTime = tonumber(date( "%H%M "))
if (nNowTime >=1200 and nNowTime < 1300 ) or (nNowTime >=1800 and nNowTime < 1900 ) or (nNowTime >=2200 and nNowTime < 2300 ) then
return 1
end
-- if (nNowTime >= 0 and nNowTime < 1100) or (nNowTime >= 1300 and nNowTime < 2200)  then
 self:Stop()
 return
 -- end
-- return
end

