
-- script viet hoa By http://tranhba.com  ====================== v¨n kiÖn tin tøc ====================== 

-- script viet hoa By http://tranhba.com  kiÕm hiÖp t×nh duyªn online IB b¶n bæn h¹n chÕ bµy qu¶n ®Çu v¨n kiÖn 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2006/10/30 PM 15:42 

-- script viet hoa By http://tranhba.com  ph¸o b«ng . ®ªm h«m ®ã ®Ých ph¸o b«ng . 
-- script viet hoa By http://tranhba.com  nµng nhí h¾n ë m­a to ng­êi cña bÇy trung , ®øng ë sau l­ng cña nµng «m ë nµng . 
-- script viet hoa By http://tranhba.com  h¾n Êm ¸p ®Ých da , h¾n mïi vÞ ®¹o quen thuéc . ph¸o b«ng chiÕu s¸ng ¸nh m¾t cña nµng . 
-- script viet hoa By http://tranhba.com  hÕt th¶y kh«ng thÓ v·n håi …… 

-- script viet hoa By http://tranhba.com  ====================================================== 

NUM_OFFLINE_PERMITREGION_MAX = 10; -- script viet hoa By http://tranhba.com  c¸ch kh«ng cho phÐp bµy qu¶n ®iÓm ®Ých nhá nhÊt b¸n kÝnh 

aryLimitRegion = { 
-- script viet hoa By http://tranhba.com  biÖn kinh 
[37]={ 
{1630, 3187},-- script viet hoa By http://tranhba.com NPC phu xe 
{1704, 3224},-- script viet hoa By http://tranhba.com NPC phu xe 
{1595, 2994},-- script viet hoa By http://tranhba.com NPC phu xe 
{1860, 2928},-- script viet hoa By http://tranhba.com NPC phu xe 
{1755, 3043},-- script viet hoa By http://tranhba.com  vâ l©m truyÒn nh©n 
{1806, 3098},-- script viet hoa By http://tranhba.com  lÔ quan 
{1712, 3102},-- script viet hoa By http://tranhba.com  thî rÌn 
{1747, 3050},-- script viet hoa By http://tranhba.com  thî rÌn 
{1773, 3090},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1786, 3103},-- script viet hoa By http://tranhba.com  tiÖm t¹p hãa 
{1776, 3063},-- script viet hoa By http://tranhba.com  vâ l©m t©n tó liªn cuéc so tµi quan viªn 
{1740, 3065},-- script viet hoa By http://tranhba.com  thö luyÖn ®­êng 
{1646, 3050},-- script viet hoa By http://tranhba.com  niÕp sÜ trÇn 
{1589, 3096},-- script viet hoa By http://tranhba.com  tiÓu phiÕn 
{1784, 3042},-- script viet hoa By http://tranhba.com  néi c¸c th­îng th­ 
{1641, 3145},-- script viet hoa By http://tranhba.com  b×nh b×nh c« n­¬ng 
{16620, 3019},-- script viet hoa By http://tranhba.com  b×nh b×nh c« n­¬ng 
{1713, 374},-- script viet hoa By http://tranhba.com  b×nh b×nh c« n­¬ng 
{1865, 2968},-- script viet hoa By http://tranhba.com  b×nh b×nh c« n­¬ng 
{1734, 3102},-- script viet hoa By http://tranhba.com  d· tÈu 
{1693, 3212},-- script viet hoa By http://tranhba.com  c«ng thµnh phu xe 
}, 

-- script viet hoa By http://tranhba.com  §¹i Lý 
[162]={ 
{1669, 3124},-- script viet hoa By http://tranhba.com NPC phu xe 
{1697, 3279},-- script viet hoa By http://tranhba.com NPC phu xe 
{1469, 3269},-- script viet hoa By http://tranhba.com NPC phu xe 
{1628, 3184},-- script viet hoa By http://tranhba.com  vâ l©m truyÒn nh©n 
{1587, 3221},-- script viet hoa By http://tranhba.com  lÔ quan 
{15599, 3262},-- script viet hoa By http://tranhba.com  thî rÌn 
{1449, 3211},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1535, 3201},-- script viet hoa By http://tranhba.com  tiÖm t¹p hãa 
{1651, 3226},-- script viet hoa By http://tranhba.com  liªn cuéc so tµi sø gi¶ 
{1613, 3190},-- script viet hoa By http://tranhba.com  thö luyÖn ®­êng 
{1574, 3227},-- script viet hoa By http://tranhba.com  niÕp sÜ trÇn 
{1671, 3236},-- script viet hoa By http://tranhba.com  tiÓu phiÕn 
{1651, 3226},-- script viet hoa By http://tranhba.com  d· tÈu 
{1681, 3276},-- script viet hoa By http://tranhba.com  c«ng thµnh phu xe 
}, 

-- script viet hoa By http://tranhba.com  t­¬ng d­¬ng 
[78] = { 
{1509, 3140},-- script viet hoa By http://tranhba.com NPC phu xe 
{1439, 3212},-- script viet hoa By http://tranhba.com NPC phu xe 
{1598, 3378},-- script viet hoa By http://tranhba.com NPC phu xe 
{1693, 3233},-- script viet hoa By http://tranhba.com NPC phu xe 
{1609, 3259},-- script viet hoa By http://tranhba.com  vâ l©m truyÒn nh©n 
{1541, 3247},-- script viet hoa By http://tranhba.com  lÔ quan 
{1550, 3217},-- script viet hoa By http://tranhba.com  thî rÌn 
{1612, 3244},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1628, 3262},-- script viet hoa By http://tranhba.com  tiÖm t¹p hãa 
{1546, 3118},-- script viet hoa By http://tranhba.com  vâ l©m t©n tó liªn cuéc so tµi quan viªn 
{1606, 3238},-- script viet hoa By http://tranhba.com  thö luyÖn ®­êng 
{1511, 3208},-- script viet hoa By http://tranhba.com  niÕp sÜ trÇn 
{1489, 3270},-- script viet hoa By http://tranhba.com  tiÓu phiÕn 
{1594, 3289},-- script viet hoa By http://tranhba.com  d· tÈu 
{1582, 3379},-- script viet hoa By http://tranhba.com  c«ng thµnh phu xe 
{1554, 3183},-- script viet hoa By http://tranhba.com  thÇn bÝ th­¬ng nh©n 
}, 

-- script viet hoa By http://tranhba.com  thµnh ®« 
[11]={ 
{3196, 5194},-- script viet hoa By http://tranhba.com NPC phu xe 
{3266, 5003},-- script viet hoa By http://tranhba.com NPC phu xe 
{3027, 4960},-- script viet hoa By http://tranhba.com NPC phu xe 
{3017, 5090},-- script viet hoa By http://tranhba.com NPC phu xe 
{3135, 5045},-- script viet hoa By http://tranhba.com  vâ l©m truyÒn nh©n 
{3126, 4994},-- script viet hoa By http://tranhba.com  lÔ quan 
{3104, 5121},-- script viet hoa By http://tranhba.com  thî rÌn 
{3141, 5136},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{3095, 5136},-- script viet hoa By http://tranhba.com  tiÖm t¹p hãa 
{3213, 5148},-- script viet hoa By http://tranhba.com  liªn cuéc so tµi sø gi¶ 
{3109, 5059},-- script viet hoa By http://tranhba.com  thö luyÖn ®­êng 
{3210, 4974},-- script viet hoa By http://tranhba.com  niÕp sÜ trÇn 
{3180, 4947},-- script viet hoa By http://tranhba.com  tiÓu phiÕn 
{3153, 5066},-- script viet hoa By http://tranhba.com  d· tÈu 
{3185, 5182},-- script viet hoa By http://tranhba.com  c«ng thµnh phu xe 
}, 

-- script viet hoa By http://tranhba.com  D­¬ng Ch©u 
[80]={ 
{1717, 3198},-- script viet hoa By http://tranhba.com NPC phu xe 
{1592, 3195},-- script viet hoa By http://tranhba.com NPC phu xe 
{1670, 2991},-- script viet hoa By http://tranhba.com NPC phu xe 
{1825, 3064},-- script viet hoa By http://tranhba.com NPC phu xe 
{1792, 3047},-- script viet hoa By http://tranhba.com  vâ l©m truyÒn nh©n 
{1745, 3000},-- script viet hoa By http://tranhba.com  lÔ quan 
{1689, 3170},-- script viet hoa By http://tranhba.com  thî rÌn 
{1773, 3079},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1701, 3022},-- script viet hoa By http://tranhba.com  tiÖm t¹p hãa 
{1754, 3035},-- script viet hoa By http://tranhba.com  liªn cuéc so tµi sø gi¶ 
{1705, 3058},-- script viet hoa By http://tranhba.com  thö luyÖn ®­êng 
{1702, 2962},-- script viet hoa By http://tranhba.com  niÕp sÜ trÇn 
{1638, 3049},-- script viet hoa By http://tranhba.com  tiÓu phiÕn 
{1743, 2966},-- script viet hoa By http://tranhba.com  d· tÈu 
{1691, 3219},-- script viet hoa By http://tranhba.com  c«ng thµnh phu xe 
}, 

-- script viet hoa By http://tranhba.com  ph­îng t­êng 
[1]={ 
{1647, 3166},-- script viet hoa By http://tranhba.com NPC phu xe 
{1557, 3108},-- script viet hoa By http://tranhba.com NPC phu xe 
{1520, 3230},-- script viet hoa By http://tranhba.com NPC phu xe 
{1652, 3281},-- script viet hoa By http://tranhba.com NPC phu xe 
{1623, 3205},-- script viet hoa By http://tranhba.com  vâ l©m truyÒn nh©n 
{1614, 3152},-- script viet hoa By http://tranhba.com  lÔ quan 
{1618, 3196},-- script viet hoa By http://tranhba.com  thî rÌn 
{1604, 3190},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1559, 3206},-- script viet hoa By http://tranhba.com  tiÖm t¹p hãa 
{1671, 3218},-- script viet hoa By http://tranhba.com  liªn cuéc so tµi sø gi¶ 
{1586, 3229},-- script viet hoa By http://tranhba.com  thö luyÖn ®­êng 
{1507, 3198},-- script viet hoa By http://tranhba.com  niÕp sÜ trÇn 
{1619, 3103},-- script viet hoa By http://tranhba.com  tiÓu phiÕn 
{1618, 3090},-- script viet hoa By http://tranhba.com  d· tÈu 
{1640, 3270},-- script viet hoa By http://tranhba.com  c«ng thµnh phu xe 
}, 

-- script viet hoa By http://tranhba.com  tr­íc khi an 
[176]={ 
{1606, 3292},-- script viet hoa By http://tranhba.com NPC phu xe 
{1372, 3329},-- script viet hoa By http://tranhba.com NPC phu xe 
{1601, 2912},-- script viet hoa By http://tranhba.com NPC phu xe 
{1353, 3014},-- script viet hoa By http://tranhba.com NPC phu xe 
{1532, 3010},-- script viet hoa By http://tranhba.com  vâ l©m truyÒn nh©n 
{1506, 2984},-- script viet hoa By http://tranhba.com  lÔ quan 
{1683, 3220},-- script viet hoa By http://tranhba.com  thî rÌn 
{1332, 3060},-- script viet hoa By http://tranhba.com  thî rÌn 
{1520, 2986},-- script viet hoa By http://tranhba.com  thî rÌn 
{1685, 3319},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1474, 3362},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1544, 2964},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1615, 2977},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1340, 3165},-- script viet hoa By http://tranhba.com  tiÖm t¹p hãa 
{1457, 3259},-- script viet hoa By http://tranhba.com  vâ l©m t©n tó liªn cuéc so tµi quan viªn 
{1592, 2944},-- script viet hoa By http://tranhba.com  thö luyÖn ®­êng 
{1371, 3007},-- script viet hoa By http://tranhba.com  niÕp sÜ trÇn 
{1387, 2961},-- script viet hoa By http://tranhba.com  tiÓu phiÕn 
{1561, 2980},-- script viet hoa By http://tranhba.com  d· tÈu 
{1689, 3291},-- script viet hoa By http://tranhba.com  c«ng thµnh phu xe 
{1654, 3263},-- script viet hoa By http://tranhba.com  th¾p ®Ìn cung n÷ 
{1439, 3268},-- script viet hoa By http://tranhba.com  th¾p ®Ìn cung n÷ 
{1384, 2979},-- script viet hoa By http://tranhba.com  th¾p ®Ìn cung n÷ 
{1576, 2958},-- script viet hoa By http://tranhba.com  th¾p ®Ìn cung n÷ 
{1314, 3195},-- script viet hoa By http://tranhba.com  thÇn bÝ thî rÌn 
{1412, 3312},-- script viet hoa By http://tranhba.com  minh chñ vâ l©m 
{1442, 3061},-- script viet hoa By http://tranhba.com  chu tiÒn trang 
{1478, 3237},-- script viet hoa By http://tranhba.com  néi c¸c th­îng th­ 
{1312, 2848},-- script viet hoa By http://tranhba.com  thÇn bÝ th­¬ng nh©n 
{1657, 3261},-- script viet hoa By http://tranhba.com  th¾p ®Ìn cung n÷ 
{1577, 2957},-- script viet hoa By http://tranhba.com  th¾p ®Ìn cung n÷ 
{1439, 3267},-- script viet hoa By http://tranhba.com  th¾p ®Ìn cung n÷ 
{1385, 2977},-- script viet hoa By http://tranhba.com  th¾p ®Ìn cung n÷ 
}, 

-- script viet hoa By http://tranhba.com  ba l¨ng huyÒn 
[53]={ 
{1626, 3172},-- script viet hoa By http://tranhba.com  d· tÈu 
{1629, 3195},-- script viet hoa By http://tranhba.com  lÔ quan 
{1598, 3209},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1600, 3170},-- script viet hoa By http://tranhba.com  t¹p hãa 
{1578, 3236},-- script viet hoa By http://tranhba.com  phu xe 
}, 

-- script viet hoa By http://tranhba.com  giang th«n míi 
[20]={ 
{3538, 6231},-- script viet hoa By http://tranhba.com  d· tÈu 
{3552, 6192},-- script viet hoa By http://tranhba.com  lÔ quan 
{3469, 6164},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{3370, 6256},-- script viet hoa By http://tranhba.com  t¹p hãa 
{3458, 6110},-- script viet hoa By http://tranhba.com  phu xe 
{3522, 6117},-- script viet hoa By http://tranhba.com  nguyÖt l·o 
}, 

-- script viet hoa By http://tranhba.com  vÜnh nh¹c 
[99]={ 
{1646, 3192},-- script viet hoa By http://tranhba.com  d· tÈu 
{1614, 3177},-- script viet hoa By http://tranhba.com  lÔ quan 
{1595, 3227},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1606, 3282},-- script viet hoa By http://tranhba.com  t¹p hãa 
{1630, 3304},-- script viet hoa By http://tranhba.com  phu xe 
{1607, 3161},-- script viet hoa By http://tranhba.com  
}, 

-- script viet hoa By http://tranhba.com  Chu tiªn trÊn 
[100]={ 
{1616, 3199},-- script viet hoa By http://tranhba.com  d· tÈu 
{1621, 3181},-- script viet hoa By http://tranhba.com  lÔ quan 
{1657, 3124},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1641, 3126},-- script viet hoa By http://tranhba.com  t¹p hãa 
{1610, 3097},-- script viet hoa By http://tranhba.com  phu xe 
{1678, 3101},-- script viet hoa By http://tranhba.com  phu xe 
{1719, 3217},-- script viet hoa By http://tranhba.com  phu xe 
{1603, 3168},-- script viet hoa By http://tranhba.com  phu xe 
}, 

-- script viet hoa By http://tranhba.com  ®¹o h­¬ng th«n 
[101]={ 
{1677, 3143},-- script viet hoa By http://tranhba.com  d· tÈu 
{1671, 3172},-- script viet hoa By http://tranhba.com  lÔ quan 
{1679, 3196},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1639, 3144},-- script viet hoa By http://tranhba.com  t¹p hãa 
{1623, 3098},-- script viet hoa By http://tranhba.com  phu xe 
}, 

-- script viet hoa By http://tranhba.com  long m«n trÊn 
[121]={ 
{1959, 4500},-- script viet hoa By http://tranhba.com  d· tÈu 
{1958, 4517},-- script viet hoa By http://tranhba.com  lÔ quan 
{1934, 4551},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1914, 4524},-- script viet hoa By http://tranhba.com  t¹p hãa 
{1924, 4527},-- script viet hoa By http://tranhba.com  phu xe 
{1980, 4593},-- script viet hoa By http://tranhba.com  phu xe 
}, 

-- script viet hoa By http://tranhba.com  th¹ch cæ trÊn 
[123]={ 
{1643, 3235},-- script viet hoa By http://tranhba.com  d· tÈu 
{1606, 3227},-- script viet hoa By http://tranhba.com  lÔ quan 
{1600, 3209},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1630, 3231},-- script viet hoa By http://tranhba.com  t¹p hãa 
{1658, 3244},-- script viet hoa By http://tranhba.com  phu xe 
}, 

-- script viet hoa By http://tranhba.com  long tuyÒn th«n 
[174]={ 
{1608, 3200},-- script viet hoa By http://tranhba.com  d· tÈu 
{1631, 3215},-- script viet hoa By http://tranhba.com  lÔ quan 
{1572, 3253},-- script viet hoa By http://tranhba.com  tiÖm thuèc 
{1566, 3202},-- script viet hoa By http://tranhba.com  t¹p hãa 
{1634, 3196},-- script viet hoa By http://tranhba.com  phu xe 
}, 
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  tr­íc khi an 
-- script viet hoa By http://tranhba.com  [176]={ 
-- script viet hoa By http://tranhba.com  {1695, 3294}, 
-- script viet hoa By http://tranhba.com  {1373, 3333}, 
-- script viet hoa By http://tranhba.com  {1353, 3018}, 
-- script viet hoa By http://tranhba.com  {1602, 2912}, 
-- script viet hoa By http://tranhba.com  {1687, 3319}, 
-- script viet hoa By http://tranhba.com  {1476, 3363}, 
-- script viet hoa By http://tranhba.com  {1545, 2966}, 
-- script viet hoa By http://tranhba.com  {1615, 2976}, 
-- script viet hoa By http://tranhba.com  {1340, 3166}, 
-- script viet hoa By http://tranhba.com  {1505, 2982}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  biÖn kinh 
-- script viet hoa By http://tranhba.com  [37]={ 
-- script viet hoa By http://tranhba.com  {1704, 3222}, 
-- script viet hoa By http://tranhba.com  {1632, 3185}, 
-- script viet hoa By http://tranhba.com  {1595, 2995}, 
-- script viet hoa By http://tranhba.com  {1862, 2927}, 
-- script viet hoa By http://tranhba.com  {1785, 3104}, 
-- script viet hoa By http://tranhba.com  {1773, 3091}, 
-- script viet hoa By http://tranhba.com  {1806, 3097}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  thµnh ®« 
-- script viet hoa By http://tranhba.com  [11]={ 
-- script viet hoa By http://tranhba.com  {3196, 5193}, 
-- script viet hoa By http://tranhba.com  {3018, 5089}, 
-- script viet hoa By http://tranhba.com  {3029, 4958}, 
-- script viet hoa By http://tranhba.com  {3261, 5004}, 
-- script viet hoa By http://tranhba.com  {3095, 5135}, 
-- script viet hoa By http://tranhba.com  {3141, 5134}, 
-- script viet hoa By http://tranhba.com  {3126, 4993}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  §¹i Lý 
-- script viet hoa By http://tranhba.com  [162]={ 
-- script viet hoa By http://tranhba.com  {1667, 3126}, 
-- script viet hoa By http://tranhba.com  {1468, 3271}, 
-- script viet hoa By http://tranhba.com  {1697, 3277}, 
-- script viet hoa By http://tranhba.com  {1535, 3202}, 
-- script viet hoa By http://tranhba.com  {1500, 3213}, 
-- script viet hoa By http://tranhba.com  {1586, 3221} 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  t­¬ng d­¬ng 
-- script viet hoa By http://tranhba.com  [78]={ 
-- script viet hoa By http://tranhba.com  {1596, 3379}, 
-- script viet hoa By http://tranhba.com  {1439, 3214}, 
-- script viet hoa By http://tranhba.com  {1511, 3142}, 
-- script viet hoa By http://tranhba.com  {1689, 3236}, 
-- script viet hoa By http://tranhba.com  {1628, 3263}, 
-- script viet hoa By http://tranhba.com  {1612, 3245}, 
-- script viet hoa By http://tranhba.com  {1539, 3248}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  ph­îng t­êng 
-- script viet hoa By http://tranhba.com  [1]={ 
-- script viet hoa By http://tranhba.com  {1651, 3279}, 
-- script viet hoa By http://tranhba.com  {1520, 3228}, 
-- script viet hoa By http://tranhba.com  {1557, 3108}, 
-- script viet hoa By http://tranhba.com  {1647, 3167}, 
-- script viet hoa By http://tranhba.com  {1559, 3206}, 
-- script viet hoa By http://tranhba.com  {1603, 3191}, 
-- script viet hoa By http://tranhba.com  {1614, 3151}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  D­¬ng Ch©u 
-- script viet hoa By http://tranhba.com  [80]={ 
-- script viet hoa By http://tranhba.com  {1718, 3201}, 
-- script viet hoa By http://tranhba.com  {1593, 3197}, 
-- script viet hoa By http://tranhba.com  {1669, 2990}, 
-- script viet hoa By http://tranhba.com  {1824, 3064}, 
-- script viet hoa By http://tranhba.com  {1691, 3169}, 
-- script viet hoa By http://tranhba.com  {1702, 3022}, 
-- script viet hoa By http://tranhba.com  {1743, 2995}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  nam nh¹c trÊn 
-- script viet hoa By http://tranhba.com  [54]={ 
-- script viet hoa By http://tranhba.com  {1590, 3092}, 
-- script viet hoa By http://tranhba.com  {1639, 3142}, 
-- script viet hoa By http://tranhba.com  {1648, 3108}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  long tuyÒn th«n 
-- script viet hoa By http://tranhba.com  [174]={ 
-- script viet hoa By http://tranhba.com  {1635, 3198}, 
-- script viet hoa By http://tranhba.com  {1594, 3228}, 
-- script viet hoa By http://tranhba.com  {1572, 3254}, 
-- script viet hoa By http://tranhba.com  {1631, 3216}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  giang t©n th«n 
-- script viet hoa By http://tranhba.com  [20]={ 
-- script viet hoa By http://tranhba.com  {3459, 6113}, 
-- script viet hoa By http://tranhba.com  {3468, 6163}, 
-- script viet hoa By http://tranhba.com  {3370, 6255}, 
-- script viet hoa By http://tranhba.com  {3552, 6192}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  long m«n trÊn 
-- script viet hoa By http://tranhba.com  [121]={ 
-- script viet hoa By http://tranhba.com  {1925, 4427}, 
-- script viet hoa By http://tranhba.com  {1980, 4595}, 
-- script viet hoa By http://tranhba.com  {1914, 4524}, 
-- script viet hoa By http://tranhba.com  {1934, 4551}, 
-- script viet hoa By http://tranhba.com  {1957, 4518}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  th¹ch cæ trÊn 
-- script viet hoa By http://tranhba.com  [153]={ 
-- script viet hoa By http://tranhba.com  {1631, 3179}, 
-- script viet hoa By http://tranhba.com  {1684, 3244}, 
-- script viet hoa By http://tranhba.com  {1600, 3209}, 
-- script viet hoa By http://tranhba.com  {1634, 3223}, 
-- script viet hoa By http://tranhba.com  {1606, 3228}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  ®¹o h­¬ng th«n 
-- script viet hoa By http://tranhba.com  [101]={ 
-- script viet hoa By http://tranhba.com  {1622, 3099}, 
-- script viet hoa By http://tranhba.com  {1679, 3196}, 
-- script viet hoa By http://tranhba.com  {1639, 3144}, 
-- script viet hoa By http://tranhba.com  {1671, 3173}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  vÜnh nh¹c trÊn 
-- script viet hoa By http://tranhba.com  [99]={ 
-- script viet hoa By http://tranhba.com  {1608, 3163}, 
-- script viet hoa By http://tranhba.com  {1630, 3305}, 
-- script viet hoa By http://tranhba.com  {1595, 3227}, 
-- script viet hoa By http://tranhba.com  {1606, 3282}, 
-- script viet hoa By http://tranhba.com  {1614, 3177}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  Chu tiªn trÊn 
-- script viet hoa By http://tranhba.com  [100]={ 
-- script viet hoa By http://tranhba.com  {1603, 3170}, 
-- script viet hoa By http://tranhba.com  {1611, 3099}, 
-- script viet hoa By http://tranhba.com  {1679, 3102}, 
-- script viet hoa By http://tranhba.com  {1720, 3217}, 
-- script viet hoa By http://tranhba.com  {1641, 3126}, 
-- script viet hoa By http://tranhba.com  {1657, 3124}, 
-- script viet hoa By http://tranhba.com  {1621, 3181}, 
-- script viet hoa By http://tranhba.com  }, 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  ba l¨ng huyÒn 
-- script viet hoa By http://tranhba.com  [53]={ 
-- script viet hoa By http://tranhba.com  {1579, 3236}, 
-- script viet hoa By http://tranhba.com  {1598, 3209}, 
-- script viet hoa By http://tranhba.com  {1600, 3170}, 
-- script viet hoa By http://tranhba.com  {1629, 3195}, 
-- script viet hoa By http://tranhba.com  }, 
} 


-- script viet hoa By http://tranhba.com  kiÓm tr¾c nhµ ch¬i cã hay kh«ng ë h¹n chÕ khu vùc bªn trong 
function offlineCheckPermitRegion() 
local nMapId, nX, nY = GetWorldPos(); 
local nLimitX, nLimitY = 0,0; 
local szDirection, nDistance = "", 0; 
local i=0; 
if aryLimitRegion[nMapId] then 
for i=1, getn(aryLimitRegion[nMapId]) do 
nLimitX = aryLimitRegion[nMapId][i][1]; 
nLimitY = aryLimitRegion[nMapId][i][2]; 
szDirection, nDistance = getDirection({nX, nY}, {nLimitX, nLimitY}); 
-- script viet hoa By http://tranhba.com  nÕu nh­ kho¶ng c¸ch bÊt kú mét ®iÓm nhá víi 10 , lµ nãi râ ë cÊm chØ khu vùc bªn trong 
if nDistance<=NUM_OFFLINE_PERMITREGION_MAX then 
return 0; 
end; 
end; 
return 1; 
else 
return 1; 
end; 
end; 


function StallCheckPermitRegion() 
if offlineCheckPermitRegion() == 1 then 
return 1 
else 
Talk(1, "","Kh«ng thÓ ë chç nµy khu vùc bµy s¹p ") 
end 
end 

-- script viet hoa By http://tranhba.com  ®¹t ®­îc mét vÞ trÝ t­¬ng ®èi vu nhµ ch¬i vÞ trÝ ®Ých th©n thÓ to lín ph­¬ng vÞ 
function getDirection(posOrigin, posTarget) 

local tbStr = {"T©y nam ","Nam ","§«ng nam ","§«ng ","§«ng b¾c ","B¾c ","T©y b¾c ","T©y "}; 


local nX = posOrigin[2] - posTarget[2]; 
local nY = posTarget[1] - posOrigin[1]; 

local nDeg = atan2(posOrigin[2] - posTarget[2], posTarget[1] - posOrigin[1]); 
	local nDirection = floor(nDeg/45+4.5);

if (nDirection == 0) then 
nDirection = 8; 
end; 

-- script viet hoa By http://tranhba.com  cô thÓ kho¶ng c¸ch , lÊy chØnh sæ 
	local nDistance = floor(sqrt(nX*nX + nY*nY));

return tbStr[nDirection], nDistance; 

end; 
