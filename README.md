Author: Jinwoo Im USC <jinwooim@usc.edu>

## Docker

1. Fix permissions

```
$ chmod -R 755 .
```

2. Run the docker

```
docker run -v "$PWD":/home/jovyan/model -p 8888:8888 mintproject/modflow_path_jupyter 
```
