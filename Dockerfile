FROM ubuntu:20.04

LABEL maintainer="Gurcan Kavakci"

ARG DEBIAN_FRONTEND=noninteractive
ARG PYTHON_VERSION=3.7


RUN apt update && apt install --yes software-properties-common

RUN apt-get update && add-apt-repository ppa:deadsnakes/ppa && apt install --yes python$PYTHON_VERSION

RUN ln -s -f /usr/bin/python$PYTHON_VERSION /usr/bin/python3
RUN ln -s -f /usr/bin/python$PYTHON_VERSION /usr/bin/python

CMD ["python3", "--version"]
