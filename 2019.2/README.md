## Create image
Download 
`Xilinx_Vivado_2019.2_1106_2127.tar.gz` from Xilinx and

```bash
docker image build -t vivado-2020.1 .
```

## Setup

On macOS with XQuartz

```bash
xhost + 127.0.0.1
```

```bash
docker run -e DISPLAY=`hostname`:0 -it --rm -v $PWD:/home/phwl/work -w /home/phwl vivado-2019.2
```
