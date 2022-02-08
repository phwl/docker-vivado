# docker-ubuntu-vivado
Dockerfile to create a Vivado 2021.2 installation under Ubuntu.
Modified from the 2019.2 version from <https://github.com/laysakura/docker-ubuntu-vivado>. The 2021.2 version froms from Frazsys-Engineering and hasn't been tested yet.


To build:

```bash
docker image build -t vivado-2021.2 .
```

To run:
```bash
docker run -e DISPLAY=`hostname`:0 -it --rm -v $PWD:/home/phwl/work -w /home/phwl vivado-2021.2
```
