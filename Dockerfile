FROM ubuntu

MAINTAINER Basil Veerman <bveerman@uvic.ca>

RUN echo 'Acquire::HTTP::Proxy "http://docker1.pcic:3142";' >> /etc/apt/apt.conf.d/01proxy \
 && echo 'Acquire::HTTPS::Proxy "false";' >> /etc/apt/apt.conf.d/01proxy

RUN apt-get update && \
    apt-get -yq install \
    libhdf5-dev \
    libnetcdf-dev \
    libgdal-dev \
    libyaml-dev \
    python \
    python-dev \
    python-pip \
    python-virtualenv \
    python-numpy \
    python-GDAL \
    cython \
    python3 \
    python3-dev \
    python3-pip \
    python3-numpy \
    python3-GDAL \
    cython3

RUN pip install h5py netCDF4 psycopg2 PyYAML pillow

RUN pip3 install h5py netCDF4 psycopg2 PyYAML pillow
