Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\namcung\\namcung_gm.lua")
Include("\\script\\global\\namcung\\hotrothem.lua")

function main()
	str = "Ch�o m�ng c�c b�n �� tham gia th� gi�i <color=red>V� L�m Truy�n K�<color> ���c ph�t tri�n b�i <color=green>TREXLOG TEAM<color> M�i chi ti�t xin li�n h�..<color=green>..www.trexlog.com �� nh�n ���c s� h� tr� khi c�n thi�t...."
	AddGlobalCountNews(str, 2)
	local szTitle = "<npc>H� tr� GM. C�u Ni�n T��ng Ph�ng...!<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t..! Script--GM edit by--- <color=green>Th�ng H�n Pro<color> t�i blog <color=yellow>thonghon123.blogspot.com <color>"
	local tbOpt =
	{
		--{"H� tr� Test", nacu},
		{"Tho�t.."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function nacu()
dialog_main()
end


