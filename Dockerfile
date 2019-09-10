FROM nvidia/cuda:9.0-cudnn7-devel

RUN apt-get update && apt-get install -y software-properties-common apt-utils && add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update && apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv git cmake

RUN rm /usr/bin/python3
RUN ln -s python3.6 /usr/bin/python3

RUN apt-get install wget curl
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py --force-reinstall

RUN pip install --upgrade setuptools pip
RUN pip install tensorflow tensorflow-gpu torch torchvision gym gym[atari] matplotlib pandas mlagents==0.8.2 Pillow 

WORKDIR /usr/src/
RUN wget https://storage.googleapis.com/obstacle-tower-build/v2.2/obstacletower_v2.2_linux.zip
RUN unzip obstacletower_v2.2_linux.zip
