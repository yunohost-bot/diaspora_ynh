#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

ruby_version=3.3.3
nodejs_version=14
bundler_version=2.1.4

# jemalloc seems to be better for ROR apps, let's use it
case $YNH_ARCH in
    amd64)
        arch="x86_64"
        ;;
    arm64)
        arch="aarch64"
        ;;
    armel|armhf)
        arch="arm"
        ;;
    i386)
        arch="i386"
        ;;
esac
ld_preload="LD_PRELOAD=/usr/lib/$arch-linux-gnu/libjemalloc.so"

_ynh_add_systemd_target() {
    ynh_config_add --template="diaspora.target" --destination="/etc/systemd/system/${app}.target"
    systemctl daemon-reload
    systemctl enable "${app}.target" --quiet
}
_ynh_remove_systemd_target() {
    systemctl stop "${app}.target"
    systemctl disable "${app}.target" --quiet
    ynh_safe_rm "/etc/systemd/system/${app}.target"
    systemctl daemon-reload
}
