[![DOI](https://zenodo.org/badge/297420240.svg)](https://zenodo.org/badge/latestdoi/297420240)

# MODFLOW aquifer
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/mosoriob/aquifer/master?filepath=main_ERC.ipynb)

Author: Jinwoo Im USC <jinwooim@usc.edu>

## How to run

We use [CWL](https://www.commonwl.org/) to describe and run the model.


1. Clone the repo

```bash
$ git clone https://github.com/mintproject/aquifer.git

```
2.  Install the `cwltool`

```bash
$ pip install cwltool
```



3. Run

```bash
$ cwltool main_ERC.cwl values.yml 
```


# Citation

Please cite as: Im, J.; Khider, D.; Osorio, M.; de Barros, F.; Garijo, D.; Gil, Y. (2020) "MODFLOW with MT3D for Idealized Aquifer Recahrge Scenarios". Available from https://mint.isi.edu/california/models/explore/5178a907-4464-45b4-bc12-404e7c7eeab2/453ac552-6de0-4172-8b7f-31dd3ab55b7d/e6becd2c-29d1-482e-b94b-388cdc584e3a. doi: 10.5281/zenodo.4064127
