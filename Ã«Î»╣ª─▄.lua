-- 钱庄功能.lua		Ⅳ红包的标准文件
-- By Dan_Deng(2003-12-31)
-- Update: Dan_Deng(2004-01-06) 将银票功能移出到临安钱庄独有
Include("\\script\\global\\head_qianzhuang.lua") -- 钱庄头文件
IncludeForRegionVer("\\script\\global\\", "gamebank_proc.lua")

function main_proc()
	dofile("script/global/钱庄功能.lua");
	if (GetSex() == 0) then
		Say("g ch� ti襫 trang:  V� thi誹 hi謕 kia c莕 l穙 phu gi髉 g� ? ",3,"Зy c� b竛 bao l� x� kh玭g ? /buy_sele","Ta mu鑞 i nguy猲 b秓 th祅h ti襫 ng./change_ingot_to_coin","Ta ch� gh� qua th玦./no")
	else
		Say("g ch� ti襫 trang:  V� c� nng kia c莕 l穙 phu gi髉 g� ? ",3,"Зy c� b竛 bao l� x� kh玭g ? /buy_sele","Ta mu鑞 i nguy猲 b秓 th祅h ti襫 ng./change_ingot_to_coin","Ta ch� gh� qua th玦./no")
	end
end
------------ Ⅱ红包 ---------------------
function buy_sele()
	Say("Л頲 頲, ch� n祔 ng l� c� b竛 bao l� x�, ti觰 h錸g bao 10v, i h錸g bao 100v.\nc bi謙 c� <color=green>H錸g bao nh� � v� H錸g bao m鮪g th�<color> c� th� c� nhi襲 <color=green>Ti襫 V筺<color> v� <color=yellow>Ti襫 уng<color>. \nNg礽 mu鑞 mua lo筰 n祇 ? ",5,"Ti觰 h錸g bao/buy1","Чi h錸g bao /buy2","H錸g bao nh� � /buy3","H錸g bao m鮪g th� /hesui_hongbao","Kh玭g mua n鱝./no")
	--Say("Л頲 頲, ch� n祔 ng l� c� b竛 bao l� x�, ti觰 h錸g bao 1v, i h錸g bao 10v, ngi mu鑞 mua lo筰 n祇 ? ",3,"Mua ti觰 h錸g bao/buy1","Mua i h錸g bao/buy2","Kh玭g mua n鱝./no")
end

function buy1()
	if (GetCash() >= 100000) then
		Pay(100000)
		AddItem(6,1,14,1,0,0,0)
		Talk(1,"","g ch� ti襫 trang: Зy l� Ti觰 h錸g bao c馻 ngi, xin h穣 c莔 l蕐!")
	else
		Talk(1,"","g ch� ti襫 trang: H﹜ d�! Ng礽 kh玭g c�  ti襫 r錳!")
	end
end

function buy2()
	if (GetCash() >= 1000000) then
		Pay(1000000)
		AddItem(6,1,13,1,0,0,0)
		Talk(1,"","g ch� ti襫 trang: Зy l� Чi h錸g bao c馻 ngi, xin h穣 c莔 l蕐!")
	else
		Talk(1,"","g ch� ti襫 trang: H﹜ d�! Ng礽 kh玭g c�  ti襫 r錳!")
	end
end

function buy3()
	if (GetCash() >= 10000000) then
		Pay(10000000)
		AddItem(6,1,13,1,0,0,0)
		Talk(1,"","g ch� ti襫 trang: Зy l� Чi h錸g bao c馻 ngi, xin h穣 c莔 l蕐!")
	else
		Talk(1,"","g ch� ti襫 trang: H﹜ d�! Ng礽 kh玭g c�  ti襫 r錳!")
	end
end

function no()
end

function hesui_hongbao()	--自定义铜钱
	AskClientForNumber("Package_Hesui", 1, 100, "Xin m阨 a v祇 ti襫 ng ");
end
function Package_Hesui(nMoney)
	if (CalcEquiproomItemCount(4, 417, 1, 1) < nMoney) then
		Talk(1,"","g ch� ti襫 trang: Ng礽 kh玭g mang  "..nMoney.." ti襫 ng.")
	else
		ConsumeEquiproomItem(nMoney, 4, 417, 1, -1)
		local nItem = AddItem(6,1,1052,1,0,0,0)
		SetSpecItemParam(nItem, 1, nMoney)
		SyncItem(nItem)
		Talk(1,"","g ch� ti襫 trang: Зy l� h錸g bao c馻 ngi, xin h穣 c莔 l蕐!")
	end
end


function ruyi_hongbao()		--自定义金钱
	AskClientForNumber("Package_Ruyi", 1, 10000000, "Xin m阨 a v祇 bao ti襫 l� x� ");
end
function Package_Ruyi(nMoney)
	if (GetCash() < nMoney) then
		Talk(1,"","g ch� ti襫 trang: ng礽 kh玭g mang  "..nMoney.." ")
	else
		Pay(nMoney)
		local nItem = AddItem(6,1,1051,1,0,0,0)
		SetSpecItemParam(nItem, 1, nMoney)
		local nM1 = floor(nMoney / 1000000)
		local nM2 = floor(mod(nMoney, 1000000))
		local nM3 = mod(nMoney, 1000)
		SetSpecItemParam(nItem, 2, nM1)
		SetSpecItemParam(nItem, 3, nM2)
		SetSpecItemParam(nItem, 4, nM3)
		SyncItem(nItem)
		Talk(1,"","g ch� ti襫 trang: Зy l� h錸g bao c馻 ngi, xin h穣 c莔 l蕐!")
	end
end
