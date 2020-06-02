FROM ubuntu:16.04

RUN apt-get update && apt-get install -y nginx
COPY index.html /usr/share/nginx/html
COPY default /etc/nginx/sites-enabled
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
CMD ["/usr/sbin/nginx"]