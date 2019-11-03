from debian:stable

run apt-get update
run apt-get install -y \
        python3 \
        python3-dev \
        python3-distutils \
        build-essential \
        gcc \
        liblapack-dev \
        libblas-dev \
        gfortran
add https://bootstrap.pypa.io/get-pip.py get-pip.py
run python3 get-pip.py
run pip3 install numpy
run pip3 install \
        ipython \
        scipy \
        pymc \
        matplotlib \
        requests \
        scikit-learn \
        gpy \
        gpyopt
run pip3 install ipython[all]
run useradd -m ipython
expose 8888
user ipython
cmd ["ipython", "notebook", "--ip", "0.0.0.0", "--no-browser"]
