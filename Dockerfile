FROM ubuntu:latest

COPY . /app

RUN apt-get update
RUN apt-get install -y python3

EXPOSE 5000


CMD ["pip3 install -r app/src/requirements.txt"]
CMD ["python3 src/app.py"]