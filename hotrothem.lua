function dotim()	local tab_Content = {
		"Vò KhÝ/weapon",
		"Y Phôc/shirt",
		"§Ønh M¹o/hat",
		"Hæ UyÓn/glove",
		"Yªu §¸i/belt",
		"Hµi Tö/shoe",
		"VËt phÈm hæ trî/khoangth",
		"MÆt n¹/manat",
		"Trang bÞ b¹ch kim/bachkim",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;

function weapon()
	local tab_Content = {
		"KiÕm/kiem",
		"§ao/dao",
		"Bæng/bong",
		"Th­¬ng/kick",
		"Chïy/chuy",
		"Song §ao/songdao",
		"Phi Tiªu/phitieu",
		"Phi §ao/phidao",
		"Tô TiÔn/tutien",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"ThÊt B¶o Cµ Sa/aothieulam",
		"Ch©n Vò Th¸nh Y/aovodang",
		"Thiªn NhÉn MËt Trang/aothiennhan",
		"Gi¸ng Sa Bµo/sabao",
		"§­êng Nghª Gi¸p/dng",
		"V¹n L­u Quy T«ng Y/aocaibang",
		"TuyÒn Long Bµo/longbao",
		"Long Tiªu §¹o Y/daoy",
		"Cöu VÜ B¹ch Hå Trang/hotrang",
		"TrÇm H­¬ng Sam/huongsam",
		"TÝch LÞch Kim Phông Gi¸p/kimphung",
		"V¹n Chóng TÒ T©m Y/tamy",
		"L­u Tiªn QuÇn/tienquan",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Tú L« M·o/lomao",
		"Ngò L·o Qu¸n/laoquan",
		"Tu La Ph¸t KÕt/phatket",
		"Th«ng Thiªn Ph¸t Qu¸n/phatquan",
		"YÓm NhËt Kh«i/nhatkhoi",
		"TrÝch Tinh Hoµn/tinhhoan",
		"¤ Tµm M·o/tammao",
		"Quan ¢m Ph¸t Qu¸n/quanam",
		"¢m D­¬ng V« Cùc Qu¸n/amduong",
		"HuyÒn Tª DiÖn Tr¸o/dientrao",
		"Long HuyÕt §Çu Hoµn/longhuyet",
		"Long L©n Kh«i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Phông TriÓn SÝ/triensi",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Long Phông HuyÕt Ngäc Tr¹c/ngoctrac",
		"Thiªn Tµm Hé UyÓn/houyen",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Thiªn Tµm Yªu §¸i/thientamyeu",
		"B¹ch Kim Yªu §¸i/bachkim",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Cöu TiÕt X­¬ng VÜ Ngoa/cuutien",
		"Thiªn Tµm Ngoa/thientam",
		"Kim Lò Hµi/kimlu",
		"Phi Phông Ngoa/phiphung",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		{"ThiÕu l©m", bktl},
		{"Thiªn v­¬ng", bktv},
		{"®­êng m«n", bkdm},
		{"Ngò ®éc", bk5d},
		{"Nga mi", bknm},
		{"Thuý yªn", bkty},
		{"C¸i bang", bkcb},
		{"Thiªn nhÉn", bktn},
		{"Vâ ®ang", bkvd},
		{"C«n l«n", bkcl},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän m«n ph¸i?", tbOpt)
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
"Trang BÞ Tö M·ng./tumang",
"Trang BÞ Kim ¤./kimo",
"Trang BÞ B¹ch Hæ./bachho",
"Trang BÞ XÝch L©n./xichlan",
"Trang BÞ Minh Ph­îng./minhphuong",
"Trang BÞ §»ng Long./danglong",
"Trang BÞ Tinh S­¬ng./tinhsuong",
"Tho¸t./no",
"Trë l¹i"
}
Say(" Muèn lÊy trang bÞ g× ? ", getn(tab_Content), tab_Content);
end

function xichlan()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#sexichlan(1)",
"ThiÕu L©m Bçng/#sexichlan(2)",
"ThiÕu L©m §ao/#sexichlan(3)",
"Thiªn V­¬ng Chïy/#sexichlan(4)",
"Thiªn V­¬ng Th­¬ng/#sexichlan(5)",
"Thiªn V­¬ng §ao/#sexichlan(6)",
"Nga Mi KiÕm/#sexichlan(7)",
"Nga Mi Ch­ëng/#sexichlan(8)",
"Thóy Yªn §ao/#sexichlan(9)",
"Thóy Yªn Song §ao/#sexichlan(10)",
"Ngò §éc Ch­ëng/#sexichlan(11)",
"Ngò §éc §ao/#sexichlan(12)",
"§­êng M«n Phi §ao/#sexichlan(13)",
"§­êng M«n Ná/#sexichlan(14)",
"Trang sau/xichlan2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function xichlan2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#sexichlan(15)",
"C¸i Bang Rång/#sexichlan(16)",
"C¸i Bang Bçng/#sexichlan(17)",
"Thiªn NhÉn KÝch/#sexichlan(18)",
"Thiªn NhÉn §ao/#sexichlan(19)",
"Vâ §ang KiÕm/#sexichlan(21)",
"Vâ §ang QuyÒn/#sexichlan(20)",
"C«n L«n §ao/#sexichlan(22)",
"C«n L«n KiÕm/#sexichlan(23)",
"Hoa S¬n KiÕm T«ng/#sexichlanhs(1)",
"Hoa S¬n KhÝ T«ng/#sexichlanhs(2)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
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
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#seminhphuong(1)",
"ThiÕu L©m Bçng/#seminhphuong(2)",
"ThiÕu L©m §ao/#seminhphuong(3)",
"Thiªn V­¬ng Chïy/#seminhphuong(4)",
"Thiªn V­¬ng Th­¬ng/#seminhphuong(5)",
"Thiªn V­¬ng §ao/#seminhphuong(6)",
"Nga Mi KiÕm/#seminhphuong(7)",
"Nga Mi Ch­ëng/#seminhphuong(8)",
"Thóy Yªn §ao/#seminhphuong(9)",
"Thóy Yªn Song §ao/#seminhphuong(10)",
"Ngò §éc Ch­ëng/#seminhphuong(11)",
"Ngò §éc §ao/#seminhphuong(12)",
"§­êng M«n Phi §ao/#seminhphuong(13)",
"§­êng M«n Ná/#seminhphuong(14)",
"Trang sau/minhphuong2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function minhphuong2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#seminhphuong(15)",
"C¸i Bang Rång/#seminhphuong(16)",
"C¸i Bang Bçng/#seminhphuong(17)",
"Thiªn NhÉn KÝch/#seminhphuong(18)",
"Thiªn NhÉn §ao/#seminhphuong(19)",
"Vâ §ang KiÕm/#seminhphuong(21)",
"Vâ §ang QuyÒn/#seminhphuong(20)",
"C«n L«n §ao/#seminhphuong(22)",
"C«n L«n KiÕm/#seminhphuong(23)",
"Hoa S¬n KiÕm T«ng/#seminhphuonghs(1)",
"Hoa S¬n KhÝ T«ng/#seminhphuonghs(2)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
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
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#sedanglong(1)",
"ThiÕu L©m Bçng/#sedanglong(2)",
"ThiÕu L©m §ao/#sedanglong(3)",
"Thiªn V­¬ng Chïy/#sedanglong(4)",
"Thiªn V­¬ng Th­¬ng/#sedanglong(5)",
"Thiªn V­¬ng §ao/#sedanglong(6)",
"Nga Mi KiÕm/#sedanglong(7)",
"Nga Mi Ch­ëng/#sedanglong(8)",
"Thóy Yªn §ao/#sedanglong(9)",
"Thóy Yªn Song §ao/#sedanglong(10)",
"Ngò §éc Ch­ëng/#sedanglong(11)",
"Ngò §éc §ao/#sedanglong(12)",
"§­êng M«n Phi §ao/#sedanglong(13)",
"§­êng M«n Ná/#sedanglong(14)",
"Trang sau/danglong2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function danglong2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#sedanglong(15)",
"C¸i Bang Rång/#sedanglong(16)",
"C¸i Bang Bçng/#sedanglong(17)",
"Thiªn NhÉn KÝch/#sedanglong(18)",
"Thiªn NhÉn §ao/#sedanglong(19)",
"Vâ §ang KiÕm/#sedanglong(21)",
"Vâ §ang QuyÒn/#sedanglong(20)",
"C«n L«n §ao/#sedanglong(22)",
"C«n L«n KiÕm/#sedanglong(23)",
"Hoa S¬n KiÕm T«ng/#sedanglonghs(1)",
"Hoa S¬n KhÝ T«ng/#sedanglonghs(2)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
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
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#setinhsuong(1)",
"ThiÕu L©m Bçng/#setinhsuong(2)",
"ThiÕu L©m §ao/#setinhsuong(3)",
"Thiªn V­¬ng Chïy/#setinhsuong(4)",
"Thiªn V­¬ng Th­¬ng/#setinhsuong(5)",
"Thiªn V­¬ng §ao/#setinhsuong(6)",
"Nga Mi KiÕm/#setinhsuong(7)",
"Nga Mi Ch­ëng/#setinhsuong(8)",
"Thóy Yªn §ao/#setinhsuong(9)",
"Thóy Yªn Song §ao/#setinhsuong(10)",
"Ngò §éc Ch­ëng/#setinhsuong(11)",
"Ngò §éc §ao/#setinhsuong(12)",
"§­êng M«n Phi §ao/#setinhsuong(13)",
"§­êng M«n Ná/#setinhsuong(14)",
"Trang sau/tinhsuong2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function tinhsuong2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#setinhsuong(15)",
"C¸i Bang Rång/#setinhsuong(16)",
"C¸i Bang Bçng/#setinhsuong(17)",
"Thiªn NhÉn KÝch/#setinhsuong(18)",
"Thiªn NhÉn §ao/#setinhsuong(19)",
"Vâ §ang KiÕm/#setinhsuong(21)",
"Vâ §ang QuyÒn/#setinhsuong(20)",
"C«n L«n §ao/#setinhsuong(22)",
"C«n L«n KiÕm/#setinhsuong(23)",
"Hoa S¬n KiÕm T«ng/#setinhsuonghs(1)",
"Hoa S¬n KhÝ T«ng/#setinhsuonghs(2)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
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
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#sebachho(1)",
"ThiÕu L©m Bçng/#sebachho(2)",
"ThiÕu L©m §ao/#sebachho(3)",
"Thiªn V­¬ng Chïy/#sebachho(4)",
"Thiªn V­¬ng Th­¬ng/#sebachho(5)",
"Thiªn V­¬ng §ao/#sebachho(6)",
"Nga Mi KiÕm/#sebachho(7)",
"Nga Mi Ch­ëng/#sebachho(8)",
"Thóy Yªn §ao/#sebachho(9)",
"Thóy Yªn Song §ao/#sebachho(10)",
"Ngò §éc Ch­ëng/#sebachho(11)",
"Ngò §éc §ao/#sebachho(12)",
"§­êng M«n Phi §ao/#sebachho(13)",
"§­êng M«n Ná/#sebachho(14)",
"Trang sau/bachho2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function bachho2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#sebachho(15)",
"C¸i Bang Rång/#sebachho(16)",
"C¸i Bang Bçng/#sebachho(17)",
"Thiªn NhÉn KÝch/#sebachho(18)",
"Thiªn NhÉn §ao/#sebachho(19)",
"Vâ §ang KiÕm/#sebachho(21)",
"Vâ §ang QuyÒn/#sebachho(20)",
"C«n L«n §ao/#sebachho(22)",
"C«n L«n KiÕm/#sebachho(23)",
"Hoa S¬n KiÕm T«ng/#sebachhohs(1)",
"Hoa S¬n KhÝ T«ng/#sebachhohs(2)",
"Tho¸t./no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
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
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#sekimo(1)",
"ThiÕu L©m Bçng/#sekimo(2)",
"ThiÕu L©m §ao/#sekimo(3)",
"Thiªn V­¬ng Chïy/#sekimo(4)",
"Thiªn V­¬ng Th­¬ng/#sekimo(5)",
"Thiªn V­¬ng §ao/#sekimo(6)",
"Nga Mi KiÕm/#sekimo(7)",
"Nga Mi Ch­ëng/#sekimo(8)",
"Thóy Yªn §ao/#sekimo(9)",
"Thóy Yªn Song §ao/#sekimo(10)",
"Ngò §éc Ch­ëng/#sekimo(11)",
"Ngò §éc §ao/#sekimo(12)",
"§­êng M«n Phi §ao/#sekimo(13)",
"§­êng M«n Ná/#sekimo(14)",
"Trang sau/kimo2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function kimo2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#sekimo(15)",
"C¸i Bang Rång/#sekimo(16)",
"C¸i Bang Bçng/#sekimo(17)",
"Thiªn NhÉn KÝch/#sekimo(18)",
"Thiªn NhÉn §ao/#sekimo(19)",
"Vâ §ang KiÕm/#sekimo(21)",
"Vâ §ang QuyÒn/#sekimo(20)",
"C«n L«n §ao/#sekimo(22)",
"C«n L«n KiÕm/#sekimo(23)",
"Hoa S¬n KiÕm T«ng/#sekimohs(1)",
"Hoa S¬n KhÝ T«ng/#sekimohs(2)",
"Tho¸t./no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
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
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#setumang(1)",
"ThiÕu L©m Bçng/#setumang(2)",
"ThiÕu L©m §ao/#setumang(3)",
"Thiªn V­¬ng Chïy/#setumang(4)",
"Thiªn V­¬ng Th­¬ng/#setumang(5)",
"Thiªn V­¬ng §ao/#setumang(6)",
"Nga Mi KiÕm/#setumang(7)",
"Nga Mi Ch­ëng/#setumang(8)",
"Thóy Yªn §ao/#setumang(9)",
"Thóy Yªn Song §ao/#setumang(10)",
"Ngò §éc Ch­ëng/#setumang(11)",
"Ngò §éc §ao/#setumang(12)",
"§­êng M«n Phi §ao/#setumang(13)",
"§­êng M«n Ná/#setumang(14)",
"Trang sau/tumang2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function tumang2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#setumang(15)",
"C¸i Bang Rång/#setumang(16)",
"C¸i Bang Bçng/#setumang(17)",
"Thiªn NhÉn KÝch/#setumang(18)",
"Thiªn NhÉn §ao/#setumang(19)",
"Vâ §ang KiÕm/#setumang(21)",
"Vâ §ang QuyÒn/#setumang(20)",
"C«n L«n §ao/#setumang(22)",
"C«n L«n KiÕm/#setumang(23)",
"Hoa S¬n KiÕm T«ng/#setumanghs(1)",
"Hoa S¬n KhÝ T«ng/#setumanghs(2)",
"Tho¸t./no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
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
		"Set Hoµng Kim M«n Ph¸i /sethkmp",
		"Set Xich L©n /setxl",
		"Set Cùc PhÈm §éng S¸t /cpds",
		"MÆt N¹ GM /matnagm",
		"Set Minh Ph­îng /setmp",
		"Set Song Long /setsonglo",
		"Phi Phong /phip",
		"Trang Søc /trangs",
		"Kim Ên /kiman",
		"Tæng Hîp /tongh",
		"LÊy 100 ti?n ®ång /tiendong",
		"LÊy 1000v l­îng /tienvan",
		"M¹c b¾c th¶o nguyªn lÖnh /macblb",
		"Th«i kh«ng lÊy g× n÷a hÕt."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Rêi khái/no",
		"ThiÕu L©m QuyÒn/#setsonglo1(1)",
		"ThiÕu L©m C«n/#setsonglo1(2)",
		"ThiÕu L©m §ao/#setsonglo1(3)",
		"Thiªn V­¬ng Chïy/#setsonglo1(4)",
		"Thiªn V­¬ng Th­¬ng/#setsonglo1(5)",
		"Thiªn V­¬ng §ao/#setsonglo1(6)",
		"Nga Mi KiÕm/#setsonglo1(7)",
		"Nga Mi Ch­ëng/#setsonglo1(8)",
		"Nga Mi Buff/#setsonglo1(9)",
		"Thóy Yªn §ao/#setsonglo1(10)",
		"Thóy Yªn Song §ao/#setsonglo1(11)",
		"Ngñ §éc Ch­ëng/#setsonglo1(12)",
		"Ngñ §éc §ao/#setsonglo1(13)",
		"Ngñ §éc Bïa/#setsonglo1(14)",
		"Trang sau/setsonglo2",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setsonglo2()
	local tab_Content = {
		"§­êng M«n Phi §ao/#setsonglo1(15)",
		"§­êng M«n Tô TiÔn/#setsonglo1(16)",
		"§­êng M«n Phi Tiªu/#setsonglo1(17)",
		"§­êng M«n BÉy/#setsonglo1(18)",
		"C¸i Bang Rång/#setsonglo1(19)",
		"C¸i Bang Bâng/#setsonglo1(20)",
		"Thiªn NhÉn KÝch/#setsonglo1(21)",
		"Thiªn NhÉn §ao/#setsonglo1(22)",
		"Thiªn NhÉn Bïa/#setsonglo1(23)",
		"Vâ §ang KhÝ /#setsonglo1(24)",
		"Vâ §ang KiÕm/#setsonglo1(25)",
		"C«n L«n §ao/#setsonglo1(26)",
		"C«n L«n KiÕm/#setsonglo1(27)",
		"C«n L«n Bïa/#setsonglo1(28)",
		"Th«i/no",
		"Trë l¹i"
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setsonglo1(nId)
for i=2975,2985 do AddGoldItem(0,10*nId+i-10) end
end


function sethkmp()
	local tab_Content = {
		"Rêi khái/no",
		"ThiÕu L©m QuyÒn/#sethkmp1(1)",
		"ThiÕu L©m C«n/#sethkmp1(2)",
		"ThiÕu L©m §ao/#sethkmp1(3)",
		"Thiªn V­¬ng Chïy/#sethkmp1(4)",
		"Thiªn V­¬ng Th­¬ng/#sethkmp1(5)",
		"Thiªn V­¬ng §ao/#sethkmp1(6)",
		"Nga Mi KiÕm/#sethkmp1(7)",
		"Nga Mi Ch­ëng/#sethkmp1(8)",
		"Nga Mi Buff/#sethkmp1(9)",
		"Thóy Yªn §ao/#sethkmp1(10)",
		"Thóy Yªn Song §ao/#sethkmp1(11)",
		"Ngñ §éc Ch­ëng/#sethkmp1(12)",
		"Ngñ §éc §ao/#sethkmp1(13)",
		"Ngñ §éc Bïa/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"§­êng M«n Phi §ao/#sethkmp1(15)",
		"§­êng M«n Tô TiÔn/#sethkmp1(16)",
		"§­êng M«n Phi Tiªu/#sethkmp1(17)",
		"§­êng M«n BÉy/#sethkmp1(18)",
		"C¸i Bang Rång/#sethkmp1(19)",
		"C¸i Bang Bâng/#sethkmp1(20)",
		"Thiªn NhÉn KÝch/#sethkmp1(21)",
		"Thiªn NhÉn §ao/#sethkmp1(22)",
		"Thiªn NhÉn Bïa/#sethkmp1(23)",
		"Vâ §ang KhÝ /#sethkmp1(24)",
		"Vâ §ang KiÕm/#sethkmp1(25)",
		"C«n L«n §ao/#sethkmp1(26)",
		"C«n L«n KiÕm/#sethkmp1(27)",
		"C«n L«n Bïa/#sethkmp1(28)",
		"Th«i/no",
		"Trë l¹i"
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function setxl()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#setxl1(1)",
"ThiÕu L©m Bçng/#setxl1(2)",
"ThiÕu L©m §ao/#setxl1(3)",
"Thiªn V­¬ng Chïy/#setxl1(4)",
"Thiªn V­¬ng Th­¬ng/#setxl1(5)",
"Thiªn V­¬ng §ao/#setxl1(6)",
"Nga Mi KiÕm/#setxl1(7)",
"Nga Mi Ch­ëng/#setxl1(8)",
"Thóy Yªn §ao/#setxl1(9)",
"Thóy Yªn Song §ao/#setxl1(10)",
"Ngò §éc Ch­ëng/#setxl1(11)",
"Ngò §éc §ao/#setxl1(12)",
"§­êng M«n Phi §ao/#setxl1(13)",
"§­êng M«n Ná/#setxl1(14)",
"Trang sau/setxl2",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setxl2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#setxl1(15)",
"C¸i Bang Rång/#setxl1(16)",
"C¸i Bang Bçng/#setxl1(17)",
"Thiªn NhÉn KÝch/#setxl1(18)",
"Thiªn NhÉn §ao/#setxl1(19)",
"Vâ §ang KiÕm/#setxl1(21)",
"Vâ §ang QuyÒn/#setxl1(20)",
"C«n L«n §ao/#setxl1(22)",
"C«n L«n KiÕm/#setxl1(23)",
"Tho¸t./no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setxl1(nId)
for i=2515,2525 do AddGoldItem(0,10*nId+i-10) end
end

function setmp()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#setmp1(1)",
"ThiÕu L©m Bçng/#setmp1(2)",
"ThiÕu L©m §ao/#setmp1(3)",
"Thiªn V­¬ng Chïy/#setmp1(4)",
"Thiªn V­¬ng Th­¬ng/#setmp1(5)",
"Thiªn V­¬ng §ao/#setmp1(6)",
"Nga Mi KiÕm/#setmp1(7)",
"Nga Mi Ch­ëng/#setmp1(8)",
"Thóy Yªn §ao/#setmp1(9)",
"Thóy Yªn Song §ao/#setmp1(10)",
"Ngò §éc Ch­ëng/#setmp1(11)",
"Ngò §éc §ao/#setmp1(12)",
"§­êng M«n Phi §ao/#setmp1(13)",
"§­êng M«n Ná/#setmp1(14)",
"Trang sau/setmp2",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setmp2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#setmp1(15)",
"C¸i Bang Rång/#setmp1(16)",
"C¸i Bang Bçng/#setmp1(17)",
"Thiªn NhÉn KÝch/#setmp1(18)",
"Thiªn NhÉn §ao/#setmp1(19)",
"Vâ §ang KiÕm/#setmp1(21)",
"Vâ §ang QuyÒn/#setmp1(20)",
"C«n L«n §ao/#setmp1(22)",
"C«n L«n KiÕm/#setmp1(23)",
"Tho¸t./no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
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