# catmandu-notebook

[This repository](https://github.com/LibreCat/catmandu-notebook) contains a Dockerfile to use the Catmandu data processing notebook in Jupyter notebook.

The current Docker image is based on the [librecat/catmandu](https://hub.docker.com/r/librecat/catmandu/) core image (from the `docker` branch) which is based on Debian 9. Jupyter Notebook is added with Bash and Python 3 kernels.

## Usage

If new to Jupyter try the Help menu once started a notebook to get an introduction. 

### Try online with Binder

[BinderHub](https://binderhub.readthedocs.io/) runs Jupyter notebooks from GitHub source repositories. It can be used online for free at [mybinder.org](https://mybinder.org) with this repository:

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/LibreCat/catmandu-notebook/master)

Open example file `introduction.ipynb` or create a new notebook with Bash kernel to try out the `catmandu` command line client.

### Install locally

There are several ways to install [Jupyter](http://jupyter.org) locally, this is just one of them. First Jupyter requires Python 3. On Debian based systems install required packages via:

    $ sudo apt-get install python3 python3-pip python3-setuptools

To make use of the example notebooks provided in this repository, copy or clone it into a directory and proceed from there:

    $ git clone https://github.com/LibreCat/catmandu-notebook.git
    $ cd catmandu-notebook

Then install the latest version of Jupyter and Bash kernel with pip:

    $ pip3 install notebook==5.* bash_kernel

Bash kernel once needs to be enabled:

    $ python3 -m bash_kernel.install

Then start Jupyter and work with notebooks:

    $ jupyter notebook

To directly open the introduction:

    $ jupyter notebook introduction.ipynb

The installation is similar at someone else's computers (aka cloud hosting services).
