FROM ubuntu:latest
LABEL com.farstorm.maintaner="Scott Marden <marden.scott@gmail.com>"
RUN apt-get update -y
RUN apt-get install -y python3 python3-dev python3-pip nginx
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN pip3 freeze > requirements_freeze.txt
COPY ./entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
# ENTRYPOINT [ "python3" ]
# CMD [ "app.py" ]
# COPY ./nginx.conf /etc/nginx/sites-enabled/default
# RUN export LC_ALL=en_US.utf-8
# RUN export LANG=en_US.utf-8
# CMD service nginx start && uwsgi -s /tmp/uwsgi.sock --chmod-socket=666 --manage-script-name --mount /=app:app