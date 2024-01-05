<p align="center">
    <a href="https://fftai.github.io" target="_blank" rel="noopener noreferrer">
        <img width="200" src="assets/ico.jpg" alt="Vue logo">
    </a>
</p>


# 机器人控制系统

[English](./readme.md) | 中文

## 系统环境

Ubuntu OS. >= 20

## 快速装机

安装ROCS依赖的环境信息和可执行文件(二选一)

```shell
wget -qO- https://raw.githubusercontent.com/FFTAI/rocs_server/main/install.sh | bash
```

```shell
curl -o- https://raw.githubusercontent.com/FFTAI/rocs_server/main/install.sh | bash
```

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
1. 安装对应语言的client SDK: [Python](https://pypi.org/project/rocs-client/) 或 [JavaScript/TypeScript]().
2. 您可以在sdk的介绍页面看到相应的示例代码，通过SDK示例代码进行操控

## 在真实机器运行

### I. 修改配置信息
首先建议您仔细阅读sbin的自述文件、然后修改对应的配置信息（需根据实际情况修改）
```markdown
/usr/local/bin/rocs-svr/
├── config/                                     配置文件
│ ├──application.conf                               ***** 配置文件 可能需要修改
│ ├──human_motor_limit_list.json                    ***** 机器人关节限位信息
```

### II. 上电启动、开始体验

#### 执行完上述动作后、恭喜您已安装完成！ 
现在您便可以通过我们提供的SDK或安卓Apk控制程序-Fourier GR1 开始您的机器人体验！


## 传送门

### 文档说明
[RoCS platform Doc](http://fftai.github.io/)   
[Python SDK Doc](https://fftai.github.io/docs/sdk_py/)  
[javascript SDK Doc](https://fftai.github.io/docs/sdk_js/)  

### 控制App
[Fourier GR1.apk](https://github.com/FFTAI/rocs_app/releases/download/v1.1/ROCS-App-1.1.30.apk)
