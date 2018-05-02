# catmandu-notebook

[This repository](https://github.com/LibreCat/catmandu-notebook) contains a Dockerfile to use the Catmandu data processing notebook in Jupyter notebook.

The current Docker image is based on the [librecat/catmandu](https://hub.docker.com/r/librecat/catmandu/) core image (from the `docker` branch) which is based on Debian 9. Jupyter Notebook is added with Bash and Python 3 kernels.

## Usage

Run with [Binder](https://mybinder.org/):

[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/LibreCat/catmandu-notebook/master)

Open example file `introduction.ipynb` or create a new notebook with Bash kernel to try out the `catmandu` command line client.
