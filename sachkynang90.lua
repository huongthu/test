Include("\\script\\task\\system\\task_string.lua")
function main()
 dofile("script/global/sachkynang90.lua")
 local n_fac = GetLastFactionNumber(); 
if (n_fac < 0) then 
Talk(1, "","Gi�ng nh� quy�n s�ch n�y mi�u t� ch�nh l� c�c m�n ph�i cao c�p v� c�ng , ng��i kh�ng c� m�n ph�i n�n s� kh�ng hi�u ���c. "); 
return 1; 
end
if GetLevel()>=80 then
 if n_fac == 0 then
local tbSay = {}
tinsert(tbSay,"V� T��ng Tr�m./thieulamdao")
tinsert(tbSay,"Ho�nh T�o Thi�n Qu�n./thieulamcon")
tinsert(tbSay,"��t Ma �� Giang./thieulamquyen")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n h�c !", getn(tbSay), tbSay)
return 1

elseif n_fac == 1 then
local tbSay = {}
tinsert(tbSay,"Ph� Thi�n Tr�m./thienvuongdao")
tinsert(tbSay,"Truy Phong Quy�t./thienvuongchuy")
tinsert(tbSay,"Truy Tinh Tr�c Nguy�t./thienvuongthuong")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n h�c !", getn(tbSay), tbSay)
return 1

elseif n_fac == 2 then
local tbSay = {}
tinsert(tbSay,"B�o V� L� Hoa./baovulehoa")
tinsert(tbSay,"Nhi�p H�n Lo�n T�m./nhiephontuyetanh")
tinsert(tbSay,"Lo�n Ho�n K�ch./loanhoankich")
tinsert(tbSay,"C�u Cung Phi Tinh./cuucungphitinh")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n h�c !", getn(tbSay), tbSay)
return 1

elseif n_fac == 3 then
local tbSay = {}
tinsert(tbSay,"Huy�n �m Tr�m./ngudocdao")
tinsert(tbSay,"�m Phong Th�c C�t./ngudocchuong")
tinsert(tbSay,"�o�n C�n H� C�t./ngudocbua")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n h�c !", getn(tbSay), tbSay)
return 1

elseif n_fac == 4 then
local tbSay = {}
tinsert(tbSay,"Tam Nga T� Tuy�t./ngamikiem")
tinsert(tbSay,"Phong S��ng To�i �nh./ngamichuong")
tinsert(tbSay,"Ph� �� Ch�ng Sinh./ngamibuff")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n h�c !", getn(tbSay), tbSay)
return 1

elseif n_fac == 5 then
local tbSay = {}
tinsert(tbSay,"B�ng Tung V� �nh./thuyyendao")
tinsert(tbSay,"B�ng T�m Ti�n T�./thuyyensongdao")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n h�c !", getn(tbSay), tbSay)
return 1

elseif n_fac == 6 then
local tbSay = {}
tinsert(tbSay,"Thi�n H� V� C�u./caibangbong")
tinsert(tbSay,"Phi Long T�i Thi�n./caibangrong")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n h�c !", getn(tbSay), tbSay)
return 1

elseif n_fac == 7 then
local tbSay = {}
tinsert(tbSay,"Thi�n Ngo�i L�u Tinh./thiennhandao")
tinsert(tbSay,"V�n Long K�ch./thiennhankich")
tinsert(tbSay,"Nhi�p H�n Lo�n T�m./thiennhanbua")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n h�c !", getn(tbSay), tbSay)
return 1

elseif n_fac == 8 then
local tbSay = {}
tinsert(tbSay,"Thi�n ��a V� C�c./vodangquyen")
tinsert(tbSay,"Nh�n Ki�m H�p Nh�t./vodangkiem")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n h�c !", getn(tbSay), tbSay)
return 1

elseif n_fac == 9 then
tinsert(tbSay,"Ng�o Tuy�t Ti�u Phong./conlondao")
tinsert(tbSay,"L�i ��ng C�u Thi�n./conlonkiem")
tinsert(tbSay,"T�y Ti�n T� C�t./conlonbua")
tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n v� c�ng m� b�n mu�n h�c !", getn(tbSay), tbSay)
return 1

elseif n_fac == 10 then

tinsert(tbSay,"K�t th�c ��i tho�i./no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, Hoa S�n ph�i �� c� b� ki�p c�a b�n ph�i, v� v�y kh�ng th� l�nh ng� ���c b� ki�p n�y !", getn(tbSay), tbSay)
return 1
end
else
Talk(1, "", "Nghi�n t�i ng�m lui, nh�ng c�ng kh�ng h�c ���c g� trong ��.")
end
end
function thieulamdao()
	if GetTask(80)==0 then
		AddMagic(321,1)
		SetTask(80,GetTask(80)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>V� T��ng Tr�m<color> .")
end
function thieulamcon()
	if GetTask(81)==0 then
		AddMagic(319,1)
		SetTask(81,GetTask(81)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Ho�nh T�o Thi�n Qu�n<color> .")
end
function thieulamquyen()
	if GetTask(82)==0 then
		AddMagic(318,1)
		SetTask(82,GetTask(82)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>��t Ma �� Giang<color> .")
end
function ngudocchuong()
	if GetTask(83)==0 then
		AddMagic(353,1)
		SetTask(83,GetTask(83)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>�m Phong Th�c C�t<color> .")
end
function ngudocdao()
	if GetTask(84)==0 then
		AddMagic(355,1)
		SetTask(84,GetTask(84)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Huy�n �m Tr�m<color> .")
end
function ngudocbua()
	if GetTask(85)==0 then
		AddMagic(390,0)
		SetTask(85,GetTask(85)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>�o�n C�n H� C�t<color> .")
end
function thienvuongdao()
	if GetTask(86)==0 then
		AddMagic(322,1)
		SetTask(86,GetTask(86)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Ph� Thi�n Tr�m<color> .")
end
function thienvuongchuy()
	if GetTask(87)==0 then
		AddMagic(325,1)
		SetTask(87,GetTask(87)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Truy Phong Quy�t<color> .")
end
function thienvuongthuong()
	if GetTask(88)==0 then
		AddMagic(323,1)
		SetTask(88,GetTask(88)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Truy Tinh Tr�c Nguy�t<color> .")
end
function baovulehoa()
	if GetTask(89)==0 then
		AddMagic(302,1)
		SetTask(89,GetTask(89)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>B�o V� L� Hoa<color> .")
end
function  cuucungphitinh()
	if GetTask(90)==0 then
		AddMagic(342,1)
		SetTask(90,GetTask(90)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>C�u Cung Phi Tinh<color> .")
end
function  loanhoankich()
	if GetTask(91)==0 then
		AddMagic(351,0)
		SetTask(91,GetTask(91)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Lo�n Ho�n K�ch<color> .")
end
function  nhiephontuyetanh()
	if GetTask(92)==0 then
		AddMagic(339,1)
		SetTask(92,GetTask(92)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Nhi�p H�n Nguy�t �nh<color> .")
end
function  ngamikiem()
	if GetTask(93)==0 then
		AddMagic(328,1)
		SetTask(93,GetTask(93)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Tam Nga T� Tuy�t <color> .")
end
function  ngamichuong()
	if GetTask(94)==0 then
		AddMagic(380,1)
		SetTask(94,GetTask(94)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Phong S��ng To�i �nh <color> .")
end
function  ngamibuff()
	if GetTask(95)==0 then
		AddMagic(332,0)
		SetTask(95,GetTask(95)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Ph� �� Ch�ng Sinh <color> .")
end
function  thuyyendao()
	if GetTask(96)==0 then
		AddMagic(336,1)
		SetTask(96,GetTask(96)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>B�ng Tung V� �nh <color> .")
end
function  thuyyensongdao()
	if GetTask(97)==0 then
		AddMagic(337,1)
		SetTask(97,GetTask(97)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>B�ng T�m Ti�n T�<color> .")
end
function  caibangbong()
	if GetTask(98)==0 then
		AddMagic(359,1)
		SetTask(98,GetTask(98)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Thi�n H� V� C�u<color> .")
end
function  caibangrong()
	if GetTask(99)==0 then
		AddMagic(357,1)
		SetTask(99,GetTask(99)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Phi Long T�i Thi�n<color> .")
end

function  thiennhandao()
	if GetTask(100)==0 then
		AddMagic(362,1)
		SetTask(100,GetTask(100)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Thi�n Ngo�i L�u Tinh<color> .")
end
function  thiennhankich()
	if GetTask(101)==0 then
		AddMagic(361,1)
		SetTask(101,GetTask(101)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>V�n Long K�ch<color> .")
end
function  thiennhanbua()
	if GetTask(102)==0 then
		AddMagic(391,1)
		SetTask(102,GetTask(102)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Nhi�p H�n Lo�n T�m<color> .")
end
function  vodangquyen()
	if GetTask(103)==0 then
		AddMagic(365,1)
		SetTask(103,GetTask(103)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Thi�n ��a V� C�c<color> .")
end
function  vodangkiem()
	if GetTask(104)==0 then
		AddMagic(368,1)
		SetTask(104,GetTask(104)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Nh�n Ki�m H�p Nh�t<color> .")
end
function  conlondao()
	if GetTask(105)==0 then
		AddMagic(372,1)
		SetTask(105,GetTask(105)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>Ng�o Tuy�t Ti�u Phong<color> .")
end
function  conlonkiem()
	if GetTask(106)==0 then
		AddMagic(375,1)
		SetTask(106,GetTask(106)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>L�i ��ng C�u Thi�n<color> .")
end
function  conlonbua()
	if GetTask(107)==0 then
		AddMagic(394,0)
		SetTask(107,GetTask(107)+1)
		ConsumeEquiproomItem(1,6,1,2426,-1)
	else
		Talk(1, "", "Ng��i �� h�c k� n�ng n�y r�i kh�ng th� h�c n�a.")
		return 1;
	end
	Talk(1, "", "�� l�nh ng� ���c k� n�ng <color=yellow>T�y Ti�n T� C�t<color> .")
end