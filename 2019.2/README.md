基本は https://blog.myon.info/entry/2018/09/15/install-xilinx-tools-into-docker-container/ に書いてあるものの丸パクリ。

## ビルド

`Xilinx_Vivado_2019.2_1106_2127.tar.gz` はXilinx社のwebページから（ライセンスなど同意したり個人情報を入力して）ダウンロードし、このリポジトリのディレクトリに配置する。

```bash
docker image build -t laysakura/ubuntu-vivado .
```

## 走らせる

macOSから使うときは、XQuartuzのターミナルで

```bash
xhost + 127.0.0.1
```

をしてから

```bash
docker run -e DISPLAY=docker.for.mac.localhost:0 -e USER_ID=$UID -it --rm -v $PWD:/home/user/work -w /home/user laysakura/ubuntu-vivado
```

すること。
