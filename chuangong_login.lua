Include("\\script\\global\\login_head.lua") 
Include("\\script\\global\\head_qianzhuang.lua") 
TV_LAST_APPLY_TIME = 1571 -- script viet hoa By http://tranhba.com  l�n tr��c th�n th�nh truy�n c�ng th�i gian 
TBMONTH = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31} 
strimg = "<link=image[0,1]:\\spr\\npcres\\enemy\\enemy111\\enemy111_pst.spr> ��c c� ki�m :<link>" 

function chuangong_login() 
if (GetTask(TV_LAST_APPLY_TIME) > 0) then 
local nowday = tonumber(date("%y%m%d")) 
local applytime = GetTask(TV_LAST_APPLY_TIME) 
if (nowday >= applytime ) then 
Describe(strimg.." ng��i tr��c m�t <color=yellow> th�n th�nh ��ch truy�n c�ng �� chu�n b� th�a ��ng <color> , t�y th�i c� th� t�i ta ch� truy�n c�ng #", 2,"H�o , ta bi�t , ��n l�c �� ta s� t�i b�i ph�ng . /cg_OnCancel","Kh�ng , minh ch� , ta kh�ng mu�n truy�n c�ng li�u , ta mu�n h�y b� truy�n c�ng th�n th�nh #/cg_undo"); 
else 
Describe(strimg.." ng��i tr��c m�t <color=yellow> �� th�n th�nh truy�n c�ng , "..(num2datestr(applytime)).." <color> sau l� ���c truy�n c�ng #", 2,"C�m �n minh ch� nh�c nh� , v�n b�i � ch� n�y c�m �n #/cg_OnCancel","Kh�ng , minh ch� , ta kh�ng mu�n truy�n c�ng li�u , ta mu�n h�y b� truy�n c�ng th�n th�nh #/cg_undo"); 
end 
end 
end 

function chuangong_msg() 
print("msgmsg") 
if (GetTask(TV_LAST_APPLY_TIME) > 0) then 
local nowday = tonumber(date("%y%m%d")) 
local applytime = GetTask(TV_LAST_APPLY_TIME) 
if (nowday >= applytime ) then 
Msg2Player("Ng��i tr��c m�t <color=yellow> th�n th�nh ��ch truy�n c�ng �� chu�n b� ho�n th�nh <color=> , t�y th�i c� th� ��n ��c c� ki�m ch� ch�nh th�c truy�n c�ng # truy�n c�ng c�n t�n hao 2 t�m ng�n phi�u , xin/m�i c�ng n�i tr��c chu�n b� xong . ") 
else 
Msg2Player("Ng��i tr��c m�t <color=yellow> �� th�n th�nh truy�n c�ng , truy�n c�ng th�i gian � "..(num2datestr(applytime)).."<color> sau , truy�n c�ng c�n t�n hao 2 t�m ng�n phi�u , xin/m�i c�ng n�i tr��c chu�n b� xong . ") 
end 
end 
end 

function num2datestr(nday) 
	local year = floor(nday / 10000) + 2000
local month = mod( floor(nday / 100) , 100) 
local day = mod(nday, 100) 
return year.." n�m "..month.." th�ng "..day.." ng�y " 
end 

function cg_undo() 
local nowday = GetTask(TV_LAST_APPLY_TIME) 
if (nowday > 0) then 
Describe(strimg.." ta ��n "..num2datestr(nowday).." li�n c� th� chu�n b� xong gi�p ng��i truy�n c�ng li�u , ng��i th�t kh�ng mu�n truy�n sao ? ",2,"��ng v�y , ta kh�ng mu�n truy�n c�ng li�u #/cg_undo_sure","Kh�ng , ta c�n l� mu�n truy�n , m�i v�a r�i nh�t th�i kh�n tr��ng n�i sai r�i m� th�i . /cg_OnCancel") 
else 
Describe(strimg.." ng��i kh�ng c� �� n�i v�i ta mu�n truy�n c�ng a . ch�a n�i qua nh� th� n�o h�y b� ��y ? ",1,"K�t th�c ��i tho�i /cg_OnCancel") 
end 
end 

function cg_undo_sure() 
SetTask(TV_LAST_APPLY_TIME, 0) 
Describe(strimg.." ���c r�i , v�y nh�ng th� n�y t�i li�u ta tr��c thu l�i , n�u nh� l�n sau mu�n truy�n l�i c�a n�a chu�n b� �i #",1,"C�m �n minh ch� #/cg_OnCancel") 
end 

function cg_OnCancel() 

end 

if (GetProductRegion() ~= "vn") then 
login_add(chuangong_msg, 2) 
end 
