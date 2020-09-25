# docker-ubuntu-vivado
This is modified from https://github.com/laysakura/docker-ubuntu-vivado which supported 2019.2 only.


To build:

```bash
docker image build -t ubuntu-vivado .
```

To run:
```bash
docker run -e DISPLAY=docker.for.mac.localhost:0 -e USER_ID=$UID -it --rm -v $PWD:/home/user/work -w /home/user ubuntu-vivado
```
