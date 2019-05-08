Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")


Shijin2mijian=50 
Mijian2babao=30 
Babao2baiguo=30 
Baiguo2shuijing=30 
Shuijing2quyuan=3 


function main() 
local nNpcIndex = GetLastDiagNpc(); 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 

local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 

local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> t�t c� m�i ng��i g�i t�ng t�u . " 
G_TASK:OnMessage("Ng�y nh�n ", tbDailog, "DialogWithNpc") 
tbDailog:Show() 
end 

function aboutluckyzongzi() 
Talk(1,"","T� ba m� # may m�n t�ng t� l� ta d�ng ba n�m m�i l�m ra t�i m�t m�i t�ng t� ph�m lo�i , �n r�i c� th� gia t�ng 30 �i�m ��ch may m�n tr� gi� . b�t qu� tr��c m�t c�n c� nho nh� thi�u s�t , ch� c� th� � �n t�ng t� ��ch ��a ph��ng ph�t huy t�c d�ng , c� h�ng th� ��ch b�ng h�u c� th� t�i th� m�t ch�t . ") 
end 


function listen() 
Talk(1,"talk2","T� ba m� # khu�t nguy�n l� chi�n qu�c s� qu�c : n��c S� ��ch ��i th�n . h�n gi� hi�n th� c� th� , nh�ng g�p ph�i qu� t�c ph�n ��i , b� l�u ��i nguy�n t��ng l�u v�c . h�n � l�u ��i trung , vi�t xu�ng # c�ch tao # ch� th� thi�n . sau s� kinh b� ph� , khu�t nguy�n t�m h� t� qu�c , � th�ng n�m s� n�m ng�y n�y vi�t xu�ng tuy�t b�t # nghi ng� sa # sau , �m th�ch ��u m�ch la giang b� m�nh . ") 
end; 

function talk2() 
Talk(1,"talk3","T� ba m� # khu�t nguy�n sau khi ch�t , d�n ch�ng ai �au d� th��ng , r�i r�t v�t t�i m�ch la b� s�ng �i b�ng treo khu�t nguy�n . m�i ng��i l�y ra v� khu�t nguy�n chu�n b� c�m �o�n ch� th�c �n n�m v�o giang trong , �� cho c� long t�m gi�i �n no , c�ng s� kh�ng �i c�n khu�t nguy�n ��ch th�n th� . b�i v� s� c�m �o�n l� giao long s� th�c , m�i ng��i ngh� ra d�ng luy�n l� c�y t�i c�m , b�n ngo�i d�y d�a th�i ti , l�m th�nh t�ng t� . ") 
end; 

function talk3() 
Talk(1,"","T� ba m� # sau n�y , � h�ng n�m ��ch th�ng n�m s� n�m , th� c� long chu c�nh �� # �n t�ng t� ��ch phong t�c , l�y n�y t�i k� ni�m khu�t nguy�n ��i phu . ��y ch�nh l� ti�t �oan ng� ��ch lai l�ch . ") 
end 

function lucky() 
if (GetExtPoint(6) >= 32768) then 
Talk(1,"","T� ba m� # ng��i kh�ng th� nh�n l�y may m�n nhu th��c #") 
-- script viet hoa By http://tranhba.com  SetExtPoint(6,0) 
WriteLog(date("%H%M%S").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().." , nh�n l�y may m�n nhu th��c th�t b�i # tr�ng th�i d� th��ng . ") 
else 
Say("T� ba m� # ng��i m�u ch�t l�y bao nhi�u c� may m�n nhu th��c ? ",3,"Nh�n l�y m��i may m�n nhu th��c /lucky10","Nh�n l�y m�t may m�n nhu th��c /lucky1","C�i g� ��u kh�ng l�m /no") 
end 
end 

function lucky10() 
if (GetExtPoint(6) >= 10) then 
for i=1,10 do 
AddEventItem(405) 
PayExtPoint(6,1) 
end 
Msg2Player("Ng��i l�y ���c m��i may m�n nhu th��c ") 
WriteLog(date("%H%M%S").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().." , nh�n l�y 10 c� may m�n nhu th��c . ") 
else 
Talk(1,"","T� ba m� # ng��i kh�ng th� nh�n l�y nhi�u nh� v�y may m�n nhu th��c #") 
end 
end 

function lucky1() 
if (GetExtPoint(6) > 0) then 
AddEventItem(405) 
PayExtPoint(6,1) 
Msg2Player("Ng��i l�y ���c m�t may m�n nhu th��c ") 
WriteLog(date("%H%M%S").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().." , nh�n l�y 1 c� may m�n nhu th��c . ") 
else 
Talk(1,"","T� ba m� # ng��i kh�ng th� nh�n l�y may m�n nhu th��c #") 
end 
end 

function make() 
i=GetCash() 
if (i>=2000) then 
Say("T� ba m� # kh�ch quan , l�m m�t t�ng t� mu�n 2000 l��ng b�c , kh�ng bi�t ng��i mu�n l�m g� t�ng t� ? ",7,"H�ng t�o t�ng t� /yes1","B�n l�t t�ng t� /yes2","Th�t heo t�ng t� /yes3","Th�t b� t�ng t� /yes4","Th�p c�m t�ng t� /yes5","May m�n t�ng t� /luckyzongzi","C�i g� ��u kh�ng l�m /no") 
else 
Talk(1,"","T� ba m� # kh�ch quan , l�m m�t t�ng t� mu�n 2000 l��ng b�c , ti�n c�a ng��i gi�ng nh� kh�ng �� , c� ph�i hay kh�ng qu�n mang � tr�n ng��i ��y ") 
end 
end; 

function luckyzongzi() 
if ((GetItemCountEx(394)>=1) and (GetItemCountEx(395)>=1) and (GetItemCountEx(396)>=1) and (GetItemCountEx(405)>=1) and (GetItemCountEx(397)>=1) and (GetItemCountEx(398)>=1) and (GetItemCountEx(399)>=1)) then 
Talk(1,"","T� ba m� # l�m xong , ng��i xem m�t ch�t , b�o ng��i h�i l�ng . ") 
DelItemEx(394) 
DelItemEx(395) 
DelItemEx(396) 
DelItemEx(405) 
DelItemEx(397) 
DelItemEx(398) 
DelItemEx(399) 
AddItem(6,0,70,1,0,0,0) 
Msg2Player("Ng��i l�y ���c may m�n t�ng t� ") 
WriteLog(date("%H%M%S").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().." , luy�n ch� li�u m�t con may m�n t�ng t� . ") 
Pay(2000) 
else 
Talk(1,"","T� ba m� # l�m may m�n t�ng t� c�n h�ng t�o # b�n l�t # ��o m� # th�t heo # t�ng l� # th�t b� c�c m�t ph�n c�ng <color=red> m�t may m�n nhu th��c <color> , ng��i t�i li�u gi�ng nh� kh�ng �� a ? ") 
end 
end; 

function yes1() 
if ((GetItemCountEx(394)>=2) and (GetItemCountEx(396)>=2) and (GetItemCountEx(397)>=2)) then 
Talk(1,"","T� ba m� # l�m xong , ng��i xem m�t ch�t , b�o ng��i h�i l�ng . ") 
DelItemEx(394) 
DelItemEx(396) 
DelItemEx(397) 
DelItemEx(394) 
DelItemEx(396) 
DelItemEx(397) 
AddItem(1,7,0,1,0,0,0) 
Pay(2000) 
Msg2Player("Ng��i l�y ���c h�ng t�o t�ng t� ") 
else 
Talk(1,"","T� ba m� # l�m h�ng t�o t�ng t� c�n h�ng t�o # ��o m� c�ng t�ng l� c�c hai ph�n , ng��i t�i li�u gi�ng nh� kh�ng �� a ? ") 
end 
end; 

function yes2() 
if ((GetItemCountEx(395)>=2) and (GetItemCountEx(396)>=2) and (GetItemCountEx(397)>=2)) then 
Talk(1,"","T� ba m� # l�m xong , ng��i xem m�t ch�t , b�o ng��i h�i l�ng . ") 
DelItemEx(395) 
DelItemEx(396) 
DelItemEx(397) 
DelItemEx(395) 
DelItemEx(396) 
DelItemEx(397) 
AddItem(6,0,60,1,0,0,0) 
Pay(2000) 
Msg2Player("Ng��i l�y ���c b�n l�t t�ng t� ") 
else 
Talk(1,"","T� ba m� # l�m b�n l�t t�ng t� c�n b�n l�t # ��o m� c�ng t�ng l� c�c hai ph�n , ng��i t�i li�u gi�ng nh� kh�ng �� a ? ") 
end 
end; 

function yes3() 
if ((GetItemCountEx(395)>=2) and (GetItemCountEx(396)>=2) and (GetItemCountEx(397)>=2) and (GetItemCountEx(398)>=2)) then 
Talk(1,"","T� ba m� # l�m xong , ng��i xem m�t ch�t , b�o ng��i h�i l�ng . ") 
DelItemEx(395) 
DelItemEx(396) 
DelItemEx(397) 
DelItemEx(398) 
DelItemEx(395) 
DelItemEx(396) 
DelItemEx(397) 
DelItemEx(398) 
AddItem(6,0,61,1,0,0,0) 
Pay(2000) 
Msg2Player("Ng��i l�y ���c th�t heo t�ng t� ") 
else 
Talk(1,"","T� ba m� # l�m th�t heo t�ng t� c�n b�n l�t # th�t heo # ��o m� c�ng t�ng l� c�c hai ph�n , ng��i t�i li�u gi�ng nh� kh�ng �� a ? ") 
end 
end; 


function yes4() 
if ((GetItemCountEx(394)>=2) and (GetItemCountEx(396)>=2) and (GetItemCountEx(397)>=2) and (GetItemCountEx(399)>=2)) then 
Talk(1,"","T� ba m� # l�m xong , ng��i xem m�t ch�t , b�o ng��i h�i l�ng . ") 
DelItemEx(394) 
DelItemEx(396) 
DelItemEx(397) 
DelItemEx(399) 
DelItemEx(394) 
DelItemEx(396) 
DelItemEx(397) 
DelItemEx(399) 
AddItem(6,0,62,1,0,0,0) 
Pay(2000) 
Msg2Player("Ng��i l�y ���c th�t b� t�ng t� ") 
else 
Talk(1,"","T� ba m� # l�m th�t b� t�ng t� c�n th�t b� # h�ng t�o # ��o m� c�ng t�ng l� c�c hai ph�n , ng��i t�i li�u gi�ng nh� kh�ng �� a ? ") 
end 
end; 


function yes5() 
Say("T� ba m� # kh�ng d�i g�t kh�ch quan n�i , l�m th�p c�m t�ng t� l� t� truy�n xu�ng b� truy�n , ta c�ng kh�ng c� bao l�n n�m ch�c , l�m xong l� ng��i v�n kh� , l�m kh�ng t�t tao ��p t�i li�u ng��i c�ng ��ng o�n ta , c� ���c hay kh�ng ? ",2,"H�o /yes6","Kh�ng t�t /no") 
end; 

function yes6() 
if ((GetItemCountEx(394)>=2) and (GetItemCountEx(395)>=2) and (GetItemCountEx(396)>=2) and (GetItemCountEx(397)>=2) and (GetItemCountEx(398)>=2) and (GetItemCountEx(399)>=2)) then 
i=random(1,100) 
if (i<=30) then 
Talk(1,"","T� ba m� # l�m xong , ng��i xem m�t ch�t , b�o ng��i h�i l�ng . ") 
DelItemEx(394) 
DelItemEx(394) 
DelItemEx(395) 
DelItemEx(395) 
DelItemEx(396) 
DelItemEx(396) 
DelItemEx(397) 
DelItemEx(397) 
DelItemEx(398) 
DelItemEx(398) 
DelItemEx(399) 
DelItemEx(399) 
AddItem(6,1,63,1,0,0,0) 
Msg2Player("Ng��i l�y ���c th�p c�m t�ng t� ") 
Pay(2000) 
else 
Talk(1,"","T� ba m� # ng��ng ng�ng , th�t l�m chuy�n x�u li�u . ") 
DelItemEx(394) 
DelItemEx(394) 
DelItemEx(395) 
DelItemEx(395) 
DelItemEx(396) 
DelItemEx(396) 
DelItemEx(397) 
DelItemEx(397) 
DelItemEx(398) 
DelItemEx(398) 
DelItemEx(399) 
DelItemEx(399) 
Pay(2000) 
end 
else 
Talk(1,"","T� ba m� # l�m th�p c�m t�ng t� c�n h�ng t�o # b�n l�t # ��o m� # th�t heo # th�t b� c�ng t�ng l� c�c hai ph�n , ng��i t�i li�u gi�ng nh� kh�ng �� a ? ") 
end 
end; 

function skill() 
i=GetCash() 
if (i>=1000) then 
if (GetItemCountEx(394) >= 1) then 
SetTaskTemp(51,394) 
elseif (GetItemCountEx(395) >= 1) then 
SetTaskTemp(51,395) 
elseif (GetItemCountEx(396) >= 1) then 
SetTaskTemp(51,396) 
elseif (GetItemCountEx(397) >= 1) then 
SetTaskTemp(51,397) 
elseif (GetItemCountEx(398) >= 1) then 
SetTaskTemp(51,398) 
elseif (GetItemCountEx(399) >= 1) then 
SetTaskTemp(51,399) 
end 
Say("T� ba m� # ta t� th��ng ch�nh l� v� ho�ng cung l�m c�ng ph�m ng� t�ng ��ch , l�m ���c t�ng t� ��u l� nh�n gian ti�n v� , ch�ng qua l� tay ngh� n�y ��n ta ��y thay m�t th�t truy�n ph�i kh�ng sai bi�t l�m , n�u nh� ng��i ch�u l�i c�a , ta c� th� �em trong tay ng��i th�p c�m t�ng t� �i�u ch� th�nh trong truy�n thuy�t ��ch c�ng ph�m ng� t�ng , ch� l�y ng��i 1000 b�c . kh�ng bi�t ng��i mu�n gia c�ng c�i g� t�ng t� ��y ? ",6,"M�t ti�n th�p c�m t�ng t� /yes7","T�m b�o th�p c�m t�ng t� /yes8","Tr�m qu� th�p c�m t�ng t� /yes9","Th�y tinh th�p c�m t�ng t� /yes10","Khu�t nguy�n th�p c�m t�ng t� /yes11","C�i g� ��u kh�ng l�m /no") 
else 
Talk(1,"","T� ba m� # kh�ch quan , gia c�ng m�t t�ng t� mu�n 1000 l��ng b�c , ti�n c�a ng��i gi�ng nh� kh�ng �� , c�n l� l�n sau tr� l�i �i . ") 
end 
end; 

function yes7() 
flag=nil 
local temp=Shijin2mijian 
if ((HaveCommonItem(6,1,63)>0) and (GetTaskTemp(51) > 0)) then 
if(GetItemCountEx(404)>0) then 
flag=1 
			temp=Shijin2mijian+10
end 
Talk(1,"","Xin ch� ch�c l�t . ") 
DelItemEx(GetTaskTemp(51)) 
i=random(1,100) 
if (i<=temp) then 
Talk(1,"","T� ba m� # t� truy�n tay c�a ngh� qu� nhi�n kh�ng sai , th�t l�m cho ta l�m ���c m�t ti�n th�p c�m t�ng t� li�u #") 
DelCommonItem(6,1,63) 
AddItem(6,1,64,1,0,0,0) 
Pay(1000) 
if(flag) then 
DelItemEx(404) 
end 
Msg2Player("Ng��i l�y ���c m�t ti�n th�p c�m t�ng t� ") 
else 
Talk(1,"","T� ba m� # th�t b�i , t�t nh� v�y ��ch t�ng t� v�n l� kh�ng ph�i l� d� d�ng l�m ���c , ch� c� th� tr� l�i cho ng��i c�i n�y th�p c�m t�ng t� li�u . ") 
Pay(1000) 
Msg2Player("Ng��i l�y ���c th�p c�m t�ng t� ") 
if(flag) then 
DelItemEx(404) 
end 
end 
else 
Talk(1,"","T� ba m� # l�m m�t ti�n th�p c�m t�ng t� c�n m�t ph�n th�p c�m t�ng t� c�ng t�y � m�t ph�n t�ng t� t�i li�u , ng��i t�i li�u gi�ng nh� kh�ng �� a ? ") 
end 
end; 

function yes8() 
flag=nil 
local temp=Mijian2babao 
if ((HaveCommonItem(6,1,64)>0) and (GetTaskTemp(51) > 0)) then 
if(GetItemCountEx(404)>0) then 
flag=1 
			temp=Mijian2babao+20
end 
Talk(1,"","Xin ch� ch�c l�t . ") 
DelItemEx(GetTaskTemp(51)) 
i=random(1,100) 
if (i<=temp) then 
Talk(1,"","T� ba m� # t� truy�n tay c�a ngh� qu� nhi�n kh�ng sai , th�t l�m cho ta l�m ���c t�m b�o th�p c�m t�ng t� li�u #") 
DelCommonItem(6,1,64) 
AddItem(6,1,65,1,0,0,0) 
Pay(1000) 
if(flag) then 
DelItemEx(404) 
end 
Msg2Player("Ng��i l�y ���c t�m b�o th�p c�m t�ng t� ") 
else 
Talk(1,"","T� ba m� # th�t b�i , t�t nh� v�y ��ch t�ng t� v�n l� kh�ng ph�i l� d� d�ng l�m ���c , ch� c� th� tr� l�i cho ng��i c�i n�y th�p c�m t�ng t� li�u . ") 
DelCommonItem(6,1,64) 
AddItem(6,1,63,1,0,0,0) 
Pay(1000) 
Msg2Player("Ng��i l�y ���c th�p c�m t�ng t� ") 
if(flag) then 
DelItemEx(404) 
end 
end 
else 
Talk(1,"","T� ba m� # l�m t�m b�o th�p c�m t�ng t� c�n m�t ph�n m�t ti�n th�p c�m t�ng t� c�ng t�y � m�t ph�n t�ng t� t�i li�u , ng��i t�i li�u gi�ng nh� kh�ng �� a ? ") 
end 
end; 


function yes9() 
flag=nil 
local temp=Babao2baiguo 
if ((HaveCommonItem(6,1,65)>0) and (GetTaskTemp(51) > 0)) then 
if(GetItemCountEx(404)>0) then 
flag=1 
			temp=Babao2baiguo+10
end 
Talk(1,"","Xin ch� ch�c l�t . ") 
DelItemEx(GetTaskTemp(51)) 
i=random(1,100) 
if (i<=temp) then 
Talk(1,"","T� ba m� # t� truy�n tay c�a ngh� qu� nhi�n kh�ng sai , th�t l�m cho ta l�m ���c tr�m qu� th�p c�m t�ng t� li�u #") 
DelCommonItem(6,1,65) 
AddItem(6,1,66,1,0,0,0) 
Pay(1000) 
if(flag) then 
DelItemEx(404) 
end 
Msg2Player("Ng��i l�y ���c tr�m qu� th�p c�m t�ng t� ") 
else 
Talk(1,"","T� ba m� # th�t b�i , t�t nh� v�y ��ch t�ng t� v�n l� kh�ng ph�i l� d� d�ng l�m ���c , ch� c� th� tr� l�i cho ng��i c�i n�y th�p c�m t�ng t� li�u . ") 
DelCommonItem(6,1,65) 
AddItem(6,1,63,1,0,0,0) 
Pay(1000) 
Msg2Player("Ng��i l�y ���c th�p c�m t�ng t� ") 
if(flag) then 
DelItemEx(404) 
end 
end 
else 
Talk(1,"","T� ba m� # l�m tr�m qu� th�p c�m t�ng t� c�n m�t ph�n t�m b�o th�p c�m t�ng t� c�ng t�y � m�t ph�n t�ng t� t�i li�u , ng��i t�i li�u gi�ng nh� kh�ng �� a ? ") 
end 
end; 

function yes10() 
flag=nil 
local temp=Baiguo2shuijing 
if ((HaveCommonItem(6,1,66)>0) and (GetTaskTemp(51) > 0)) then 
if(GetItemCountEx(404)>0) then 
flag=1 
			temp=Baiguo2shuijing+5
end 
Talk(1,"","Xin ch� ch�c l�t . ") 
DelItemEx(GetTaskTemp(51)) 
i=random(1,100) 
if (i<=temp) then 
Talk(1,"","T� ba m� # t� truy�n tay c�a ngh� qu� nhi�n kh�ng sai , th�t l�m cho ta l�m ���c th�y tinh th�p c�m t�ng t� li�u #") 
DelItemEx(398) 
DelItemEx(399) 
DelCommonItem(6,1,66) 
AddItem(6,1,67,1,0,0,0) 
Pay(1000) 
if(flag) then 
DelItemEx(404) 
end 
Msg2Player("Ng��i l�y ���c th�y tinh th�p c�m t�ng t� ") 
else 
Talk(1,"","T� ba m� # th�t b�i , t�t nh� v�y ��ch t�ng t� v�n l� kh�ng ph�i l� d� d�ng l�m ���c , ch� c� th� tr� l�i cho ng��i c�i n�y th�p c�m t�ng t� li�u . ") 
DelCommonItem(6,1,66) 
AddItem(6,1,63,1,0,0,0) 
Pay(1000) 
if(flag) then 
DelItemEx(404) 
end 
Msg2Player("Ng��i l�y ���c th�p c�m t�ng t� ") 
end 
else 
Talk(1,"","T� ba m� # l�m th�y tinh th�p c�m t�ng t� c�n m�t ph�n tr�m qu� th�p c�m t�ng t� c�ng t�y � m�t ph�n t�ng t� t�i li�u , ng��i t�i li�u gi�ng nh� kh�ng �� a ? ") 
end 
end; 



function yes11() 
flag=nil 
local temp=Shuijing2quyuan 
if ((HaveCommonItem(6,1,67)>0) and (GetTaskTemp(51) > 0)) then 
if (GetItemCountEx(404)>0) then 
flag = 1 
			temp = Shuijing2quyuan + 3
end 
Talk(1,"","Xin ch� ch�c l�t . ") 
DelItemEx(GetTaskTemp(51)) 
i = random(1,100) 
if (i<=temp) then 
Talk(1,"","T� ba m� # ��y l� trong truy�n thuy�t ��ch khu�t nguy�n th�p c�m t�ng t� nha , ta r�t c�c th�c hi�n t� th��ng ��ch ��c m� �em n� l�m ���c #") 
DelCommonItem(6,1,67) 
sel=AddItem(6,1,68,1,0,0,0) 
time=GetItemGenTime(sel) 
name=GetName() 
Pay(1000) 
if(flag) then 
DelItemEx(404) 
end 
Msg2Player("Ng��i l�y ���c khu�t nguy�n th�p c�m t�ng t� ") 
	    		n = GetGlbValue(1)+1
SetGlbValue(1,n) 
WriteLog(date("%H%M%S").."# tr��ng m�c "..GetAccount().." , vai tr� "..GetName().." , luy�n ch� th�nh c�ng m�t con khu�t nguy�n t�ng t� # h�m nay khu�t nguy�n th�p c�m t�ng t� ��ch c� ��m v� "..n.." ch� . ") 
AddGlobalNews("T� ba m� # n�i cho m�i ng��i m�t tin t�c t�t , trong truy�n thuy�t ��ch khu�t nguy�n t�ng t� �� b� nh� ch�i l�m ���c , m�i ng��i ti�p t�c c� g�ng a #") 
else 
Talk(1,"","T� ba m� # th�t b�i , t�t nh� v�y ��ch t�ng t� v�n l� kh�ng ph�i l� d� d�ng l�m ���c , ch� c� th� tr� l�i cho ng��i c�i n�y th�p c�m t�ng t� li�u . ") 
DelCommonItem(6,1,67) 
AddItem(6,1,63,1,0,0,0) 
Pay(1000) 
if(flag) then 
DelItemEx(404) 
end 
Msg2Player("Ng��i l�y ���c th�p c�m t�ng t� ") 
end 
else 
Talk(1,"","T� ba m� # l�m khu�t nguy�n th�p c�m t�ng t� c�n m�t ph�n th�y tinh th�p c�m t�ng t� c�ng t�y � m�t ph�n t�ng t� t�i li�u , ng��i t�i li�u gi�ng nh� kh�ng �� a ? ") 
end 
end 


function quyuan() 
Talk(1,"","T� ba m� # khu�t nguy�n b� truy�n l� ta t� th��ng l�u l�i b� s�ch , b�n trong ghi l�i gia c�ng th�p c�m t�ng t� ��ch kh�ng hai ph�p m�n , ��ng ti�c b� ta m�t m�c � c�a th�nh b�n ngo�i li�u , c�c ng��i c� l� c� th� �i t�m t�m nh�n , s� ph�i c� thu ho�ch ��ch . ") 
end; 

function no() 
end; 
