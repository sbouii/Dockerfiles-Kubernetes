FROM debian:jessie
MAINTAINER "Mariem sbouii mariemsbouiii40@gmail.com"
RUN apt-get update \
    && apt-get install bind9 \
    && rm -rf /var/lib/apt/lists/*
ADD ./files /etc/bind
COPY ./files/resolv.conf /etc/resolv.conf
EXPOSE 53
CMD ["/etc/init.d/bind9 restart"]

