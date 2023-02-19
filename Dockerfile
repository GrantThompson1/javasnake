FROM public.ecr.aws/ubuntu/ubuntu:22.04_stable

RUN apt-get update
RUN apt-get install -y nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD . /var/www/html

EXPOSE 80
CMD ["nginx"]
