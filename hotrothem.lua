function dotim()	local tab_Content = {
		"V� Kh�/weapon",
		"Y Ph�c/shirt",
		"��nh M�o/hat",
		"H� Uy�n/glove",
		"Y�u ��i/belt",
		"H�i T�/shoe",
		"V�t ph�m h� tr�/khoangth",
		"M�t n�/manat",
		"Trang b� b�ch kim/bachkim",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;

function weapon()
	local tab_Content = {
		"Ki�m/kiem",
		"�ao/dao",
		"B�ng/bong",
		"Th��ng/kick",
		"Ch�y/chuy",
		"Song �ao/songdao",
		"Phi Ti�u/phitieu",
		"Phi �ao/phidao",
		"T� Ti�n/tutien",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function kiem()
		AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function dao()
		AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function bong()
		AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function kick()
		AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function chuy()
		AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function songdao()
		AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phitieu()
		AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phidao()
		AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function tutien()
		AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function shirt()
	local tab_Content = {
		"Th�t B�o C� Sa/aothieulam",
		"Ch�n V� Th�nh Y/aovodang",
		"Thi�n Nh�n M�t Trang/aothiennhan",
		"Gi�ng Sa B�o/sabao",
		"���ng Ngh� Gi�p/dng",
		"V�n L�u Quy T�ng Y/aocaibang",
		"Tuy�n Long B�o/longbao",
		"Long Ti�u ��o Y/daoy",
		"C�u V� B�ch H� Trang/hotrang",
		"Tr�m H��ng Sam/huongsam",
		"T�ch L�ch Kim Ph�ng Gi�p/kimphung",
		"V�n Ch�ng T� T�m Y/tamy",
		"L�u Ti�n Qu�n/tienquan",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function aothieulam()
		AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aovodang()
		AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aothiennhan()
		AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function sabao()
		AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dng()
		AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aocaibang()
		AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longbao()
		AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function daoy()
		AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hotrang()
		AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function huongsam()
		AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimphung()
		AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tamy()
		AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tienquan()
		AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hat()
	local tab_Content = {
		"T� L� M�o/lomao",
		"Ng� L�o Qu�n/laoquan",
		"Tu La Ph�t K�t/phatket",
		"Th�ng Thi�n Ph�t Qu�n/phatquan",
		"Y�m Nh�t Kh�i/nhatkhoi",
		"Tr�ch Tinh Ho�n/tinhhoan",
		"� T�m M�o/tammao",
		"Quan �m Ph�t Qu�n/quanam",
		"�m D��ng V� C�c Qu�n/amduong",
		"Huy�n T� Di�n Tr�o/dientrao",
		"Long Huy�t ��u Ho�n/longhuyet",
		"Long L�n Kh�i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Ph�ng Tri�n S�/triensi",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function lomao()
		AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function laoquan()
		AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatket()
		AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatquan()
		AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function nhatkhoi()
		AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhhoan()
		AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tammao()
		AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function quanam()
		AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end


function amduong()
		AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dientrao()
		AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longhuyet()
		AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function lankhoi()
		AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhthoa()
		AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function triensi()
		AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function glove()
	local tab_Content = {
		"Long Ph�ng Huy�t Ng�c Tr�c/ngoctrac",
		"Thi�n T�m H� Uy�n/houyen",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function ngoctrac()
		AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function houyen()
		AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function belt()
	local tab_Content = {
		"Thi�n T�m Y�u ��i/thientamyeu",
		"B�ch Kim Y�u ��i/bachkim",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function thientamyeu()
		AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function bachkim()
		AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function shoe()
	local tab_Content = {
		"C�u Ti�t X��ng V� Ngoa/cuutien",
		"Thi�n T�m Ngoa/thientam",
		"Kim L� H�i/kimlu",
		"Phi Ph�ng Ngoa/phiphung",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function cuutien()
		AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function thientam()
		AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimlu()
		AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phiphung()
		AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function bachkim()
	local tbOpt =
	{
		{"Thi�u l�m", bktl},
		{"Thi�n v��ng", bktv},
		{"���ng m�n", bkdm},
		{"Ng� ��c", bk5d},
		{"Nga mi", bknm},
		{"Thu� y�n", bkty},
		{"C�i bang", bkcb},
		{"Thi�n nh�n", bktn},
		{"V� �ang", bkvd},
		{"C�n l�n", bkcl},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�n ph�i?", tbOpt)
end
function bktl()
AddGoldItem(0, 11)
AddGoldItem(0, 6)
end
function bktv()
AddGoldItem(0, 16)
AddGoldItem(0, 21)
AddGoldItem(0, 26)
end
function bknm()
AddGoldItem(0, 31)
end
function bkty()
AddGoldItem(0, 46)
end
function bk5d()
AddGoldItem(0, 61)
end
function bkdm()
AddGoldItem(0, 71)
AddGoldItem(0, 76)
AddGoldItem(0, 81)
end
function bkcb()
AddGoldItem(0, 96)
end
function bktn()
AddGoldItem(0, 101)
end
function bkvd()
for i=4346,4355 do
AddPlatinaItem(3, i)
end
end
function bkcl()
AddGoldItem(0, 126)
end


function dohoangkim()
local tab_Content =
{
"Trang B� T� M�ng./tumang",
"Trang B� Kim �./kimo",
"Trang B� B�ch H�./bachho",
"Trang B� X�ch L�n./xichlan",
"Trang B� Minh Ph��ng./minhphuong",
"Trang B� ��ng Long./danglong",
"Trang B� Tinh S��ng./tinhsuong",
"Tho�t./no",
"Tr� l�i"
}
Say(" Mu�n l�y trang b� g� ? ", getn(tab_Content), tab_Content);
end

function xichlan()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sexichlan(1)",
"Thi�u L�m B�ng/#sexichlan(2)",
"Thi�u L�m �ao/#sexichlan(3)",
"Thi�n V��ng Ch�y/#sexichlan(4)",
"Thi�n V��ng Th��ng/#sexichlan(5)",
"Thi�n V��ng �ao/#sexichlan(6)",
"Nga Mi Ki�m/#sexichlan(7)",
"Nga Mi Ch��ng/#sexichlan(8)",
"Th�y Y�n �ao/#sexichlan(9)",
"Th�y Y�n Song �ao/#sexichlan(10)",
"Ng� ��c Ch��ng/#sexichlan(11)",
"Ng� ��c �ao/#sexichlan(12)",
"���ng M�n Phi �ao/#sexichlan(13)",
"���ng M�n N�/#sexichlan(14)",
"Trang sau/xichlan2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function xichlan2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sexichlan(15)",
"C�i Bang R�ng/#sexichlan(16)",
"C�i Bang B�ng/#sexichlan(17)",
"Thi�n Nh�n K�ch/#sexichlan(18)",
"Thi�n Nh�n �ao/#sexichlan(19)",
"V� �ang Ki�m/#sexichlan(21)",
"V� �ang Quy�n/#sexichlan(20)",
"C�n L�n �ao/#sexichlan(22)",
"C�n L�n Ki�m/#sexichlan(23)",
"Hoa S�n Ki�m T�ng/#sexichlanhs(1)",
"Hoa S�n Kh� T�ng/#sexichlanhs(2)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sexichlan(nId)
for i = 2515, 2524 do
AddGoldItem(0,10*nId+i-10)
end
end

function sexichlanhs(nId)
for i = 4773, 4782 do
AddGoldItem(0,10*nId+i-10)
end
end

function minhphuong()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#seminhphuong(1)",
"Thi�u L�m B�ng/#seminhphuong(2)",
"Thi�u L�m �ao/#seminhphuong(3)",
"Thi�n V��ng Ch�y/#seminhphuong(4)",
"Thi�n V��ng Th��ng/#seminhphuong(5)",
"Thi�n V��ng �ao/#seminhphuong(6)",
"Nga Mi Ki�m/#seminhphuong(7)",
"Nga Mi Ch��ng/#seminhphuong(8)",
"Th�y Y�n �ao/#seminhphuong(9)",
"Th�y Y�n Song �ao/#seminhphuong(10)",
"Ng� ��c Ch��ng/#seminhphuong(11)",
"Ng� ��c �ao/#seminhphuong(12)",
"���ng M�n Phi �ao/#seminhphuong(13)",
"���ng M�n N�/#seminhphuong(14)",
"Trang sau/minhphuong2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function minhphuong2()
local tab_Content = {
"���ng M�n Phi Ti�u/#seminhphuong(15)",
"C�i Bang R�ng/#seminhphuong(16)",
"C�i Bang B�ng/#seminhphuong(17)",
"Thi�n Nh�n K�ch/#seminhphuong(18)",
"Thi�n Nh�n �ao/#seminhphuong(19)",
"V� �ang Ki�m/#seminhphuong(21)",
"V� �ang Quy�n/#seminhphuong(20)",
"C�n L�n �ao/#seminhphuong(22)",
"C�n L�n Ki�m/#seminhphuong(23)",
"Hoa S�n Ki�m T�ng/#seminhphuonghs(1)",
"Hoa S�n Kh� T�ng/#seminhphuonghs(2)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function seminhphuong(nId)
for i = 2745, 2754 do
AddGoldItem(0,10*nId+i-10)
end
end

function seminhphuonghs(nId)
for i = 4793, 4802 do
AddGoldItem(0,10*nId+i-10)
end
end

function danglong()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sedanglong(1)",
"Thi�u L�m B�ng/#sedanglong(2)",
"Thi�u L�m �ao/#sedanglong(3)",
"Thi�n V��ng Ch�y/#sedanglong(4)",
"Thi�n V��ng Th��ng/#sedanglong(5)",
"Thi�n V��ng �ao/#sedanglong(6)",
"Nga Mi Ki�m/#sedanglong(7)",
"Nga Mi Ch��ng/#sedanglong(8)",
"Th�y Y�n �ao/#sedanglong(9)",
"Th�y Y�n Song �ao/#sedanglong(10)",
"Ng� ��c Ch��ng/#sedanglong(11)",
"Ng� ��c �ao/#sedanglong(12)",
"���ng M�n Phi �ao/#sedanglong(13)",
"���ng M�n N�/#sedanglong(14)",
"Trang sau/danglong2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function danglong2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sedanglong(15)",
"C�i Bang R�ng/#sedanglong(16)",
"C�i Bang B�ng/#sedanglong(17)",
"Thi�n Nh�n K�ch/#sedanglong(18)",
"Thi�n Nh�n �ao/#sedanglong(19)",
"V� �ang Ki�m/#sedanglong(21)",
"V� �ang Quy�n/#sedanglong(20)",
"C�n L�n �ao/#sedanglong(22)",
"C�n L�n Ki�m/#sedanglong(23)",
"Hoa S�n Ki�m T�ng/#sedanglonghs(1)",
"Hoa S�n Kh� T�ng/#sedanglonghs(2)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sedanglong(nId)
for i = 2975, 2984 do
AddGoldItem(0,10*nId+i-10)
end
end
function sedanglonghs(nId)
for i = 4813, 4822 do
AddGoldItem(0,10*nId+i-10)
end
end
function tinhsuong()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#setinhsuong(1)",
"Thi�u L�m B�ng/#setinhsuong(2)",
"Thi�u L�m �ao/#setinhsuong(3)",
"Thi�n V��ng Ch�y/#setinhsuong(4)",
"Thi�n V��ng Th��ng/#setinhsuong(5)",
"Thi�n V��ng �ao/#setinhsuong(6)",
"Nga Mi Ki�m/#setinhsuong(7)",
"Nga Mi Ch��ng/#setinhsuong(8)",
"Th�y Y�n �ao/#setinhsuong(9)",
"Th�y Y�n Song �ao/#setinhsuong(10)",
"Ng� ��c Ch��ng/#setinhsuong(11)",
"Ng� ��c �ao/#setinhsuong(12)",
"���ng M�n Phi �ao/#setinhsuong(13)",
"���ng M�n N�/#setinhsuong(14)",
"Trang sau/tinhsuong2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function tinhsuong2()
local tab_Content = {
"���ng M�n Phi Ti�u/#setinhsuong(15)",
"C�i Bang R�ng/#setinhsuong(16)",
"C�i Bang B�ng/#setinhsuong(17)",
"Thi�n Nh�n K�ch/#setinhsuong(18)",
"Thi�n Nh�n �ao/#setinhsuong(19)",
"V� �ang Ki�m/#setinhsuong(21)",
"V� �ang Quy�n/#setinhsuong(20)",
"C�n L�n �ao/#setinhsuong(22)",
"C�n L�n Ki�m/#setinhsuong(23)",
"Hoa S�n Ki�m T�ng/#setinhsuonghs(1)",
"Hoa S�n Kh� T�ng/#setinhsuonghs(2)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function setinhsuong(nId)
for i = 5379, 5388 do
AddGoldItem(0,10*nId+i-10)
end
end

function setinhsuonghs(nId)
for i = 5609, 5618 do
AddGoldItem(0,10*nId+i-10)
end
end

function bachho()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sebachho(1)",
"Thi�u L�m B�ng/#sebachho(2)",
"Thi�u L�m �ao/#sebachho(3)",
"Thi�n V��ng Ch�y/#sebachho(4)",
"Thi�n V��ng Th��ng/#sebachho(5)",
"Thi�n V��ng �ao/#sebachho(6)",
"Nga Mi Ki�m/#sebachho(7)",
"Nga Mi Ch��ng/#sebachho(8)",
"Th�y Y�n �ao/#sebachho(9)",
"Th�y Y�n Song �ao/#sebachho(10)",
"Ng� ��c Ch��ng/#sebachho(11)",
"Ng� ��c �ao/#sebachho(12)",
"���ng M�n Phi �ao/#sebachho(13)",
"���ng M�n N�/#sebachho(14)",
"Trang sau/bachho2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function bachho2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sebachho(15)",
"C�i Bang R�ng/#sebachho(16)",
"C�i Bang B�ng/#sebachho(17)",
"Thi�n Nh�n K�ch/#sebachho(18)",
"Thi�n Nh�n �ao/#sebachho(19)",
"V� �ang Ki�m/#sebachho(21)",
"V� �ang Quy�n/#sebachho(20)",
"C�n L�n �ao/#sebachho(22)",
"C�n L�n Ki�m/#sebachho(23)",
"Hoa S�n Ki�m T�ng/#sebachhohs(1)",
"Hoa S�n Kh� T�ng/#sebachhohs(2)",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sebachho(nId)
for i = 2285, 2294 do
AddGoldItem(0,10*nId+i-10)
end
end

function sebachhohs(nId)
for i = 4753, 4762 do
AddGoldItem(0,10*nId+i-10)
end
end

function kimo()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sekimo(1)",
"Thi�u L�m B�ng/#sekimo(2)",
"Thi�u L�m �ao/#sekimo(3)",
"Thi�n V��ng Ch�y/#sekimo(4)",
"Thi�n V��ng Th��ng/#sekimo(5)",
"Thi�n V��ng �ao/#sekimo(6)",
"Nga Mi Ki�m/#sekimo(7)",
"Nga Mi Ch��ng/#sekimo(8)",
"Th�y Y�n �ao/#sekimo(9)",
"Th�y Y�n Song �ao/#sekimo(10)",
"Ng� ��c Ch��ng/#sekimo(11)",
"Ng� ��c �ao/#sekimo(12)",
"���ng M�n Phi �ao/#sekimo(13)",
"���ng M�n N�/#sekimo(14)",
"Trang sau/kimo2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function kimo2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sekimo(15)",
"C�i Bang R�ng/#sekimo(16)",
"C�i Bang B�ng/#sekimo(17)",
"Thi�n Nh�n K�ch/#sekimo(18)",
"Thi�n Nh�n �ao/#sekimo(19)",
"V� �ang Ki�m/#sekimo(21)",
"V� �ang Quy�n/#sekimo(20)",
"C�n L�n �ao/#sekimo(22)",
"C�n L�n Ki�m/#sekimo(23)",
"Hoa S�n Ki�m T�ng/#sekimohs(1)",
"Hoa S�n Kh� T�ng/#sekimohs(2)",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sekimo(nId)
for i = 2055, 2064 do
AddGoldItem(0,10*nId+i-10)
end
end

function sekimohs(nId)
for i = 4733, 4742 do
AddGoldItem(0,10*nId+i-10)
end
end

function tumang()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#setumang(1)",
"Thi�u L�m B�ng/#setumang(2)",
"Thi�u L�m �ao/#setumang(3)",
"Thi�n V��ng Ch�y/#setumang(4)",
"Thi�n V��ng Th��ng/#setumang(5)",
"Thi�n V��ng �ao/#setumang(6)",
"Nga Mi Ki�m/#setumang(7)",
"Nga Mi Ch��ng/#setumang(8)",
"Th�y Y�n �ao/#setumang(9)",
"Th�y Y�n Song �ao/#setumang(10)",
"Ng� ��c Ch��ng/#setumang(11)",
"Ng� ��c �ao/#setumang(12)",
"���ng M�n Phi �ao/#setumang(13)",
"���ng M�n N�/#setumang(14)",
"Trang sau/tumang2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function tumang2()
local tab_Content = {
"���ng M�n Phi Ti�u/#setumang(15)",
"C�i Bang R�ng/#setumang(16)",
"C�i Bang B�ng/#setumang(17)",
"Thi�n Nh�n K�ch/#setumang(18)",
"Thi�n Nh�n �ao/#setumang(19)",
"V� �ang Ki�m/#setumang(21)",
"V� �ang Quy�n/#setumang(20)",
"C�n L�n �ao/#setumang(22)",
"C�n L�n Ki�m/#setumang(23)",
"Hoa S�n Ki�m T�ng/#setumanghs(1)",
"Hoa S�n Kh� T�ng/#setumanghs(2)",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function setumang(nId)
for i = 1825, 1834 do
AddGoldItem(0,10*nId+i-10)
end
end

function setumanghs(nId)
for i = 4713, 4722 do
AddGoldItem(0,10*nId+i-10)
end
end

function cucpham()
	local tab_Content = {
		"Set Ho�ng Kim M�n Ph�i /sethkmp",
		"Set Xich L�n /setxl",
		"Set C�c Ph�m ��ng S�t /cpds",
		"M�t N� GM /matnagm",
		"Set Minh Ph��ng /setmp",
		"Set Song Long /setsonglo",
		"Phi Phong /phip",
		"Trang S�c /trangs",
		"Kim �n /kiman",
		"T�ng H�p /tongh",
		"L�y 100 ti?n ��ng /tiendong",
		"L�y 1000v l��ng /tienvan",
		"M�c b�c th�o nguy�n l�nh /macblb",
		"Th�i kh�ng l�y g� n�a h�t."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;

function macblb()
AddItem(6,1,1448,1,0,0)
end
function kiman()
		AddGoldItem(0,3214)
		AddGoldItem(0,3224)
		AddGoldItem(0,3234)
end
function tongh()
		AddGoldItem(0,3506)
		AddGoldItem(0,3530)
		AddGoldItem(0,3541)
		AddGoldItem(0,3880)
		AddGoldItem(0,3881)
		AddGoldItem(0,3882)
		AddGoldItem(0,3883)
		AddGoldItem(0,3884)
		AddGoldItem(0,3885)
		AddGoldItem(0,3886)
		AddGoldItem(0,3887)
		AddGoldItem(0,3888)
end

function phip()
		AddGoldItem(0,3466)
		AddGoldItem(0,3467)
		AddGoldItem(0,3468)
		AddGoldItem(0,3469)
		AddGoldItem(0,3470)
		AddGoldItem(0,3471)
		AddGoldItem(0,3472)
		AddGoldItem(0,3473)
		AddGoldItem(0,3474)
		AddGoldItem(0,3475)
		AddGoldItem(0,3476)
		AddGoldItem(0,3477)
		AddGoldItem(0,3478)
		AddGoldItem(0,3479)
		AddGoldItem(0,3480)
		AddGoldItem(0,3481)
		AddGoldItem(0,3482)
		AddGoldItem(0,3483)
		AddGoldItem(0,3484)
		AddGoldItem(0,3485)
		AddGoldItem(0,3486)
		AddGoldItem(0,3487)
		AddGoldItem(0,3488)
		AddGoldItem(0,3489)
		AddGoldItem(0,3490)
end

function trangs()
		AddGoldItem(0,3507)
		AddGoldItem(0,3508)
		AddGoldItem(0,3509)
		AddGoldItem(0,3510)
		AddGoldItem(0,3511)
		AddGoldItem(0,3512)
		AddGoldItem(0,3513)
		AddGoldItem(0,3514)
		AddGoldItem(0,3515)
		AddGoldItem(0,3516)
		AddGoldItem(0,3517)
		AddGoldItem(0,3518)
		AddGoldItem(0,3519)
		AddGoldItem(0,3520)
end

function matnagm()
--AddItem(0,11,2,1,0,10,10,10,10,10,10,10,gio,day,month,nam)
AddItem(0,11,0,367,0,10,10,10,10,10,10,10,gio,day,month,nam)
AddItem(0,11,0,368,0,10,10,10,10,10,10,10,gio,day,month,nam)
end



function cpds()
AddGoldItem(0,494)
AddGoldItem(0,495)
AddGoldItem(0,496)
AddGoldItem(0,497)
end



function setsonglo()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi�u L�m Quy�n/#setsonglo1(1)",
		"Thi�u L�m C�n/#setsonglo1(2)",
		"Thi�u L�m �ao/#setsonglo1(3)",
		"Thi�n V��ng Ch�y/#setsonglo1(4)",
		"Thi�n V��ng Th��ng/#setsonglo1(5)",
		"Thi�n V��ng �ao/#setsonglo1(6)",
		"Nga Mi Ki�m/#setsonglo1(7)",
		"Nga Mi Ch��ng/#setsonglo1(8)",
		"Nga Mi Buff/#setsonglo1(9)",
		"Th�y Y�n �ao/#setsonglo1(10)",
		"Th�y Y�n Song �ao/#setsonglo1(11)",
		"Ng� ��c Ch��ng/#setsonglo1(12)",
		"Ng� ��c �ao/#setsonglo1(13)",
		"Ng� ��c B�a/#setsonglo1(14)",
		"Trang sau/setsonglo2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setsonglo2()
	local tab_Content = {
		"���ng M�n Phi �ao/#setsonglo1(15)",
		"���ng M�n T� Ti�n/#setsonglo1(16)",
		"���ng M�n Phi Ti�u/#setsonglo1(17)",
		"���ng M�n B�y/#setsonglo1(18)",
		"C�i Bang R�ng/#setsonglo1(19)",
		"C�i Bang B�ng/#setsonglo1(20)",
		"Thi�n Nh�n K�ch/#setsonglo1(21)",
		"Thi�n Nh�n �ao/#setsonglo1(22)",
		"Thi�n Nh�n B�a/#setsonglo1(23)",
		"V� �ang Kh� /#setsonglo1(24)",
		"V� �ang Ki�m/#setsonglo1(25)",
		"C�n L�n �ao/#setsonglo1(26)",
		"C�n L�n Ki�m/#setsonglo1(27)",
		"C�n L�n B�a/#setsonglo1(28)",
		"Th�i/no",
		"Tr� l�i"
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setsonglo1(nId)
for i=2975,2985 do AddGoldItem(0,10*nId+i-10) end
end


function sethkmp()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi�u L�m Quy�n/#sethkmp1(1)",
		"Thi�u L�m C�n/#sethkmp1(2)",
		"Thi�u L�m �ao/#sethkmp1(3)",
		"Thi�n V��ng Ch�y/#sethkmp1(4)",
		"Thi�n V��ng Th��ng/#sethkmp1(5)",
		"Thi�n V��ng �ao/#sethkmp1(6)",
		"Nga Mi Ki�m/#sethkmp1(7)",
		"Nga Mi Ch��ng/#sethkmp1(8)",
		"Nga Mi Buff/#sethkmp1(9)",
		"Th�y Y�n �ao/#sethkmp1(10)",
		"Th�y Y�n Song �ao/#sethkmp1(11)",
		"Ng� ��c Ch��ng/#sethkmp1(12)",
		"Ng� ��c �ao/#sethkmp1(13)",
		"Ng� ��c B�a/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"���ng M�n Phi �ao/#sethkmp1(15)",
		"���ng M�n T� Ti�n/#sethkmp1(16)",
		"���ng M�n Phi Ti�u/#sethkmp1(17)",
		"���ng M�n B�y/#sethkmp1(18)",
		"C�i Bang R�ng/#sethkmp1(19)",
		"C�i Bang B�ng/#sethkmp1(20)",
		"Thi�n Nh�n K�ch/#sethkmp1(21)",
		"Thi�n Nh�n �ao/#sethkmp1(22)",
		"Thi�n Nh�n B�a/#sethkmp1(23)",
		"V� �ang Kh� /#sethkmp1(24)",
		"V� �ang Ki�m/#sethkmp1(25)",
		"C�n L�n �ao/#sethkmp1(26)",
		"C�n L�n Ki�m/#sethkmp1(27)",
		"C�n L�n B�a/#sethkmp1(28)",
		"Th�i/no",
		"Tr� l�i"
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function setxl()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#setxl1(1)",
"Thi�u L�m B�ng/#setxl1(2)",
"Thi�u L�m �ao/#setxl1(3)",
"Thi�n V��ng Ch�y/#setxl1(4)",
"Thi�n V��ng Th��ng/#setxl1(5)",
"Thi�n V��ng �ao/#setxl1(6)",
"Nga Mi Ki�m/#setxl1(7)",
"Nga Mi Ch��ng/#setxl1(8)",
"Th�y Y�n �ao/#setxl1(9)",
"Th�y Y�n Song �ao/#setxl1(10)",
"Ng� ��c Ch��ng/#setxl1(11)",
"Ng� ��c �ao/#setxl1(12)",
"���ng M�n Phi �ao/#setxl1(13)",
"���ng M�n N�/#setxl1(14)",
"Trang sau/setxl2",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setxl2()
local tab_Content = {
"���ng M�n Phi Ti�u/#setxl1(15)",
"C�i Bang R�ng/#setxl1(16)",
"C�i Bang B�ng/#setxl1(17)",
"Thi�n Nh�n K�ch/#setxl1(18)",
"Thi�n Nh�n �ao/#setxl1(19)",
"V� �ang Ki�m/#setxl1(21)",
"V� �ang Quy�n/#setxl1(20)",
"C�n L�n �ao/#setxl1(22)",
"C�n L�n Ki�m/#setxl1(23)",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setxl1(nId)
for i=2515,2525 do AddGoldItem(0,10*nId+i-10) end
end

function setmp()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#setmp1(1)",
"Thi�u L�m B�ng/#setmp1(2)",
"Thi�u L�m �ao/#setmp1(3)",
"Thi�n V��ng Ch�y/#setmp1(4)",
"Thi�n V��ng Th��ng/#setmp1(5)",
"Thi�n V��ng �ao/#setmp1(6)",
"Nga Mi Ki�m/#setmp1(7)",
"Nga Mi Ch��ng/#setmp1(8)",
"Th�y Y�n �ao/#setmp1(9)",
"Th�y Y�n Song �ao/#setmp1(10)",
"Ng� ��c Ch��ng/#setmp1(11)",
"Ng� ��c �ao/#setmp1(12)",
"���ng M�n Phi �ao/#setmp1(13)",
"���ng M�n N�/#setmp1(14)",
"Trang sau/setmp2",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setmp2()
local tab_Content = {
"���ng M�n Phi Ti�u/#setmp1(15)",
"C�i Bang R�ng/#setmp1(16)",
"C�i Bang B�ng/#setmp1(17)",
"Thi�n Nh�n K�ch/#setmp1(18)",
"Thi�n Nh�n �ao/#setmp1(19)",
"V� �ang Ki�m/#setmp1(21)",
"V� �ang Quy�n/#setmp1(20)",
"C�n L�n �ao/#setmp1(22)",
"C�n L�n Ki�m/#setmp1(23)",
"Tho�t./no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setmp1(nId)
for i=2745,2755 do AddGoldItem(0,10*nId+i-10) end
end

function tienvan()
	Earn(1000000000)	
end;

function tiendong()
	AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
end;