Include("\\script\\missions\\citywar_global\\head.lua");
Include("\\script\\missions\\citywar_city\\head.lua");
Include("\\script\\missions\\clearskill\\clearhole.lua");
Include("\\script\\task\\tollgate\\messenger\\wagoner.lua");  -- NV Tin S�

Include("\\script\\task\\newtask\\map_index.lua"); -- ���ڻ�ȡ��������ͼ����Ϣ
Include("\\script\\task\\tollgate\\messenger\\wagoner.lua") --��������������ʹ����Ľű�
Include("\\script\\global\\judgeoffline_special.lua")	--���������ȡ����йܷ�������ͼ

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\event\\zhongqiu_jieri\\200909\\rongshu\\head.lua")

Include("\\script\\event\\great_night\\great_night_head.lua")	--˫�����ƽ�֮��
--�i�u ch�nh reset 5h ch�i - Modified by DinhHQ - 20110630
Include("\\script\\vng_feature\\challengeoftime\\npcNhiepThiTran.lua")

Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_duatop_maychumoi.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_random_map_pos.lua")
Include("\\script\\_missions\\chien_long_dong\\n_leave_map.lua")
Include("\\script\\_missions\\tieu_bang_chien\\api.lua")

szStationOp = 
	{
		"Nh�ng n�i �� �i qua/WayPointFun", 		-- 1
		"Nh�ng th�nh th� �� �i qua/StationFun",		-- 2
		"Tr� l�i ��a �i�m c� /TownPortalFun", 	-- 3
		"�i Hoa s�n c�nh k� tr��ng/go_HSBattle", 	-- 4
		"�i Chi�n tr��ng c�ng th�nh/GoCityWar",			-- 5
		--"�i chi�n tr��ng hu�n luy�n/GoDemoWar",		-- 6
		--"�i ��o T�y T�y/GotoClearSkillMap",	-- 7
		--"�i ��n n�i l�m nhi�m v� D� T�u/tl_moveToTaskMap",			-- 8
		--"�i n�i ��c bi�t l�m Nhi�m v� T�n S� /messenger_wagoner",      -- 9
		-- "�i ��n khu v�c luy�n c�ng theo c�p/khuvucluyencongtheocapbyBil4i3n"
		--"ȥ������/GotoAnonymVale"			--10
	};

--Khu v�c luy�n c�ng theo c�p b�i Bil4i3n
	-- Nh�p m�n Script Lua 4.0 JXL (>.<)
	function khuvucluyencongtheocapbyBil4i3n()
		Say("Xin ch�n khu v�c luy�n c�ng c�a ��i hi�p, ta s� ��a ng�i ��n �o",9,
			-- "Khu v�c luy�n c�ng c�p 10/khuvucluyencongtheocap10",
			"Khu v�c luy�n c�ng c�p 90/khuvucluyencongtheocap90",
			"Khu v�c luy�n c�ng c�p 80/khuvucluyencongtheocap80",
			"Khu v�c luy�n c�ng c�p 70/khuvucluyencongtheocap70",
			"Khu v�c luy�n c�ng c�p 60/khuvucluyencongtheocap60",
			"Khu v�c luy�n c�ng c�p 50/khuvucluyencongtheocap50",
			"Khu v�c luy�n c�ng c�p 40/khuvucluyencongtheocap40",
			"Khu v�c luy�n c�ng c�p 30/khuvucluyencongtheocap30",
			"Khu v�c luy�n c�ng c�p 20/khuvucluyencongtheocap20",
			"Ket th�c ��i tho�i/OnCancel"
		)
	end
							function khuvucluyencongtheocap10()
								Talk(1,"","t� ��ng c�p <color=green>10<color> ��n <color=green>20<color> c�c nh�n s� tr�n giang h� h�   ��u luy�n � <color=yellow>8 th�n tr�n, 7 ��i th�nh th�<color> v� chuy�n   t�m t�p luy�n t�i <color=yellow>b�n �� m�n ph�i<color> c�a m�nh.")
							end
							function khuvucluyencongtheocap20()
								if (GetLevel() >=20) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu v�c luy�n c�ng c�p <color=green>20<color>",3,
											"La Ti�u s�n/latieuson",
											"T�n L�ng/tanlang",
											"K�t th�c ��i tho�i/OnCancel"
										)
									else
										Say("Khu v�c luy�n c�ng c�p <color=green>20<color>",11,
											"La Ti�u s�n/latieuson",
											"Vu L�ng s�n/vulangson",
											"Ki�m C�c T�y B�c/kiemcactaybac",
											"T�n L�ng/tanlang",
											"M�nh H� ��ng/manhhodong",
											"Ki�m C�c T�y Nam/kiemcactaynam",
											"Ki�m C�c Trung Nguy�n/kiemcactrungnguyen",
											"B�ch Th�y ��ng/bachthuydong",
											"H�a Lang ��ng/hoalangdong",
											"Ph�c L�u ��ng/phucluudong",
											"K�t th�c ��i tho�i/OnCancel"
										)
									end
								else
									Talk(1,"","Nh�n ��i hi�p ta bi�t ng�i ch�a �� kh� n�ng ra ��, n�u c� m�nh h� g� ta kh�ng g�nh v�c n�i, ng��i h�y quay v� luy�n th�m l�n ��n c�p <color=green>20<color> r�i h�y ��n ��y g�p ta.")
								end
							end
													function kiemcactaybac() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ki�m C�c T�y B�c<color>")
														NewWorld(3,138*8,231*16);
													end
													function tanlang() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>T�n L�ng<color>")
														NewWorld(7,284*8,176*16);
													end
													function manhhodong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>M�nh H� ��ng<color>")
														NewWorld(14,199*8,201*16);
													end
													function kiemcactaynam() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ki�m C�c T�y Nam<color>")
														NewWorld(19,388*8,247*16);
													end
													function kiemcactrungnguyen() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ki�m C�c Trung Nguy�n<color>")
														NewWorld(43,211*8,200*16);
													end
													function vulangson() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Vu L�ng s�n<color>")
														NewWorld(70,196*8,199*16);
													end
													function bachthuydong()
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>B�ch Th�y ��ng<color>")
														NewWorld(71,212*8,189*16);
													end
													function hoalangdong()
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>H�a Lang ��ng<color>")
														NewWorld(83,198*8,203*16);
													end
													function latieuson()
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>La Ti�u s�n<color>")
														NewWorld(179,202*8,205*16);
													end
													function phucluudong()
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ph�c L�u ��ng<color>")
														NewWorld(73,199*8,200*16);
													end
							function khuvucluyencongtheocap30()
								if (GetLevel() >=30) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu v�c luy�n c�ng c�p <color=green>30<color>",3,
											"V� Di s�n/vudison",
											"Th�c C��ng s�n/thuccuongson",
											"K�t th�c ��i tho�i/OnCancel"
										)
									else
										Say("Khu v�c luy�n c�ng c�p <color=green>30<color>",13,
											"Vu Di s�n/vudison",
											"Th�c C��ng s�n/thuccuongson",
											"L�ng T�n Th�y Ho�ng/langtanthuyhoang",
											"B�ch V�n ��ng/bachvandong",
											"Mi�u L�nh/mieulinh",
											"Y�n T� ��ng/yentudong",
											"Ph�c Ng�u S�n ��ng/phucnguusondong",
											"Kho�i Ho�t L�m/khoaihoatlam",
											"D��c V��ng ��ng t�ng 1/duocvuongtang1",
											"Tuy�t B�o ��ng t�ng 1/tuyetbaodong1",
											"Th� ph� ��ng/thophidong",
											"Kim Quang ��ng/kimquangdong",
											"K�t th�c ��i tho�i/OnCancel"
										)
									end
								else
									Talk(1,"","Nh�n ��i hi�p ta bi�t ng�i ch�a �� kh� n�ng ra ��, n�u c� m�nh h� g� ta kh�ng g�nh v�c n�i, ng��i h�y quay v� luy�n th�m l�n ��n c�p <color=green>30<color> r�i h�y ��n ��y g�p ta.")
								end
							end
													function kimquangdong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Kim Quang ��ng<color>")
														NewWorld(4,226*8,192*16);
													end
													function langtanthuyhoang() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>L�ng T�n Th�y Ho�ng<color>")
														NewWorld(8,199*8,218*16);
													end
													function bachvandong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>B�ch V�n ��ng<color>")
														NewWorld(22,221*8,209*16);
													end
													function mieulinh() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Mi�u L�nh<color>")
														NewWorld(74,252*8,205*16);
													end
													function yentudong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Y�n T� ��ng<color>")
														NewWorld(77,220*8,214*16);
													end
													function phucnguusondong()
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ph�c Ng�u S�n ��ng<color>")
														NewWorld(90,205*8,220*16);
													end
													function thuccuongson() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Th�c C��ng s�n<color>")
														NewWorld(92,201*8,202*16);
													end
													function khoaihoatlam() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Kho�i Ho�t L�m<color>")
														NewWorld(136,195*8,203*16);
													end
													function duocvuongtang1()
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>D��c V��ng ��ng t�ng 1<color>")
														NewWorld(141,189*8,203*16);
													end
													function tuyetbaodong1() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Tuy�t B�o ��ng t�ng 1<color>")
														NewWorld(145,201*8,206*16);
													end
													function thophidong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Th� ph� ��ng<color>")
														NewWorld(170,201*8,199*16);
													end
													function vudison()
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Vu Di s�n<color>")
														NewWorld(193,238*8,176*16);
													end
							function khuvucluyencongtheocap40()
								if (GetLevel() >=40) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu v�c luy�n c�ng c�p <color=green>40<color>",3,
											"�i�m Th��ng s�n/diemthuongson",
											"Thanh Th�nh S�n/thanhthanhson",
											"K�t th�c ��i tho�i/OnCancel"
										)
									else
										Say("Khu v�c luy�n c�ng c�p <color=green>40<color>",15,
											"�i�m Th��ng s�n/diemthuongson",
											"Ph�c Ng�u S�n T�y/phucnguusontay",
											"Thanh Th�nh S�n/thanhthanhson",
											"Ho�ng H� Nguy�n ��u/hoanghanguyendau",
											"T�a V�n ��ng/toavandong",
											"Th�n Ti�n ��ng/thantiendong",
											"M� cung K� Qu�n ��ng/mecungkequandong",
											"Ki�n T�nh Phong s�n ��ng/ktphongsondong",
											"Ph�ng Nh�n ��ng/phungnhandong",
											"�i�m Th��ng ��ng t�ng 1/diemthuongdongtang1",
											"�i�m Th��ng ��ng t�ng 2/diemthuongdongtang2",
											"�i�m Th��ng ��ng t�ng 3/diemthuongdongtang3",
											"Long Cung ��ng/longcungdong",
											"Kinh Ho�ng ��ng/kinhhoangdong",
											"K�t th�c ��i tho�i/OnCancel"
										)
									end
								else
									Talk(1,"","Nh�n ��i hi�p ta bi�t ng�i ch�a �� kh� n�ng ra ��, n�u c� m�nh h� g� ta kh�ng g�nh v�c n�i, ng��i h�y quay v� luy�n th�m l�n ��n c�p <color=green>40<color> r�i h�y ��n ��y g�p ta.")
								end
							end
													function kinhhoangdong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Kinh Ho�ng ��ng<color>")
														NewWorld(5,192*8,204*16);
													end
													function toavandong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>T�a V�n ��ng<color>")
														NewWorld(6,206*8,207*16);
													end
													function thanhthanhson() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Thanh Th�nh S�n<color>")
														NewWorld(21,326*8,279*16);
													end
													function thantiendong()
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Th�n Ti�n ��ng<color>")
														NewWorld(23,224*8,210*16);
													end
													function phucnguusontay() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ph�c Ng�u S�n T�y<color>")
														NewWorld(41,256*8,176*16);
													end
													function mecungkequandong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>M� cung K� Qu�n ��ng<color>")
														NewWorld(91,220*8,175*16);
													end
													function hoanghanguyendau() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ho�ng H� Nguy�n ��u<color>")
														NewWorld(122,201*8,206*16);
													end
													function ktphongsondong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ki�n T�nh Phong s�n ��ng<color>")
														NewWorld(135,219*8,199*16);
													end
													function diemthuongson() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>�i�m Th��ng s�n<color>")
														NewWorld(167,197*8,202*16);
													end
													function phungnhandong()
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ph�ng Nh�n ��ng<color>")
														NewWorld(168,208*8,207*16);
													end
													function diemthuongdongtang1() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>�i�m Th��ng ��ng t�ng 1<color>")
														NewWorld(171,208*8,194*16);
													end
													function diemthuongdongtang2() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>�i�m Th��ng ��ng t�ng 2<color>")
														NewWorld(172,211*8,190*16);
													end
													function diemthuongdongtang3() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>�i�m Th��ng ��ng t�ng 3<color>")
														NewWorld(173,189*8,203*16);
													end
													function longcungdong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Long Cung ��ng<color>")
														NewWorld(180,196*8,182*16);
													end
							function khuvucluyencongtheocap50()
								if (GetLevel() >=50) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu v�c luy�n c�ng c�p <color=green>50<color>",4,
										"Thi�n T�m th�p t�ng 1/thientangthap1",
										"Thi�t th�p t�ng 1 /thietthap1",
										"Thi�n T�m ��ng/thientamdong",
										"K�t th�c ��i tho�i/OnCancel"
										)
									else
										Say("Khu v�c luy�n c�ng c�p <color=green>50<color>",11,
										"Thi�n T�m th�p t�ng 1/thientangthap1",
										"Thi�n T�m th�p t�ng 2/thientangthap2",
										"Thi�t th�p t�ng 1 /thietthap1",
										"Thi�t th�p t�ng 2 /thietthap2",
										"Thi�t th�p t�ng 3/thietthap3",
										"Thi�n T�m ��ng/thientamdong",
										"��y ��ng ��nh h� t�ng 1/daydongdinhho1",
										"��y ��ng ��nh h� t�ng 2/daydongdinhho2",
										"T��ng V�n ��ng t�ng 1 /tuongvandong1",
										"Trang sau/trangsaucap50",
										"K�t th�c ��i tho�i/OnCancel"
										)
									end
								else
										Talk(1,"","Nh�n ��i hi�p ta bi�t ng�i ch�a �� kh� n�ng ra ��, n�u c� m�nh h� g� ta kh�ng g�nh v�c n�i, ng��i h�y quay v� luy�n th�m l�n ��n c�p <color=green>50<color> r�i h�y ��n ��y g�p ta.")
								end
							end
											function trangsaucap50()
												Say("Khu v�c luy�n c�ng c�p <color=green>50<color>",10,
												"L�u Ti�n ��ng t�ng 1/luutiendong1",
												"B�ng Huy�t ��ng/banghuyetdong",
												"Tuy�t B�o ��ng t�ng 3/tuyetbaodong3",
												"�c b� �ia ��o/acbadiadao",
												"�ia ��o h�u vi�n T�n T��ng t�/sadaohauvientt",
												"H��ng Th�y ��ng/huongthuydong",
												"Nghi�t Long ��ng/nghietlongdong",
												"Ng�c Hoa ��ng/ngochoadong",
												"Trang tr��c/khuvucluyencongtheocap50",
												"K�t th�c ��i tho�i/OnCancel"
												)
											end
													function sadaohauvientt() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>�ia ��o h�u vi�n T�n T��ng t�<color>")
														NewWorld(12,199*8,199*16);
													end
													function huongthuydong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>H��ng Th�y ��ng<color>")
														NewWorld(24,221*8,194*16);
													end
													function thietthap1() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Thi�t th�p t�ng 1 <color>")
														NewWorld(38,200*8,200*16);
													end
													function thietthap2() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Thi�t th�p t�ng 2 <color>")
														NewWorld(39,209*8,195*16);
													end
													function thietthap3()
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Thi�t th�p t�ng 3<color>")
														NewWorld(40,209*8,195*16);
													end
													function thientamdong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Thi�n T�m ��ng<color>")
														NewWorld(42,196*8,191*16);
													end
													function daydongdinhho1() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>��y ��ng ��nh h� t�ng 1<color>")
														NewWorld(66,235*8,194*16);
													end
													function daydongdinhho2() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>��y ��ng ��nh h� t�ng 2<color>")
														NewWorld(67,197*8,199*16);
													end
													function tuongvandong1() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>T��ng V�n ��ng t�ng 1 <color>")
														NewWorld(116,200*8,200*16);
													end
													function luutiendong1() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>L�u Ti�n ��ng t�ng 1<color>")
														NewWorld(125,213*8,187*16);
													end
													function banghuyetdong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>B�ng Huy�t ��ng<color>")
														NewWorld(132,210*8,211*16);
													end
													function tuyetbaodong3() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Tuy�t B�o ��ng t�ng 3<color>")
														NewWorld(147,203*8,207*16);
													end
													function acbadiadao() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>�c b� �ia ��o<color>")
														NewWorld(163,195*8,200*16);
													end
													function thientangthap1() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Thi�n T�m th�p t�ng 1<color>")
														NewWorld(164,201*8,199*16);
													end
													function thientangthap2() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Thi�n T�m th�p t�ng 2<color>")
														NewWorld(165,197*8,204*16);
													end
													function nghietlongdong()
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Nghi�t Long ��ng<color>")
														NewWorld(182,256*8,211*16);
													end
													function ngochoadong()
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ng�c Hoa ��ng<color>")
														NewWorld(194,198*8,200*16);
													end						
							function khuvucluyencongtheocap60()
								if (GetLevel() >=60) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu v�c luy�n c�ng c�p <color=green>60<color>",4,
										"Th�nh ��ng t�ng 1/thanhdong1",
										"M� cung c�m ��a/mecungcamdia",
										"Ho�nh S�n Ph�i/hoanhsonphai",
										"K�t th�c ��i tho�i/OnCancel"
										)
									else
										Say("Khu v�c luy�n c�ng c�p <color=green>60<color>",11,
										"Th�nh ��ng t�ng 1/thanhdong1",
										"Th�nh ��ng t�ng 2/thanhdong2",
										"M� cung c�m �ia/mecungcamdia",
										"Ho�nh S�n Ph�i/hoanhsonphai",
										"M�t ��o Nha m�n T��ng D��ng/matdaotuongduong",
										"108 La H�n tr�n/i108lahantran",
										"T��ng V�n ��ng t�ng 2/tuongvandong2",
										"T��ng V�n ��ng t�ng 3/tuongvandong3",
										"T��ng V�n ��ng t�ng 4/tuongvandong4",
										"Trang sau/trangsaucap60",
										"K�t th�c ��i tho�i/OnCancel"
										)
									end
								else
									Talk(1,"","Nh�n ��i hi�p ta bi�t ng�i ch�a �� kh� n�ng ra ��, n�u c� m�nh h� g� ta kh�ng g�nh v�c n�i, ng��i h�y quay v� luy�n th�m l�n ��n c�p <color=green>60<color> r�i h�y ��n ��y g�p ta.")
								end
							end
										function trangsaucap60()
												Say("Khu v�c luy�n c�ng c�p <color=green>60<color>",9,
												"L�u Ti�n ��ng t�ng 2/luutiendong2",
												"L�u Ti�n ��ng t�ng 3/luutiendong3",
												"L�u Ti�n ��ng t�ng 4/luutiendong4",
												"Tuy�t B�o ��ng t�ng 4/tuyetbaodong4",
												"Tr�c T� ��ng t�ng 1/tructodong1",
												"Thi�n T�m th�p t�ng 3/thientangthap3",
												"D��ng Gi�c ��ng/duonggiacdong",
												"Trang tr��c/khuvucluyencongtheocap60",
												"K�t th�c ��i tho�i/OnCancel"
												)
											end
													function tructodong1() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Tr�c T� ��ng t�ng 1<color>")
														NewWorld(26,187*8,208*16);
													end
													function thanhdong1() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Th�nh ��ng t�ng 1<color>")
														NewWorld(51,220*8,199*16);
													end
													function thanhdong2() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Th�nh ��ng t�ng 2<color>")
														NewWorld(52,215*8,201*16);
													end
													function hoanhsonphai() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ho�nh S�n Ph�i<color>")
														NewWorld(56,188*8,216*16);
													end
													function matdaotuongduong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>M�t ��o Nha m�n T��ng D��ng<color>")
														NewWorld(79,219*8,202*16);
													end
													function i108lahantran() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>108 La H�n tr�n<color>")
														NewWorld(114,187*8,207*16);
													end
													function tuongvandong2() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>T��ng V�n ��ng t�ng 2<color>")
														NewWorld(117,200*8,199*16);
													end
													function tuongvandong3() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>T��ng V�n ��ng t�ng 3<color>")
														NewWorld(118,197*8,197*16);
													end
													function tuongvandong4() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>T��ng V�n ��ng t�ng 4<color>")
														NewWorld(119,200*8,199*16);
													end
													function luutiendong2() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>L�u Ti�n ��ng t�ng 2<color>")
														NewWorld(126,197*8,201*16);
													end
													function luutiendong3() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>L�u Ti�n ��ng t�ng 3<color>")
														NewWorld(127,202*8,192*16);
													end
													function luutiendong4() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>L�u Ti�n ��ng t�ng 4<color>")
														NewWorld(128,198*8,199*16);
													end
													function tuyetbaodong4() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Tuy�t B�o ��ng t�ng 4<color>")
														NewWorld(148,200*8,201*16);
													end
													function mecungcamdia()
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>M� cung c�m �ia<color>")
														NewWorld(158,194*8,196*16);
													end
													function thientangthap3() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Thi�n T�m th�p t�ng 3<color>")
														NewWorld(166,207*8,202*16);
													end
													function duonggiacdong() 
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>D��ng Gi�c ��ng<color>")
														NewWorld(196,209*8,191*16);
													end
							function khuvucluyencongtheocap70() 
								if (GetLevel() >=70) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu v�c luy�n c�ng c�p <color=green>70<color>",4,
										"L�m Du Quan/lamduquang",
										"Tr��ng Giang Nguy�n ��u/truonggiangnguyendau",
										"D��c V��ng ��ng t�ng 2/duocvuongtang2",
										"K�t th�c ��i tho�i/OnCancel"
										)
									else
										Say("Khu v�c luy�n c�ng c�p <color=green>70<color>",15,
										"L�m Du Quan/lamduquang",
										"Tr��ng Giang Nguy�n ��u/truonggiangnguyendau",
										"��o Hoa Nguy�n/daohoanguyen",
										"Tr�c T� ��ng t�ng 2/tructodong2",
										"��i T� ��ng/daitudong",
										"S�n B�o ��ng/sonbaodong",
										"Linh C�c ��ng/linhcocdong",
										"T��ng V�n ��ng t�ng 5/tuongvandong5",
										"L�o H� ��ng/laohodong",
										"L�u Ti�n ��ng t�ng 5/luutiendong5",
										"L�u Ti�n ��ng t�ng 6/luutiendong6",
										"D��c V��ng ��ng t�ng 2/duocvuongtang2",
										"Long Nh�n ��ng/longnhandong",
										"T�n L�ng t�ng 2/tanglangtang2",
										"K�t th�c ��i tho�i/OnCancel"
										)
									end
								else
									Talk(1,"","Nh�n ��i hi�p ta bi�t ng�i ch�a �� kh� n�ng ra ��, n�u c� m�nh h� g� ta kh�ng g�nh v�c n�i, ng��i h�y quay v� luy�n th�m l�n ��n c�p <color=green>70<color> r�i h�y ��n ��y g�p ta.")
								end							
							end
													function truonggiangnguyendau() 
														if(bilRandomMapsPos:Main(9)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Tr��ng Giang Nguy�n ��u<color>")
														NewWorld(9,295*8,351*16);
													end
													function tructodong2() 
														if(bilRandomMapsPos:Main(27)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Tr�c T� ��ng t�ng 2<color>")
														NewWorld(27,191*8,200*16);
													end
													function daohoanguyen() 
														if(bilRandomMapsPos:Main(55)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>��o Hoa Nguy�n<color>")
														NewWorld(55,199*8,199*16);
													end
													function daitudong() 
														if(bilRandomMapsPos:Main(72)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>��i T� ��ng<color>")
														NewWorld(72,207*8,180*16);
													end
													function sonbaodong() 
														if(bilRandomMapsPos:Main(76)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>S�n B�o ��ng<color>")
														NewWorld(76,217*8,195*16);
													end
													function linhcocdong() 
														if(bilRandomMapsPos:Main(94)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Linh C�c ��ng<color>")
														NewWorld(94,219*8,194*16);
													end
													function tuongvandong5() 
														if(bilRandomMapsPos:Main(120)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>T��ng V�n ��ng t�ng 5<color>")
														NewWorld(120,201*8,199*16);
													end
													function laohodong() 
														if(bilRandomMapsPos:Main(123)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>L�o H� ��ng<color>")
														NewWorld(123,212*8,209*16);
													end
													function luutiendong5() 
														if(bilRandomMapsPos:Main(129)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>L�u Ti�n ��ng t�ng 5<color>")
														NewWorld(129,207*8,208*16);
													end
													function luutiendong6() 
														if(bilRandomMapsPos:Main(130)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>L�u Ti�n ��ng t�ng 6<color>")
														NewWorld(130,197*8,200*16);
													end
													function duocvuongtang2()
														if(bilRandomMapsPos:Main(142)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>D��c V��ng ��ng t�ng 2<color>")
														NewWorld(142,184*8,203*16);
													end
													function longnhandong() 
														if(bilRandomMapsPos:Main(169)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Long Nh�n ��ng<color>")
														NewWorld(169,200*8,201*16);
													end
													function tanglangtang2() 
														if(bilRandomMapsPos:Main(206)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>T�n L�ng t�ng 2<color>")
														NewWorld(206,202*8,202*16);
													end
													function lamduquang()
														if(bilRandomMapsPos:Main(319)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>L�m Du Quan<color>")
														NewWorld(319,201*8,225*16);
													end
							function khuvucluyencongtheocap80() 
								if (GetLevel() >=80) then
									if bilAllowTransFullMapInNPC ~= 1 then
										Say("Khu v�c luy�n c�ng c�p <color=green>80<color>",5,
										"Sa m�c �ia bi�u/samacdiabieu",
										"Ch�n n�i Tr��ng B�ch/channuitruongbach",
										"B�ng H� ��ng/banghadong",
										"D��c V��ng ��ng t�ng 3/duocvuongtang3",
										"K�t th�c ��i tho�i/OnCancel"
										)
									else
										Say("Khu v�c luy�n c�ng c�p <color=green>80<color>",15,
										"Sa m�c �ia bi�u/samacdiabieu",
										"Ch�n n�i Tr��ng B�ch/channuitruongbach",
										"B�ng H� ��ng/banghadong",
										"Nh�n Th�ch ��ng/nhanthachdong",
										"D��c V��ng ��ng t�ng 3/duocvuongtang3",
										"Tuy�t B�o ��ng t�ng 7/tuyetbaodong7",
										"L��ng Th�y ��ng/luongthuydong",
										"Thanh kh� ��ng/thanhkhedong",
										"Vu L�ng ��ng/vulangdong",
										"Ph� Dung ��ng/phudungdong",
										"V� Danh ��ng/vodanhdong",
										"Phi Thi�n ��ng/phithiendong",
										"D��ng Trung ��ng/duongtrungdong",
										"T�n L�ng t�ng 3/tanglangtang3",
										"K�t th�c ��i tho�i/OnCancel"
										)
									end
								else
									Talk(1,"","Nh�n ��i hi�p ta bi�t ng�i ch�a �� kh� n�ng ra ��, n�u c� m�nh h� g� ta kh�ng g�nh v�c n�i, ng��i h�y quay v� luy�n th�m l�n ��n c�p <color=green>80<color> r�i h�y ��n ��y g�p ta.")
								end							
							end
													function nhanthachdong() 
														if(bilRandomMapsPos:Main(10)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Nh�n Th�ch ��ng<color>")
														NewWorld(10,201*8,201*16);
													end
													function duocvuongtang3() 
														if(bilRandomMapsPos:Main(143)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>D��c V��ng ��ng t�ng 3<color>")
														NewWorld(143,202*8,197*16);
													end
													function tuyetbaodong7() 
														if(bilRandomMapsPos:Main(151)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Tuy�t B�o ��ng t�ng 7<color>")
														NewWorld(151,200*8,201*16);
													end
													function luongthuydong() 
														if(bilRandomMapsPos:Main(181)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>L��ng Th�y ��ng<color>")
														NewWorld(181,229*8,197*16);
													end
													function thanhkhedong() 
														if(bilRandomMapsPos:Main(198)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Thanh kh� ��ng<color>")
														NewWorld(198,190*8,184*16);
													end
													function vulangdong() 
														if(bilRandomMapsPos:Main(199)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Vu L�ng ��ng<color>")
														NewWorld(199,202*8,183*16);
													end
													function banghadong() 
														if(bilRandomMapsPos:Main(201)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>B�ng H� ��ng<color>")
														NewWorld(201,201*8,199*16);
													end
													function phudungdong() 
														if(bilRandomMapsPos:Main(202)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ph� Dung ��ng<color>")
														NewWorld(202,221*8,175*16);
													end
													function vodanhdong() 
														if(bilRandomMapsPos:Main(203)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>V� Danh ��ng<color>")
														NewWorld(203,193*8,187*16);
													end
													function phithiendong() 
														if(bilRandomMapsPos:Main(204)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Phi Thi�n ��ng<color>")
														NewWorld(204,205*8,212*16);
													end
													function duongtrungdong() 
														if(bilRandomMapsPos:Main(205)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>D��ng Trung ��ng<color>")
														NewWorld(205,210*8,211*16);
													end
													function tanglangtang3() 
														if(bilRandomMapsPos:Main(207)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>T�n L�ng t�ng 3<color>")
														NewWorld(207,198*8,200*16);
													end
													function samacdiabieu() 
														if(bilRandomMapsPos:Main(224)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Sa m�c �ia bi�u<color>")
														NewWorld(224,202*8,200*16);
													end
													function channuitruongbach() 
														if(bilRandomMapsPos:Main(320)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ch�n n�i Tr��ng B�ch<color>")
														NewWorld(320,143*8,195*16);
													end
							function khuvucluyencongtheocap90() 
								if (GetLevel() >=90) then
									Say("Khu v�c luy�n c�ng <color=yellow>cao c�p<color>",11,
									"M�c Cao Qu�t/maccaoquat",
									"Tr��ng B�ch s�n Nam /truongbachsonnam",
									"Tr��ng B�ch s�n B�c/truongbachsonbac",
									"Phong L�ng ��/phonglangdo",
									"Sa M�c 1/samac1",
									"Sa M�c 2/samac2",
									"Sa M�c 3/samac3",
									"Kh�a Lang ��ng/khoalangdong",
									"Ti�n C�c ��ng/tiencucdong",
									"C�n Vi�n ��ng/canviendong",
									"D��c V��ng ��ng t�ng 4/duocvuongtang4",
									"Tuy�t B�o ��ng t�ng 8/tuyetbaodong8",
									"H�c Sa ��ng/hacsadong",
									"K�t th�c ��i tho�i/OnCancel"
									)
								else
									Talk(1,"","Nh�n ��i hi�p ta bi�t ng�i ch�a �� kh� n�ng ra ��, n�u c� m�nh h� g� ta kh�ng g�nh v�c n�i, ng��i h�y quay v� luy�n th�m l�n ��n c�p <color=green>90<color> r�i h�y ��n ��y g�p ta.")
								end
							end
													function khoalangdong() 
														if(bilRandomMapsPos:Main(75)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Kh�a Lang ��ng<color>")
														NewWorld(75,226*8,188*16);
													end
													function tiencucdong() 
														if(bilRandomMapsPos:Main(93)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Ti�n C�c ��ng<color>")
														NewWorld(93,211*8,188*16);
													end
													function canviendong() 
														if(bilRandomMapsPos:Main(124)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>C�n Vi�n ��ng<color>")
														NewWorld(124,210*8,212*16);
													end
													function duocvuongtang4() 
														if(bilRandomMapsPos:Main(144)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>D��c V��ng ��ng t�ng 4<color>")
														NewWorld(144,200*8,195*16);
													end
													function tuyetbaodong8() 
														if(bilRandomMapsPos:Main(152)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Tuy�t B�o ��ng t�ng 8<color>")
														NewWorld(152,209*8,210*16);
													end
													function samac1() 
														if(bilRandomMapsPos:Main(225)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Sa M�c 1<color>")
														NewWorld(225,184*8,204*16);
													end
													function samac2() 
														if(bilRandomMapsPos:Main(226)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Sa M�c 2<color>")
														NewWorld(226,195*8,199*16);
													end
													function samac3() 
														if(bilRandomMapsPos:Main(227)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Sa M�c 3<color>")
														NewWorld(227,198*8,202*16);
													end
													function truongbachsonnam() 
														if(bilRandomMapsPos:Main(321)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Tr��ng B�ch s�n Nam <color>")
														NewWorld(321,121*8,145*16);
													end
													function truongbachsonbac() 
														if(bilRandomMapsPos:Main(322)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Tr��ng B�ch s�n B�c<color>")
														NewWorld(322,198*8,197*16);
													end
													function maccaoquat() 
														if(bilRandomMapsPos:Main(340)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>M�c Cao Qu�t<color>")
														NewWorld(340,230*8,214*16);
													end
													function hacsadong() 
														if(bilRandomMapsPos:Main(875)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>H�c Sa ��ng<color>")
														NewWorld(875,197*8,198*16);
													end
													function phonglangdo() 
														if(bilRandomMapsPos:Main(336)) then return end
														SetFightState(1)
														Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n <color=green>Phong L�ng ��<color>")
														NewWorld(336,140*8,199*16);
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
													end
	-- Nh�p m�n Script Lua JXL (>.<)
	
	
function return_1()
	return 1
end

function return_0()
	return 0
end

-- ��Ӧ�ϸ�����������ж�
aryCondition = {

	[1] = {checkState = return_1},     -- ·���ĵط�
	[2] = {checkState = return_1},     -- ·���ĳ���
	[3] = {checkState = return_1},     -- ���صĵص�
	[4] = {checkState = return_1},     -- ȥ��ɽ������
	[5] = {checkState = function()                      -- ȥ����ս��
				return (WhichWarBegin()~= 0 and 1) or 0;
		   end;
		  },
	[6] = {checkState = function()                      -- ȥ����ѵ��ս��
				return (GetGlbValue(2)==1 and 1) or 0;
		   end;
		  },
	[7] = {checkState = return_1},     -- ȥϴ�赺
	[8] = {checkState = function()                      -- ȥҰ���������ڵ�
				return (GetTask(1021)==4 and 1) or 0;
		   end;
		  },
	[9] = {checkState = function()                      -- ȥ������ʹ�������ڵص�
				return (GetTask(1204)~= 0 and 1) or 0;
		   end;
		  },
	--[10] = {checkState = return_1},    -- ����������
	[10] = {checkState = return_1},     -- ·���ĵط�
	[11] = {checkState = return_1},
	[12] = {checkState = return_1},
}

szStationOp_Cancel = "Kh�ng c�n ��u/StationOnCancel";

function go_HSBattle()
	Msg2Player("Ng�i ch�c nh�! Ch�ng ta �i ��n Hoa s�n c�nh k� tr��ng")
	NewWorld(2,2605,3592)
end

function WayPointFun()			-- �ӷ���Ҫ800�����ӣ����ڣ���������BY�� Dan_Deng 2004-04-30��
	p1 = GetWayPoint(1);
	p2 = GetWayPoint(2);
	p3 = GetWayPoint(3);
	HaveBin={};
	i = 1;
	if (p1 ~= 0)  then
		name = GetWayPointName(p1);
		name = name .."/SelWayPoint";
		HaveBin[i]= name;
		i = i + 1;
	end;
	if (p2 ~= 0)  then
		name = GetWayPointName(p2);
		name = name .."/SelWayPoint";
		HaveBin[i]= name;
		i = i + 1;
	end;
	if (p3 ~= 0)  then
		name = GetWayPointName(p3);
		name = name .."/SelWayPoint";
		HaveBin[i]= name;
		i = i + 1;
	end;
	HaveBin[i] = "Kh�ng �i ��u c� /OnCancel";
	if (i == 1) then 
		Say("Xin l�i!  Ta ch� c� th� ��a ng��i ��n nh�ng n�i �� �i qua nh�ng ng��i ch�a �i ��u c�! ",0);
	else
		Say("Xin l�a ch�n: ", i, HaveBin);
	end;
end;

function WharfFun()
Count = GetWharfCount(CurWharf);
Num = Count;

WharfB = {};
nValidCount = 1;

for i = 1, Num do
WharfId = GetWharf(CurWharf, i);
if (WharfId ~= 0) then
	nPrice = GetWharfPrice(CurWharf, WharfId);
	WharfB[nValidCount] = GetWharfName(WharfId) .. "[" .. nPrice .. " l��ng]" .. "/SelWharf";
	nValidCount = nValidCount + 1;
end;
end;

WharfB[nValidCount] = "Kh�ng ng�i/OnCancel";

if (nValidCount == 1) then 
Say("Xin l�i!  Ng��i ch�a �i ��u c�! ", 0);
else
Say("Kh�ch quan mu�n �i ��u?", nValidCount, WharfB);
end;

end;

function SelWharf(nSel)

nWharfId = GetWharf( CurWharf, nSel + 1);
nPrice = 0;
if (nWharfId ~= 0) then 
	nPrice = GetWharfPrice(CurWharf, nWharfId);
else
	return
end;

if (PrePay(nPrice) == 1 or GetCamp() == 6 ) then
Msg2Player("Ng�i y�n ch�a? Ch�ng ta �i "..GetWharfName(nWharfId))
nW , nX, nY = GetWharfPos(nWharfId);
nResult = NewWorld(nW, nX , nY );
if (nResult == 2) then
Msg2Player("�ang chuy�n ��i Server...")
end
if (nResult == 0) then
Msg2Player("Nh�p �i�m c� sai s�t!")
end
else
Say("Kh�ng ti�n kh�ng th� ng�i thuy�n", 0);
end;
end;


function StationFun()
	for j = 1, 16 do
		AddStation(j)
	end
	Count = GetStationCount();
	Num = Count;
	if (Count > 10) then
		Num = 10
	end
	StationB = {}
	nValidCount = 1

	for i = 1, Num do
		StationId = GetStation(i, CurStation)
		if (StationId ~= 0) then
			nPrice = GetPrice2Station(CurStation, StationId)
			StationB[nValidCount] = GetStationName(StationId) .. "[" .. nPrice .. " l��ng]" .. "/SelStation"
			nValidCount = nValidCount + 1
		end
	end
	StationB[nValidCount] = "Kh�ng �i ��u c� /OnCancel";

	if (nValidCount == 1) then 
		Say("Xin l�i!  Ta ch� c� th� ��a ng��i ��n nh�ng n�i �� �i qua nh�ng ng��i ch�a �i ��u c�! ", 0);
	else
		Say("Xin l�a ch�n: ", nValidCount, StationB);
	end
end

function SelStation(nSel)
	Count = GetStationCount()
	nStation = GetStation(nSel + 1, CurStation)
	nPrice = GetPrice2Station(CurStation, nStation)
	if (PrePay(nPrice) == 1 or GetCamp() == 6) then
		nW, nX, nY = GetStationPos(nStation);
		nResult = NewWorld(nW, nX , nY );
		Msg2Player("Ng�i y�n ch�a? Ch�ng ta �i "..GetStationName(nStation))
		if (nResult == 2) then
			--Msg2Player("������ת����...")
		end
		if (nResult == 0) then
			Msg2Player("Nh�p �i�m c� sai s�t!")
		end
	--�i�u ch�nh reset 5h ch�i - Modified by DinhHQ - 20110630
	local nSongJinCount = PlayerFunLib:GetTaskDailyCount(1926)
	if nSongJinCount >= 1 or tbCOT_Party:GetDailyTaskCount() >= 1 then
		-- SetTireTime(0)
	end

	else
		Say("Kh�ng ti�n kh�ng th� ng�i xe! ", 0)
	end
end

function TownPortalFun()
local state = GetSkillState(874);
if state == 1 then
Say("<color=green>�ang nh�n h�ng kh�ng th� �i.")
return
end
ReturnFromPortal()
end			-- ����Ҫ2000�����ӣ�ԭ�ص㣩������BY: Dan_Deng 2004-04-30��
--	if (PrePay(2000) == 1 or GetCamp() == 6) then
	--	ReturnFromPortal()
--	else
--		Say("������˼��ûǮ�������˳�����������ȥ�ɣ�", 0)
--	end
--end;

function SelWayPoint(nSel)			-- ����Ҫ1000�����ӣ����ڣ���������BY��Dan_Deng 2004-04-30��
--	if (PrePay(1000) == 1 or GetCamp() == 6) then
		nWayPoint = GetWayPoint(nSel + 1);
		if (nWayPoint ~= 0) then
			nW, nX, nY = GetWayPointPos(nWayPoint)
			nFightState = GetTerminiFState(nWayPoint)
			nResult = NewWorld(nW, nX, nY)
			SetFightState(nFightState)
--			Msg2Player("Goto"..GetWayPointName(nWayPoint)..nW..nX..nY);
			if (nResult == 2) then
--				Msg2Player("������ת����...")
			end
			if (nResult == 0) then
--				Msg2Player("������д���.")
			end
		end;
--	else									-- ����Ǯ�;ܾ�
--		Say("������˼��ûǮ�������˳�����������ȥ�ɣ�", 0);
--	end;
end

--��ս�Ƿ�ʼ��
function WhichWarBegin()
	for i = 1,7 do
		if (HaveBeginWar(i) ~= 0) then
			return i;
		end;
	end;
	return 0;
end;

function CancelGoCityWar()
	Say("Chi�n tr��ng �ao Ki�m v� t�nh!  Xin ngh�a s� h�y quay v� �� b�o to�n t�nh m�ng", 0);
end;

Bil_TB_CITYWAR_ARRANGE =
 {
	{3,4, "Ph��ng T��ng"},--
	{1,2, "Th�nh ��"},--
	{2,3, "��i L�"},--
	{5,6, "Bi�n Kinh"},--
	{4,5, "T��ng D��ng"},--
	{0,1, "D��ng Ch�u"},--
	{6,0, "L�m An"},--
}	

function Bil_GetNameCityWithnnCan1To7(ncan)
	return Bil_TB_CITYWAR_ARRANGE[ncan][3];
end

function GoCityWar()
	CityID = WhichWarBegin();
	if (CityID >= 1 and CityID <= 7) then
		Tong1, Tong2 = GetCityWarBothSides(CityID);
		str = format("Hi�n t�i <color=green>%s<color> �ang ti�n h�nh c�ng th�nh chi�n,<enter>Bang c�ng th�nh: <color=yellow>%s<color><enter>Bang th� th�nh: <color=yellow>%s<color><enter><enter>xin h�i ng��i mu�n tham chi�n b�n n�o?", Bil_GetNameCityWithnnCan1To7(CityID), Tong1, Tong2);
		Say(str , 3, "B�n c�ng/GoCityWarAttack", "B�n th� /GoCityWarDefend", "Kh�ng b�n n�o h�t/CancelGoCityWar");
	end;
end;

--ȥ����ս�ط����
function GoCityWarDefend()
	CityID = WhichWarBegin();
	if (CityID == 0 ) then 
		return
	end;
	TongName, result = GetTong()
	Tong1, Tong2 = GetCityWarBothSides(CityID);
	if (Tong2 ~= TongName and GetItemCountEx(CardTab[CityID * 2]) < 1) then 
		if (GetTask(TV_CITYID) ~= CityID or GetTask(TV_VALUE) ~= 1 or GetTask(TV_TASKID) ~= MISSIONID) then
			Say("Th�n ph�n ngh�a s� ch�a ph� h�p!  T�i h� kh�ng d�m m�o mu�i ��a v�o!  Xin ngh�a s� quay v�! ", 0);
			return
		end;
	end;
	
	if (random(0,1) == 1) then
		NewWorld(222, 1614, 3172);
	else
		NewWorld(222, 1629, 3193);
	end;
end;

--ȥ����ս�������
function GoCityWarAttack()
	CityID = WhichWarBegin();
	if (CityID == 0) then 
		return
	end;
	TongName, result = GetTong()
	Tong1, Tong2 = GetCityWarBothSides(CityID);
	if (Tong1 ~= TongName and GetItemCountEx(CardTab[CityID * 2 - 1]) < 1) then
		if (GetTask(TV_CITYID) ~= CityID or GetTask(TV_VALUE) ~= 2 or GetTask(TV_TASKID) ~= MISSIONID) then
			Say("Th�n ph�n ngh�a s� ch�a ph� h�p!  T�i h� kh�ng d�m m�o mu�i ��a v�o!  Xin ngh�a s� quay v�! ", 0);
			return
		end
	end
	
	if (random(0,1) == 1) then
		NewWorld(223, 1614, 3172);
	else
		NewWorld(223, 1629, 3193);
	end;

end;

function GoDemoWar()
	Say("C�ng th�nh �ang s�p b�t ��u!  Ng��i c� mu�n tham gia kh�ng?", 3,"Ta tham gia b�n th�!/GotoDefend", "Ta tham gia b�n c�ng/GotoAttack", "Ch�a chu�n b� t�t, l�n sau �i!/OnCancel") 
end;

function GotoDefend()
if (random(0,1) == 1) then
	NewWorld(222, 1614, 3172);
else
	NewWorld(222, 1629, 3193);
end;
end;

function GotoAttack()
	if (random(0,1) == 1) then
		NewWorld(223, 1614, 3172);
	else
		NewWorld(223, 1629, 3193);
	end;
end;

-- ȥϴ���ͼ
function GotoClearSkillMap()
	-- ��ʱ����ȥϴ���ͼ�Ĺ���
	-- Say("�������ȥϴ�赺�Ļ���ֻ��һ�Ρ�����û�������Ϥһ����εļ��ܵ�������һ����ȥ�ɡ�", 1, "֪����/gotocsm_no")

	nSubWorldID = SubWorldIdx2ID();
	nCityIndex = CSP_GetCityIndexByCityMap(nSubWorldID);
	if (nCityIndex == -1) then
		return -1;
	end
	
	CSP_EnterClearMap(nCityIndex);	
end;

function gotocsm_no()
end;

function OnCancel()
end;

function goto_shijiangu()
	NewWorld(949, floor(51264 / 32), floor(102368 / 32))
end

function _GoELangGu()
	Msg2Player("�� ��n �c Lang C�c!")
	local tbTargetMapList = {[11] = 950, [1] = 951, [37] = 952, 
										[176] = 953, [162] = 954, [78] = 955, [80] = 956,}
	local nMapId = GetWorldPos()
	if tbTargetMapList[nMapId] then
 		NewWorld(tbTargetMapList[nMapId], 1592, 3195)
 	end
end

CITY_OPTIONS =
{
	{"Nh�ng n�i �� �i qua", 				WayPointFun}, 			-- 1
	{"Nh�ng th�nh th� �� �i qua",				StationFun},			-- 2
	{"Tr� l�i ��a �i�m c� ",				TownPortalFun}, 		-- 3
	{"�i Hoa s�n c�nh k� tr��ng",			go_HSBattle}, 			-- 4
	{"�i Chi�n tr��ng c�ng th�nh",				GoCityWar},				-- 5
	{"�i chi�n tr��ng hu�n luy�n",			GoDemoWar},				-- 6
	{"�i ��o T�y T�y",				GotoClearSkillMap},		-- 7
	{"�i ��n n�i l�m nhi�m v� D� T�u",		tl_moveToTaskMap},		-- 8
	{"�i n�i ��c bi�t l�m Nhi�m v� T�n S� ",	messenger_wagoner},     -- 9
	-- {"�i ��n khu v�c luy�n c�ng theo c�p",				khuvucluyencongtheocapbyBil4i3n},
	--"ȥ������",				GotoAnonymVale"			--10
	--{"Xin h�y ��a ta ��n Chi�n Long ��ng",		OnGoToNewLiangShuiDong},-- 10
	--{"�i Th� Luy�n C�c",				goto_shijiangu},		-- 11
	--{"�i �c Lang C�c",				_GoELangGu},
}

function CityStationCommon(szMsg)	
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end

	local tbDailog = DailogClass:new(szNpcName)
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	tbDailog.szTitleMsg = "<npc>"..szMsg

	if m_TieuBangChien:api_Station(1) then
		tbDailog:AddOptEntry("�i ��n b�n �� Ti�u Bang Chi�n", m_TieuBangChien.api_Station, {m_TieuBangChien})
	end
	
	if m_ChienLongDong:IsOpen() then
		tbDailog:AddOptEntry("�i ��n b�n �� Chi�n Long ��ng", m_ChienLongDong_nJoinMap)
	end
	
	for i = 1, getn(CITY_OPTIONS) do
		local tb = CITY_OPTIONS[i]
		if aryCondition[i].checkState() == 1 then
			tbDailog:AddOptEntry(tb[1], tb[2])
		end
	end
	tbDailog:Show()
end;

function NewcomerStationCommon(szMsg)
	if bilCheckDuaTop:FuncMain() then
		return
	end
--	check_update()					-- ���ܸ��¡����ɼӱ�ʶ��2004-05-31��
	if (GetLevel() >= 5) then
		if (WhichWarBegin() ~= 0) then
			Say(szMsg, 6, szStationOp[1], szStationOp[2], szStationOp[3], szStationOp[10], szStationOp[5], szStationOp_Cancel)
		elseif (GetGlbValue(2) == 1) then -- ����ѵ��ս��
			Say(szMsg, 6, szStationOp[1], szStationOp[2], szStationOp[3], szStationOp[10], szStationOp[6], szStationOp_Cancel)
		else
			if (GetTask(1021) == 4) then -- ���������Ұ��������Ѱ�ҵ�ͼ־������
				Say(szMsg, 6, szStationOp[1], szStationOp[2], szStationOp[3], szStationOp[10], szStationOp[8], szStationOp_Cancel)
			else
				Say(szMsg, 5, szStationOp[1], szStationOp[2], szStationOp[3], szStationOp[10], szStationOp_Cancel)
			end
		end;
	else		
		Talk(1,"","B�n ngo�i r�t lo�n l�c, xem b� d�ng kh�ng c�n ���c gi� c�a ng��i th� kh� m� b�o to�n t�nh m�ng! ")
	end
end;

function  StationOnCancel()
   Talk(1,"","C� ti�n th� h�y quay l�i nh�! ")
end;

----------------------------------------------

CP_MAPPOS_IN = {1508,3026}
CP_MAPTAB = {
				{396, 397, "Thi�u L�m"},
				{398, 399, "Thi�n V��ng"},
				{400, 401, "���ng M�n"},
			 	{402, 403, "Ng� ��c"},
			 	{404, 405, "Nga Mi"},
			 	{406, 407, "Th�y Y�n"},
			 	{408, 409, "C�i Bang"},
			 	{410, 411, "Thi�n Nh�n"},
			 	{412, 413, "V� �ang"},
			 	{414, 415, "C�n L�n"}
			 }

function transtoplace()
	Say("H�i tr��ng thi ��u v� l�m 'Ki�t xu�t' s� ti�n h�nh tr�n ��u c�c m�n ph�i, ng��i mu�n v�o kh�ng?", 2, "Ta mu�n v�o khu v�c thi ��u thi ��u 'Ki�t xu�t'/transtoplace_sure", "��i m�t l�t �i!/OnCancel")
end

function transtoplace_sure()

	if (GetLastFactionNumber() == -1) then
		Say("V� l�m minh ch� c� l�nh: Gi�i thi ��u 'Ki�t xu�t' c�a v� l�m m�n ph�i ch� h�n ch� cho 10 ��i m�n ph�i tham gia. Ng��i kh�ng c� m�n ph�i n�o h�t trong v� l�m, kh�ng th� t�y ti�n tham gia ���c, mau gia nh�p th�p ��i m�n ph�i, r�i ��n ��ng k� sau!", 0)
		return
	else
		if(GetLastFactionNumber() == 0) then
			NewWorld(CP_MAPTAB[1][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		elseif (GetLastFactionNumber() == 1) then
			NewWorld(CP_MAPTAB[2][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		elseif (GetLastFactionNumber() == 2) then
			NewWorld(CP_MAPTAB[3][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		elseif (GetLastFactionNumber() == 3) then
			NewWorld(CP_MAPTAB[4][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--�嶾
		elseif (GetLastFactionNumber() == 4) then
			NewWorld(CP_MAPTAB[5][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		elseif (GetLastFactionNumber() == 5) then
			NewWorld(CP_MAPTAB[6][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		elseif (GetLastFactionNumber() == 6) then
			NewWorld(CP_MAPTAB[7][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--ؤ��
		elseif (GetLastFactionNumber() == 7) then
			NewWorld(CP_MAPTAB[8][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		elseif (GetLastFactionNumber() == 8) then
			NewWorld(CP_MAPTAB[9][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--�䵱
		elseif (GetLastFactionNumber() == 9) then
			NewWorld(CP_MAPTAB[10][1], CP_MAPPOS_IN[1], CP_MAPPOS_IN[2])--����
		end
		Msg2Player("B�n �� v�o ��u tr��ng V� l�m ki�t xu�t")
	end
end

-- ���ڴ���һ��ѡ��ĶԻ����� Say(""...);
-- Edited by peres
function SelectSay(strSay)

local strMsg,strSel = "","";
local strNum = getn(strSay);

	if strNum < 2 then
		return
	end;
	
	if strNum > 2 then
		for i=2,strNum - 1 do
			strSel = strSel..format("%q", strSay[i])..",";
		end;
		strSel = strSel..format("%q", strSay[strNum]);
		strMsg = "Say("..format("%q", strSay[1])..","..(strNum - 1)..","..strSel..");";
	elseif strNum == 2 then
		strSel = format("%q", strSay[strNum]);
		strMsg = "Say("..format("%q", strSay[1])..",1"..","..strSel..");";
	end
	dostring(strMsg)
end


