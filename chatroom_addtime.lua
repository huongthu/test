MONEY_ADDLIFETIME = 1000000 

function Checkup() 
-- script viet hoa By http://tranhba.com  b�i v� th�ng qua s� d�ng v�t ph�m gia t�ng n�i chuy�n phi�m th�t th�i gian , ki�m tra kim ti�n ��ch ��i m� th� v�o \\item\\chatroom\\pay.lua trung 
return 1 
end 

function Consume() 
if (DelCommonItem(6,1,1062) == 1) then 
Msg2Player("<#><color=green> n�i chuy�n phi�m th�t th�m l�c th�nh c�ng <color>#") 
return 1 
end 
return 0 
end 
