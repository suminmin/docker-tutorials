# refenrence : https://gist.github.com/pangyuteng/f5b00fe63ac31a27be00c56996197597

FROM conda/miniconda3:latest

RUN apt-get update \
    && apt-get install -y \
         git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV CONDA_TARGET_ENV=hello-env

WORKDIR /root
RUN git clone https://github.com/olamarre/hello-python.git && \
    cd hello-python && \
    conda env create -f environment.yml

RUN conda init && echo 'conda activate "${CONDA_TARGET_ENV:-base}"' >>  ~/.bashrc

SHELL ["conda", "run", "--no-capture-output", "-n", "hello-env", "/bin/bash", "-c"]

