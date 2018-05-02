FROM librecat/catmandu:docker as catmandu

USER root

# Install Python toolbelt (Python 3.5 on Debian stretch)
RUN apt-get update && apt-get install -y --no-install-recommends \
  python3 python3-pip python3-setuptools \
  && rm -rf /var/lib/apt/lists/*

# install Jupyter Notebook 5 (Debian package is 4.2.3) and bash kernel
RUN pip3 install --no-cache-dir notebook==5.* bash_kernel \
  && python3 -m bash_kernel.install

# Copy repository files to Docker image 
COPY . /home/catmandu
RUN chown -R 1000 /home/catmandu

USER catmandu

# Run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]
