# https://github.com/hongwenjun/

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-kcptools
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=LuCI for udp2raw and kcp-client
	PKGARCH:=all
endef

define Package/$(PKG_NAME)/description
	LuCI for udp2raw and kcp-client.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DATA) ./src/luci/controller/*.lua $(1)/usr/lib/lua/luci/controller/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi/kcptools
	$(INSTALL_DATA) ./src/luci/model/cbi/kcptools/*.lua $(1)/usr/lib/lua/luci/model/cbi/kcptools/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/kcptools
	$(INSTALL_DATA) ./src/luci/view/kcptools/*.htm $(1)/usr/lib/lua/luci/view/kcptools/
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./src/etc/config/kcptools $(1)/etc/config/kcptools
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./src/etc/init.d/kcptools $(1)/etc/init.d/kcptools
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
