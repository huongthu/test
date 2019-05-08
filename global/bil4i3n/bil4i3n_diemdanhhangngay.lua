Include("\\script\\global\\bil4i3n\\bil4i3n_tasklist.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
_bilTitleLQ = "<color=Orange>L� Quan: <color>"

function bilDailyMuster() -- Main
	local bilTbOp = {}
	tinsert(bilTbOp, "T�i h� ��n �� �i�m danh!/bilGoMuster")
	tinsert(bilTbOp, "T�i h� mu�n xem s� l��t �i�m danh c�a m�nh./bilMyTimesMuster")
	tinsert(bilTbOp, "Ta mu�n t�m hi�u v� ho�t ��ng n�y./bilAboutMuster")
	tinsert(bilTbOp, "K�t th�c ��i tho�i./OnCancel")
	Say(_bilTitleLQ.."Nh�m kh�ch l� tinh th�n th��ng v� c�a c�c v�s� trung nguy�n, t�ng th��ng cho c�c ��i hi�p c� �   ch� ki�n c��ng, luy�n t�p chuy�n c�n, ��c c� minh ch�"
			.."�� �em ��n nh�ng ph�n th��ng h�p d�n v� phong ph� <enter>d�nh t�ng cho nh�ng ng��i x�ng ��ng nh�t!", getn(bilTbOp), bilTbOp)
end

_bilTbAwardDailyMuster = 
{
	[1] = 
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[1] = {bilItem = {6, 1, 440, 0, 0,0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			-- [7] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [8] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [9] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[2] =
		{
			[1] = {bilItem = {6, 0, 1, 1, 0,0, 0}, bilItemName = "Tr��ng m�nh ho�n",},
			[2] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia b�o ho�n",},
			[3] = {bilItem = {6, 1, 440, 0, 0,0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[4] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[5] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[6] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[7] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[8] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			-- [5] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[3] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0, 0, 0}, bilItemName = "Thi�t la h�n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {bilItem = {6, 0, 6, 1, 0, 0, 0}, bilItemName = "Phi t�c ho�n",},
			[3] = {bilItem = {6, 0, 2, 1, 0, 0, 0}, bilItemName = "Gia b�o ho�n",},
			[4] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			-- [7] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [8] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Vi�m �� l�nh",},
			
			-- [6] = {bilItem = {6, 1, 904, 1, 0, 0, 0}, bilItemName = "Qu� Huy Ho�ng (th�p)",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[4] =
		{
			[1] = {bilItem = {6, 0, 3, 1, 0, 0, 0}, bilItemName = "��i l�c ho�n",},
			[2] = {bilItem = {6, 0, 4, 1, 0, 0, 0}, bilItemName = "Cao thi�m ho�n",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[4] = {bilItem = {6, 0, 6, 1, 0, 0, 0}, bilItemName = "Phi t�c ho�n",},
			[5] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[6] = {bilItem = {6, 1, 23, 0, 0, 0, 0}, bilItemName = "Thi�t la h�n",},
			-- [3] = {bilItem = {6, 1, 15, 0, 0, 0, 0}, bilItemName = "Phi Phong",},
			-- [6] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [7] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[5] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0, 0, 0}, bilItemName = "Thi�t la h�n",},
			-- [3] = {bilItem = {6, 1, 904, 1, 0, 0, 0}, bilItemName = "Qu� Huy Ho�ng (th�p)",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
			[3] = {bilItem = {6, 0, 3, 1, 0, 0, 0}, bilItemName = "��i l�c ho�n",},
			[4] = {bilItem = {6, 0, 4, 1, 0, 0, 0}, bilItemName = "Cao thi�m ho�n",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[6] = {bilItem = {6, 0, 6, 1, 0, 0, 0}, bilItemName = "Phi t�c ho�n",},
			-- [7] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[6] =
		{
			-- [1] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [6] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Vi�m �� l�nh",},
			[1] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[2] = {bilItem = {6, 1, 23, 0, 0, 0, 0}, bilItemName = "Thi�t la h�n",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[7] =
		{
			-- [1] = {bilItem = {6, 1, 905, 1, 0, 0, 0}, bilItemName = "Qu� Huy Ho�ng (trung)",},
			-- [2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [4] = {bilItem = {6, 1, 23, 0, 0, 0, 0}, bilItemName = "Thi�t la h�n",},
			[1] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[2] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[8] =
		{
			[1] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[2] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B�ch Qu� L�",},
			[3] = {bilItem = {6, 1, 23, 0, 0, 0, 0}, bilItemName = "Thi�t la h�n",},
			[4] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[5] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[6] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[7] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			-- [4] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[9] =
		{
			
			-- [2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			-- [3] = {bilItem = {6, 1, 125, 0, 0, 0, 0}, bilItemName = "Qu� Hoa T�u",},
			-- [4] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [6] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B�ch Qu� L�",},
			-- [2] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[1] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[2] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			-- [12] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [13] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [14] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[10] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			[6] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[7] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Ti�n Th�o L�",},
			[8] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			[9] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [3] = {bilItem = {6, 1, 124, 0, 0, 0, 0}, bilItemName = "Ph�c Duy�n L� (��i)",},
			-- [6] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
			-- [9] = {bilItem = {6, 1, 1257, 0, 0, 0, 0}, bilItemName = "L�nh b�i vinh d� H�n thi�t",},
			-- [10] = {bilItem = {6, 1, 1448, 0, 0, 0, 0}, bilItemName = "M�c B�c Truy�n T�ng L�nh",},
			-- [14] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [15] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [16] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[11] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [4] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [5] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Vi�m �� l�nh",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[12] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [9] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [10] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
			
		},
	[13] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			-- [3] = {bilItem = {6, 1, 123, 0, 0, 0, 0}, bilItemName = "Ph�c Duy�n L� (Trung)",},
			-- [4] = {bilItem = {6, 1, 906, 1, 0, 0, 0}, bilItemName = "Qu� Huy Ho�ng (cao)",},
			-- [6] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[1] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[14] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[2] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			-- [2] = {bilItem = {6, 1, 1392, 0, 0, 0, 0}, bilItemName = "H�p l� v�t v��t �i",},
			-- [3] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
			-- [4] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [5] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Ti�n Th�o L�",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[15] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[3] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[4] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[6] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [6] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Vi�m �� l�nh",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[16] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [4] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [9] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [10] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[17] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[3] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[4] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[6] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [6] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Vi�m �� l�nh",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[18] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			[6] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			-- [3] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
			-- [4] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [6] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[19] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[4] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[5] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[6] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [4] = {bilItem = {6, 1, 906, 1, 0, 0, 0}, bilItemName = "Qu� Huy Ho�ng (cao)",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[20] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[2] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			[6] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[7] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Ti�n Th�o L�",},
			[8] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
			[9] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[10] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [3] = {bilItem = {6, 1, 906, 0, 0, 0, 0}, bilItemName = "Qu� Huy Ho�ng (cao)",},
			-- [4] = {bilItem = {6, 1, 124, 0, 0, 0, 0}, bilItemName = "Ph�c Duy�n L� (��i)",},
			-- [10] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Vi�m �� l�nh",},
			-- [11] = {bilItem = {6, 1, 1257, 0, 0, 0, 0}, bilItemName = "L�nh b�i vinh d� H�n thi�t",},
			-- [12] = {bilItem = {6, 1, 1448, 0, 0, 0, 0}, bilItemName = "M�c B�c Truy�n T�ng L�nh",},
			-- [16] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [17] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [18] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[21] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[1] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh s�n h� x� t�c x100",},
			[3] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			-- [4] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[22] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[2] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[3] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh S�n H� X� T�c (100)",},
			[4] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[5] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[6] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[7] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[8] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			-- [5] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[23] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			-- [2] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh S�n H� X� T�c (100)",},
			[2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[3] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B�ch Qu� L�",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[24] =
		{
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[2] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[3] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[4] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			[5] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh S�n H� X� T�c (100)",},
			[6] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[7] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B�ch Qu� L�",},
			[8] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[9] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			-- [2] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			-- [8] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Vi�m �� l�nh",},
			-- [12] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [13] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [14] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[25] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			-- [2] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh S�n H� X� T�c (100)",},
			[2] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[3] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[4] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B�ch Qu� L�",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[6] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[7] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[26] =
		{
			-- [2] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
			-- [3] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh S�n H� X� T�c (100)",},
			[3] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[4] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B�ch Qu� L�",},
			[5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[6] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[7] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[8] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[9] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			-- [12] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [13] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [14] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[27] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			-- [2] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh S�n H� X� T�c (100)",},
			[2] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[3] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B�ch Qu� L�",},
			[4] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[6] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[7] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[28] =
		{
			-- [2] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			[1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			[2] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh S�n H� X� T�c (100)",},
			[3] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[4] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B�ch Qu� L�",},
			[5] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[6] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[7] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[8] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[29] =
		{
			-- [1] = {bilItem = {6, 1, 23, 0, 0,0, 0}, bilItemName = "Thi�t la h�n",},
			-- [2] = {bilItem = {6, 1, 400, 90, random(0,4), 0, 0}, bilItemName = "S�t th� gi�n",},
			[1] = {bilItem = {6, 1, 440, 0, 0, 0, 0}, bilItemName = "M�nh S�n H� X� T�c (100)",},
			[2] = {bilItem = {6, 1, 72, 0, 0, 0, 0}, bilItemName = "Thi�n s�n B�o L�",},
			[3] = {bilItem = {6, 1, 73, 0, 0, 0, 0}, bilItemName = "B�ch Qu� L�",},
			[4] = {bilItem = {6, 1, 155, 0, 0,0, 0}, bilItemName = "Phong V�n Chi�u th�",},
			[5] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[6] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[7] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			-- [10] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [11] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [12] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[30] =
		{
			[1] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
			[2] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Ti�n Th�o L�",},
			[3] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[4] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[5] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			[6] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[7] = {bilItem = {6, 1, 12, 0, 0, 0, 0}, bilItemName = "B�n Nh��c T�m Kinh",},
			-- [6] = {bilItem = {6, 1, 124, 0, 0, 0, 0}, bilItemName = "Ph�c Duy�n L� (��i)",},
			-- [2] = {bilItem = {6, 1, 2424, 4, 0, 0, 0}, bilItemName = "��i Th�nh B� K�p 90",},
			-- [4] = {bilItem = {6, 1, 26, 0, 0, 0, 0}, bilItemName = "V� L�m M�t T�ch",},
			-- [5] = {bilItem = {6, 1, 22, 0, 0, 0, 0}, bilItemName = "T�y T�y Kinh",},
			-- [7] = {bilItem = {6, 1, 1427, 0, 0, 0, 0}, bilItemName = "T� M�u L�nh",},
			-- [8] = {bilItem = {6, 1, 1448, 0, 0, 0, 0}, bilItemName = "M�c B�c Truy�n T�ng L�nh",},
			-- [9] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Vi�m �� l�nh",},
			-- [11] = {bilItem = {6, 1, 1257, 0, 0, 0, 0}, bilItemName = "L�nh b�i vinh d� H�n thi�t",},
			-- [16] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [17] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [18] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[40] =
		{
			[1] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
			[2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[3] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Ti�n Th�o L�",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			[7] = {bilItem = {6, 1, 1427, 0, 0, 0, 0}, bilItemName = "T� M�u L�nh",},
			[8] = {bilItem = {6, 1, 12, 0, 0, 0, 0}, bilItemName = "B�n Nh��c T�m Kinh",},
			-- [3] = {bilItem = {6, 1, 26, 0, 0, 0, 0}, bilItemName = "V� L�m M�t T�ch",},
			-- [4] = {bilItem = {6, 1, 22, 0, 0, 0, 0}, bilItemName = "T�y T�y Kinh",},
			-- [5] = {bilItem = {6, 1, 124, 0, 0, 0, 0}, bilItemName = "Ph�c Duy�n L� (��i)",},
			-- [7] = {bilItem = {6, 1, 1448, 0, 0, 0, 0}, bilItemName = "M�c B�c Truy�n T�ng L�nh",},
			-- [8] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Vi�m �� l�nh",},
			-- [10] = {bilItem = {6, 1, 1257, 0, 0, 0, 0}, bilItemName = "L�nh b�i vinh d� H�n thi�t",},
			-- [15] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [16] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [17] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[50] =
		{
			[1] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
			[2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[3] = {bilItem = {6, 1, 12, 0, 0, 0, 0}, bilItemName = "B�n Nh��c T�m Kinh",},
			[4] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Ti�n Th�o L�",},
			[5] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[6] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[7] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			-- [3] = {bilItem = {6, 1, 26, 0, 0, 0, 0}, bilItemName = "V� L�m M�t T�ch",},
			-- [4] = {bilItem = {6, 1, 22, 0, 0, 0, 0}, bilItemName = "T�y T�y Kinh",},
			-- [5] = {bilItem = {6, 1, 124, 0, 0, 0, 0}, bilItemName = "Ph�c Duy�n L� (��i)",},
			-- [6] = {bilItem = {6, 1, 1427, 0, 0, 0, 0}, bilItemName = "T� M�u L�nh",},
			-- [7] = {bilItem = {6, 1, 1448, 0, 0, 0, 0}, bilItemName = "M�c B�c Truy�n T�ng L�nh",},
			-- [8] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Vi�m �� l�nh",},
			-- [10] = {bilItem = {6, 1, 1257, 0, 0, 0, 0}, bilItemName = "L�nh b�i vinh d� H�n thi�t",},
			-- [15] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [16] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [17] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
	[60] =
		{
			[1] = {bilItem = {4, 489, 0, 0, 0, 0, 0}, bilItemName = "L�nh b�i Phong L�ng ��",},
			[2] = {bilItem = {6, 1, 910, 0, 0, 0, 0}, bilItemName = "Bao D��c ho�n",},
			[3] = {bilItem = {6, 1, 71, 0, 0, 0, 0}, bilItemName = "Ti�n Th�o L�",},
			[4] = {bilItem = {6, 0, 6, 1, 0,0, 0}, bilItemName = "Phi t�c ho�n",},
			[5] = {bilItem = {6, 0, 2, 1, 0,0, 0}, bilItemName = "Gia B�o ho�n",},
			[6] = {bilItem = {6, 0, 3, 1, 0,0, 0}, bilItemName = "��i L�c ho�n",},
			[7] = {bilItem = {6, 1, 1427, 0, 0, 0, 0}, bilItemName = "T� M�u L�nh",},
			[8] = {bilItem = {6, 1, 12, 0, 0, 0, 0}, bilItemName = "B�n Nh��c T�m Kinh",},
			-- [3] = {bilItem = {6, 1, 124, 0, 0, 0, 0}, bilItemName = "Ph�c Duy�n L� (��i)",},
			-- [5] = {bilItem = {6, 1, 1448, 0, 0, 0, 0}, bilItemName = "M�c B�c Truy�n T�ng L�nh",},
			-- [6] = {bilItem = {6, 1, 2425, 4, 0, 0, 0}, bilItemName = "��i Th�nh B� K�p 120",},
			-- [7] = {bilItem = {6, 1, 1617, 0, 0,0, 0}, bilItemName = "Vi�m �� l�nh",},
			-- [9] = {bilItem = {6, 1, 1257, 0, 0, 0, 0}, bilItemName = "L�nh b�i vinh d� H�n thi�t",},
			-- [14] = {bilItem = {6, 1, 150, 1, random(0,4),0, 0}, bilItemName = "Kh�ng T��c Nguy�n Th�ch",},
			-- [15] = {bilItem = {6, 1, 152, 1, random(0,4),0, 0}, bilItemName = "Ph� Dung Nguy�n Th�ch",},
			-- [16] = {bilItem = {6, 1, 154, 1, random(0,4),0, 0}, bilItemName = "Chung Nh� Nguy�n Th�ch",},
		},
}

-- _bilTbAwardDailyMusterEXP = {
	-- [10] = {10000000, "10 Tri�u"},
	-- [20] = {20000000, "20 Tri�u"},
	-- [30] = {30000000, "30 Tri�u"},
	-- [40] = {40000000, "40 Tri�u"},
	-- [50] = {50000000, "50 Tri�u"},
	-- [60] = {60000000, "60 Tri�u"},
-- }
_bilTbAwardDailyMusterEXP = {
	[10] = {5000000, "5 Tri�u"},
	[20] = {10000000, "10 Tri�u"},
	[30] = {15000000, "15 Tri�u"},
	[40] = {20000000, "20 Tri�u"},
	[50] = {25000000, "25 Tri�u"},
	[60] = {30000000, "30 Tri�u"},
}

function bilAward2Player(bilSel)
	Msg2Player("Ph�n th��ng �i�m danh l�n th�: <color=yellow>"..Bil_GetTask(14))
	local bilSelExp = bilSel
	if bilSelExp > 60 then bilSelExp = 60 end
	if(mod(bilSelExp, 10) == 0) then
		AddOwnExp(_bilTbAwardDailyMusterEXP[bilSelExp][1])
		Msg2Player("<color=yellow>Nh�n th��ng th�m ".._bilTbAwardDailyMusterEXP[bilSelExp][2].." �i�m kinh nghi�m!")
		Msg2SubWorld("<color=yellow>Ng��i ch�i "..GetName().." �i�m danh l�n th� "..Bil_GetTask(14).." �� nh�n th��ng th�m ".._bilTbAwardDailyMusterEXP[bilSelExp][2].." �i�m kinh nghi�m!")
		AddLocalNews("<color=yellow>Ng��i ch�i "..GetName().." �i�m danh l�n th� "..Bil_GetTask(14).." �� nh�n th��ng th�m ".._bilTbAwardDailyMusterEXP[bilSelExp][2].." �i�m kinh nghi�m!")
	end
	if bilSel > 30 and bilSel < 40 then
		bilSel = bilSel - 30
	elseif bilSel > 40 and bilSel < 50 then
		bilSel = bilSel - 30
	elseif bilSel > 50 and bilSel < 60 then
		bilSel = bilSel - 30
	elseif bilSel > 60 and bilSel < 120 then
		bilSel = bilSel - 60
	end
	for bilLoop = 1, getn(_bilTbAwardDailyMuster[bilSel]) do
		-- local nItemIndex = AddItem(unpack(_bilTbAwardDailyMuster[bilSel][bilLoop].bilItem))
		local nItemIndex = AddItemNoStack(unpack(_bilTbAwardDailyMuster[bilSel][bilLoop].bilItem))
		if (_bilTbAwardDailyMuster[bilSel][bilLoop].bilItem[3] ~= 150 and _bilTbAwardDailyMuster[bilSel][bilLoop].bilItem[3] ~= 152 and _bilTbAwardDailyMuster[bilSel][bilLoop].bilItem[3] ~= 154) then
			SetItemBindState(nItemIndex, -2)
		end
		Msg2Player("<color=yellow>".._bilTbAwardDailyMuster[bilSel][bilLoop].bilItemName)
	end
	return Talk(1, "bilMyTimesMuster", _bilTitleLQ.."�� ti�n h�nh �i�m danh l�n th� <color=green>"..Bil_GetTask(14).."<color> th�nh c�ng!")
end

function bilProcMusterDayTimes(bilDateMuster, bilNowDateMuster)
	local TD, ND = bilDateMuster, bilNowDateMuster
	local DTs, MonthTD, MonthND = 0, tonumber(strsub(TD, 3, 4)), tonumber(strsub(ND, 3, 4))
	if MonthND > MonthTD then
		if tonumber(strsub(TD, 5, 6)) == 30 or tonumber(strsub(TD, 5, 6)) == 31 then
			return tonumber(strsub(ND, 5, 6)) + (((MonthND - MonthTD) * 30) - 30)
		else
			return ((30 - tonumber(strsub(TD, 5, 6))) + tonumber(strsub(ND, 5, 6))) + (((MonthND - MonthTD) * 30) - 30)
		end
	else
		return ND - TD
	end
end

function bilGoMuster()
	local bilNowTimes, bilDateMuster, bilNowDateMuster = Bil_GetTask(14), Bil_GetTask(15), tonumber(date("%y%m%d"))
	if bilDateMuster >= bilNowDateMuster then
		return Say(_bilTitleLQ.."H�m nay ��i hi�p �� ti�n h�nh �i�m danh r�i,h�y ��i ��n h�m sau �i�m danh ti�p, c�c ph�n th��ng  c�a ng�y h�m sau c� th� xem � m�c xem s� l��t �i�m   danh c�a m�nh!", 1, "Ta bi�t r�i!/OnCancel")
	end
	
	local checkNot = nil
	local checkNot_nowDay = tonumber(date("%d"))
	local checkNot_nowMonth = tonumber(date("%m"))
	
	if ((checkNot_nowMonth - 1) == 2) and (tonumber(date("%y")..(checkNot_nowMonth - 1).."28") > bilDateMuster) then
		checkNot = 1
		SetTask(5986, (bilNowDateMuster - ((tonumber(date("%y")..(checkNot_nowMonth - 1).."28") - bilDateMuster)) + 1))
	elseif (tonumber(date("%y")..(checkNot_nowMonth - 1).."30") > bilDateMuster) then
		checkNot = 1
		SetTask(5986, (bilNowDateMuster - ((tonumber(date("%y")..(checkNot_nowMonth - 1).."30") - bilDateMuster)) + 1))
	end
	
	------------------------------------------------------------------------------ FIX BUG IN MONTH 10.2017 ---------------------------------------------------------------------------------
		if checkNot_nowMonth == 10 and GetTask(5986) <= 170930 then
			SetTask(5986, (bilNowDateMuster - 1))
		end
	------------------------------------------------------------------------------ FIX BUG IN MONTH 10.2017 ---------------------------------------------------------------------------------
	
	bilDateMuster = GetTask(5986)
	
	if (bilDateMuster < bilNowDateMuster - 1) and bilDateMuster ~= 0 then
		local bilMissDayTimes = bilProcMusterDayTimes(bilDateMuster, bilNowDateMuster)
		return Say(_bilTitleLQ.."V� ��i hi�p �� l� m�t nh�p �i�m danh li�n <enter>t�c c�a m�nh, th�i gian �i�m danh l�n tr��c c�ch ��y �� <color=yellow>"..bilMissDayTimes.."<color> ng�y, n�u kh�ng �i�m danh b� th� s� l�n �i�m <enter>danh m�i s� b�t ��u l�i t� ��u!", 3, 
							"Ng�i gi�p ta �i�m danh b� l�i c�c ng�y �� v�ng!./bilRecompenseMuster",
							"Th�i, ta mu�n �i�m danh l�i t� ��u./bilNewMuster",
							"Ng�i cho ta suy ngh� l�i ��!/OnCancel"
							)
	end
	
	local a = (Bil_GetTask(14) + 1)
	
	if a > 30 then
		if mod(a, 10) == 0 then
			a = (a > getn(_bilTbAwardDailyMuster)) and getn(_bilTbAwardDailyMuster) or a
		else
			a = (a - (floor(a/30) * 30))
		end
	end
	
	if CalcFreeItemCellCount() < getn(_bilTbAwardDailyMuster[a]) then
		return Say(_bilTitleLQ.."�� nh�n th��ng y�u c�u ��i hi�p h�y s�p x�p l�i h�nh trang c�a m�nh, c�n �t nh�t <color=green>"..(getn(_bilTbAwardDailyMuster[a])).." <color>� tr�ng!",0)
	end
	Bil_SetTask(14, Bil_GetTask(14) + 1)
	Bil_SetTask(15, bilNowDateMuster)
	return bilAward2Player(a)
end

function bilRecompenseMuster()
	local bilMissDayTimes = bilProcMusterDayTimes(Bil_GetTask(15), tonumber(date("%y%m%d")))
	Talk(2, "bilRecompenseMusterInput", _bilTitleLQ.."��i hi�p �� b� l� m�t <color=yellow>"..bilMissDayTimes.."<color> l�n �i�m danh, v� <enter>v�y ��c c� minh ch� c�n thu h�i <color=yellow>"..bilMissDayTimes.."<color> <color=fire>T� th�y tinh<color> �� b� cho s� ng�y �� b�.", "Ph�n th��ng c�a c�c ng�y h�m tr��c �� b� s� kh�ng th�nh�n l�i, ch� c� th� nh�n ph�n th��ng c�a ng�y h�m <enter>nay th�i!")
end

function bilRecompenseMusterInput()
	local bilTimesLost =  bilProcMusterDayTimes(Bil_GetTask(15), tonumber(date("%y%m%d")))
	return GiveItemUI("�i�m danh b� "..bilTimesLost.." l�n","Xin ��t "..bilTimesLost.." T� th�y tinh cho "..bilTimesLost.." l�n �i�m danh b�", "bilRecompenseMusterSure", "OnCancel" );
end

function bilRecompenseMusterSure(bilCount)
	local bilTimesLost =  bilProcMusterDayTimes(Bil_GetTask(15), tonumber(date("%y%m%d")))
	local bilIdxItem
	if bilCount ~= bilTimesLost then
		return Say(_bilTitleLQ.."��c c� minh ch� ch� c�n <color=yellow>"..bilTimesLost.."<color><color=fire> T� th�y tinh!<color>", 2, "Ta nh�m, �� ta ��t l�i/bilRecompenseMusterInput", "Ah, ta qu�n m�t, �� ta �i l�y l� v�t./OnCancel")
	end
	for i = 1, bilCount do
		bilIdxItem = GetGiveItemUnit(i)
		bilG, bilD, bilP = GetItemProp(bilIdxItem)
		if bilG ~= 4 and bilD ~= 239 then
			return Say(_bilTitleLQ.."��c c� minh ch� ch� c�n <color=yellow>"..bilTimesLost.."<color><color=fire> T� th�y tinh!<color>", 2, "Ta nh�m, �� ta ��t l�i/bilRecompenseMusterInput", "Ah, ta qu�n m�t, �� ta �i l�y l� v�t./OnCancel")
		end
	end
	for i = 1, bilCount do
		bilIdxItem = GetGiveItemUnit(i);
		RemoveItemByIndex(bilIdxItem);
	end
	Bil_SetTask(14, Bil_GetTask(14) + bilCount)
	Bil_SetTask(15, tonumber(date("%y%m%d")))
	return bilAward2Player(Bil_GetTask(14))
end

function bilNewMuster()
	return Say(_bilTitleLQ.."�� ti�n h�nh �i�m danh l�i, to�n b� s� l�n �i�m danh tr��c ��y s� b� x�a b� v� tr� v� v� tr� xu�t ph�t, c�n r�t nhi�u ph�n th��ng kh�ng th� ng� ��n � ��ng sau ng��i kh�ng h�i ti�c �?", 2, "Ta �� suy ngh� k�, mu�n �i�m danh l�i!/bilNewMusterSure", "Ng�i cho ta suy ngh� l�i c�i ��!/OnCancel")
end

function bilNewMusterSure()
	Bil_SetTask(14, 1)
	Bil_SetTask(15, tonumber(date("%y%m%d")))
	return bilAward2Player(Bil_GetTask(14))
end

function bilMyTimesMuster()
	local a = (Bil_GetTask(14) + 1)
	
	if a > 30 then
		if mod(a, 10) == 0 then
			a = (a > getn(_bilTbAwardDailyMuster)) and getn(_bilTbAwardDailyMuster) or a
		else
			a = (a - (floor(a/30) * 30))
		end
	end
	
	local bilStrItem = ""
	for i = 1, getn(_bilTbAwardDailyMuster[a]) do 
		bilStrItem = bilStrItem.._bilTbAwardDailyMuster[a][i].bilItemName.."\n"
	end
	-- CreateNewSayEx(_bilTitleLQ.."T�ng s� l��t �i�m danh li�n t�c c�a ��i hi�p l�: <color=green>"..bilTimes.."<color>, Ph�n th��ng cho l�n �i�m danh k� ti�p l�:<enter><color=yellow>"..bilStrItem.."<color>", {{"Ta bi�t r�i!", OnCancel},})
	CreateNewSayEx("<npc>T�ng s� l��t �i�m danh li�n t�c c�a ��i hi�p l�: <color=green>"..(Bil_GetTask(14)).."<color>, Ph�n th��ng cho l�n �i�m danh k� ti�p l�:<enter><color=yellow>"..bilStrItem.."<color>", {{"Ta bi�t r�i!", OnCancel},})
end

function bilAboutMuster()
	-- CreateNewSayEx(_bilTitleLQ.."�i�m danh h�ng ng�y s� nh�n ���c nh�ng <color=green>ph�n  th��ng phong ph�<color>, c� gi� tr� t� ��c c� minh ch�, y�u  c�u ng��i �i�m danh ph�i <color=yellow>li�n t�c<color> n�u mu�n nh�n ph�n  th��ng c�a ng�y ti�p theo, n�u trong ng�y ti�p theo   kh�ng �i�m danh th� <color=yellow>t�ng s� l��t �i�m danh ���c s� b�t��u l�i t� ��u<color>, ��c c� minh ch� c�n nh�ng ng��i c� <enter>t�nh ki�n tr� v� kh� luy�n!, danh s�ch c�c ph�n th��ng��i hi�p c� th� tham kh�o � <color=green>C�m Nang ��ng H�nh<color>.", {{"Ta bi�t r�i!", OnCancel},})
	CreateNewSayEx("<npc>�i�m danh h�ng ng�y s� nh�n ���c nh�ng <color=green>ph�n  th��ng phong ph�<color>, c� gi� tr� t� ��c c� minh ch�, y�u  c�u ng��i �i�m danh ph�i <color=yellow>li�n t�c<color> n�u mu�n nh�n ph�n  th��ng c�a ng�y ti�p theo, n�u trong ng�y ti�p theo   kh�ng �i�m danh th� <color=yellow>t�ng s� l��t �i�m danh ���c s� b�t��u l�i t� ��u<color>, ��c c� minh ch� c�n nh�ng ng��i c� <enter>t�nh ki�n tr� v� kh� luy�n!, danh s�ch c�c ph�n th��ng��i hi�p c� th� tham kh�o � <color=green>C�m Nang ��ng H�nh<color>.", {{"Ta bi�t r�i!", OnCancel},})
end

function OnCancel() end