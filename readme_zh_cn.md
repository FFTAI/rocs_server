# 机器人控制系统

![](assets/ico.jpg)

[English](./readme.md) | 中文

## 系统环境

Ubuntu OS. >= 20

## 快速装机

安装ROCS依赖的环境信息和可执行文件(二选一)

```shell
curl -o- https://raw.githubusercontent.com/FFTAI/rocs_server/v1.3.0/install.sh | bash
```

```shell
wget -qO- https://raw.githubusercontent.com/FFTAI/rocs_server/v1.3.0/install.sh | bash
```

## 在仿真环境运行 (Webots)

### I. 下载Webots

1. 执行脚本快速安装
```shell
wget https://github.com/cyberbotics/webots/releases/download/R2023b/webots_2023b_amd64.deb

sudo dpkg -i webots_2023b_amd64.deb
```

2. 或者您也可以访问[cyberbotics](https://www.cyberbotics.com/)官网网站下载您偏好的桌面发行版 


### II. 启动SDK控制程序
```shell
cd ~/.rocs_server1.3.0/sbin
bash start_up_rocs_svr.sh
```

### III. 加载Webots模型
1. 打开Webots
2. `file` -> `open world` -> `～/.rocs_server1.3.0/bin/webots/worlds/SonnyV4.wbt`

### IV. 控制模型
1. 安装[rocs_client](https://pypi.org/project/rocs-client/)对应语言的SDK
2. 您可以在sdk的介绍页面看到相应的示例代码，通过SDK示例代码进行操控

## 在真实机器运行

### I. 修改配置信息
首先建议您仔细阅读sbin的自述文件、然后修改对应的配置信息（需根据实际情况修改）
```markdown
sbin/
├── config/                          
├──── control_svr.conf        ***** 算法控制程序相关配置（即bin/real可知性文件的路径。如果您的文件与我不同。您需要按需修改）
├──── password.conf           ***** 主机密码！脚本需要执行sudo权限的密码在这里统一配置
├──── wifi.conf               ***** wifi信息，（会将主机作为AP开放一个wifi、客户端连接起wifi进行操控/注意这不是非必须，如果您其他保持同网段通讯的方案可以忽略该设置）
```

### II. 编译和安装真机运行时环境
执行完成您的主机将会添加三个系统服务并设置为开机自启动、rocs_svr、rocs_model、rocs_enable_wifi
```shell
cd sbin
bash install.sh
```

### III. 上电启动、开始体验

#### 执行完上述动作后、恭喜您已安装完成！ 
现在您便可以通过我们提供的SDK或安卓Apk控制程序-Fourier GR1 开始您的机器人体验！


## 传送门

### 文档说明
[RoCS platform Doc](http://fftai.github.io/)   
[Python SDK Doc](https://fftai.github.io/docs/sdk_py/)  
[javascript SDK Doc](https://fftai.github.io/docs/sdk_js/)  

### 控制App
[Fourier GR1.apk](https://github.com/FFTAI/rocs_app/releases/download/v1.1/ROCS-App-1.1.30.apk)
