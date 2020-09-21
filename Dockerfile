FROM jupyter/scipy-notebook:612aa5710bf9
USER root

RUN apt-get update \
    &&  apt-get install -y \
        wget \
        zip \
        build-essential \
        gfortran

RUN wget https://water.usgs.gov/ogw/modflow/MODFLOW-2005_v1.12.00/MF2005.1_12u.zip \
    && unzip MF2005.1_12u.zip \
    && mv MF2005.1_12u mf2005 \
    && cd mf2005/make \
    && make \
    && mv mf2005 /usr/bin/


RUN wget https://water.usgs.gov/water-resources/software/MODPATH/modpath_7_2_001.zip \
    && unzip modpath_7_2_001.zip \
    && cd modpath_7_2_001/make \
    && mv makefile-gfortran-mac Makefile \
    && make \
    && mv mpath7gf.mac /usr/bin/mpath7

COPY . ${HOME}
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
RUN pip install flopy pyvista
