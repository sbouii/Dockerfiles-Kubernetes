FROM debian:jessie
MAINTAINER "Mariem sbouii mariemsbouiii40@gmail.com"
RUN apt-get update \
    && apt-get install bind9 \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /etc/bind
COPY ./files
RUN chmod 0644 /etc/bind/named.conf \
    && chmod 0644 /etc/bind/db.mydomain.com \
    && chmod 0644 /etc/bind/named.conf.options \
WORKDIR /etc
COPY ./files/resolv.conf
RUN chmod 0644 /etc/resolv.conf
EXPOSE 53
CMD ["/etc/init.d/bind9 restart"]

