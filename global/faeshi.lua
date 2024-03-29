--罚恶使
--hehongpeng 2004-12-27
Include("\\script\\global\\shangchenghead.lua")
--定义全局变量记录玩家要惩罚那个城市
nGlobalCityIndex = 0

CityData = {0, 0, 0, 0, 0, 0, 0};

function main()
	if (nil) then
		Say("Ch鴆 n╪g v蒼 ch璦 M� ra", 0)
		return
	end
	--读取存盘文件，保证只读取一次
	loadsavevalue()
	
	local aryszContent = 
	{
		"<#> Ta l� ngi tr鮪g ph箃 k� 竎, c� th� gi髉 g� cho h蕺p kh竎h?",
		"<#> T譵 hi觰 c玭g tr筺g c竎 th祅h th� /onchecknum",
		"<#> Tr鮪g ph箃 bang h閕 chi誱 l躰h Phng Tng /onpunish_fengxiang",
		"<#> Tr鮪g ph箃 bang h閕 chi誱 l躰h Th祅h Й/onpunish_chengdu",
		"<#> Tr鮪g ph箃 bang h閕 chi誱 l躰h Чi L� /onpunish_dali",
		"<#> Tr鮪g ph箃 bang h閕 chi誱 l躰h Bi謓 Kinh/onpunish_bianjing",
		"<#> Tr鮪g ph箃 bang h閕 chi誱 l躰h Tng Dng/onpunish_xiangyang",	
		"<#> Tr鮪g ph箃 bang h閕 chi誱 l躰h Dng Ch﹗/onpunish_yangzhou",
		"<#> Tr鮪g ph箃 bang h閕 chi誱 l躰h L﹎ An/onpunish_linan",		
		"<#> Nh﹏ ti謓 gh� qua th玦/oncancel",
	}
	
	--可以不可以用数组来实现
	local aryCallBackFun = {
		"/onpunish_fengxiang",
		"/onpunish_chengdu",
		"/onpunish_dali",
		"/onpunish_bianjing",
		"/onpunish_xiangyang",
		"/onpunish_yangzhou",
		"/onpunish_linan"
	}
	local nNum
	for nCityIndex=1, 7 do
		strTongName = GetCityOwner(nCityIndex)
		if (strTongName == nil or strTongName == "") then
			aryszContent[nCityIndex + 2] = "<#>"..arraycityindextoname[nCityIndex].."Kh玭g c� bang h閕 chi誱 l躰h, kh玭g th� ti課 h祅h tr鮪g ph箃/oncancel"
		else
			nNum = GetGlbValue(arraycitytoglobalvalue[nCityIndex])
			aryszContent[nCityIndex + 2] = "<#> Tr鮪g ph箃 bang h閕"..strTongName.."chi誱 l躰h th祅h th� "..arraycityindextoname[nCityIndex].." (C玭g tr筺g th祅h th�:"..nNum..")"..aryCallBackFun[nCityIndex]
		end
	end	
	
	Say(aryszContent[1], 9,	aryszContent[2],aryszContent[3],aryszContent[4],aryszContent[5],aryszContent[6],aryszContent[7],aryszContent[8],aryszContent[9], aryszContent[10]);
end 

function onpunish()
	--根据地图索引惩罚
	if (nGlobalCityIndex < 1) then
		Say("<#> Kh玭g c� th祅h th� n祇 c莕 tr鮪g ph箃", 0)
		return
	end

	local strCityTongName = GetCityOwner(nGlobalCityIndex)
	if (strCityTongName == nil or strCityTongName == "" ) then
		Say("<#> bang h閕 chi誱 l躰h <color=red>"..arraycityindextoname[nIndex].."<color> kh玭g ai chi誱 l躰h, kh玭g th� ti課 h祅h tr鮪g ph箃", 0)
		return
	end

	local strCityTongName = GetCityOwner(nGlobalCityIndex)
	local nNum = GetGlbValue(arraycitytoglobalvalue[nGlobalCityIndex])
	--打开给与界面
	GiveItemUI( "Giao n閜 Ph箃 竎 L謓h", "Tr鮪g ph箃 th祅h th� "..arraycityindextoname[nGlobalCityIndex]..", bang h閕 chi誱 l躰h th祅h th� "..strCityTongName..", hi謓 t筰 c玭g tr筺g c馻 th祅h  l�:"..nNum, "onsubmitconfirm", "oncancel" )
end

function onconfirm(nIndex)
	local strCityTongName = GetCityOwner(nIndex)
	if (strCityTongName == nil or strCityTongName == "" ) then
		Say("<#> bang h閕 chi誱 l躰h <color=red>"..arraycityindextoname[nIndex].."<color> kh玭g ai chi誱 l躰h, kh玭g th� ti課 h祅h tr鮪g ph箃", 0)
		return
	end

	--给全局变量赋值
	nGlobalCityIndex = nIndex	
	strMsg={	
		"<#> bang h閕 chi誱 l躰h <color=red>"..arraycityindextoname[nIndex].."<color>l�: <color=red>"..strCityTongName.."<color>, b筺 x竎 nh s� d鬾g Ph箃 竎 L謓h?",
		"<#> S� d鬾g/onpunish",
		"<#> в ta suy ngh� l筰!/oncancel"		
	};
	
	Say(strMsg[1], 2, strMsg[2], strMsg[3]);
end

function onpunish_fengxiang()
	onconfirm(1)
end

function onpunish_chengdu()
	onconfirm(2)
end

function onpunish_dali()
	onconfirm(3)
end

function onpunish_bianjing()
	onconfirm(4)
end

function onpunish_xiangyang()
	onconfirm(5)
end

function onpunish_yangzhou()
	onconfirm(6)
end

function onpunish_linan()
	onconfirm(7)
end
		
function oncancel()
	return
end

function onchecknum()
	--查询各帮会赏善令的数量
	local strTongName
	local nCityIndex
	local arr = {}
	local strInfo1 = ""
	local strInfo2 = ""
	for nCityIndex=1, 4 do
		strTongName = GetCityOwner(nCityIndex)
		local nNum = GetGlbValue(arraycitytoglobalvalue[nCityIndex])
		if (strTongName == nil or strTongName == "") then
			arr[nCityIndex] = "<#><color=red>"..arraycityindextoname[nCityIndex].."<color> Kh玭g ai chi誱 l躰h, c玭g tr筺g l�:<color=red>"..nNum.."<color>"
		else
			arr[nCityIndex] = "<#> bang h閕 chi誱 l躰h <color=red>"..arraycityindextoname[nCityIndex].."<color> l�: <color=red>"..strTongName.."<color>, c玭g tr筺g th祅h th� l�:<color=red>"..nNum.."<color>"
		end
		if (nCityIndex == 1) then
		    strInfo = arr[nCityIndex]
		elseif (nCityIndex == 2) then
		    strInfo = strInfo.."<enter>"..arr[nCityIndex]
		elseif (nCityIndex == 3) then
		    strInfo1 = arr[nCityIndex]
		elseif (nCityIndex == 4) then
		    strInfo1 = strInfo1.."<enter>"..arr[nCityIndex]
		end
	end
	
	--Talk(4, "onchecknum1", arr[1], arr[2], arr[3], arr[4])
	Talk(2, "onchecknum1", strInfo, strInfo1)
end

function onchecknum1()
	--查询各帮会赏善令的数量
	local strTongName
	local nCityIndex
	local arr = {}
	local strInfo = ""
	local strInfo1 = ""
	for nCityIndex=5, 7 do
		strTongName = GetCityOwner(nCityIndex)
		local nNum = GetGlbValue(arraycitytoglobalvalue[nCityIndex])
		if (strTongName == nil or strTongName == "") then
			arr[nCityIndex] = "<#><color=red>"..arraycityindextoname[nCityIndex].."<color> kh玭g ai chi誱 l躰h, c玭g tr筺g th祅h th� l�: <color=red>"..nNum.."<color>"
		else
			arr[nCityIndex] = "<#> bang h閕 chi誱 l躰h <color=red>"..arraycityindextoname[nCityIndex].."<color> l�: <color=red>"..strTongName.."<color>, c玭g tr筺g th祅h th� l�:<color=red>"..nNum.."<color>"
		end
		if (nCityIndex == 5) then
		    strInfo = arr[nCityIndex]
		elseif (nCityIndex == 6) then
		    strInfo = strInfo.."<enter>"..arr[nCityIndex]
		else
		    strInfo1 = arr[nCityIndex]
		end
	end
	
	--Talk(3, "", arr[5], arr[6], arr[7])
	Talk(2, "", strInfo, strInfo1)
end

function onsubmitconfirm(nCount)
	if (nCount < 1) then
		Msg2Player("B筺 kh玭g giao n閜 Ph箃 竎 L謓h")
		return
	end
	
	--判断物品是否为罚恶令
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit( i )
		ItemGenre, DetailType, ParticularType = GetItemProp(nItemIndex)

		if (ItemGenre ~= AEXP_PUNISHMEDIAL_NGENTYPE or
			DetailType ~= AEXP_PUNISHMEDIAL_DETAILTYPE or
			ParticularType ~= AEXP_PUNISHMEDIAL_PARTYPE) then
				Msg2Player("<#> H譶h nh� v藅 c馻 ngi kh玭g ph秈 Ph箃 竎 L謓h !")
				return 0			
		end
	end
	
	local nTotalNum = 0
	for i = 1, nCount do
		nItemIndex = GetGiveItemUnit( i )
		nTotalNum = nTotalNum + GetItemStackCount(nItemIndex)
		RemoveItemByIndex( nItemIndex )
	end
	
	local nNum = GetGlbValue(arraycitytoglobalvalue[nGlobalCityIndex])
	--if (nNum < 0) then
	--	nNum = 0
	--end
	
	local nSpareNum = nNum - nTotalNum
	--if (nSpareNum < 0) then
	--	nSpareNum = 0
	--end
	
	SetGlbValue(arraycitytoglobalvalue[nGlobalCityIndex], nSpareNum)
	local strCityTongName = GetCityOwner(nGlobalCityIndex);	
	--对tab文件进行写
	CityData[nGlobalCityIndex] = CityData[nGlobalCityIndex] + nTotalNum
	if (CityData[nGlobalCityIndex] > AEXP_REDUCEMAX_SAVE) then
		CityData[nGlobalCityIndex] = 0		
		WriteLog("["..date("%Y-%m-%d %X").."] Bang h閕:"..strCityTongName.." Th祅h th�:"..arraycityindextoname[nGlobalCityIndex].." V� "..GetAccount().."("..GetName()..")  giao"..nTotalNum.."Ph箃 竎 L謓h, vt qu� s� lng, hi謓 t筰 l� "..nSpareNum.."(Current OnlineTime: "..GetGameTime().." sec)" );
		savevalue()
	end	
	
	Say("<#> bang h閕 chi誱 l躰h <color=red>"..arraycityindextoname[nGlobalCityIndex].."<color> l�: <color=red>"..strCityTongName.."<color>, b筺 giao n閜"..nTotalNum.."Ph箃 竎 L謓h  tr鮪g ph箃 i phng, c玭g tr筺g hi謓 t筰 c馻 th祅h th� l�:<color=red>"..nSpareNum.."<color>",0)
end
