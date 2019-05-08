Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\global\\bil4i3n\\bill4i3n.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_diemdanhhangngay.lua")
Include( "\\script\\global\\fuyuan.lua" )
Include( "\\script\\missions\\yandibaozang\\item\\yandimibao.lua" )
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_phuc_loi_ca_nhan.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_tanthuquan_ver3_doxanh.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_ontimer_player_chat.lua")
Include("\\script\\_event\\api.lua")

function main(sel)
	if bilCheckDuaTop:FuncMain() then 
		return 1
	end
	
		if GetCamp() == 6 or GetCurCamp() == 6 then
			SetCamp(0)
			SetCurCamp(0)
		end
	Bil_Main()
	return 1
end

_bilTbAwardOnlineTime =
{
	[1] = {bilItem = {6, 1, 440, 1, 0,0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
	[2] = {bilItem = {6, 1, 910, 1, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
	[3] = {bilItem = {6, 1, 440, 1, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
	[4] = {bilItem = {6, 1, 122, 1, 0, 0, 0}, bilItemName = "Ph�c Duy�n L� (Ti�u)",},
	[5] = {bilItem = {6, 1, 72, 1, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
	[6] = {bilItem = {6, 1, 155, 1, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
	[7] = {bilItem = {6, 1, 73, 1, 0, 0, 0}, bilItemName = "B�ch Qu� L�",},
	[8] = {bilItem = {6, 1, 125, 1, 0, 0, 0}, bilItemName = "Qu� Hoa T�u",},
	[9] = {bilItem = {6, 1, 122, 1, 0, 0, 0}, bilItemName = "Ph�c Duy�n L� (Ti�u)",},
	[10] = {bilItem = {6, 1, 440, 1, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
	[11] = {bilItem = {6, 1, 1308, 1, 0, 0, 0}, bilItemName = "M�nh B� Thi�n Th�ch (ti�u)",},
	[12] = {bilItem = {6, 1, 23, 1, 0,0, 0}, bilItemName = "Thi�t la h�n",},
	[13] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
	[14] = {bilItem = {6, 1, 1448, 1, 0, 0, 0}, bilItemName = "M�c B�c Truy�n T�ng L�nh",},
	[15] = {bilItem = {4, 489, 1, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
	[16] = {bilItem = {6, 1, 1309, 1, 0, 0, 0}, bilItemName = "M�nh B� Thi�n Th�ch (trung)",},
	[17] = {bilItem = {6, 1, 123, 1, 0, 0, 0}, bilItemName = "Ph�c Duy�n L� (Trung)",},
	[18] = {bilItem = {6, 1, 71, 1, 0, 0, 0}, bilItemName = "Ti�n Th�o L�",},
	[19] = {bilItem = {6, 1, 72, 1, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
	[20] = {bilItem = {6, 1, 1403, 1, 0, 0, 0}, bilItemName = "�� ph� - Hi�p c�t thuy�t huy�t sam",},
	[21] = {bilItem = {6, 1, 1404, 1, 0, 0, 0}, bilItemName = "�� ph� - Hi�p c�t �a t�nh ho�n",},
	[22] = {bilItem = {6, 1, 1405, 1, 0, 0, 0}, bilItemName = "�� ph� - Hi�p c�t �an t�m gi�i",},
	[23] = {bilItem = {6, 1, 1406, 1, 0, 0, 0}, bilItemName = "�� ph� - Hi�p c�t t�nh � k�t",},
	[24] = {bilItem = {6, 1, 1407, 1, 0, 0, 0}, bilItemName = "�� ph� - Nhu t�nh c�n qu�c ngh� th��ng",},
	[25] = {bilItem = {6, 1, 1408, 1, 0, 0, 0}, bilItemName = "�� ph� - Nhu t�nh th�c n� h�ng li�n",},
	[26] = {bilItem = {6, 1, 1409, 1, 0, 0, 0}, bilItemName = "�� ph� - Nhu t�nh ph�ng nghi gi�i ch�",},
	[27] = {bilItem = {6, 1, 1410, 1, 0, 0, 0}, bilItemName = "�� ph� - Nhu t�nh tu� t�m ng�c b�i",},
	
	[28] = {bilItem = {6, 1, 4300, 1, 0, 0, 0}, bilItemName = "N�ng ��ng l� bao",},
	[29] = {bilItem = {6, 1, 4300, 1, 0, 0, 0}, bilItemName = "N�ng ��ng l� bao",},
	[30] = {bilItem = {6, 1, 4300, 1, 0, 0, 0}, bilItemName = "N�ng ��ng l� bao",},
	[31] = {bilItem = {6, 1, 4300, 1, 0, 0, 0}, bilItemName = "N�ng ��ng l� bao",},
	-- [36] = {bilItem = {6, 1, 391, 0, 0, 0, 0}, bilItemName = "�� ph� Ho�ng Kim - An Bang K� Huy�t Th�ch Gi�i Ch�",},
	-- [37] = {bilItem = {6, 1, 390, 0, 0, 0, 0}, bilItemName = "�� ph� Ho�ng Kim - An Bang �i�n Ho�ng Th�ch Ng�c B�i",},
	-- [38] = {bilItem = {6, 1, 389, 0, 0, 0, 0}, bilItemName = "�� ph� Ho�ng Kim - An Bang C�c Hoa Th�ch Ch� ho�n",},
	-- [39] = {bilItem = {6, 1, 388, 0, 0, 0, 0}, bilItemName = "�� ph� Ho�ng Kim - An Bang B�ng Tinh Th�ch H�ng Li�n",},
}

Bil_CheckConditionSp_MapID = {221, 222, 223, 44, 326, 327, 328, 329, 330, 331, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 868, 869, 870, 876, 877, 878, 879, 880, 881, 883, 884, 885, 898, 899, 900, 902, 903, 904,970,971, 506, 507, 508, 509, 510, 511, 512, 513, 516, 517, 518, 519, 520, 521, 522, 523, 396, 560, 397, 398, 561, 399, 400, 562, 401, 402, 563, 403,404, 564, 405, 406, 565, 407, 408, 566, 409, 410, 567, 411, 540, 570, 541, 542, 571, 543, 544, 572, 545, 546, 573, 547, 548, 574, 549, 550, 575, 551, 552, 576, 553, 554, 577, 555, 324,}

Bil_MsgSupportNewPl = {
	"��ng c�p c�a ng��i �� l�n h�n <color=yellow>140<color>, �� l� 1 ��i hi�p  ��nh ��nh ��i danh r�i, Nh�n h�i [Sinh l�c, N�i l�c] ch�ng ph�i �� c�c b�c h�u b�i ch� c��i sao!",
	"�� nh�n ���c h� tr� h�i [Sinh l�c, N�i l�c], n�u m�t t�c d�ng b�n c� th� nh�n l�i, hi�u �ng h� tr� h�i    [Sinh l�c, N�i l�c] c� t�c d�ng ��n h�t ��ng c�p <color=yellow>140<color>.<color=white>Hi�u �ng duy tr� trong 600 ph�t, ph�c h�i 400 ��n v� 1 l�n.",
	"Khu v�c n�y kh�ng ���c ph�p s� d�ng hi�u �ng h� tr�  h�i [<color=white>Sinh l�c, N�i l�c<color>].", "Ta bi�t r�i!/OnCancel", "B�n c� ch�c mu�n ��i tho�i tr�c ti�p v�i <color=Orange>GameMaster<color>, ho�c b�n c� th� li�n h� v�i b� ph�n h� tr� b�ng Yahoo", --5
	"Ch�c r�i!/Bil_ChatWithGM_Sure", "Ta nh�m!/OnCancel", "<color=white>Hi�n t�i <color=Orange>GM<color> kh�ng tr�c tuy�n, phi�n b�n li�n l�c l�i sau, xin c�m �n!<color>",
	"Nh�p tin nh�n!", "<color=white><color=Orange>GameMaster<color> hi�n �ang trong cu�c tr� chuy�n v�i ng��i kh�c, phi�n b�n li�n l�c l�i sau!<color>", --10
	"<bclr=green><color=black>%s<bclr><color> <pic=139> ", "Tr� l�i l�i %s/Bil_InputString2Say", "Xem th�ng tin c�a %s/#Bil_ViewInfoCenterOfGamer(%d)", "K�t th�c ��i tho�i./ResetStateChatWithGM",
}

Bil_NewsEventsFeatures_tb = {
	tbDuaTopCaoThu = {
		"Ch�o m�ng c�c h� ��n v�i m�y ch� <color=pink>V� l�m <color><color=Orange>"..bilServerName.."<color><enter>M�y ch� s� ch�nh th�c <color=green>Open v� �ua TOP Cao th�<color> v�o <color=yellow>"..bilServerOpen.."<color> v� <color=green>k�t th�c �ua TOP Cao   th�<color> v�o <color=yellow>"..bilServerCloseRace.."<color><enter>Tr��c khi l�y top cao th� n�u c�c h� <color=Orange>�� r�i kh�i m�n  ph�i (Su�t s�)<color> th� y�u c�u c�c h� <color=earth>v�o l�i m�n ph�i<color> �� ti�n h�nh l�y top m�t c�ch c�ng b�ng<enter>Ch� �: Top cao th� th� gi�i s� kh�ng nh�n ���c <color=yellow>ph�n   th��ng top m�n ph�i<color> m� ph�n th��ng s� d�nh cho <color=green>ng��i  ti�p theo.<color>",
		"<color=Orange>TOP\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPh�n th��ng<color><enter>Top <color=yellow>1<color> Cao th�       <color=green>1 Ng�a B�n Ti�u, 1 Nh�c V��ng Ki�m                       l� bao, 2 KNB, 6 Tinh h�ng b�o \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t     th�ch, 3 Th�y tinh v� 50 v�n<color><enter>Top <color=yellow>2<color> Cao th�       <color=0x87ff87>1 Ng�a Phi V�n, 1 Nh�c V��ng Ki�m                       l� bao, 2 KNB, 6 Tinh h�ng b�o \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t     th�ch, 3 Th�y tinh v� 50 v�n<color><enter>Top <color=yellow>3<color> Cao th�       <color=green>1 Ng�a Chi�u D�, 1 Nh�c V��ng Ki�m                       l� bao, 2 KNB, 6 Tinh h�ng b�o \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t     th�ch, 3 Th�y tinh v� 50 v�n<color><enter>",
		"Top <color=yellow>4<color> Cao th�       <color=0x87ff87>2 KNB, 6 Tinh h�ng b�o th�ch, <enter>                       3 Th�y tinh v� 50 v�n<color><enter>Top <color=yellow>5<color> Cao th�       <color=green>2 KNB, 6 Tinh h�ng b�o th�ch, <enter>                       3 Th�y tinh v� 50 v�n<color><enter>Top <color=yellow>6<color> Cao th�       <color=0x87ff87>2 KNB, 6 Tinh h�ng b�o th�ch, <enter>                       3 Th�y tinh v� 50 v�n<color><enter>Top <color=yellow>7<color> Cao th�       <color=green>2 KNB, 6 Tinh h�ng b�o th�ch, <enter>                       3 Th�y tinh v� 50 v�n<color><enter>Top <color=yellow>8<color> Cao th�       <color=0x87ff87>2 KNB, 6 Tinh h�ng b�o th�ch, <enter>                       3 Th�y tinh v� 50 v�n<color><enter>Top <color=yellow>9<color> Cao th�       <color=green>2 KNB, 6 Tinh h�ng b�o th�ch, <enter>                       3 Th�y tinh v� 50 v�n<color><enter>Top <color=yellow>10<color> Cao th�      <color=0x87ff87>2 KNB, 6 Tinh h�ng b�o th�ch, <enter>                       3 Th�y tinh v� 50 v�n<color><enter>Top <color=yellow>1 Cao th� M�n Ph�i<color> s� nh�n ���c <color=green><enter>                    1 KNB, 6 Tinh h�ng b�o th�ch, <enter>                       3 Th�y tinh v� 50 v�n<color>"
		.."<enter>Top <color=yellow>2 Cao th� M�n Ph�i<color> s� nh�n ���c <color=green><enter>                    6 Tinh h�ng b�o th�ch, <enter>                       3 Th�y tinh v� 50 v�n<color><enter>Top <color=yellow>3 Cao th� M�n Ph�i<color> s� nh�n ���c <color=green><enter>                    3 Tinh h�ng b�o th�ch, <enter>                       3 Th�y tinh v� 50 v�n<color>",
	},
	tbFeatures = {
		"Server <color=Orange>V� L�m Ki�m Thi�n<color>, phi�n b�n <color=green>C�ng Th�nh Chi�n<color><enter>v�i c�c t�nh n�ng: <color=yellow><enter>\t\t\t\t\tC� B�c S� ��<color><color=0xffff87>\t\t\t\t\t\t\t\t\t\tLi�n ��u(��n ��u)<color><enter><color=0xffff87>\t\t\t\t\t��u Tr��ng 100<color><color=yellow>\t\t\t\t\t\t\t\tC�u C� B�t Cua<color><enter><color=yellow>\t\t\t\t\tTh�t Th�nh ��i Chi�n<color><color=0xffff87>\t\tQu� Huy Ho�ng - HK<color><enter><color=0xffff87>\t\t\t\t\t�ua Heo Sa M�c<color><color=yellow>\t\t\t\t\t\t\t\tBoss Ho�ng Kim, S�t th�<color><enter>\t\t\t\t\t<color=yellow>��i Chi�n Ti�u Bang H�i<color><color=0xffff87>\t\t\tBoss Si�u Ho�ng Kim..<color><enter>Webside <color=blue>www.volamkiemthien.com<color> �� bi�t th�m th�ng tin chi ti�t.",
		"<color=white>Ng��i s� ph�i tr�i qua r�t nhi�u �n o�n giang h�, ng��i s� c� m�t ��m huynh �� t� mu�i ��ng cam c�ng kh�?  Ng��i c� mu�n l�nh ��o h�, c�ng nhau t�o ra m�t m�n v� c�ng V�n Th� B�t Di�t, c��p �o�t quy�n s� h�u 7 th�nh tr�, �� h� c� th� c�ng nhau h��ng vinh hoa ph� qu�. <color=yellow> V�y th� h�y l�p ra Bang H�i ri�ng cho m�nh, vi�t v�o �� c�c �n o�n t�nh th�, nhi n� t�nh tr��ng, c��p thuy�n, �o�t th�nh, c��p BOSS.<color><color=wood>Tr�ch Bang h�i ti�p d�n nh�n.<color><enter><color=red>C�ng Th�nh Chi�n<color>",
		"Th�i gian ��ng k� <color=Orange>C�ng th�nh chi�n<color> s� m� v�o l�c <color=red><enter>18 gi� 00<color> cho ��n <color=red>19 gi� 00<color> h�ng ng�y trong tu�n C�ng th�nh, <enter>y�u c�u bang h�i ph�i � ��ng <color=red>c�p 5<color> tr� l�n<enter><color=white>Bang n�o ��u gi� s� l��ng Khi�u chi�n l�nh nhi�u h�n  s� l� bang th�ng cu�c.<color>",
		"Th�i gian ti�n h�nh c�ng th�nh s� b�t ��u v�o l�c <color=red><enter>20 gi� 00<color> cho ��n <color=red>21 gi� 30<color> h�ng ng�y trong tu�n C�ng th�nh, th�nh ��ng k� h�m qua s� l� th�nh c�ng th�nh h�m nay<enter><color=white>n�u ch� c� 1 bang h�i ��ng k� cho th�nh ch�a c� bang chi�m gi� th� bang �� s� l� th�nh ch�.<color>",
		"Hi�n t�i m�y ch� Li�n ��u s� m� Li�n ��u � c� <color=yellow><enter>S� c�p - Trung c�p - Cao c�p<color><enter>H�nh th�c thi ��u hi�n t�i l� <color=red>��n ��u t� do<color><enter>C�c cao th� c� th� ��n g�p <color=Orange>V� l�m truy�n nh�n<color> �� h�i  th�m tin t�c.", 
		"Ng��i <color=red>th�ng <color>s� nh�n �c <color=yellow>3 tri�u Kinh nghi�m<color> � c� S� -  Trung c�p v� Cao c�p<enter><color=white>ng��i<color> <color=red>thua ho�c h�a<color><color=white> s� nh�n �c<color> <color=yellow>1.5 tri�u Kinh nghi�m<color><color=white> �c� S� - Trung c�p v� Cao c�p<color><enter>Cao c�p ng��i <color=red>th�ng<color> s� nh�n �c <color=yellow>15 �i�m Vinh D�<color>, <color=red>thua<color> s� kh�ng c� �i�m vinh d�,<color=red> h�a nhau <color>s� �c <color=yellow>9 �i�m vinh d�<color><color=white>S� - Trung c�p ng��i <color=red>th�ng <color>s� nh�n �c <color><color=yellow>10 �i�m Vinh D�<color>,<color=white><color=red>thua <color>s� kh�ng c� �i�m vinh d�, <color=red>h�a nhau<color> s� �c <color><color=yellow>7 �i�m vinh d�.<color>",
		"C�c ng�y ��u tu�n t� th� <color=red>2 ��n th� 6<color> ��u m�i ng�y <color=green>4<color>   tr�n t� <color=yellow>19h~20h00<color>. <enter>C�c ng�y cu�i tu�n <color=red>th� 7 v� ch� nh�t<color> ��u <color=green>8<color> tr�n m�i   ng�y t� <color=yellow>18h~19h00<color> v� <color=yellow>19h~20h00<color>", 
		"Hi�n t�i m�y ch� T�ng Kim �� m� � c�<color=yellow><enter>S� c�p - Trung c�p - Cao c�p<color><enter><color=white>Th�i gian tham gia t� <color><color=red>7h ��n 23h<color> <color=white>c�c gi� l� h�ng ng�y,th�i gian b�o danh tr��c ��<color> <color=red>10 ph�t<color><enter>k�t th�c m�i tr�n ��u t�y v�o m�c �� ng��i ch�i s�    nh�n �c nh�ng <color=red>ph�n th��ng x�ng ��ng<color><enter><color=white>k�t th�c tu�n nh�ng ng��i ch�i xu�t s�c nh�t s� ���c phong <color><color=red>danh hi�u<color> <color=white>x�ng ��ng cho th�nh t�ch c� nh�n.<color>",
		"K�t th�c tr�n th��ng 1 <color=green>T�ng Kim l� bao<color> d�nh cho <enter>3 ng��i m�i rank g�m <color=red>Top PK, TOP Li�n tr�m, TOP NPC,  TOP T�ch l�y<color> v� nh�ng cao th� c� �i�m l�n h�n <color=red>8000<color>, <enter>1 m�t n� ��i t��ng cho <color=red>TOP 1 m�i rank<color>, gi�t ���c nguy�n so�i s� nh�n random <color=green>t�ng kim l� bao<color>, <enter>3 ng��i x�p h�ng <color=red>cao nh�t<color> c�a tu�n tr��c, tu�n sau s� nh�n �c <color=green>danh hi�u.<color>",
		"<color=yellow>Qu� Huy ho�ng - Ho�ng kim <color>s� su�t hi�n l�c <color=red>12h00 ��n  12h30<color> h�ng ng�y th�i gian qu� ch�n l� <color=red>5 ph�t<color>, <enter>th�i gian cho ph�p h�i l� <color=red>10 ph�t<color>, <enter><color=white>s� ki�n ���c chia l�m 3 khu v�c<color> <color=green>S� c�p - Trung c�p -  Cao c�p<color>, <enter>��n gi� s� ki�n s� c� th�ng b�o tr�n k�nh th� gi�i    mong c�c ��ng ��o ch� �, <enter><color=white>c�c khu v�c xu�t hi�n qu�<color> <color=yellow>Ho�ng Kim<color> <color=white>g�m <color><color=earth>M�n b�c th�o  nguy�n<color> <color=white>v� <color><color=earth>M�c cao qu�t.<color>",
		"<color=yellow>Boss Ho�ng Kim <color>th�i gian xu�t hi�n v�o <color=red>11h00, 16h00 <enter>v� 21h00 <color>��n gi� s� ki�n s� c� th�ng b�o tr�n<color=red> k�nh th�gi�i <color>mong c�c ��ng ��o ch� �, <enter><color=white>c� t�ng c�ng<color> <color=yellow>11<color> <color=white>Boss ho�ng kim, cao th� ho�c team n�o h� g�c ���c Boss ho�ng kim s� nh�n ���c r�t nhi�u<color><color=red> <enter>Kinh nghi�m <color><color=white>v�<color> <color=red>v�t ph�m c� gi� tr�<color><color=white>, <color><enter><color=yellow>Boss Ho�ng Kim <color>c� x�c xu�t xu�t hi�n � c�c <color=earth>b�n �� tr�nkh�p th� gi�i.<color>",
		"Th�i gian tham gia <color=yellow>V��t �i<color> t� <color=red>1h00 ��n 23h00<color> (c�c gi� l� trong ng�y) th�i gian b�o danh tr��c �� <color=red>10 ph�t<color>,   <color=white>Ng��i ��n b�o danh t�i <color><color=Orange>Nhi�p Th� Tr�n<color> <color=white>ph�i l� <color><color=green>��i <enter>tr��ng<color>, <color=white>s� c� th�ng b�o tr�n <color><color=red>k�nh th� gi�i<color> <color=white>mong c�c <enter>��ng ��o ch� �,<color> <enter>m�i �i s� l� m�i th� th�ch, v��t qua m�i �i s� c� c� h�i nh�n ���c <color=red>Kinh nghi�m<color> v� <color=red>nh�ng ph�n th��ng c� gi�  tr�<color>, <color=white>m�i ng�y m�i nh�n v�t ch� ���c ph�p tham gia t�i �a<color> <color=red>2 l�n <color><color=white>v��t �i.<color>",
		"Th�i gian tham gia <color=yellow>Phong l�ng ��<color> t� <color=red>2h00 ��n 24h00<color><enter>(c�c gi� ch�n trong ng�y) th�i gian b�o danh tr��c �� <color=red>10 ph�t<color> s� c� th�ng b�o tr�n <color=red>k�nh th� gi�i<color>, mong c�c <enter>��ng ��o v� l�m ch� �, <enter>Mu�n tham gia phong l�ng �� ph�i ��n Phong L�ng �� g�p<color=Orange>Thuy�n phu<color> v� ph�i mang theo <color=yellow>L�nh b�i Phong l�ng ��<color>, <enter>m�y ch� <color=green>kh�ng gi�i h�n<color> s� l�n tham gia, <enter>Tr�n thuy�n �i phong l�ng �� t�y c� r�t nhi�u th�y t�c<color=red>ti�u di�t ���c th�y t�c<color> s� nh�n ���c <color=red>Kinh nghi�m v� <enter>c�c v�t ph�m c� gi� tr�<color>, <enter>khi ��n b� t�y c� th� g�p thuy�n phu �� ���c ��a <color=earth><enter>v� trung nguy�n mi�n ph�.<color>",
		"<color=yellow>Phong k� T�a �� <color>s� m� c�a v�o c�c gi� t� <color=red>2h00 ��n <enter>24h00<color>(c�c gi� ch�n trong ng�y), m�i ng�y m�i nh�n v�t ch� ���c ph�p tham gia <color=red>120ph�t<color> ho�t ��ng phong k�<enter><color=yellow>Ph�n th��ng tham gia:<color><enter><color=white>M�i t�a �� ��t �c <color><color=red>5.000 Kinh nghi�m<color> <color=white>nh�n ngay<enter>M�i t�a �� ��i <color><color=Orange>D�ch Quan<color> <color=white>s� nh�n �c <color><color=red>10.000 Kinh nghi�m<color><color=white>M�i NPC ti�u di�t �c s� nh�n ngay <color><color=red>10.000 Kinh nghi�m<color><enter><color=white>M�i NPC ��t ���c ��i � <color><color=Orange>D�ch Quan<color><color=white> s� nh�n �c <color><color=red>5.000 <enter>Kinh nghi�m<color>",
		"Ph�n th��ng h� tr� <color=green>t�n th�<color> g�m: <enter><color=yellow>\t\t\tTi�n th�o l� x8 <enter>\t\t\tM�nh s�n h� x� t�c x1000 <enter>\t\t\tH�i th�nh ph� (l�n) <enter>\t\t\tC�m nang ��ng h�nh <enter>\t\t\tPh�o hoa <enter>\t\t\tHoa h�ng  <enter>\t\t\tQu� m�u xanh <enter>\t\t\tHoa Tuy�t <enter>\t\t\tTh�n h�nh ph� <enter>\t\t\t...<color>", --15
		"Ph�n th��ng h� tr� c�p <color=green>%d<color> g�m", "<color=yellow><enter>\t\t\tS� �� thi�p <enter>\t\t\tM�nh s�n h� x� t�c x100 <enter>\t\t\tTr��ng m�nh ho�n<enter>\t\t\tGia b�o ho�n<enter>\t\t\tPhi t�c ho�n", "<color=yellow><enter>\t\t\tKim phong thi�n l� th�o th��ng <enter>\t\t\tphi Li�t b�ch m�", "<color=yellow><enter>\t\t\tKim phong tr�c li�n quan<enter>\t\t\tB�ch m�", "<color=yellow><enter>\t\t\tKim phong k� l�n huy�t<enter>\t\t\tKim phong thanh d��ng kh�i <enter>\t\t\tNg�c hoa th�ng",--20
		"<color=yellow><enter>\t\t\tKim phong lan ��nh ng�c<enter>\t\t\tKim phong c�ng c�n tam th�n <enter>\t\t\t��i uy�n b�ch m�", "<color=yellow><enter>\t\t\tKim phong h�u ngh� d�n cung<enter>\t\t\tKim phong �o�t h�n ng�c ��i<enter>\t\t\t� ch�y", "<color=yellow><enter>\t\t\tKim phong ��ng t��c xu�n th�m<enter>\t\t\tT�c s��ng", "<color=yellow><enter>\t\t\tM�t b� k� n�ng c�a m�n ph�i<enter>\t\t\tL�nh b�i phong l�ng �� x1<enter>\t\t\t1 ng�a Chi�u d� ng�c s� t�", "<color=yellow><enter>\t\t\tTinh h�ng b�o th�ch<enter>\t\t\tQu� hoa t�u<enter>\t\t\tTi�n th�o l�<enter>\t\t\tPh�c duy�n l� (Trung)<enter>\t\t\tGi�y ��nh qu�c", 
		"<color=yellow><enter>\t\t\tTinh h�ng b�o th�ch<enter>\t\t\tQu� hoa t�u<enter>\t\t\tTi�n th�o l�<enter>\t\t\tPh�c duy�n l� (Trung)<enter>\t\t\tL�nh b�i Phong l�ng ��<enter>\t\t\tM�c b�c truy�n t�ng l�nh<enter>\t\t\tBao tay ��nh qu�c", "<color=yellow><enter>\t\t\tTinh h�ng b�o th�ch<enter>\t\t\tQu� hoa t�u<enter>\t\t\tTi�n th�o l�<enter>\t\t\tPh�c duy�n l� (Trung)<enter>\t\t\tTh�t l�ng ��nh qu�c<enter>\t\t\tNg�a Phi V�n","<color=yellow><enter>\t\t\tTinh h�ng b�o th�ch<enter>\t\t\tQu� hoa t�u<enter>\t\t\tTi�n th�o l�<enter>\t\t\tPh�c duy�n l� (Trung)<enter>\t\t\tB� k�p k� n�ng c�p 120<enter>\t\t\tT� m�u l�nh<enter>\t\t\t�o ��nh qu�c<enter>\t\t\t1 M�n v� kh� tr�n ph�i", --28
		"M�n ph�i v� Nh�n v�t: <color=yellow>Xu�t s� v� v�o l�i m�n ph�i<color><enter>�� ti�n h�nh <color=red>xu�t s�<color> ng��i ch�i c�n v� <color=red>m�n ph�i v� g�pch��ng m�n<color> c�a m�nh �� ti�n h�nh xu�t s� v� phi�u b�c giang h�. �i�u ki�n xu�t s�: y�u c�u ��ng c�p t� <color=red>60<color><enter>tr� l�n.<enter>�� <color=yellow>v�o l�i m�n ph�i<color> y�u c�u ng��i ch�i �� xu�t s� v� <enter>��n g�p <color=red>ch��ng m�n<color> c�a m�nh �� xin v�o l�i ph�i, khi <enter>�i nh� �em th�m 5 v�n l��ng.", --29
		"M�n ph�i v� Nh�n v�t: <color=yellow>��i t�n nh�n v�t<color><enter>�� ��i t�n nh�n v�t, ng��i ch�i c�n ��n g�p <color=yellow>NPC Ho�nh Ba Ti�n T�<color> � <color=earth>Ba l�ng huy�n<color>, t�a �� <color=blue>(202, 198)<color> �� bi�t th�m tin t�c.",
		"M�n ph�i v� Nh�n v�t: <color=yellow>Chuy�n ��i m�n ph�i<color><enter>�� chuy�n ��i m�n ph�i, y�u c�u ng��i ch�i �� v�o ph�i��n g�p <color=Orange>NPC Ho�nh Ba Ti�n T�<color> � <color=earth>Ba l�ng huy�n<color>, t�a �� <color=blue> (202, 198)<color> v� �em theo <color=fire>T�n v�t m�n ph�i<color>, mu�n �y s�   gi�p ��i hi�p li�n h� v�i ch��ng m�n m�n ph�i hi�n t�ic�a ��i hi�p v� ti�n h�nh <color=red>tr�c xu�t ra kh�i s� m�n<color>,   sau khi tr�c xu�t to�n b� <color=green>c�c �i�m k� n�ng v� <enter>ti�m n�ng s� ���c t�y l�i ho�n to�n<color>, sau khi r�i kh�i m�n ph�i ��i hi�p c� th� ��n t�t <color=yellow>c� c�c m�n ph�i(kh�nggi�i h�n gi�i t�nh v� ng� h�nh cho c�c m�n ph�i)<color> m� <enter>m�nh mu�n gia nh�p v� g�p <color=Orange>ch��ng m�n m�n ph�i<color> �� �� <enter>xin gia nh�p ph�i, <color=green>to�n b� c�c �i�m k� n�ng c�p 90 v� 120 s� ���c gi� l�i v� chuy�n l�n b� chi�u th�c m�i <enter>c�a m�n ph�i m�i.<color>", -- 31
		"M�n ph�i v� Nh�n v�t: <color=yellow>Chuy�n ��i gi�i t�nh<color><enter>Chuy�n ��i gi�i t�nh c�a nh�n v�t sang <color=green>gi�i t�nh kh�c<color>,khi �� chuy�n ��i <color=yellow>m�i th� li�n quan ��n nh�n v�t ��u  ���c gi� nguy�n<color>, m�i l�n l�n chuy�n ��i s� ph�i m�t   th�m 1 <color=yellow>Kim nguy�n b�o<color>, m�i chi ti�t c�c ��ng ��o c�   th� tham kh�o � <color=Orange>NPC Ho�nh Ba Ti�n T�<color> � <color=earth>Ba l�ng huy�n<color>, t�a �� <color=blue>(202, 198)<color>", -- 32
		"<color=fire>Ho�t ��ng �i�m danh h�ng ng�y<color> y�u c�u ng��i ch�i ph�i c� t�nh <color=yellow>ki�n tr� v� li�n t�c<color>, n�u trong ng�y ti�p theo<color=Orange>kh�ng ti�n h�nh �i�m danh<color> th� t�ng s� l�n �i�m danh <enter>���c s� <color=fire>b�t ��u l�i t� ��u<color>, t��ng t� ph�n th��ng c�ng s� b�t ��u l�i t� ��u, tuy nhi�n ��c c� minh ch� c�ng r�t r�ng l��ng s� c� h�nh th�c <color=yellow>�i�m danh b�<color> cho ng��i ch�i v�ng m�t!, c�c chi ti�t kh�c ng��i ch�i c� th�   tham kh�o th�m � ch� <color=Orange>L� Quan.<color>",
		"T�ng s� l��t �i�m danh li�n t�c c�a ��i hi�p l�: <color=green>%d<color>,<enter>Ph�n th��ng cho l�n �i�m danh ti�p theo l�:<enter><color=yellow>%s<color>",
		"Danh s�ch ph�n th��ng cho l�n �i�m danh th� <color=green>%d<color> l�:<enter><color=yellow>%s<color>", -- 35
		"<color=fire>Ho�t ��ng Online nh�n th��ng<color>, m�i ng��i ch�i s� nh�n  ���c m�t l�n c� <color=yellow>m�i khi th�i gian t�ch l�y tr�n m�ng  ��<color> <color=green>1 gi�<color>, c�c l�n nh�n ti�p theo s� c� <color=yellow>th�m t� l� nh�n���c c�c v�t ph�m c�ng gi� tr� h�n<color>, s� c� b�ng x�p <enter>h�ng c�c cao th� c� t�ng th�i gian Online, ��i hi�p c�th� xem � <color=yellow>b�ng X�p h�ng<color>.",
		"T�nh n�ng <color=fire>Hoa S�n ��i Chi�n<color>, khi tham gia v�o ho�t <enter>��ng n�y, ng��i ch�i s� ���c ��a v�o m�t <color=earth>b�n �� ri�ng bi�t<color>, ��n th�i gian khai chi�n <color=yellow>b�t k� l� ng��i th�n<color>,  <color=yellow>b�n h�u<color>, <color=yellow>��ng bang h�i<color> ��u c� th� <color=red>chi�n ��u l�n nhau<color>  nh�m so t�i cao th�p, ng��i chi�n th�ng l� ng��i c�n  <color=green>s�ng s�t l�i cu�i c�ng<color>, s� c� nh�ng ph�n th��ng x�ng  ��ng d�nh cho c�c v� anh h�ng n�y!, danh s�ch c�c cao th� s�ng s�t cu�i c�ng v� ng��i h� g�c nhi�u ��i th�  nh�t c� th� xem � <color=green>b�ng x�p h�ng<color>.",
		"Th�i gian di�n ra v�o <color=yellow>th� 3<color>, <color=yellow>th� 5<color> v� <color=yellow>th� 7<color> h�ng tu�n,th�i gian b�o danh v�o <color=yellow>10 gi� 15 ph�t s�ng<color> v� <color=yellow>21 gi�  15 ph�t t�i<color>, th�i gian b�o danh l� <color=green>15 ph�t<color>, th�i gian chi�n ��u l� <color=red>30 ph�t<color>, y�u c�u ��ng c�p ph�i l�n h�n <enter><color=red>50<color>, c� 2 khu v�c d�nh cho ng��i ch�i l� <color=yellow>Trung c�p v�  Cao c�p<color>, ng��i s�ng s�t cu�i c�ng l� ng��i th�ng cu�c!",
		"<color=fire>Ng��i b� h� g�c<color> s� nh�n ���c kinh nghi�m t��ng ���ng  v�i <color=green>s� ��i th� ng��i �� �� h� g�c ���c<color>!<enter><color=fire>Ph�n th��ng d�nh cho cao th�<color> l� ng��i c�n <color=green>trong b�n ��cu�i c�ng<color><enter><color=Orange>Ng�u nhi�n 1 trong 3 lo�i th�y tinh<color><enter>Ti�n th�o l� x2<enter>L�nh b�i phong l�ng ��<enter>M�c b�c truy�n t�ng l�nh<enter>Thi�t la h�n (x2)<enter>Bao d��c ho�n<enter><color>",
		"T�nh n�ng <color=fire>Phong H�a Li�n Th�nh<color>, khi tham gia v�o b�n  �� Phong h�a li�n th�nh ng��i ch�i c�n ph�i <color=green>t� ��i<color> v�inh�ng ng��i kh�c �� ti�n h�nh b�o v� th�nh tr� tr��c  l�c l��ng c�a ��ch v�i <color=yellow>s� l��ng r�t l�n<color>, nguy�n t�c   n�u <color=Orange>t��ng qu�n th� th�nh<color> kh�ng c�n th� coi nh� tr�n   chi�n <color=red>k�t th�c<color> v� n�u ��ch qu�n ��a to�n b� s� <color=Orange>c�ng   th�nh xung xa <color>v�o t�i th�nh m�n c�a m�nh th� c�ng coi nh� <color=red>thua<color>, v�i s� l��ng ��ch qu�n l�n n�n s� l��ng <color=green>kinhnghi�m<color> nh�n ���c <color=yellow>c�c k� l�n<color>, c�ng v�i �� l� c�c <color=green>ph�n  th��ng h�p d�n<color> r�i ra t� t��ng ��ch!", -- 40
		"Th�i gian b�o danh tham gia <color=fire>Phong H�a Li�n Th�nh<color> l� <color=green>20<color>ph�t, b�t ��u t� <color=yellow>9 gi� 10 ph�t <color>s�ng v� <color=yellow>21 gi� 10 ph�t <color>t�i trong c�c ng�y <color=yellow>th� 4<color>, <color=yellow>th� 6<color> v� <color=yellow>ch� nh�t<color> h�ng tu�n,th�i gian tham gia chi�n ��u l� 60 ph�t!, trong th�i  gian b�o danh ng��i ch�i c� th� ��n g�p <color=Orange>V� binh th�nh m�n <color>t�i c�c <color=earth>Th�nh th� <color>���c th�ng b�o tr�n k�nh th� <enter>gi�i �� tham gia ho�t ��ng.",
		"Ho�t ��ng - <color=fire>S�n Nh�m b�o ph�<color>, nh�m gi�p c�c nh�n s� <enter>giang h� t�m l�i c�m gi�c phi�u b�c l�c <color=pink>sinh nh�t<color> <color=Orange>V�  L�m Truy�n K�<color> nhi�u n�m v� tr��c, B�n trang ch� s� t� ch�c ho�t ��ng <color=yellow>S�n Nh�m b�o ph�<color> m�i ng�y v�o l�c <color=green>11<enter>gi� 30 ph�t<color> v� <color=green>22 gi� 30 ph�t<color>, m�i l�n di�n ra s� xu�thi�n Nh�m b�o ph� trong <color=green>7<color> <color=earth>��i th�nh th�<color> v�<color=green> 8<color> <color=earth>T�n th�  th�n<color>, ng��i ch�i c�n nhanh ch�n t�m ki�m � c�c b�n �� tr�n v�o l�c di�n ra ho�t ��ng, nh�ng ��i hi�p s�n <enter><color=yellow>nhi�u Nh�m b�o ph� nh�t <color>s� xu�t hi�n tr�n <color=Orange>b�ng x�p <enter>h�ng t�ng.<color>", -- 42
		"M�i khi ng��i ch�i <color=fire>s�n ���c Nh�m b�o ph� <color>s� nh�n ���c ngay <color=yellow>1,5 tri�u �i�m Kinh nghi�m<color> v� <color=yellow>1 V�n l��ng b�c<color>, m�i ng�y m�i nh�n v�t ch� c� th� s�n t�i �a ���c <color=green>10<color> Nh�m  b�o ph�, sang ng�y ti�p theo m�i c� th� s�n ti�p!<enter>C�c v�t ph�m c� th� ng�u nhi�n nh�n ���c:<color=yellow><enter>Ti�n Th�o L�<enter>B�ch Qu� L�<enter>Qu� Hoa T�u<color>",
		"Ho�t ��ng - <color=fire>Vi�m �� B�o T�ng<color>, C�ch ch�i v��t �i <color=yellow>ph� <enter>b�n m�i, n�i dung m�i, boss m�i, b�n �� m�i<color>, v� v�n <color=green>k�tr�n d� b�o, r�t nhi�u c�c v�t ph�m c� gi� tr�<color> kh�c v�l��ng <color=green>kinh nghi�m c�c k� l�n<color> ch� c� t�i b�o t�ng vi�m ��. Khi tham gia v�o ho�t ��ng, ng��i ch�i c�n ph�i <color=yellow>t��i<color> v�i nhau, s� ���c ��a v�o m�t <color=earth>b�n �� ri�ng bi�t<color> <enter>n�i m� r�t nhi�u c�c cao th� c�a th�p ��i m�n ph�i <enter>�ang ch� �o�n c�c v� anh h�ng, m�i c�a �i to�n b� <color=yellow>ph�ih� g�c ���c nh�ng �� t� v� s� ph� c�a th�p ��i m�n <enter>ph�i<color>, ��n �i cu�i c�ng �� �i ��n vinh danh ch� c� <color=blue>m�t t� ��i ���c ch�n<color> �i ��n �i cu�i b�ng c�ch c�c t� ��i <enter>ph�i <color=yellow>so t�i v�i nhau<color> �� ch�n ra ��i h�nh x�ng ��ng <enter>nh�t, c�c anh h�ng c� s� l��t <color=green>ho�n th�nh �i ph� b�n <enter>nhi�u nh�t<color> s� xu�t hi�n tr�n <color=Orange>b�ng x�p h�ng t�ng<color>.",
		"<color=yellow>Th�i gian b�o danh<color> c�a Ph� b�n <color=Orange>Vi�m �� B�o T�ng<color> v�o <enter>c�c khung gi� <color=green>14:25, 16:25, 18:25, 20:25, 22:25<color> m�i <enter>ng�y, h�y ��n  tr��c <color=green>5 ph�t<color> �� b�o danh � <color=Orange>B�nh B�nh c�n��ng<color> t�i <color=earth>Bi�n Kinh ph�<color>, s� c� th�ng b�o tr�n k�nh th�gi�i khi di�n ra ho�t ��ng!", -- 45
		"M�n ph�i v� Nh�n v�t - <color=yellow>Thay ��i ngo�i h�nh c�a trang  b�<color>: �� thay ��i ngo�i h�nh c�a trang b� ng��i ch�i c�n��n <color=earth>Ba L�ng Huy�n<color> g�p <color=orange>Ho�nh Ba Ti�n T�<color>, m�i l�n thay  ��i c�n ph�i c� <color=yellow>3 Ti�n ��ng<color>, kh�ng gi�i h�n s� l�n ��iv� ng��i ch�i c� th� <color=green>xem tr��c h�nh �nh<color> ngo�i h�nh c�atrang b� tr��c khi ti�n h�nh thay ��i. T�nh n�ng thay ��i ngo�i h�nh trang b� <color=yellow>ch� l�m thay ��i h�nh d�ng c�atrang b� m� kh�ng h� thay ��i th�m b�t c� th�ng s� n�oc�!<color>",
	},
	tbOpt = {
		"Ph�n th��ng - V�ng s�ng Li�n ��u Qu�n qu�n", "Ph�n th��ng - V�ng s�ng Li�n ��u � qu�n", "Ph�n th��ng - V�ng s�ng Li�n ��u h�ng 3", "Ph�n th��ng - V�ng s�ng Li�n ��u h�ng 4", -- 4
		"Ph�n th��ng - V�ng s�ng Th�i th� L�m An", "Ph�n th��ng - V�ng s�ng Th�i th� D��ng Ch�u", "Ph�n th��ng - V�ng s�ng Th�i th� T��ng D��ng", "Ph�n th��ng - V�ng s�ng Th�i th� Bi�n Kinh", "Ph�n th��ng - V�ng s�ng Th�i th� ��i L�", "Ph�n th��ng - V�ng s�ng Th�i th� Th�nh ��", "Ph�n th��ng - V�ng s�ng Th�i th� Ph��ng T��ng", "<link=image:\\spr\\skill\\others\\title_ab.spr><link><color>", "<link=image:\\spr\\skill\\top_tong\\bangzhu.spr><link><color>", "<link=image:\\spr\\skill\\top_tong\\bangzhu.spr><link><color>", "<link=image:\\spr\\skill\\others\\title_ab.spr><link><color>", "<link=image:\\spr\\skill\\top_tong\\bangzhu.spr><link><color>", "<link=image:\\spr\\skill\\top_tong\\bangzhu.spr><link><color>", "<link=image:\\spr\\skill\\top_tong\\bangzhu.spr><link><color>", -- 18
		"Ph�n th��ng - V�ng s�ng V� song m�nh t��ng ��i t��ng", "Ph�n th��ng - V�ng s�ng V� song m�nh t��ng Ph� t��ng", "Ph�n th��ng - V�ng s�ng V� song m�nh t��ng Th�ng l�nh", "<link=image:\\spr\\skill\\others\\title_dg.spr><link><color>", "<link=image:\\spr\\skill\\others\\title_ab.spr><link><color>", "<link=image:\\spr\\skill\\others\\title_zw.spr><link><color>", "\\script\\gm_tool\\dispose_item.lua", "DisposeItem", -- 26
	},
}

bilTableOption ={
	"Nh�n h� tr� h�i [Sinh l�c, N�i l�c]", "Tin t�c - S� ki�n - T�nh n�ng", "��i tho�i v�i GameMaster", "K�t th�c ��i tho�i.", "S� Ki�n - �ua top Cao th�", "Ph�n th��ng cho c�c Cao th�",
	"Quay l�i", "Bil_ChatWithGM_SendMessage2GM", "T�nh n�ng - C�ng th�nh chi�n", "Th�i gian ��ng k� C�ng th�nh", "Th�i gian ti�n h�nh C�ng th�nh chi�n", "T�nh n�ng - Li�n ��u",
	"Ph�n th��ng Kinh nghi�m v� Vinh d�", "Th�i gian ��ng k� v� thi ��u", "T�nh n�ng - Chi�n tr��ng T�ng Kim", "Ph�n th��ng - K�t th�c tr�n", "T�nh n�ng - Qu� Huy ho�ng Ho�ng kim",
	"T�nh n�ng - Boss Ho�ng kim", "T�nh n�ng - V��t �i", "T�nh n�ng - Phong l�ng ��", "T�nh n�ng - Phong k� T�a ��", "Ta mu�n h�y v�t ph�m", "Ph�n th��ng h� tr� khi l�n c�p", 
	"Ph�n th��ng h� tr� c�p %d", -- 24
	"T�nh n�ng - M�n ph�i v� Nh�n v�t", --25
	"Xu�t s� v� v�o l�i m�n ph�i",
	"��i t�n nh�n v�t",
	"Chuy�n ��i m�n ph�i",
	"Chuy�n ��i gi�i t�nh",
	"Ho�t ��ng - �i�m danh h�ng ng�y", --30
	"Xem s� l��t �i�m danh c�a b�n th�n",
	"Xem tr��c c�c ph�n th��ng",
	"Nh�n th��ng th�i gian Online",
	"T�nh n�ng - Nh�n th��ng th�i gian Online",
	"T�t c� c�c ph�n th��ng", --35
	"T�nh n�ng - ��i chi�n Hoa S�n", 
	"Th�i gian b�o danh",
	"C�c ph�n th��ng cho ng��i chi�n th�ng",
	"T�nh n�ng - Phong h�a li�n th�nh",
	"Th�i gian b�o danh tham gia", -- 40
	"Ho�t ��ng - S�n Nh�m b�o ph�",
	"Ph�n th��ng khi s�n ���c Nh�m b�o ph�",
	"Ho�t ��ng - Vi�m �� b�o t�ng",
	"Th�i gian b�o danh Vi�m �� b�o t�ng",
	"C�c ph�n th��ng t� Vi�m �� B� B�o", -- 45
	"Thay ��i h�nh �nh ngo�i h�nh c�a trang b�",
}

function Bil_Main()
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[1]
	local tbOpt = 
	{
		{bilTableOption[1], Bil_SupportHealingMana},
		{"Nh�n m�u ng� hoa h� tr� t�n th�", Bil_SupportHealingMana_NguHoa},
		{bilTableOption[33], bilAwardOnlineTime},
		{"Nh�n ph�n th��ng h� tr� l�n c�p", bilFunc_CallMain_TTQ_v3DoXanh},
		{"Nh�n ph�n th��ng Ph�c l�i c� nh�n", bilPhucLoi_Main},
		{"Thi�t l�p Auto t� ��ng rao b�n", bilCallFunc_AutoChat},
		{bilTableOption[2], Bil_NewsEventsFeatures},
		{bilTableOption[3], Bil_ChatWithGM},
		{bilTableOption[22], Bil_DelItem},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function bilAwardOnlineTime(bil_1)
	Clear120SkillExpLimit()
	if Bil_GetTask(18) <  tonumber(date("%y%m%d")) then
		Bil_SetTask(17, 15)
	end
	
		local bil_TimeOnline_S = mod(GetTireTime(), 60)
		local bil_TimeOnline_M = floor(GetTireTime() / 60)
		local bil_TimeOnline_H = floor(bil_TimeOnline_M / 60)
		if bil_TimeOnline_M >= 60 then
			bil_TimeOnline_M = bil_TimeOnline_M - (60 * floor(bil_TimeOnline_M/60))
		end
		
	if GetTireTime() >= 3600 then
		if bil_1 ~= 1 then
			return Say("T�ch l�y th�i gian Online hi�n t�i c�a c�c h� l�:<enter>"..bil.C(1, bil_TimeOnline_H).." gi� - "..bil.C(1, bil_TimeOnline_M).." ph�t - "..bil.C(1, bil_TimeOnline_S).." gi�y<enter>C�c h� mu�n nh�n th��ng l�n th� "..bil.C(2, (Bil_GetTask(17) - 14)).." ch�?", 2, 
				"Ti�n h�nh nh�n th��ng l�n th� "..(Bil_GetTask(17) - 14).."/#bilAwardOnlineTime(1)",
				"Th�i �� ta t�ch l�y th�m/OnCancel")
		end
		local bilTbAwExpOlT = {{1, 2000000},{5, 5000000},{10, 10000000},{15, 15000000},{22, 22000000},}
		for i = 1, floor(GetTireTime()/60/60) do
			Bil_SetTask(16, Bil_GetTask(16) + GetTireTime())
			SetTireTime(0)
			local bilRandomVlue = random(1, Bil_GetTask(17))
			if Bil_GetTask(17) > getn(_bilTbAwardOnlineTime) then
				bilRandomVlue = random(1, getn(_bilTbAwardOnlineTime))
			end
			local nItemIndex = AddItem(unpack(_bilTbAwardOnlineTime[bilRandomVlue].bilItem))
			-- SetItemBindState(nItemIndex, -2) -- h�y b� ch� �� kh�a v�nh vi�n v�i c�c item nh�n ���c t� ho�t ��ng Online
			Msg2Player("Ch�c m�ng c�c h� �� nh�n ���c<enter><color=yellow>".._bilTbAwardOnlineTime[bilRandomVlue].bilItemName)
			Bil_SetTask(17, Bil_GetTask(17) + 1)
			AddRepute(5)
			if( GetTask( TASKID_FY_START_ONLINE_TIME ) == 0 ) then
				FuYuan_Start();
			end
			FuYuan_Add(5)
			Msg2Player("B�n �� nh�n ���c th�m 5 �i�m Danh v�ng.")
			Msg2Player("T�ng th�i gian Online tr�n m�ng <enter>c�a c�c h� l�: <color=yellow>"..floor(Bil_GetTask(16)/60).."<color> Ph�t.")
			Msg2Player("Nh�n th��ng th�i gian Online l�n th� <color=yellow>"..(Bil_GetTask(17) - 15).."<color> th�nh c�ng!")
			for i = 1, getn(bilTbAwExpOlT) do
				if ((Bil_GetTask(17) - 15) == bilTbAwExpOlT[i][1]) then
					AddOwnExp(bilTbAwExpOlT[i][2])
					Msg2Player("B�n Online <color=yellow>"..bilTbAwExpOlT[i][1].." gi�<color> nh�n th�m: <color=green>"..bilTbAwExpOlT[i][2].."<color> �i�m Kinh nghi�m!")
					AddLocalNews("Ng��i ch�i <color=yellow>"..GetName().."<color> h�m nay Online <color=yellow>"..bilTbAwExpOlT[i][1].." gi�<color> ���c th��ng th�m <color=green>"..bilTbAwExpOlT[i][2].."<color> �i�m Kinh nghi�m!")
				end
			end
		end
		Bil_SetTask(18, tonumber(date("%y%m%d")))
	else
		return Say("Th�i gian t�ch l�y tr�n m�ng c�a c�c h� hi�n t�i l�: "..bil.C(1, bil_TimeOnline_H).." gi� - "..bil.C(1, bil_TimeOnline_M).." ph�t - "..bil.C(1, bil_TimeOnline_S).." gi�y, ch�a �� �i�u ki�n �� nh�n th��ng l�n th� "..(Bil_GetTask(17) - 14)..", vui l�ng ��i .... !", 1, "Ta bi�t r�i!/OnCancel")
	end
end

function Bil_NewsEventsFeatures(bilStep)
	local tbOptCr = {}
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[1]
	local tbOpt = 
	{
		{bilTableOption[5], Bil_EvensRacingTopPlayers},
		{bilTableOption[23], bilInforLevelAward},
		{bilTableOption[34], bilInfoAwOnlineTime},
		{bilTableOption[30], bilInforDailyMuster},
		{bilTableOption[25], bilInforDiscAndChar},
		{bilTableOption[36], bilInforHoaSonDaiChien},
		{bilTableOption[39], bilInforPhongHoaLienThanh},
		{bilTableOption[9], bil_FeaturesCTC},
		{bilTableOption[43], bil_FeaturesViemDeTaoTang},
		{bilTableOption[41], bil_SanNhimBeoPhi},
		{bilTableOption[12], bil_FeaturesLeagueMatch},
		{bilTableOption[15], bil_FeaturesSongjin},
		{bilTableOption[17], bil_FeaturesGreatSeed, {1}},
		{bilTableOption[18], bil_FeaturesGreatSeed, {2}},
		{bilTableOption[19], bil_FeaturesGreatSeed, {3}},
		{bilTableOption[20], bil_FeaturesGreatSeed, {4}},
		{bilTableOption[21], bil_FeaturesGreatSeed, {5}},
	}
	
	if bilStep == nil then
		for i = 1, 14 do
			tinsert(tbOptCr, tbOpt[i])
		end
		tinsert(tbOptCr, {"Trang sau", Bil_NewsEventsFeatures, {2}})
		tinsert(tbOptCr, {bilTableOption[4], OnCancel})
	elseif bilStep == 2 then
		for i = 15, getn(tbOpt) do
			tinsert(tbOptCr, tbOpt[i])
		end
		tinsert(tbOptCr, {"Trang tr��c", Bil_NewsEventsFeatures})

		tinsert(tbOptCr, {bilTableOption[4], OnCancel})
	end
	CreateNewSayEx(szTitle, tbOptCr)
end

function bil_FeaturesViemDeTaoTang(bilStep)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[44]
	local bilItemName = ""
	if bilStep == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[45]
	elseif bilStep == 2 then
		for bilLoop = 1, getn(_bilTbAwardYadibaozang) do
			bilItemName = bilItemName.._bilTbAwardYadibaozang[bilLoop].bilItemName.."<enter>"
		end
		szTitle = Bil_EnemySay[11][1].."C�c ph�n th��ng s� nh�n ���c ng�u nhi�n khi s� d�ng <enter><color=green>Vi�m �� B� B�o<color>:<color=yellow><enter>"..bilItemName.."<color>"
	end
	local bilTbOp =
	{
		{bilTableOption[43], bil_FeaturesViemDeTaoTang},
		{bilTableOption[44], bil_FeaturesViemDeTaoTang, {1}},
		{bilTableOption[45], bil_FeaturesViemDeTaoTang, {2}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilTbOp)
end

function bil_SanNhimBeoPhi(bilStep)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[42]
	if bilStep == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[43]
	end
	local bilTbOp =
	{
		{bilTableOption[41], bil_SanNhimBeoPhi},
		{bilTableOption[42], bil_SanNhimBeoPhi, {1}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilTbOp)
end

function bilInforPhongHoaLienThanh(bilStep)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[40]
	if bilStep == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[41]
	end
	local bilTbOp =
	{
		{bilTableOption[39], bilInforPhongHoaLienThanh},
		{bilTableOption[40], bilInforPhongHoaLienThanh, {1}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilTbOp)
end

function bilInforHoaSonDaiChien(bilSel)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[37]
	if bilSel == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[38]
	elseif bilSel == 2 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[39]
	end
	local bilTbOp =
	{
		{bilTableOption[36], bilInforHoaSonDaiChien},
		{bilTableOption[37], bilInforHoaSonDaiChien, {1}},
		{bilTableOption[38], bilInforHoaSonDaiChien, {2}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilTbOp)
end

function bilInfoAwOnlineTime(bilSel)
	local szTitle = "C�c ph�n th��ng c� th� nh�n trong Ho�t ��ng Online."
	local bilNameAw = ""
	if bilSel == 1 then
		for i = 1, getn(_bilTbAwardOnlineTime) do
			bilNameAw = bilNameAw.."\n".._bilTbAwardOnlineTime[i].bilItemName
		end
		szTitle = Bil_EnemySay[11][1]..szTitle.."<color=yellow>"..bilNameAw.."<color>"
	else
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[36]
	end
	local bilTbOp =
	{
		{bilTableOption[34], bilInfoAwOnlineTime},
		{bilTableOption[35], bilInfoAwOnlineTime, {1}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilTbOp)
end

function bilInforDailyMuster(bilSelect)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[33]
	local bilAwardListMuster = ""
	if bilSelect == 1111 then
		local bilTimes = Bil_GetTask(14)
		local bilSel = bilTimes + 1
		if bilSel > 30 and bilSel < 40 then
			bilSel = bilSel - 30
		elseif bilSel > 40 and bilSel < 50 then
			bilSel = bilSel - 30
		elseif bilSel > 50 and bilSel < 60 then
			bilSel = bilSel - 30
		elseif bilSel > 60 then
			return print("Da co nguoi yeu cau nhan phan thuong Diem Danh lan thu: "..bilSel.." Kien nghi GM xem xet lai.")
		end
			for ii = 1, getn(_bilTbAwardDailyMuster[bilSel]) do 
				bilAwardListMuster = bilAwardListMuster.._bilTbAwardDailyMuster[bilSel][ii].bilItemName.."\n"
			end
		szTitle = Bil_EnemySay[11][1]..format(Bil_NewsEventsFeatures_tb.tbFeatures[34], Bil_GetTask(14), bilAwardListMuster)
	elseif bilSelect ~= nil and bilSelect >= 1 and bilSelect <= 60 then
		local bilSel = bilSelect
		if bilSel > 30 and bilSel < 40 then
			bilSel = bilSel - 30
		elseif bilSel > 40 and bilSel < 50 then
			bilSel = bilSel - 30
		elseif bilSel > 50 and bilSel < 60 then
			bilSel = bilSel - 30
		end
		for ii = 1, getn(_bilTbAwardDailyMuster[bilSel]) do 
			bilAwardListMuster = bilAwardListMuster.._bilTbAwardDailyMuster[bilSel][ii].bilItemName.."\n"
		end
		szTitle = Bil_EnemySay[11][1]..format(Bil_NewsEventsFeatures_tb.tbFeatures[35], bilSelect, bilAwardListMuster)
	end
	local bilTbOp =
	{
		{bilTableOption[30], bilInforDailyMuster},
		{bilTableOption[31], bilInforDailyMuster, {1111}},
		{bilTableOption[32], bilInforDailyMusterInputAw},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilTbOp)
end

function bilInforDailyMusterInputAw()
	return AskClientForNumber("bilInforDailyMuster",0, 60,"Nh�p s� l�n c�n xem")
end

function bilInforDiscAndChar(bilSelect)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[29]
	if bilSelect == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[30]
	elseif bilSelect == 2 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[31]
	elseif bilSelect == 3 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[32]
	elseif bilSelect == 4 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[46]
	end
	local bilTbOp =
	{
		{bilTableOption[26], bilInforDiscAndChar},
		{bilTableOption[27], bilInforDiscAndChar, {1}},
		{bilTableOption[28], bilInforDiscAndChar, {2}},
		{bilTableOption[29], bilInforDiscAndChar, {3}},
		{bilTableOption[46], bilInforDiscAndChar, {4}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	
	CreateNewSayEx(szTitle, bilTbOp)
end

function bilInforLevelAward(bilLevel)
	local szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[15]
	local bilTbOp = {}
	tinsert(bilTbOp, {"H� tr� t�n th�", bilInforLevelAward})
	if type(bilLevel) == "number" then
		szTitle = Bil_EnemySay[11][1]..format(Bil_NewsEventsFeatures_tb.tbFeatures[16], bilLevel.."0")..Bil_NewsEventsFeatures_tb.tbFeatures[bilLevel + 16]
	end
	for i = 1, 12 do
		tinsert(bilTbOp, {format(bilTableOption[24], i.."0"), bilInforLevelAward, {i}})
	end
	tinsert(bilTbOp, {bilTableOption[7], Bil_NewsEventsFeatures})
	tinsert(bilTbOp, {bilTableOption[4], OnCancel})
	-- CreateNewSayEx(szTitle, bilTbOp)
	CreateNewSayEx(Bil_EnemySay[11][1].."Hi�n t�i danh s�ch c�c ph�n th��ng c�a phi�n b�n m�i �� ���c thay ��i, b�n c� th� theo d�i trong m�c nh�n ph�n th��ng!", bilTbOp)
end

function Bil_EvensRacingTopPlayers(bilValue)
	local szTitle = ""
	if FALSE(bilValue) then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbDuaTopCaoThu[1]
	elseif bilValue == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbDuaTopCaoThu[2]..Bil_NewsEventsFeatures_tb.tbDuaTopCaoThu[3]
	end
	local tbOpt = 
	{
		{bilTableOption[5], Bil_EvensRacingTopPlayers},
		{bilTableOption[6], Bil_EvensRacingTopPlayers, {1}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function bil_FeaturesCTC(bilValue)
	local szTitle = ""
	if FALSE(bilValue) then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[2]
	elseif bilValue == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[3]
	elseif bilValue == 2 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[4]
	elseif bilValue >= 3 then
		szTitle = Bil_NewsEventsFeatures_tb.tbOpt[bilValue + 9]..Bil_NewsEventsFeatures_tb.tbOpt[bilValue + 2]
	end
	local bilOpt = 
	{
		{bilTableOption[9], bil_FeaturesCTC},
		{bilTableOption[10], bil_FeaturesCTC, {1}},
		{bilTableOption[11], bil_FeaturesCTC, {2}},
		{Bil_NewsEventsFeatures_tb.tbOpt[5], bil_FeaturesCTC, {3}},
		{Bil_NewsEventsFeatures_tb.tbOpt[6], bil_FeaturesCTC, {4}},
		{Bil_NewsEventsFeatures_tb.tbOpt[7], bil_FeaturesCTC, {5}},
		{Bil_NewsEventsFeatures_tb.tbOpt[8], bil_FeaturesCTC, {6}},
		{Bil_NewsEventsFeatures_tb.tbOpt[9], bil_FeaturesCTC, {7}},
		{Bil_NewsEventsFeatures_tb.tbOpt[10], bil_FeaturesCTC, {8}},
		{Bil_NewsEventsFeatures_tb.tbOpt[11], bil_FeaturesCTC, {9}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilOpt)
end

function bil_FeaturesLeagueMatch(bilValue)
	local szTitle = ""
	if FALSE(bilValue) then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[5]
	elseif bilValue == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[6]
	elseif bilValue == 2 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[7]
	elseif bilValue == 3 then
		szTitle = Bil_EnemySay[3][1]..Bil_NewsEventsFeatures_tb.tbOpt[1]
	elseif bilValue >= 4 then
		szTitle = Bil_EnemySay[bilValue + 2][1]..Bil_NewsEventsFeatures_tb.tbOpt[bilValue - 2]
	end
	local bilOpt = 
	{
		{bilTableOption[12], bil_FeaturesLeagueMatch},
		{bilTableOption[13], bil_FeaturesLeagueMatch, {1}},
		{bilTableOption[14], bil_FeaturesLeagueMatch, {2}},
		{Bil_NewsEventsFeatures_tb.tbOpt[1], bil_FeaturesLeagueMatch, {3}},
		{Bil_NewsEventsFeatures_tb.tbOpt[2], bil_FeaturesLeagueMatch, {4}},
		{Bil_NewsEventsFeatures_tb.tbOpt[3], bil_FeaturesLeagueMatch, {5}},
		{Bil_NewsEventsFeatures_tb.tbOpt[4], bil_FeaturesLeagueMatch, {6}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilOpt)
end

function bil_FeaturesSongjin(bilValue)
	local szTitle = ""
	if FALSE(bilValue) then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[8]
	elseif bilValue == 1 then
		szTitle = Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[9]
	elseif bilValue >= 2 then
		szTitle = Bil_NewsEventsFeatures_tb.tbOpt[bilValue + 20]..Bil_NewsEventsFeatures_tb.tbOpt[bilValue + 17]
	end
	local bilOpt = 
	{
		{bilTableOption[15], bil_FeaturesSongjin},
		{bilTableOption[16], bil_FeaturesSongjin, {1}},
		{Bil_NewsEventsFeatures_tb.tbOpt[19], bil_FeaturesSongjin, {2}},
		{Bil_NewsEventsFeatures_tb.tbOpt[20], bil_FeaturesSongjin, {3}},
		{Bil_NewsEventsFeatures_tb.tbOpt[21], bil_FeaturesSongjin, {4}},
		{bilTableOption[7], Bil_NewsEventsFeatures},
		{bilTableOption[4], OnCancel},
	}
	CreateNewSayEx(szTitle, bilOpt)
end

function bil_FeaturesGreatSeed(bilValue)
	CreateNewSayEx(Bil_EnemySay[11][1]..Bil_NewsEventsFeatures_tb.tbFeatures[bilValue + 9], {{bilTableOption[7], Bil_NewsEventsFeatures},{bilTableOption[4], OnCancel},})
end

function Bil_SupportHealingMana()
	if GetLevel() <= 119 then
		if Bil_CheckConditionSp() == 1 then
			AddSkillState(472, 1, 1, 1555200, 1) -- h�i m�u
			AddSkillState(527, 5, 1, 1555200, 1) -- t�ng l��ng m�u t�i �a
			AddSkillState(513, 7, 1, 1555200, 1) -- ph�ng th� v�t l� *2
			AddSkillState(514, 7, 1, 1555200, 1) -- kh�ng ��c *2
			AddSkillState(515, 7, 1, 1555200, 1) -- kh�ng b�ng *2
			AddSkillState(516, 7, 1, 1555200, 1) -- kh�ng h�a*2
			AddSkillState(517, 7, 1, 1555200, 1) -- kh�ng l�i *2
			local _,nX32,nY32 = GetWorldPos()
			CastSkill(1204, 1, nX32*32, nY32*32)
			-- return Talk(1, "", Bil_MsgSupportNewPl[2])
			return Msg2Player(bil.C(1, "Tr�ng th�i h�i ")..bil.C(8, "[m�u, n�ng l��ng]"))
		end
	else
		return bil.Talk("T�nh n�ng n�y ch� h� tr� cho t�n th� d��i c�p 120!")
		-- if GetTask(5954) < tonumber(date("%y%m%d")) then
			-- return Say("B�n �� v��t c�p 130, hi�n t�i b�n c� th� mua hi�u �ng h�i m�u, mana trong 1 ng�y v�i gi� 100!", 2, "Ta mu�n mua hi�u �ng trong 1 ng�y!/#Bil_SupportHealingManaUplevel141(1)", "Th�i kh�ng c�n ��u!/OnCancel")
		-- else 
			-- return Bil_SupportHealingManaUplevel141(2)
		-- end
	end
end

function Bil_SupportHealingManaUplevel141(bilSel)
	if bilSel == 1 then
		if (GetCash() >= 1000000) then 
			Pay(1000000) 
			SetTask(5954, tonumber(date("%y%m%d")))
			if Bil_CheckConditionSp() == 1 then
				AddSkillState(472, 1, 1, 1555200, 1)
				local _,nX32,nY32 = GetWorldPos()
				CastSkill(1204, 1, nX32*32, nY32*32)
				-- return Talk(1, "", Bil_MsgSupportNewPl[2])
				return Msg2Player(bil.C(1, "Tr�ng th�i h�i ")..bil.C(8, "[m�u, n�ng l��ng]"))
			end
		else 
			return Talk(1,"","C�c h� l�i kh�ng �� ti�n trong h�nh trang <pic=29>") 
		end 
	elseif bilSel == 2 then
		if Bil_CheckConditionSp() == 1 then
			AddSkillState(472, 1, 1, 1555200, 1)
			local _,nX32,nY32 = GetWorldPos()
			CastSkill(1204, 1, nX32*32, nY32*32)
			-- return Talk(1, "", Bil_MsgSupportNewPl[2])
			return Msg2Player(bil.C(1, "Tr�ng th�i h�i ")..bil.C(8, "[m�u, n�ng l��ng]"))
		end
	end
end

function Bil_CheckConditionSp()
	local Bil_MapID, _, _ = GetWorldPos()
	for i = 1, getn(Bil_CheckConditionSp_MapID) do
		if Bil_MapID == Bil_CheckConditionSp_MapID[i] then
			return Say(Bil_MsgSupportNewPl[3], 1, Bil_MsgSupportNewPl[4])
		end
	end
	return 1
end

function Bil_ChatWithGM()
	Say(Bil_MsgSupportNewPl[5], 2, Bil_MsgSupportNewPl[6], Bil_MsgSupportNewPl[7])
end

function Bil_ChatWithGM_Sure()
	local Bil_PlayerIndexGM = SearchPlayer(GetNameAdmin);
	if Bil_PlayerIndexGM <= 0 then
		return Say(Bil_MsgSupportNewPl[8], 1, Bil_MsgSupportNewPl[4])
	else
		if CallPlayerFunction(Bil_PlayerIndexGM, Bil_GetTask, 3) == 0 then
			return AskClientForString(bilTableOption[8], "", 1, (410), Bil_MsgSupportNewPl[9]); 
		elseif CallPlayerFunction(Bil_PlayerIndexGM, Bil_GetTask, 3) > 0 then
			if CallPlayerFunction(Bil_PlayerIndexGM, Bil_GetTask, 3) == PlayerIndex then
				return AskClientForString(bilTableOption[8], "", 1, (410), Bil_MsgSupportNewPl[9]); 
			else
				return Say(Bil_MsgSupportNewPl[10], 1, Bil_MsgSupportNewPl[4])
			end
		end
	end
end

function Bil_ChatWithGM_SendMessage2GM(Bil_Msg)
	local Bil_PlayerIndexGM = SearchPlayer(GetNameAdmin);
	if CallPlayerFunction(Bil_PlayerIndexGM, Bil_GetTask, 3) ~= PlayerIndex and CallPlayerFunction(Bil_PlayerIndexGM, Bil_GetTask, 3) ~= 0 then
		return Say(Bil_MsgSupportNewPl[10]);
	end
	local Bil_MsgSend = 
		{
			format(Bil_MsgSupportNewPl[11], GetName())..Bil_Msg, 3,
			format(Bil_MsgSupportNewPl[12], GetName()),
			format(Bil_MsgSupportNewPl[13], GetName(), PlayerIndex),
			Bil_MsgSupportNewPl[14],
		}
	CallPlayerFunction(Bil_PlayerIndexGM, SetTaskTemp, 245, PlayerIndex)
	CallPlayerFunction(Bil_PlayerIndexGM, Bil_SetTask, 3, PlayerIndex)
	callPlayerFunctionParamList(Bil_PlayerIndexGM, Say, Bil_MsgSend)
end

function Bil_DelItem()
	return Say("B�n c� ch�c mu�n <color=red>h�y v�t ph�m<color> ch�, h�y suy ngh� k�!<enter><color=0xffff5f>T�t c� c�c v�t ph�m ���c y�u c�u h�y s� b� h�y b� <enter>ho�n to�n b�i h� th�ng, b�t k� l� v�t ph�m n�o!", 2, "Ta ngh� k� r�i!/Bil_DelItem_Sure", "Th�i, ta nh�m!/OnCancel")
end

function Bil_DelItem_Sure()
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong   vi�c h�y v�t ph�m!", "bilDisposeConfirm", "OnCancel", 1);
end

function bilDisposeConfirm(nCount)
	local bilLogDelItemFileName = openfile("script/global/bil4i3n/bil4i3n_log/del_item_"..date("%d_%m_%Y")..".log", "a");
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		Msg2Player("�� h�y v�t ph�m [<color=green>"..strItem.."<color>]")
		write(bilLogDelItemFileName, date("%H:%M:%S").."\t Account: "..GetAccount().."\tName: "..GetName().."\t DelItem: "..strItem, "\n")
	end
	closefile(bilLogDelItemFileName)
	Msg2Player("Thao t�c h�y v�t ph�m th�nh c�ng")
	Talk(1, "", "Thao t�c th�nh c�ng, ki�m tra l�i!<enter>�� h�y<color=yellow> "..nCount.."<color> v�t ph�m!");	
end

function cndh_CallFuncMain4Thp()
	return Bil_Main()
end

function OnCancel()
end

function GetDesc( nItemIdx )
	return "<color=White>     L� m�t cu�n c�m nang th�n k�, b�n trong ghi ch�p t�t c� c�c ho�t ��ng c�a trang ch�      <enter>li�n t�c c�p nh�t nh�ng tin t�c m�i nh�t, nh�ng s� ki�n s�p v� �� di�n ra<enter><color><color=Wood>      M�t cu�n c�m nang m� t�t c� c�c nh�n s� trung nguy�n ��u mang b�n m�nh      <enter>";
end

function Bil_SupportHealingMana_NguHoa()
	local a = GetTask(5885)
	local b = GetGameTime()
	local c = 0
	
	if (b - a) < 25 then
		_, c = bil.SplitTime(25 - (b - a))
		return bil.Talk("B�n ph�i ch� th�m "..c.." m�i c� th� nh�n m�u ti�p!")
	end
	
	SetTask(5885, b)
	
	local d = CountFreeRoomByWH(1, 1)
	
	if d < 1 then
		return bil.Talk("B�n ph�i �� tr�ng �t nh�t 1 � h�nh trang m�i c� th� nh�n h� tr�!")
	end
	
	return bil.Say({{P = {i = {{v = {1,8,0,1,0,0,0,0}, n = d, b = 0, e = 0, ne = "Ng� hoa ng�c l� ho�n"},}}},})
end

















