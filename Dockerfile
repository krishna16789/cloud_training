FROM python:3.9.2

WORKDIR python-docker

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3", "server.py", "--host=0.0.0.0"]