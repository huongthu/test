Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\task\\task_addplayerexp.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")

-- Include("\\script\\global\\bil4i3n\\bil4i3n_nhiem_vu_tan_thu_chinhtuyen.lua")

bilNvTanThu = {
	Msg_LongNgu = {
		[0] = "<npc>Tr�n giang h� hi�n �ang v� b�o v�t Thi�n Ho�ng Long Kh�, ��nh Qu�c Ho�ng Kim m� lo�n th� phong v�n, binh kh�i t� ph��ng, ta c� v�i nhi�m v� mu�n nh� ng��i gi�p!<enter><enter>��u ti�n h�y mang theo 5 mi�ng th�t t��i v� ��n g�p v� s�",
		[2] = "<npc>Thi�n Ho�ng Long Kh� v� ��nh Qu�c Ho�ng Kim b�n trong c�n �n ch�a r�t nhi�u b� m�t, tr��c m�t ng��i h�y m� C�m nang ��ng h�nh nh�n ph�n th��ng h� tr� c�p 20 r�i h�y quay l�i g�p ta!",
		[4] = "<npc>N�u ng��i th�t s� mu�n t�m hi�u v� tung t�ch c�a Thi�n Ho�ng Long Kh� v� ��nh Qu�c Ho�ng Kim h�y ��n th�nh ��i L� t�m g�p M�c S�u (183,198) c� th� c� ta c� th�ng tin v� 2 m�n b�o v�t n�y!",
		[19] = "<npc>- Kh� l�m! ta th�y r�t h�i l�ng khi giao ph� nhi�m v� giang h� cho ng��i.<enter>- �a t� Ng� Gia �� tin t��ng.<enter>- Nh� v�y B� M�t T�m Long H�i �� ���c s�ng t�, nh� ng��i c�ng c� ch�t c�n c� tr�n giang h� r�i!<enter>- Trong l�c chuy�n tr� v�i M�c S�u v� Nam Cung Phi V�n, 2 v� �� c� nh�c ��n t� ch�c L�m Uy�n Nhai, kh�ng bi�t Ng� Gia c� bi�t chuy�n n�y?<enter>- L�m Uy�n Nhai?... Chuy�n n�y li�n quan ��n c� m�t t� ch�c s�t th�, ng��i th�t s� mu�n t�m hi�u ch�?<enter>- R�t n�ng l�ng th�a Ng� Gia!<enter>- V�y ���c... H�y ��n Bi�n Kinh g�p Ph� Nam B�ng, �ng ta s� c� c�ch gi�p ng��i t�m hi�u chuy�n n�y!<enter>- �a t� Ng� Gia, �� t� xin c�o t�!",
		[35] = "<npc>R�t t�t, ���c tin b�o ng��i �� ho�n th�nh to�n b� c�c nhi�m v� s�t th� c�a Ph� Nam B�ng giao cho, Long m� r�t t� h�o, tr�n giang h� ng��i c�ng c� ���c m�t �t danh ti�ng, tuy nhi�n c�ng kh�ng ph�i l� vi�c t�t ��p g�, kh�p n�i ��u c� tai m�t theo d�i, hay l� ng��i ��n Chu Ti�n Tr�n t�m V�n Nhi �i!",
		[60] = "<npc>- T�i sao l�i ��n, t�i sao l�i ��n?<enter>- ......Ng� Gia, l�u ng�y kh�ng g�p, �ng �� gi� nhi�u r�i.<enter>- Kim C�u m�y ng�y tr��c �i qua ��y, B� ch� ti�m t�p h�a b�......<enter>- Ng� Gia!<enter>- Th�i r�i, u�ng c�ng ta ph� nhi�u c�ng s�c, ��n cu�i c�ng c�ng ��nh kh�ng l�i Kim C�u, ta �� gi� r�i, th� gi�i n�y l� c�a tu�i tr� c�c ng��i. Nh�ng tr��c khi ng��i b�n t�u giang h� ta mu�n d�nh t�ng nh� ng��i m�t m�n b�o v�t sau khi �� ho�n th�nh vi�c n�y.<enter>- Vi�c g� Ng� gia c� n�i!<enter>- ��u ti�n h�y ho�n th�nh m�t nhi�m v� D� T�u b�t k�<enter>- R�t ��n gi�n th�a Ng� Gia!",
		[68] = "<npc>- R�t t�t. Long m� r�t h�i l�ng v� b�n th�n c�a ng��i, t�t c� c�c kh�o nghi�m c�a ta ng��i ��u �� ho�n th�nh, � ��y c� m�t m�n b�o v�t ng��i h�y c�m l�y v� b�t ��u h�nh tr�nh b�n t�u giang h�.<enter>- �a t� Long gia<enter>- Phi�u b�t giang h� r�t c�c kh�, ng��i n�n t� luy�n t�p th�m. Long m� ta th�i gian t�i s� b�n m�t s� c�ng vi�c, h�n g�p l�i ng��i v�o m�t d�p kh�c, Giang h� hi�m �c, m�i chuy�n ng��i n�n c�n th�n. Sau n�y ta kh�ng th� lo cho ng��i, h�y b�o tr�ng!<enter>- V�n b�i bi�t r�i!",
		[9999] = {"<npc>Tr�n giang h� hi�n �ang v� b�o v�t Thi�n Ho�ng Long Kh�, ��nh Qu�c Ho�ng Kim m� lo�n th� phong v�n, binh kh�i t� ph��ng!", {{"K�t th�c ��i tho�i", bil.OnCancel}}},
	},
	Msg_MacSau = {
		[5] = "<npc>- Xin h�i ng��i c� ph�i l� M�c S�u<enter>- V� ��y l�...?<enter>- Ta c� b�c th� n�y, ng��i xem qua s� bi�t. <enter>- M�c S�u nh�n th�.  Trong th� c� ��c!<enter>- C�i g�? <enter>- Ng��i�.Ng��i th�t �c ��c! N�i! Ai ph�i ng��i ��n? <enter>- Ta kh�ng mu�n ti�t l� danh t�nh ng��i ��! <enter>- T�t! Ng��i kh�ng n�i, h�m nay ��ng h�ng r�i kh�i ��y!<enter>- Cho d� c� b� m�ng n�i ��y ta c�ng kh�ng ti�t l� danh t�nh h�n. <enter>- Ta � b�n t�u ngo�i th�nh ��i ng��i! C� b�n l�nh h�y ��n ��!",
		[7] = "<npc>- Kh�ng ng� v� ngh� ng��i th�t cao c��ng.<enter>- Ng��i c�n kh�ng n�i, ta s� ph� v� c�ng c�a ng��i, c� n�i hay kh�ng?<enter>- Kh�ng n�i.<enter>- M�c S�u:......<enter>- Ng��i gi�t ta �i. <enter>- Th�t kh�ng ng�, th� h� c�a Long Ng� l�i gan d� nh� v�y. <enter>- Ng��i t��ng �e d�a l� ta s� �? <enter>- �i ch�! B�ng h�u! Ta ��y ch� th� ng��i m� th�i. Kh�ng tin ng��i t� xem th� �i s� r�. <enter>- .....R�t cu�c l� chuy�n g� v�y? <enter>- V� mu�n xem C�c h� c� ph�i l� ng��i ��ng �� giao ph� chuy�n l�n kh�ng. <enter>- Chuy�n l�n?<enter>- ��ng v�y, n�i ra d�i l�m. G�n ��y Thi�n Ho�ng Long Kh� m�t t�ch �� l�u nay t�i xu�t giang h�. �� l� m�t b� �o gi�p tuy�t th�. N�m x�a t�n Th�y Ho�ng t�n c�ng L�c qu�c, tri�u t�p th� r�n b�y n��c ��c th�nh � H�m D��ng. V� b� Thi�n Ho�ng Long Kh� v� ��nh Qu�c Ho�ng Kim ng��i c� th� ��n Th�nh �� g�p Ti�u C�ng T� (403,319), ng��i n�y �ang n�m gi� Ho�ng Kim L�n, 1 ph�n c�a b� Thi�n Ho�ng Long Kh�",
		[10] = "<npc>Kh�ng ph�i ��y l� Ho�ng Kim L�n �� ch�, xem ra b�n l�nh c�a ng��i c�ng kh�ng �� n�i t�. N�u �� c� b�n l�nh nh� th� th� ta nh� ng��i �i 1 chuy�n ��n D��ng Ch�u g�p H� V� Th�, c� ta l� ng��i ph� tr�ch m�ng l��i t�nh b�o, ch�c ch�n ng��i n�y c� th�ng tin v� Thi�n Ho�ng Long Kh� v� ��nh Qu�c Ho�ng Kim.",
		[13] = "<npc>�� b� b�t c�c!<enter><color=orange>M�c S�o Nhi: <color>T� t� M�c S�u �� b� b�t c�c, t� �y c� d�n mu�i b�o l�i v�i v� huynh ��i h�y ��n L�m An t�m M�nh Ph�m, ch� c� �ng �y m�i gi�i quy�t ���c chuy�n n�y!",
		[18] = "<npc> - Kh�ng c� g� �� n�i! Giao M�c S�u ra ��y! <enter> - Ng��i cho r�ng ta b�t M�c S�u �i? <enter> - Ch�ng l� kh�ng ph�i sao! <enter> - Ai ch�! Ng��i hi�u l�m r�i. <enter> - � c�a ng��i l�...? <enter> - Ta l� ch� nh�n c�a T�m Long H�i, M�c S�u ���c ta gi�i c�u,  nay �ang � T��ng D��ng tr� th��ng. <enter> - C�n mu�n n�i nh�m n�a? <enter> - Kh�ng ���c v� l�! V� n�y l� Ch� nh�n T�m Long h�i --Nam Cung Phi V�n! <enter> - Nam Cung......Phi V�n. L� Nam Cung ��i hi�p nhi�u n�m tr��c b� Thi�n Nh�n Gi�o ch� ��i tr��c ��nh r�i xu�ng v�c! <enter> - ��ng v�y.<enter> - L� ta sai. <enter> Kh�ng c�n �y n�y! Ng��i c�ng lo l�ng cho an nguy c�a M�c S�u. <enter> - C�m �n ng��i �� hi�u, Nam Cung ��i Hi�p! <enter> Ta b� ��m H�c Y nh�n b�t �i, ch�nh S� ph� c�u ta.<enter> - Nh�ng ng��i �� l� ai? <enter> - Ta kh�ng r�, nh�ng nghi ng� l� cao th� c�a L�m Uy�n Nhai l�m. <enter> - L� t� ch�c g�? <enter> L� t� ch�c s�t th� gi�a trung l�p. <enter> - B�n h� v� Long Kh�? <enter> - ��ng, h� mu�n thu th�p �� Long Kh�, �� gi�i c�u Bang ch� Phu nh�n Ho�n Nhan Nh��c Tuy�t. <enter> - �! Nh��c Tuy�t phu nh�n n�m �� ��......? <enter> - �! Phu nh�n ch�a ch�t, ch� b� giam � m�t n�i b� m�t. Ch� c� t�m �� Long Kh�, l�y ���c b�n �� n�i �� m�i c� th� gi�i c�u Phu nh�n. <enter> - Ta s� c�ng Ch� nh�n ��n  Thi�n Long t� m�t chuy�n, ng��i h�y v� g�p Long Ng�. Ta s� li�n l�c sau. <enter> - ���c! Mong m�i ng��i vui v�. <enter> C�m �n ng��i �� gi�p �� trong th�i gian qua, ta s� kh�ng qu�n ng��i.",
		[9999] = {"<npc>C� trung nguy�n n�y ng��i hi�n th� �t, k� giang �c th� nhi�u, ngay c� b�n th�n ta c�ng kh�ng bi�t ta n�m � ��u trong 3 ph�i ch�nh, trung, t�!", {{"K�t th�c ��i tho�i", bil.OnCancel}}},
	},
	Msg_PhoNamBang = {
		[20] = "<npc>- �ng l� Ph� Nam B�ng?<enter>- Kh�ng sai.<enter>- Ng� Gia ph�i ta ��n, � ��y c� th� c� b�t t�ch c�a �ng ta. <enter>- Ng��i �� t�ng gi�t ng��i ch�a? <enter>- ......Ch�a t�ng.<enter>- Th� ng��i d�a v�o c�i g� m� v�o L�m Uy�n Nhai. Th� ti�n c� c�a Ng� Ca ch�c kh�ng ��. <enter>- N�i �i�u ki�n c�a �ng xem. <enter>- Gi�t ng��i! Gi�t m�t ng��i kh� gi�t. <enter>- L� ai?<enter>- Ninh T��ng Qu�n.<enter>- Ninh T��ng Qu�n l� ai? <enter>- ��i t��ng Nam T�ng, th�ng ��ch ph�n qu�c, t�i kh�ng th� tha. <enter> - ��ng ch�t! <enter>- H�n g�n ��y du ngo�n � La Ti�u S�n, kh�ng bi�t bao gi� v� Doanh tr�i. ��i ��n h�n v� trong qu�n doanh th� r�t kh� kh�n. Ng��i ch� c� m�t c� h�i duy nh�t n�y th�i. <enter>- ���c!",
		[22] = "<npc>- H�n ch�t r�i. <enter>- Ta bi�t r�i, ta �� xem th��ng ng��i. Hi�n t�i tr�n giang h� c� 3 k� kh�ng th� gi�t, 3 ng��i n�y kh�ng nh� ng��i ng��i v�a m�i h� th�, trong �� c� L�u Thi�n T��ng, nghe n�i hi�n nay h�n ta �ang � Kho�i Ho�t L�m, n�u ng��i c� th� h� th� ���c ng��i n�y th� chuy�n ch�ng ta c� th� b�n b�c ti�p",
		[24] = "<npc>- H�n ch�t r�i.ta �� gi�t ���c L� Thi�n T��ng. <enter>- Ta �� th�y r� n�ng l�c c�a ng��i. S�n tr�i c� m�t k� ho�ch l�n, ta hy v�ng ng��i tham gia. <enter>- l� k� ho�ch g�? <enter>- Hi�n v�n �ang thu x�p, ��n l�c ta s� b�o cho ng��i, nh�ng tr��c m�t ng��i h�y ��n Th�y Y�n M�n g�p L� Thu Th�y, c� �y s� n�i cho ng��i bi�t b��c ti�p theo l� g�.<enter>- Ta bi�t r�i!",
		[28] = "<npc>Ch� nh�n c�a L�m Uy�n Nhai hi�n t�i l� Bang ch� Thi�n V��ng Bang -- D��ng Anh cho r�ng H�n Giang ��c �i�u T�u c� li�n quan �� vi�c m�t t�ch c�a Chi�n Th��ng Long �o�n, ng��i h�y ��n Thi�n V��ng Bang m�t chuy�n xem sao.",
		[31] = "<npc>Hi�n nay T�m Long H�i �� thu th�p ���c hai m�n th�n v�t , n�u �� h� t�m ���c th� k� ho�ch L�m Uy�n Nhai s� th�t b�i, ta mu�n nh� ng��i ��n Thi�u L�m T� g�p ��i S� Kh�ng T�ch m�t chuy�n, trong tay �ng ta �ang gi� 1 ph�n c�a b� Thi�n Ho�ng Long Kh�!",
		[34] = "<npc>- Th� n�o? <enter>- M�i th� � ��y. <enter>- T�t qu�! Ta c�ng bi�t ng��i nh�t ��nh s� th�nh c�ng. <enter>- ......Long Kh� c� ��, c� th� thay ��i v�n m�nh Thi�n h� sao? <enter>- T�i sao l�i h�i v�y? <enter>- Ta......L�ng ta c� ch�t nghi v�n.<enter>-  Ta c�ng kh�ng bi�t. Ta ch� nghe qua 'Th�p Long T� Th�, Thi�n H� Kh�i ��nh, �o�n K� Ch�y C�t, T�n Ch� Xu�t Hi�n'. <enter> ���c! Trong th�i gian n�y c� th� ta s� kh�ng t�m ng��i. Hoa S�n ph�i �ang c� m�t s� v�n �� c�n ng��i gi�p ��. Ng��i h�y quay v� di�n ki�n Ng� ca �i!",
		[9999] = {"<npc>Giang h� hi�m �c, m��i ba huynh �� gi� ch� c�n m�nh ta.", {{"K�t th�c ��i tho�i", bil.OnCancel}}},
	},
	Msg_VanNhi = {
		[36] = "<npc>- �!Ch�o hi�p kh�ch! T�m ta c� vi�c g�?<enter>- �......Nghe n�i mu�i bi�t 'Thi�n Ho�ng Long Kh�'?<enter>- Ai da! ��ng nh�c ��n Long kh� H� kh�, n�i ch�t chuy�n vui v�i n� gia ���c kh�ng?<enter>- Vi�c n�y...... N�u mu�i bi�t tin t�c 'Thi�n Ho�ng Long Kh�'......c� th� n�i v�i ta ���c kh�ng......<enter>- H�m! Mu�n moi tin c�a ta ��u c� d�!<enter>- Mu�i mu�n th� n�o m�i ch�u n�i ra tung t�ch c�a Long Kh�?<enter>- �� xem ng��i c� th� l�m l�o n��ng vui kh�ng?<enter>- Chuy�n n�y......<enter>- Chuy�n n�y c�i g�? Ta ch� mu�n b�o ng��i ��n L�m An t�m <color=yellow>Th�i C�ng C�ng<color> l�y 1 b�nh Thi�n H��ng Ng�c Chi Cao.<enter>- Ta t��ng......��n gi�n th�i, t�m <color=yellow> Th�i C�ng C�ng<color> l�y Thi�n H��ng Ng�c Chi Cao ��ng kh�ng? H�y ch� tin ta!",
		[40] = "<npc>- ��y th�t s� l� Thi�n H��ng Ng�c Chi Cao ��y sao. Qu� th�t nh� ng��i c�ng c� ch�t �t b�n l�nh, v� chuy�n Thi�n Ho�ng Long Kh� nh� ng��i mu�n h�i g� n�o.<enter>- T�i h� mu�n bi�t v� Tr�n Minh Chi Li�n<enter>- Sao d�o n�y nhi�u ng��i ��n t�m ta h�i v� vi�c n�y v�y nh�?<enter>- T� c� bi�t l�m vi�c n�y kh� kh�n l�m kh�ng, h�y cho ta bi�t t� th�y 'Tr�n Minh Chi Li�n' � ��u?<enter>- Ng��i n�i s�i d�y chuy�n n�y �......Th�t ra m�y n�m tr��c ta c� nghe m�t ng��i ��n �ng t�ng n�i......<enter>- Ho�c l� m�y n�m tr��c nghe qua...<enter>- ��ng v�y! Cho n�n tr��c ti�n b�o ng��i gi�p ta t�m b�nh g� �� m� th�i, n�u nh� ta c� ta �� b�o ng��i �i l�y vi�n minh ch�u tr�n ��u Ho�ng Th��ng v� r�i.<enter>- Ng��i ch�i:......Th� c� g�p qua ng��i ��n �ng c� s�i d�y chuy�n �� kh�ng?<enter>- L� m�t v� Ti�u s� ��n t� <color=yellow>D��ng Ch�u<color>, ngo�i ra ta c�ng kh�ng ���c r�.<enter>- Ti�u S� � <color=yellow>D��ng Ch�u<color>? ���c! Ta �i t�m h�n!",
		[43] = "<npc>- Ng��i v�i v� quay l�i t�m ta c� vi�c g�?<enter>- Ta ��n h�i th�m h�nh tung 1 ng��i con g�i.<enter>- C� g�i n�o khi�n ng��i �i�n ��o th�?<enter>- Hi�u l�m r�i! Ng��i �� l� Th�i Ngh� v� tr��c c�a Ti�u s� H� H�u Ph�c.<enter>- Ng��i mu�n bi�t chuy�n g�?<enter>- .....�.<enter>- Ng��i h�y ��n Long Tuy�n th�n t�m <color=yellow>Ph� L�i Th�<color>, Y t� x�ng l� Giang Nam V�n S� Th�ng, c� v�ng Giang Nam chuy�n g� c�ng bi�t.<enter>- C� ng��i nh� th� �? �� ta �i xem th�.<enter>- L�n sau ��ng �i tay kh�ng ��n!",
		[9999] = {"<npc>Nh�n n��c ch�y d��i c�u khi�n ta c� th�y l�ng m�nh b�ng khu�ng! Gi� nh� hi�n gi� l� th�i b�nh th� hay bi�t m�y!", {{"K�t th�c ��i tho�i", bil.OnCancel}}},
	},
	Msg_Npc = {
		[37] = "<npc>- Nghe n�i Th�i C�ng C�ng c� 1 lo�i Thi�n H��ng Ng�c Ch� Cao?<enter>- C� th� c� ��y, nh�ng ng��i mu�n l�m g�?<enter>- Xem ra Th�i C�ng C�ng h�m nay t�m tr�ng kh�ng t�t l�m?<enter>- H�m tr��c b� 1 t�n Ti�u Th�i gi�m l�y tr�m c�a ta 1 pho t��ng Kim Ph�t, �� l� T�c Kim X�ch Ph�t, th�t l� t�c qu�!<enter>- Trong cung c�ng c� chuy�n m�t tr�m sao? T�n Th�i gi�m �� hi�n gi� � ��u?<enter>- H�m! T�n s�c sinh �� �� tr�n l�n <color=yellow>Ph�c Ng�u s�n<color>.<enter>- T�m ng��i l� tr� m� ta th�ch nh�t, n�u ta �em t��ng Ph�t tr� v� C�ng C�ng c� th� cho ta 1 b�nh Thi�n H��ng Ng�c Chi Cao kh�ng?<enter>- Ch� c�n ng��i �em t��ng Kim Ph�t v� ��ng n�i 1 b�nh c� r��ng ta c�ng cho ng��i!",
		[39] = "<npc>- Th�i C�ng C�ng! ��y c� ph�i t��ng Kim Ph�t c�a �ng b� c��p �i?<enter>- A! Kh�ng ng� ng��i c� th� l�y v� cho ta!<enter>- B�n tr� l�m t�t l�m! ��y Thi�n H��ng Ng�c Ch� Cao c�a ng��i.",
		[41] = "<npc>- Xin h�i v� ��i ca c� bi�t tung t�ch c�a 'Tr�n Minh Chi Li�n' kh�ng?<enter>- B�n tr�, ng��i nghe tin n�y t� ��u v�y? Tr��c ��y c� nghe Ti�u ��u H� H�u Ph�c c� m�t s�i d�y chuy�n ��c bi�t, nh�ng kh�ng bi�t l� 'Tr�n Minh Chi Li�n' g� ��.<enter>- Th� b�y gi� H� H�u Ph�c � ��u?<enter>- H�n hi�n �ang chuy�n ti�u � <color=yellow>Thanh Th�nh s�n<color>, kh�ng bi�t l�c n�o m�i v�.",
		[44] = "<npc>- V�a ��ng 1 v�n l��ng. Th�i Ngh� v�n l� v� c�a H� H�u Ph�c, nh�ng do H� H�u Ph�c �am m� t�u s�c, ph� r�y Th�i Ngh�. Cu�i c�ng Th�i Ngh� quy�t ��nh ch�n con ���ng c�a m�nh, Th�i Ngh� quy�t t�m kh� luy�n ��c thu�t, trong 10 n�m ng�n ng�i �� luy�n th�nh......<enter>- Th� c� ta �ang � ��u?<enter>- Th�i Ngh� b�y gi� l� 1 trong Ng� ��i H��ng ch� <color=yellow>Ng� ��c gi�o<color> <color=yellow> M�c Th� H��ng ch�<color>!<enter>- Th� ra l� v�y....Th� t�m bi�t � ��y v�y.<enter>- L�n sau nh� �em nhi�u ti�n qua..",
		[45] = "<npc>- Sao ng��i d�m t� ti�m x�ng v�o ��y?<enter>- M�c H��ng ch� th� l�i! T�i h� m�o mu�i ��n h�i th�m tung t�ch  'Tr�n Minh Chi Li�n'.<enter>- Tr�n Minh Chi Li�n? Ta ch�a t�ng nghe qua m�n n�y.<enter>- Ta nghe..... ch�ng tr��c c�a b� n�i, l�c b� b� �ng ta c� �em theo s�i d�y chuy�n ��.<enter>- H�! Th� ra l� th�! Ta c�ng mu�n bi�t tung t�ch c�a n�, n� � tr�n m�nh ��a con �� b� th�t l�c c�a ta!<enter>- M�c H��ng ch� c�n c� m�t ��a con?<enter>- H�......N�m �� sau khi r�i kh�i t�n ph� b�c �� ta �� mang thai..L�c ��a con ch�a �� tu�i trong m�t l�n chi�n lo�n ta �� th�t l�c n�. Bao n�m tr�i qua c� ngh� ��n chuy�n n�y th� ta..<enter>- Th� ra l� th�......Ta c� th� gi�p b� t�m tung t�ch c�a ��a con g�i.<enter>- N�u ng��i c� th� gi�p ta t�m ���c ��a con th� qu� t�t!<enter>- V�y M�c H��ng ch� c� ��i tin t�c c�a ta. Th�m r�i! Thi�n h� l�n nh� v�y bi�t ��n ��u m� t�m ��a con th�t l�c nhi�u n�m hay l� quay v� g�p �ng gi� gi� �� h�i xem.?",
		[46] = "<npc>- L�o......ti�n sinh.?l�i t�n ti�n r�i!?<enter>- B�n tr�, l�n n�y l�i mu�n h�i g�?<enter>- Ta mu�n bi�t con g�i c�a Tang Chu �ang � ��u? Mu�n bao nhi�u ti�n c� n�i!<enter>- �......C�i n�y......ta kh�ng l�y ti�n.<enter>- �i! V�n l�n c�m �n!<enter>- B�i v� ta c�ng kh�ng bi�t.<enter>- L�o...<enter>- Ta ��a th�i! Ng��i h�y ��n <color=yellow>V� �ang ph�i<color>, kh�ng ch�ng c� ch�t manh m�i.<enter>- C�m �n l�o ti�n sinh!",
		[47] = "<npc>(Tr�n c� h�n �eo s�i d�y chuy�n g� l� qu�??)<enter>- S�i d�y chuy�n n�y huynh t� ��u m� c�?<enter>- S�i d�y chuy�n n�y? Ta c�ng kh�ng r�......S� ph� n�i l�c nh�t ta v� tr�n ng��i �� c� n�<enter>- (��ng l� huynh r�i!_ V�y s�i n�y nh�t ��nh l� Tr�n Minh Chi Li�n r�i!?<enter>- Th� Thi�u hi�p c� t�ng ngh� s� �i t�m m� kh�ng?<enter>- Chuy�n n�y ta tr��c gi� ch�a ngh� t�i, S� ph� hi�n nay Qu�c gia l�m n�n, ch�ng ta nh�ng ng��i t�p v� n�n g�p m�t ph�n s�c l�c.<enter>- Nh�ng c� th� m� ng��i �ang ch� ng��i? Ta t��ng c� th� gi�p huynh t�m l�i m� m�nh.<enter>- Th�t �? Ng��i �� g�p qua m� ta?<enter>- C� l� c� m�t ng��i ��ng th�t l� m� ng��i......ta c�ng kh�ng ch�c l�m, hay l� c�ng ta �i th�m b� ta m�t chuy�n?<enter>- Nh�ng b�y gi� kh�ng ���c! V� �ang ph�i ta hi�n c� m�t t�n ph�n ��, y �� l�y l��c �� qu�n s� c� v�ng Giang Nam ��a cho Kim qu�c! Hi�n V� l�m Trung nguy�n t�t c� ��u truy b�t t�n n�y. Ng�y n�o ch�a l�y l�i Chi�n l��c �� ta �n ng� kh�ng y�n!<enter>- (��y ��u ph�i l� vi�c c�a m�t m�nh ng��i!)<enter>- Chi b�ng th� n�y, ta gi�p ng��i x� l� t�n b�i ho�i c�a V� �ang, sau �� c� th� c�ng ta �i t�m m� ng��i?<enter>- N�u ng��i t�m ���c t�n ph�n �� �� th�t s� l� ph�c l�n c�a V� l�m! Ta ngh� ng��i c�ng n�n g�p ch�t s�c cho ��i T�ng!<enter>- ��ng v�y!?Ch� c�n l�y ���c s�i d�y chuy�n c�a huynh c�i g� c�ng d� n�i?<enter>- Ph�n �� �� t�n <color=yellow>Ti�u V� Th��ng<color>, �ang tr�n tr�n <color=yellow>Th�c C��ng S�n<color>.",
		[49] = "<npc>- A! �� do�t l�i Chi�n l��c ��! Ng��i �� gi�p V� l�m thanh tr� t�n b�i lo�i ��! Th�t s� ��ng ch�c m�ng!<enter>- Ha ha! Chuy�n nh� th�i m�! Ch�ng ta �i t�m m� c�a huynh �i!<enter>- B� ta hi�n �ang � ��u?<enter>- Ch�nh l� M�c Th� Ng� ��c gi�o Tang Chu.<enter>- C�i g�?<enter>- �? Sao v�y?<enter>-  Ng��i b�o ta �i g�p ng��i c�a Ng� ��c gi�o!? Kh�ng bao gi�!<enter>- ?......Kh�ng c�n thay ��i nhanh v�y??<enter>- Nh�ng......b� ta l� m� c�a huynh! D�y chuy�n tr�n c� huynh ch�nh l� l�c b� sinh huynh �� �� l�i<enter>- X�a nay Ch�nh T� b�t ph�n l��ng l�p, ta th� kh�ng c� ng��i m� n�y!<enter>- S�i d�y chuy�n n�y ��a ng��i, n�i v�i b� ta sau n�y s� g�p l�i � tr�n chi�n tr��ng!<enter>- C�ng T� �� quy�t nh�......v�y ta kh�ng l�m phi�n n�a. (Ha ha! Th�t kh�ng ph� c�ng, V� �ang l�i c� nh�n t�i nh� th�??)",
		[50] = "<npc>- Ti�n sinh! �ng bi�t lai l�ch c�a d�y chuy�n n�y?<enter>- V�t n�y......kh�ng ph�i l� 'Tr�n Minh Chi Li�n' trong 'Thi�n Ho�ng Long Kh�' sao?<enter>- V�y cu�i c�ng Long Kh� c� b� m�t g�?<enter>- Ng��i c� bi�t  'Thi�n Ho�ng Long Kh�' t�ng c�ng c� 8 c�i, ���c ch� t�o t�i H�m D��ng. Sau �� T�n Th�y Ho�ng qua ��i n� c�ng m�t t�ch theo. N�u t�p h�p �� 8 m�n s� bi�t ���c 1 b� m�t kinh ng��i.<enter>- M�t b� m�t kinh ng��i? V�y cu�i c�ng l� th� n�o?<enter>- Vi�c n�y...... Ng��i ch� c� t�m �� 8 m�n Long Kh� m�i c� th� bi�t.<enter>- �ng bi�t tung t�ch c�c m�n Long Kh� c�n l�i kh�ng?<enter>- N�u nh� ta bi�t ta c�n c� m�ng tr�n ��i sao? Trong V� l�m g�n ��y s� ng��i ch�t v� m�y m�n �� n�y kh�ng �t......<enter>- L� n�o th�t s� hi�m nguy ��n v�y sao?<enter>- B�n tr� nghe n�i ng��i r�t c� ch�? Tin t�c Long Kh� h�u nh� ai c�ng bi�t ch�t �t......<enter>- Nh�ng ph�i n�p ti�n ��ng kh�ng?<enter>- Kh�! Kh�! Ch� l� �� u�ng r��u th�i m�! Tin t�c kh�ng ��ng ta kh�ng l�y ti�n.<enter>- Kim  qu�c �ang ph�t sinh kh�ng �t chuy�n, h�nh nh� c� li�n quan ��n 'B�n Long C�i'!<enter>- Kim qu�c?.....ta s� ��n <color=yellow>Bi�n Kinh<color> t�m ch�t manh m�i! C�m �n ti�n sinh!",
		[51] = "<npc>- G�n ��y Kim binh kh�ng bi�t �ang l�m g�, c� ng�y tri�u t�p binh m� trong th�nh, h�nh nh� �ang t�m th� g�......<enter>- C� bi�t b�n ta �ang t�m g� �?<enter>- Chuy�n c�a ng��i Kim ta n�o d�m h�i! N�u nhi�u chuy�n s� b� �i t� n�a n�m, ta c�n ph�i lo vi�c nh� n�a!<enter>- Th�i nay ch� c� nh�ng k� ch�u lu�n c�i Kim qu�c m�i ���c s�ng an nh�n, ng��i h�y nh�n <color=yellow>Tr�n Tam B�o<color> xem, h�n ���c bao nhi�u ng��i ng��ng m�.<enter>- Th� �......xem ra <color=yellow>Tr�n Tam B�o<color> ti�p x�c v�i ng��i Kim kh�ng �t.",
		[52] = "<npc>- Ai......<enter>- V� ��i ca n�y sao l�i � ��y than ng�n th� d�i?<enter>- Xem ra t�nh m�ng c� gia ��nh m�t trong tay ta......<enter>- Chuy�n g� m� nghi�m tr�ng th�?<enter>- �� ��n ��i nh�n trong tri�u mu�n m�t b�nh Lam Hoa, ai ng� ta nh� ng��i v�n chuy�n t� C�nh ��c tr�n b� gi�c c��p �i!<enter>- L�n nay e r�ng t�nh m�ng c� gia ��nh kh� b�o to�n......<enter>- Xem ra l�n n�y t�nh m�ng c� nh� �ng th�t s� mong manh! Kh�ng sao ��u, ta s� gi�p �ng.<enter>- Th�t �......?<enter>- ���ng nhi�n, c�i b�nh �ng n�i b� c��p � ��u?<enter>- C� m�t t�n ��o t�c t�n <color=yellow>L�c Phi<color=> � g�n <color=yellow>Nh�n ��ng S�n<color>......<enter>- ���c r�i! H�y ch� � ��y ta gi�p �ng l�y l�i!",
		[54] = "<npc>- ��y l� b�nh Lam Hoa �ng ��t mua ph�i kh�ng?Ta �� �em v� r�i.<enter>- A! ��ng l� b�nh �� ��n ��i nh�n th�ch! Ta th�t kh�ng d�m tin v�o m�t m�nh!<enter>- Ng��i �� c�u t�nh m�ng c� nh� ta, kh�ng bi�t ��n �n ng��i th� n�o?<enter>- Ch� l� chuy�n nh�! Ta ch� mu�n bi�t g�n ��y �� ��n ��i nh�n �ang l�m g�?<enter>- �� ��n ��i nh�n g�n ��y nh�n ���c 1 b�o v�t, nh�ng h�nh nh� �ng ta kh�ng mu�n ai bi�t chuy�n n�y.<enter>- A? Ch�ng l� �� l� 'B�n Long C�i'? V�y �� ��n ��i nh�n th��ng �i ��u?<enter>- �ng ta g�n ��y hay �i <color=yellow>Thi�t Th�p<color>, ng��i ��n �� c� th� g�p<enter>- ���c! C�m �n ti�n sinh!",
		[56] = "<npc>- Ng��i t�m Ho�n Nhan H�ng Khang l�m g�?<enter>- V� mu�n m�t m�n ��.<enter>- Ha ha ha...... L�n ��u ti�n th�y m�t ng��i nh� ng��i.<enter>- T�i sao?<enter>- D�m tr��c m�t Qu�c s� ��i Kim ��i v�t, tr�n th� gian n�y e l� ch� c� m�nh ng��i.<enter>- Nh�ng ta th�ch t�nh c�ch c�a ng��i,  ng��i ��n <color=yellow>Long M�n Tr�n<color> t�m mu�i mu�i c�a ta <color=yellow> �oan M�c Thanh<color>, ch� c� c� ta m�i bi�t Ho�n Nhan H�ng Khang � ��u.",
		[57] = "<npc>- C� l� T� H� s� c�a Thi�n Nh�n Gi�o mu�i mu�i c�a �oan M�c Du�?<enter>- H�, ch�c l� anh ta b�o ng��i ��n ph�i kh�ng? Ng��i v� n�i v�i huynh �y, ta kh�ng bao gi� tr� v�!<enter>- ......<enter>- Tuy anh c� b�o ta ��n, nh�ng y kh�ng c� b�o c� quay v�.<enter>- V�y ng��i ��n ��y l�m g�?<enter>- Ta mu�n bi�t tung t�ch c�a Ho�n Nhan H�ng Khang.<enter>- Ng��i t�m H�ng Khang �� l�m g�?<enter>- V� trong tay h�n c� m�n �� ta c�n.<enter>- H�? Vi�c �� c�n ph�i xem ng��i c� kh� n�ng l�y m�n �� trong tay h�n kh�ng.<enter>- Ta ph�i l�m th� n�o m�i c� th� g�p y?<enter>- Vi�c n�y......��  ta ngh� xem,  T��ng l�nh Li�u ��nh n��c T�ng �ang ch�ng l�i ��i Kim ta, n�u ng��i c� th� ��nh th�ng h�n c� l� ta s� cho ng��i g�p H�ng Khang.<enter>- T�i sao ta ph�i nghe l�i c�?<enter>- Ha ha! Ch� s� tr�n th� gian n�y ngo�i ta ra kh�ng c� ai bi�t h�nh tung c�a H�ng Khang.<enter>- V�y ���c, cho ta bi�t Li�u ��nh �ang � ��u?<enter>- T�n kh�ng bi�t tr�i cao ��t r�ng �ang � <color=yellow> Linh C�c ��ng<color>, ng��i ��n l�y th� c�p h�n v� cho ta.<enter>- ... ...",
		[59] = "<npc>- (n�m ��u Li�u ��nh xu�ng ��t)<enter>- ��y l� ��u c�a Li�u ��nh.<enter>- R�t t�t! Qu� nhi�n kh�ng ph� l�ng ta.<enter>- ��ng nhi�u l�i! Ho�n Nhan H�ng Khang hi�n �ang � ��u?<enter>- H�ng Khang �ang b�n, t�m th�i kh�ng th� g�p h�n ���c.<enter>- Ng��i gi�n v�i ta h�?<enter>- Ha ha...... Ng��i t��ng b�n c� n��ng l� k� hai l�i sao? Th�t ra H�ng Khang �� s�m bi�t ng��i mu�n g�.<enter>- V�y l� � g�?<enter>- Y bi�t ���c ng��i l� ng��i d�m b�n m�ng v� ��i Kim, cho n�n d�n ta t�ng ng��i m�n �� n�y.<enter>- Nh� l�y! Sau n�y l�m vi�c cho ��i Kim s� kh�ng thi�t th�i ��u. Ha! Ha! Ha!<enter>- .....�.",
	},
	Msg_Player = {
		[0] = "B�n ch�a nh�n nhi�m v� T�n Th�, h�y ��n g�p Long Ng� �� ti�p nh�n nhi�m v�. Ph�n th��ng nhi�m v�: <color=orange>b� trang b� Kim Phong, l��ng l�n �i�m kinh nghi�m",
		[1] = "Long Ng� b�o b�n ra ngo�i th�n ��nh qu�i �� l�y 5 mi�ng th�t t��i v� mang ��n g�p V� S� t�m hi�u v� th� gi�i v� l�m!",
		[2] = "Quay v� g�p Long ng� �� h�i th�m tin t�c c�a b�o v�t Thi�n Ho�ng Long Kh� v� ��nh Qu�c Ho�ng Kim!",
		[3] = "Long Ng� y�u c�u b�n s� d�ng C�m nang ��ng h�nh �� nh�n ph�n th��ng h� tr� c�p 20!",
		[4] = "Quay v� g�p Long ng�, c� th� c� v�i th�ng tin v� b�o v�t Thi�n Ho�ng Long Kh� v� ��nh Qu�c Ho�ng Kim!",
		[5] = "<color=yellow><Ch��ng I - B� M�t T�m Long H�i><color> ��n th�nh ��i L� t�m g�p M�c S�u (183,198) c� th� tra ���c �t th�ng tin v� 2 m�n b�o v�t t� c� ta!",
		[6] = "M�c S�u nghi ng� b�n th�n b�n, c� ta h�n b�n ph�n cao th�p t�i ngo�i th�nh ��i L� (204,186) (c� th� t� ��i)",
		[7] = "M�c S�u b� ��nh b�i d��i tay c�a b�n, c� ta h�n b�n v� th�nh ��i l� (183,198) n�i chuy�n!",
		[8] = "M�c S�u b�o b�n ��n Th�nh �� t�m g�p Ti�u C�ng T� (403,319), ng��i n�y �ang n�m gi� 1 ph�n c�a Thi�n Ho�ng Long Kh�!",
		[9] = "C�ng T� Ti�u b�o b�n �i t�m thu�c h� c�a �ng l� Gi�i L�u Phong � D��c v��ng ��ng t�ng 1 (192,207) �� �o�t l�i Ho�ng Kim L�n (c� th� t� ��i)!",
		[10] = "L�y ���c Ho�ng Kim L�n trong tay c�a Gi�i L�u Phong, b�n c� th� quay v� ��i L� g�p M�c S�u (183,198)!",
		[11] = "Nh�n ���c l�i �� ngh� c�a M�c S�u, h�y mau ��n D��ng Ch�u g�p H� V� Th� (212,195), �i�u tra tin t�c v� C�u Thi�n Chi Ch�.",
		[12] = "Theo L�i c�a H� V� Th�, h�y l�n �i�m Th��ng ��ng t�ng 3 ��nh T� �ao Hi�p (194,190) �� �o�t l�i C�u Thi�n Chi Ch� (c� th� t� ��i)",
		[13] = "Mang C�u Thi�n Chi Ch� l�y ���c t� tay c�a T� �ao Hi�p v� ��i L� giao cho M�c S�u!",
		[14] = "M�c S�u �� b� b�t c�c, h�y ��n L�m An t�m g�p M�nh Ph�m (203,187), nh� �ng �y gi�i quy�t m�i chuy�n!",
		[15] = "M�nh Ph�m y�u c�u l�n H��ng Th�y ��ng l�y th� c�p c�a O�n ��c (264,207) r�i �ng ta m�i ch�u gi�p �� (c� th� t� ��i)",
		[16] = "Sau khi h� th� ���c O�n ��c, h�y quay v� L�m An t�m M�nh Ph�m (203,187)",
		[17] = "Nh�n ���c tin b�o c�a M�nh Ph�m, l�p t�c l�n ���ng ��n Nha M�n T��ng D��ng h� th� Th�n B� Nam Nh�n (211,195) (c� th� t� ��i)",
		[18] = "Th�n B� Nam Nh�n sau khi b� ��nh b�i, �ng ta h�n b�n ��n ch� M�c S�u � ��i L� �� n�i chuy�n!",
		[19] = "H�a gi�i �n khu�t gi� Nam Cung Phi V�n v� M�c S�u, b�n tr� v� g�p Long Ng�, t�m hi�u v� c�u chuy�n L�m Uy�n Nhai m� M�c S�u �� nh�c ��n!",
		[20] = "<color=yellow><Ch��ng II - C�u chuy�n L�m Uy�n Nhai><color> Long Ng� gi�i thi�u b�n ��n th�nh Bi�n Kinh t�m g�p Ph� Nam B�ng (212,197), b�t ��u m�t ch��ng m�i!",
		[21] = "Theo l�i �� ngh� c�a Ph� Nam B�ng, b�n ��n La Ti�u S�n l�y th� c�p c�a t�n ph�n qu�c Ninh T��ng Qu�n (254,172) (c� th� t� ��i)",
		[22] = "H� th� ���c Ninh T��ng Qu�n, b�n c�p t�c quay v� Bi�n Kinh g�p Ph� Nam B�ng (212,197)",
		[23] = "Theo l�i �� ngh� c�a Ph� Nam B�ng, b�n nhanh ch�ng ��n Kho�i Ho�t L�m h� th� 1 trong 3 cao th� giang h� L�u Thi�n T��ng (201,199) (c� th� t� ��i)",
		[24] = "H� th� ���c t�n t� x�ng �� nh�t kho�i th� L�u Thi�n T��ng, b�n nhanh ch�ng quay v� Bi�n Kinh b�o c�o Ph� Nam B�ng (212,197)",
		[25] = "Theo l�i gi�i thi�u c�a Ph� Nam B�ng, ��n Th�y Y�n M�n g�p L� Thu Th�y (43,84), c� �y s� cho b�n bi�t b��c ti�p theo ph�i l�m g�.",
		[26] = "�� ch�ng t� b�n l�nh v�i L� Thu Th�y, b�n nhanh ch�n l�n ���ng ��n Kinh Ho�ng ��ng h� th� T� T� L�c (181,214) v� l�y l�i chi�n gi�p (c� th� t� ��i)",
		[27] = "H� th� ���c t�n t��ng qu�n ph�n qu�c T� T� L�c �o�t ���c b�o v�t B�ch Long T�c, b�n l�p t�c tr� v� Th�y Y�n M�n g�p L� Thu Th�y (43,84)",
		[28] = "C�ng vi�c c�a L� Thuy Th�y �� t��m t�t, b�n quay v� Bi�n Kinh g�p Ph� Nam B�ng (212,197) �� t�m hi�u th�ng tin ti�p theo!",
		[29] = "��n Thi�n V��ng Bang g�p H�n Giang ��c �i�u T�u (205,199) �� t�m hi�u v� b�o v�t Chi�n Th��ng Long �o�n, m�t b�o v�t c�a Thi�n V��ng Bang!",
		[30] = "H�n Giang ��c �i�u T�u h�n b�n t�i M� Cung ��ng ��nh H� (199,206), �ng ta mu�n ki�m tra b�n l�nh c�a b�n (c� th� t� ��i)",
		[31] = "L�y ���c Chi�n th��ng Long �o�n t� tay c�a H�n l�o ti�n b�i, quay v� Bi�n Kinh b�o c�o v�i Ph� Nam B�ng (212,197)",
		[32] = "V� k� ho�ch L�m Uy�n Nhai, b�n ph�i v�t v� l�n Thi�u L�m T� g�p ��i S� Kh�ng T�ch (221, 177) m�t chuy�n!",
		[33] = "��i S� Kh�ng T�ch mu�n th� s�c c�a b�n, h�n b�n t�i H�u s�n Thi�u L�m T� (218/166) (c� th� t� ��i)",
		[34] = "B�n mang hai m�n b�o kh� c�a Thi�u L�m T� v� Bi�n Kinh G�p Ph� Nam B�ng (212,197)",
		[35] = "M�i chuy�n b�n ch� Ph� Nam B�ng �� s�p x�p �n th�a, Ph� Nam B�ng b�o b�n v� g�p Long Ng�!",
		[36] = "<color=yellow><Ch��ng III - Long Kh� Chi H�a><color> B� v��ng v�o v�ng xo�y c�a b�o v�t Thi�n Ho�ng Long Kh�, b�n quy�t ��nh ��n Chu Ti�n Tr�n t�m V�n Nhi (215,198)",
		[37] = "�� l�y th�ng tin t� ch� V�n Nhi b�n bu�c ph�i ��n L�m An t�m Th�i C�ng C�ng (203,200) l�y Thi�n H��ng Ng�c Ch� Cao!",
		[38] = "�� l�y Thi�n H��ng Ng�c Ch� Cao t� tay c�a Th�i C�ng C�ng b�n ph�i gi�p �ng �y l�n ch� ti�u th�i gi�m Ti�u K� Nhi � Ph�c Ng�u S�n ��ng (226,205) �o�t l�i Kim Ph�t (c� th� t� ��i)",
		[39] = "Mang Kim Ph�t l�y t� tay c�a Ti�u K� Nhi v� L�m An trao ��i v�i Th�i C�ng C�ng (203,200)",
		[40] = "L�y ���c Thi�n H��ng Ng�c Ch� Cao ch� Th�i C�ng C�ng, b�n l�p t�c mang v� Chu Ti�n Tr�n g�p V�n Nhi (215,198) ��i l�y th�ng tin!",
		[41] = "L�y ���c manh m�i t� V�n Nhi, b�n v�i v� l�n ���ng ��n D��ng Ch�u t�m Ti�u S� (199,194 )",
		[42] = "Ti�u S� cho bi�t, H� H�u Ph�c hi�n �ang � Thanh Th�nh S�n (338,246) h�n ta �ang gi� Tr�n Minh Chi Li�n (c� th� t� ��i)",
		[43] = "Kh�ng bi�t Th�i Ngh� v� c�a H� H�u Ph�c l� ai, b�n ch� c�n c�ch ��n Chu Ti�n Tr�n t�m V�n Nhi (215,198) nh� v� c� �y!",
		[44] = "V�n Nhi b�o b�n ��n Long Tuy�n Th�n g�p Ph� L�i Th� (199,203), �ng ta s� n�i cho b�n bi�t Th�i Ngh� l� ai! (khi �i nh� �em theo 1 v�n l��ng)",
		[45] = "Th� ra Th�i Ngh� l� 1 trong ng� ��i H��ng ch� c�a Ng� ��c gi�o, b�n mau ch�ng l�n ���ng ��n M�c Th� Tr�i c�a Ng� ��c Gi�o (186, 195) g�p M�c Th� H��ng Ch�!",
		[46] = "B�n quay v� Long Tuy�n Th�n nh� Ph� L�i Th� (199,203) �� t�m tung t�ch ��a con th�t l�c c�a M�c Th� H��ng Ch�",
		[47] = "Theo l�i c�a Ph� L�i Th�, b�n ��n V� �ang Ph�i v�o Ph� M�u �i�n g�p ��o Th�ch M�n (203, 194) �� d� la tin t�c!",
		[48] = "�� l�y ���c s�i d�y chuy�n c�a ��o Th�ch M�n, b�n �� nh�n l�i ��n Th�c C��ng S�n lo�i tr� t�n ph�n �� Ti�u V� Th��ng (243,200) (c� th� t� ��i)",
		[49] = "L�y ���c ��a �� chi�n l��c trung nguy�n, b�n quay l�i trao ��i v�i ��o Th�ch M�n � V� �ang Ph�i (203, 194)",
		[50] = "L�y ���c Tr�n Minh Chi Li�n t� tay c�a ��o Th�ch M�n, do v� �ng ta kh�ng nh�n m� ru�t c�a m�nh n�n b�n quay v� Long Tuy�n Th�n t�m Ph� L�i Th� (199,203)",
		[51] = "Ph� L�i Th� n�i Kim qu�c c� li�n quan ��n B�n Long C�i, b�n quy�t ��nh l�n th�nh Bi�n Kinh t�m g�p Nh� Ng�c (210,196)",
		[52] = "Nghe Nh� Ng�c gi�i thi�u, b�n nhanh ch�n ��n g�p Tr�n Tam B�o � Bi�n Kinh (219,187)",
		[53] = "B�n nh�n l�i Tr�n Tam B�o ��n Nh�n ��ng S�n ti�u di�t ��o t�c L�c Phi (74,191), l�y l�i b�nh Lam Hoa (c� th� t� ��i)",
		[54] = "L�y ���c Thi�n Hoa S�, b�n mang v� Bi�n Kinh giao cho Tr�n Tam B�o (219,187)",
		[55] = "Nghe Tr�n Tam B�o n�i, b�n l�p t�c v�o Thi�t Th�p Bi�n Kinh t�ng 3 h� th� t��ng Kim �� �an (211,189) (c� th� t� ��i)",
		[56] = "B�n Long C�i �� b� Qu�c s� ��i Kim Ho�n Nhan H�ng Khang c��p �i, b�n ch� c� th� ��n Thi�n Nh�n Gi�o t�ng 3 g�p �o�n M�c Du� (225,199) h�i th�m tin t�c",
		[57] = "�o�n M�c Du� gi�i thi�u b�n v�i mu�i mu�i c�a y l� �o�n M�c Thanh � Long M�n Tr�n (251,280), ch� c� c� �y m�i bi�t tung t�ch c�a Qu�c s� ��i Kim",
		[58] = "�� c� tung t�ch c�a Ho�n Nhan H�ng Khang, �o�n M�c Thanh y�u c�u b�n h� th� anh h�ng kh�ng kim Li�u ��nh t�i Linh C�c ��ng (193,196) (c� th� t� ��i)",
		[59] = "Nghi ng� v�o l�i n�i tr��c l�c ch�t c�a Li�u ��nh, b�n mang th� c�p c�a �ng �y v� Long M�n Tr�n t�m �o�n M�c Thanh (251,280)",
		[60] = "L�y ���c b�o v�t t� ng��i Kim, tuy nhi�n b�n nh�n ra nhi�u �i�u, nh�n th�y nhi�u sai l�m, ��ng sau Thi�n Ho�ng Long Kh� c�n nhi�u �n khu�t, b�n quy�t quay v� g�p Long Ng�!",
		[61] = "<color=yellow><Ch��ng IV - Ti�u Ng�o Giang H�><color> Long Ng� mu�n t�ng b�n m�t m�n b�o v�t ��nh Qu�c Ho�ng Kim, nh�ng tr��c ti�n �ng �y y�u c�u b�n ho�n th�nh m�t nhi�m v� D� T�u b�t k�!<color>",
		[62] = "Ti�p theo Long Ng� y�u c�u b�n tham gia ho�n th�nh m�t l�n V��t �i (Th�ch th�c th�i gian) � ch� c�a NPC Nhi�p Th� Tr�n",
		[63] = "Long Ng� kh� h�i l�ng v� b�n, nhi�m v� ti�p theo �ng �y y�u c�u b�n ho�n th�nh m�t l�n v��t �i Vi�m �� ch� NPC B�nh B�nh C� N��ng � Bi�n Kinh",
		[64] = "V� ch�a �� kinh nghi�m b�n t�u giang h� n�n Long Ng� y�u c�u b�n ho�n th�nh 1 l�n Phong L�ng ��, sang ��n b� b�c, c� th� ��n g�p Xa Phu �� truy�n t�ng ��n Phong L�ng ��",
		[65] = "Th� th�ch ti�p theo Long Ng� y�u c�u b�n tham gia m�t l�n ho�t ��ng Phong K�, ch� NPC D�ch Quan",
		[66] = "�� ki�m tra k� n�ng c�a b�n tr��c khi b��c v�o cu�c chi�n, Long Ng� y�u c�u b�n ho�n th�nh m�t l�n nhi�m v� s�t th� ch� NPC Nhi�p Th� Tr�n",
		[67] = "Nh�n th�y kh� n�ng s�t th� c�a b�n kh� t�t, tham gia b�n t�u �� l�u Long Ng� y�u c�u b�n ho�n th�nh m�t tr�n T�ng Kim, c� th� s� d�ng Th�n H�nh Ph� �� truy�n t�ng ��n b�n ��",
		[68] = "Nh� v�y �� ��t �� ho�n to�n c�c kh�o nghi�m c�a Long Ng�, hi�n b�n c� th� quay v� g�p Long Ng� th�nh gi�o",
	},
	Award = {
		[1] = {bilLevel = 10, bilExp = 6000, bilItem = {}},
		[7] = {bilLevel = 10, bilExp = 6000, bilItem = {{0, 0, "Kim Phong Thi�n L� Th�o Th��ng Phi", 184, 0}}},
		[10] = {bilLevel = 10, bilExp = 6000, bilItem = {}},
		[13] = {bilLevel = 10, bilExp = 10000, bilItem = {{0, 0, "Kim Phong Tr�c Li�n Quang", 179, 0}}},
		[16] = {bilLevel = 10, bilExp = 10000, bilItem = {}},
		[17] = {bilLevel = 10, bilExp = 10000, bilItem = {}},
		[18] = {bilLevel = 10, bilExp = 10000, bilItem = {{0, 0, "Kim Phong K� L�n Huy�t", 178, 0}}},
		[22] = {bilLevel = 10, bilExp = 10000, bilItem = {}},
		[24] = {bilLevel = 10, bilExp = 20000, bilItem = {}},
		[27] = {bilLevel = 10, bilExp = 20000, bilItem = {{0, 0, "Kim Phong Thanh D��ng Kh�i", 177, 0}}},
		[31] = {bilLevel = 10, bilExp = 20000, bilItem = {}},
		[34] = {bilLevel = 10, bilExp = 20000, bilItem = {}},
		[40] = {bilLevel = 10, bilExp = 20000, bilItem = {{0, 0, "Kim Phong Lan ��nh Ng�c", 183, 0}}},
		[42] = {bilLevel = 10, bilExp = 25000, bilItem = {}},
		[49] = {bilLevel = 10, bilExp = 25000, bilItem = {}},
		[54] = {bilLevel = 10, bilExp = 25000, bilItem = {{0, 0, "Kim Phong C�ng C�n Tam Th�n", 180, 0}}},
		[55] = {bilLevel = 10, bilExp = 25000, bilItem = {}},
		[59] = {bilLevel = 10, bilExp = 50000, bilItem = {}},
		[61] = {bilLevel = 10, bilExp = 100000, bilItem = {{0, 0, "Kim Phong �o�t H�n Ng�c ��i", 181, 0}}},
		[62] = {bilLevel = 10, bilExp = 200000, bilItem = {}},
		[63] = {bilLevel = 10, bilExp = 400000, bilItem = {}},
		[64] = {bilLevel = 10, bilExp = 800000, bilItem = {{0, 0, "Kim Phong H�u Ngh� d�n cung", 182, 0}}},
		[65] = {bilLevel = 10, bilExp = 1200000, bilItem = {}},
		[66] = {bilLevel = 10, bilExp = 1600000, bilItem = {}},
		[67] = {bilLevel = 10, bilExp = 2000000, bilItem = {{0, 0, "Kim Phong ��ng T��c Xu�n Th�m", 185, 0}}},
		[68] = {bilLevel = 10, bilExp = 3000000, bilItem = {}},
	},
}

function bilNvTanThu:Npc_LongNgu()
	local bil_1 = GetTask(5905)
	if bil.False(self.Msg_LongNgu[bil_1]) then
		if bil.False(self.Msg_LongNgu[bil_1-1]) then
			return CreateNewSayEx(unpack(self.Msg_LongNgu[9999]))
		else
			return CreateNewSayEx(self.Msg_LongNgu[bil_1-1], {{"V�n b�i �ang ti�n h�nh nhi�m v�", bil.OnCancel}})
		end
	else
		return CreateNewSayEx(self.Msg_LongNgu[bil_1], {{"��ng � ti�p nh�n nhi�m v�!", self.NextTask}, {"K�t th�c ��i tho�i", bil.OnCancel}})
	end
end

function bilNvTanThu:Npc_MacSau()
	local bil_1 = GetTask(5905)
	if bil.False(self.Msg_MacSau[bil_1]) then
		if bil.False(self.Msg_MacSau[bil_1-1]) then
			return CreateNewSayEx(unpack(self.Msg_MacSau[9999]))
		else
			return CreateNewSayEx(self.Msg_MacSau[bil_1-1], {{"T�i h� bi�t r�i!", bil.OnCancel}})
		end
	else
		return CreateNewSayEx(self.Msg_MacSau[bil_1], {{"T�i h� bi�t s� ph�i l�m g�!", self.NextTask}, {"K�t th�c ��i tho�i", bil.OnCancel}})
	end
end

function bilNvTanThu:Npc_PhoNamBang()
	local bil_1 = GetTask(5905)
	if bil.False(self.Msg_PhoNamBang[bil_1]) then
		if bil.False(self.Msg_PhoNamBang[bil_1-1]) then
			return CreateNewSayEx(unpack(self.Msg_PhoNamBang[9999]))
		else
			return CreateNewSayEx(self.Msg_PhoNamBang[bil_1-1], {{"T�i h� bi�t r�i!", bil.OnCancel}})
		end
	else
		return CreateNewSayEx(self.Msg_PhoNamBang[bil_1], {{"T�i h� bi�t s� ph�i l�m g�!", self.NextTask}, {"K�t th�c ��i tho�i", bil.OnCancel}})
	end
end

function bilNvTanThu:Npc_VanNhi()
	local bil_1 = GetTask(5905)
	if bil.False(self.Msg_VanNhi[bil_1]) then
		if bil.False(self.Msg_VanNhi[bil_1-1]) then
			return CreateNewSayEx(unpack(self.Msg_VanNhi[9999]))
		else
			return CreateNewSayEx(self.Msg_VanNhi[bil_1-1], {{"T�i h� bi�t r�i!", bil.OnCancel}})
		end
	else
		return CreateNewSayEx(self.Msg_VanNhi[bil_1], {{"T�i h� bi�t s� ph�i l�m g�!", self.NextTask}, {"K�t th�c ��i tho�i", bil.OnCancel}})
	end
end

function bilNvTanThu:Npc_Msg(bil_In_tb_1, bil_In_2)
	local bil_1, bil_2 = GetTask(5905), 0
	for bil_l_1 = 1, getn(bil_In_tb_1) do
		if bil_In_tb_1[bil_l_1] == bil_1 then
			bil_2 = bil_2 + 1
		end
	end
	if bil_2 == 0 then
		return CreateNewSayEx("<npc>"..bil_In_2, {{"K�t th�c ��i tho�i!", bil.OnCancel}})
	end
	if bil.False(self.Msg_Npc[bil_1]) then
		return CreateNewSayEx("<npc>"..bil_In_2, {{"K�t th�c ��i tho�i!", bil.OnCancel}})
	else
		return CreateNewSayEx(self.Msg_Npc[bil_1], {{"T�i h� bi�t s� ph�i l�m g�!", self.NextTask}, {"K�t th�c ��i tho�i", bil.OnCancel}})
	end
end

function bilNvTanThu:NextTask()
	if bilAllowNvTanThu ~= 1 then return end
	if bil.True(bilNvTanThu.Award[GetTask(5905)]) then
		if getn(bilNvTanThu.Award[GetTask(5905)].bilItem) >= 1 then
			if CountFreeRoomByWH(2,3) < 1 then
				return Msg2Player(bil.C(10, "<bclr=red>B�n ph�i �� tr�ng h�nh trang 2x3 � tr�ng m�i c� th� ho�n th�nh nhi�m v� l�n n�y!<bclr>"))
			end
		end
	end
	bilNvTanThu:GetAward_MissionComplete(GetTask(5905))
	local bil_1 = GetTask(5905) + 1
	SetTask(5905, bil_1)
	if bil.False(bilNvTanThu.Msg_Player[bil_1]) then
		return
	else
		Msg2Player("<bclr=white><color=red>[Nhi�m v� t�n th�]<color><bclr>  <color=green>"..bil_1.."/"..getn(bilNvTanThu.Msg_Player))
		Msg2Player(bil.C(10, bilNvTanThu.Msg_Player[bil_1]))
	end
end

function bilNvTanThu:GetAward_MissionComplete(bil_In_1)
	local bil_1 = GetLevel()
	if bil.True(self.Award[bil_In_1]) then
		local bil_2 = self.Award[bil_In_1]
		if bil_1 < bil_2.bilLevel then
			while GetLevel() < bil_2.bilLevel do
				AddOwnExp(bil_2.bilExp)
			end
		else
			tl_addPlayerExp(bil_2.bilExp)
		end
		local bil_3_1, bil_3_2, bil_3_3 = getn(bil_2.bilItem), 0, ""
		if bil_3_1 >= 1 then
			bil_3_3 = " v� b�o v�t "
			for bil_l_1 = 1, bil_3_1 do
				bil_3_3 = bil_3_3..bil_2.bilItem[bil_l_1][3]
				if bil_2.bilItem[bil_l_1][2] == 0 then
					bil_3_2 = AddGoldItem(0, bil_2.bilItem[bil_l_1][4])
				else
					bil_3_2 = AddItem(unpack(bil_2.bilItem[bil_l_1][4]))
				end
				if bil_2.bilItem[bil_l_1][1] ~= 0 then
					ITEM_SetExpiredTime(bil_3_2, FormatTime2Date(bil_2.bilItem[bil_l_1][1] * 24 * 60 *60 + GetCurServerTime()))
					SyncItem(bil_3_2)
				end
				if bil_2.bilItem[bil_l_1][5] ~= 0 then
					SetItemBindState(bil_3_2, bil_2.bilItem[bil_l_1][5])
				end
			end
		end
		-- Msg2SubWorld(bil.C(9, GetName().." �� ho�n th�nh Nv T�n Th� ("..bil_In_1..") nh�n ���c m�t l��ng �i�m Exp c�c l�n"..bil_3_3..", Uy ch�n Thi�n h�!"))
		AddSkillState( 509, 1, 0, 500);
	end
end

function bilNvTanThu:GetTask()
	if bilAllowNvTanThu ~= 1 then return end
	local bil_1 = GetTask(5905)
	if bil.False(bilNvTanThu.Msg_Player[bil_1]) then
		return
	else
		Msg2Player("<bclr=white><color=red>[Nhi�m v� t�n th�]<color><bclr>  <color=green>"..bil_1.."/"..getn(bilNvTanThu.Msg_Player))
		Msg2Player(bil.C(10, bilNvTanThu.Msg_Player[bil_1]))
	end
end

function bilNvTanThu:CompleteMissionWithTeam(bil_In_1, bil_In_2)
	local bil_1 = GetTeamSize()
	local bil_PlOld = PlayerIndex
	if bil_1 > 1 then
		for bil_l_1 = 1, bil_1 do
			PlayerIndex = GetTeamMember(bil_l_1)
			if GetTask(5905) == bil_In_1 then
				Msg2Player(bil.C(1, bil_In_2))
				Talk(1, "", bil_In_2)
				bilNvTanThu:NextTask()
			end
		end
		PlayerIndex = bil_PlOld
		return
	end
	if GetTask(5905) == bil_In_1 then
		Msg2Player(bil.C(1, bil_In_2))
		Talk(1, "", bil_In_2)
		bilNvTanThu:NextTask()
	end
end

/*[[ H� th�ng nhi�m v� t�n th�

	00 - ��n g�p long ng� �� ti�p nh�n nhi�m v�
	01 - �em theo 5 mi�n th�t t��i v� ��n g�p v� s� � ngo�i th�n, nghe �ng ta n�i v� th� gi�i v� l�m, quay v� g�p long ng�
	02 - m� c�m nang ��ng h�nh v� nh�n ph�n th��ng h� tr� c�p 20, quay l�i g�p long ng�
	03__[B� M�t T�m Long H�i]__ long ng� gi�i thi�u ��n g�p l� m�c s�u � ��i l� (182,198)
	04 - l� m�c s�u ph�t hi�n trong th� c� ��c v� h�n ra ngo�i th�nh ��i l� 204,186 t� th�
	05 - h� g�c l� m�c s�u quay v� th�nh g�p l� m�c s�u, h�a ra l� th� kh� n�ng c�a b�n th�n, c� ta gi�i thi�u s� qua v� b� thi�n ho�ng long kh� c�a t�n th�y ho�ng v� ��nh qu�c
	06 - ��n th�nh �� g�p c�ng t� ti�u 403,319, h�nh nh� �ng ta �ang gi� ho�ng kim l�n 1 ph�n c�a b� thi�n ho�ng long kh�, v� th� �ng ta m�i b� giang h� truy s�t
	07 - ��n d��c v��ng ��ng t�ng 1 ��nh gi�i l�u phong 192,207 thu�c h� c�a c�ng t� ti�u �� �o�t l�i ho�ng kim l�n
	08 - quay v� ��a ho�ng kim l�n cho l� m�c s�u
	09 - ��n t�m ng��i ph� tr�ch m�ng l��i t�nh b�o � d��ng ch�u h� v� th� 212,195, h�nh nh� �ang gi�u th�ng tin v� thi�n ho�ng long kh�
	10 - ��n �i�m th��ng ��ng t�ng 3 ��nh b�i t� �ao hi�p 194,190 l�y c�u hi�n chi ch�
	11 - v� g�p m�c s�o nhi �� ho�n th�nh nhi�m v� v� ���c bi�t m�c s�u �� b� b�t c�c
	12 - ��n l�m an g�p m�nh ph�m 203,187 ch� c� �ng m�i gi�i quy�t ���c m�i chuy�n
	13 - ��n h��ng th�y ��ng h� g�c o�n ��c 264,207, quay v� g�p m�nh ph�m
	14 - m�nh ph�m ph�t hi�n m�c s�u b� b�t c�c c� li�n quan ��n thi�n ho�ng long kh�, ��n nha m�n t��ng d��ng ��nh th�n b� nam nh�n 211,195
	15 - quay v� ��i l� g�p m�c s�u, h�a ra th�n b� nam nh�n l� ch� nh�n c�a t�m long h�i
	16 - quay v� g�p long ng� ho�n th�nh nhi�m v�
	17__[C�u Chuy�n L�m Uy�n Nhai]__ ��n bi�n kinh g�p ph� nam b�ng 212,197
	18 - ��n la ti�u s�n ��nh t�n ph�n qu�c ninh t��ng qu�n 254,172 
	19 - quay v� g�p ph� nam b�ng, �ng ta kh� b�t ng� v� kh� n�ng c�a b�n, �ng cho bi�t trong giang h� c� 3 k� kh�ng th� gi�t trong �� c� l�u thi�n t��ng
	20 - �i kho�i ho�t l�m ��nh b�i l�u thi�n t��ng 201,199
	21 - quay v� g�p ph� nam b�ng ho�n th�nh nhi�m v�
	22 - ��n th�y y�n m�n g�p l� thu th�y 43,84 c� �y s� cho bi�t nhi�m v� ti�p theo
	23 - ��n kinh ho�ng ��ng gi�t t�n ph�n qu�c t� t� l�c 181,214 l�y ���c chi�n gi�p b�ch long t�c trong b� thi�n ho�ng long kh� 
	24 - quay v� th�y y�n m�n g�p l� thu th�y ��a chi�n gi�p 
	25 - ��n bi�n kinh g�p ph� nam b�ng
	26 - ��n thi�n v��ng bang g�p ��c �i�u t�u 205,199 
	27 - ��c �i�u t�u b�o ��n m� cung ��ng ��nh h� 199,206 g�p �ng ta 
	28 - v� g�p ph� nam b�ng giao chi�n th��ng long �o�n
	29 - ph� nam b�ng b�o ��n thi�u l�m t� g�p ��i s� kh�ng t�ch 221/177 trong tay �ng ta �ang gi� 1 ph�n c�a b� thi�n ho�ng long kh�
	30 - ��n h�u s�n thi�u l�m t� ��nh 1 tr�n v�i ��i s� kh�ng t�ch 218/166
	31 - v� giao 2 m�n b�o kh� cho ph� nam b�ng
	32 - quay v� g�p long ng� �� ho�n th�nh nhi�m v�
	33__[Long Kh� Chi H�a]__ long ng� b�o ��n chi ti�n tr�n g�p v�n nhi 215,198
	34 - ��n l�m an g�p th�i c�ng c�ng 203,200 �� th� kh� n�ng c�a b�n th�n v� l�y thi�n h��ng ng�c ch� cao
	35 - ��n ph�c ng�u s�n ��ng ��nh ti�u th�i gi�m ti�u k� nhi 226,205 �o�t l�i kim ph�t
	36 - quay v� l�m an g�p th�i c�ng c�ng tr� nhi�m v� v� l�y ng�c ch� cao
	37 - quay v� g�p v�n nhi � chu ti�n tr�n �� ho�n th�nh nhi�m v�
	38 - v�n nhi b�o �i d��ng ch�u g�p ti�u s� 199,194 
	39 - ��n thanh th�nh s�n ��nh b�i h� h�u ph�c v� l�y tr�n minh chi li�n 
	40 - quay v� g�p v�n nhi � chu ti�n tr�n 
	41 - v�n nhi b�o ��n long tuy�n th�n g�p ph� l�i th� 199,203 �ng ta cho bi�t m�c th� h��ng c�a ng� ��c gi�o c� li�n quan ��n tr�n minh chi li�n
	42 - ��n ng� ��c gi�o g�p m�c th� h��ng ch� trong m�c th� tr�i 186/195
	43 - quay v� long tuy�n th�n g�p ph� l�i th� �� h�i th�m tin t�c v� con trai c�a m�c th� h��ng ch�
	44 - ph� l�i th� b�o l�n v� �ang t�i ph� m�u �i�n g�p ��o th�ch m�n 203/194 �ang �eo tr�n minh chi li�n
	45 - ��n th�c c��ng s�n ��nh b�i v� l�m b�i ho�i ti�u v� th��ng 243,200 l�y l�i ��a �� chi�n l��c trung nguy�n
	46 - quay l�i v� �ang giao l��c �� cho ��o th�ch m�n
	47 - ��o th�ch m�n ��a tr�n minh chi li�n quay v� giao cho ph� l�i th�
	48 - l�n bi�n kinh g�p nh� ng�c 210,196
	49 - nh� ng�c gi�i thi�u ��n g�p tr�n tam b�o 219,187
	50 - �� th�m nh�p v�o kim tri�u l�n nh�n ��ng s�n ti�u di�t l�c t�c phi 74,191 l�y l�i thi�n hoa s�
	51 - quay v� giao thi�n hoa s� cho tr�n tam b�o
	52 - ��n thi�t th�p bi�n kinh t�ng 3 ��nh b�i t��ng kim �� �an 211,189 khi ��nh h�n c� nh�c t�i ho�ng nhan h�ng khang � thi�n nh�n gi�o
	53 - l�n thi�n nh�n gi�o t�ng 3 g�p �o�n m�c du� 225,199 
	54 - ��n long m�n tr�n g�p �o�n m�c thanh 251,280 �� h�i th�m tim t�c v� ho�ng nhan h�ng khang
	55 - �i linh c�c ��ng ti�u di�t 	anh h�ng kh�ng kim li�u ��nh 193,196
	56 - quay v� long m�n tr�n giao cho �o�n m�c thanh
	57 - ��ng sau thi�n ho�ng long kh� c�n ch�a r�t nhi�u b� �n, quay v� g�p long ng� �� ho�n th�nh nhi�m v�

]]*/
















