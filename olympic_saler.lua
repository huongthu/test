Include("\\script\\global\\olympics_award.lua")

TEMP_QID = 122; 
TEMP_QCHOOSE = 123; 

function onBuyTicket() 
if (IsCharged() ~= 1 ) then 
Say("Th�t xin l�i , ng�i ch�a sung tr� gi� , cho n�n kh�ng c�ch n�o tham gia nh� �i�n th�nh h�i v� s� ho�t ��ng . ", 0) 
return 
end 
nCount = GetTicketCount(); 

if (nCount == 0 ) then 
Say("Th�t xin l�i , b�y gi� t�m th�i kh�ng c� b�t k� v� s� c� th� mua #", 0) 
return 
end; 

Tab = {}; 
for i = 1, nCount do 
Tab[i] = GetQuestionTip(GetTicket(i)).."/OSAsk"; 
end; 
Tab[nCount + 1] = "��ʱ���μӾ�����/Cancel";
Say("5000һ�Ų�Ʊ����Ҫ�����ĸ�?", nCount + 1, Tab)
end; 

function OSAsk(nSel) 
	nQId = GetTicket(nSel + 1);

if (nQId == 1000) then 
onMedalmain() 
return 
end 

Choose = {}; 
ChooseCount = GetChooseCount(nQId); 
for i = 1, ChooseCount do 
Choose[i] = GetChoose(nQId, i).."/OSSale"; 
end; 
	Choose[ChooseCount + 1] = "��ʱ���μӾ�����/Cancel";
	Say(GetQuestion(nQId), ChooseCount + 1, Choose);
SetTaskTemp(TEMP_QID, nQId) 
end; 

function OSSale(nSel) 
if (GetTaskTemp(TEMP_QID) == 0) then 
return 
end 
	SetTaskTemp(TEMP_QCHOOSE, nSel + 1)
Say(GetQuestion(GetTaskTemp(TEMP_QID)).."\n ��u :<color=yellow>"..GetChoose(GetTaskTemp(TEMP_QID), GetTaskTemp(TEMP_QCHOOSE)).."<color>\n gi� c� :5000", 2,"H�o , ta mua #/OSOnSale","T�m th�i kh�ng mua /OSCancel"); 
end; 

function OSOnSale() 
nQId = GetTaskTemp(TEMP_QID); 
nQChoose = GetTaskTemp(TEMP_QCHOOSE); 
if (nQId > 0 and nQChoose > 0) then 
if (Pay(GetQuestionPrice(nQId)) > 0) then 
if (AddTicket(nQId, nQChoose) == 1) then 
nItem = AddItem(6,1,75,1,0,0) 
SetSpecItemParam(nItem, 1, nQId) 
SetSpecItemParam(nItem, 2, nQChoose) 
SyncItem(nItem) 
Msg2Player("Th�nh c�ng mua ���c v� s� m�t t� #") 
else 
Earn(GetQuestionPrice(nQId)) 
Say("Th�t xin l�i , n�n lo�i v� s� �� kh�ng c�ch n�o n�a mua . ",0) 
end 
else 
Say("Ng�i tr�n ng��i mang ��ch kh�ng �� ti�n , xin/m�i �i tr��c l�y tr� l�i mua �i . ",0) 
end; 
end 
end 

function OSCancel() 

end; 