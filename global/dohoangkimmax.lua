function dohoangkimmax()
local tab_Content =
{
"Trang B� Kim �./kimomax",
"Trang B� B�ch H�./bachhomax",
"Trang B� X�ch L�n./xichlanmax",
"Trang B� Minh Ph��ng./minhphuongmax",
"Tho�t./no",
"Tr� l�i"
}
Say(" Mu�n l�y trang b� g� ? ", getn(tab_Content), tab_Content);
end

function xichlanmax()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sexichlanmax(1)",
"Thi�u L�m B�ng/#sexichlanmax(2)",
"Thi�u L�m �ao/#sexichlanmax(3)",
"Thi�n V��ng Ch�y/#sexichlanmax(4)",
"Thi�n V��ng Th��ng/#sexichlanmax(5)",
"Thi�n V��ng �ao/#sexichlanmax(6)",
"Nga Mi Ki�m/#sexichlanmax(7)",
"Nga Mi Ch��ng/#sexichlanmax(8)",
"Th�y Y�n �ao/#sexichlanmax(9)",
"Th�y Y�n Song �ao/#sexichlanmax(10)",
"Ng� ��c Ch��ng/#sexichlanmax(11)",
"Ng� ��c �ao/#sexichlanmax(12)",
"���ng M�n Phi �ao/#sexichlanmax(13)",
"���ng M�n N�/#sexichlanmax(14)",
"Trang sau/xichlanmax2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function xichlanmax2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sexichlanmax(15)",
"C�i Bang R�ng/#sexichlanmax(16)",
"C�i Bang B�ng/#sexichlanmax(17)",
"Thi�n Nh�n K�ch/#sexichlanmax(18)",
"Thi�n Nh�n �ao/#sexichlanmax(19)",
"V� �ang Ki�m/#sexichlanmax(21)",
"V� �ang Quy�n/#sexichlanmax(20)",
"C�n L�n �ao/#sexichlanmax(22)",
"C�n L�n Ki�m/#sexichlanmax(23)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sexichlanmax(nId)
for i = 4136, 4145 do
AddGoldItem(0,10*nId+i-10)
end
end
function minhphuongmax()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#seminhphuongmax(1)",
"Thi�u L�m B�ng/#seminhphuongmax(2)",
"Thi�u L�m �ao/#seminhphuongmax(3)",
"Thi�n V��ng Ch�y/#seminhphuongmax(4)",
"Thi�n V��ng Th��ng/#seminhphuongmax(5)",
"Thi�n V��ng �ao/#seminhphuongmax(6)",
"Nga Mi Ki�m/#seminhphuongmax(7)",
"Nga Mi Ch��ng/#seminhphuongmax(8)",
"Th�y Y�n �ao/#seminhphuongmax(9)",
"Th�y Y�n Song �ao/#seminhphuongmax(10)",
"Ng� ��c Ch��ng/#seminhphuongmax(11)",
"Ng� ��c �ao/#seminhphuongmax(12)",
"���ng M�n Phi �ao/#seminhphuongmax(13)",
"���ng M�n N�/#seminhphuongmax(14)",
"Trang sau/minhphuongmax2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function minhphuongmax2()
local tab_Content = {
"���ng M�n Phi Ti�u/#seminhphuongmax(15)",
"C�i Bang R�ng/#seminhphuongmax(16)",
"C�i Bang B�ng/#seminhphuongmax(17)",
"Thi�n Nh�n K�ch/#seminhphuongmax(18)",
"Thi�n Nh�n �ao/#seminhphuongmax(19)",
"V� �ang Ki�m/#seminhphuongmax(21)",
"V� �ang Quy�n/#seminhphuongmax(20)",
"C�n L�n �ao/#seminhphuongmax(22)",
"C�n L�n Ki�m/#seminhphuongmax(23)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function seminhphuongmax(nId)
for i = 4863, 4872 do
AddGoldItem(0,10*nId+i-10)
end
end

function bachhomax()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sebachhomax(1)",
"Thi�u L�m B�ng/#sebachhomax(2)",
"Thi�u L�m �ao/#sebachhomax(3)",
"Thi�n V��ng Ch�y/#sebachhomax(4)",
"Thi�n V��ng Th��ng/#sebachhomax(5)",
"Thi�n V��ng �ao/#sebachhomax(6)",
"Nga Mi Ki�m/#sebachhomax(7)",
"Nga Mi Ch��ng/#sebachhomax(8)",
"Th�y Y�n �ao/#sebachhomax(9)",
"Th�y Y�n Song �ao/#sebachhomax(10)",
"Ng� ��c Ch��ng/#sebachhomax(11)",
"Ng� ��c �ao/#sebachhomax(12)",
"���ng M�n Phi �ao/#sebachhomax(13)",
"���ng M�n N�/#sebachhomax(14)",
"Trang sau/bachhomax2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function bachhomax2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sebachhomax(15)",
"C�i Bang R�ng/#sebachhomax(16)",
"C�i Bang B�ng/#sebachhomax(17)",
"Thi�n Nh�n K�ch/#sebachhomax(18)",
"Thi�n Nh�n �ao/#sebachhomax(19)",
"V� �ang Ki�m/#sebachhomax(21)",
"V� �ang Quy�n/#sebachhomax(20)",
"C�n L�n �ao/#sebachhomax(22)",
"C�n L�n Ki�m/#sebachhomax(23)",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sebachhomax(nId)
for i = 3895, 3904 do
AddGoldItem(0,10*nId+i-10)
end
end
function kimomax()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sekimomax(1)",
"Thi�u L�m B�ng/#sekimomax(2)",
"Thi�u L�m �ao/#sekimomax(3)",
"Thi�n V��ng Ch�y/#sekimomax(4)",
"Thi�n V��ng Th��ng/#sekimomax(5)",
"Thi�n V��ng �ao/#sekimomax(6)",
"Nga Mi Ki�m/#sekimomax(7)",
"Nga Mi Ch��ng/#sekimomax(8)",
"Th�y Y�n �ao/#sekimomax(9)",
"Th�y Y�n Song �ao/#sekimomax(10)",
"Ng� ��c Ch��ng/#sekimomax(11)",
"Ng� ��c �ao/#sekimomax(12)",
"���ng M�n Phi �ao/#sekimomax(13)",
"���ng M�n N�/#sekimomax(14)",
"Trang sau/kimomax2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function kimomax2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sekimomax(15)",
"C�i Bang R�ng/#sekimomax(16)",
"C�i Bang B�ng/#sekimomax(17)",
"Thi�n Nh�n K�ch/#sekimomax(18)",
"Thi�n Nh�n �ao/#sekimomax(19)",
"V� �ang Ki�m/#sekimomax(21)",
"V� �ang Quy�n/#sekimomax(20)",
"C�n L�n �ao/#sekimomax(22)",
"C�n L�n Ki�m/#sekimomax(23)",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sekimomax(nId)
for i = 3235, 3244 do
AddGoldItem(0,10*nId+i-10)
end
end
