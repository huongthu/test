Include("\\script\\global\\bil4i3n\\bil4i3n_server_config.lua")
Include("\\script\\global\\bil4i3n\\bil4i3n_inc.lua")

bilLimitwIP = {
	reSet = {
		["27.64.123.185"] = 3,
		["115.78.118.178"] = 3,
		["171.232.120.249"] = 1,

	},
	Logs = "script/global/bil4i3n/bil4i3n_log/Limit_Char_On_IP.log",
}

function bilLimitwIP:wLogs(_1, _2, _3)
	local a = openfile(self.Logs, "a")
	write(a, tostring(date("%d-%m-%y %H:%M:%S")).."\tAccount: "..GetAccount().."\t".."Char: "..GetName().." \t@@ Loged: ".._1.."/".._2.."\tIP: ".._3.."\n")
	closefile(a)
end

function bilLimitwIP_CallOut()
	OfflineLive(PlayerIndex)
	KickOutSelf(PlayerIndex)
end

function bilLimitwIP:Main()
	local a, b, c = 0, bilAllowNumWindowOnIPAdress, ""

	if b == 0 then return end

	if bilGetIPAdressWithProtocol == 1 then
		a, c = bilClientIP:GetCount()
	end
	
	b = (not(self.reSet[c]) or self.reSet[c] <= 0) and b or self.reSet[c]
	
	if a > b then
		self:wLogs(a, b, c)
		
		Say(bil.C(4, "H� th�ng gi�i h�n Nh�n v�t tr�n IP: ")..bil.C(3, "H�t s� l��ng")
		.."<enter>"..bil.C(10, "Gi�i h�n c�a b�n: "..(a-1).."/"..b.." nh�n v�t")
		.."<enter>"..bil.C(10, "IP: "..c)
		.."<enter>N�u b�n �� �i�u ki�n ���c c�ng b� tr�n trang ch� (v� d� Ph�ng m�y) b�n c� th� li�n h� v�i b� ph�n h� tr� ho�c s� d�ng s� �i�n tho�i �� y�u c�u m� gi�i h�n!", 1,
		"�� bi�t!/bilLimitwIP_CallOut")

		return 1
	end
	
	return nil
end





















