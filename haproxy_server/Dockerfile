FROM centos:latest
MAINTAINER mariemsbouiii40@gmail.com
RUN yum -y install haproxy \
    && yum -y install keepalived \
    && rm -rf /var/lib/apt/lists/*
# let the kernel know that we intend to bind additional IP addresses that won’t be defined in the interfaces file(the virtual ip used by keepalived), see https://sebest.github.io/post/linux-how-to-bind-ip-that-doesn-t-exist-yet/ for more details 
COPY ./files/haproxy.cfg /etc/haproxy/haproxy.cfg
COPY ./files/keepalived/keepalived.conf /etc/keepalived/keepalived.conf
CMD ["/start.sh"]
EXPOSE 80 443
