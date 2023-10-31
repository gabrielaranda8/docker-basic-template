FROM python:3.10-slim-buster
ADD . /test_docker
WORKDIR /test_docker

RUN apt-get update
RUN chmod -R 775 /test_docker
RUN chown -R :root /test_docker
RUN pip install -r requirements.txt
CMD [ "python", "./app.py" ]
