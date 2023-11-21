<p align="center">
    <a href="https://fftai.github.io" target="_blank" rel="noopener noreferrer">
        <img width="200" src="assets/ico.jpg" alt="Vue logo">
    </a>
</p>

# Robot Control System

English | [中文](./readme_zh_cn.md)

## System Environment

Ubuntu OS. >= 20

## Quick installation 

Install the environment information and executable files that ROCS depends on (choose one of two)

```shell
wget -qO- https://raw.githubusercontent.com/FFTAI/rocs_server/main/install.sh | bash
```

```shell
curl -o- https://raw.githubusercontent.com/FFTAI/rocs_server/main/install.sh | bash
```

## Running in a simulation environment (Webots)

### I. Downloading Webots

1. Execute script for quick installation 
```shell
wget https://github.com/cyberbotics/webots/releases/download/R2023b/webots_2023b_amd64.deb

sudo dpkg -i webots_2023b_amd64.deb
```

2. Alternatively, you can visit [cyberbotics](https://www.cyberbotics.com) Download your preferred desktop distribution from the official website 


### II. Launch SDK control program 
```shell
cd ~/.rocs_server1.3.0/sbin
bash start_up_rocs_svr.sh
```

### III. Load Webots model 
1. Open Webots
2. `file` -> `open world` -> `～/.rocs_server1.3.0/bin/webots/worlds/SonnyV4.wbt`

### IV. Control model 
1. Install Client SDK for corresponding language : [Python](https://pypi.org/project/rocs-client/)或[JavaScript/TypeScript]().
2. You can see the corresponding sample code on the introduction page of SDK, and manipulate it through the SDK sample code 

## Running on real machines 

### I. Modifying Configuration Information 
Firstly, we suggest that you carefully read the sbin readme file and modify the corresponding configuration information (which needs to be modified according to the actual situation)
```markdown
sbin/
├── config/                          
├──── control_svr.conf        ***** Algorithm control program related configuration (i.e. the path to the bin/real agnostic file. If your file is different from mine, you need to modify it as needed)
├──── password.conf           ***** Host password! The script requires the password to execute sudo permissions to be uniformly configured here
├──── wifi.conf               ***** WiFi information, (the host will be opened as an AP for WiFi, and the client will connect to WiFi for control/note that this is not mandatory. If you have other plans to maintain communication with the network segment, you can ignore this setting)
```

### II. Compiling and installing the real machine runtime environment
After the execution is completed, your host will add three system services and set them as bootable and rocs_svr, rocs_model, rocs_enable_wifi
```shell
cd sbin
bash install.sh
```

### III. Power on, start and experience 

**After completing the above actions, congratulations on completing the installation!**

Now you can start your robot experience through our SDK or Android Apk control program - Fourier GR1!


## Portal

### Documentation
[RoCS platform Doc](http://fftai.github.io/)   
[Python SDK Doc](https://fftai.github.io/docs/sdk_py/)  
[javascript SDK Doc](https://fftai.github.io/docs/sdk_js/)  

### Control App
[Fourier GR1.apk](https://github.com/FFTAI/rocs_app/releases/download/v1.1/ROCS-App-1.1.30.apk)
