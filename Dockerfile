FROM jupyter/scipy-notebook:612aa5710bf9
USER root

RUN apt-get update \
    &&  apt-get install -y \
        wget \
        zip \
        build-essential \
        gfortran

    

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}


COPY . ${HOME}
WORKDIR ${HOME}
RUN pushd pymake \
    && pip install https://github.com/modflowpy/pymake/zipball/master \
    && python make_mf2005.py  --fflags='-O3' \
    && python make_mt3dms.py   --fflags='-O3' \
    && popd

RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
RUN pip install flopy pyvista
