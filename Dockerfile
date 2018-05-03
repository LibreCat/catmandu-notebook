FROM librecat/catmandu:docker as catmandu

USER root

# Install Python toolbelt (Python 3.5 on Debian stretch) and Debian packages
ADD apt.txt .
RUN apt-get update && apt-get install -y --no-install-recommends \
  $(grep -vE "^\s*#" apt.txt | tr "\n" " ") cpanminus \
  && rm -rf /var/lib/apt/lists/* && rm -f apt.txt

# install Jupyter Notebook 5 (Debian package is 4.2.3) and bash kernel
RUN pip3 install --no-cache-dir notebook==5.* bash_kernel \
  && python3 -m bash_kernel.install

# Install Perl kernel
RUN cpanm -n -q --installdeps --skip-satisfied Devel::IPerl

# Copy repository files to Docker image 
COPY . /home/catmandu
RUN chown -R 1000 /home/catmandu

USER catmandu

# Run Jupyter Notebook
CMD ["iperl", "notebook", "--ip", "0.0.0.0"]
