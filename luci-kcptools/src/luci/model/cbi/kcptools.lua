require("luci.sys")

m = Map("kcptools", translate("KCPTools"), translate("kcp-client and udp2raw"))

s = m:section(TypedSection, "kcpconfig", "")
s.addremove = false
s.anonymous = true

server = s:option(Value, "server", translate("KCPServer"), translate("KCPServerDesc"))
serverport = s:option(Value, "serverport", translate("ServerPort"), translate("ServerPortDesc"))
client = s:option(Value, "client", translate("KCPClient"), translate("KCPClientDesc"))
clientport = s:option(Value, "clientport", translate("ClientPort"), translate("ClientPortDesc"))
password = s:option(Value, "password", translate("Password"), translate("PasswordDesc"))

return m
