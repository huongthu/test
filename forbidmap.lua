-- script viet hoa By http://tranhba.com by yfeng
if not BAN_HEAD then
BAN_HEAD = 1

__SJMAPS = {44, 326, 327, 328, 329, 330, 331, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 863}
__BWMAPS = {396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,527,528,529,530,531,532,533,534,535,536,537,538, 864,865,866,867}
__ZQMAPS = {520,521,522,523,524,525,526,582,583,584,585,825,826,863}
__FHMAPS = {516,517,518,519,580,581,605,606,607,608,609,610,611,612,613}
__YANDIBAOZANG = {851,852,853,854,855,856,857,858,859,860,861,862, 871,872,873,874}
__TONGMAPS = {586,587,588,589,590,591,593,594,595,596,597}
__NEWPRACTICEMAPS = {917,918,919,920,921,922,923,924}

-- script viet hoa By http://tranhba.com #×²Ğ£######¯##İ#
__YANDIBAOZANG = {851,852,853,854,855,856,857,858,859,860,861,862, 871,872,873,874, 892,893,894,895, 896, 901}
function checkActMaps(nMapId)
	
	if nMapId >=906 and nMapId <= 916 then
		return 1
	end

	for i=1,getn(__YANDIBAOZANG) do
		if(nMapId == __YANDIBAOZANG[i]) then return 1 end
	end
	return nil
end

function checkYDBZMaps(mapid)
	for i=1,getn(__YANDIBAOZANG) do
		if(mapid == __YANDIBAOZANG[i]) then return 1 end
	end
	return nil
end

function checkSJMaps(mapid) -- script viet hoa By http://tranhba.com #×²©mapid£######ğ³##°
	for i=1,getn(__SJMAPS) do
		if(mapid == __SJMAPS[i]) then return 1 end
	end
	if (mapid >= 375 and mapid <= 386) then
		return 1;
	end
	return nil
	
end

function checkBWMaps(mapid) -- script viet hoa By http://tranhba.com #×²©mapid£#####¸#´ã#¸³##°
	if (mapid >= 540 and mapid <= 579) then	-- script viet hoa By http://tranhba.com ¸#Ì###İ#
		return 1;
	end
	for i=1,getn(__BWMAPS) do
		if(mapid == __BWMAPS[i]) then return 1 end
	end
	return nil
end


function checkZQMaps(mapid) -- script viet hoa By http://tranhba.com #×²©mapid£##########¯³##°
	for i=1,getn(__ZQMAPS) do
		if(mapid == __ZQMAPS[i]) then return 1 end
	end
	return nil
	
end


function checkXSMaps(mapid)	-- script viet hoa By http://tranhba.com #×²Ğmapid£####Å£#³##°
	if (mapid >= 387 and mapid <= 395) then
		return 1
	end
	return nil
end


function checkHFMaps(mapid)	-- script viet hoa By http://tranhba.com #×²Ğmapid£####Ğ#ğ¸#³#³##°
	for i = 1, getn(__FHMAPS) do
		if(mapid == __FHMAPS[i]) then return 1 end
	end
	return nil
end

function checkTONGMaps(mapid)	-- script viet hoa By http://tranhba.com #×²Ğmapid£#####°##¸##İ##ß£###£#ã·°##¸##İ#Ä#°#
	for i = 1, getn(__TONGMAPS) do
		if(mapid == __TONGMAPS[i]) then return 1 end
	end
	return nil
end

function checkNEWPRACTICEMaps(mapid)	-- script viet hoa By http://tranhba.com #×²Ğmapid£######¢¸#####İ#
	for i = 1, getn(__NEWPRACTICEMAPS) do
		if(mapid == __NEWPRACTICEMAPS[i]) then return 1 end
	end
	return nil	
end
	
function CheckAllMaps(mapid)
	if checkSJMaps(mapid) == 1 then
		return 1
	end
	if checkBWMaps(mapid) == 1 then
		return 1
	end
	if checkZQMaps(mapid) == 1 then
		return 1
	end
	if checkXSMaps(mapid) == 1 then
		return 1
	end
	if checkHFMaps(mapid) == 1 then
		return 1
	end

	if checkActMaps(mapid) == 1 then
		return 1
	end
	return nil
end

end
