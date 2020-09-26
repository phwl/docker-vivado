# docker-ubuntu-vivado
Dockerfile to create a Vivado 2020.1 installation under Ubuntu
Modified from https://github.com/laysakura/docker-ubuntu-vivado which supported 2019.2 only.


To build:

```bash
docker image build -t ubuntu-vivado .
```

To run:
```bash
docker run -e DISPLAY=docker.for.mac.localhost:0 -it --rm -v $PWD:/home/user/work -w /home/user ubuntu-vivado
```
