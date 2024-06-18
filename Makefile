include $(TOPDIR)/rules.mk

PKG_NAME:=starlink
LUCI_NAME:=starlink
PKG_VERSION:=0.0.1
PKG_RELEASE:=beta
PKG_MAINTAINER:=pepperlk <https://github.com/pepperlk/openwrt-starlink>
PKG_LICENSE:=AGPL-3.0



# LUCI_DEPENDS:=+luci-compat +luci-lib-ipkg +e2fsprogs +parted +smartmontools +blkid \
# 	+kmod-fs-vfat +dosfstools +kmod-fs-msdos +kmod-nls-base +kmod-nls-utf8 +kmod-nls-cp932 +kmod-nls-cp936 +kmod-nls-cp950 \
# 	+kmod-fs-exfat +exfat-mkfs +exfat-fsck \
# 	+kmod-fs-ntfs \
# 	+kmod-fs-btrfs \
# 	+PACKAGE_$(PKG_NAME)_INCLUDE_ntfs_3g_utils:ntfs-3g-utils \
# 	+PACKAGE_$(PKG_NAME)_INCLUDE_btrfs_progs:btrfs-progs \
# 	+PACKAGE_$(PKG_NAME)_INCLUDE_lsblk:lsblk \
# 	+PACKAGE_$(PKG_NAME)_INCLUDE_mdadm:mdadm \
# 	+PACKAGE_$(PKG_NAME)_INCLUDE_kmod_md_raid456:mdadm \
# 	+PACKAGE_$(PKG_NAME)_INCLUDE_kmod_md_raid456:kmod-md-raid456 \
# 	+PACKAGE_$(PKG_NAME)_INCLUDE_kmod_md_linears:mdadm \
# 	+PACKAGE_$(PKG_NAME)_INCLUDE_kmod_md_linears:kmod-md-linear



define Package/starlink
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Starlink
  TITLE:=Starlink Control web interface
  URL:=https://github.com/pepperlk/openwrt-starlink
  PROVIDES:=starlink
endef

define Package/starlink/description
	Provides a way to see and control the startlink system on your network.
endef

# define Package/starlink/conffiles
# /etc/config/starlink
# /etc/starlink/
# endef

define Package/starlink/install
	$(INSTALL_DIR) $(1)/usr/sbin $(1)/etc/init.d $(1)/etc/config
	$(INSTALL_BIN) starlink $(1)/usr/sbin
	$(LN) starlink $(1)/usr/sbin/starlink
	$(INSTALL_BIN) ./files//starlink.init $(1)/etc/init.d/starlink

endef



# call BuildPackage - OpenWrt buildroot signature