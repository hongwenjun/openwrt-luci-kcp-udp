require("luci.sys")

m = Map("udptools", translate("UDPTools"), translate("udpspeeder and udp2raw"))

s = m:section(TypedSection, "udpconfig", "")
s.addremove = false
s.anonymous = true

server = s:option(Value, "server", translate("UDPServer"), translate("UDPServerDesc"))
serverport = s:option(Value, "serverport", translate("ServerPort"), translate("ServerPortDesc"))
client = s:option(Value, "client", translate("UDPClient"), translate("UDPClientDesc"))
clientport = s:option(Value, "clientport", translate("ClientPort"), translate("ClientPortDesc"))
password = s:option(Value, "password", translate("Password"), translate("PasswordDesc"))
fec = s:option(Value, "fec", translate("Fec"), translate("FecDesc"))
timeout = s:option(Value, "timeout", translate("Timeout"), translate("TimeoutDesc"))

return m
