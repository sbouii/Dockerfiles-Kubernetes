FROM centos:latest
MAINTAINER mariemsbouiii40@gmail.com
# install prerequistes
RUN yum -y update \
    && yum -y install rsyslog \
    && yum -y install logrotate 
# install haproxy
RUN yum -y install haproxy \
    && yum -y install keepalived \
# configure haproxy
WORKDIR /etc/haproxy
COPY ./files/haproxy.cfg
# Add rsyslog config for HAProxy
WORKDIR /etc/rsyslog.d/haproxy.conf
COPY ./files/rsyslog/haproxy.conf
# Add
    
 
