<p align="center">
    <a href="https://fftai.github.io" target="_blank" rel="noopener noreferrer">
        <img width="200" src="assets/ico.jpg" alt="Vue logo">
    </a>
</p>

[English](./readme.md) | 中文

# 关于RoCS机器人控制系统

作为RoCS的三个主要组成部分之一，服务器充当了连接下位机和上位机的通道。要建立控制机器人的RoCS环境，首先需要安装服务器。之后，您可以继续安装SDK或Control APP，这取决于您与服务器交互和控制机器人的要求。

安装服务器后使用客户端SDK控制机器人，请参考[SDK使用说明](https://github.com/FFTAI/fftai.github.io/blob/main/docs/quick_start/setup_for_physical_robot.md)

控制APP的使用方法请参考[远程控制APP开发者指南](https://github.com/FFTAI/fftai.github.io/blob/main/docs/demo_app/app_project_setup.md)

---
**我们对RoCS机器人控制系统进行封装了5个deb的安装包，分别为:** 

### rocs-lib
`rocs-libs` 是RoCS系统依赖的库，包含所有运行时所需要的环境依赖

### rocs-svr
`rocs-svr` 本质上是作为上位机和下位机之间的桥梁。它在引导期间作为服务自动启动。它处理来自上位机的命令，上位机可以是控制APP用户界面或SDK控制程序。它的主要功能是处理这些命令，并使用底层通信协议将控制指令传输到下位机。这种复杂的通信机制可以实现对机器人运动的精确控制。

### rocs-wifi
`rocs-wifi` 是RoCS系统中的重要组件，负责管理和配置机器人的Wi-Fi连接，包括配置和激活Wi-Fi功能。通过该组件，可以确保与机器人所在Wi-Fi网络的无缝连接。它在引导期间作为服务自动启动

### rocs-webots
`rocs-webots` 是基于 Webots 的仿真环境，Webots 是 `Cyberbotics` 的开源机器人仿真应用程序。在直接与机器人交互之前，我们强烈建议您首先在 Webots 模拟环境中体验它，以熟悉其操作和使用。该模拟环境忠实地复制了机器人的运动特性和结构，使其成为重要的预备步骤。该软件包仅针对模拟环境安装

### rocs-control
`rocs-control` 是RoCS系统的核心组件，我们提供了一个在嵌入式机器人计算机的“~/RoCS”目录中运行的二进制文件。如果您需要微调和自定义配置设置，其中可能包括机器人的PID、质量、过滤和其他参数，您可以通过手动编辑配置文件来实现。这种方法可以精确控制机器人的行为

# 快速安装

## 系统要求

在安装RoCS Server之前，请确保您的系统满足以下要求:

* 具有最低2 GHz双核CPU时钟速度和2 GB RAM的PC。
* 操作系统:Ubuntu(amd64)长期支持(LTS)版本，包括22.04和20.04版本。
* NVIDIA或AMD支持opengl的图形适配器，最低版本为3.3，内存至少为512 MB。

## 一键安装

**对于机器人控制系统我们提供了两套运行时环境和二进制文件的快速安装脚本，分别为：** 

1. 仿真环境(基于webots)
    ```shell
    curl -o- https://raw.githubusercontent.com/FFTAI/rocs_server/main/install-simulated.sh | bash
    ```
   
2. 基于物理机器人(GR-1)

    ```shell
    curl -o- https://raw.githubusercontent.com/FFTAI/rocs_server/main/install-physical.sh | bash
    ```

## 检查有效性

要确认 RoCS 服务器软件包安装成功，请打开终端并运行以下命令检查是否安装了 RoCS 相关软件包

### 仿真环境
```shell
fftai@fftai-rocs-machine:~$ dpkg -l | grep rocs
ii  rocs-lib            1.0   all     Installs the libraries required by RoCS
ii  rocs-svr            1.3   all     Provides export call services for robot algorithm programs
ii  rocs-webots         1.3   all     Provides a Webots simulation environment model
```

### 物理环境
```shell
fftai@gr123ot0001:~$ dpkg -l | grep rocs
ii  rocs-lib            1.0   all     Installs the libraries required by RoCS
ii  rocs-svr            1.3   all     Provides export call services for robot algorithm programs
ii  rocs-wifi           1.0   all     
ii  rocs-control        1.4   all     
```

## 手动控制服务

在某些情况下，您可能需要手动启动或停止 RoCS 服务。请按照以下说明执行这些操作

* 手动启动 `rocs-svr` 服务:

```shell
sudo systemctl start rocs_svr.service
```

* 手动停止 `rocs-svr` 服务:

```shell
sudo systemctl stop rocs-svr.service
```

## 查看日志

要监控 RoCS 服务日志以进行故障排除或调试，请执行以下步骤：

* 监控 `rocs-svr` 日志:

```shell
tail -f /var/log/syslog | grep rocs
```

!> 用户提示：打开终端并运行命令 `tail -f /var/log/syslog | grep rocs` 实时监控服务器日志。使终端窗口始终位于顶部可以提供一种方便的方式来保持更新。


# 快速使用

## 在仿真环境运行 (Webots)

### I. 下载Webots

1. 执行脚本快速安装
   ```shell
   wget https://github.com/cyberbotics/webots/releases/download/R2023b/webots_2023b_amd64.deb
   
   sudo dpkg -i webots_2023b_amd64.deb
   ```

2. 或者您也可以访问[cyberbotics](https://www.cyberbotics.com/)官网网站下载您偏好的桌面发行版 

### II. 加载Webots模型
1. 打开Webots
2. `file` -> `open world` -> `～/RoCS/webots/worlds/SonnyV4.wbt`

### III. 控制模型
1. 安装对应语言的client SDK: [Python](https://pypi.org/project/rocs-client/) 或 [JavaScript/TypeScript](https://www.npmjs.com/package/rocs-client).
2. 您可以在sdk的介绍页面看到相应的示例代码，通过SDK示例代码进行操控

## 在真实机器运行

基于物理机器人的真机运行，在快速安装脚本运行成功之后会创建几个开机启动项，您只需要确保机器人的初始位置准确后开机上电，便可通过我们提供的SDK或安卓Apk控制程序-Fourier GR1 开始您的机器人体验！


## 传送门

### 文档说明
[RoCS 官方站点](http://fftai.github.io/)   
[Python SDK 文档](https://fftai.github.io/docs/sdk_py/)  
[Javascript SDK 文档](https://fftai.github.io/docs/sdk_js/)  

### 控制App
[Fourier GR1.apk](https://github.com/FFTAI/rocs_app/releases/download/v1.1/ROCS-App-1.1.30.apk)
