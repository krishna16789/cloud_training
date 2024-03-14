#!/bin/bash
FROM --platform=linux/amd64 python:3.8-slim-buster as build

WORKDIR python-docker

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3", "server.py", "--host=0.0.0.0"]