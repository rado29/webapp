FROM ubuntu:18.04
MAINTAINER radoran (rado.randriamanantsoa@gmail.com)
RUN apt-get update
RUN apt-get install -y openssh-server
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
RUN rm -Rf /var/www/html/*
#ADD static-website-example/ /var/www/html/
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-q", "deamon off;"]
