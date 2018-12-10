FROM ubuntu:latest
LABEL com.farstorm.maintaner="Scott Marden <marden.scott@gmail.com>"
RUN apt-get update -y
RUN apt-get install -y python3 python3-dev python3-pip nginx
RUN pip3 install uwsgi
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
COPY ./nginx.conf /etc/nginx/sites-enabled/default
CMD service nginx start && uwsgi -s /tmp/uwsgi.sock --chmod-socket=666 --manage-script-name --mount /=app:app

