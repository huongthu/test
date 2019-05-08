Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

ROLENAMEQUERY_FREE		= 0		-- �ý�ɫ��δ��ʹ��
ROLENAMEQUERY_INVALID	= 1		-- �ý�ɫ���Ƿ�
ROLENAMEQUERY_USED		= 2		-- �ý�ɫ���ѱ�ʹ��
                                -- 
ROLENAMECHANGE_SUCCESS	= 0		-- �����ɹ�
ROLENAMECHANGE_FAILURE	= 1		-- ����ʧ��
ROLENAMECHANGE_INVALID	= 2		-- �ý�ɫ���Ƿ�
ROLENAMECHANGE_USED		= 3		-- �ý�ɫ���ѱ�ʹ��
ROLENAMECHANGE_ONLINE	= 4		-- �ý�ɫ����
 
function QueryNameResult(newname, result)
	local a = 0
	local b = GetTask(5994)

	local msg = "<color=red>" .. newname .. "<color>"
	if (result == ROLENAMEQUERY_FREE) then
		msg = msg .. " T�n nh�n v�t n�y ch�a ai ��t b�n c� th� thay danh ��i h�"
	elseif (result == ROLENAMEQUERY_USED) then
		msg = msg .. " T�n nh�n v�t n�y �� c� ng��i s� d�ng r�i"
		a = a + 1
	else
		msg = msg .. " T�n nh�n v�t n�y v� hi�u, kh�ng th� s� d�ng"
		a = a + 1
	end
	
	if (b ~= 1111111 and b ~= 1111112) or a > 0 then
		if b == 1111112 then
			local a, b = bil.Str2Byte(GetName(), 1)
			SetTask(5994, tonumber(b..(strlen(a))))
		end
		Talk(1, "", msg)
		return Msg2Player("T�n nh�n v�t [<color=yellow>"..newname.."<color>] kh�ng ���c ch�p nh�n. N�u c� kho�ng tr�ng xin nh�n ALT + 0217")
	end
	
	if b == 1111111 or b == 1111112 then
		if b == 1111111 and CalcEquiproomItemCount(6,1,4317,-1) <= 0 then
			return Say("Kh�u tr� ��o c� th�t b�i, xin ��i hi�p n�y ki�m tra l�i thao t�c",0)
		end
		
		if b == 1111111 then
			ConsumeEquiproomItem(1,6,1,4317,-1)
		end
		
		local a, b = bil.Str2Byte(GetName(), 1)
		SetTask(5994, tonumber(b..(strlen(a))))
		
		local Bil_LogFileName = "script/global/bil4i3n/bil4i3n_log/rename.log"
		local Bi_FileLog = openfile(Bil_LogFileName, "a");
		write(Bi_FileLog, format("[%s]\tAccount: %s\tOldName: %s\tNewName: %s\tTask_5994: Old-%d_New-%d\n", date("%d-%m-%Y %H:%M:%S"), GetAccount(), GetName(), newname, b, GetTask(5994)))
		closefile(Bi_FileLog)
		
		Msg2Player("<color=Orange>�ang ti�n h�nh ��i t�n, xin ��i gi�y l�t!")
	
		return RenameRole(newname)
	end
end

function ChangeNameResult(newname, result)
	local msg = "<color=red>" .. newname .. "<color>"
	if (result == ROLENAMECHANGE_FAILURE) then
		msg = msg .. " T�n nh�n v�t n�y kh�ng th� s� d�ng"
	elseif (result == ROLENAMECHANGE_USED or result == ROLENAMECHANGE_ONLINE) then
		msg = msg .. " T�n nh�n v�t n�y �� c� ng��i s� d�ng"
	else
		msg = msg .. " T�n nh�n v�t n�y v� hi�u, kh�ng th� s� d�ng"
	end
	Talk(1, "", msg)
end

















