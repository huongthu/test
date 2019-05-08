--Trß ch¬i O¼n Tï T× - Author by AloneScript

TIMERID = 120;
TIMER_GAMEBET = 1;
TIMER_FRAME = 5;

tbAloneScriptGame = {};

tbAloneScriptGame.tbKindGame = {
	[1] = "KÐo",
	[2] = "Bóa",
	[3] = "Bao",
}
function tbAloneScriptGame:LoadDataGame()
	self.StateGame = {};
	self.TotalTime = {};
	self.WatingBet = {};
end

tbAloneScriptGame:LoadDataGame()