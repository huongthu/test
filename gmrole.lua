Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")

tbGmRole = {}
tbGmRole.nPak = curpack()
tbGmRole.tbAccount = 
{
	["123456"] = 
	{
		"Namcung"
	},
	["Namcung"] = 
	{
		"Namcung"
	},
	["Namcung"] = 
	{
		"Namcung"
	},
	["Namcung"] = 
	{
		"Namcung"
	},
	
}
tbGmRole.tbSkill = 
{
	732,
	733
}

function tbGmRole:CheckAccountAndRoleName()
	local szAccount = GetAccount()
	local szName = GetName()
	local tbRoleList = self.tbAccount[szAccount]
	if tbRoleList then
		for i=1, getn(tbRoleList) do
			if tbRoleList[i] == szName then
				return 1
			end
		end
	end
end

function tbGmRole:Change2GM()
	if not self:CheckAccountAndRoleName() then
		return
	end
	for i=1, getn(self.tbSkill) do
		AddMagic(self.tbSkill[i], 1)
	end
	
	local nLevel = GetLevel()
	if nLevel < 120 then
		ST_LevelUp(120-nLevel)
	end
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)
	if CalcFreeItemCellCount() >= 1 then
		local nItemIndex = AddItem(6,1,2766,1,0,0)
		SetItemBindState(nItemIndex, -2)
	end
	
end

function tbGmRole:GMC_Menu()
	if not self:CheckAccountAndRoleName() then
		return
	end
function tbGmRole:TaoItem(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
	if (n < 6) then Talk(1, "", format("Sai Item Code. ThiÕu tr­êng yªu cÇu <color=yellow>%s<color>",n)); return end
	if (n > 7) then Talk(1, "", format("Sai Item Code. Qu¸ nhiÒu tr­êng d÷ liÖu <color=yellow>%s<color>",n)); return end
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	local itid = tonumber(szICode[3]); 
	local itlv = tonumber(szICode[4]); 
	local itseri = tonumber(szICode[5]); 
	local itluck = tonumber(szICode[6]); 
	local itmagic = tonumber(szICode[7]); 
	if (itlv < 0) then Talk(1, "", format("CÊp ®é man ®å kh«ng ®­îc thÊp qu¸ <color=yellow>%s<color>",itlv)); return end
	if (itlv > 10) then Talk(1, "", format("ChØ hæ trî ®Õn cÊp 10. HiÖn t¹i nhËp vµo <color=yellow>%s<color>",itlv)); return end
	if (itmagic == nil) then itmagic=0; end
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	else
	local EquipId = tonumber(szICode[1]); 
	AddGoldItem(0, EquipId);
	end
end
	local szTitle = "B¹n cÇn g× ?"
	local tbOpt = 
	{
		{"T¹o Items", g_AskClientStringEx, {"0,10,9,1,0,0", 0, 256, "NhËp vµo Item Code", {self.TaoItem, {self}} }},
		{"§Õn b¶n ®å", g_AskClientStringEx, {"20,3546,6226", 0, 256, "format:map,x,y", {self.NewWorld, {self}} }},
		{"§æi tªn nh©n vËt", g_AskClientStringEx, {GetName(), 0, 300, "Teen míi", {self.FindRole, {self}} }},
		{"KickOutAllPlayer", g_AskClientStringEx, {"B¶o tr× m¸y chñ !", 0, 300, "reason", {self.KickOutAllPlayer, {self}} }},
		{"FightState", g_AskClientStringEx, {"Ly Do ChangeFightState", 0, 300, "reason", {self.ChangeFightState, {self}} }},
		{"Th«i"}
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function tbGmRole:ChangeFightState(szReason)
	SetFightState(not GetFightState())
	WriteLog(date().." account:"..GetAccount().." name="..GetName().."ChangeFightState to "..GetFightState()..", reason: "..szReason..".")
end


function tbGmRole:KickOutAllPlayer(szReason)
	OrgPlayerIdx = PlayerIndex
	for i=1, 1000 do
		PlayerIndex = i
		KickOutSelf()
	end
	WriteLog(date().." account:"..GetAccount().." name="..GetName().."KickOutAllPlayer(), reason: "..szReason..".")
	PlayerIndex = OrgPlayerIdx
end

function tbGmRole:NewWorld(szPos)
	local tbPos = lib:Split(szPos, ",")
	local nMapId = GetWorldPos()
	if nMapId == tbPos[1] then
		SetPos(tbPos[2], tbPos[3])
	else
		NewWorld(tbPos[1], tbPos[2], tbPos[3])	
	end
	
end

function tbGmRole:FindRole(szName)
	local nPlayerIndex = PlayerIndex
	local nPak = usepack(self.nPak)
	CallPlayerFunction(nPlayerIndex, QueryWiseManForSB, "tbGmRole_Finded", "tbGmRole_UnFind", 0, szName);
	usepack(nPak)
end

function tbGmRole:Finded(szTargetName, szMapName, nSubWorldID, nPosX, nPosY)
	local szTitle = format("<A><color=yellow>%s<color>:<color=yellow>%s<color>", szTargetName, szMapName)
	local tbOpt = 
	{
		{"<B>",self.NewWorld, {self, format("%d,%d,%d",nSubWorldID, nPosX, nPosY) }},
		{"<C>"}
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function tbGmRole_Finded(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect)
	tbGmRole:Finded(TargetName, MapName, nSubWorldID, nPosX, nPosY)
end

function tbGmRole_UnFind(TargetName, MoneyToPay)
	Talk(1, "", format("<D>%s", TargetName))
end