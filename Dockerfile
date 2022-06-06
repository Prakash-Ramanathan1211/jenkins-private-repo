FROM ubuntu:latest
RUN apt-get update -y
ADD . /flask-app
WORKDIR /flask-app
RUN apt install python3-pip -y
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]
