SPREADERNPC_ISADD = 1 -- script viet hoa By http://tranhba.com 1 th�m t�i # nil kh�ng th�m t�i 

spreadernpc = { 
-- script viet hoa By http://tranhba.com  tay m�i th�n � tr� ch�i ph� bi�n r�ng r�i vi�n � 
-- {87,80,4,20,3545,6213,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,53,1618,3179,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,121,2010,4494,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,99,1625,3184,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,100,1611,3180,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,101,1692,3130,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,174,1639,3301,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 
-- {87,80,4,153,1622,3232,0," Ho�nh Ba Ti�n T� ",0,"\\script\\misc\\spreader\\spreader.lua"}, 

-- {1495,80,4,53,1608,3216,0," C�y th�ng gi�ng sinh ",0,"\\script\\event\\xmas07_makesnowman\\makesnowman.lua"}, 
-- {644,80,4,53,1600,3200,0," �ng gi� Noel ",0,"\\script\\event\\xmas06_makesnowman\\makesnowman.lua"},  -- ong gia noel

}
function add_spreadernpc(tbnpc) 
if (SPREADERNPC_ISADD) then 
for i = 1 , getn(tbnpc) do 
Mid = SubWorldID2Idx(tbnpc[i][4]); 
if (Mid >= 0 ) then 
TabValue5 = tbnpc[i][5] * 32; 
TabValue6 = tbnpc[i][6] * 32; 
local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]); 
SetNpcScript(nNpcIdx, tbnpc[i][10]); 
end; 
end; 
end; 
end
