# Ideal case looking at a pollutant plume propagating through an aquifer.
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/mosoriob/modflow_path/master?filepath=main_ERC.ipynb)

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
