一些自用的 Docker 应用 compose.yaml 模板备份，包含环境变量配置。

使用的是标准DockerCompose实例格式，理论上，可以直接 Ctrl+V 到 Unraid、OMV、QNAP 等NAS系统以及 1panel、dpanel、dockge 等容器面板中使用。

PS：因为都是一些我日常在用/偶尔会玩的应用，所以很多端口和路径等是基于我自己的使用习惯配置的，如果使用这些模板，你可能需要自行调整。

***

一些脚本：

`init_debian_sources.sh` 一键配置 Debian 软件源为 tuna 镜像

`init_docker.sh` 一键使用 tuna 镜像源安装 DockerCE 和相关组件

`init_docker_mirror.sh` 一键配置 DockerHub 加速镜像

`init_openmediavault_sources.sh` 一键配置 OpenMediaVault 软件源为 tuna 镜像，并自动安装 omv-extras 。