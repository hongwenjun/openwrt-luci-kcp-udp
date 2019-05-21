module("luci.controller.kcptools", package.seeall)

function index()
	entry({"admin", "network", "kcptools"}, firstchild(), _("KCPTools")).dependent = false
	entry({"admin", "network", "kcptools", "config"}, cbi("KCPTools"), _("Config"), 2)
	entry({"admin", "network", "kcptools", "control"}, template("control"), _("Control"), 1)
	entry({"admin", "network", "kcptools", "restart"}, call("restart"))
	entry({"admin", "network", "kcptools", "stop"}, call("stop"))
end

function restart()
	luci.sys.exec("/etc/init.d/kcptools restart >/dev/null")
	luci.template.render("control")
end

function stop()
    luci.sys.exec("/etc/init.d/kcptools stop >/dev/null")
	luci.template.render("control")
end
