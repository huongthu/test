Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\namcung\\namcung_gm.lua")
Include("\\script\\global\\namcung\\hotrothem.lua")

function main()
	str = "Chµo mõng c¸c b¹n ®· tham gia thÕ giíi <color=red>Vâ L©m TruyÒn Kú<color> ®­îc ph¸t triÓn bëi <color=green>TREXLOG TEAM<color> Mäi chi tiÕt xin liªn hÖ..<color=green>..www.trexlog.com ®Ó nhËn ®­îc sù hæ trî khi cÇn thiÕt...."
	AddGlobalCountNews(str, 2)
	local szTitle = "<npc>Hæ trî GM. C÷u Niªn T­¬ng Phïng...!<enter>Hoan nghªnh c¸c anh hïng hµo kiÖt..! Script--GM edit by--- <color=green>Th«ng Hên Pro<color> t¹i blog <color=yellow>thonghon123.blogspot.com <color>"
	local tbOpt =
	{
		--{"Hæ trî Test", nacu},
		{"Tho¸t.."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function nacu()
dialog_main()
end


