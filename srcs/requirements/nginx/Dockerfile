FROM debian:bullseye

RUN apt update -y && apt upgrade -y
RUN apt install nginx openssl -y

RUN mkdir -p /etc/nginx/ssl
#-x509 certificate type
#-nodes skip the password
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=ARA/L=LYON/O=42/OU=42/CN=vgonnot.42.fr/UID=vgonnot"

COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx"]

EXPOSE 443