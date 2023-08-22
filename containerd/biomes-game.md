# ◐ &nbsp; bioms-game install &nbsp; ◑

## Preconditions:

- ```bash
  download git code
  # build image
  cd .devcontainer
  docker build -t mbiomes1 .
  docker run -it -d --name mbiomes1 -v /data/containerd/volume/biomes/:/data/app -p 3002:3000 -p 80:80 -p 3001:3001 biomes bash
  docker exec -it mbiomes1 bash
  cd /data/app..
  sudo ./b data-snapshot run
  npm install -g @bazel/bazelisk
  ./b data-snapshot run
  # before type these cmds, we should change the permission first 
  chmod -R 777 biomes
  chmod 777 ./b
  # if failed then keep running this cmd :
  ./b data-snapshot run

  ```

## ⚡️ Usage

## 💡 Configs

## 🤖 How it Works

## 📈 todo
