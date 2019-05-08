IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\traogiaithdnb\\thdnb7.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\vng_event\\2012_vlnb\\main.lua")
Include("\\script\\global\\lottery_gold.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\quanlygame\\chuyenmonphai.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\changefeature\\feature_man.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")


function MoRuongFree()
if CheckStoreBoxState(1) == 1 then
Talk(1, "", "Ng­¬i ®· më xong hÕt r­¬ng råi.")
return
end
OpenStoreBox(1)
OpenStoreBox(2)
OpenStoreBox(3)
SaveNow()
Talk(1,"","Më thµnh c«ng tÊt c¶ r­¬ng chøa ®å.") 
end