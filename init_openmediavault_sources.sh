#!/bin/bash

# DOC HELP https://mirrors.tuna.tsinghua.edu.cn/help/openmediavault/

omv-env set OMV_APT_REPOSITORY_URL "https://mirrors.tuna.tsinghua.edu.cn/OpenMediaVault/public"
omv-env set OMV_APT_ALT_REPOSITORY_URL "https://mirrors.tuna.tsinghua.edu.cn/OpenMediaVault/packages"
omv-env set OMV_APT_KERNEL_BACKPORTS_REPOSITORY_URL "https://mirrors.tuna.tsinghua.edu.cn/debian"
omv-env set OMV_APT_SECURITY_REPOSITORY_URL "https://mirrors.tuna.tsinghua.edu.cn/debian-security"
# 如果你有安装 omv-extras 则需要运行如下命令更改源
omv-env set OMV_EXTRAS_APT_REPOSITORY_URL "https://mirrors.tuna.tsinghua.edu.cn/OpenMediaVault/openmediavault-plugin-developers"
omv-env set OMV_DOCKER_APT_REPOSITORY_URL "https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/debian"
omv-env set OMV_PROXMOX_APT_REPOSITORY_URL "https://mirrors.tuna.tsinghua.edu.cn/proxmox/debian"
# 使得环境变量更改生效
omv-salt stage run all

#安装 openmediavault-omvextrasorg
echo "开始安装 openmediavault-omvextrasorg 软件包"

wget https://mirrors.tuna.tsinghua.edu.cn/OpenMediaVault/openmediavault-plugin-developers/pool/main/o/openmediavault-omvextrasorg/openmediavault-omvextrasorg_7.0_all.deb -O openmediavault-omvextrasorg_7.0_all.deb

sleep 1

dpkg -i openmediavault-omvextrasorg_7.0_all.deb