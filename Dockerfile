FROM nvidia/cuda:9.0-cudnn7-devel

RUN apt-get update && apt-get install -y software-properties-common apt-utils && add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update && apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv git cmake
RUN pip3 install --upgrade setuptools pip
RUN pip3 install tensorflow tensorflow-gpu torch torchvision gym gym[atari] matplotlib
