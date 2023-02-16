FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD . /www/data

EXPOSE 80
CMD ["nginx"]
