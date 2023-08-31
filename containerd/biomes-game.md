# ◐ &nbsp; bioms-game install &nbsp; ◑

## Preconditions:

- ```bash
  download git code
  # build image
  cd .devcontainer
  docker build -t mbiomes .
  docker run -it -d --name mbiomes3 -v /data/containerd/volume/biomes/:/data/app -p 3002:3000 -p 80:80 -p 3001:3001 -p 4900:4900 -p 4700:4700 biomes bash
  docker exec -it mbiomes3 bash
  git config --global --add safe.directory /data/app/biomes-game
  cd /data/app..
  sudo ./b data-snapshot run
  ./b data-snapshot run
  # before type these cmds, we should change the permission first 
  chmod -R 777 biomes
  chmod 777 ./b
  # if failed then keep running this cmd :
  ./b data-snapshot run
  # tips 
  cd ../

  and then keep running that cmd


  ## more maybe i should make some space for redis
  ## btw need change config file when build local server: add  discordHooksEnabled: false to biomes.config.dev.yaml file

  windows 下的操作，与linux略有不同
  \\wsl$\docker-desktop
  \\wsl$\docker-desktop-data
  \\wsl$\docker-desktop-data\data\docker\volumes
  文件访问上面的地址

  docker run -it -d --name mbiomes -v biomes:/data -p 3000:3000 -p 80:80 -p 3001:3001 -p 4900:4900 -p 4700:4700  mbiomes bash

  设置redis配置：redis-6379.conf
  bind 0.0.0.0
  port 6379
  appendonly yes
  protected-mode no
  databases 256
  dir /data/redis-6379/
  dbfilename dump.rdb
  logfile /data/redis-6379/redis-6379.log
  pidfile /data/redis-6379/redis-6379.pid

  进入镜像 启动 redis
  sudo redis-server /data/redis-6379/conf/redis.conf &
  sudo ./b data-snapshot run
  npm install -g @bazel/bazelisk
  ./b data-snapshot run
  git config --global --add safe.directory /data/biomes-game
  ./b data-snapshot run



  启动后无法登陆

  cd /opt
  curl https://sdk.cloud.google.com | bash
  export PATH=$PATH:/opt/gcloud/google-cloud-sdk/bin
  source /etc/profile
  which gcloud

  默认系统为dash
  修改
  ls -l /bin/sh
  sudo dpkg-reconfigure dash
  no
  ls -l /bin/sh  查看是否修改成功
  source 退出当前terminal 新打开一个 就好用了




  解决docker 安装在c盘 空间不足的问题
  export:

  wsl --export docker-desktop-data E:\docker\wsl\data\docker-desktop-data.tar
  wsl --export docker-desktop E:\docker\wsl\data\docker-desktop.tar

  unregister:

  wsl --unregister docker-desktop-data
  wsl --unregister docker-desktop



  wsl --import docker-desktop-data E:\docker\wsl\data\ E:\docker\wsl\data\docker-desktop-data.tar
  wsl --import docker-desktop  E:\docker\wsl\data\distro\ E:\docker\wsl\data\docker-desktop.tar


  启动docker desktop

  gcloud cli 报错问题：
  curl https://sdk.cloud.google.com | bash
  source ~/.bashrc



  ```

## ⚡️ Usage

## 💡 Configs

## 🤖 How it Works

## 📈 todo
