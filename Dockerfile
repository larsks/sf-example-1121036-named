FROM docker.io/fedora:37

RUN yum -y install bind bind-utils
RUN mkdir -p /var/bind /etc/bind/zone

COPY named.conf /etc/named.conf
COPY main.com.zone /etc/bind/zone/main.com

CMD ["named", "-g"]
