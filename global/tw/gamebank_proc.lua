-- �ٰ���ְ�ܡ�Ǯׯ�ϰ�
-- by��Dan_Deng(2003-09-16)
-- Update: Dan_Deng(2004-01-06) ��ͳһ�����ƶ�������Ʊ���˶���
-- Update: Fanghao_Wu(2004-9-04) ����Ԫ���һ�ͭǮ����

-- Include("\\script\\global\\Ǯׯ����.lua")

-- function main(sel)
--	Talk(1,"main_proc","Ǯׯ�ϰ壺����Ǯׯ����һ�򶼺õúܣ��Ӳ�ƭ�ˡ�")
-- end;

Include("\\script\\global\\systemconfig.lua") -- ϵͳ����
Include("\\script\\global\\head_qianzhuang.lua") -- ͷ����

function gamebank_proc()
end

function use_ticket()end

function use_ingot()end

------------- ��ѯ��Ʊ --------------------
function show_ticket()end

------------- ��ѯԪ�� --------------------
function show_ingot()end

------------- ȡԪ�� -----------------------
function get_ingot()end

------------- ȡ��Ʊ -----------------------
function get_ticket()end

function get_ticketok()end

function get_ingot_35()end

function get_ingot35ok()end

function get_ingot_10()end

function get_ingot10ok()end;
------------- ����Ԫ�� ---------------------
function pay_ingot()end

------------- ������Ʊ ---------------------
function pay_ticket()end

--��ȡ�۳���Ʊ������
function pay_ticket_typediff()end;
-- ����Ʊ���ֳ�30Сʱ
function pay_ticket_hours()end

-- ����Ʊ���ֳ�7��
function pay_ticket_days()end

function pay_ingot_35a()end

function pay_ingot_35b()end

function pay_ingot_10a()end

function pay_ingot_10b()end

------------- ȷ����Ʊ�һ�ͭǮ---------------------
function change_ticket_to_coin()end

------------- ��Ʊ�һ�ͭǮ---------------------
function confirm_ticket_to_coin()end

------------- Ԫ���һ�ͭǮ---------------------
function change_ingot_to_coin()	end

function change_gold_to_coin()end

function change_silver_to_coin()end

------------ ����ͭǮ ------------------
function onAboutCoin()end

----------------------------------------
function no()
end
